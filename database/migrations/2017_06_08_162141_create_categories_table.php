<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->increments('id')->comment('分类ID');
            $table->unsignedInteger('pid')->index()->default(0)->comment('上级ID');
            $table->unsignedInteger('icon_id')->default(0)->comment('分类图标ID');
            $table->string('name', 20)->index()->default('')->comment('分类名称');
            $table->string('title')->default('')->comment('分类说明');
            $table->string('desc')->default('')->comment('分类描述');
            $table->string('model', 100)->index()->default('')->comment('绑定模型');
            $table->tinyInteger('level')->unsigned()->default(0)->comment('层级');
            $table->tinyInteger('hide')->unsigned()->default(0)->comment('隐藏');
            $table->smallInteger('sort')->index()->unsigned()->default(0)->comment('排序');
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
        Schema::dropIfExists('categories');
    }
}
