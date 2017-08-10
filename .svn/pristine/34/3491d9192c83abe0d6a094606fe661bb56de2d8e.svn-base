<?php

namespace App\Models\Tourism\Traits\Relationship;

use App\Models\Comment\Comment;
use App\Models\Hospital\Hospital;
use App\Models\Spot\Spot;

/**
 * Class TourismRelationship.
 */
trait TourismRelationship
{
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function spots()
    {
        return $this->hasMany(Spot::class);
    }

    public function hospital()
    {
        return $this->belongsTo(Hospital::class);
    }
}
