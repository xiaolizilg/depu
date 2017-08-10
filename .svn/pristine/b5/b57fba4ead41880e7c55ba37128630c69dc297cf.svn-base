<?php

namespace App\Repositories\Backend\Hospital;

use App\Models\Comment\Comment;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class CommentRepository.
 */
class CommentRepository extends BaseRepository
{
    const MODEL = Comment::class;

    public function update(Model $comment, array $input)
    {
        $data = $input['data'];

        DB::transaction(function () use ($comment, $data) {
            if ($comment->save()) {

                $comment->replies()->create([
                        'user_id' => $data['user_id'],
                        'content' => $data['content'],
                        'status'  => 1,
                    ]);

                // event(new CommentUpdated($comment));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function delete(Model $comment)
    {
        if ($comment->delete()) {
            $comment->replies()->delete();

            // event(new CommentDeleted($comment));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function mark(Model $comment, $status)
    {
        $comment->status = $status;

        switch ($status) {
            case 0:
                // event(new CommentDeactivated($comment));
            break;

            case 1:
                // event(new CommentReactivated($comment));
            break;
        }

        if ($comment->save()) {
            return true;
        }

        throw new GeneralException(__('exceptions.backend.mark_error'));
    }

    public function forceDelete($id)
    {
        $comment = $this->query()->withTrashed()->find($id);

        if (is_null($comment->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($comment) {
            if ($comment->forceDelete()) {

                $comment->replies()->forceDelete();

                // event(new CommentPermanentlyDeleted($comment));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $comment = $this->query()->withTrashed()->find($id);

        if (is_null($comment->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($comment->restore()) {

            $comment->replies()->restore();

            // event(new CommentRestored($comment));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

}
