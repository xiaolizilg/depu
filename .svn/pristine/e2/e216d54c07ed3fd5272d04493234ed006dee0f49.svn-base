<?php

namespace App\Http\Controllers\Backend\Account;

use App\Models\User\User;
use App\Models\Access\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Account\UserRepository;

class OwnAdminController extends Controller
{
    protected $users;

    public function __construct(UserRepository $users)
    {
        $this->users = $users;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Role $role)
    {
        $admins = $role->find(3)->users()->paginate(10);

        return view('backend.admin.own.index')
            ->with(compact('admins'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        $users = $user->own_users()->paginate(10);

        return view('backend.admin.own.edit')
            ->with(compact('admin', 'users'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $own_admin)
    {
        $this->users->setOwnUser($own_admin, $request->input('own_user_ids'));

        return redirect()
            ->route('backend.account.admin.own.edit')
            ->with('success', __('alerts.backend.updated'));
    }
}
