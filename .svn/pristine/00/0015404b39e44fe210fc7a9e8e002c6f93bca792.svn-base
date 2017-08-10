<?php

namespace App\Models\Complaint;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Complaint\Traits\Attribute\ComplaintAttribute;
use App\Models\Complaint\Traits\Relationship\ComplaintRelationship;

class Complaint extends Model
{
    use SoftDeletes, ComplaintAttribute, ComplaintRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
