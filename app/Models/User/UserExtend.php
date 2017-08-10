<?php

namespace App\Models\User;

use Illuminate\Database\Eloquent\Model;
use App\Models\User\Traits\Attribute\UserExtendAttribute;
use App\Models\User\Traits\Relationship\UserExtendRelationship;

class UserExtend extends Model
{
    use UserExtendAttribute, UserExtendRelationship;

    protected $dates = ['deleted_at'];

    protected $guarded  = [];
}
