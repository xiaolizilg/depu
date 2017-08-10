<?php

namespace App\Models\Menu\Traits\Relationship;

use App\Models\Menu\Menu;

/**
 * Class MenuRelationship.
 */
trait MenuRelationship
{
    public function menus()
    {
        return $this->hasMany(Menu::class, 'pid', 'id');
    }
}
