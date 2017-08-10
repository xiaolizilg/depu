<?php

/**
 * Admin Controllers
 * All route names are prefixed with 'backend.'.
 */

Route::group([
        'namespace' => 'Account',
        'prefix' => 'account',
        'as' => 'account.',
    ], function () {

    // 管理员
    Route::get('admin/deleted', 'AdminController@deleted')->name('admin.deleted');
    Route::resource('admin', 'AdminController');

    Route::group(['prefix' => 'admin/{admin}', 'as' => 'admin.'], function () {
        Route::get('mark/{status}', 'AdminController@mark')->name('mark')->where(['status' => '[0,1]']);

        Route::get('password/change', 'Password\AdminController@edit')->name('change-password');
        Route::put('password/change', 'Password\AdminController@update')->name('change-password.post');

        Route::get('restore', 'AdminController@restore')->name('restore');
        Route::get('forcedelete', 'AdminController@delete')->name('forcedelete');
    });

    // 会员
    Route::get('user/deleted', 'UserController@deleted')->name('user.deleted');
    Route::resource('user', 'UserController');

    Route::group(['prefix' => 'user/{user}', 'as' => 'user.'], function () {
        Route::get('mark/{status}', 'UserController@mark')->name('mark')->where(['status' => '[0,1]']);
        
        Route::get('password/change', 'Password\UserController@edit')->name('change-password');
        Route::put('password/change', 'Password\UserController@update')->name('change-password.post');

        Route::get('restore', 'UserController@restore')->name('restore');
        Route::get('forcedelete', 'UserController@delete')->name('forcedelete');

        // 档案管理
        Route::get('records', 'UserController@records')->name('records');
    });

 
});
