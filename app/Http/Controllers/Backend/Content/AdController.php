<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\Ad\Ad;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Content\AdRepository;

class AdController extends Controller
{
    protected $ads;

    public function __construct(AdRepository $ads)
    {
        $this->ads = $ads;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ads = $this->ads->paginate();

        return view('backend.ad.index')
            ->with(compact('ads'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.ad.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->ads->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.ad.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ad\Ad  $ad
     * @return \Illuminate\Http\Response
     */
    public function show(Ad $ad)
    {
        return view('backend.ad.show')
            ->with(compact('ad'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Ad\Ad  $ad
     * @return \Illuminate\Http\Response
     */
    public function edit(Ad $ad)
    {
        return view('backend.ad.edit')
            ->with(compact('ad'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ad\Ad  $ad
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Ad $ad)
    {
        $this->ads->update($ad, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.ad.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ad\Ad  $ad
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ad $ad)
    {
        $this->ads->delete($ad);

        return redirect()
            ->route('backend.content.ad.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete($id)
    {
        $this->ads->forceDelete($id);

        return redirect()
            ->route('backend.content.ad.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->ads->restore($id);

        return redirect()
            ->route('backend.content.ad.deleted')
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Ad $ad)
    {
        $ads = $ad->onlyTrashed()
            ->paginate(10);

        return view('backend.ad.index')
            ->with(compact('ads'));
    }
}
