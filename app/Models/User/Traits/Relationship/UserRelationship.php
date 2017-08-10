<?php

namespace App\Models\User\Traits\Relationship;

use App\Models\User\User;
use App\Models\User\UserAccount;
use App\Models\User\UserInfo;
use App\Models\User\UserExtend;
use App\Models\Access\Role;
use App\Models\Order\Order;
use App\Models\Trip\Trip;
use App\Models\Record\Record;
use App\Models\Complaint\Complaint;
use App\Models\Comment\Comment;

/**
 * Class UserRelationship.
 */
trait UserRelationship
{
    public function accounts()
    {
        return $this->hasMany(UserAccount::class, 'user_id', 'id');
    }

    public function info()
    {
        return $this->hasOne(UserInfo::class, 'user_id', 'id');
    }

    public function own_admin()
    {
        return $this->belongsTo(User::class, 'own_admin_id', 'id');
    }

    public function own_users()
    {
        return $this->hasMany(User::class, 'own_admin_id', 'id');
    }

    public function extend()
    {
        return $this->hasOne(UserExtend::class, 'user_id', 'id');
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class, 'role_user', 'user_id', 'role_id');
    }

    public function orders()
    {
        return $this->hasMany(Order::class, 'user_id', 'id');
    }

    public function trips()
    {
        return $this->hasMany(Trip::class, 'user_id', 'id');
    }

    public function records()
    {
        return $this->hasMany(Record::class, 'user_id', 'id');
    }

    public function complaints()
    {
        return $this->hasMany(Complaint::class, 'user_id', 'id');
    }

    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function owner_comments()
    {
        return $this->hasManyThrough(Comment::class, User::class, 'own_admin_id', 'user_id', 'id');
    }
}
