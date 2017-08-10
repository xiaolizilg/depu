<?php

namespace App\Http\Requests\Backend\Account;

use Illuminate\Foundation\Http\FormRequest;

class StoreAdminRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'      => 'required',
            'password'  => 'required',
            'nickname'  => 'required',
            'real_name' => 'required',
            'mobile'    => 'required',
            'sex'       => 'required',
            'birthday'  => 'required',
        ];
    }

    public function attributes()
    {
        return [
            'name'      => '账号',
            'password'  => '密码',
            'nickname'  => '昵称',
            'real_name' => '真实姓名',
            'mobile'    => '手机号',
            'sex'       => '性别',
            'birthday'  => '生日',
        ];
    }
}
