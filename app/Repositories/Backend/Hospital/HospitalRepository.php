<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\Hospital\Hospital;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class HospitalRepository.
 */
class HospitalRepository extends BaseRepository
{
    const MODEL = Hospital::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $hospital = $this->createHospitalStub($data);

        DB::transaction(function () use ($hospital) {
            if ($hospital->save()) {

                // event(new HospitalCreated($hospital));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $hospital, array $input)
    {
        $data = $input['data'];

        $hospital->country_id         = $data['country_id'];
        $hospital->cover_id           = $data['cover_id'];
        $hospital->title              = $data['title'];
        $hospital->desc               = isset($data['desc']) ? $data['desc'] : '';
        $hospital->info               = isset($data['info']) ? $data['info'] : '';
        $hospital->address_zh         = $data['address_zh'];
        $hospital->address_en         = $data['address_en'];
        $hospital->price              = $data['price'];
        $hospital->success_rate       = $data['success_rate'];
        $hospital->treatment_numbers  = $data['treatment_numbers'];
        $hospital->department_numbers = $data['department_numbers'];
        $hospital->bed_numbers        = $data['bed_numbers'];

        DB::transaction(function () use ($hospital) {
            if ($hospital->save()) {

                // event(new HospitalUpdated($hospital));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $hospital)
    {
        if ($hospital->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($hospital->delete()) {
            // event(new HospitalDeleted($hospital));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $hospital = $this->query()->withTrashed()->find($id);

        if (is_null($hospital->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($hospital) {
            if ($hospital->forceDelete()) {
                // event(new HospitalPermanentlyDeleted($hospital));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $hospital = $this->query()->withTrashed()->find($id);

        if (is_null($hospital->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($hospital->restore()) {
            // event(new HospitalRestored($hospital));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createHospitalStub($input)
    {
        $hospital = self::MODEL;
        $hospital = new $hospital;
        $hospital->country_id         = $input['country_id'];
        $hospital->cover_id           = $input['cover_id'];
        $hospital->title              = $input['title'];
        $hospital->desc               = isset($input['desc']) ? $input['desc'] : '';
        $hospital->info               = isset($input['info']) ? $input['info'] : '';
        $hospital->address_zh         = $input['address_zh'];
        $hospital->address_en         = $input['address_en'];
        $hospital->price              = $input['price'];
        $hospital->success_rate       = $input['success_rate'];
        $hospital->treatment_numbers  = $input['treatment_numbers'];
        $hospital->department_numbers = $input['department_numbers'];
        $hospital->bed_numbers        = $input['bed_numbers'];
        $hospital->status             = 1;
        
        return $hospital;
    }
}
