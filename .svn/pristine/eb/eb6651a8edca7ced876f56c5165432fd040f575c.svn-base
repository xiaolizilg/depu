<?php

namespace App\Models\Service;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Service\Traits\Attribute\ServiceAttribute;
use App\Models\Service\Traits\Relationship\ServiceRelationship;

class Service extends Model
{
    use SoftDeletes, ServiceAttribute, ServiceRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
