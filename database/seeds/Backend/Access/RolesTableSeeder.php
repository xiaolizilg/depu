<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class RolesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = $updated_at = Carbon::now();
        
        $roles = [
            ['guard' => 1, 'name' => 'admin', 'title' => '管理员', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['guard' => 0, 'name' => 'user', 'title' => '会员', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['guard' => 1, 'name' => 'own_admin', 'title' => '专属客服', 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
        ];

        DB::table('roles')->insert($roles);
    }
}
