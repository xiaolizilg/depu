<?php

namespace App\Http\Controllers\Backend\Project;

use App\Models\Project\Project;
use App\Http\Controllers\Controller;
use App\Http\Requests\Backend\Project\UpdateProjectRequest;
use App\Repositories\Backend\Project\ProjectRepository;

class ProjectController extends Controller
{
    protected $projects;

    public function __construct(ProjectRepository $projects)
    {
        $this->projects = $projects;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $projects = $this->projects->paginate();

        return view('backend.project.index')
            ->with(compact('projects'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Project\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function edit(Project $project)
    {
        return view('backend.project.edit')
            ->with(compact('project'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Project\Project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateProjectRequest $request, Project $project)
    {
        $this->projects->update($project, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.project.index')
            ->with('success', __('alerts.backend.updated'));
    }
}
