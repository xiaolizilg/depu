<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Model;
use App\Models\User\Traits\Attribute\UserInfoAttribute;
use App\Models\User\Traits\Relationship\UserInfoRelationship;

class UserInfo extends Model
{
    use UserInfoAttribute, UserInfoRelationship;

    protected $dates = ['deleted_at'];

    protected $guarded  = [];
}
