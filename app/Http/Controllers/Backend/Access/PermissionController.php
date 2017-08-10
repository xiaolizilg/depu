<?php

namespace App\Http\Controllers\Backend\Access;

use App\Models\Access\Permission;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\RouteRepository;
use App\Repositories\Backend\Access\GroupRepository;
use App\Repositories\Backend\Access\PermissionRepository;

class PermissionController extends Controller
{
    protected $routes;

    protected $groups;

    protected $permissions;

    public function __construct(
            RouteRepository $routes,
            GroupRepository $groups,
            PermissionRepository $permissions
        )
    {
        $this->routes      = $routes;
        $this->groups      = $groups;
        $this->permissions = $permissions;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->has('search_word')) {
            $permissions = $this->permissions->searchPaginate([
                    'title',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $permissions = $this->permissions->paginate();
        }

        return view('backend.access.permission.index')
            ->with(compact('permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.access.permission.create')
            ->with('groups', $this->groups->getAll()->where('status', 1))
            ->with('routes', $this->routes->getAllName()->diff(
                    $this->permissions->getAll()->pluck('name')
                ));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->permissions->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.access.permission.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Access\Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function show(Permission $permission)
    {
        return view('backend.access.permission.show')
            ->with(compact('permission'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Access\Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function edit(Permission $permission)
    {
        return view('backend.access.permission.edit')
            ->with('groups', $this->groups->getAll()->where('status', 1))
            ->with(compact('permission'));
    }

    public function deleted()
    {
        if (request()->has('search_word')) {
            $permissions = $this->permissions->searchDeletedPaginate([
                    'title',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $permissions = $this->permissions->deletedPaginate();
        }

        return view('backend.access.permission.index')
            ->with(compact('permissions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Access\Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Permission $permission)
    {
        $this->permissions->update($permission, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.access.permission.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Access\Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function destroy(Permission $permission)
    {
        $this->permissions->delete($permission);

        return redirect()
            ->route('backend.access.permission.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function mark(Permission $permission, $status)
    {
        $this->permissions->mark($permission, $status);

        return redirect()
            ->route('backend.access.permission.index')
            ->with('success', __('alerts.backend.updated'));
    }

    public function delete($id)
    {
        $this->permissions->forceDelete($id);

        return redirect()
            ->route('backend.access.permission.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->permissions->restore($id);

        return redirect()
            ->route('backend.access.permission.deleted')
            ->with('success', __('alerts.backend.restored'));
    }
}
