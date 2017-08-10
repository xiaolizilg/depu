<?php

namespace App\Models\Access;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Access\Traits\Attribute\GroupAttribute;

class Group extends Model
{
    use SoftDeletes, GroupAttribute;

    protected $table = 'permission_groups';

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
