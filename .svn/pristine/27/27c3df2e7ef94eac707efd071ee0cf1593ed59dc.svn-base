<?php

namespace App\Repositories\Backend\Account;

use App\Models\User\User;
use App\Models\Access\Role;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon as Carbon;

/**
 * Class UserRepository.
 */
class UserRepository extends BaseRepository
{
    const MODEL = User::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $user = $this->createUserStub($data);

        DB::transaction(function () use ($user, $data) {
            if ($user->save()) {
                $user->accounts()->create([
                    'type' => 3,
                    'name' => $data['name'],
                    'password' => bcrypt($data['password']),
                    'api_token' => str_random(60),
                ]);

                $user->info()->create([
                    'sex' => $data['sex'],
                    'birthday' => Carbon::parse($data['birthday'])->format('Ymd'),
                ]);

                $user->extend()->create([]);

                // event(new UserCreated($user));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $user, array $input)
    {
        $data = $input['data'];

        $user->avatar_id = $data['avatar_id'];
        $user->name      = isset($data['nickname']) ? $data['nickname'] : $data['name'];

        DB::transaction(function () use ($user, $data) {
            if ($user->save()) {

                $user->info()->update([
                    'sex' => $data['sex'],
                    'birthday' => Carbon::parse($data['birthday'])->format('Ymd'),
                ]);

                // event(new UserUpdated($user));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function updatePassword(Model $user, $input)
    {
        if ($user->accounts()->whereIn('type', [1,2,3])->update([
                'password' => bcrypt($input['password'])
            ])) {
            // event(new UserPasswordChanged($user));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.update_password_error'));
    }

    public function mark(Model $user, $status)
    {
        if (auth()->id() == $user->id && $status == 0) {
            throw new GeneralException(__('exceptions.backend.cant_deactivate_self'));
        }

        $user->status = $status;

        switch ($status) {
            case 0:
                // event(new UserDeactivated($user));
            break;

            case 1:
                // event(new UserReactivated($user));
            break;
        }

        if ($user->save()) {
            return true;
        }

        throw new GeneralException(__('exceptions.backend.mark_error'));
    }

    public function delete(Model $user)
    {
        if (auth()->id() == $user->id) {
            throw new GeneralException(__('exceptions.backend.cant_delete_self'));
        }

        if (in_array($user->id , config('auth.super_admins', [1]))) {
            throw new GeneralException(__('exceptions.backend.cant_delete_admin'));
        }

        if (!$user->roles->isEmpty()) {
            throw new GeneralException(__('exceptions.backend.user_has_roles'));
        }

        if ($user->delete()) {
            // event(new UserDeleted($user));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $user = $this->query()->withTrashed()->find($id);

        if (is_null($user->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($user) {
            if ($user->forceDelete()) {
                // event(new UserPermanentlyDeleted($user));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $user = $this->query()->withTrashed()->find($id);

        if (is_null($user->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($user->restore()) {
            // event(new UserRestored($user));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    public function setOwnUser(Model $own_admin, array $own_user_ids)
    {
        $this->query()->where(['status' => 1])
            ->whereIn('id', $own_user_ids)
            ->update(['own_admin_id' => $own_admin->id]);

        // event(new OwnUserSetted($users));

        return true;
    }

    public function query()
    {
        return parent::query()->where(['guard' => 0]);
    }

    protected function createUserStub($input)
    {
        $user = self::MODEL;
        $user = new $user;
        $user->guard        = 0;
        $user->avatar_id    = $input['avatar_id'];
        $user->own_admin_id = $this->getOwnAdminId();
        $user->name         = isset($input['nickname']) ? $input['nickname'] : $input['name'];
        $user->status       = isset($input['status']) && 1 == $input['status'] ? 1 : 0;
        
        return $user;
    }

    protected function getOwnAdminId()
    {
        $users = $this->query()
            ->where(['guard' => 0])
            ->select('own_admin_id', DB::raw('COUNT(id) as count'))
            ->orderBy('count', 'asc')
            ->groupBy('own_admin_id')
            ->get();

        $ownAdmins = Role::find(3)->users()->get(['id'])->pluck('id');

        $ownAdmins = $ownAdmins->diff($users->pluck('own_admin_id'));

        if (!$ownAdmins->isEmpty()) {
            return $ownAdmins->first();
        }

        return $users->pluck('own_admin_id')->first();
    }
}
