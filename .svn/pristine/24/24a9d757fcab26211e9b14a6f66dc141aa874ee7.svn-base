<?php

namespace App\Models\Comment\Traits\Relationship;

use App\Models\Reply\Reply;
use App\Models\User\User;

/**
 * Class CommentRelationship.
 */
trait CommentRelationship
{
    public function commentable()
    {
        return $this->morphTo();
    }

    public function replies()
    {
        return $this->hasMany(Reply::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
