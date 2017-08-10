<?php

namespace App\Http\Controllers\Backend\Hospital;

use App\Models\Doctor\Doctor;
use App\Models\Hospital\Hospital;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Hospital\StoreDoctorRequest;
use App\Http\Requests\Backend\Hospital\UpdateDoctorRequest;
use App\Repositories\Backend\Hospital\DoctorRepository;
use App\Repositories\Backend\Project\CountryRepository;

class DoctorController extends Controller
{
    protected $doctors;

    public function __construct(DoctorRepository $doctors)
    {
        $this->doctors = $doctors;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Hospital $hospital)
    {
        $doctors = $hospital->doctors()->paginate(10);

        return view('backend.hospital.doctor.index')
            ->with(compact('hospital'))
            ->with(compact('doctors'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Hospital $hospital, CountryRepository $countries)
    {
        return view('backend.hospital.doctor.create')
            ->with(compact('hospital'))
            ->with(['countries' => $countries->getAll()]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreDoctorRequest $request, Hospital $hospital)
    {
        $this->doctors->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.doctor.index', $hospital->id)
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Doctor\Doctor  $doctor
     * @return \Illuminate\Http\Response
     */
    public function show(Hospital $hospital, Doctor $doctor)
    {
        return view('backend.hospital.doctor.show')
            ->with(compact('hospital'))
            ->with(compact('doctor'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Doctor\Doctor  $doctor
     * @return \Illuminate\Http\Response
     */
    public function edit(Hospital $hospital, Doctor $doctor, CountryRepository $countries)
    {
        return view('backend.hospital.doctor.edit')
            ->with(compact('hospital'))
            ->with(compact('doctor'))
            ->with(['countries' => $countries->getAll()]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Doctor\Doctor  $doctor
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateDoctorRequest $request, Hospital $hospital, Doctor $doctor)
    {
        $this->doctors->update($doctor, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.doctor.index', $hospital->id)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Doctor\Doctor  $doctor
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hospital $hospital, Doctor $doctor)
    {
        $this->doctors->delete($doctor);

        return redirect()
            ->route('backend.hospital.doctor.index', $hospital->id)
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete(Hospital $hospital, $id)
    {
        $this->doctors->forceDelete($id);

        return redirect()
            ->route('backend.hospital.doctor.deleted', $hospital->id)
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore(Hospital $hospital, $id)
    {
        $this->doctors->restore($id);

        return redirect()
            ->route('backend.hospital.doctor.deleted', $hospital->id)
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $doctors = $hospital->doctors()
                ->onlyTrashed()
                ->where('title', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $doctors = $hospital->doctors()
                ->onlyTrashed()
                ->paginate(10);
        }

        return view('backend.hospital.doctor.index')
            ->with(compact('hospital'))
            ->with(compact('doctors'));
    }
}
