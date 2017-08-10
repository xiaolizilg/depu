<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\Tourism\Tourism;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TourismRepository.
 */
class TourismRepository extends BaseRepository
{
    const MODEL = Tourism::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $tourism = $this->createTourismStub($data);

        DB::transaction(function () use ($tourism) {
            if ($tourism->save()) {

                // event(new TourismCreated($tourism));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $tourism, array $input)
    {
        $data = $input['data'];

        $tourism->cover_id    = $data['cover_id'];
        $tourism->title       = $data['title'];
        $tourism->desc        = isset($data['desc']) ? $data['desc'] : '';
        $tourism->info        = isset($data['info']) ? $data['info'] : '';
        $tourism->price       = $data['price'];

        DB::transaction(function () use ($tourism) {
            if ($tourism->save()) {

                // event(new TourismUpdated($tourism));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $tourism)
    {
        if ($tourism->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($tourism->delete()) {

            $tourism->spots()->delete();
            // event(new TourismDeleted($tourism));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $tourism = $this->query()->withTrashed()->find($id);

        if (is_null($tourism->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($tourism) {
            if ($tourism->forceDelete()) {

                $tourism->spots()->forceDelete();

                // event(new TourismPermanentlyDeleted($tourism));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $tourism = $this->query()->withTrashed()->find($id);

        if (is_null($tourism->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($tourism->restore()) {

            $tourism->spots()->restore();

            // event(new TourismRestored($tourism));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createTourismStub($input)
    {
        $tourism = self::MODEL;
        $tourism = new $tourism;
        $tourism->hospital_id = $input['hospital_id'];
        $tourism->cover_id    = $input['cover_id'];
        $tourism->title       = $input['title'];
        $tourism->desc        = isset($input['desc']) ? $input['desc'] : '';
        $tourism->info        = isset($input['info']) ? $input['info'] : '';
        $tourism->price       = $input['price'];
        $tourism->status      = 1;
        
        return $tourism;
    }
}
