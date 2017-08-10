<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\ServiceMember\ServiceMember;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class LifeTranslationRepository.
 */
class LifeTranslationRepository extends BaseRepository
{
    const MODEL = ServiceMember::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $life = $this->createMemberStub($data);

        DB::transaction(function () use ($life) {
            if ($life->save()) {

                // event(new LifeTranslationCreated($life));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $life, array $input)
    {
        $data = $input['data'];

        $life->country_id      = $data['country_id'];
        $life->avatar_id       = $data['avatar_id'];
        $life->real_name       = $data['real_name'];
        $medical->desc            = isset($data['desc']) ? $data['desc'] : '';
        $medical->info            = isset($data['info']) ? $data['info'] : '';
        $medical->mobile          = $data['mobile'];
        $medical->sex             = $data['sex'];
        $medical->service_content = isset($data['service_content']) ? $data['service_content'] : '';

        DB::transaction(function () use ($life) {
            if ($life->save()) {

                // event(new LifeTranslationUpdated($life));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $life)
    {
        if ($life->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($life->delete()) {
            // event(new LifeTranslationDeleted($life));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $life = $this->query()->withTrashed()->find($id);

        if (is_null($life->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($life) {
            if ($life->forceDelete()) {
                // event(new LifeTranslationPermanentlyDeleted($life));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $life = $this->query()->withTrashed()->find($id);

        if (is_null($life->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($life->restore()) {
            // event(new LifeTranslationRestored($life));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    public function query()
    {
        return parent::query()->where(['type' => 1]);
    }

    protected function createMemberStub($input)
    {
        $life = self::MODEL;
        $life = new $life;
        $life->country_id      = $input['country_id'];
        $life->hospital_id     = $input['hospital_id'];
        $life->avatar_id       = $input['avatar_id'];
        $medical->desc            = isset($input['desc']) ? $input['desc'] : '';
        $medical->info            = isset($input['info']) ? $input['info'] : '';
        $medical->mobile          = $input['mobile'];
        $medical->sex             = $input['sex'];
        $medical->service_content = isset($input['service_content']) ? $input['service_content'] : '';
        $life->type            = 1;
        $life->status          = 1;
        
        return $life;
    }
}
