<?php

namespace App\Http\Controllers\Backend\System;

use App\Models\Menu\Menu;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\RouteRepository;
use App\Repositories\Backend\Menu\MenuRepository;

class MenuController extends Controller
{
    protected $menus;

    protected $routes;

    public function __construct(
            MenuRepository $menus,
            RouteRepository $routes
        )
    {
        $this->menus  = $menus;
        $this->routes = $routes;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->has('search_word')) {
            $menus = $this->menus->searchPaginate([
                    'title',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $menus = $this->menus->paginate();
        }

        return view('backend.menu.index')
            ->with(compact('menus'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.menu.create')
            ->with('menus', $this->menus->getAll())
            ->with('routes', $this->routes->getAllGetterName());
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->menus->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.system.menu.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Access\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function show(Menu $menu)
    {
        return view('backend.menu.show')
            ->with(compact('menu'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Access\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function edit(Menu $menu)
    {
        return view('backend.menu.edit')
            ->with(compact('menu'));
    }

    public function deleted()
    {
        if (request()->has('search_word')) {
            $menus = $this->menus->searchDeletedPaginate([
                    'title',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $menus = $this->menus->deletedPaginate();
        }

        return view('backend.menu.index')
            ->with(compact('menus'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Access\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Menu $menu)
    {
        $this->menus->update($menu, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.system.menu.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Access\Menu  $menu
     * @return \Illuminate\Http\Response
     */
    public function destroy(Menu $menu)
    {
        $this->menus->delete($menu);

        return redirect()
            ->route('backend.system.menu.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function mark(Menu $menu, $status)
    {
        $this->menus->mark($menu, $status);

        return redirect()
            ->route('backend.system.menu.index')
            ->with('success', __('alerts.backend.updated'));
    }

    public function delete($id)
    {
        $this->menus->forceDelete($id);

        return redirect()
            ->route('backend.system.menu.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->menus->restore($id);

        return redirect()
            ->route('backend.system.menu.deleted')
            ->with('success', __('alerts.backend.restored'));
    }
}
