<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        if ('local' == config('app.env') && config('app.debug')) {
            $this->app->register(\Barryvdh\Debugbar\ServiceProvider::class);
        }

        \Validator::extend('mobile', function($attribute, $value){
            return preg_match('/^1[0-9]{10}$/', $value);
        });

        \Validator::extend('zh', function($attribute, $value){
            return preg_match('/^[\x80-\xff]+$/', $value);
        });

        \Validator::extend('en', function($attribute, $value){
            return preg_match('/^[a-zA-Z]+$/', $value);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
