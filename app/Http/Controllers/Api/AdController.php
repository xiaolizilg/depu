<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Models\Ad\Ad;
use App\Http\Controllers\Controller;

class AdController extends Controller
{
    public function index(Ad $ads)
    {
        $ads = $ads->where('status', 1)->get(['id', 'title', 'cover_id', 'url'])
            ->map(function($item){
                $item->cover = $item->cover;

                return $item;
            });

        return api(
                compact('ads')
            );
    }
}
