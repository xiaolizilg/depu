<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class LogoutIfUserDisabled
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check() && 1 !== Auth::guard($guard)->user()->me->status) {
            Auth::guard($guard)->logout();
            return redirect('/')->with('danger', __('auth.disabled'));
        }

        return $next($request);
    }
}
