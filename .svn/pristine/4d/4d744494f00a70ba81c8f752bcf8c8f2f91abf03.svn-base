<?php

namespace App\Repositories\Backend\Order;

use App\Models\Order\Order;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class OrderRepository.
 */
class OrderRepository extends BaseRepository
{
    const MODEL = Order::class;

    public function mark(Model $order, $status)
    {
        $order->status = $status;

        DB::transaction(function () use ($order, $status) {

            switch ($status) {
                case 4:
                    // event(new OrderRefunded($order));
                break;
            }

            if ($order->save()) {

                $order->running_account()->create([
                        'order_code'   => $order->order_code,
                        'account'      => auth()->user()->name,
                        'paid_account' => auth()->user()->name,
                        'ip'           => ip2long(request()->ip()),
                        'money'        => -$order->money,
                        'pay_type'     => 4,
                        'status'       => 2,
                    ]);

                return true;
            }

            throw new GeneralException(__('exceptions.backend.mark_error'));
        });
    }
}
