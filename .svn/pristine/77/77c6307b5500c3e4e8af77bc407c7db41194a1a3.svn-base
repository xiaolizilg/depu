<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\Version\Version;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Content\VersionRepository;

class VersionController extends Controller
{
    protected $versions;

    public function __construct(VersionRepository $versions)
    {
        $this->versions = $versions;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $versions = $this->versions->paginate();

        return view('backend.version.index')
            ->with(compact('versions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.version.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->versions->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.version.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Version\Version  $version
     * @return \Illuminate\Http\Response
     */
    public function show(Version $version)
    {
        return view('backend.version.show')
            ->with(compact('version'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Version\Version  $version
     * @return \Illuminate\Http\Response
     */
    public function edit(Version $version)
    {
        return view('backend.version.edit')
            ->with(compact('version'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Version\Version  $version
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Version $version)
    {
        $this->versions->update($version, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.version.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Version\Version  $version
     * @return \Illuminate\Http\Response
     */
    public function destroy(Version $version)
    {
        $this->versions->delete($version);

        return redirect()
            ->route('backend.content.version.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete($id)
    {
        $this->versions->forceDelete($id);

        return redirect()
            ->route('backend.content.version.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->versions->restore($id);

        return redirect()
            ->route('backend.content.version.deleted')
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Version $version)
    {
        $versions = $version->onlyTrashed()
            ->paginate(10);

        return view('backend.version.index')
            ->with(compact('versions'));
    }
}
