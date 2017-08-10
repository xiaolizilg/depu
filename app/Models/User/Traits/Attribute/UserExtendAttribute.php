<?php

namespace App\Models\User\Traits\Attribute;

use Carbon\Carbon as Carbon;

/**
 * Class UserExtendAttribute.
 */
trait UserExtendAttribute
{
    public function getLastLoginedAtAttribute($date)
    {
        if (request()->expectsJson()) {
            return Carbon::parse($date)->format('Y-m-d');
        }

        return Carbon::parse($date);
    }

    public function getLastLoginedIpAttribute($ip)
    {
        return long2ip($ip);
    }

}
