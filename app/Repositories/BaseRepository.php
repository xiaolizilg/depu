<?php

namespace App\Repositories;

/**
 * Class BaseRepository.
 */
class BaseRepository
{
    public function getAll()
    {
        return $this->query()->get();
    }

    public function getCount()
    {
        return $this->query()->count();
    }

    public function find($id)
    {
        return $this->query()->find($id);
    }

    public function findBy(array $where)
    {
        return $this->query()->where($where)->first();
    }

    public function paginate(array $where = [])
    {
        return $this->query()->where($where)->paginate(10);
    }

    public function searchPaginate(array $search, array $where = [])
    {
        list($name, $words) = $search;

        return $this->query()->where($name, 'LIKE', $words)->where($where)->paginate(10);
    }

    public function deletedPaginate(array $where = [])
    {
        return $this->query()->onlyTrashed()->where($where)->paginate(10);
    }

    public function searchDeletedPaginate(array $search, array $where = [])
    {
        list($name, $words) = $search;

        return $this->query()->onlyTrashed()->where($name, 'LIKE', $words)->where($where)->paginate(10);
    }

    /**
     * @return mixed
     */
    public function query()
    {
        return call_user_func(static::MODEL.'::query');
    }
}
