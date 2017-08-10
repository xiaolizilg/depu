<?php

namespace App\Models\Pusher;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Pusher\Traits\Attribute\PusherAttribute;
use App\Models\Pusher\Traits\Relationship\PusherRelationship;

class Pusher extends Model
{
    use SoftDeletes, PusherAttribute, PusherRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
