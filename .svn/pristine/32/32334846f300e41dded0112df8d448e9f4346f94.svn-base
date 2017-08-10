<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

class AuthorizingGuardAction
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
        if (
            Auth::guard($guard)->check() && 
            !in_array(Auth::guard($guard)->user()->user_id, config('auth.super_admins', [1]))
            ) {
            $currentRouteName = Route::CurrentRouteName();
            $permissions = Auth::guard($guard)->user()->me->roles->map(function($role){
                return $role->permissions;
            })->collapse();

            if ($permissions->isEmpty()) {
                return redirect('/')->with('danger', __('auth.general_error'));
            }

            Gate::define($guard, function () use ($currentRouteName, $permissions) {
                return !$permissions->where('name', $currentRouteName)->isEmpty();
            });

            if (!Gate::allows($guard)) {
                return redirect()->back()->with('danger', __('auth.general_error'));
            }
        }

        return $next($request);
    }
}
