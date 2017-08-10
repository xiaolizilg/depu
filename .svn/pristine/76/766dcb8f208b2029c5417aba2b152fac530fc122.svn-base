<?php

namespace App\Http\Requests\Backend\Hospital;

use Illuminate\Foundation\Http\FormRequest;

class UpdateHotalRequest extends FormRequest
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
            'cover_id'     => 'required|integer|min:0',
            'title'        => 'required|zh|max:80',
            'title_en'     => 'required|en|max:80',
            'mobile'       => 'required|mobile',
            'address_zh'   => 'required|zh|max:80',
            'address_en'   => 'required|en|max:80',
            'baidu_point'  => 'required|string',
            'google_point' => 'required|string',
            'info'         => 'required|string|max:80',
            'level'        => 'required|integer|min:0',
            'price'        => 'required|numeric|min:0',
        ];
    }

    public function attributes()
    {
        return [
            'cover_id'     => '封面图',
            'title'        => '名称',
            'title_en'     => '英文名称',
            'mobile'       => '手机号',
            'address_zh'   => '中文地址',
            'address_en'   => '英文地址',
            'baidu_point'  => '百度坐标',
            'google_point' => '谷歌坐标',
            'info'         => '简介',
            'level'        => '级别',
            'price'        => '费用',
        ];
    }
}
