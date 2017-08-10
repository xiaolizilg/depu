<?php

namespace App\Models\Order\Traits\Relationship;

use App\Models\Order\Order;

/**
 * Class RunningAccountRelationship.
 */
trait RunningAccountRelationship
{
    public function order()
    {
        return $this->belongsTo(Order::class);
    }
}
