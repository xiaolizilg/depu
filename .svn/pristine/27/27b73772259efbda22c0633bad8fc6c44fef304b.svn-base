<?php

namespace App\Http\Controllers\Backend\Access\Setter;

use App\Models\Access\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Access\RoleRepository;

class PermissionController extends Controller
{
    protected $roles;

    public function __construct(RoleRepository $roles)
    {
        $this->roles = $roles;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Access\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function edit(Role $role)
    {
        if (request()->has('search_word')) {
            $permissions = $role->permissions()
                ->where('title', 'LIKE', '%' . request()->input('search_word') . '%')
                ->orderBy('id', 'asc')
                ->paginate(10);
        } else {
            $permissions = $role->permissions()
                ->orderBy('id', 'asc')
                ->paginate();
        }

        return view('backend.access.role.set-permission')
            ->with(compact('permissions'))
            ->with(compact('role'));
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
        $this->roles->setPermission($role, $request->input('permission_ids'));

        return redirect()->route('backend.access.role.set-permission', $role->id)
            ->with('success', __('alerts.backend.setted_permission'));
    }

    public function unsetter(Request $request, Role $role)
    {
        $this->roles->unsetPermission($role, $request->input('permission_id'));

        return redirect()->route('backend.access.role.set-permission', $role->id)
            ->with('success', __('alerts.backend.unsetted_permission'));
    }
}
