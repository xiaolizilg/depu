<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\Hotal\Hotal;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class HotalRepository.
 */
class HotalRepository extends BaseRepository
{
    const MODEL = Hotal::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $hotal = $this->createHotalStub($data);

        DB::transaction(function () use ($hotal) {
            if ($hotal->save()) {

                // event(new HotalCreated($hotal));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $hotal, array $input)
    {
        $data = $input['data'];

        $hotal->cover_id     = $data['cover_id'];
        $hotal->title        = $data['title'];
        $hotal->info         = isset($data['info']) ? $data['info'] : '';
        $hotal->mobile       = $data['mobile'];
        $hotal->address_zh   = $data['address_zh'];
        $hotal->address_en   = $data['address_en'];
        $hotal->baidu_point  = $data['baidu_point'];
        $hotal->google_point = $data['google_point'];
        $hotal->price        = $data['price'];
        $hotal->level        = $data['level'];

        DB::transaction(function () use ($hotal) {
            if ($hotal->save()) {

                // event(new HotalUpdated($hotal));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $hotal)
    {
        if ($hotal->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($hotal->delete()) {
            // event(new HotalDeleted($hotal));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $hotal = $this->query()->withTrashed()->find($id);

        if (is_null($hotal->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($hotal) {
            if ($hotal->forceDelete()) {
                // event(new HotalPermanentlyDeleted($hotal));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $hotal = $this->query()->withTrashed()->find($id);

        if (is_null($hotal->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($hotal->restore()) {
            // event(new HotalRestored($hotal));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createHotalStub($input)
    {
        $hotal = self::MODEL;
        $hotal = new $hotal;
        $hotal->hospital_id  = $input['hospital_id'];
        $hotal->cover_id     = $input['cover_id'];
        $hotal->title        = $input['title'];
        $hotal->info         = isset($input['info']) ? $input['info'] : '';
        $hotal->mobile       = $input['mobile'];
        $hotal->address_zh   = $input['address_zh'];
        $hotal->address_en   = $input['address_en'];
        $hotal->baidu_point  = $input['baidu_point'];
        $hotal->google_point = $input['google_point'];
        $hotal->level        = $input['level'];
        $hotal->price        = $input['price'];
        $hotal->status      = 1;
        
        return $hotal;
    }
}
