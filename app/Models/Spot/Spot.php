<?php

namespace App\Models\Spot;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Spot\Traits\Attribute\SpotAttribute;
use App\Models\Spot\Traits\Relationship\SpotRelationship;

class Spot extends Model
{
    use SoftDeletes, SpotAttribute, SpotRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
