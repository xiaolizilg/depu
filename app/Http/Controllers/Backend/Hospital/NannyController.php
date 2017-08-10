<?php

namespace App\Http\Controllers\Backend\Hospital;

use App\Models\ServiceMember\ServiceMember;
use App\Models\Hospital\Hospital;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Hospital\StoreNannyMemberRequest;
use App\Http\Requests\Backend\Hospital\UpdateNannyMemberRequest;
use App\Repositories\Backend\Hospital\NannyRepository;
use App\Repositories\Backend\Project\CountryRepository;

class NannyController extends Controller
{
    protected $nannies;

    public function __construct(NannyRepository $nannies)
    {
        $this->nannies = $nannies;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $nannies = $hospital->service_members()
                ->where('type', 2)
                ->where('real_name', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $nannies = $hospital->service_members()
                ->where('type', 2)
                ->paginate(10);
        }

        return view('backend.hospital.nanny.index')
            ->with(compact('hospital'))
            ->with(compact('nannies'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(CountryRepository $countries, Hospital $hospital)
    {
        return view('backend.hospital.nanny.create')
            ->with(compact('hospital'))
            ->with(['countries' => $countries->getAll()]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreNannyMemberRequest $request, Hospital $hospital)
    {
        $this->nannies->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.nanny.index', $hospital->id)
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $nanny
     * @return \Illuminate\Http\Response
     */
    public function show(Hospital $hospital, ServiceMember $nanny)
    {
        return view('backend.hospital.nanny.show')
            ->with(compact('hospital'))
            ->with(compact('nanny'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $nanny
     * @return \Illuminate\Http\Response
     */
    public function edit(Hospital $hospital, ServiceMember $nanny, CountryRepository $countries)
    {
        return view('backend.hospital.nanny.edit')
            ->with(compact('hospital'))
            ->with(['countries' => $countries->getAll()])
            ->with(compact('nanny'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ServiceMember\ServiceMember  $nanny
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateNannyMemberRequest $request, Hospital $hospital, ServiceMember $nanny)
    {
        $this->nannies->update($nanny, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.nanny.index', $hospital->id)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $nanny
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hospital $hospital, ServiceMember $nanny)
    {
        $this->nannies->delete($nanny);

        return redirect()
            ->route('backend.hospital.nanny.index', $hospital->id)
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete(Hospital $hospital, $id)
    {
        $this->nannies->forceDelete($id);

        return redirect()
            ->route('backend.hospital.nanny.deleted', $hospital->id)
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore(Hospital $hospital, $id)
    {
        $this->nannies->restore($id);

        return redirect()
            ->route('backend.hospital.nanny.deleted', $hospital->id)
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $nannies = $hospital->service_members()
                ->onlyTrashed()
                ->where('type', 2)
                ->where('real_name', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $nannies = $hospital->service_members()
                ->onlyTrashed()
                ->where('type', 2)
                ->paginate(10);
        }

        return view('backend.hospital.nanny.index')
            ->with(compact('hospital'))
            ->with(compact('nannies'));
    }
}
