<?php

namespace App\Http\Controllers\Backend\Project;

use App\Models\Country\Country;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Project\Country\StoreCountryRequest;
use App\Http\Requests\Backend\Project\Country\UpdateCountryRequest;
use App\Repositories\Backend\Project\CountryRepository;

class CountryController extends Controller
{
    protected $countrys;

    public function __construct(CountryRepository $countrys)
    {
        $this->countries = $countrys;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $countries = $this->countries->paginate();

        return view('backend.project.country.index')
            ->with(compact('countries'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.project.country.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreCountryRequest $request)
    {
        $this->countries->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.project.country.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Country\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function show(Country $country)
    {
        return view('backend.project.country.show')
            ->with(compact('country'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Country\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function edit(Country $country)
    {
        return view('backend.project.country.edit')
            ->with(compact('country'));
    }

    public function deleted()
    {
        if (request()->has('search_word')) {
            $countries = $this->countries->searchDeletedPaginate([
                    'name',
                    '%' . request()->input('search_word') . '%'
                ]);
        } else {
            $countries = $this->countries->deletedPaginate();
        }

        return view('backend.project.country.index')
            ->with(compact('countries'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Country\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateCountryRequest $request, Country $country)
    {
        $this->countries->update($country, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.project.country.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Country\Country  $country
     * @return \Illuminate\Http\Response
     */
    public function destroy(Country $country)
    {
        $this->countries->delete($country);

        return redirect()
            ->route('backend.project.country.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete($id)
    {
        $this->countries->forceDelete($id);

        return redirect()
            ->route('backend.project.country.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->countries->restore($id);

        return redirect()
            ->route('backend.project.country.deleted')
            ->with('success', __('alerts.backend.restored'));
    }
}
