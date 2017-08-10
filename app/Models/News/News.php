<?php

namespace App\Models\News;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\News\Traits\Attribute\NewsAttribute;
use App\Models\News\Traits\Relationship\NewsRelationship;

class News extends Model
{
    use SoftDeletes, NewsAttribute, NewsRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
