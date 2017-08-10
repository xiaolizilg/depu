<?php

namespace App\Models\Order\Traits\Relationship;

use App\Models\Order\Order;

/**
 * Class OrderInfoRelationship.
 */
trait OrderInfoRelationship
{
    public function infoable()
    {
        return $this->morphTo();
    }

    public function order()
    {
        return $this->belongsTo(Order::class);
    }
}
