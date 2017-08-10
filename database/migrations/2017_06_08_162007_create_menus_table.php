<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMenusTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('menus', function (Blueprint $table) {
            $table->increments('id')->comment('菜单ID');
            $table->unsignedInteger('pid')->index()->default(0)->comment('上级ID');
            $table->string('icon')->default('')->comment('菜单图标');
            $table->string('name', 100)->index()->default('')->comment('菜单名称');
            $table->string('title')->default('')->comment('菜单说明');
            $table->string('desc')->default('')->comment('菜单描述');
            $table->tinyInteger('has_url')->unsigned()->default(0)->comment('是否有链接地址');
            $table->tinyInteger('level')->unsigned()->default(0)->comment('层级');
            $table->tinyInteger('hide')->unsigned()->default(0)->comment('隐藏');
            $table->tinyInteger('is_local')->unsigned()->default(0)->comment('是否本地环境显示');
            $table->smallInteger('sort')->index()->unsigned()->default(0)->comment('排序');
            $table->tinyInteger('is_system')->unsigned()->default(0)->comment('系统菜单');
            $table->tinyInteger('status')->unsigned()->default(0)->comment('数据状态');
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
        Schema::dropIfExists('menus');
    }
}
