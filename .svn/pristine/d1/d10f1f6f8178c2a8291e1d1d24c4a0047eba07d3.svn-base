<?php

namespace App\Models\Doctor;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Doctor\Traits\Attribute\DoctorAttribute;
use App\Models\Doctor\Traits\Relationship\DoctorRelationship;

class Doctor extends Model
{
    use SoftDeletes, DoctorAttribute, DoctorRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
