<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

/** @var \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\User\User::class, function (Faker\Generator $faker) {
    return [
        'guard'        => 0,
        'name'         => $faker->name,
        'avatar_id'    => rand(1, 50),
        'own_admin_id' => 1,
        'status'       => 1,
    ];
});

$factory->define(App\Models\User\UserAccount::class, function (Faker\Generator $faker) {
    return [
        'type' => 3,
        'guard' => 0,
        'name' => substr($faker->unique()->e164PhoneNumber, 3),
        'password' => bcrypt('123456'),
        'api_token' => str_random(60),
    ];
});

$factory->define(App\Models\User\UserInfo::class, function (Faker\Generator $faker) {
    return [
        'sex' => rand(0,1),
        'birthday' => 20170601,
    ];
});

$factory->define(App\Models\User\UserExtend::class, function (Faker\Generator $faker) {
    return [];
});

$factory->define(App\Models\Banner\Banner::class, function (Faker\Generator $faker) {
    return [
        'pc_image_id'     => rand(1, 50),
        'mobile_image_id' => rand(1, 50),
        'url'             => $faker->url,
        'status'          => 1,
    ];
});

$factory->define(App\Models\Hospital\Hospital::class, function (Faker\Generator $faker) {
    $number = rand(1, 100);
    $starts = $number * rand(1, 5);

    return [
        'country_id'         => rand(1, 2),
        'cover_id'           => rand(1, 50),
        'image_ids'          => implode(',', range(1, rand(2, 9))),
        'title'              => $faker->sentence,
        'desc'               => $faker->sentence,
        'info'               => $faker->sentence,
        'address_zh'         => '中文地址',
        'address_en'         => '英文地址',
        'baidu_point'        => implode(',', [rand(1, 10), rand(1, 10)]),
        'google_point'       => implode(',', [rand(1, 10), rand(1, 10)]),
        'price'              => rand(1, 10000),
        'success_rate'       => rand(1, 100),
        'treatment_numbers'  => rand(1, 100),
        'department_numbers' => rand(1, 100),
        'bed_numbers'        => rand(1, 100),
        'comment_starts'     => $starts,
        'comment_numbers'    => $number,
        'status'             => 1,
    ];
});

$factory->define(App\Models\Doctor\Doctor::class, function (Faker\Generator $faker) {
    $number = rand(1, 100);
    $starts = $number * rand(1, 5);

    return [
        'hospital_id'     => 1,
        'avatar_id'       => rand(1, 50),
        'country_id'      => rand(1, 2),
        'real_name'       => $faker->name,
        'desc'            => $faker->sentence,
        'info'            => $faker->sentence,
        'success_rate'    => rand(1, 100),
        'exp'             => rand(1, 100),
        'comment_starts'  => $starts,
        'comment_numbers' => $number,
        'status'          => 1,
    ];
});

$factory->define(App\Models\Service\Service::class, function (Faker\Generator $faker) {
    return [
        'icon_id'         => rand(1, 50),
        'title'           => $faker->sentence,
        'desc'            => $faker->sentence,
        'info'            => $faker->sentence,
        'status'          => 1,
    ];
});

$factory->define(App\Models\ServiceMember\ServiceMember::class, function (Faker\Generator $faker) {
    $number = rand(1, 100);
    $starts = $number * rand(1, 5);

    return [
        'hospital_id'     => 1,
        'type'            => rand(0, 2),
        'avatar_id'       => rand(1, 50),
        'country_id'      => rand(1, 2),
        'real_name'       => $faker->name,
        'desc'            => $faker->sentence,
        'info'            => $faker->sentence,
        'sex'             => rand(0, 1),
        'service_content' => $faker->paragraph,
        'price'           => rand(1, 10000),
        'comment_starts'  => $starts,
        'comment_numbers' => $number,
        'status'          => 1,
    ];
});

$factory->define(App\Models\Hotal\Hotal::class, function (Faker\Generator $faker) {
    $number = rand(1, 100);
    $starts = $number * rand(1, 5);

    return [
        'hospital_id'     => 1,
        'cover_id'        => rand(1, 50),
        'title'           => $faker->sentence,
        'title_en'        => $faker->sentence,
        'info'            => $faker->sentence,
        'address_zh'      => '中文地址',
        'address_en'      => '英文地址',
        'baidu_point'     => implode(',', [rand(1, 10), rand(1, 10)]),
        'google_point'    => implode(',', [rand(1, 10), rand(1, 10)]),
        'level'           => rand(0, 1),
        'image_ids'       => implode(',', range(1, rand(2,9))),
        'price'           => rand(1, 10000),
        'comment_starts'  => $starts,
        'comment_numbers' => $number,
        'status'          => 1,
    ];
});

$factory->define(App\Models\Taxi\Taxi::class, function (Faker\Generator $faker) {
    $number = rand(1, 100);
    $starts = $number * rand(1, 5);

    return [
        'hospital_id'     => 1,
        'cover_id'        => rand(1, 50),
        'real_name'       => $faker->name,
        'mobile'          => substr($faker->unique()->e164PhoneNumber, 3),
        'title'           => $faker->sentence,
        'desc'            => $faker->sentence,
        'info'            => $faker->sentence,
        'image_ids'       => implode(',', range(1, rand(2,9))),
        'members'         => rand(1, 4),
        'price'           => rand(1, 10000),
        'comment_starts'  => $starts,
        'comment_numbers' => $number,
        'status'          => 1,
    ];
});

$factory->define(App\Models\Tourism\Tourism::class, function (Faker\Generator $faker) {
    $number = rand(1, 100);
    $starts = $number * rand(1, 5);

    return [
        'hospital_id'     => 1,
        'cover_id'        => rand(1, 50),
        'title'           => $faker->sentence,
        'desc'            => $faker->sentence,
        'info'            => $faker->sentence,
        'price'           => rand(1, 10000),
        'comment_starts'  => $starts,
        'comment_numbers' => $number,
        'status'          => 1,
    ];
});

$factory->define(App\Models\Spot\Spot::class, function (Faker\Generator $faker) {
    return [
        'tourism_id' => 1,
        'cover_id'   => rand(1, 50),
        'title'      => $faker->sentence,
        'info'       => $faker->sentence,
        'image_ids'  => implode(',', range(1, rand(2,9))),
        'status'     => 1,
    ];
});

$factory->define(App\Models\Comment\Comment::class, function (Faker\Generator $faker) {
    return [
        'user_id'          => 1,
        'commentable_id'   => 1,
        'commentable_type' => 'App\Models\Hospital\Hospital',
        'starts'           => rand(1, 5),
        'image_ids'        => implode(',', range(1, rand(2, 9))),
        'content'          => $faker->sentence,
        'status'           => 1,
    ];
});

$factory->define(App\Models\Reply\Reply::class, function (Faker\Generator $faker) {
    return [
        'comment_id' => 1,
        'user_id'    => 1,
        'content'    => $faker->sentence,
        'status'     => 1,
    ];
});

$factory->define(App\Models\Order\Order::class, function (Faker\Generator $faker) {
    return [
        'hospital'    => '美国医院',
        'user_id'     => 1,
        'order_code'  => date('YmdHis') . '0001',
        'desc'        => '描述',
        'total_price' => rand(1, 9999),
        'money'       => rand(1, 9999),
        'status'      => rand(0, 4),
    ];
});

$factory->define(App\Models\Order\OrderInfo::class, function (Faker\Generator $faker) {
    return [
        'order_id'      => 1,
        'infoable_id'   => 1,
        'service_id'    => 1,
        'infoable_type' => 'App\Models\Service\Service',
        'real_name'     => $faker->name,
        'desc'          => $faker->sentence,
        'price'         => rand(1, 9999),
        'status'        => 1,
    ];
});

$factory->define(App\Models\Order\RunningAccount::class, function (Faker\Generator $faker) {
    return [
        'order_code'   => date('YmdHis') . '0001',
        'account'      => 'test',
        'paid_account' => 'test',
        'ip'           => ip2long(request()->ip()),
        'money'        => rand(-9999, 9999),
        'pay_type'     => rand(1, 4),
        'status'       => rand(0, 2),
    ];
});

$factory->define(App\Models\Trip\Trip::class, function (Faker\Generator $faker) {
    return [
        'user_id'    => 1,
        'order_id'   => 1,
        'hospital'   => '美国医院',
        'desc'       => '描述',
        'price'      => 1000,
        'started_at' => \Carbon\Carbon::parse('+1 day'),
        'status'     => rand(1, 2),
    ];
});

$factory->define(App\Models\Trip\TripInfo::class, function (Faker\Generator $faker) {
    return [
        'trip_id'      => 1,
        'cover_id'     => rand(1, 50),
        'desc'         => $faker->sentence,
        'info'         => $faker->sentence,
        'avatar_id'    => rand(1, 50),
        'service_id'    => 1,
        'real_name'    => $faker->name,
        'mobile'       => substr($faker->unique()->e164PhoneNumber, 3),
        'address_zh'   => '中文地址',
        'address_en'   => '英文地址',
        'baidu_point'  => implode(',', [rand(1, 10), rand(1, 10)]),
        'google_point' => implode(',', [rand(1, 10), rand(1, 10)]),
        'image_ids'    => implode(',', range(1, rand(2, 9))),
        'started_at'   => \Carbon\Carbon::parse('+1 day'),
        'type'         => 1,
        'status'       => rand(1, 2),
    ];
});

$factory->define(App\Models\Record\Record::class, function (Faker\Generator $faker) {
    return [
        'user_id'    => 1,
        'title'      => $faker->sentence,
        'desc'       => $faker->sentence,
        'image_ids'  => implode(',', range(1, rand(2, 9))),
        'started_at' => \Carbon\Carbon::parse('+1 day')->format('Ymd'),
        'ended_at'   => \Carbon\Carbon::parse('+2 day')->format('Ymd'),
        'status'     => 1,
    ];
});

$factory->define(App\Models\Pusher\Pusher::class, function (Faker\Generator $faker) {
    return [
        'user_id' => 1,
        'event'   => 1,
        'role_id' => 0,
        'role'    => rand(0, 2),
        'title'   => $faker->sentence,
        'content' => $faker->sentence,
        'status'  => 1,
    ];
});

$factory->define(App\Models\Version\Version::class, function (Faker\Generator $faker) {
    return [
        'code_id'  => 1,
        'title'    => 'ver ' . 1,
        'desc'     => $faker->sentence,
        'url'      => $faker->url,
        'platform' => 0,
        'app_updated_at' => \Carbon\Carbon::parse('+1 day'),
        'status'   => 1,
    ];
});

$factory->define(App\Models\News\News::class, function (Faker\Generator $faker) {
    return [
        'cover_id'     => rand(1, 50),
        'title'        => $faker->sentence,
        'desc'         => $faker->sentence,
        'is_hot'       => rand(0, 1),
        'published_at' => \Carbon\Carbon::now(),
        'content'      => implode('<br/>', $faker->paragraphs),
        'status'       => 1,
    ];
});

$factory->define(App\Models\Blogroll\Blogroll::class, function (Faker\Generator $faker) {
    return [
        'cover_id' => rand(1, 50),
        'title'    => $faker->word,
        'url'      => $faker->url,
        'status'   => 1,
    ];
});

$factory->define(App\Models\Complaint\Complaint::class, function (Faker\Generator $faker) {
    return [
        'user_id' => 1,
        'type'    => rand(0, 1),
        'mobile'  => substr($faker->unique()->e164PhoneNumber, 3),
        'content' => $faker->sentence,
        'status'   => 1,
    ];
});
