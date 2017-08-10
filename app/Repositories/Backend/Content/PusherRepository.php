<?php

namespace App\Repositories\Backend\Content;

use App\Models\Pusher\Pusher;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;
use JPush\Client;

/**
 * Class PusherRepository.
 */
class PusherRepository extends BaseRepository
{
    const MODEL = Pusher::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $pusher = $this->createPusherStub($data);

        DB::transaction(function () use ($pusher) {
            if ($pusher->save()) {

                // $pusher = (new Client('4ac38e467f98e458ed74abbb', '7c74e12de51cdffbd2b70317'))->pusher();

                // $pusher->setPlatform(['ios', 'android'])
                //     ->addAllAudience()
                //     ->setNotificationAlert('Hello')
                //     ->send();

                // event(new PusherCreated($pusher));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    protected function createPusherStub($input)
    {
        $pusher = self::MODEL;
        $pusher = new $pusher;
        $pusher->user_id = $input['user_id'];
        $pusher->event   = $input['event'];
        $pusher->role_id = isset($input['role_id']) ? $input['role_id'] : 0;
        $pusher->role    = $input['role'];
        $pusher->title   = $input['title'];
        $pusher->content = $input['content'];
        $pusher->status  = 1;
        
        return $pusher;
    }
}
