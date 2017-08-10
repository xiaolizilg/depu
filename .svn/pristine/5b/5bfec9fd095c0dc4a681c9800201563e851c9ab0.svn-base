<?php

namespace App\Repositories\Api\User;

use App\Models\User\User;
use App\Models\User\UserAccount;
use App\Models\User\UserExtend;
use App\Models\User\UserInfo;
use App\Models\Access\Role;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Collection;
use Illuminate\Database\Eloquent\Model;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
// use App\Events\Api\User\UserCreated;
use Carbon\Carbon as Carbon;

/**
 * Class UserRepository.
 */
class UserRepository extends BaseRepository
{

    const MODEL = User::class;

    public function createMobileUser(array $data)
    {
        $user = $this->createUserStub($data);

        $account = DB::transaction(function () use ($user, $data) {
            if ($user->save()) {
                $account = $user->accounts()->create([
                    'type' => 3,
                    'name' => $data['name'],
                    'password' => bcrypt($data['password']),
                    'api_token' => str_random(60),
                ]);

                $user->info()->create([]);

                $user->extend()->create([
                        'last_logined_ip' => ip2long(request()->ip()),
                        'last_logined_at' => Carbon::now(),
                    ]);

                // event(new UserCreated($user));

                return $account;
            }

            throw new GeneralException(__('exceptions.frontend.create_error'));
        });

        return $account;
    }

    public function changeMobileAccountPassword(array $data)
    {
        return UserAccount::where(['name' => $data['name'], 'type' => 3])
            ->update(['password' => bcrypt($data['password'])]);
    }

    public function findAccountBy(array $where)
    {
        return UserAccount::where($where)->first();
    }

    protected function createUserStub($input)
    {
        $user = self::MODEL;
        $user = new $user;
        $user->guard        = 0;
        $user->avatar_id    = isset($input['avatar_id']) ? $input['avatar_id'] : 0;
        $user->own_admin_id = $this->getOwnAdminId();
        $user->name         = isset($input['nickname']) ? $input['nickname'] : $input['name'];
        $user->status       = 1;

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
