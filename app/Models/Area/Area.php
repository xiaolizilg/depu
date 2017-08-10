<?php

namespace App\Models\Area;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Area extends Model
{
    use SoftDeletes;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
