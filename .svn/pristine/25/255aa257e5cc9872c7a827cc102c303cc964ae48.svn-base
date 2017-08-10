<?php

namespace App\Repositories\Backend\Content;

use App\Models\Ad\Ad;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class AdRepository.
 */
class AdRepository extends BaseRepository
{
    const MODEL = Ad::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $ad = $this->createAdStub($data);

        DB::transaction(function () use ($ad) {
            if ($ad->save()) {

                // event(new AdCreated($ad));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $ad, array $input)
    {
        $data = $input['data'];

        $ad->url      = $data['url'];
        $ad->title    = $data['title'];
        $ad->cover_id = $data['cover_id'];

        DB::transaction(function () use ($ad) {
            if ($ad->save()) {

                // event(new AdUpdated($ad));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $ad)
    {
        if ($ad->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($ad->delete()) {
            // event(new AdDeleted($ad));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $ad = $this->query()->withTrashed()->find($id);

        if (is_null($ad->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($ad) {
            if ($ad->forceDelete()) {
                // event(new AdPermanentlyDeleted($ad));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $ad = $this->query()->withTrashed()->find($id);

        if (is_null($ad->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($ad->restore()) {
            // event(new AdRestored($ad));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createAdStub($input)
    {
        $ad = self::MODEL;
        $ad = new $ad;
        $ad->url      = $input['url'];
        $ad->cover_id = $input['cover_id'];
        $ad->title    = $input['title'];
        $ad->status   = 1;
        
        return $ad;
    }
}
