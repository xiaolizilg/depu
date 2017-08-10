<?php

namespace App\Repositories\Backend\Project;

use App\Models\Country\Country;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CountryRepository.
 */
class CountryRepository extends BaseRepository
{
    const MODEL = Country::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $country = $this->createCountryStub($data);

        DB::transaction(function () use ($country) {
            if ($country->save()) {

                // event(new CountryCreated($country));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $country, array $input)
    {
        $data = $input['data'];

        $country->cover_id   = $data['cover_id'];
        $country->title      = $data['title'];
        $country->title_en   = $data['title_en'];

        DB::transaction(function () use ($country) {
            if ($country->save()) {

                // event(new CountryUpdated($country));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $country)
    {
        if ($country->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($country->delete()) {
            // event(new CountryDeleted($country));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $country = $this->query()->withTrashed()->find($id);

        if (is_null($country->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($country) {
            if ($country->forceDelete()) {
                // event(new CountryPermanentlyDeleted($country));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $country = $this->query()->withTrashed()->find($id);

        if (is_null($country->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($country->restore()) {
            // event(new CountryRestored($country));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createCountryStub($input)
    {
        $country = self::MODEL;
        $country = new $country;
        $country->cover_id   = $input['cover_id'];
        $country->project_id = 1;
        $country->title      = $input['title'];
        $country->title_en   = $input['title_en'];
        $country->status     = 1;
        
        return $country;
    }
}
