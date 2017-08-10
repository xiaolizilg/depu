<?php

namespace App\Models\Access\Traits\Relationship;

use App\Models\Access\Role;

/**
 * Class PermissionRetionship.
 */
trait PermissionRetionship
{
    public function roles()
    {
        return $this->belongsToMany(Role::class, 'permission_role', 'permission_id', 'role_id');
    }
}
