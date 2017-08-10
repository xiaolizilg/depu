<?php

namespace App\Models\Banner;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Banner\Traits\Attribute\BannerAttribute;
use App\Models\Banner\Traits\Relationship\BannerRelationship;

class Banner extends Model
{
    use SoftDeletes, BannerAttribute, BannerRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
