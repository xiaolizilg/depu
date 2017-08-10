<?php

return [

    // 默认支付网关
    'default' => 'alipay',

    // 各个支付网关配置
    'gateways' => [
        'paypal' => [
            'driver' => 'PayPal_Express',
            'options' => [
                'solutionType' => '',
                'landingPage' => '',
                'headerImageUrl' => ''
            ]
        ],

        'alipay_app' => [
            'driver' => 'Alipay_AopApp',
            'options' => [
                'appId'       => '2017061507498154',
                'signType'    =>'RSA2',
                'returnUrl'   => 'http://dpkyf.zpftech.com/my_ser/order/1/pay_results',
                'notifyUrl'   => env('APP_URL') . '/pay/alipay/callback',
                'privateKey'  => file_get_contents(base_path('storage/app/certs/alipay/rsa_private_key.pem')),
                'publicKey'   => file_get_contents(base_path('storage/app/certs/alipay/rsa_public_key.pem')),
            ]
        ],

        'alipay_pc' => [
            'driver' => 'Alipay_AopPage',
            'options' => [
                'appId'       => '2017061507498154',
                'signType'    =>'RSA2',
                'returnUrl'   => 'http://dpkyf.zpftech.com/my_ser/order/1/pay_results',
                'notifyUrl'   => env('APP_URL') . '/pay/alipay/callback',
                'privateKey'  => file_get_contents(base_path('storage/app/certs/alipay/rsa_private_key.pem')),
                'publicKey'   => file_get_contents(base_path('storage/app/certs/alipay/rsa_public_key.pem')),
            ]
        ],

        'wechatpay_app' => [
            'driver' => 'WechatPay_App',
            'options' => [
                'appId'     => 'wx505e88d7b9b0e5ba',
                'mchId'     => '1230000109',
                'apiKey'    => 'cba6127a82747533c9e571ef46c5f050',
                'returnUrl' => 'http://dpkyf.zpftech.com/my_ser/order/1/pay_results',
                'notifyUrl' => env('APP_URL') . '/pay/wechatpay/callback',
            ]
        ],

        'wechatpay_pc' => [
            'driver' => 'WechatPay_Native',
            'options' => [
                'appId'     => 'wx505e88d7b9b0e5ba',
                'mchId'     => '1230000109',
                'apiKey'    => 'cba6127a82747533c9e571ef46c5f050',
                'returnUrl' => 'http://dpkyf.zpftech.com/my_ser/order/1/pay_results',
                'notifyUrl' => env('APP_URL') . '/pay/wechatpay/callback',
            ]
        ],

        'wechatpay_callback' => [
            'driver' => 'WechatPay',
            'options' => [
                'appId'     => 'wx505e88d7b9b0e5ba',
                'mchId'     => '1230000109',
                'apiKey'    => 'cba6127a82747533c9e571ef46c5f050',
            ]
        ],

        'unionpay' => [
            'driver' => 'UnionPay_Express',
            'options' => [
                'merId'        => '777290058148267',
                'certPath'     => storage_path('app/certs/unionpay/private_key.p12'),
                'certPassword' => '000000',
                'certDir'      => storage_path('app/certs/unionpay'),
                'returnUrl'    => 'http://dpkyf.zpftech.com/my_ser/order/1/pay_results',
                'notifyUrl'    => env('APP_URL') . '/pay/unionpay/callback',
            ]
        ],
    ]

];