<?php

namespace App\Models\Image;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Image\Traits\Attribute\ImageAttribute;
use App\Models\Image\Traits\Relationship\ImageRelationship;

class Image extends Model
{
    use SoftDeletes
    // , ImageAttribute, ImageRelationship
    ;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
