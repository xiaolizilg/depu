<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('projects', function (Blueprint $table) {
            $table->increments('id')->comment('项目ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('项目封面');
            $table->string('title')->default('')->comment('服务名称');
            $table->string('info')->default('')->comment('简介');
            $table->bigInteger('price')->unsigned()->default(0)->comment('费用');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('countries', function (Blueprint $table) {
            $table->increments('id')->comment('国家ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('国家封面');
            $table->unsignedInteger('project_id')->index()->default(0)->comment('项目ID');
            $table->string('title')->default('')->comment('国家名称');
            $table->string('title_en')->default('')->comment('国家英文名称');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('hospitals', function (Blueprint $table) {
            $table->increments('id')->comment('医院ID');
            $table->unsignedInteger('country_id')->index()->default(0)->comment('国家ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('医院封面');
            $table->string('image_ids')->default('')->comment('医院图片');
            $table->string('title')->default('')->comment('医院名称');
            $table->string('desc')->default('')->comment('描述');
            $table->string('info')->default('')->comment('简介');
            $table->string('address_zh')->default('')->comment('中文地址');
            $table->string('address_en')->default('')->comment('英文地址');
            $table->string('baidu_point')->default('')->comment('百度坐标');
            $table->string('google_point')->default('')->comment('谷歌坐标');
            $table->bigInteger('price')->unsigned()->default(0)->comment('费用');
            $table->tinyInteger('success_rate')->unsigned()->default(0)->comment('成功率');
            $table->unsignedInteger('treatment_numbers')->default(0)->comment('就诊数');
            $table->unsignedInteger('department_numbers')->default(0)->comment('科室');
            $table->unsignedInteger('bed_numbers')->default(0)->comment('床位');
            $table->unsignedInteger('comment_starts')->default(0)->comment('评分');
            $table->unsignedInteger('comment_numbers')->default(0)->comment('评论人数');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('doctors', function (Blueprint $table) {
            $table->increments('id')->comment('医生ID');
            $table->unsignedInteger('hospital_id')->index()->default(0)->comment('医院ID');
            $table->unsignedInteger('avatar_id')->index()->default(0)->comment('头像ID');
            $table->unsignedInteger('country_id')->default(0)->comment('国家ID');
            $table->string('real_name')->default('')->comment('姓名');
            $table->string('desc')->default('')->comment('描述');
            $table->string('info')->default('')->comment('简介');
            $table->tinyInteger('success_rate')->unsigned()->default(0)->comment('成功率');
            $table->tinyInteger('exp')->unsigned()->default(0)->comment('从业经验');
            $table->unsignedInteger('comment_starts')->default(0)->comment('评分');
            $table->unsignedInteger('comment_numbers')->default(0)->comment('评论人数');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('services', function (Blueprint $table) {
            $table->increments('id')->comment('服务ID');
            $table->unsignedInteger('icon_id')->default(0)->comment('icon图标');
            $table->string('title')->default('')->comment('服务名称');
            $table->string('desc')->default('')->comment('描述');
            $table->string('info')->default('')->comment('简介');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('service_members', function (Blueprint $table) {
            $table->increments('id')->comment('服务者ID');
            $table->unsignedInteger('hospital_id')->index()->default(0)->comment('医院ID');
            $table->tinyInteger('type')->unsigned()->default(0)->comment('服务类型(0:医疗翻译 1:生活翻译 2:保姆)');
            $table->unsignedInteger('avatar_id')->default(0)->comment('头像');
            $table->unsignedInteger('country_id')->default(0)->comment('国家ID');
            $table->string('real_name')->default('')->comment('姓名');
            $table->string('mobile')->default('')->comment('手机号');
            $table->string('desc')->default('')->comment('描述');
            $table->string('info')->default('')->comment('简介');
            $table->tinyInteger('sex')->unsigned()->default(0)->comment('性别');
            $table->bigInteger('price')->unsigned()->default(0)->comment('费用');
            $table->string('service_content', 1000)->default('')->comment('服务项目');
            $table->unsignedInteger('comment_starts')->default(0)->comment('评分');
            $table->unsignedInteger('comment_numbers')->default(0)->comment('评论人数');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('hotals', function (Blueprint $table) {
            $table->increments('id')->comment('酒店ID');
            $table->unsignedInteger('hospital_id')->index()->default(0)->comment('医院ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('酒店封面');
            $table->string('title')->default('')->comment('酒店名称');
            $table->string('title_en')->default('')->comment('英文名称');
            $table->string('info')->default('')->comment('简介');
            $table->string('mobile')->default('')->comment('手机号');
            $table->string('address_zh')->default('')->comment('中文地址');
            $table->string('address_en')->default('')->comment('英文地址');
            $table->string('baidu_point')->default('')->comment('百度坐标');
            $table->string('google_point')->default('')->comment('谷歌坐标');
            $table->tinyInteger('level')->unsigned()->default(0)->comment('星级');
            $table->bigInteger('price')->unsigned()->default(0)->comment('费用');
            $table->string('image_ids')->default('')->comment('酒店图片');
            $table->unsignedInteger('comment_starts')->default(0)->comment('评分');
            $table->unsignedInteger('comment_numbers')->default(0)->comment('评论人数');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('taxis', function (Blueprint $table) {
            $table->increments('id')->comment('出租车ID');
            $table->unsignedInteger('hospital_id')->index()->default(0)->comment('医院ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('出租车图片');
            $table->unsignedInteger('avatar_id')->default(0)->comment('司机头像');
            $table->string('title')->default('')->comment('出租车名称');
            $table->string('real_name')->default('')->comment('司机姓名');
            $table->string('mobile')->default('')->comment('手机号');
            $table->string('desc')->default('')->comment('描述');
            $table->string('info')->default('')->comment('简介');
            $table->tinyInteger('members')->unsigned()->default(0)->comment('载座');
            $table->bigInteger('price')->unsigned()->default(0)->comment('费用');
            $table->string('image_ids')->default('')->comment('出租车图片');
            $table->unsignedInteger('comment_starts')->default(0)->comment('评分');
            $table->unsignedInteger('comment_numbers')->default(0)->comment('评论人数');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('tourisms', function (Blueprint $table) {
            $table->increments('id')->comment('景区ID');
            $table->unsignedInteger('hospital_id')->index()->default(0)->comment('医院ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('景区图片');
            $table->string('title')->default('')->comment('景区名称');
            $table->string('desc')->default('')->comment('描述');
            $table->string('info')->default('')->comment('特色');
            $table->bigInteger('price')->unsigned()->default(0)->comment('费用');
            $table->unsignedInteger('comment_starts')->default(0)->comment('评分');
            $table->unsignedInteger('comment_numbers')->default(0)->comment('评论人数');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('spots', function (Blueprint $table) {
            $table->increments('id')->comment('景点ID');
            $table->unsignedInteger('tourism_id')->index()->default(0)->comment('景区ID');
            $table->unsignedInteger('cover_id')->default(0)->comment('景点封面');
            $table->string('title')->default('')->comment('景点名称');
            $table->string('info')->default('')->comment('简介');
            $table->string('image_ids')->default('')->comment('景点图片');
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
        Schema::dropIfExists('projects');
        Schema::dropIfExists('countries');
        Schema::dropIfExists('hospitals');
        Schema::dropIfExists('doctors');
        Schema::dropIfExists('services');
        Schema::dropIfExists('service_members');
        Schema::dropIfExists('hotals');
        Schema::dropIfExists('taxis');
        Schema::dropIfExists('tourisms');
        Schema::dropIfExists('spots');
    }
}
