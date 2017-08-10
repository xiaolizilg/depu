<?php

namespace App\Repositories\Backend\Content;

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

        $comment->content   = $data['content'];

        DB::transaction(function () use ($comment) {
            if ($comment->save()) {

                // event(new CommentUpdated($comment));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }
}
