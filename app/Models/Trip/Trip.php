<?php

namespace App\Models\Trip;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Trip\Traits\Attribute\TripAttribute;
use App\Models\Trip\Traits\Relationship\TripRelationship;

class Trip extends Model
{
    use SoftDeletes, TripAttribute, TripRelationship;

    protected $guarded  = [];

    protected $dates = ['started_at', 'deleted_at'];
}
