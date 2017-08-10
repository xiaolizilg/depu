<?php

namespace App\Http\Controllers\Backend\Account;

use App\Models\User\User;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Account\StoreAdminRequest;
use App\Http\Requests\Backend\Account\UpdateAdminRequest;
use App\Repositories\Backend\Account\AdminRepository;

class AdminController extends Controller
{
    protected $admins;

    public function __construct(AdminRepository $admins)
    {
        $this->admins = $admins;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->has('search_word')) {
            $admins = $this->admins->searchPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $admins = $this->admins->paginate();
        }

        return view('backend.admin.index')
            ->with(compact('admins'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.admin.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreAdminRequest $request)
    {
        $this->admins->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.account.admin.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User\User  $admin
     * @return \Illuminate\Http\Response
     */
    public function show(User $admin)
    {
        return view('backend.admin.show')
            ->with(compact('admin'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\User\User  $admin
     * @return \Illuminate\Http\Response
     */
    public function edit(User $admin)
    {
        return view('backend.admin.edit')
            ->with(compact('admin'));
    }

    public function deleted()
    {
        if (request()->has('search_word')) {
            $admins = $this->admins->searchDeletedPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $admins = $this->admins->deletedPaginate();
        }

        return view('backend.admin.index')
            ->with(compact('admins'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User\User  $admin
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateAdminRequest $request, User $admin)
    {
        $this->admins->update($admin, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.account.admin.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User\User  $admin
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $admin)
    {
        $this->admins->delete($admin);

        return redirect()
            ->route('backend.account.admin.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function mark(User $admin, $status)
    {
        $this->admins->mark($admin, $status);

        return redirect()
            ->route('backend.account.admin.index')
            ->with('success', __('alerts.backend.updated'));
    }

    public function delete($id)
    {
        $this->admins->forceDelete($id);

        return redirect()
            ->route('backend.account.admin.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->admins->restore($id);

        return redirect()
            ->route('backend.account.admin.deleted')
            ->with('success', __('alerts.backend.restored'));
    }
}
