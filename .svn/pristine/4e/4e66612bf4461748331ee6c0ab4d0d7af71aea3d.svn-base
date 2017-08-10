<?php

namespace App\Models\Image\Traits\Relationship;

use App\Models\Comment\Comment;

/**
 * Class ImageRelationship.
 */
trait ImageRelationship
{
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }
}
