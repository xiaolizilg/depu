<?php

namespace App\Http\Controllers\Api\Auth\Traits;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon as Carbon;

trait AuthenticatesUsers
{
    /**
     * Handle a login request to the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $validator = $this->validateLogin($request);

        if ($validator->fails()) {
            return $this->sendFailedValidatorResponse($validator);
        }

        if ($this->attemptLogin($request)) {

            if ($this->userDisabled($request)) {
                return $this->sendDisabledResponse();
            }

            auth()->user()->me->extend()->update([
                    'last_logined_at' => Carbon::now(),
                    'last_logined_ip' => ip2long($request->ip())
                ]);

            return $this->sendLoginResponse($request);
        }

        return $this->sendFailedLoginResponse();
    }

    /**
     * Validate the user login request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return void
     */
    protected function validateLogin(Request $request)
    {
        return Validator::make($request->all(), [
                $this->username() => 'required|string',
                'password' => 'required|string',
            ]);
    }

    /**
     * Attempt to log the user into the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return bool
     */
    protected function attemptLogin(Request $request)
    {
        return $this->guard()->once($this->credentials($request));
    }

    /**
     * Get the needed authorization credentials from the request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    protected function credentials(Request $request)
    {
        return array_merge(
                $request->only($this->username(), 'password'),
                ['type' => 3, 'guard' => 0]
            );
    }

    /**
     * Send the response after the user was authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    protected function sendLoginResponse(Request $request)
    {
        return api(
                collect($request->user())
                    ->merge($request->user()->me)
                    ->only('api_token', 'name')
            );
    }

    public function userDisabled(Request $request)
    {
        return 1 != $request->user()->me->status;
    }

    /**
     * The user has been authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function authenticated(Request $request, $user)
    {
        //
    }

    /**
     * Get the disabled response instance.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    protected function sendDisabledResponse()
    {
        return api([], 1002);
    }

    /**
     * Get the failed login response instance.
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    protected function sendFailedLoginResponse()
    {
        return api([], 1001);
    }

    protected function sendFailedValidatorResponse($validator)
    {
        return api($validator->errors()->first(), 3);
    }

    /**
     * Get the login username to be used by the controller.
     *
     * @return string
     */
    public function username()
    {
        return 'name';
    }

    /**
     * Get the guard to be used during authentication.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard();
    }
}
