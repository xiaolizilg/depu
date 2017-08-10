<?php

namespace App\Models\Reply;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Reply\Traits\Attribute\ReplyAttribute;
use App\Models\Reply\Traits\Relationship\ReplyRelationship;

class Reply extends Model
{
    use SoftDeletes, ReplyAttribute, ReplyRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
