<?php

namespace App\Repositories;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\Route;

/**
 * Class RouteRepository.
 */
class RouteRepository
{
    /**
     * @return mixed
     */
    public function getAllName()
    {
        return $this->query()->map(function($route){
            return Str::contains($route->getName(), 'backend') ?
                    $route->getName() : '';
        })->filter();
    }

    public function getAllGetterName()
    {
        return $this->query()->map(function($route){
            return Str::contains($route->getName(), 'backend') && Str::contains(implode('|', $route->methods()), 'GET') ?
                    $route->getName() : '';
        })->filter();
    }

    /**
     * @return mixed
     */
    public function getCount()
    {
        return $this->query()->count();
    }

    /**
     * @return mixed
     */
    public function query()
    {
        return collect(Route::getRoutes());
    }
}
