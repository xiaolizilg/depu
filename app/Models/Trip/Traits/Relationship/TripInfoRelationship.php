<?php

namespace App\Models\Trip\Traits\Relationship;

use App\Models\Comment\Comment;
use App\Models\Tourism\Tourism;
use App\Models\Trip\Trip;
use App\Models\Complaint\Complaint;

/**
 * Class TripInfoRelationship.
 */
trait TripInfoRelationship
{
    public function tourism()
    {
        return $this->belongsTo(Tourism::class, 'service_id', 'id');
    }

    public function trip()
    {
        return $this->belongsTo(Trip::class, 'trip_id', 'id');
    }

    public function complaints()
    {
        return $this->hasMany(Complaint::class, 'trip_info_id', 'id');
    }

}
