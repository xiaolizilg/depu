<?php

namespace App\Models\Order;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Order\Traits\Attribute\OrderAttribute;
use App\Models\Order\Traits\Relationship\OrderRelationship;

class Order extends Model
{
    use SoftDeletes, OrderAttribute, OrderRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
