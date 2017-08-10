<?php

namespace App\Http\Controllers\Backend\Hospital;

use App\Models\Taxi\Taxi;
use App\Models\Picture\Picture;
use App\Models\Hospital\Hospital;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Hospital\StoreTaxiRequest;
use App\Http\Requests\Backend\Hospital\UpdateTaxiRequest;
use App\Repositories\Backend\Hospital\TaxiRepository;

class TaxiController extends Controller
{
    protected $taxis;

    public function __construct(TaxiRepository $taxis)
    {
        $this->taxis = $taxis;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $taxis = $hospital->taxis()
                ->where('title', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $taxis = $hospital->taxis()
                ->paginate(10);
        }

        return view('backend.hospital.taxi.index')
            ->with(compact('hospital'))
            ->with(compact('taxis'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Hospital $hospital)
    {
        return view('backend.hospital.taxi.create')
            ->with(compact('hospital'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTaxiRequest $request, Hospital $hospital)
    {
        $this->taxis->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.taxi.index', $hospital->id)
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Taxi\Taxi  $taxi
     * @return \Illuminate\Http\Response
     */
    public function show(Hospital $hospital, Taxi $taxi)
    {
        return view('backend.hospital.taxi.show')
            ->with(compact('hospital'))
            ->with(compact('taxi'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Taxi\Taxi  $taxi
     * @return \Illuminate\Http\Response
     */
    public function edit(Hospital $hospital, Taxi $taxi)
    {
        return view('backend.hospital.taxi.edit')
            ->with(compact('hospital'))
            ->with(compact('taxi'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Taxi\Taxi  $taxi
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTaxiRequest $request, Hospital $hospital, Taxi $taxi)
    {
        $this->taxis->update($taxi, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.taxi.index', $hospital->id)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Taxi\Taxi  $taxi
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hospital $hospital, Taxi $taxi)
    {
        $this->taxis->delete($taxi);

        return redirect()
            ->route('backend.hospital.taxi.index', $hospital->id)
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete(Hospital $hospital, $id)
    {
        $this->taxis->forceDelete($id);

        return redirect()
            ->route('backend.hospital.taxi.deleted', $hospital->id)
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore(Hospital $hospital, $id)
    {
        $this->taxis->restore($id);

        return redirect()
            ->route('backend.hospital.taxi.deleted', $hospital->id)
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $taxis = $hospital->taxis()
                ->onlyTrashed()
                ->where('title', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $taxis = $hospital->taxis()
                ->onlyTrashed()
                ->paginate(10);
        }

        return view('backend.hospital.taxi.index')
            ->with(compact('hospital'))
            ->with(compact('taxis'));
    }
    
    public function getImage(Hospital $hospital, Taxi $taxi)
    {
        $images = $taxi->pictures;

        return view('backend.hospital.taxi.image.index')
            ->with(compact('images'))
            ->with(compact('taxi'))
            ->with(compact('hospital'));
    }

    public function createImage(Hospital $hospital, Taxi $taxi)
    {
        return view('backend.hospital.taxi.image.create')
            ->with(compact('taxi'))
            ->with(compact('hospital'));
    }

    public function storeImage(Request $request, Hospital $hospital, Taxi $taxi)
    {
        $taxi->pictures()->create([
                'image_id' => $request->input('image_id'),
                'title'    => $request->input('title'),
            ]);

        return redirect()
            ->route('backend.hospital.taxi.image.index', [$hospital, $taxi])
            ->with('success', __('alerts.backend.created'));
    }


    public function editImage(Hospital $hospital, Taxi $taxi, Picture $image)
    {
        return view('backend.hospital.taxi.image.edit')
            ->with(compact('image'))
            ->with(compact('taxi'))
            ->with(compact('hospital'));
    }

    public function updateImage(Request $request, Hospital $hospital, Taxi $taxi, Picture $image)
    {
        $image->update([
                'image_id' => $request->input('image_id'),
                'title'    => $request->input('title'),
            ]);

        return redirect()
            ->route('backend.hospital.taxi.image.index', [$hospital, $taxi])
            ->with('success', __('alerts.backend.updated'));
    }

    public function deleteImage(Request $request, Hospital $hospital, Taxi $taxi, Picture $image)
    {
        $image->forceDelete();

        return redirect()
            ->route('backend.hospital.taxi.image.index', [$hospital, $taxi])
            ->with('success', __('alerts.backend.deleted'));
    }
}
