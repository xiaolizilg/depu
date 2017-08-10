<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCommentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('comments', function (Blueprint $table) {
            $table->increments('id')->comment('评论ID');
            $table->unsignedInteger('user_id')->index()->default(0)->comment('评论用户ID');
            $table->unsignedInteger('trip_id')->default(0)->comment('行程ID');
            $table->unsignedInteger('commentable_id')->default(0)->comment('被评论模型ID');
            $table->string('commentable_type')->default('')->comment('被评论模型');
            $table->tinyInteger('starts')->unsigned()->default(0)->comment('评分');
            $table->string('image_ids')->default('')->comment('评论图片ID');
            $table->string('content', 1000)->default('')->comment('评论内容');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('replies', function (Blueprint $table) {
            $table->unsignedInteger('comment_id')->index()->default(0)->comment('评论ID');
            $table->unsignedInteger('user_id')->index()->default(0)->comment('回复用户ID');
            $table->string('content', 1000)->default('')->comment('评论内容');
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
        Schema::dropIfExists('comments');
        Schema::dropIfExists('replies');
    }
}
