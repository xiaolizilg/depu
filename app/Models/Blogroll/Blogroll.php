<?php

namespace App\Models\Blogroll;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Blogroll\Traits\Attribute\BlogrollAttribute;
use App\Models\Blogroll\Traits\Relationship\BlogrollRelationship;

class Blogroll extends Model
{
    use SoftDeletes, BlogrollAttribute, BlogrollRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
