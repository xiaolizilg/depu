<?php

namespace App\Http\Requests\Backend\Hospital;

use Illuminate\Foundation\Http\FormRequest;

class ReplyCommentRequest extends FormRequest
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
            'content' => 'required|string|max:300'
        ];
    }

    public function attributes()
    {
        return [
            'content' => '回复内容'
        ];
    }
}
