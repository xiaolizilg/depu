<?php

namespace App\Models\Picture;

use Illuminate\Database\Eloquent\Model;
use App\Models\Picture\Traits\Attribute\PictureAttribute;
use App\Models\Picture\Traits\Relationship\PictureRelationship;

class Picture extends Model
{
    use PictureAttribute, PictureRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
