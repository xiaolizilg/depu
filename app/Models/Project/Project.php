<?php

namespace App\Models\Project;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Project\Traits\Attribute\ProjectAttribute;
use App\Models\Project\Traits\Relationship\ProjectRelationship;

class Project extends Model
{
    use SoftDeletes, ProjectAttribute, ProjectRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
