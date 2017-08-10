<?php

namespace App\Models\Order\Traits\Relationship;

use App\Models\Order\OrderInfo;
use App\Models\Order\RunningAccount;
use App\Models\User\User;
use App\Models\Comment\Comment;
use App\Models\Trip\Trip;

/**
 * Class OrderRelationship.
 */
trait OrderRelationship
{
    public function running_account()
    {
        return $this->hasOne(RunningAccount::class);
    }

    public function order_infos()
    {
        return $this->hasMany(OrderInfo::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function trip()
    {
        return $this->hasOne(Trip::class);
    }

    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }
}
