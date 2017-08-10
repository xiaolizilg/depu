<?php

namespace App\Http\Controllers\Api\Pay;

use App\Models\Order\Order;
use App\Http\Controllers\Controller;
use App\Repositories\Api\Order\OrderRepository;
use App\Http\Requests\Api\Pay\CheckIsPaidRequest;
use App\Http\Requests\Api\Pay\CallbackRequest;
use Omnipay;

class AlipayController extends Controller
{
    protected $orders;

    public function __construct(OrderRepository $orders)
    {
        $this->orders  = $orders;
    }

    public function forApp(Order $order)
    {
        if (!auth()->user()->me->orders()->where(['id' => $order->id])->count()) {
            return api([], 403);
        }

        $gateway = Omnipay::gateway('alipay_app');

        $order_code = $order->order_code;

        $order = [
            'subject' => config('app.name', '德璞凯悦'),
            'out_trade_no' => $order->order_code,
            'total_amount' => 0.01,
            'product_code' => 'QUICK_MSECURITY_PAY',
        ];

        $orderString = $gateway->purchase()
            ->setBizContent($order)
            ->send()
            ->getOrderString();

        return api(compact('orderString', 'order_code'));
    }

    public function forPc(Order $order)
    {
        if (!auth()->user()->me->orders()->where(['id' => $order->id])->count()) {
            return api([], 403);
        }

        $gateway = Omnipay::gateway('alipay_pc');

        $order_code = $order->order_code;
        $money      = $order->money;

        $gateway->setReturnUrl($gateway->getReturnUrl() . '?' . http_build_query(compact('order_code', 'money')));

        $order = [
            'subject' => config('app.name', '德璞凯悦'),
            'out_trade_no' => $order->order_code,
            'total_amount' => $order->money,
            'product_code' => 'FAST_INSTANT_TRADE_PAY',
        ];

        $redirectUrl = $gateway->purchase()
            ->setBizContent($order)
            ->send()
            ->getRedirectUrl();

        return api(compact('redirectUrl', 'order_code'));
    }

    public function check(CheckIsPaidRequest $request)
    {
        $order = $this->orders->findBy(['order_code' => $request->input('order_code')]);

        if ((!empty($order)) && $this->_check($order)) {
            return api([], 1);
        }

        return api([], 0);
    }

    protected function _check($order)
    {
        for ($i=0; $i < 3; $i++) { 
            if ($order->status == 2) {
                return true;
            } else {
                usleep(300);
            }
        }

        return false;
    }

    public function callback(CallbackRequest $request)
    {
        if ($this->_success($request)) {
            $this->orders->paidSuccess(array_merge($request->all(), ['pay_type' => 1, 'order_code' => $request->input('out_trade_no')]));
            die('success');
        } else {
            die('fail');
        }
    }

    protected function _success($request)
    {
        return true;

        $gateway = Omnipay::gateway('alipay');

        $request = $gateway->completePurchase();
        $request->setParams($request->all());

        try {
            $response = $request->send();
            
            if($response->isPaid()){

                return true;
            }else{
                return false;
            }
        } catch (\Exception $e) {
            return false;
        }
    }
}
