<?php

namespace App\Repositories\Backend\Access;

use App\Models\Access\Group;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class GroupRepository.
 */
class GroupRepository extends BaseRepository
{
    const MODEL = Group::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $group = $this->createGroupStub($data);

        DB::transaction(function () use ($group, $data) {
            if ($group->save()) {

                // event(new GroupCreated($group));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $group, array $input)
    {
        $data = $input['data'];

        $group->name  = $data['name'];
        $group->title = $data['title'];

        DB::transaction(function () use ($group, $data) {
            if ($group->save()) {

                // event(new GroupUpdated($group));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function mark(Model $group, $status)
    {
        if ($group->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_deactivate_system'));
        }

        $group->status = $status;

        switch ($status) {
            case 0:
                // event(new GroupDeactivated($group));
            break;

            case 1:
                // event(new GroupReactivated($group));
            break;
        }

        if ($group->save()) {
            return true;
        }

        throw new GeneralException(__('exceptions.backend.mark_error'));
    }

    public function delete(Model $group)
    {
        if ($group->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($group->delete()) {
            // event(new GroupDeleted($group));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $group = $this->query()->withTrashed()->find($id);

        if (is_null($group->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($group) {
            if ($group->forceDelete()) {
                // event(new GroupPermanentlyDeleted($group));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $group = $this->query()->withTrashed()->find($id);

        if (is_null($group->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($group->restore()) {
            // event(new GroupRestored($group));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createGroupStub($input)
    {
        $group = self::MODEL;
        $group = new $group;
        $group->name  = $input['name'];
        $group->title = $input['title'];
        $group->status = isset($input['status']) && 1 == $input['status'] ? 1 : 0;
        
        return $group;
    }
}
