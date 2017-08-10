<?php

namespace App\Http\Controllers\Backend\Access\Setter;

use App\Models\Access\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Access\RoleRepository;

class RoleController extends Controller
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
            $users = $role->users()
                ->where('name', 'LIKE', '%' . request()->input('search_word') . '%')
                ->orderBy('id', 'asc')
                ->paginate(10);
        } else {
            $users = $role->users()
                ->orderBy('id', 'asc')
                ->paginate();
        }

        return view('backend.access.role.set-role')
            ->with(compact('users'))
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
        $this->roles->setRole($role, $request->input('user_ids'));

        return redirect()->route('backend.access.role.set-role', $role->id)
            ->with('success', __('alerts.backend.setted_role'));
    }

    public function unsetter(Request $request, Role $role)
    {
        $this->roles->unsetRole($role, $request->input('user_id'));

        return redirect()->route('backend.access.role.set-role', $role->id)
            ->with('success', __('alerts.backend.unsetted_role'));
    }
}
