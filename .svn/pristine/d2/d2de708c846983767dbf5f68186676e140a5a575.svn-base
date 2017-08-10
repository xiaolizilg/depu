<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\ServiceMember\ServiceMember;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class MedicalTranslationRepository.
 */
class MedicalTranslationRepository extends BaseRepository
{
    const MODEL = ServiceMember::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $medical = $this->createMemberStub($data);

        DB::transaction(function () use ($medical) {
            if ($medical->save()) {

                // event(new MedicalTranslationCreated($medical));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $medical, array $input)
    {
        $data = $input['data'];

        $medical->country_id      = $data['country_id'];
        $medical->avatar_id       = $data['avatar_id'];
        $medical->real_name       = $data['real_name'];
        $medical->desc            = isset($data['desc']) ? $data['desc'] : '';
        $medical->info            = isset($data['info']) ? $data['info'] : '';
        $medical->mobile          = $data['mobile'];
        $medical->sex             = $data['sex'];
        $medical->service_content = isset($data['service_content']) ? $data['service_content'] : '';

        DB::transaction(function () use ($medical) {
            if ($medical->save()) {

                // event(new MedicalTranslationUpdated($medical));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $medical)
    {
        if ($medical->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($medical->delete()) {
            // event(new MedicalTranslationDeleted($medical));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $medical = $this->query()->withTrashed()->find($id);

        if (is_null($medical->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($medical) {
            if ($medical->forceDelete()) {
                // event(new MedicalTranslationPermanentlyDeleted($medical));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $medical = $this->query()->withTrashed()->find($id);

        if (is_null($medical->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($medical->restore()) {
            // event(new MedicalTranslationRestored($medical));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    public function query()
    {
        return parent::query()->where(['type' => 0]);
    }

    protected function createMemberStub($input)
    {
        $medical = self::MODEL;
        $medical = new $medical;
        $medical->country_id      = $input['country_id'];
        $medical->hospital_id     = $input['hospital_id'];
        $medical->avatar_id       = $input['avatar_id'];
        $medical->real_name       = $input['real_name'];
        $medical->desc            = isset($input['desc']) ? $input['desc'] : '';
        $medical->info            = isset($input['info']) ? $input['info'] : '';
        $medical->mobile          = $input['mobile'];
        $medical->sex             = $input['sex'];
        $medical->service_content = isset($input['service_content']) ? $input['service_content'] : '';
        $medical->type            = 0;
        $medical->status          = 1;
        
        return $medical;
    }
}
