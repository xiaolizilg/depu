<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateNewsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('news', function (Blueprint $table) {
            $table->increments('id')->comment('资讯ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('封面图');
            $table->string('title')->default('')->comment('标题');
            $table->string('desc')->default('')->comment('描述');
            $table->text('content')->nullable()->comment('内容');
            $table->tinyInteger('is_hot')->index()->unsigned()->default(0)->comment('热门资讯');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamp('published_at')->nullable()->comment('发布时间');
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
        Schema::dropIfExists('news');
    }
}
