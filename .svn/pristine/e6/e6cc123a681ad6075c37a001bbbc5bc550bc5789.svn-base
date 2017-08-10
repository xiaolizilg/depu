<?php

namespace App\Http\Controllers\Backend\Account;

use App\Models\User\User;
use App\Models\Record\Record;
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
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->has('search_word')) {
            $users = $this->users->searchPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $users = $this->users->paginate();
        }

        return view('backend.user.index')
            ->with(compact('users'));
    }

    public function records(User $user)
    {
        $records = $user->records()->paginate(10);

        return view('backend.user.record.index')
            ->with(compact('records'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.user.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->users->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.account.user.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return view('backend.user.show')
            ->with(compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User\User  $user
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        return view('backend.user.edit')
            ->with(compact('user'));
    }

    public function deleted()
    {
        if (request()->has('search_word')) {
            $users = $this->users->searchDeletedPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $users = $this->users->deletedPaginate();
        }

        return view('backend.user.index')
            ->with(compact('users'));
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
        $this->users->update($user, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.account.user.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $this->users->delete($user);

        return redirect()
            ->route('backend.account.user.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function mark(User $user, $status)
    {
        $this->users->mark($user, $status);

        return redirect()
            ->route('backend.account.user.index')
            ->with('success', __('alerts.backend.updated'));
    }

    public function delete($id)
    {
        $this->users->forceDelete($id);

        return redirect()
            ->route('backend.account.user.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->users->restore($id);

        return redirect()
            ->route('backend.account.user.deleted')
            ->with('success', __('alerts.backend.restored'));
    }
}
