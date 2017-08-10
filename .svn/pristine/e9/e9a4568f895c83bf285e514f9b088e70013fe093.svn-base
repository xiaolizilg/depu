<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('logs', function (Blueprint $table) {
            $table->increments('id')->comment('日志ID');
            $table->unsignedInteger('user_id')->default(0)->comment('用户ID');
            $table->string('account')->default('')->comment('账号');
            $table->string('module')->default('')->comment('操作板块');
            $table->tinyInteger('type')->unsigned()->default(0)->comment('操作类型');
            $table->unsignedInteger('ip')->default(0)->comment('操作IP地址');
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
        Schema::dropIfExists('logs');
    }
}
