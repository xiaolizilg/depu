<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Exception Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines are used in Exceptions thrown throughout the system.
    | Regardless where it is placed, a button can be listed here so it is easily
    | found in a intuitive way.
    |
    */

    'backend' => [
        'already_exists'         => 'already exists.',
        'cant_restore'           => 'This data is not deleted so it can not be restored.',
        'create_error'           => 'There was a problem creating this data. Please try again.',
        'delete_error'           => 'There was a problem deleting this data. Please try again.',
        'delete_first'           => 'his data must be deleted first before it can be destroyed permanently.',
        'mark_error'             => 'There was a problem updating this data. Please try again.',
        'not_found'              => 'That data does not exist.',
        'restore_error'          => 'There was a problem restoring this data. Please try again.',
        'update_error'           => 'There was a problem updating this data. Please try again.',
        
        'user_has_roles'         => 'You can not delete a user with associated roles.',
        'has_users'              => 'You can not delete a role with associated users.',
        'has_permissions'        => 'You can not delete a role with associated permissions.',
        'has_roles'              => 'You can not delete a permission with associated roles.',
        'set_empty_role'         => 'You can not set a role with emptied users.',
        'unset_empty_role'       => 'You can not unset a non-existent role for user.',
        'set_empty_permission'   => 'You can not set a role with emptied permissions.',
        'unset_empty_permission' => 'You can not unset a non-existent permission for role.',
        'cant_deactivate_self'   => 'You can not do that to yourself.',
        'cant_deactivate_system' => 'You can not do that to system.',
        'cant_delete_admin'      => 'You can not delete the Administrator role.',
        'cant_delete_self'       => 'You can not delete yourself.',
        'cant_delete_system'     => 'You can not delete system.',
        'update_password_error'  => 'There was a problem changing this users password. Please try again.',
    ],

    'frontend' => [
    ],
];
