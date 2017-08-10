<?php

namespace App\Models\User\Traits\Relationship;

use App\Models\User\User;

/**
 * Class UserAccountRelationship.
 */
trait UserAccountRelationship
{
    public function me()
    {
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
