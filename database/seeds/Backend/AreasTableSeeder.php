<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class AreasTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $areas = collect(json_decode(file_get_contents(storage_path('app/areas/seeder.json')), true))
            ->map(function($item){
                $item['status'] = 1;
                $item['created_at'] = Carbon::now();
                $item['updated_at'] = Carbon::now();

                return $item;
            })->toArray();

        DB::table('areas')->insert($areas);
    }
}
