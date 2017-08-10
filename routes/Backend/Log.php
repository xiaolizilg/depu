<?php

/**
 * Log Controllers
 * All route names are prefixed with 'backend.'.
 */

Route::group([
        'namespace' => 'Log',
        'prefix' => 'log',
        'as' => 'log.',
    ], function () {

    // // 操作日志
    // Route::resource('action', 'ActionController', ['only' => ['index', 'show', 'destroy']]);

    // // 系统日志
    // Route::resource('system', 'SystemController', ['only' => ['index', 'show', 'destroy']]);
});
