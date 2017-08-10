<?php

namespace App\Models\Hotal;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Hotal\Traits\Attribute\HotalAttribute;
use App\Models\Hotal\Traits\Relationship\HotalRelationship;

class Hotal extends Model
{
    use SoftDeletes, HotalAttribute, HotalRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
