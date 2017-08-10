<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class ServicesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = $updated_at = Carbon::now();
        
        $services = [
            ['icon_id' => 1, 'icon_id' => rand(1, 50), 'title' => '医疗翻译', 'desc' => '服务描述', 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['icon_id' => 1, 'icon_id' => rand(1, 50), 'title' => '生活翻译', 'desc' => '服务描述', 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['icon_id' => 1, 'icon_id' => rand(1, 50), 'title' => '保姆', 'desc' => '服务描述', 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['icon_id' => 1, 'icon_id' => rand(1, 50), 'title' => '酒店', 'desc' => '服务描述', 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['icon_id' => 1, 'icon_id' => rand(1, 50), 'title' => '接机服务', 'desc' => '服务描述', 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['icon_id' => 1, 'icon_id' => rand(1, 50), 'title' => '游玩', 'desc' => '服务描述', 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at]
        ];

        DB::table('services')->insert($services);
    }
}
