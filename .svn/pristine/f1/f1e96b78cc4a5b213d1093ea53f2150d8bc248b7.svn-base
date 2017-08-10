<?php

/**
 * Access Controllers
 * All route names are prefixed with 'backend.'.
 */

Route::group([
        'namespace' => 'Access',
        'prefix' => 'access',
        'as' => 'access.',
    ], function () {

    // 角色分组
    Route::get('role/deleted', 'RoleController@deleted')->name('role.deleted');
    Route::resource('role', 'RoleController');

    Route::group(['prefix' => 'role/{role}', 'as' => 'role.'], function () {
        Route::get('mark/{status}', 'RoleController@mark')->name('mark')->where(['status' => '[0,1]']);
        Route::get('restore', 'RoleController@restore')->name('restore');
        Route::get('forcedelete', 'RoleController@delete')->name('forcedelete');

        Route::get('role/set', 'Setter\RoleController@edit')->name('set-role');
        Route::get('role/unset', 'Setter\RoleController@unsetter')->name('unset-role');
        Route::put('role/set', 'Setter\RoleController@update')->name('set-role.post');

        Route::get('permission/set', 'Setter\PermissionController@edit')->name('set-permission');
        Route::get('permission/unset', 'Setter\PermissionController@unsetter')->name('unset-permission');
        Route::put('permission/set', 'Setter\PermissionController@update')->name('set-permission.post');
    });

    // 权限管理
    Route::get('permission/deleted', 'PermissionController@deleted')->name('permission.deleted');
    Route::resource('permission', 'PermissionController');

    Route::group(['prefix' => 'permission/{permission}', 'as' => 'permission.'], function () {
        Route::get('mark/{status}', 'PermissionController@mark')->name('mark')->where(['status' => '[0,1]']);
        Route::get('restore', 'PermissionController@restore')->name('restore');
        Route::get('forcedelete', 'PermissionController@delete')->name('forcedelete');
    });

    // 分组管理
    Route::get('group/deleted', 'GroupController@deleted')->name('group.deleted');
    Route::resource('group', 'GroupController');

    Route::group(['prefix' => 'group/{group}', 'as' => 'group.'], function () {
        Route::get('mark/{status}', 'GroupController@mark')->name('mark')->where(['status' => '[0,1]']);
        Route::get('restore', 'GroupController@restore')->name('restore');
        Route::get('forcedelete', 'GroupController@delete')->name('forcedelete');
    });
});
