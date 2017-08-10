<?php

/**
 * Project Controllers
 * All route names are prefixed with 'backend.'.
 */
Route::group([
        'namespace' => 'Project',
        'prefix' => 'project',
        'as' => 'project.',
    ], function () {

    // 国家管理
    Route::get('country/deleted', 'CountryController@deleted')->name('country.deleted');
    Route::resource('country', 'CountryController');

    Route::group(['prefix' => 'country/{country}', 'as' => 'country.'], function () {
        Route::get('restore', 'CountryController@restore')->name('restore');
        Route::get('forcedelete', 'CountryController@delete')->name('forcedelete');
    });
});

Route::resource('project', 'Project\ProjectController', ['only' => ['index', 'edit', 'update']]);
