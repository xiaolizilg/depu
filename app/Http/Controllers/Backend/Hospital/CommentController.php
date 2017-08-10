<?php

namespace App\Http\Controllers\Backend\Hospital;

use App\Models\Comment\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Hospital\ReplyCommentRequest;
use App\Repositories\Backend\Hospital\CommentRepository;

class CommentController extends Controller
{
    protected $comments;

    public function __construct(CommentRepository $comments)
    {
        $this->comments = $comments;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $comments = auth()->user()->me->owner_comments()->paginate(10);

        return view('backend.hospital.comment.index')
            ->with(compact('comments'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Comment\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function show(Comment $comment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Comment\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function edit(Comment $comment)
    {
        return view('backend.hospital.comment.edit')
            ->with(compact('comment'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Comment\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function update(ReplyCommentRequest $request, Comment $comment)
    {
        $this->comments->update($comment, [
                'data' => array_merge($request->all(), ['user_id' => auth()->user()->user_id]),
            ]);

        return redirect()
            ->route('backend.comment.edit', $comment)
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Comment\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comment $comment)
    {
        $this->comments->delete($comment);

        return redirect()
            ->route('backend.comment.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function restore($id)
    {
        $this->comments->restore($id);

        return redirect()
            ->route('backend.comment.deleted')
            ->with('success', __('alerts.backend.restored'));
    }

    public function mark(Comment $comment, $status)
    {
        $this->comments->mark($comment, $status);

        return redirect()
            ->route('backend.comment.index')
            ->with('success', __('alerts.backend.updated'));
    }

    public function delete($id)
    {
        $this->comments->forceDelete($id);

        return redirect()
            ->route('backend.comment.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function deleted(Comment $comment)
    {
        $comments = auth()->user()->me
            ->owner_comments()
            ->onlyTrashed()
            ->paginate(10);

        return view('backend.hospital.comment.index')
            ->with(compact('comments'));
    }
}
