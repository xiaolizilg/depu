<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\Doctor\Doctor;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class DoctorRepository.
 */
class DoctorRepository extends BaseRepository
{
    const MODEL = Doctor::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $doctor = $this->createDoctorStub($data);

        DB::transaction(function () use ($doctor) {
            if ($doctor->save()) {

                // event(new DoctorCreated($doctor));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $doctor, array $input)
    {
        $data = $input['data'];

        $doctor->country_id   = $data['country_id'];
        $doctor->avatar_id    = $data['avatar_id'];
        $doctor->real_name    = $data['real_name'];
        $doctor->desc         = isset($data['desc']) ? $data['desc'] : '';
        $doctor->info         = isset($data['info']) ? $data['info'] : '';
        $doctor->success_rate = $data['success_rate'];
        $doctor->exp          = $data['exp'];

        DB::transaction(function () use ($doctor) {
            if ($doctor->save()) {

                // event(new DoctorUpdated($doctor));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $doctor)
    {
        if ($doctor->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($doctor->delete()) {
            // event(new DoctorDeleted($doctor));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $doctor = $this->query()->withTrashed()->find($id);

        if (is_null($doctor->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($doctor) {
            if ($doctor->forceDelete()) {
                // event(new DoctorPermanentlyDeleted($doctor));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $doctor = $this->query()->withTrashed()->find($id);

        if (is_null($doctor->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($doctor->restore()) {
            // event(new DoctorRestored($doctor));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createDoctorStub($input)
    {
        $doctor = self::MODEL;
        $doctor = new $doctor;
        $doctor->country_id   = $input['country_id'];
        $doctor->hospital_id  = $input['hospital_id'];
        $doctor->avatar_id    = $input['avatar_id'];
        $doctor->real_name    = $input['real_name'];
        $doctor->desc         = isset($input['desc']) ? $input['desc'] : '';
        $doctor->info         = isset($input['info']) ? $input['info'] : '';
        $doctor->success_rate = $input['success_rate'];
        $doctor->exp          = $input['exp'];
        $doctor->status       = 1;
        
        return $doctor;
    }
}
