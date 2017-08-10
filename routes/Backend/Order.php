<?php

/**
 * Order Controllers
 * All route names are prefixed with 'backend.'.
 */

Route::resource('order', 'Order\OrderController', ['index', 'show']);
Route::resource('running', 'Order\RunningAccountController', ['index', 'show']);

Route::group(['prefix' => 'order/{order}', 'as' => 'order.', 'namespace' => 'Order'], function () {
    Route::get('mark/{status}', 'OrderController@mark')->name('mark')->where(['status' => '[4]']);
    Route::resource('trip', 'TripController');

    Route::group(['prefix' => 'trip/{info}', 'as' => 'trip.'], function () {
        Route::get('mark/{status}', 'TripController@mark')->name('mark')->where(['status' => '[1,2]']);
    });
});
