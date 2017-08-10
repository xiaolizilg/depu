<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\Pusher\Pusher;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Content\PusherRepository;

class PusherController extends Controller
{
    protected $pushers;

    public function __construct(PusherRepository $pushers)
    {
        $this->pushers = $pushers;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, Pusher $pushers)
    {
        if ($request->has('role')) {
            $pushers = $pushers->where('role', $request->input('role'));
        }

        if ($request->has('role_id') && !empty($request->input('role_id'))) {
            $pushers = $pushers->where('role_id', $request->input('role_id'));
        }

        if ($request->has('created_at') && !empty($request->input('created_at'))) {
            $pushers = $pushers->where('created_at', '>=', $request->input('created_at'))->where('created_at', '<=', carbon($request->input('created_at'))->addDay());
        }

        $pushers = $pushers->paginate(10);

        return view('backend.pusher.index')
            ->with(compact('pushers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.pusher.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->pushers->create([
                'data'  => array_merge(
                        $request->all(),
                        ['user_id' => auth()->user()->user_id]
                    ),
            ]);

        return redirect()
            ->route('backend.content.pusher.index')
            ->with('success', __('alerts.backend.created'));
    }
}
