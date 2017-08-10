<?php

namespace App\Http\Controllers\Backend\Trip;

use App\Models\Comment\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Comment\CommentRepository;

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
        $comments = $this->comments->paginate();

        return view('backend.comment.index')
            ->with(compact('comments'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Comment\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function edit(Comment $comment)
    {
        return view('backend.comment.edit')
            ->with(compact('comment'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Comment\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment)
    {
        $this->comments->update($comment, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.comment.index')
            ->with('success', __('alerts.backend.updated'));
    }
}
