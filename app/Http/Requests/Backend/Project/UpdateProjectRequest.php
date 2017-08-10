<?php

namespace App\Http\Requests\Backend\Project;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProjectRequest extends FormRequest
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
            'info'     => 'required|string|max:80',
            'price'    => 'required|numeric|min:0',
        ];
    }

    public function attributes()
    {
        return [
            'cover_id' => '封面图',
            'title'    => '名称',
            'info'     => '简介',
            'price'    => '费用',
        ];
    }
}
