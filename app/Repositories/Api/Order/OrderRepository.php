<?php

namespace App\Repositories\Api\Order;

use App\Models\Order\Order;
use App\Models\Hotal\Hotal;
use App\Models\Hospital\Hospital;
use App\Models\Taxi\Taxi;
use App\Models\Tourism\Tourism;
use App\Models\ServiceMember\ServiceMember;
use App\Models\User\User;
use App\Models\Order\RunningAccount;
use App\Models\Trip\Trip;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Collection;
use Illuminate\Database\Eloquent\Model;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
// use App\Events\Api\User\UserCreated;
use Carbon\Carbon as Carbon;

/**
 * Class OrderRepository.
 */
class OrderRepository extends BaseRepository
{
    const MODEL = Order::class;

    public function create(array $data)
    {
        $order = $this->createOrderStub($data);

        DB::transaction(function () use ($order, $data) {
            if ($order->save()) {

                $order->running_account()->create([
                        'order_code' => $order->order_code,
                        'account'    => $data['account'],
                        'money'      => $data['money'] * 100,
                        'ip'         => $data['ip'],
                        'status'     => 3,
                    ]);

                $services = $data['services'];

                $hospital = $services['hospital'];

                unset($services['hospital']);

                $order->order_infos()->create([
                        'infoable_id'   => $hospital['id'],
                        'infoable_type' => 'App\Models\Hospital\Hospital',
                        'service_id'    => $hospital['service_id'],
                        'real_name'     => $hospital['real_name'],
                        'desc'          => project()->title,
                        'price'         => $hospital['price'] * 100,
                        'status'        => 1,
                    ]);

                foreach ($services as $val) {
                    $order->order_infos()->create([
                            'infoable_id'   => $val['id'],
                            'infoable_type' => 'App\Models\Service\Service',
                            'service_id'    => $val['service_id'],
                            'real_name'     => $val['real_name'],
                            'desc'          => $val['desc'],
                            'price'         => $val['price'] * 100,
                            'status'        => 1,
                        ]);
                }

                // event(new UserCreated($order));

                return true;
            }

            throw new GeneralException(__('exceptions.frontend.create_error'));
        });

        return $order->order_code;
    }

    public function paidSuccess(array $data)
    {
        $order = $this->findBy([
                'order_code' => $data['order_code']
            ]);

        $order->status = 2;

        DB::transaction(function () use ($order, $data) {
            if ($order->save()) {

                $order->running_account()->update([
                        'paid_at' => Carbon::now()->format('Ymd'),
                        'pay_type' => $data['pay_type'],
                        'status' => 2
                    ]);

                // 生成行程
                $trip = $order->trip()->create([
                        'user_id'  => $order->user_id,
                        'hospital' => $order->hospital,
                        'desc'     => $order->desc,
                        'price'    => $order->money * 100,
                        'status'   => 2,
                    ]);

                // 基础服务
                $types = [0, 1, 5, 6, 7, 8, 9, 11, 12, 13];
                foreach ($types as $type) {
                    $trip->trip_infos()->create([
                            'service_id' => User::find($order->user_id)->own_admin_id,
                            'avatar_id' => User::find($order->user_id)->own_admin->avatar_id,
                            'real_name' => User::find($order->user_id)->own_admin->info->real_name,
                            'mobile' => User::find($order->user_id)->own_admin->info->mobile,
                            'sex' => User::find($order->user_id)->own_admin->info->sex,
                            'type' => $type,
                            'status'   => 2,
                        ]);
                }

                // 可选人员基础服务
                $order->order_infos->map(function($item) use($trip){
                    if ($item->infoable_type == 'App\Models\Hospital\Hospital') {
                        $hospital_types = [5, 11, 12];
                        $doctor_types   = [6, 7, 8, 9];

                        $trip->trip_infos()->whereIn('type', [5])->update([
                            'address_zh'   => Hospital::find($item->infoable_id)->address_zh,
                            'address_en'   => Hospital::find($item->infoable_id)->address_en,
                            'baidu_point'  => Hospital::find($item->infoable_id)->baidu_point,
                            'google_point' => Hospital::find($item->infoable_id)->google_point,
                            ]);

                        $trip->trip_infos()->whereIn('type', $hospital_types)->update([
                                'service_id' => $item->infoable_id,
                            ]);

                        $trip->trip_infos()->whereIn('type', $doctor_types)->update([
                                'service_id' => $item->service_id,
                            ]);
                    }

                    if ($item->infoable_type == 'App\Models\Service\Service') {
                        switch ($item->infoable_id) {
                            case 3:
                                $this->createTripInfos($trip, $item);
                                break;
                            case 4:
                                $this->createTripInfos($trip, $item);
                                break;
                            case 5:
                                $this->createTripInfos($trip, $item);
                                break;
                            case 6:
                                $this->createTripInfos($trip, $item);
                                break;
                        }

                        switch ($item->infoable_id) {
                            case 1:
                                $this->updateTripInfos($trip, $item);
                                break;
                            case 2:
                                $this->updateTripInfos($trip, $item);
                                break;
                        }
                    }
                });

                // event(new UserCreated($order));

                return true;
            }

            throw new GeneralException(__('exceptions.frontend.create_error'));
        });

        return true;
    }

    protected function updateTripInfos($trip, $orderInfo)
    {
        $types          = [5, 6, 7, 8, 9, 11, 12, 13];

        switch ($orderInfo->infoable_id) {
            case 1:
                $trip->trip_infos()->whereIn('type', $types)->update([
                        'avatar_id' => ServiceMember::find($orderInfo->service_id)->avatar_id,
                        'real_name' => ServiceMember::find($orderInfo->service_id)->real_name,
                        'mobile'    => ServiceMember::find($orderInfo->service_id)->mobile,
                        'sex' => ServiceMember::find($orderInfo->service_id)->sex,
                        'country' => ServiceMember::find($orderInfo->service_id)->country->title,
                    ]);
                break;
            
            case 2:
                $trip->trip_infos()->whereIn('type', [10])->update([
                        'service_id' => $orderInfo->service_id,
                        'avatar_id' => ServiceMember::find($orderInfo->service_id)->avatar_id,
                        'real_name' => ServiceMember::find($orderInfo->service_id)->real_name,
                        'mobile'    => ServiceMember::find($orderInfo->service_id)->mobile,
                        'sex' => ServiceMember::find($orderInfo->service_id)->sex,
                        'country' => ServiceMember::find($orderInfo->service_id)->country->title,
                    ]);
                break;
        }

        return true;
    }

    protected function createTripInfos($trip, $orderInfo)
    {
        $data = [];

        switch ($orderInfo->infoable_id) {
            case 3:
                $data = [
                    'service_id' => $orderInfo->service_id,
                    'avatar_id'  => ServiceMember::find($orderInfo->service_id)->avatar_id,
                    'real_name'  => ServiceMember::find($orderInfo->service_id)->real_name,
                    'mobile'     => ServiceMember::find($orderInfo->service_id)->mobile,
                    'sex'        => ServiceMember::find($orderInfo->service_id)->sex,
                    'country'    => ServiceMember::find($orderInfo->service_id)->country->title,
                    'type'       => 2,
                    'status'     => 2,
                ];
                break;
            case 4:
                $data = [
                    'service_id'   => $orderInfo->service_id,
                    'title'        => Hotal::find($orderInfo->service_id)->title,
                    'mobile'       => Hotal::find($orderInfo->service_id)->mobile,
                    'address_zh'   => Hotal::find($orderInfo->service_id)->address_zh,
                    'address_en'   => Hotal::find($orderInfo->service_id)->address_en,
                    'baidu_point'  => Hotal::find($orderInfo->service_id)->baidu_point,
                    'google_point' => Hotal::find($orderInfo->service_id)->google_point,
                    'type'         => 4,
                    'status'       => 2,
                ];
                break;
            case 5:
                $data = [
                    'service_id' => $orderInfo->service_id,
                    'avatar_id'  => Taxi::find($orderInfo->service_id)->avatar_id,
                    'real_name'  => Taxi::find($orderInfo->service_id)->real_name,
                    'mobile'     => Taxi::find($orderInfo->service_id)->mobile,
                    'type'       => 3,
                    'status'     => 2,
                ];
                break;
            case 6:
                $data = [
                    'service_id' => Tourism::find($orderInfo->service_id)->id,
                    'avatar_id'  => User::find($orderInfo->order->user_id)->own_admin->avatar_id,
                    'real_name'  => User::find($orderInfo->order->user_id)->own_admin->info->real_name,
                    'mobile'     => User::find($orderInfo->order->user_id)->own_admin->info->mobile,
                    'sex'        => User::find($orderInfo->order->user_id)->own_admin->info->sex,
                    'type'       => 10,
                    'status'     => 2,
                ];
                break;
        }

        if (!empty($data)) {
            $trip->trip_infos()->create($data);
        }

        return true;
    }

    protected function createOrderStub($input)
    {
        $order = self::MODEL;
        $order = new $order;
        $order->order_code = Carbon::now()->format('YmdHis') . str_pad(substr($input['user_id'], strlen($input['user_id']) - 4), 4, '0', STR_PAD_LEFT);
        $order->user_id    = $input['user_id'];
        $order->hospital   = $input['services']['hospital']['title'];
        $order->total_price   = collect($input['services'])->pluck('price')->sum() * 100;
        $order->money   = $input['money'] * 100;
        $order->desc   = '国际试管婴儿';
        $order->status     = 3;

        if (2 <= count($input['services'])) {
            $order->desc .= ' + 套餐';
        }

        return $order;
    }
}
