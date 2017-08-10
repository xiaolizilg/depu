<?php

namespace App\Http\Requests\Api\User;

use Illuminate\Foundation\Http\FormRequest;

class ComplaintRequest extends FormRequest
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
            'order_id'    => 'integer|min:0',
            'type'        => 'required|integer|in:0,1',
            'content'     => 'string|max:300',
            'image_ids'   => 'array',
            'image_ids.*' => 'integer|min:0',
        ];
    }
}
