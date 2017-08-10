<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class ProjectSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = $updated_at = Carbon::now();
        
        $projects = [
            ['title' => '试管婴儿', 'cover_id' => rand(1, 50), 'info' => '试管婴儿', 'price' => 1000101, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
        ];

        DB::table('projects')->insert($projects);
    }
}
