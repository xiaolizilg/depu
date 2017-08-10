<?php

namespace App\Http\Controllers\Api\User;

use App\Models\Record\Record;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\User\GetRecordsRequest;
use App\Http\Requests\Api\User\StoreRecordRequest;
use Carbon\Carbon as Carbon;

class RecordController extends Controller
{
    protected $records;

    public function __construct(Record $records)
    {
        $this->records = $records;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(GetRecordsRequest $request)
    {
        $records = $this->records->where('status', 1)->where('user_id', auth()->user()->user_id);

        if ($request->has('started_at') && $request->has('ended_at')) {
            $records = $records
                ->where('started_at', '>=', Carbon::parse($request->input('started_at'))->format('Ym') . '00')
                ->where('ended_at', '<=', Carbon::parse($request->input('ended_at'))->format('Ym') . '00');
        }

        $records = $records->orderBy('id', 'desc')->paginate(10, ['id', 'title', 'created_at', 'started_at', 'ended_at']);

        return api(compact('records'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreRecordRequest $request)
    {
        $image_ids = !empty($request->input('image_ids')) ? $request->input('image_ids') : [];

        $this->records->create([
                'user_id'    => auth()->user()->user_id,
                'title'      => $request->input('title'),
                'desc'       => $request->input('desc'),
                'started_at' => Carbon::parse($request->input('started_at'))->format('Ymd'),
                'ended_at'   => Carbon::parse($request->input('ended_at'))->format('Ymd'),
                'image_ids'  => implode(',', $image_ids),
                'status'     => 1,
            ]);

        return api();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Record\Record  $record
     * @return \Illuminate\Http\Response
     */
    public function show(Record $record)
    {
        if (!auth()->user()->me->records()->where(['id' => $record->id])->count()) {
            return api([], 403);
        }

        $record = [
            'title'      => $record->title,
            'desc'       => $record->desc,
            'started_at' => date('Y-m-d', strtotime($record->started_at)),
            'ended_at'   => date('Y-m-d', strtotime($record->ended_at)),
            'images'     => $record->images,
        ];

        return api(compact('record'));
    }

}
