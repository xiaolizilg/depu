<?php

namespace App\Repositories\Backend\Content;

use App\Models\Service\Service;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ServiceRepository.
 */
class ServiceRepository extends BaseRepository
{

    const MODEL = Service::class;

    public function update(Model $service, array $input)
    {
        $data = $input['data'];

        $service->icon_id = $data['icon_id'];
        $service->title   = $data['title'];
        $service->desc    = $data['desc'];
        $service->info    = $data['info'];

        DB::transaction(function () use ($service) {
            if ($service->save()) {

                // event(new ServiceUpdated($service));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }
}
