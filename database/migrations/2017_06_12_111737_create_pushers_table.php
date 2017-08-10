<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePushersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pushers', function (Blueprint $table) {
            $table->increments('id')->comment('推送ID');
            $table->unsignedInteger('user_id')->default(0)->comment('推送者UID');
            $table->tinyInteger('event')->default(0)->comment('推送事件');
            $table->unsignedInteger('role_id')->default(0)->comment('推送对象ID');
            $table->tinyInteger('role')->default(0)->comment('推送对象(0:全站用户 1:ios 2:安卓 3:某角色组 4:某个用户)');
            $table->string('title')->default('')->comment('推送说明');
            $table->string('content')->default('')->comment('推送内容');
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
        Schema::dropIfExists('pushers');
    }
}
