<?php

namespace App\Http\Controllers\Backend\Account\Password;

use App\Models\User\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Account\AdminRepository;

class AdminController extends Controller
{
    protected $admins;

    public function __construct(AdminRepository $admins)
    {
        $this->admins = $admins;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User\User  $admin
     * @return \Illuminate\Http\Response
     */
    public function edit(User $admin)
    {
        return view('backend.admin.change-password')
            ->with(compact('admin'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User\User  $admin
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $admin)
    {
        $this->admins->updatePassword($admin, $request->only('password'));

        return redirect()->route('backend.account.admin.index')
            ->with('success', __('alerts.backend.updated_password'));
    }
}
