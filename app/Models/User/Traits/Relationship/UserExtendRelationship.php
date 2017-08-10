<?php

namespace App\Models\User\Traits\Relationship;

use App\Models\User\User;

/**
 * Class UserExtendRelationship.
 */
trait UserExtendRelationship
{
    public function me()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
