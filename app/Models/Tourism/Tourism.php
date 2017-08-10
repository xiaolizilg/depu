<?php

namespace App\Models\Tourism;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Tourism\Traits\Attribute\TourismAttribute;
use App\Models\Tourism\Traits\Relationship\TourismRelationship;

class Tourism extends Model
{
    use SoftDeletes, TourismAttribute, TourismRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
