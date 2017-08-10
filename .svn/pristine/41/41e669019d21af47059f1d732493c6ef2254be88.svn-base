<?php

namespace App\Http\Requests\Backend\Order;

use Illuminate\Foundation\Http\FormRequest;

class UpdateTripRequest extends FormRequest
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
            'cover_id'   => 'integer|min:0',
            'desc'       => 'required|string|max:80',
            'info'       => 'required|string|max:80',
            'image_ids'  => 'required|string|max:240',
            'started_at' => 'required|date',
        ];
    }
}
