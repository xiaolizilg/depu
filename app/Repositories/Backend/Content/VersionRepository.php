<?php

namespace App\Repositories\Backend\Content;

use App\Models\Version\Version;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class VersionRepository.
 */
class VersionRepository extends BaseRepository
{
    const MODEL = Version::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $version = $this->createVersionStub($data);

        DB::transaction(function () use ($version) {
            if ($version->save()) {

                // event(new VersionCreated($version));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $version, array $input)
    {
        $data = $input['data'];

        $version->code_id        = $data['code_id'];
        $version->title          = $data['title'];
        $version->desc           = isset($data['desc']) ? $data['desc'] : '';
        $version->url            = $data['url'];
        $version->platform       = $data['platform'];
        $version->app_updated_at = $data['app_updated_at'];

        DB::transaction(function () use ($version) {
            if ($version->save()) {

                // event(new VersionUpdated($version));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $version)
    {
        if ($version->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($version->delete()) {
            // event(new VersionDeleted($version));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $version = $this->query()->withTrashed()->find($id);

        if (is_null($version->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($version) {
            if ($version->forceDelete()) {
                // event(new VersionPermanentlyDeleted($version));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $version = $this->query()->withTrashed()->find($id);

        if (is_null($version->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($version->restore()) {
            // event(new VersionRestored($version));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createVersionStub($input)
    {
        $version = self::MODEL;
        $version = new $version;
        $version->code_id        = $input['code_id'];
        $version->title          = $input['title'];
        $version->desc           = isset($input['desc']) ? $input['desc'] : '';
        $version->url            = $input['url'];
        $version->platform       = $input['platform'];
        $version->app_updated_at = $input['app_updated_at'];
        $version->status   = 1;
        
        return $version;
    }
}
