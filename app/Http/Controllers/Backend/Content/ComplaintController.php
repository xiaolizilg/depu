<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\Complaint\Complaint;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Content\ReplyComplaintRequest;
use App\Repositories\Backend\Content\ComplaintRepository;

class ComplaintController extends Controller
{
    protected $complaints;

    public function __construct(ComplaintRepository $complaints)
    {
        $this->complaints = $complaints;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $complaints = $this->complaints->paginate();

        return view('backend.complaint.index')
            ->with(compact('complaints'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Complaint\Complaint  $complaint
     * @return \Illuminate\Http\Response
     */
    public function edit(Complaint $complaint)
    {
        return view('backend.complaint.edit')
            ->with(compact('complaint'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Complaint\Complaint  $complaint
     * @return \Illuminate\Http\Response
     */
    public function update(ReplyComplaintRequest $request, Complaint $complaint)
    {
        $this->complaints->update($complaint, [
                'data' => array_merge($request->all(), ['comment_id' => auth()->user()->user_id]),
            ]);

        return redirect()
            ->route('backend.content.complaint.index')
            ->with('success', __('alerts.backend.updated'));
    }
}
