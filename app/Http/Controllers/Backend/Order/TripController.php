<?php

namespace App\Http\Controllers\Backend\Order;

use App\Models\Trip\Trip;
use App\Models\Trip\TripInfo;
use App\Models\Order\Order;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Order\StoreTripRequest;
use App\Http\Requests\Backend\Order\UpdateTripRequest;
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
    public function index(Order $order)
    {
        $trip = $order->trip;

        return view('backend.order.trip.index')
            ->with(compact('order'))
            ->with(compact('trip'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Trip\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function show(Trip $trip)
    {
        return view('backend.order.trip.show')
            ->with(compact('trip'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Order $order)
    {
        return view('backend.order.trip.create')
            ->with(compact('order'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreTripRequest $request, Order $order)
    {
        $this->trips->create([
                'data'  => $request->all(),
                'trip'  => $order->trip
            ]);

        return redirect()
            ->route('backend.order.trip.index', $order)
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Trip\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function edit(Order $order, TripInfo $trip)
    {
        return view('backend.order.trip.edit')
            ->with(compact('order'))
            ->with(compact('trip'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Trip\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateTripRequest $request, Order $order, TripInfo $trip)
    {
        $this->trips->update($trip, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.order.trip.index', $order)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Hospital\Hospital  $hospital
     * @return \Illuminate\Http\Response
     */
    public function destroy(Order $order, TripInfo $trip)
    {
        $this->trips->forceDelete($trip);

        return redirect()
            ->route('backend.order.trip.index', $order)
            ->with('success', __('alerts.backend.deleted'));
    }

    public function mark(Order $order, TripInfo $info, $status)
    {
        $this->trips->mark($info, $status);

        return redirect()
            ->route('backend.order.trip.index', $order)
            ->with('success', __('alerts.backend.updated'));
    }
}
