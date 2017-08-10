<?php

namespace App\Models\Trip;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Trip\Traits\Attribute\TripInfoAttribute;
use App\Models\Trip\Traits\Relationship\TripInfoRelationship;

class TripInfo extends Model
{
    use SoftDeletes, TripInfoAttribute, TripInfoRelationship;

    protected $guarded  = [];

    protected $dates = ['started_at', 'deleted_at'];
}
