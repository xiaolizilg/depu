<?php

namespace App\Http\Controllers\Backend\Access;

use App\Models\Access\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Access\RoleRepository;

class RoleController extends Controller
{
    protected $roles;

    public function __construct(
            RoleRepository $roles
        )
    {
        $this->roles = $roles;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->has('search_word')) {
            $roles = $this->roles->searchPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $roles = $this->roles->paginate();
        }

        return view('backend.access.role.index')
            ->with(compact('roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.access.role.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->roles->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.access.role.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Access\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function show(Role $role)
    {
        return view('backend.access.role.show')
            ->with(compact('role'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Access\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function edit(Role $role)
    {
        return view('backend.access.role.edit')
            ->with(compact('role'));
    }

    public function deleted()
    {
        if (request()->has('search_word')) {
            $roles = $this->roles->searchDeletedPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $roles = $this->roles->deletedPaginate();
        }

        return view('backend.access.role.index')
            ->with(compact('roles'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Access\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Role $role)
    {
        $this->roles->update($role, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.access.role.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Access\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function destroy(Role $role)
    {
        $this->roles->delete($role);

        return redirect()
            ->route('backend.access.role.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function mark(Role $role, $status)
    {
        $this->roles->mark($role, $status);

        return redirect()
            ->route('backend.access.role.index')
            ->with('success', __('alerts.backend.updated'));
    }

    public function delete($id)
    {
        $this->roles->forceDelete($id);

        return redirect()
            ->route('backend.access.role.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->roles->restore($id);

        return redirect()
            ->route('backend.access.role.deleted')
            ->with('success', __('alerts.backend.restored'));
    }
}
