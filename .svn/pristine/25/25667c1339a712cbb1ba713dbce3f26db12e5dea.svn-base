<?php 

/**
 * Api Controllers
 * All route names are prefixed with 'api.'.
 */

Route::group(['prefix' => 'pay', 'as' => 'pay.', 'middleware' => 'auth:api', 'namespace' => 'Pay'], function () {
    // AliPay
    Route::post('alipay/check', 'AlipayController@check');
    Route::post('alipay/{order}/app', 'AlipayController@forApp');
    Route::post('alipay/{order}/pc', 'AlipayController@forPc');

    // Wechatpay
    Route::post('wechatpay/check', 'WechatpayController@check');
    Route::post('wechatpay/{order}/app', 'WechatpayController@forApp');
    Route::post('wechatpay/{order}/pc', 'WechatpayController@forPc');

    // Unionpay
    Route::post('unionpay/check', 'UnionpayController@check');
    Route::post('unionpay/{order}/app', 'UnionpayController@forApp');
    Route::post('unionpay/{order}/pc', 'UnionpayController@forPc');
});
