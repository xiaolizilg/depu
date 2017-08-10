<?php

/**
 * Content Controllers
 * All route names are prefixed with 'backend.'.
 */
Route::group([
        'namespace' => 'Content',
        'prefix' => 'content',
        'as' => 'content.',
    ], function () {

    // 服务管理
    // Route::get('menu/deleted', 'MenuController@deleted')->name('menu.deleted');
    Route::resource('service', 'ServiceController', ['only' => ['index', 'edit', 'update']]);

    Route::resource('complaint', 'ComplaintController', ['only' => ['index', 'edit', 'update']]);

    Route::resource('agreement', 'AgreementController', ['only' => ['index', 'update']]);

    Route::get('banner/deleted', 'BannerController@deleted')->name('banner.deleted');
    Route::resource('banner', 'BannerController');
    Route::group(['prefix' => 'banner/{banner}', 'as' => 'banner.'], function () {
        Route::get('restore', 'BannerController@restore')->name('restore');
        Route::get('forcedelete', 'BannerController@delete')->name('forcedelete');
    });

    Route::get('ad/deleted', 'AdController@deleted')->name('ad.deleted');
    Route::resource('ad', 'AdController');
    Route::group(['prefix' => 'ad/{ad}', 'as' => 'ad.'], function () {
        Route::get('restore', 'AdController@restore')->name('restore');
        Route::get('forcedelete', 'AdController@delete')->name('forcedelete');
    });

    Route::get('blogroll/deleted', 'BlogrollController@deleted')->name('blogroll.deleted');
    Route::resource('blogroll', 'BlogrollController');
    Route::group(['prefix' => 'blogroll/{blogroll}', 'as' => 'blogroll.'], function () {
        Route::get('restore', 'BlogrollController@restore')->name('restore');
        Route::get('forcedelete', 'BlogrollController@delete')->name('forcedelete');
    });

    Route::get('news/deleted', 'NewsController@deleted')->name('news.deleted');
    Route::resource('news', 'NewsController');
    Route::group(['prefix' => 'news/{news}', 'as' => 'news.'], function () {
        Route::get('restore', 'NewsController@restore')->name('restore');
        Route::get('forcedelete', 'NewsController@delete')->name('forcedelete');
    });

    Route::resource('pusher', 'PusherController', ['only' => ['index', 'create', 'store']]);

    Route::get('version/deleted', 'VersionController@deleted')->name('version.deleted');
    Route::resource('version', 'VersionController');
    Route::group(['prefix' => 'version/{version}', 'as' => 'version.'], function () {
        Route::get('restore', 'VersionController@restore')->name('restore');
        Route::get('forcedelete', 'VersionController@delete')->name('forcedelete');
    });

});
