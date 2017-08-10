<?php

namespace App\Models\Spot\Traits\Relationship;

use App\Models\Tourism\Tourism;
use App\Models\Picture\Picture;

/**
 * Class SpotRelationship.
 */
trait SpotRelationship
{
    public function tourism()
    {
        return $this->belongsTo(Tourism::class);
    }

    public function pictures()
    {
        return $this->morphMany(Picture::class, 'pictureable');
    }
}
