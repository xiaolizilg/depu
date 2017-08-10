<?php

namespace App\Http\Controllers\Api\Pay;

use App\Models\Order\Order;
use App\Http\Controllers\Controller;
use App\Repositories\Api\Order\OrderRepository;
use App\Http\Requests\Api\Pay\CheckIsPaidRequest;
use App\Http\Requests\Api\Pay\CallbackRequest;
use Omnipay\WechatPay\Helper;
use Omnipay;

class WechatpayController extends Controller
{
    protected $orders;

    public function __construct(OrderRepository $orders)
    {
        $this->orders  = $orders;
    }

    public function forApp(Order $order)
    {
        $gateway = Omnipay::gateway('wechatpay_app');

        $order_code = $order->order_code;

        $order = [
            'body' => config('app.name', '德璞凯悦'),
            'out_trade_no' => $order->order_code,
            'total_fee' => $order->money,
            'spbill_create_ip' => request()->ip(),
            'fee_type' => 'CNY',
        ];

        $orderData = $gateway->purchase($order)
            ->send()
            ->getAppOrderData();

        return api(compact('orderData', 'order_code'));
    }

    public function forPc(Order $order)
    {
        $gateway = Omnipay::gateway('wechatpay_pc');

        $order_code = $order->order_code;
        $money      = $order->money;

        // $gateway->setReturnUrl($gateway->getReturnUrl() . '?' . http_build_query(compact('order_code', 'money')));

        $order = [
            'body' => config('app.name', '德璞凯悦'),
            'out_trade_no' => $order->order_code,
            'total_fee' => $order->money,
            'spbill_create_ip' => request()->ip(),
            'fee_type' => 'CNY',
        ];

        $codeUrl = $gateway->purchase($order)
            ->send()
            ->getCodeUrl();

        return api(compact('codeUrl', 'order_code'));
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
            $this->orders->paidSuccess(array_merge($request->all(), ['pay_type' => 2, 'order_code' => $request->input('order_code')]));

            die(Helper::array2xml([
                    'return_code' => 'SUCCESS',
                    'return_msg'  => 'OK',
                ]));
        } else {
            die(Helper::array2xml([
                    'return_code' => 'FAIL',
                    'return_msg'  => '服务器异常，用户丢单。',
                ]));
        }

    }

    protected function _success($request)
    {
        return true;

        $gateway = Omnipay::gateway('wechatpay_callback');

        $response = $gateway->completePurchase([
                'request_params' => file_get_contents('php://input')
            ])->send();

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
