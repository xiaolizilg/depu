<?php

/**
 * Global Routes
 * Routes that are used between both frontend and backend.
 */

// Switch between the included languages
Route::post('lang/{lang}', 'LanguageController@swap');

// Auth
Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
Route::post('login', 'Auth\LoginController@login');
Route::post('logout', 'Auth\LoginController@logout')->name('logout');

// Pay Callback
Route::any('pay/alipay/callback', 'Api\Pay\AlipayController@callback');
Route::any('pay/wechatpay/callback', 'Api\Pay\WechatpayController@callback');
Route::any('pay/unionpay/callback', 'Api\Pay\UnionpayController@callback');

Route::post('larawos/test', function(){
    return request()->all();
});

Route::get('larawos/test', function(){
    return request()->all();
});

/* ----------------------------------------------------------------------- */

/*
 * Frontend Routes
 * Namespaces indicate folder structure
 */
Route::group(['namespace' => 'Frontend', 'as' => 'frontend.'], function () {
    includeRouteFiles(__DIR__.'/Frontend/');
});

/* ----------------------------------------------------------------------- */

/*
 * Backend Routes
 * Namespaces indicate folder structure
 */
Route::group(['namespace' => 'Backend', 'prefix' => 'backend', 'as' => 'backend.', 'middleware' => ['backend']], function () {
    /*
     * These routes need view-backend permission
     */
    includeRouteFiles(__DIR__.'/Backend/');
});