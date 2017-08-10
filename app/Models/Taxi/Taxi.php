<?php

namespace App\Models\Taxi;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Taxi\Traits\Attribute\TaxiAttribute;
use App\Models\Taxi\Traits\Relationship\TaxiRelationship;

class Taxi extends Model
{
    use SoftDeletes, TaxiAttribute, TaxiRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
