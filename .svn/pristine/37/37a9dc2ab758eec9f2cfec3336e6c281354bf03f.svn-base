<?php

namespace App\Models\Taxi\Traits\Relationship;

use App\Models\Comment\Comment;
use App\Models\Picture\Picture;
use App\Models\Hospital\Hospital;

/**
 * Class TaxiRelationship.
 */
trait TaxiRelationship
{
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function pictures()
    {
        return $this->morphMany(Picture::class, 'pictureable');
    }

    public function hospital()
    {
        return $this->belongsTo(Hospital::class);
    }
}
