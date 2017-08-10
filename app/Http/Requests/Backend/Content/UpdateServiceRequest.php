<?php

namespace App\Http\Requests\Backend\Content;

use Illuminate\Foundation\Http\FormRequest;

class UpdateServiceRequest extends FormRequest
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
            'cover_id' => 'integer|min:0',
            'title'    => 'required|string|max:80',
            'desc'     => 'required|string|max:80',
            'info'     => 'required|string|max:80'
        ];
    }

    public function attributes()
    {
        return [
            'cover_id' => '封面图',
            'title'    => '标题',
            'desc'     => '描述',
            'info'     => '简介'
        ];
    }
}
