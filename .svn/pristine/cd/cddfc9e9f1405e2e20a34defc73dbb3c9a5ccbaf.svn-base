<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\User\Traits\Attribute\UserAttribute;
use App\Models\User\Traits\Relationship\UserRelationship;

class User extends Model
{
    use SoftDeletes, UserAttribute, UserRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
