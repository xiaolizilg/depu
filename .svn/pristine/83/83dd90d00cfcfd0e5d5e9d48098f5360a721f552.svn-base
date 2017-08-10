<?php

namespace App\Models\Order;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Order\Traits\Attribute\RunningAccountAttribute;
use App\Models\Order\Traits\Relationship\RunningAccountRelationship;

class RunningAccount extends Model
{
    use SoftDeletes
    , RunningAccountAttribute
    , RunningAccountRelationship
    ;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
