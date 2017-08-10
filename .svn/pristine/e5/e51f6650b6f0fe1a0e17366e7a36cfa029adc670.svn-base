<?php

namespace App\Http\Requests\Api\User;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProfileRequest extends FormRequest
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
            'avatar_id'        => 'integer|min:0',
            'name'             => 'string',
            'sex'              => 'integer|in:0,1',
            'real_name'        => 'string|max:80',
            'mobile'           => 'string|mobile',
            'province_id'      => 'integer|min:0',
            'city_id'          => 'integer|min:0',
            'area_id'          => 'integer|min:0',
            'address'          => 'string|max:80',
            'admin_mobile'     => 'string|mobile',
            'attendant'        => 'string|max:80',
            'attendant_mobile' => 'string|mobile',
            'family'           => 'string|max:80',
            'family_mobile'    => 'string|mobile',
            'person_card'      => 'string|max:80',
            'birthday'         => 'date|date_format:Ymd',
        ];
    }
}
