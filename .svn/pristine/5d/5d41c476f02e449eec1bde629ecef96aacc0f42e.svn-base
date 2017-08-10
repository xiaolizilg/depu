<?php

namespace App\Http\Controllers\Backend\Trip;

use App\Models\Trip\Trip;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Trip\TripRepository;

class TripController extends Controller
{
    protected $trips;

    public function __construct(TripRepository $trips)
    {
        $this->trips = $trips;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $trips = $this->trips->paginate();

        return view('backend.trip.index')
            ->with(compact('trips'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Trip\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function show(Trip $trip)
    {
        return view('backend.trip.show')
            ->with(compact('trip'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Trip\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function edit(Trip $trip)
    {
        return view('backend.trip.edit')
            ->with(compact('trip'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Trip\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Trip $trip)
    {
        $this->trips->update($trip, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.trip.index')
            ->with('success', __('alerts.backend.updated'));
    }
}
