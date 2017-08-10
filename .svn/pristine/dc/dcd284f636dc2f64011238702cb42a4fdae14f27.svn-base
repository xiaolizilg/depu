<?php

namespace App\Http\Controllers\Api\Auth\Traits;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Repostories\Api\User\UserRepository;

trait ResetsPasswords
{
    public function reset(Request $request)
    {
        $validator = $this->validateReset($request);

        if ($validator->fails()) {
            return $this->sendFailedValidatorResponse($validator);
        }
        
        if (
                ($request->input('code') == cache()->get(config('auth.user_auths.reset_password') . '|' . $request->input('name'))) &&
                $this->users->changeMobileAccountPassword($request->all())
            ) {
            return api();
        }

        return api([], 1004);
    }

    protected function validateReset(Request $request)
    {
        return Validator::make($request->all(), [
                'name' => 'required|string',
                'password' => 'required|alpha_num|min:6|max:16',
                'code' => 'required|string'
            ]);
    }

    protected function sendFailedValidatorResponse($validator)
    {
        return api($validator->errors()->first(), 422);
    }
}
