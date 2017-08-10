<?php

namespace App\Http\Controllers\Backend\Hospital;

use App\Models\ServiceMember\ServiceMember;
use App\Models\Hospital\Hospital;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Hospital\StoreLifeMemberRequest;
use App\Http\Requests\Backend\Hospital\UpdateLifeMemberRequest;
use App\Repositories\Backend\Hospital\LifeTranslationRepository;
use App\Repositories\Backend\Project\CountryRepository;

class LifeTranslationController extends Controller
{
    protected $lifes;

    public function __construct(LifeTranslationRepository $lifes)
    {
        $this->lifes = $lifes;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $lifes = $hospital->service_members()
                ->where('type', 1)
                ->where('real_name', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $lifes = $hospital->service_members()
                ->where('type', 1)
                ->paginate(10);
        }

        return view('backend.hospital.life.index')
            ->with(compact('hospital'))
            ->with(compact('lifes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(CountryRepository $countries, Hospital $hospital)
    {
        return view('backend.hospital.life.create')
            ->with(compact('hospital'))
            ->with(['countries' => $countries->getAll()]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreLifeMemberRequest $request, Hospital $hospital)
    {
        $this->lifes->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.life.index', $hospital->id)
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $life
     * @return \Illuminate\Http\Response
     */
    public function show(Hospital $hospital, ServiceMember $life)
    {
        return view('backend.hospital.life.show')
            ->with(compact('hospital'))
            ->with(compact('life'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $life
     * @return \Illuminate\Http\Response
     */
    public function edit(Hospital $hospital, ServiceMember $life, CountryRepository $countries)
    {
        return view('backend.hospital.life.edit')
            ->with(compact('hospital'))
            ->with(['countries' => $countries->getAll()])
            ->with(compact('life'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\ServiceMember\ServiceMember  $life
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateLifeMemberRequest $request, Hospital $hospital, ServiceMember $life)
    {
        $this->lifes->update($life, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.hospital.life.index', $hospital->id)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\ServiceMember\ServiceMember  $life
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hospital $hospital, ServiceMember $life)
    {
        $this->lifes->delete($life);

        return redirect()
            ->route('backend.hospital.life.index', $hospital->id)
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete(Hospital $hospital, $id)
    {
        $this->lifes->forceDelete($id);

        return redirect()
            ->route('backend.hospital.life.deleted', $hospital->id)
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore(Hospital $hospital, $id)
    {
        $this->lifes->restore($id);

        return redirect()
            ->route('backend.hospital.life.deleted', $hospital->id)
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Hospital $hospital)
    {
        if (request()->has('search_word')) {
            $lifes = $hospital->service_members()
                ->onlyTrashed()
                ->where('type', 1)
                ->where('real_name', 'LIKE','%' . request()->input('search_word') . '%')
                ->paginate(10);
        } else {
            $lifes = $hospital->service_members()
                ->onlyTrashed()
                ->where('type', 1)
                ->paginate(10);
        }

        return view('backend.hospital.life.index')
            ->with(compact('hospital'))
            ->with(compact('lifes'));
    }
}
