<?php

namespace App\Http\Controllers\Api\User;

use App\Models\Trip\Trip;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\User\GetTripsRequest;

class TripController extends Controller
{
    protected $trips;

    public function __construct(Trip $trips)
    {
        $this->trips = $trips;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(GetTripsRequest $request)
    {
        $trips = auth()->user()->me->trips()
            ->where(['status' => $request->input('status')])
            ->orderBy('id', 'desc')
            ->paginate(10, ['id', 'hospital', 'desc', 'started_at', 'price']);

        return api(
                compact('trips')
            );
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Trip\Trip  $trip
     * @return \Illuminate\Http\Response
     */
    public function show(Trip $trip)
    {
        if (!auth()->user()->me->trips()->where(['id' => $trip->id])->count()) {
            return api([], 403);
        }

        $trip_infos = $trip->trip_infos()->get(['id', 'type', 'title', 'service_id', 'desc', 'status', 'started_at'])->map(function($item){
            $item->type_name = $item->type_name;

            return $item;
        });

        return api(
                compact('trip_infos')
            );
    }

}
