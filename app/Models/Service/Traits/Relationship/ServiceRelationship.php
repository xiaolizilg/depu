<?php

namespace App\Models\Service\Traits\Relationship;

use App\Models\Service\Service;
use App\Models\Order\OrderInfo;

/**
 * Class ServiceRelationship.
 */
trait ServiceRelationship
{
    public function services()
    {
        return $this->hasMany(Service::class);
    }

    public function order_infos()
    {
        return $this->morphMany(OrderInfo::class, 'infoable');
    }
}
