<?php

namespace App\Models\Access\Traits\Relationship;

use App\Models\User\User;
use App\Models\Access\Permission;

/**
 * Class RoleRelationship.
 */
trait RoleRelationship
{
    public function permissions()
    {
        return $this->belongsToMany(Permission::class, 'permission_role', 'role_id', 'permission_id');
    }

    public function users()
    {
        return $this->belongsToMany(User::class, 'role_user', 'role_id', 'user_id');
    }
}
