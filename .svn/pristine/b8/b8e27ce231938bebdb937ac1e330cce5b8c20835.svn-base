<?php

namespace App\Models\Version;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Version\Traits\Attribute\VersionAttribute;
use App\Models\Version\Traits\Relationship\VersionRelationship;

class Version extends Model
{
    use SoftDeletes, VersionAttribute, VersionRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
