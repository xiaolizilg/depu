<?php

namespace App\Models\Record\Traits\Relationship;

use App\Models\User\User;

/**
 * Class RecordRelationship.
 */
trait RecordRelationship
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
