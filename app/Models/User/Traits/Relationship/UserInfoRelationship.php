<?php

namespace App\Models\User\Traits\Relationship;

use App\Models\User\User;
use App\Models\Area\Area;

/**
 * Class UserInfoRelationship.
 */
trait UserInfoRelationship
{
    public function province()
    {
        return $this->belongsTo(Area::class, 'province_id', 'id');
    }

    public function city()
    {
        return $this->belongsTo(Area::class, 'city_id', 'id');
    }

    public function area()
    {
        return $this->belongsTo(Area::class, 'area_id', 'id');
    }

    public function me()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
