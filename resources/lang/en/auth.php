<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Authentication Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines are used during authentication for various
    | messages that we need to display to the user. You are free to modify
    | these language lines according to your application's requirements.
    |
    */

    'failed'        => 'These credentials do not match our records.',
    'general_error' => 'You do not have access to do that.',
    'socialite'     => [
        'unacceptable' => ':provider is not an acceptable login type.',
    ],
    'throttle' => 'Too many login attempts. Please try again in :seconds seconds.',
    'unknown'  => 'An unknown error occurred',

    'disabled' => 'Your account has been disabled.',
    'login' => [
        'success' => 'You are safely logged in. Welcome back!:name'
    ],
    'logout' => [
        'success' => 'You have exited safely. Welcome come again!'
    ],

    'account_types' => [
        1   => [
            'name' => 'username',
            'title' => 'Name Account',
            'icon' => '<i class="fa fa-user fa-lg text-danger fa-fw"></i>',
        ],
        2   => [
            'name' => 'email',
            'title' => 'Email Account',
            'icon' => '<i class="fa fa-envelope fa-lg text-danger fa-fw"></i>',
        ],
        3   => [
            'name' => 'mobile',
            'title' => 'Mobile Account',
            'icon' => '<i class="fa fa-mobile fa-lg text-danger fa-fw"></i>',
        ],
        4   => [
            'name' => 'qq',
            'title' => 'QQ Account',
            'icon' => '<i class="fa fa-qq fa-lg text-danger fa-fw"></i>',
        ],
        5   => [
            'name' => 'weixin',
            'title' => 'WeChat Account',
            'icon' => '<i class="fa fa-weixin fa-lg text-danger fa-fw"></i>',
        ],
        6   => [
            'name' => 'weibo',
            'title' => 'Weibo Account',
            'icon' => '<i class="fa fa-weibo fa-lg text-danger fa-fw"></i>',
        ],
        7   => [
            'name' => 'facebook',
            'title' => 'Facebook Account',
            'icon' => '<i class="fa fa-facebook fa-lg text-danger fa-fw"></i>',
        ],
        8   => [
            'name' => 'twitter',
            'title' => 'Twitter Account',
            'icon' => '<i class="fa fa-twitter fa-lg text-danger fa-fw"></i>',
        ],
        9   => [
            'name' => 'google',
            'title' => 'Google Account',
            'icon' => '<i class="fa fa-google-plus fa-lg text-danger fa-fw"></i>',
        ],
        10   => [
            'name' => 'github',
            'title' => 'Github Account',
            'icon' => '<i class="fa fa-github-alt fa-lg text-danger fa-fw"></i>',
        ],
        11   => [
            'name' => 'linkedin',
            'title' => 'LinkedIn Account',
            'icon' => '<i class="fa fa-linkedin fa-lg text-danger fa-fw"></i>',
        ],
        12   => [
            'name' => 'bitbucket',
            'title' => 'Bitbucket Account',
            'icon' => '<i class="fa fa-bitbucket fa-lg text-danger fa-fw"></i>',
        ],
    ],
];
