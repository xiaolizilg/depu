<?php

namespace App\Http\Requests\Backend\Content;

use Illuminate\Foundation\Http\FormRequest;

class ReplyComplaintRequest extends FormRequest
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
            'comment' => 'required|string|max:300'
        ];
    }

    public function attributes()
    {
        return [
            'comment'  => '回复内容',
        ];
    }
}
