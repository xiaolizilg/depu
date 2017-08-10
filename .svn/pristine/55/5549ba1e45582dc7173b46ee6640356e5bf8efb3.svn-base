<?php

namespace App\Http\Controllers\Api\Pay;

use App\Models\Order\Order;
use App\Http\Controllers\Controller;
use App\Repositories\Api\Order\OrderRepository;
use App\Http\Requests\Api\Pay\CheckIsPaidRequest;
use App\Http\Requests\Api\Pay\CallbackRequest;
use Omnipay;

class UnionpayController extends Controller
{
    protected $orders;

    public function __construct(OrderRepository $orders)
    {
        $this->orders  = $orders;
    }

    public function forApp(Order $order)
    {
        $gateway = Omnipay::gateway('unionpay');

        $order_code = $order->order_code;

        $order = [
            'orderDesc' => config('app.name', '德璞凯悦'),
            'orderId' => $order->order_code,
            'txnAmt' => $order->money * 100,
            'txnTime' => date('YmdHis'),
        ];

        $tradeNo = $gateway->purchase($order)
            ->send()
            ->getTradeNo();

        return api(compact('tradeNo', 'order_code'));
    }

    public function forPc(Order $order)
    {
        $gateway = Omnipay::gateway('unionpay');

        $order_code = $order->order_code;
        $money      = $order->money;

        $gateway->setReturnUrl($gateway->getReturnUrl() . '?' . http_build_query(compact('order_code', 'money')));
        
        $order = [
            'orderDesc' => config('app.name', '德璞凯悦'),
            'orderId' => $order->order_code,
            'txnAmt' => 1,
            'txnTime' => date('YmdHis'),
        ];

        $data = $gateway->purchase($order)
            ->send()
            ->getData();

        $url = 'https://101.231.204.80:5000/gateway/api/frontTransReq.do';

        return api(compact('data', 'url', 'order_code'));
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
            $this->orders->paidSuccess(['pay_type' => 3, 'order_code' => $request->input('orderId')]);
            die('success');
        } else {
            die('fail');
        }

    }

    protected function _success($request)
    {
        $gateway = Omnipay::gateway('unionpay');

        $response = $gateway->completePurchase(['request_params'=> $request->all()])->send();

        try {
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
