<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\ServiceMember\ServiceMember;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class NannyRepository.
 */
class NannyRepository extends BaseRepository
{
    const MODEL = ServiceMember::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $nanny = $this->createMemberStub($data);

        DB::transaction(function () use ($nanny) {
            if ($nanny->save()) {

                // event(new NannyCreated($nanny));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $nanny, array $input)
    {
        $data = $input['data'];

        $nanny->country_id      = $data['country_id'];
        $nanny->avatar_id       = $data['avatar_id'];
        $nanny->real_name       = $data['real_name'];
        $nanny->desc            = isset($data['desc']) ? $data['desc'] : '';
        $nanny->info            = isset($data['info']) ? $data['info'] : '';
        $nanny->mobile          = $data['mobile'];
        $nanny->sex             = $data['sex'];
        $nanny->service_content = isset($data['service_content']) ? $data['service_content'] : '';

        DB::transaction(function () use ($nanny) {
            if ($nanny->save()) {

                // event(new NannyUpdated($nanny));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $nanny)
    {
        if ($nanny->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($nanny->delete()) {
            // event(new NannyDeleted($nanny));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $nanny = $this->query()->withTrashed()->find($id);

        if (is_null($nanny->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($nanny) {
            if ($nanny->forceDelete()) {
                // event(new NannyPermanentlyDeleted($nanny));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $nanny = $this->query()->withTrashed()->find($id);

        if (is_null($nanny->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($nanny->restore()) {
            // event(new NannyRestored($nanny));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    public function query()
    {
        return parent::query()->where(['type' => 2]);
    }

    protected function createMemberStub($input)
    {
        $nanny = self::MODEL;
        $nanny = new $nanny;
        $nanny->country_id      = $input['country_id'];
        $nanny->hospital_id     = $input['hospital_id'];
        $nanny->avatar_id       = $input['avatar_id'];
        $nanny->real_name       = $input['real_name'];
        $nanny->desc            = isset($input['desc']) ? $input['desc'] : '';
        $nanny->info            = isset($input['info']) ? $input['info'] : '';
        $nanny->mobile          = $input['mobile'];
        $nanny->sex             = $input['sex'];
        $nanny->service_content = isset($input['service_content']) ? $input['service_content'] : '';
        $nanny->type            = 2;
        $nanny->status          = 1;
        
        return $nanny;
    }
}
