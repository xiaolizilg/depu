<?php

namespace App\Http\Controllers\Api\User;

use App\Models\Pusher\Pusher;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\User\GetPushsRequest;

class PushController extends Controller
{
    protected $pushers;

    public function __construct(Pusher $pushers)
    {
        $this->pushers = $pushers;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(GetPushsRequest $request)
    {
        $map_1 = ['role'=> 0];

        if ($request->input('agent') == 'ios') {
            $map_2 = ['role'=> 1];
        } elseif($request->input('agent') == 'android') {
            $map_2 = ['role'=> 2];
        } else {
            $map_2 = [];
        }

        $map_3 = [
            'role'=> 3,
            'role_id'=> auth()->user()->me->roles->map->id,
        ];

        $map_4 = [
            'role'=> 4,
            'role_id'=> auth()->user()->user_id,
        ];

        $data = $this->pushers->where($map_1)->orWhere($map_2)->orWhere(['role' => 3])->whereIn('role_id', auth()->user()->me->roles->map->id)->orWhere($map_4)
            ->orderBy('id', 'desc')->paginate(10, ['id', 'user_id', 'title', 'content', 'created_at']);

        $pushs = $data->toArray();

        $data = $data->map(function($item){
            $item->name = $item->user->name;
            $item->avatar = $item->user->avatar;
            unset($item->user);

            return $item;
        });

        $pushs['data'] = $data;

        return api(
                compact('pushs')
            );
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Pusher\Pusher  $push
     * @return \Illuminate\Http\Response
     */
    public function show(Pusher $push)
    {
        if (4 == $push->role && $push->role_id != auth()->user()->user_id) {
            return api([], 403);
        }

        $push = [
            'id'         => $push->id,
            'name'       => $push->user->name,
            'avatar'     => $push->user->avatar,
            'content'    => $push->content,
            'created_at' => $push->created_at,
        ];

        return api(
                compact('push')
            );
    }

}
