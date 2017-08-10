<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAdsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ads', function (Blueprint $table) {
            $table->increments('id')->comment('资讯ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('封面图');
            $table->string('title')->default('')->comment('标题');
            $table->string('url')->default('')->comment('链接');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
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
        Schema::dropIfExists('ads');
    }
}
