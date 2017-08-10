<?php

namespace App\Http\Controllers\Api\Auth\Traits;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

trait RegistersUsers
{
    /**
     * Handle a registration request for the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = $this->validator($request->all());

        $validator->setAttributeNames([
                'name' => '手机号'
            ]);

        if ($validator->fails()) {
            return $this->sendFailedValidatorResponse($validator);
        }

        if (
            !($request->input('code') == cache()
                            ->get(config('auth.user_auths.register') . '|' . $request->input('name')))
            ) {
            return api([], 1004);
        }

        return $this->sendRegisterResponse($this->create($request->all()));
    }

    protected function sendFailedValidatorResponse($validator)
    {
        return api($validator->errors()->first(), 422);
    }

    protected function sendRegisterResponse($user)
    {
        return api(
                collect($user)
                    ->merge($user->me)
                    ->only('api_token', 'name')
            );
    }

    /**
     * Get the guard to be used during registration.
     *
     * @return \Illuminate\Contracts\Auth\StatefulGuard
     */
    protected function guard()
    {
        return Auth::guard();
    }
}
