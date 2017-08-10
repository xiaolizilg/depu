<?php

namespace App\Http\Controllers\Backend\Hospital;

use App\Models\Hotal\Hotal;
use App\Models\Picture\Picture;
use App\Models\Hospital\Hospital;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Hospital\StoreHotalRequest;
use App\Http\Requests\Backend\Hospital\UpdateHotalRequest;
use App\Repositories\Backend\Hospital\HotalRepository;

class HotalController extends Controller
{
    protected $hotals;

    public function __construct(HotalRepository $hotals)
    {
        $this->hotals = $hotals;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $hotals = $hospital->hotals()
                ->where('title', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $hotals = $hospital->hotals()
                ->paginate(10);
        }

        return view('backend.hospital.hotal.index')
            ->with(compact('hospital'))
            ->with(compact('hotals'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Hospital $hospital)
    {
        return view('backend.hospital.hotal.create')
            ->with(compact('hospital'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreHotalRequest $request, Hospital $hospital)
    {
        $this->hotals->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.hotal.index', $hospital->id)
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Hotal\Hotal  $hotal
     * @return \Illuminate\Http\Response
     */
    public function show(Hospital $hospital, Hotal $hotal)
    {
        return view('backend.hospital.hotal.show')
            ->with(compact('hospital'))
            ->with(compact('hotal'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Hotal\Hotal  $hotal
     * @return \Illuminate\Http\Response
     */
    public function edit(Hospital $hospital, Hotal $hotal)
    {
        return view('backend.hospital.hotal.edit')
            ->with(compact('hospital'))
            ->with(compact('hotal'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Hotal\Hotal  $hotal
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateHotalRequest $request, Hospital $hospital, Hotal $hotal)
    {
        $this->hotals->update($hotal, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.hotal.index', $hospital->id)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Hotal\Hotal  $hotal
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hospital $hospital, Hotal $hotal)
    {
        $this->hotals->delete($hotal);

        return redirect()
            ->route('backend.hospital.hotal.index', $hospital->id)
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete(Hospital $hospital, $id)
    {
        $this->hotals->forceDelete($id);

        return redirect()
            ->route('backend.hospital.hotal.deleted', $hospital->id)
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore(Hospital $hospital, $id)
    {
        $this->hotals->restore($id);

        return redirect()
            ->route('backend.hospital.hotal.deleted', $hospital->id)
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $hotals = $hospital->hotals()
                ->onlyTrashed()
                ->where('title', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $hotals = $hospital->hotals()
                ->onlyTrashed()
                ->paginate(10);
        }

        return view('backend.hospital.hotal.index')
            ->with(compact('hospital'))
            ->with(compact('hotals'));
    }

    public function getImage(Hospital $hospital, Hotal $hotal)
    {
        $images = $hotal->pictures;

        return view('backend.hospital.hotal.image.index')
            ->with(compact('images'))
            ->with(compact('hotal'))
            ->with(compact('hospital'));
    }

    public function createImage(Hospital $hospital, Hotal $hotal)
    {
        return view('backend.hospital.hotal.image.create')
            ->with(compact('hotal'))
            ->with(compact('hospital'));
    }

    public function storeImage(Request $request, Hospital $hospital, Hotal $hotal)
    {
        $hotal->pictures()->create([
                'image_id' => $request->input('image_id'),
                'title'    => $request->input('title'),
            ]);

        return redirect()
            ->route('backend.hospital.hotal.image.index', [$hospital, $hotal])
            ->with('success', __('alerts.backend.created'));
    }


    public function editImage(Hospital $hospital, Hotal $hotal, Picture $image)
    {
        return view('backend.hospital.hotal.image.edit')
            ->with(compact('image'))
            ->with(compact('hotal'))
            ->with(compact('hospital'));
    }

    public function updateImage(Request $request, Hospital $hospital, Hotal $hotal, Picture $image)
    {
        $image->update([
                'image_id' => $request->input('image_id'),
                'title'    => $request->input('title'),
            ]);

        return redirect()
            ->route('backend.hospital.hotal.image.index', [$hospital, $hotal])
            ->with('success', __('alerts.backend.updated'));
    }

    public function deleteImage(Request $request, Hospital $hospital, Hotal $hotal, Picture $image)
    {
        $image->forceDelete();

        return redirect()
            ->route('backend.hospital.hotal.image.index', [$hospital, $hotal])
            ->with('success', __('alerts.backend.deleted'));
    }
}
