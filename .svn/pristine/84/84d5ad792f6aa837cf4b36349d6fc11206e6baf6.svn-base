<?php

namespace App\Models\Trip\Traits\Relationship;

use App\Models\Comment\Comment;
use App\Models\Trip\TripInfo;
use App\Models\Order\Order;

/**
 * Class TripRelationship.
 */
trait TripRelationship
{
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function trip_infos()
    {
        return $this->hasMany(TripInfo::class);
    }

    public function order()
    {
        return $this->belongsTo(Order::class);
    }
}
