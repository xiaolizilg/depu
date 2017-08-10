<?php

namespace App\Repositories;

use App\Models\Area\Area;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Route;

/**
 * Class AreaRepository.
 */
class AreaRepository extends BaseRepository
{

    const MODEL = Area::class;

    public function getTree()
    {
        
    }

}
