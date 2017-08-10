<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\Banner\Banner;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Content\BannerRepository;

class BannerController extends Controller
{
    protected $banners;

    public function __construct(BannerRepository $banners)
    {
        $this->banners = $banners;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $banners = $this->banners->paginate();

        return view('backend.banner.index')
            ->with(compact('banners'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.banner.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->banners->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.banner.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Banner\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function show(Banner $banner)
    {
        return view('backend.banner.show')
            ->with(compact('banner'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Banner\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function edit(Banner $banner)
    {
        return view('backend.banner.edit')
            ->with(compact('banner'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Banner\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Banner $banner)
    {
        $this->banners->update($banner, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.banner.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Banner\Banner  $banner
     * @return \Illuminate\Http\Response
     */
    public function destroy(Banner $banner)
    {
        $this->banners->delete($banner);

        return redirect()
            ->route('backend.content.banner.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete($id)
    {
        $this->banners->forceDelete($id);

        return redirect()
            ->route('backend.content.banner.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->banners->restore($id);

        return redirect()
            ->route('backend.content.banner.deleted')
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Banner $banner)
    {
        $banners = $banner->onlyTrashed()
            ->paginate(10);

        return view('backend.banner.index')
            ->with(compact('banners'));
    }
}
