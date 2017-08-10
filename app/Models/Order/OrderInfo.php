<?php

namespace App\Models\Order;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Order\Traits\Attribute\OrderInfoAttribute;
use App\Models\Order\Traits\Relationship\OrderInfoRelationship;

class OrderInfo extends Model
{
    use SoftDeletes, OrderInfoAttribute, OrderInfoRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
