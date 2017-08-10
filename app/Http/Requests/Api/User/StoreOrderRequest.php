<?php

namespace App\Http\Requests\Api\User;

use Illuminate\Foundation\Http\FormRequest;

class StoreOrderRequest extends FormRequest
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
            'services'              => 'required|array',
            'services.hospital'     => 'required|array',
            'services.*'            => 'required|array',
            'services.*.id'         => 'required|integer|min:0',
            'services.*.service_id' => 'required|integer|min:0',
            'services.*.real_name'  => 'required|string',
            'services.*.price'      => 'required|numeric|min:0',
            'services.*.desc'       => 'required|string',
        ];
    }
}
