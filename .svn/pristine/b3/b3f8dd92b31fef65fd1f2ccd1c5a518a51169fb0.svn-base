<?php

namespace App\Repositories\Backend\Content;

use App\Models\Agreement\Agreement;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class AgreementRepository.
 */
class AgreementRepository extends BaseRepository
{

    const MODEL = Agreement::class;

    public function update(Model $agreement, array $input)
    {
        $data = $input['data'];

        $agreement->content   = $data['content'];

        DB::transaction(function () use ($agreement) {
            if ($agreement->save()) {

                // event(new AgreementUpdated($agreement));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }
}
