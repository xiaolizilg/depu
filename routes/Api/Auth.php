<?php

/**
 * Api Controllers
 * All route names are prefixed with 'api.'.
 */

Route::group(['namespace' => 'Auth'], function () {
    // 登录
    Route::post('login', 'LoginController@login')->name('postlogin');

    // 注册
    Route::post('register', 'RegisterController@register')->name('postregister');
    // 协议
    Route::get('agreement', 'RegisterController@agreement')->name('agreement');

    // 发送验证码
    Route::post('code', 'SendCodeController@send')->name('postcode');

    // 找回密码
    Route::post('password/reset', 'ResetPasswordController@reset')->name('password.postreset');
});
