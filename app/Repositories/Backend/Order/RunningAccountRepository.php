<?php

namespace App\Repositories\Backend\Order;

use App\Models\Order\RunningAccount;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class RunningAccountRepository.
 */
class RunningAccountRepository extends BaseRepository
{
    const MODEL = RunningAccount::class;
}
