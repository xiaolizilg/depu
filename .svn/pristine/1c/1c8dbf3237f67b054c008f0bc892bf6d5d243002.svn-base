<?php

namespace App\Http\Requests\Api\User;

use Illuminate\Foundation\Http\FormRequest;

class CommentRequest extends FormRequest
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
            'content'     => 'required|string|max:300',
            'starts'      => 'numeric|between:1,5|integer',
            'image_ids'   => 'array|max:6',
            'image_ids.*' => 'numeric|min:0|integer',
        ];
    }
}
