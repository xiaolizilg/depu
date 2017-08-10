<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTripsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('trips', function (Blueprint $table) {
            $table->increments('id')->comment('行程ID');
            $table->unsignedInteger('user_id')->index()->default(0)->comment('用户ID');
            $table->unsignedInteger('order_id')->index()->default(0)->comment('订单ID');
            $table->string('hospital')->default('')->comment('医院');
            $table->string('desc')->default('')->comment('描述');
            $table->integer('price')->unsigned()->default(0)->comment('服务费');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态(1:已确认 2:未确认)');
            $table->softDeletes()->comment('假删除');
            $table->timestamp('started_at')->nullable()->comment('开始时间');
            $table->timestamps();
        });

        Schema::create('trip_infos', function (Blueprint $table) {
            $table->increments('id')->comment('行程信息ID');
            $table->unsignedInteger('trip_id')->index()->default(0)->comment('行程ID');
            $table->unsignedInteger('service_id')->index()->default(0)->comment('服务ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('行程封面(客服填写)');
            $table->string('title')->default('')->comment('标题');
            $table->string('desc')->default('')->comment('描述(客服填写)');
            $table->string('info')->default('')->comment('简介(客服填写)');
            $table->unsignedInteger('avatar_id')->default(0)->comment('服务人员头像');
            $table->string('real_name')->default('')->comment('服务人员姓名');
            $table->string('mobile')->default('')->comment('服务人员电话');
            $table->tinyInteger('sex')->unsigned()->default(0)->comment('服务人员性别');
            $table->string('country')->default('')->comment('服务人员国家');
            $table->string('address_zh')->default('')->comment('中文地址');
            $table->string('address_en')->default('')->comment('英文地址');
            $table->string('baidu_point')->default('')->comment('百度坐标');
            $table->string('google_point')->default('')->comment('谷歌坐标');
            $table->string('image_ids')->default('')->comment('行程图片(客服填写)');
            $table->unsignedInteger('type')->default(0)->comment('行程类型(0:国内体检 1:行程准备 2:保姆 3:接机服务 4:入住酒店 5:前往医院 6:医生体检 7:促排期间 8:取卵取精 9:培植胚胎 10:游玩 11:胚胎移植 12:验孕 13:回国)');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态(1:已确认 2:未确认)');
            $table->softDeletes()->comment('假删除');
            $table->timestamp('started_at')->nullable()->comment('开始时间');
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
        Schema::dropIfExists('trips');
        Schema::dropIfExists('trip_infos');
    }
}
