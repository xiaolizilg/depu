<?php

namespace App\Models\Country\Traits\Relationship;

use App\Models\Hospital\Hospital;

/**
 * Class CountryRelationship.
 */
trait CountryRelationship
{
    public function hospitals()
    {
        return $this->hasMany(Hospital::class);
    }
}
