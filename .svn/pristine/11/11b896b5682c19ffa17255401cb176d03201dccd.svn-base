<?php

namespace App\Models\Complaint\Traits\Relationship;

use App\Models\User\User;
use App\Models\Order\Order;

/**
 * Class ComplaintRelationship.
 */
trait ComplaintRelationship
{
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function commenter()
    {
        return $this->belongsTo(User::class, 'comment_id', 'id');
    }
}
