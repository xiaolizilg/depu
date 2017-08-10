<?php

namespace App\Events\Backend\System\Menu;

use Illuminate\Queue\SerializesModels;

/**
 * Class MenuCreated.
 */
class MenuCreated
{
    use SerializesModels;

    /**
     * @var
     */
    public $menu;

    /**
     * @param $menu
     */
    public function __construct($menu)
    {
        $this->menu = $menu;
    }
}
