<?php

namespace App\Models\User\Traits\Attribute;

use Carbon\Carbon as Carbon;

/**
 * Class UserInfoAttribute.
 */
trait UserInfoAttribute
{
    public function getBirthdayAttribute($birthday)
    {
        return Carbon::parse($birthday)->format('Y-m-d');
    }

    public function getSexDescAttribute()
    {
        return 0 == $this->sex ? '女' : '男';
    }

}
