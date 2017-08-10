<?php

namespace App\Repositories\Backend\Content;

use App\Models\News\News;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class NewsRepository.
 */
class NewsRepository extends BaseRepository
{
    const MODEL = News::class;

    public function create(array $input)
    {
        $data = $input['data'];

        $news = $this->createNewsStub($data);

        DB::transaction(function () use ($news) {
            if ($news->save()) {

                // event(new NewsCreated($news));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $news, array $input)
    {
        $data = $input['data'];

        $news->cover_id     = $data['cover_id'];
        $news->title        = $data['title'];
        $news->desc         = $data['desc'];
        $news->content      = $data['content'];
        $news->is_hot       = $data['is_hot'];
        $news->published_at = $data['published_at'];

        DB::transaction(function () use ($news) {
            if ($news->save()) {

                // event(new NewsUpdated($news));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $news)
    {
        if ($news->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }
        
        if ($news->delete()) {
            // event(new NewsDeleted($news));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $news = $this->query()->withTrashed()->find($id);

        if (is_null($news->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($news) {
            if ($news->forceDelete()) {
                // event(new NewsPermanentlyDeleted($news));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $news = $this->query()->withTrashed()->find($id);

        if (is_null($news->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($news->restore()) {
            // event(new NewsRestored($news));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createNewsStub($input)
    {
        $news = self::MODEL;
        $news = new $news;
        $news->cover_id     = $input['cover_id'];
        $news->title        = $input['title'];
        $news->desc         = $input['desc'];
        $news->content      = $input['content'];
        $news->is_hot       = $input['is_hot'];
        $news->published_at = $input['published_at'];
        $news->status       = 1;
        
        return $news;
    }
}
