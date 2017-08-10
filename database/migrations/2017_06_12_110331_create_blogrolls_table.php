<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBlogrollsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blogrolls', function (Blueprint $table) {
            $table->increments('id')->comment('友情链接ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('Logo图片');
            $table->string('title')->default('')->comment('名称');
            $table->string('url')->default('')->comment('链接地址');
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
        Schema::dropIfExists('blogrolls');
    }
}
