<?php

namespace App\Models\Hospital;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Hospital\Traits\Attribute\HospitalAttribute;
use App\Models\Hospital\Traits\Relationship\HospitalRelationship;

class Hospital extends Model
{
    use SoftDeletes, HospitalAttribute, HospitalRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
