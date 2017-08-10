<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePicturesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pictures', function (Blueprint $table) {
            $table->increments('id')->comment('照片ID');
            $table->unsignedInteger('image_id')->default(0)->comment('图片ID');
            $table->unsignedInteger('pictureable_id')->default(0)->comment('照片模型ID');
            $table->string('pictureable_type')->default('')->comment('照片模型');
            $table->string('title')->default('')->comment('照片名称');
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
        Schema::dropIfExists('pictures');
    }
}
