<?php

namespace App\Models\Record;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Record\Traits\Attribute\RecordAttribute;
use App\Models\Record\Traits\Relationship\RecordRelationship;

class Record extends Model
{
    use SoftDeletes
    , RecordAttribute, RecordRelationship
    ;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
