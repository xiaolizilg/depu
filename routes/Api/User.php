<?php 

/**
 * Api Controllers
 * All route names are prefixed with 'api.'.
 */

Route::group(['prefix' => 'user', 'as' => 'user.' , 'namespace' => 'User' , 'middleware' => 'auth:api'], function () {
    // 上传图片
    Route::post('image', 'UploaderController@image')->name('image.post');
    // 上传文件
    Route::post('file', 'UploaderController@file')->name('file.post');

    // 个人中心
    Route::resource('me', 'MeController', ['only' => ['index', 'store']]);
    Route::group(['prefix' => 'me', 'as' => 'me.' ], function () {
        Route::get('info', 'MeController@info')->name('info');
        Route::get('comment', 'MeController@comment')->name('comment');
        Route::post('complaint', 'MeController@complaint')->name('complaint');
        Route::post('change-password', 'MeController@changePassword')->name('change-password');
        Route::post('validate-code', 'MeController@validateCode')->name('validate-code');
    });

    // 评价
    Route::group(['prefix' => 'comment', 'as' => 'comment.' ], function () {
        Route::post('hospital/{hospital}', 'CommentController@hospital')->name('hospital');
        Route::post('doctor/{doctor}', 'CommentController@doctor')->name('doctor');
        Route::post('member/{member}', 'CommentController@member')->name('member');
        Route::post('taxi/{taxi}', 'CommentController@taxi')->name('taxi');
        Route::post('hotal/{hotal}', 'CommentController@hotal')->name('hotal');
        Route::post('tourism/{tourism}', 'CommentController@tourism')->name('tourism');
        Route::post('order/{order}', 'CommentController@order')->name('order');
        Route::post('own-admin/{user}', 'CommentController@ownAdmin')->name('own-admin');
    });

    // 订单
    Route::resource('order', 'OrderController', ['only' => ['index', 'show', 'store', 'update']]);
    Route::post('order/{order}/refund', 'OrderController@refund');
    // 推送
    Route::resource('push', 'PushController', ['only' => ['index', 'show']]);
    // 档案
    Route::resource('record', 'RecordController', ['only' => ['index', 'show', 'store']]);
    // 行程
    Route::resource('trip', 'TripController', ['only' => ['index', 'show']]);
    // 行程详情
    Route::resource('trip-info', 'TripInfoController', ['only' => ['show', 'update']]);
});
