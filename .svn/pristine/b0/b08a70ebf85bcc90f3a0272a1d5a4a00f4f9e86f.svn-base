<?php

namespace App\Models\Ad;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Ad\Traits\Attribute\AdAttribute;
use App\Models\Ad\Traits\Relationship\AdRelationship;

class Ad extends Model
{
    use SoftDeletes, AdAttribute, AdRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
