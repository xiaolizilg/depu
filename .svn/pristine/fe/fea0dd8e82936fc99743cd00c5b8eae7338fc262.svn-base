<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class SuperAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::transaction(function () {
            DB::table('users')->insert([
                    'avatar_id' => 0,
                    'name' => '欧尼',
                    'guard' => 1,
                    'status' => 1,
                    'created_at' => Carbon::now(),
                    'updated_at' => Carbon::now(),
                ]);

            DB::table('user_accounts')->insert([
                'user_id' => 1,
                'guard' => 1,
                'type' => 1,
                'name' => 'wosjohn',
                'password' => bcrypt('123456'),
                'api_token' => str_random(60),
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);

            DB::table('user_accounts')->insert([
                'user_id' => 1,
                'guard' => 1,
                'type' => 2,
                'name' => 'wosjohn@foxmail.com',
                'password' => bcrypt('123456'),
                'api_token' => str_random(60),
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);

            DB::table('user_accounts')->insert([
                'user_id' => 1,
                'guard' => 1,
                'type' => 3,
                'name' => '17612888261',
                'password' => bcrypt('123456'),
                'api_token' => str_random(60),
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);

            DB::table('user_infos')->insert([
                'user_id'    => 1,
                'sex'        => 1,
                'birthday'   => Carbon::parse('1989-10-01')->format('Ymd'),
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);

            DB::table('user_extends')->insert([
                'user_id' => 1,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ]);

            DB::table('role_user')->insert([
                'user_id' => 1,
                'role_id' => 3,
            ]);
        });
    }
}
