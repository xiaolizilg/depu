<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateComplaintsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('complaints', function (Blueprint $table) {
            $table->increments('id')->comment('投诉ID');
            $table->unsignedInteger('user_id')->default(0)->comment('投诉用户ID');
            $table->unsignedInteger('comment_id')->default(0)->comment('回复专员ID');
            $table->unsignedInteger('trip_info_id')->default(0)->comment('行程细节ID');
            $table->tinyInteger('type')->default(0)->comment('投诉类型(0:投诉APP 1:投诉行程)');
            $table->string('mobile')->default('')->comment('手机号');
            $table->string('content', 1000)->default('')->comment('投诉内容');
            $table->string('comment', 1000)->default('')->comment('回复内容');
            $table->string('image_ids')->default('')->comment('投诉图片ID');
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
        Schema::dropIfExists('complaints');
        Schema::dropIfExists('');
    }
}
