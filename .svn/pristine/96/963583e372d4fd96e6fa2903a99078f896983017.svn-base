<?php

namespace App\Http\Controllers\Backend\Access;

use App\Models\Access\Group;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Access\GroupRepository;

class GroupController extends Controller
{
    protected $groups;

    public function __construct(GroupRepository $groups)
    {
        $this->groups = $groups;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (request()->has('search_word')) {
            $groups = $this->groups->searchPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $groups = $this->groups->paginate();
        }

        return view('backend.access.group.index')
            ->with(compact('groups'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.access.group.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->groups->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.access.group.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Access\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function show(Group $group)
    {
        return view('backend.access.group.show')
            ->with(compact('group'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Access\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function edit(Group $group)
    {
        return view('backend.access.group.edit')
            ->with(compact('group'));
    }

    public function deleted()
    {
        if (request()->has('search_word')) {
            $groups = $this->groups->searchDeletedPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $groups = $this->groups->deletedPaginate();
        }

        return view('backend.access.group.index')
            ->with(compact('groups'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Access\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Group $group)
    {
        $this->groups->update($group, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.access.group.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Access\Group  $group
     * @return \Illuminate\Http\Response
     */
    public function destroy(Group $group)
    {
        $this->groups->delete($group);

        return redirect()
            ->route('backend.access.group.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function mark(Group $group, $status)
    {
        $this->groups->mark($group, $status);

        return redirect()
            ->route('backend.access.group.index')
            ->with('success', __('alerts.backend.updated'));
    }

    public function delete($id)
    {
        $this->groups->forceDelete($id);

        return redirect()
            ->route('backend.access.group.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->groups->restore($id);

        return redirect()
            ->route('backend.access.group.deleted')
            ->with('success', __('alerts.backend.restored'));
    }
}
