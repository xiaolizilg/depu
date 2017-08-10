<?php

namespace App\Http\Controllers\Backend\Hospital;

use App\Models\Tourism\Tourism;
use App\Models\Hospital\Hospital;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Hospital\TourismRepository;

class TourismController extends Controller
{
    protected $tourisms;

    public function __construct(TourismRepository $tourisms)
    {
        $this->tourisms = $tourisms;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $tourisms = $hospital->tourisms()
                ->where('title', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $tourisms = $hospital->tourisms()
                ->paginate(10);
        }

        return view('backend.hospital.tourism.index')
            ->with(compact('hospital'))
            ->with(compact('tourisms'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Hospital $hospital)
    {
        return view('backend.hospital.tourism.create')
            ->with(compact('hospital'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, Hospital $hospital)
    {
        $this->tourisms->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.tourism.index', $hospital->id)
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Tourism\Tourism  $tourism
     * @return \Illuminate\Http\Response
     */
    public function show(Hospital $hospital, Tourism $tourism)
    {
        return view('backend.hospital.tourism.show')
            ->with(compact('hospital'))
            ->with(compact('tourism'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Tourism\Tourism  $tourism
     * @return \Illuminate\Http\Response
     */
    public function edit(Hospital $hospital, Tourism $tourism)
    {
        return view('backend.hospital.tourism.edit')
            ->with(compact('hospital'))
            ->with(compact('tourism'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tourism\Tourism  $tourism
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Hospital $hospital, Tourism $tourism)
    {
        $this->tourisms->update($tourism, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.tourism.index', $hospital->id)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tourism\Tourism  $tourism
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hospital $hospital, Tourism $tourism)
    {
        $this->tourisms->delete($tourism);

        return redirect()
            ->route('backend.hospital.tourism.index', $hospital->id)
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete(Hospital $hospital, $id)
    {
        $this->tourisms->forceDelete($id);

        return redirect()
            ->route('backend.hospital.tourism.deleted', $hospital->id)
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore(Hospital $hospital, $id)
    {
        $this->tourisms->restore($id);

        return redirect()
            ->route('backend.hospital.tourism.deleted', $hospital->id)
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $tourisms = $hospital->tourisms()
                ->onlyTrashed()
                ->where('title', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $tourisms = $hospital->tourisms()
                ->onlyTrashed()
                ->paginate(10);
        }

        return view('backend.hospital.tourism.index')
            ->with(compact('hospital'))
            ->with(compact('tourisms'));
    }
}
