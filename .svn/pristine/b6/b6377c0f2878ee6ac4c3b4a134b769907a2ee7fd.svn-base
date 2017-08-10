<?php

namespace App\Repositories\Backend\Account;

use App\Models\User\User;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon as Carbon;

/**
 * Class AdminRepository.
 */
class AdminRepository extends BaseRepository
{
    const MODEL = User::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $admin = $this->createAdminStub($data);

        DB::transaction(function () use ($admin, $data) {
            if ($admin->save()) {
                $admin->accounts()->create([
                    'guard'     => 1,
                    'type'      => 3,
                    'name'      => $data['name'],
                    'password'  => bcrypt($data['password']),
                    'api_token' => str_random(60),
                ]);

                $admin->info()->create([
                    'real_name' => $data['real_name'],
                    'mobile'    => $data['mobile'],
                    'sex'       => $data['sex'],
                    'birthday'  => Carbon::parse($data['birthday'])->format('Ymd'),
                ]);

                $admin->extend()->create([]);

                // event(new AdminCreated($admin));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $admin, array $input)
    {
        $data = $input['data'];

        $admin->avatar_id = $data['avatar_id'];
        $admin->name      = isset($data['nickname']) ? $data['nickname'] : $data['name'];

        DB::transaction(function () use ($admin, $data) {
            if ($admin->save()) {

                $admin->info()->update([
                    'real_name' => $data['real_name'],
                    'mobile'    => $data['mobile'],
                    'sex' => $data['sex'],
                    'birthday' => Carbon::parse($data['birthday'])->format('Ymd'),
                ]);

                // event(new AdminUpdated($admin));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function updatePassword(Model $admin, $input)
    {
        if ($admin->accounts()->whereIn('type', [1,2,3])->update([
                'password' => bcrypt($input['password'])
            ])) {
            // event(new AdminPasswordChanged($admin));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.update_password_error'));
    }

    public function mark(Model $admin, $status)
    {
        if (auth()->id() == $admin->id && $status == 0) {
            throw new GeneralException(__('exceptions.backend.cant_deactivate_self'));
        }

        $admin->status = $status;

        switch ($status) {
            case 0:
                // event(new AdminDeactivated($admin));
            break;

            case 1:
                // event(new AdminReactivated($admin));
            break;
        }

        if ($admin->save()) {
            return true;
        }

        throw new GeneralException(__('exceptions.backend.mark_error'));
    }

    public function delete(Model $admin)
    {
        if (auth()->id() == $admin->id) {
            throw new GeneralException(__('exceptions.backend.cant_delete_self'));
        }

        if ($admin->id == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_admin'));
        }

        if ($admin->delete()) {
            // event(new AdminDeleted($admin));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $admin = $this->query()->withTrashed()->find($id);

        if (is_null($admin->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($admin) {
            if ($admin->forceDelete()) {
                // event(new AdminPermanentlyDeleted($admin));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $admin = $this->query()->withTrashed()->find($id);
        
        if (is_null($admin->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($admin->restore()) {
            // event(new UserRestored($admin));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    public function query()
    {
        return parent::query()->where(['guard' => 1]);
    }

    protected function createAdminStub($input)
    {
        $admin = self::MODEL;
        $admin = new $admin;
        $admin->guard  = 1;
        $admin->avatar_id = $input['avatar_id'];
        $admin->name   = isset($input['nickname']) ? $input['nickname'] : $input['name'];
        $admin->status = isset($input['status']) ? 1 : 0;

        return $admin;
    }
}
