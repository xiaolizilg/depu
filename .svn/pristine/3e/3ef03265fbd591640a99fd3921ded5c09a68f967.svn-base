<?php

namespace App\Repositories\Backend\Access;

use App\Models\User\User;
use App\Models\Access\Role;
use App\Models\Access\Permission;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class RoleRepository.
 */
class RoleRepository extends BaseRepository
{
    const MODEL = Role::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $role = $this->createRoleStub($data);

        DB::transaction(function () use ($role, $data) {
            if ($role->save()) {

                // event(new RoleCreated($role));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $role, array $input)
    {
        $data = $input['data'];

        $role->guard = $data['guard'];
        $role->name  = $data['name'];
        $role->title = $data['title'];

        DB::transaction(function () use ($role, $data) {
            if ($role->save()) {

                // event(new RoleUpdated($role));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function mark(Model $role, $status)
    {
        if ($role->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_deactivate_system'));
        }

        $role->status = $status;

        switch ($status) {
            case 0:
                // event(new RoleDeactivated($role));
            break;

            case 1:
                // event(new RoleReactivated($role));
            break;
        }

        if ($role->save()) {
            return true;
        }

        throw new GeneralException(__('exceptions.backend.mark_error'));
    }

    public function delete(Model $role)
    {
        if ($role->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }

        if (!$role->permissions->isEmpty()) {
            throw new GeneralException(__('exceptions.backend.has_permissions'));
        }

        if (!$role->users->isEmpty()) {
            throw new GeneralException(__('exceptions.backend.has_users'));
        }
        
        if ($role->delete()) {
            // event(new RoleDeleted($role));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $role = $this->query()->withTrashed()->find($id);

        if (is_null($role->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($role) {
            if ($role->forceDelete()) {
                // event(new RolePermanentlyDeleted($role));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $role = $this->query()->withTrashed()->find($id);

        if (is_null($role->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($role->restore()) {
            // event(new RoleRestored($role));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    public function setRole(Model $role, array $user_ids)
    {
        $users = new User;

        $users = $users->where(['guard' => $role->guard, 'status' => 1])
            ->whereIn('id', $user_ids)
            ->get(['id']);

        if ($users->isEmpty()) {
            throw new GeneralException(trans('exceptions.backend.set_empty_role'));
        }

        $user_ids = $users->pluck('id')->all();

        $role->users()->detach($user_ids);
        $role->users()->attach($user_ids);

        // event(new RoleSetted($users));

        return true;
    }

    public function unsetRole(Model $role, $user_id)
    {
        $users = new User;

        $user = $users->where(['guard' => $role->guard])
            ->where('id', $user_id)
            ->first(['id']);

        if (empty($user)) {
            throw new GeneralException(trans('exceptions.backend.unset_empty_role'));
        }

        $role->users()->detach($user->id);

        // event(new RoleUnsetted($user));

        return true;
    }

    public function setPermission(Model $role, array $permission_ids)
    {
        $permissions = new Permission;

        $permissions = $permissions->where(['status' => 1])
            ->whereIn('id', $permission_ids)
            ->get(['id']);

        if ($permissions->isEmpty()) {
            throw new GeneralException(trans('exceptions.backend.set_empty_permission'));
        }

        $permission_ids = $permissions->pluck('id')->all();

        $role->permissions()->detach($permission_ids);
        $role->permissions()->attach($permission_ids);

        // event(new PermissionSetted($permissions));

        return true;
    }

    public function unsetPermission(Model $role, $permission_id)
    {
        $permissions = new Permission;

        $permission = $permissions->where('id', $permission_id)
            ->first(['id']);

        if (empty($permission)) {
            throw new GeneralException(trans('exceptions.backend.unset_empty_permission'));
        }

        $role->permissions()->detach($permission->id);

        // event(new PermissionSetted($permission));

        return true;
    }

    protected function createRoleStub($input)
    {
        $role = self::MODEL;
        $role = new $role;
        $role->guard = $input['guard'];
        $role->name     = $input['name'];
        $role->title    = $input['title'];
        $role->status   = isset($input['status']) && 1 == $input['status'] ? 1 : 0;
        
        return $role;
    }
}
