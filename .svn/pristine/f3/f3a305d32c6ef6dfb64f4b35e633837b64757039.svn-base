<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->increments('id')->comment('订单ID');
            $table->unsignedInteger('user_id')->index()->default(0)->comment('用户ID');
            $table->string('hospital')->default('')->comment('医院名称');
            $table->string('desc')->default('')->comment('描述');
            $table->integer('total_price')->unsigned()->default(0)->comment('总费用');
            $table->string('order_code')->default('')->comment('订单号');
            $table->integer('money')->unsigned()->default(0)->comment('服务费');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态(0:已关闭 1:已完成 2:已付款 3:已下单 4:已退款 5:申请退款)');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('order_infos', function (Blueprint $table) {
            $table->increments('id')->comment('详情ID');
            $table->unsignedInteger('order_id')->index()->default(0)->comment('订单ID');
            $table->unsignedInteger('infoable_id')->default(0)->comment('服务ID');
            $table->string('infoable_type')->default('')->comment('服务模型');
            $table->unsignedInteger('service_id')->default(0)->comment('具体服务ID');
            $table->string('real_name')->default('')->comment('姓名');
            $table->string('desc')->default('')->comment('描述');
            $table->integer('price')->unsigned()->default(0)->comment('费用');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态');
            $table->softDeletes()->comment('假删除');
            $table->timestamps();
        });

        Schema::create('running_accounts', function (Blueprint $table) {
            $table->increments('id')->comment('流水ID');
            $table->unsignedInteger('order_id')->index()->default(0)->comment('订单ID');
            $table->string('order_code')->default('')->comment('订单号');
            $table->string('account')->default('')->comment('账号');
            $table->string('paid_account')->default('')->comment('支付账号');
            $table->unsignedInteger('ip')->default(0)->comment('IP地址');
            $table->integer('money')->default(0)->comment('金额');
            $table->tinyInteger('pay_type')->unsigned()->default(0)->comment('支付方式(1:支付宝 2:微信 3:银联 4:线下)');
            $table->tinyInteger('status')->index()->unsigned()->default(0)->comment('数据状态(0:已关闭 1:已完成 2: 已支付 3: 未支付)');
            $table->softDeletes()->comment('假删除');
            $table->unsignedInteger('paid_at')->default(0)->comment('支付时间');
            $table->unsignedInteger('ended_at')->default(0)->comment('结束时间');
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
        Schema::dropIfExists('orders');
        Schema::dropIfExists('order_infos');
        Schema::dropIfExists('running_accounts');
    }
}
