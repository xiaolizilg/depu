<?php

namespace App\Http\Requests\Backend\Hospital;

use Illuminate\Foundation\Http\FormRequest;

class StoreHospitalRequest extends FormRequest
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
            'cover_id'           => 'required|integer|min:0',
            'country_id'         => 'required|integer|min:0',
            'title'              => 'required|string|max:80',
            'info'               => 'required|string|max:80',
            'desc'               => 'required|string|max:80',
            'address_zh'         => 'required|zh|max:80',
            'address_en'         => 'required|en|max:80',
            'price'              => 'required|numeric|min:0',
            'success_rate'       => 'required|integer|min:0|max:100',
            'treatment_numbers'  => 'required|integer|min:0',
            'department_numbers' => 'required|integer|min:0',
            'bed_numbers'        => 'required|integer|min:0',
        ];
    }

    public function attributes()
    {
        return [
            'cover_id'           => '封面图',
            'country_id'         => '国家',
            'title'              => '名称',
            'desc'               => '描述',
            'info'               => '简介',
            'address_zh'         => '中文地址',
            'address_en'         => '英文地址',
            'price'              => '费用',
            'success_rate'       => '成功率',
            'treatment_numbers'  => '就诊数',
            'department_numbers' => '科室',
            'bed_numbers'        => '床位',
        ];
    }
}
