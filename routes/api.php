<?php

/*
 * API Routes
 * Namespaces indicate folder structure
 * Url
 * http://dpkyb.zpftech.com
 * Header
 * Accept:application/json
 * Authorization:Bearer {token}
 */
Route::group(['namespace' => 'Api', 'as' => 'api.'], function () {
    includeRouteFiles(__DIR__.'/Api/');
});
