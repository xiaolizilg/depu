<?php

namespace App\Models\Comment;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Comment\Traits\Attribute\CommentAttribute;
use App\Models\Comment\Traits\Relationship\CommentRelationship;

class Comment extends Model
{
    use SoftDeletes, CommentAttribute, CommentRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
