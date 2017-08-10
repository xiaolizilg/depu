<?php

namespace App\Http\Middleware;

use Closure;
use Carbon\Carbon;

class SetLocaleConfig
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if (session()->has('locale')) {
            config(session('locale'));
        }

        Carbon::setLocale(config('app.locale', 'zh'));

        return $next($request);
    }
}
