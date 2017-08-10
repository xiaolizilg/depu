<?php

namespace App\Http\Controllers\Backend\Order;

use App\Models\Order\RunningAccount;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Order\RunningAccountRepository;
use Carbon\Carbon as Carbon;

class RunningAccountController extends Controller
{
    protected $runnings;

    public function __construct(RunningAccountRepository $runnings)
    {
        $this->runnings = $runnings;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, RunningAccount $runnings)
    {
        if ($request->has('account') && !empty($request->input('account'))) {
            $runnings = $runnings->where('account', 'LIKE', '%' . $request->input('account') . '%');
        }

        if ($request->has('status')) {
            $runnings = $runnings->where('status', $request->input('status'));
        }

        if ($request->has('paid_at') && !empty($request->input('paid_at'))) {
            $runnings = $runnings->where('paid_at', Carbon::parse($request->input('paid_at'))->format('Ymd'));
        }

        if ($request->has('pay_type')) {
            $runnings = $runnings->where('pay_type', $request->input('pay_type'));
        }

        $runnings = $runnings->paginate(10);

        return view('backend.running.index')
            ->with(compact('runnings'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\RunningAccount\RunningAccount  $running
     * @return \Illuminate\Http\Response
     */
    public function show(RunningAccount $running)
    {
        return view('backend.running.show')
            ->with(compact('running'));
    }
}
