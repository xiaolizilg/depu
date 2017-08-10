<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class AgreementSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = $updated_at = Carbon::now();
        
        $agreements = [
            ['content' => '这是支持富文本的协议内容。', 'created_at' => $created_at, 'updated_at' => $updated_at],
        ];

        DB::table('agreements')->insert($agreements);
    }
}
