<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\Uploader\ImageRequest;
use App\Http\Requests\Uploader\FileRequest;
use App\Repositories\UploaderRepository;

class UploaderController extends Controller
{
    protected $uploader;

    public function __construct(UploaderRepository $uploader)
    {
        $this->uploader = $uploader;
    }

    public function image(ImageRequest $request)
    {
        $file = $this->uploader->uploadImage($request);

        return api($file);
    }

    public function file(FileRequest $request)
    {
        $file = $this->uploader->uploadFile($request);

        return api($file);
    }
}
