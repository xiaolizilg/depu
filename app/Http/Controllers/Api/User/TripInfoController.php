<?php

namespace App\Http\Controllers\Api\User;

use App\Models\Trip\TripInfo;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Http\Controllers\Controller;

class TripInfoController extends Controller
{
    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Trip\TripInfo  $tripInfo
     * @return \Illuminate\Http\Response
     */
    public function show(TripInfo $tripInfo)
    {
        if (!auth()->user()->me->trips()->where(['id' => $tripInfo->trip_id])->count()) {
            return api([], 403);
        }

        $is_commented = 0;
        $is_complainted = $tripInfo->complaints()->count() ? 1 : 0;

        $commentableType = [
            '\App\Models\User\User' => [0, 1, 13],
            '\App\Models\Hospital\Hospital' => [5, 11, 12],
            '\App\Models\Doctor\Doctor' => [6, 7, 8, 9],
            '\App\Models\ServiceMember\ServiceMember' => [2],
            '\App\Models\Taxi\Taxi' => [3],
            '\App\Models\Hotal\Hotal' => [4],
            '\App\Models\Tourism\Tourism' => [10],
        ];

        foreach ($commentableType as $key => $val) {
            if (in_array($tripInfo->type, $val)) {

                $is_commented = $key::find($tripInfo->service_id)
                    ->comments()
                    ->where('user_id', auth()->user()->user_id)
                    ->count() ? 1 : 0;
            }
        }

        $trip_info = [
            'type'           => $tripInfo->type,
            'service_id'     => $tripInfo->service_id,
            'type_name'      => $tripInfo->type_name,
            'cover'          => $tripInfo->cover,
            'avatar'         => $tripInfo->avatar,
            'real_name'      => $tripInfo->real_name,
            'mobile'         => $tripInfo->mobile,
            'sex'            => $tripInfo->sex_desc,
            'country'        => $tripInfo->country,
            'started_at'     => $tripInfo->started_at,
            'info'           => $tripInfo->info,
            'images'         => $tripInfo->images,
            'status'         => $tripInfo->status,
            'is_commented'   => $is_commented,
            'is_complainted' => $is_complainted,
        ];

        if (in_array($tripInfo->type, [4, 5])) {
            $trip_info = array_merge($trip_info, [
                    'address_zh'   => $tripInfo->address_zh,
                    'address_en'   => $tripInfo->address_en,
                    'baidu_point'  => $tripInfo->baidu_point,
                    'google_point' => $tripInfo->google_point
                ]);
        }

        if (in_array($tripInfo->type, [10])) {
            $trip_info['spots'] = $tripInfo->tourism->spots()->get(['id', 'title', 'info', 'cover_id', 'image_ids'])->map(function($item){
                $images = $item->pictures->map(function($item){
                    return [
                        'title' => $item->title,
                        'url' => $item->image
                    ];
                });

                $item->cover = $item->cover;
                $item->images = $images;

                return $item;
            });
        }

        return api(
                compact('trip_info')
            );
    }

    public function update(Request $request, TripInfo $tripInfo)
    {
        $tripInfo->status = 1;

        DB::transaction(function () use ($tripInfo) {

            if ($tripInfo->save()) {
                if (! $tripInfo->trip->trip_infos()->where('status', 2)->count()) {
                        $tripInfo->trip()->update([
                                'status' => 1
                            ]);

                        $tripInfo->trip->order()->update([
                                'status' => 1
                            ]);

                        $tripInfo->trip->order->running_account()->update([
                                'status' => 1
                            ]);
                }

                return true;
            }

            throw new GeneralException(__('exceptions.backend.restore_error'));
        });

        return api();
    }

}
