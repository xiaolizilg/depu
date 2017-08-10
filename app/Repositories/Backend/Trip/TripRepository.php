<?php

namespace App\Repositories\Backend\Trip;

use App\Models\Trip\Trip;
use App\Models\Trip\TripInfo;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class TripRepository.
 */
class TripRepository extends BaseRepository
{
    const MODEL = Trip::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $data['status'] = 2;

        $trip = $input['trip'];

        DB::transaction(function () use ($trip, $data) {
            if ($trip->trip_infos()->create($data)) {

                // event(new TripInfoCreated($trip));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function mark(Model $info, $status)
    {
        $info->status = $status;

        switch ($status) {
            case 1:
                // event(new infoDeactivated($info));
            break;

            case 2:
                // event(new infoReactivated($info));
            break;
        }

        if ($info->save()) {
            return true;
        }

        throw new GeneralException(__('exceptions.backend.mark_error'));
    }

    public function update(Model $trip, array $input)
    {
        $data = $input['data'];

        $trip->cover_id   = $data['cover_id'];
        $trip->desc       = $data['desc'];
        $trip->info       = $data['info'];
        $trip->image_ids  = $data['image_ids'];
        $trip->started_at = $data['started_at'];

        DB::transaction(function () use ($trip) {
            if ($trip->save()) {

                if (0 == $trip->type) {
                    $trip->trip()->update([
                            'started_at' => $trip->started_at,
                        ]);
                }

                // event(new TripUpdated($trip));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function forceDelete(Model $trip)
    {
        DB::transaction(function () use ($trip) {
            if ($trip->forceDelete()) {
                // event(new TripInfoPermanentlyDeleted($trip));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }
}
