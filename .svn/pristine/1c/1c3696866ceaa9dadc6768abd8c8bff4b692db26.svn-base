<?php

namespace App\Http\Controllers\Backend\Account\Password;

use App\Models\User\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Account\UserRepository;

class UserController extends Controller
{
    protected $users;

    public function __construct(UserRepository $users)
    {
        $this->users = $users;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        return view('backend.user.change-password')
            ->with(compact('user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        $this->users->updatePassword($user, $request->only('password'));

        return redirect()->route('backend.account.user.index')
            ->with('success', __('alerts.backend.updated_password'));
    }
}
