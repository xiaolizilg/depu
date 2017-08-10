<?php

namespace App\Models\ServiceMember\Traits\Relationship;

use App\Models\Comment\Comment;
use App\Models\Hospital\Hospital;
use App\Models\Country\Country;

/**
 * Class ServiceMemberRelationship.
 */
trait ServiceMemberRelationship
{
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function hospital()
    {
        return $this->belongsTo(Hospital::class);
    }

    public function country()
    {
        return $this->belongsTo(Country::class);
    }
}
