<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Menus Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines are used in menu items throughout the system.
    | Regardless where it is placed, a menu item can be listed here so it is easily
    | found in a intuitive way.
    |
    */

    'backend' => [
        'admin' => [
            'title' => 'Access Management',

            'roles' => [
                'all'        => 'All Roles',
                'create'     => 'Create Role',
                'edit'       => 'Edit Role',
                'management' => 'Role Management',
                'main'       => 'Roles',
            ],

            'users' => [
                'all'             => 'All Users',
                'change-password' => 'Change Password',
                'create'          => 'Create User',
                'deactivated'     => 'Deactivated Users',
                'deleted'         => 'Deleted Users',
                'edit'            => 'Edit User',
                'main'            => 'Users',
                'view'            => 'View User',
            ],
        ],

        'log-viewer' => [
            'main'      => 'Log Viewer',
            'dashboard' => 'Dashboard',
            'logs'      => 'Logs',
        ],

        'sidebar' => [
            1  => 'DASHBOARD',
            2  => 'ACCOUNT',
            3  => 'ACCESS',
            4  => 'CATEGROY',
            5  => 'LOG',
            6  => 'SYSTEM',
            7  => 'ADMIN',
            8  => 'USER',
            9  => 'ROLE',
            10 => 'PERMISSION',
            11 => 'GROUP',
            12 => 'ACTION LOG',
            13 => 'SYSTEM LOG',
            14 => 'MENU',
        ],
    ],

    'language-picker' => [
        'language' => 'Language',

        'langs' => [
            'zh'    => '中文（Chinese Simplified）',
            'en'    => '英语（English）',
        ],
    ],
];
