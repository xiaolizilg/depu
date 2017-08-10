<?php

namespace App\Repositories\Backend\Access;

use App\Models\Access\Permission;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class PermissionRepository.
 */
class PermissionRepository extends BaseRepository
{
    const MODEL = Permission::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $permission = $this->createPermissionStub($data);

        DB::transaction(function () use ($permission, $data) {
            if ($permission->save()) {

                // event(new PermissionCreated($permission));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $permission, array $input)
    {
        $data = $input['data'];

        $permission->group_id = $data['group_id'];
        $permission->name     = $data['name'];
        $permission->title    = $data['title'];

        DB::transaction(function () use ($permission, $data) {
            if ($permission->save()) {

                // event(new PermissionUpdated($permission));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function mark(Model $permission, $status)
    {
        if ($permission->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_deactivate_system'));
        }

        $permission->status = $status;

        switch ($status) {
            case 0:
                // event(new PermissionDeactivated($permission));
            break;

            case 1:
                // event(new PermissionReactivated($permission));
            break;
        }

        if ($permission->save()) {
            return true;
        }

        throw new GeneralException(__('exceptions.backend.mark_error'));
    }

    public function delete(Model $permission)
    {
        if ($permission->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }

        if (!$permission->roles->isEmpty()) {
            throw new GeneralException(__('exceptions.backend.has_roles'));
        }
        
        if ($permission->delete()) {
            // event(new PermissionDeleted($permission));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $permission = $this->query()->withTrashed()->find($id);

        if (is_null($permission->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($permission) {
            if ($permission->forceDelete()) {
                // event(new PermissionPermanentlyDeleted($permission));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $permission = $this->query()->withTrashed()->find($id);

        if (is_null($permission->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($permission->restore()) {
            // event(new PermissionRestored($permission));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createPermissionStub($input)
    {
        $permission = self::MODEL;
        $permission = new $permission;
        $permission->group_id = $input['group_id'];
        $permission->name     = $input['name'];
        $permission->title    = $input['title'];
        $permission->status   = isset($input['status']) && 1 == $input['status'] ? 1 : 0;
        
        return $permission;
    }
}
