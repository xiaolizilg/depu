<?php

namespace App\Repositories\Backend\Project;

use App\Models\Project\Project;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;

/**
 * Class ProjectRepository.
 */
class ProjectRepository extends BaseRepository
{
    const MODEL = Project::class;

    public function update(Model $project, array $input)
    {
        $data = $input['data'];

        $project->cover_id = $data['cover_id'];
        $project->title    = $data['title'];
        $project->info     = $data['info'];
        $project->price    = $data['price'];

        DB::transaction(function () use ($project) {
            if ($project->save()) {

                // event(new ProjectUpdated($project));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }
}
