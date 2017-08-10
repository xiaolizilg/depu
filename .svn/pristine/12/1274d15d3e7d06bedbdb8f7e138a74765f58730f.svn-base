<?php

/**
 * System Controllers
 * All route names are prefixed with 'backend.'.
 */

Route::group([
        'namespace' => 'System',
        'prefix' => 'system',
        'as' => 'system.',
    ], function () {

    // 菜单管理
    // Route::get('menu/deleted', 'MenuController@deleted')->name('menu.deleted');
    Route::resource('menu', 'MenuController');

    // Route::group(['prefix' => 'menu/{menu}', 'as' => 'menu.'], function () {
    //     Route::get('mark/{status}', 'MenuController@mark')->name('mark')->where(['status' => '[0,1]']);
    //     Route::get('restore', 'MenuController@restore')->name('restore');
    //     Route::get('forcedelete', 'MenuController@delete')->name('forcedelete');
    // });

});
