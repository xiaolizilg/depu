<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Strings Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines are used in strings throughout the system.
    | Regardless where it is placed, a string can be listed here so it is easily
    | found in a intuitive way.
    |
    */

    'subffix_name' => '管理后台',

    'users' => [
        'delete_user_confirm'  => '您确定要永久删除此用户吗？引用此用户ID的应用程序中的任何地方都很可能是错误。继续自行承担风险。这不能被撤消。',
        'if_confirmed_off'     => '(已确认则无效)',
        'restore_user_confirm' => '将此用户恢复到其原始状态？',
    ],

    'dashboard' => [
        'title'   => '管理后台',
        'welcome' => '欢迎',
    ],

    'general' => [
        'all_rights_reserved' => '保留所有权利。',
        'are_you_sure'        => '你确定这样做吗？',
        'boilerplate_link'    => 'Laravel 5 Boilerplate',
        'continue'            => '继续',
        'member_since'        => '会员自',
        'minutes'             => ' 分钟',
        'search_placeholder'  => '搜索...',
        'timeout'             => '出于安全原因已自动注销，因为你没有操作超过 ',
        'notice'              => '通知',

        'see_all' => [
            'messages'      => '查看所有消息',
            'notifications' => '查看所有提醒',
            'tasks'         => '查看所有任务',
        ],

        'status' => [
            'online'  => '在线',
            'offline' => '离线',
        ],

        'you_have' => [
            'messages'      => '{0} 你没有消息|{1} 你有 1 条消息|[2,Inf] 你有 :number 条消息',
            'notifications' => '{0} 你没有提醒|{1} 你有 1 条提醒|[2,Inf] 你有 :number 条提醒',
            'tasks'         => '{0} 你没有任务|{1} 你有 1 个任务|[2,Inf] 你有 :number 个任务',
        ],
    ],

    'search' => [
        'empty'      => '请输入搜索关键词。',
        'incomplete' => '您必须为此系统编写您自己的搜索逻辑。',
        'title'      => '搜索结果',
        'results'    => '搜索 :query 的结果',
    ],

];
