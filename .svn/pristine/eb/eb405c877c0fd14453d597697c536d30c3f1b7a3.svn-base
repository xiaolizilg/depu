<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\Service\Service;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Content\UpdateServiceRequest;
use App\Repositories\Backend\Content\ServiceRepository;

class ServiceController extends Controller
{
    protected $services;

    public function __construct(ServiceRepository $services)
    {
        $this->services = $services;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $services = $this->services->paginate();

        return view('backend.service.index')
            ->with(compact('services'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Service\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function edit(Service $service)
    {
        return view('backend.service.edit')
            ->with(compact('service'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Service\Service  $service
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateServiceRequest $request, Service $service)
    {
        $this->services->update($service, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.service.index')
            ->with('success', __('alerts.backend.updated'));
    }
}
