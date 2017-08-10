<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id')->comment('UID');
            $table->unsignedInteger('avatar_id')->index()->default(0)->comment('头像');
            $table->string('name', 30)->index()->default('')->comment('昵称');
            $table->unsignedInteger('own_admin_id')->index()->default(0)->comment('专属客服');
            $table->tinyInteger('guard')->unsigned()->index()->default(0)->comment('用户类型(0:user 1:admin)');
            $table->tinyInteger('status')->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('user_accounts', function (Blueprint $table) {
            $table->unsignedInteger('user_id')->index()->comment('UID');
            $table->tinyInteger('guard')->unsigned()->index()->default(0)->comment('用户类型(0:user 1:admin)');
            $table->tinyInteger('type')->unsigned()->index()->comment('登录类型');
            $table->string('name', 50)->index()->default('')->comment('账号标识');
            $table->string('password')->default('')->comment('密码凭证');
            $table->string('api_token', 60)->index()->default('')->comment('API票据');
            $table->rememberToken()->comment('自动登录');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('user_infos', function (Blueprint $table) {
            $table->unsignedInteger('user_id')->index()->comment('UID');
            $table->tinyInteger('sex')->unsigned()->default(0)->comment('性别');
            $table->string('real_name')->default('')->comment('真实姓名');
            $table->string('mobile')->default('')->comment('联系方式');
            $table->unsignedInteger('province_id')->default(0)->comment('省');
            $table->unsignedInteger('city_id')->default(0)->comment('市');
            $table->unsignedInteger('area_id')->default(0)->comment('区');
            $table->string('address')->default('')->comment('详细住址');
            $table->string('attendant')->default('')->comment('陪同人');
            $table->string('attendant_mobile')->default('')->comment('陪同人电话');
            $table->string('family')->default('')->comment('紧急联系人');
            $table->string('family_mobile')->default('')->comment('紧急联系人电话');
            $table->string('person_card')->default('')->comment('护照号码');
            $table->unsignedInteger('birthday')->nullable()->comment('生日');
            $table->tinyInteger('hide')->unsigned()->default(0)->comment('隐藏');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('user_extends', function (Blueprint $table) {
            $table->unsignedInteger('user_id')->index()->comment('UID');
            $table->unsignedInteger('last_logined_ip')->index()->default(0)->comment('上次登录IP');
            $table->string('logined_city', 50)->default('')->comment('登录城市');
            $table->timestamp('last_logined_at')->nullable()->comment('上次登录时间');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('user_logs', function (Blueprint $table) {
            $table->increments('id')->comment('日志ID');
            $table->unsignedInteger('user_id')->index()->comment('UID');
            $table->unsignedInteger('action_ip')->index()->default(0)->comment('操作IP');
            $table->string('action_city', 50)->index()->default('')->comment('操作城市');
            $table->string('title')->default('')->comment('操作说明');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('role_user', function (Blueprint $table) {
            $table->unsignedInteger('role_id')->index()->comment('角色ID');
            $table->unsignedInteger('user_id')->index()->comment('权限ID');
        });

        Schema::create('user_auths', function (Blueprint $table) {
            $table->string('name', 50)->index()->comment('账号标识');
            $table->string('token')->comment('认证票据');
            $table->timestamp('created_at')->nullable()->comment('创建时间');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
        Schema::dropIfExists('user_accounts');
        Schema::dropIfExists('user_infos');
        Schema::dropIfExists('user_extends');
        Schema::dropIfExists('user_logs');
        Schema::dropIfExists('role_user');
        Schema::dropIfExists('user_auths');
    }
}
