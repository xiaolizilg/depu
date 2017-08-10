<?php

namespace App\Models\Access;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Access\Traits\Attribute\RoleAttribute;
use App\Models\Access\Traits\Relationship\RoleRelationship;

class Role extends Model
{
    use SoftDeletes, RoleAttribute, RoleRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
