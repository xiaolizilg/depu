<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class GrousTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = $updated_at = Carbon::now();
        
        $groups = [
            ['name' => 'default', 'title' => '默认分组', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['name' => 'account', 'title' => '用户', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['name' => 'access', 'title' => '权限', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['name' => 'categories', 'title' => '分类', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['name' => 'log', 'title' => '日志', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['name' => 'menus', 'title' => '菜单', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
        ];

        DB::table('permission_groups')->insert($groups);
    }
}
