<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAccessesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('permissions', function (Blueprint $table) {
            $table->increments('id')->comment('权限ID');
            $table->unsignedInteger('group_id')->index()->default(0)->comment('权限分组ID');
            $table->string('name', 100)->index()->default('')->comment('权限名称');
            $table->string('title')->default('')->comment('权限说明');
            $table->tinyInteger('is_system')->unsigned()->default(0)->comment('系统权限');
            $table->tinyInteger('status')->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('permission_groups', function (Blueprint $table) {
            $table->increments('id')->comment('分组ID');
            $table->string('name', 20)->index()->default('')->comment('分组名称');
            $table->string('title')->default('')->comment('分组说明');
            $table->tinyInteger('is_system')->unsigned()->default(0)->comment('系统分组');
            $table->tinyInteger('status')->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });
                                               
        Schema::create('roles', function (Blueprint $table) {
            $table->increments('id')->comment('角色ID');
            $table->tinyInteger('guard')->unsigned()->default(0)->comment('用户类型(0:user 1:admin)');
            $table->string('name', 20)->index()->default('')->comment('角色名称');
            $table->string('title')->default('')->comment('角色说明');
            $table->tinyInteger('is_system')->unsigned()->default(0)->comment('系统角色');
            $table->tinyInteger('status')->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('permission_role', function (Blueprint $table) {
            $table->unsignedInteger('permission_id')->index()->comment('权限ID');
            $table->unsignedInteger('role_id')->index()->comment('角色ID');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('permissions');
        Schema::dropIfExists('permission_groups');
        Schema::dropIfExists('roles');
        Schema::dropIfExists('permission_role');
    }
}
