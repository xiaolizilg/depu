<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVersionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('versions', function (Blueprint $table) {
            $table->increments('id')->comment('版本ID');
            $table->unsignedInteger('code_id')->default(0)->comment('版本号');
            $table->string('title')->default('')->comment('版本说明');
            $table->string('desc')->default('')->comment('更新描述');
            $table->string('url')->default('')->comment('应用地址');
            $table->tinyInteger('platform')->index()->unsigned()->default(0)->comment('终端');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamp('app_updated_at')->nullable()->comment('更新时间');
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
        Schema::dropIfExists('versions');
    }
}
