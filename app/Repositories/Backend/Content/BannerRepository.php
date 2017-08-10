<?php

namespace App\Repositories\Backend\Content;

use App\Models\Banner\Banner;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class BannerRepository.
 */
class BannerRepository extends BaseRepository
{
    const MODEL = Banner::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $banner = $this->createBannerStub($data);

        DB::transaction(function () use ($banner) {
            if ($banner->save()) {

                // event(new BannerCreated($banner));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $banner, array $input)
    {
        $data = $input['data'];

        $banner->url             = $data['url'];
        $banner->pc_image_id     = $data['pc_image_id'];
        $banner->mobile_image_id = $data['mobile_image_id'];

        DB::transaction(function () use ($banner) {
            if ($banner->save()) {

                // event(new BannerUpdated($banner));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $banner)
    {
        if ($banner->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($banner->delete()) {
            // event(new BannerDeleted($banner));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $banner = $this->query()->withTrashed()->find($id);

        if (is_null($banner->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($banner) {
            if ($banner->forceDelete()) {
                // event(new BannerPermanentlyDeleted($banner));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $banner = $this->query()->withTrashed()->find($id);

        if (is_null($banner->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($banner->restore()) {
            // event(new BannerRestored($banner));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createBannerStub($input)
    {
        $banner = self::MODEL;
        $banner = new $banner;
        $banner->url             = $input['url'];
        $banner->pc_image_id     = $input['pc_image_id'];
        $banner->mobile_image_id = $input['mobile_image_id'];
        $banner->status          = 1;
        
        return $banner;
    }
}
