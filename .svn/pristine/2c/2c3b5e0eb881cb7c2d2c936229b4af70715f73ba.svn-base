<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRecordsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('records', function (Blueprint $table) {
            $table->increments('id')->comment('档案ID');
            $table->unsignedInteger('user_id')->default(0)->comment('用户ID');
            $table->string('title')->default('')->comment('症状名称');
            $table->string('desc', 1000)->default('')->comment('症状描述');
            $table->string('image_ids')->default('')->comment('症状图片');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->unsignedInteger('started_at')->default(0)->comment('开始时间');
            $table->unsignedInteger('ended_at')->default(0)->comment('结束时间');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('records');
    }
}
