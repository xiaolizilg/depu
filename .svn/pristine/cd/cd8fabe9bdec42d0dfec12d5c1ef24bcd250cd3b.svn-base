<?php

namespace App\Models\Hospital\Traits\Relationship;

use App\Models\Comment\Comment;
use App\Models\Picture\Picture;
use App\Models\Hotal\Hotal;
use App\Models\Doctor\Doctor;
use App\Models\Taxi\Taxi;
use App\Models\Tourism\Tourism;
use App\Models\ServiceMember\ServiceMember;
use App\Models\Order\OrderInfo;

/**
 * Class HospitalRelationship.
 */
trait HospitalRelationship
{
    public function comments()
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function pictures()
    {
        return $this->morphMany(Picture::class, 'pictureable');
    }

    public function tourisms()
    {
        return $this->hasMany(Tourism::class);
    }

    public function doctors()
    {
        return $this->hasMany(Doctor::class);
    }

    public function hotals()
    {
        return $this->hasMany(Hotal::class);
    }

    public function taxis()
    {
        return $this->hasMany(Taxi::class);
    }

    public function service_members()
    {
        return $this->hasMany(ServiceMember::class);
    }

    public function order_infos()
    {
        return $this->morphMany(OrderInfo::class, 'infoable');
    }
}
