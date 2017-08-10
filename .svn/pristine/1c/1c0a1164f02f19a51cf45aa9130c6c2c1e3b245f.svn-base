<?php

namespace App\Models\Doctor\Traits\Relationship;

use App\Models\Comment\Comment;
use App\Models\Country\Country;
use App\Models\Hospital\Hospital;

/**
 * Class DoctorRelationship.
 */
trait DoctorRelationship
{
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function country()
    {
        return $this->belongsTo(Country::class);
    }

    public function hospital()
    {
        return $this->belongsTo(Hospital::class);
    }
}
