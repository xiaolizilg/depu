<?php

namespace App\Repositories\Backend\Content;

use App\Models\Blogroll\Blogroll;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class BlogrollRepository.
 */
class BlogrollRepository extends BaseRepository
{
    const MODEL = Blogroll::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $blogroll = $this->createBlogrollStub($data);

        DB::transaction(function () use ($blogroll) {
            if ($blogroll->save()) {

                // event(new BlogrollCreated($blogroll));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $blogroll, array $input)
    {
        $data = $input['data'];

        $blogroll->cover_id = $data['cover_id'];
        $blogroll->title    = $data['title'];
        $blogroll->url      = isset($data['url']) ? $data['url'] : '';

        DB::transaction(function () use ($blogroll) {
            if ($blogroll->save()) {

                // event(new BlogrollUpdated($blogroll));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $blogroll)
    {
        if ($blogroll->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($blogroll->delete()) {
            // event(new BlogrollDeleted($blogroll));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $blogroll = $this->query()->withTrashed()->find($id);

        if (is_null($blogroll->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($blogroll) {
            if ($blogroll->forceDelete()) {
                // event(new BlogrollPermanentlyDeleted($blogroll));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $blogroll = $this->query()->withTrashed()->find($id);

        if (is_null($blogroll->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($blogroll->restore()) {
            // event(new BlogrollRestored($blogroll));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createBlogrollStub($input)
    {
        $blogroll = self::MODEL;
        $blogroll = new $blogroll;
        $blogroll->cover_id = $input['cover_id'];
        $blogroll->title    = $input['title'];
        $blogroll->url      = isset($input['url']) ? $input['url'] : '';
        $blogroll->status   = 1;
        
        return $blogroll;
    }
}
