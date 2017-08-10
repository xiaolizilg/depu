<?php

namespace App\Models\Access;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Access\Traits\Attribute\PermissionAttribute;
use App\Models\Access\Traits\Relationship\PermissionRetionship;

class Permission extends Model
{
    use SoftDeletes, PermissionAttribute, PermissionRetionship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
