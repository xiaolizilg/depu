<?php 

use App\Repositories\UploaderRepository;
use App\Models\Project\Project;
use Carbon\Carbon as Carbon;

if (! function_exists('includeRouteFiles')) {

    function includeRouteFiles($folder)
    {
        try {
            $rdi = new recursiveDirectoryIterator($folder);
            $it = new recursiveIteratorIterator($rdi);

            while ($it->valid()) {
                if (! $it->isDot() && $it->isFile() && $it->isReadable() && $it->current()->getExtension() === 'php') {
                    require $it->key();
                }

                $it->next();
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }
}

if (! function_exists('api')) {

    function api($body = [], $status = 1, $message = '')
    {
        $format = compact('status', 'message', 'body');

        $format = empty($message) ? config('api.status.' . $status, $format) : 
            array_merge(config('api.status.' . $status, $format), compact('message'));

        if (100 <= $status && 600 >= $status && 422 != $status) {
            return response()->json(array_merge(compact('body'), $format), $status);
        }
            
        return response()->json(array_merge(compact('body'), $format));
    }
}

if (! function_exists('get_image')) {

    function get_image($image_id)
    {
        $uploader = new UploaderRepository;

        $image = $uploader->find($image_id);

        if (empty($image)) {
            return asset('assets/img/miku.jpg');
        }

        return config('app.url') . '/' . $image->path;
    }
}

if (! function_exists('project')) {

    function project()
    {
        return Project::first();
    }
}

if (! function_exists('carbon')) {

    function carbon($date = '')
    {
        return Carbon::parse($date);
    }
}
