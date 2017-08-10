<?php

namespace App\Http\Controllers\Api\User;

use App\Models\Hotal\Hotal;
use App\Models\Doctor\Doctor;
use App\Models\Tourism\Tourism;
use App\Models\Hospital\Hospital;
use App\Models\Taxi\Taxi;
use App\Models\ServiceMember\ServiceMember;
use App\Models\Order\Order;
use App\Models\User\User;
use App\Http\Controllers\Controller;
use App\Http\Requests\Api\User\CommentRequest;

class CommentController extends Controller
{
    public function hospital(CommentRequest $request, Hospital $hospital)
    {
        $image_ids = $request->has('image_ids') ? $request->input('image_ids') : [];
        $starts    = !empty($request->input('starts')) ? $request->input('starts') : 5;

        $hospital->comment_starts  += $starts;
        $hospital->comment_numbers += 1;
        if ($hospital->save()) {
            $hospital->comments()->create([
                    'user_id'   => auth()->user()->user_id,
                    'trip_id'   => $request->has('trip_id') ? $request->input('trip_id') : 0,
                    'starts'    => $starts,
                    'image_ids' => implode(',', $image_ids),
                    'content'   => $request->input('content'),
                    'status'    => 1,
                ]);
        }

        return api();
    }

    public function doctor(CommentRequest $request, Doctor $doctor)
    {
        $image_ids = $request->has('image_ids') ? $request->input('image_ids') : [];

        $starts    = !empty($request->input('starts')) ? $request->input('starts') : 5;

        $doctor->comment_starts  += $starts;
        $doctor->comment_numbers += 1;
        if ($doctor->save()) {
            $doctor->comments()->create([
                    'user_id'   => auth()->user()->user_id,
                    'trip_id'   => $request->has('trip_id') ? $request->input('trip_id') : 0,
                    'starts'    => $starts,
                    'image_ids' => implode(',', $image_ids),
                    'content'   => $request->input('content'),
                    'status'    => 1,
                ]);
        }

        return api();
    }

    public function member(CommentRequest $request, ServiceMember $member)
    {
        $image_ids = $request->has('image_ids') ? $request->input('image_ids') : [];
        $starts    = !empty($request->input('starts')) ? $request->input('starts') : 5;

        $member->comment_starts  += $starts;
        $member->comment_numbers += 1;
        if ($member->save()) {
            $member->comments()->create([
                    'user_id'   => auth()->user()->user_id,
                    'trip_id'   => $request->has('trip_id') ? $request->input('trip_id') : 0,
                    'starts'    => $starts,
                    'image_ids' => implode(',', $image_ids),
                    'content'   => $request->input('content'),
                    'status'    => 1,
                ]);
        }

        return api();
    }

    public function taxi(CommentRequest $request, Taxi $taxi)
    {
        $image_ids = $request->has('image_ids') ? $request->input('image_ids') : [];
        $starts    = !empty($request->input('starts')) ? $request->input('starts') : 5;

        $taxi->comment_starts  += $starts;
        $taxi->comment_numbers += 1;
        if ($taxi->save()) {
            $taxi->comments()->create([
                    'user_id'   => auth()->user()->user_id,
                    'trip_id'   => $request->has('trip_id') ? $request->input('trip_id') : 0,
                    'starts'    => $starts,
                    'image_ids' => implode(',', $image_ids),
                    'content'   => $request->input('content'),
                    'status'    => 1,
                ]);
        }

        return api();
    }

    public function hotal(CommentRequest $request, Hotal $hotal)
    {
        $image_ids = $request->has('image_ids') ? $request->input('image_ids') : [];
        $starts    = !empty($request->input('starts')) ? $request->input('starts') : 5;

        $hotal->comment_starts  += $starts;
        $hotal->comment_numbers += 1;
        if ($hotal->save()) {
            $hotal->comments()->create([
                    'user_id'   => auth()->user()->user_id,
                    'trip_id'   => $request->has('trip_id') ? $request->input('trip_id') : 0,
                    'starts'    => $starts,
                    'image_ids' => implode(',', $image_ids),
                    'content'   => $request->input('content'),
                    'status'    => 1,
                ]);
        }

        return api();
    }

    public function order(CommentRequest $request, Order $order)
    {
        $image_ids = $request->has('image_ids') ? $request->input('image_ids') : [];
        $starts    = !empty($request->input('starts')) ? $request->input('starts') : 5;

        $order->comments()->create([
                'user_id'   => auth()->user()->user_id,
                'trip_id'   => 0,
                'starts'    => $starts,
                'image_ids' => implode(',', $image_ids),
                'content'   => $request->input('content'),
                'status'    => 1,
            ]);

        return api();
    }

    public function ownAdmin(CommentRequest $request, User $user)
    {
        $image_ids = $request->has('image_ids') ? $request->input('image_ids') : [];
        $starts    = !empty($request->input('starts')) ? $request->input('starts') : 5;

        $user->comments()->create([
                'user_id'   => auth()->user()->user_id,
                'trip_id'   => $request->has('trip_id') ? $request->input('trip_id') : 0,
                'starts'    => $starts,
                'image_ids' => implode(',', $image_ids),
                'content'   => $request->input('content'),
                'status'    => 1,
            ]);

        return api();
    }

    public function tourism(CommentRequest $request, Tourism $tourism)
    {
        $image_ids = $request->has('image_ids') ? $request->input('image_ids') : [];
        $starts    = !empty($request->input('starts')) ? $request->input('starts') : 5;

        $tourism->comment_starts  += $starts;
        $tourism->comment_numbers += 1;
        if ($tourism->save()) {
            $tourism->comments()->create([
                    'user_id'   => auth()->user()->user_id,
                    'trip_id'   => $request->has('trip_id') ? $request->input('trip_id') : 0,
                    'starts'    => $starts,
                    'image_ids' => implode(',', $image_ids),
                    'content'   => $request->input('content'),
                    'status'    => 1,
                ]);
        }

        return api();
    }

}
