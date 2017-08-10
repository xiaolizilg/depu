<?php

namespace App\Http\Controllers\Backend\Hospital;

use App\Models\ServiceMember\ServiceMember;
use App\Models\Hospital\Hospital;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Hospital\StoreMedicalMemberRequest;
use App\Http\Requests\Backend\Hospital\UpdateMedicalMemberRequest;
use App\Repositories\Backend\Hospital\MedicalTranslationRepository;
use App\Repositories\Backend\Project\CountryRepository;

class MedicalTranslationController extends Controller
{
    protected $medicals;

    public function __construct(MedicalTranslationRepository $medicals)
    {
        $this->medicals = $medicals;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $medicals = $hospital->service_members()
                ->where('type', 0)
                ->where('real_name', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $medicals = $hospital->service_members()
                ->where('type', 0)
                ->paginate(10);
        }

        return view('backend.hospital.medical.index')
            ->with(compact('hospital'))
            ->with(compact('medicals'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(CountryRepository $countries, Hospital $hospital)
    {
        return view('backend.hospital.medical.create')
            ->with(compact('hospital'))
            ->with(['countries' => $countries->getAll()]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreMedicalMemberRequest $request, Hospital $hospital)
    {
        $this->medicals->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.medical.index', $hospital->id)
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $medical
     * @return \Illuminate\Http\Response
     */
    public function show(Hospital $hospital, ServiceMember $medical)
    {
        return view('backend.hospital.medical.show')
            ->with(compact('hospital'))
            ->with(compact('medical'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $medical
     * @return \Illuminate\Http\Response
     */
    public function edit(Hospital $hospital, ServiceMember $medical, CountryRepository $countries)
    {
        return view('backend.hospital.medical.edit')
            ->with(compact('hospital'))
            ->with(['countries' => $countries->getAll()])
            ->with(compact('medical'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ServiceMember\ServiceMember  $medical
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateMedicalMemberRequest $request, Hospital $hospital, ServiceMember $medical)
    {
        $this->medicals->update($medical, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.medical.index', $hospital->id)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $medical
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hospital $hospital, ServiceMember $medical)
    {
        $this->medicals->delete($medical);

        return redirect()
            ->route('backend.hospital.medical.index', $hospital->id)
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete(Hospital $hospital, $id)
    {
        $this->medicals->forceDelete($id);

        return redirect()
            ->route('backend.hospital.medical.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore(Hospital $hospital, $id)
    {
        $this->medicals->restore($id);

        return redirect()
            ->route('backend.hospital.medical.deleted')
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $medicals = $hospital->service_members()
                ->onlyTrashed()
                ->where('type', 0)
                ->where('real_name', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $medicals = $hospital->service_members()
                ->onlyTrashed()
                ->where('type', 0)
                ->paginate(10);
        }

        return view('backend.hospital.medical.index')
            ->with(compact('hospital'))
            ->with(compact('medicals'));
    }
}
