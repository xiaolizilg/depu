<?php

namespace App\Http\Controllers\Api;

use App\Models\Version\Version;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class VersionController extends Controller
{
    protected $versions;

    public function __construct(Version $versions)
    {
        $this->versions = $versions;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        return api([
                'last_version' => $this->versions->orderBy('code_id', 'desc')->first()
            ]);
    }

}
