<?php

namespace App\Http\Controllers\Api\Auth\Traits;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

trait SendMobileCode
{
    public function send(Request $request)
    {
        $validator = $this->validateSend($request);

        $validator->setAttributeNames([
                'name' => '手机号'
            ]);

        if ($validator->fails()) {
            return $this->sendFailedValidatorResponse($validator);
        }

        $code = rand(1000, 9999);

        if (!$this->sendSmsCode(
                array_merge($request->only('name'), compact('code'))
            )) {
            return api([], 0);
        }

        cache()->put($request->get('type') . '|' . $request->get('name'), $code, 10);

        return api(compact('code'));
    }

    protected function validateSend(Request $request)
    {
        if (2 == $request->input('type')) {
            return Validator::make($request->all(), [
                    'name' => 'required|string|mobile|unique:user_accounts',
                    'type' => 'required|in:' . implode(',', config('auth.user_auths'))
                ]);
        }

        if (3 == $request->input('type')) {
            return Validator::make($request->all(), [
                    'name' => 'required|string|mobile|exists:user_accounts',
                    'type' => 'required|in:' . implode(',', config('auth.user_auths'))
                ]);
        }

        return Validator::make($request->all(), [
                'name' => 'required|string',
                'type' => 'required|in:' . implode(',', config('auth.user_auths'))
            ]);
    }

    protected function sendFailedValidatorResponse($validator)
    {
        return api($validator->errors()->first(), 422);
    }
    
    protected function sendSmsCode(array $credentials)
    {
        return true;
    }
}
