<?php

namespace App\Http\Requests\Backend\Hospital;

use Illuminate\Foundation\Http\FormRequest;

class UpdateTaxiRequest extends FormRequest
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
            'avatar_id' => 'required|integer|min:0',
            'real_name' => 'required|string|max:80',
            'mobile'    => 'required|mobile',
            'cover_id'  => 'required|integer|min:0',
            'title'     => 'required|string|max:80',
            'desc'      => 'required|string|max:80',
            'info'      => 'required|string|max:80',
            'members'   => 'required|integer|min:0',
        ];
    }

    public function attributes()
    {
        return [
            'avatar_id' => '头像',
            'real_name' => '真实姓名',
            'mobile'    => '手机号',
            'cover_id'  => '封面图',
            'title'     => '名称',
            'desc'      => '描述',
            'info'      => '简介',
            'members'   => '载座',
        ];
    }
}
