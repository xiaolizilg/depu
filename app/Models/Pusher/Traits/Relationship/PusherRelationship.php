<?php

namespace App\Models\Pusher\Traits\Relationship;

use App\Models\User\User;

/**
 * Class PusherRelationship.
 */
trait PusherRelationship
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
