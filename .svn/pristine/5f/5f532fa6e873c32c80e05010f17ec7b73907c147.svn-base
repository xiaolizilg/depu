<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\Taxi\Taxi;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TaxiRepository.
 */
class TaxiRepository extends BaseRepository
{
    const MODEL = Taxi::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $taxi = $this->createTaxiStub($data);

        DB::transaction(function () use ($taxi) {
            if ($taxi->save()) {

                // event(new TaxiCreated($taxi));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $taxi, array $input)
    {
        $data = $input['data'];

        $taxi->cover_id    = $data['cover_id'];
        $taxi->avatar_id   = $data['avatar_id'];
        $taxi->desc        = isset($data['desc']) ? $data['desc'] : '';
        $taxi->info        = isset($data['info']) ? $data['info'] : '';
        $taxi->members     = $data['members'];
        $taxi->title       = $data['title'];
        $taxi->real_name   = $data['real_name'];
        $taxi->mobile      = $data['mobile'];

        DB::transaction(function () use ($taxi) {
            if ($taxi->save()) {

                // event(new TaxiUpdated($taxi));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $taxi)
    {
        if ($taxi->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($taxi->delete()) {
            // event(new TaxiDeleted($taxi));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $taxi = $this->query()->withTrashed()->find($id);

        if (is_null($taxi->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($taxi) {
            if ($taxi->forceDelete()) {
                // event(new TaxiPermanentlyDeleted($taxi));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $taxi = $this->query()->withTrashed()->find($id);

        if (is_null($taxi->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($taxi->restore()) {
            // event(new TaxiRestored($taxi));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createTaxiStub($input)
    {
        $taxi = self::MODEL;
        $taxi = new $taxi;
        $taxi->hospital_id = $input['hospital_id'];
        $taxi->cover_id    = $input['cover_id'];
        $taxi->title       = $input['title'];
        $taxi->desc        = isset($input['desc']) ? $input['desc'] : '';
        $taxi->info        = isset($input['info']) ? $input['info'] : '';
        $taxi->members     = $input['members'];
        $taxi->avatar_id   = $input['avatar_id'];
        $taxi->real_name   = $input['real_name'];
        $taxi->mobile      = $input['mobile'];
        $taxi->status      = 1;
        
        return $taxi;
    }
}
