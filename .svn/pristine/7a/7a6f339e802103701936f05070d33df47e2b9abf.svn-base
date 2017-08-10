<?php 

/**
 * Api Controllers
 * All route names are prefixed with 'api.'.
 */

Route::get('home', 'HomeController@index')->name('home');

 // 版本
Route::resource('version', 'VersionController', ['only' => ['index']]);

 // 版本
Route::resource('ad', 'AdController', ['only' => ['index']]);

// 评价
Route::group(['prefix' => 'comment', 'as' => 'comment.' ], function () {
    Route::get('hospital/{hospital}', 'CommentController@hospital')->name('hospital');
    Route::get('doctor/{doctor}', 'CommentController@doctor')->name('doctor');
    Route::get('member/{member}', 'CommentController@member')->name('member');
    Route::get('taxi/{taxi}', 'CommentController@taxi')->name('taxi');
    Route::get('hotal/{hotal}', 'CommentController@hotal')->name('hotal');
    Route::get('tourism/{tourism}', 'CommentController@tourism')->name('tourism');
});

 // 热门资讯
Route::get('news/hots', 'NewsController@hots');

 // 资讯
Route::resource('news', 'NewsController', ['only' => ['index', 'show']]);

Route::group(['prefix' => 'home', 'as' => 'home.'], function () {
    // 项目详情
    Route::get('project/{project}', 'HomeController@projectInfo')->name('project');

    // 医院列表
    Route::get('hospitals/{country}', 'HomeController@hospitals')->name('hospitals');

    // 医院详情
    Route::get('hospital/{hospital}', 'HomeController@hospitalInfo')->name('hospital');

    // 医生列表
    Route::get('doctors/{hospital}', 'HomeController@doctors')->name('doctors');

    // 医生详情
    Route::get('doctor/{doctor}', 'HomeController@doctorInfo')->name('doctor');

    // 服务列表
    Route::get('services', 'HomeController@services')->name('services');

    // 医疗翻译者列表
    Route::get('medical-translations/{hospital}', 'HomeController@medicalTranslations')->name('medical-translations');

    // 生活翻译者列表
    Route::get('life-translations/{hospital}', 'HomeController@lifeTranslations')->name('life-translations');

    // 保姆列表
    Route::get('nannies/{hospital}', 'HomeController@nannies')->name('nannies');

    // 服务者详情
    Route::get('service-member/{member}', 'HomeController@serviceMemberInfo')->name('service-member');

     // 酒店列表
    Route::get('hotals/{hospital}', 'HomeController@hotals')->name('hotals');

     // 酒店详情
    Route::get('hotal/{hotal}', 'HomeController@hotalInfo')->name('hotal');

     // 出租车列表
    Route::get('taxis/{hospital}', 'HomeController@taxis')->name('taxis');

     // 出租车详情
    Route::get('taxi/{taxi}', 'HomeController@taxiInfo')->name('taxi');

     // 景区列表
    Route::get('tourisms/{hospital}', 'HomeController@tourisms')->name('tourisms');

     // 景区详情
    Route::get('tourism/{tourism}', 'HomeController@tourismInfo')->name('tourism');

    // 友情链接
    Route::get('blogrolls', 'HomeController@blogrolls')->name('blogrolls');

    // 区域树状列表
    Route::get('areas', 'HomeController@allAreas')->name('all-areas');

    // 省份列表
    Route::get('provinces', 'HomeController@provinces')->name('provinces');

    // 城市列表
    Route::get('citys/{province_id}', 'HomeController@citys')->name('citys');

    // 地区列表
    Route::get('areas/{province_id}/{city_id}', 'HomeController@areas')->name('areas');

});
