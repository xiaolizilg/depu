<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class CountriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = $updated_at = Carbon::now();
        
        $countries = [
            ['title' => '中国', 'cover_id' => rand(1, 50), 'title_en' => 'China', 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['title' => '美国', 'cover_id' => rand(1, 50), 'title_en' => 'America', 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
        ];

        DB::table('countries')->insert($countries);
    }
}
