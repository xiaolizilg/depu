<?php

namespace App\Models\Menu;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Menu\Traits\Attribute\MenuAttribute;
use App\Models\Menu\Traits\Relationship\MenuRelationship;

class Menu extends Model
{
    use SoftDeletes, MenuAttribute, MenuRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
