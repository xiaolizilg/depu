<?php

namespace App\Http\Requests\Backend\Hospital;

use Illuminate\Foundation\Http\FormRequest;

class UpdateDoctorRequest extends FormRequest
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
            'avatar_id'    => 'required|integer|min:0',
            'country_id'   => 'required|integer|min:0',
            'real_name'    => 'required|string|max:80',
            'info'         => 'required|string|max:80',
            'desc'         => 'required|string|max:80',
            'success_rate' => 'required|integer|min:0|max:100',
            'exp'          => 'required|integer|min:0',
        ];
    }

    public function attributes()
    {
        return [
            'avatar_id'    => '头像',
            'country_id'   => '国家',
            'real_name'    => '真实姓名',
            'desc'         => '描述',
            'info'         => '简介',
            'success_rate' => '成功率',
            'exp'          => '经验',
        ];
    }
}
