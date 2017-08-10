<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\Spot\Spot;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class SpotRepository.
 */
class SpotRepository extends BaseRepository
{
    const MODEL = Spot::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $spot = $this->createSpotStub($data);

        DB::transaction(function () use ($spot) {
            if ($spot->save()) {

                // event(new SpotCreated($spot));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $spot, array $input)
    {
        $data = $input['data'];

        $spot->cover_id   = $data['cover_id'];
        $spot->title      = $data['title'];
        $spot->info       = isset($data['info']) ? $data['info'] : '';

        DB::transaction(function () use ($spot) {
            if ($spot->save()) {

                // event(new SpotUpdated($spot));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $spot)
    {
        if ($spot->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($spot->delete()) {
            // event(new SpotDeleted($spot));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $spot = $this->query()->withTrashed()->find($id);

        if (is_null($spot->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($spot) {
            if ($spot->forceDelete()) {
                // event(new SpotPermanentlyDeleted($spot));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $spot = $this->query()->withTrashed()->find($id);

        if (is_null($spot->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($spot->restore()) {
            // event(new SpotRestored($spot));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createSpotStub($input)
    {
        $spot = self::MODEL;
        $spot = new $spot;
        $spot->tourism_id = $input['tourism_id'];
        $spot->cover_id   = $input['cover_id'];
        $spot->title      = $input['title'];
        $spot->info       = isset($input['info']) ? $input['info'] : '';
        $spot->status     = 1;
        
        return $spot;
    }
}
