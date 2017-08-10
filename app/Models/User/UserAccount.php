<?php

namespace App\Models\User;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use App\Models\User\Traits\Relationship\UserAccountRelationship;

class UserAccount extends Authenticatable
{
    use Notifiable, UserAccountRelationship;

    public $incrementing = false;

    protected $primaryKey = 'user_id';

    protected $guarded  = [];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $dates = ['deleted_at'];
}
