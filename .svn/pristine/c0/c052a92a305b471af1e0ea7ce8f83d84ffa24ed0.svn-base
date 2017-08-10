<?php

namespace App\Models\Order\Traits\Attribute;

use Carbon\Carbon as Carbon;

/**
 * Class OrderInfoAttribute.
 */
trait OrderInfoAttribute
{
    public function getPriceAttribute($value)
    {
        return $value / 100;
    }

    public function getCreatedAtAttribute($date)
    {
        if (request()->expectsJson()) {
            return Carbon::parse($date)->format('Y-m-d');
        }

        return Carbon::parse($date);
    }

    public function getUpdatedAtAttribute($date)
    {
        if (request()->expectsJson()) {
            return Carbon::parse($date)->format('Y-m-d');
        }

        return Carbon::parse($date);
    }
}
