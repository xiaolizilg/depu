<?php

namespace App\Repositories\Backend\Content;

use App\Models\Complaint\Complaint;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ComplaintRepository.
 */
class ComplaintRepository extends BaseRepository
{
    const MODEL = Complaint::class;

    public function update(Model $complaint, array $input)
    {
        $data = $input['data'];

        $complaint->comment    = $data['comment'];
        $complaint->comment_id = $data['comment_id'];
        $complaint->status     = 2;

        DB::transaction(function () use ($complaint) {
            if ($complaint->save()) {

                // event(new ComplaintUpdated($complaint));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }
}
