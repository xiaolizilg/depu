<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\Agreement\Agreement;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Content\AgreementRepository;

class AgreementController extends Controller
{
    protected $agreements;

    public function __construct(AgreementRepository $agreements)
    {
        $this->agreements = $agreements;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Agreement $agreement)
    {
        $agreement = $agreement->first();

        return view('backend.agreement.index')
            ->with(compact('agreement'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Agreement\Agreement  $agreement
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Agreement $agreement)
    {
        $service_mobile = $request->input('service_mobile');

        file_put_contents(storage_path('app/website/config.json'), json_encode(array_merge(json_decode(file_get_contents(storage_path('app/website/config.json')), true), compact('service_mobile'))));

        $this->agreements->update($agreement, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.agreement.index')
            ->with('success', __('alerts.backend.updated'));
    }
}
