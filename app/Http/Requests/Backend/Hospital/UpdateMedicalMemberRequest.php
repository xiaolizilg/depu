<?php

namespace App\Http\Requests\Backend\Hospital;

use Illuminate\Foundation\Http\FormRequest;

class UpdateMedicalMemberRequest extends FormRequest
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
            'avatar_id'       => 'required|integer|min:0',
            'country_id'      => 'required|integer|min:0',
            'real_name'       => 'required|string|max:80',
            'info'            => 'required|string|max:80',
            'desc'            => 'required|string|max:80',
            'sex'             => 'required|integer|in:0,1',
            'mobile'          => 'required|mobile',
            'service_content' => 'required|string|max:300',
        ];
    }

    public function attributes()
    {
        return [
            'avatar_id'       => '头像',
            'country_id'      => '国家',
            'real_name'       => '真实姓名',
            'desc'            => '描述',
            'info'            => '简介',
            'sex'             => '性别',
            'mobile'          => '手机号',
            'service_content' => '服务内容',
        ];
    }
}
