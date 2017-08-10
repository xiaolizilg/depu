<?php

namespace App\Models\ServiceMember;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\ServiceMember\Traits\Attribute\ServiceMemberAttribute;
use App\Models\ServiceMember\Traits\Relationship\ServiceMemberRelationship;

class ServiceMember extends Model
{
    use SoftDeletes, ServiceMemberAttribute, ServiceMemberRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
