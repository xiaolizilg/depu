<?php

namespace App\Http\Requests\Backend\Project\Country;

use Illuminate\Foundation\Http\FormRequest;

class UpdateCountryRequest extends FormRequest
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
            'title'    => 'required|zh|max:80',
            'title_en' => 'required|alpha|max:80',
        ];
    }

    public function attributes()
    {
        return [
            'cover_id' => '封面图',
            'title'    => '名称',
            'title_en' => '英文名称',
    }
}
