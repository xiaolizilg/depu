<?php

namespace App\Http\Middleware\Backend;

use Closure;
use App\Repositories\Backend\Menu\MenuRepository;

class ShareBackendMenu
{
    protected $menus;

    public function __construct(MenuRepository $menus)
    {
        $this->menus = $menus;
    }

    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        view()->share('_menus', $this->menus->getTree());
        view()->share('_site_maps', $this->menus->getMap());
        view()->share('_current_menu', $this->menus->getCurrentMenu());

        return $next($request);
    }
}
