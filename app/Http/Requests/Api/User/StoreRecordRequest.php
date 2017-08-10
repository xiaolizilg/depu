<?php

namespace App\Http\Requests\Api\User;

use Illuminate\Foundation\Http\FormRequest;

class StoreRecordRequest extends FormRequest
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
            'title'       => 'required|string|max:80',
            'desc'        => 'required|string|max:300',
            'started_at'  => 'required|date',
            'ended_at'    => 'required|date',
            'image_ids'   => 'array|max:9',
            'image_ids.*' => 'integer|min:0',
        ];
    }
}
