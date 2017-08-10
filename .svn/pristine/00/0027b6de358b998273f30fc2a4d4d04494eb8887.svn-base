<?php

namespace App\Http\Requests\Backend\Hospital;

use Illuminate\Foundation\Http\FormRequest;

class UpdateSpotRequest extends FormRequest
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
            'cover_id' => 'required|integer|min:0',
            'title'    => 'required|string|max:80',
            'info'     => 'string|max:80',
        ];
    }

    public function attributes()
    {
        return [
            'cover_id' => '封面图',
            'title'    => '名称',
            'info'     => '简介',
        ];
    }
}
