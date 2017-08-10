<?php

namespace App\Models\Country;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use App\Models\Country\Traits\Attribute\CountryAttribute;
use App\Models\Country\Traits\Relationship\CountryRelationship;

class Country extends Model
{
    use SoftDeletes, CountryAttribute, CountryRelationship;

    protected $guarded  = [];

    protected $dates = ['deleted_at'];
}
