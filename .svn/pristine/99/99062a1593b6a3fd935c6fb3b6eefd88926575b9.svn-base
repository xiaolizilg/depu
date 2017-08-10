<?php

namespace App\Http\Controllers\Api;

use App\Models\Hotal\Hotal;
use App\Models\Doctor\Doctor;
use App\Models\Tourism\Tourism;
use App\Models\Hospital\Hospital;
use App\Models\Taxi\Taxi;
use App\Models\ServiceMember\ServiceMember;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CommentController extends Controller
{
    public function hospital(Hospital $hospital)
    {
        $data = $hospital->comments()->where('status', 1)->with('user', 'replies')->paginate(10, ['id', 'user_id', 'starts', 'image_ids', 'content', 'created_at']);

        $comments = $data->toArray();

        $data = $data->map(function($item){
            $item->images = $item->images;
            $item->user_avatar = $item->user->avatar;
            $item->user_name = $item->user->name;
            $item->reply_content = $item->replies->map->content;
            unset($item->user);
            unset($item->replies);

            return $item;
        });

        $comments['data'] = $data;

        return api(
                compact('comments')
            );
    }

    public function doctor(Doctor $doctor)
    {
        $data = $doctor->comments()->where('status', 1)->with('user', 'replies')->paginate(10, ['id', 'user_id', 'starts', 'image_ids', 'content', 'created_at']);

        $comments = $data->toArray();

        $data = $data->map(function($item){
            $item->images = $item->images;
            $item->user_avatar = $item->user->avatar;
            $item->user_name = $item->user->name;
            $item->reply_content = $item->replies->map->content;
            unset($item->user);
            unset($item->replies);

            return $item;
        });

        $comments['data'] = $data;

        return api(
                compact('comments')
            );
    }

    public function member(ServiceMember $member)
    {
        $data = $member->comments()->where('status', 1)->with('user', 'replies')->paginate(10, ['id', 'user_id', 'starts', 'image_ids', 'content', 'created_at']);

        $comments = $data->toArray();

        $data = $data->map(function($item){
            $item->images = $item->images;
            $item->user_avatar = $item->user->avatar;
            $item->user_name = $item->user->name;
            $item->reply_content = $item->replies->map->content;
            unset($item->user);
            unset($item->replies);

            return $item;
        });

        $comments['data'] = $data;

        return api(
                compact('comments')
            );
    }

    public function taxi(Taxi $taxi)
    {
        $data = $taxi->comments()->where('status', 1)->with('user', 'replies')->paginate(10, ['id', 'user_id', 'starts', 'image_ids', 'content', 'created_at']);

        $comments = $data->toArray();

        $data = $data->map(function($item){
            $item->images = $item->images;
            $item->user_avatar = $item->user->avatar;
            $item->user_name = $item->user->name;
            $item->reply_content = $item->replies->map->content;
            unset($item->user);
            unset($item->replies);

            return $item;
        });

        $comments['data'] = $data;

        return api(
                compact('comments')
            );
    }

    public function hotal(Hotal $hotal)
    {
        $data = $hotal->comments()->where('status', 1)->with('user', 'replies')->paginate(10, ['id', 'user_id', 'starts', 'image_ids', 'content', 'created_at']);

        $comments = $data->toArray();

        $data = $data->map(function($item){
            $item->images = $item->images;
            $item->user_avatar = $item->user->avatar;
            $item->user_name = $item->user->name;
            $item->reply_content = $item->replies->map->content;
            unset($item->user);
            unset($item->replies);

            return $item;
        });

        $comments['data'] = $data;

        return api(
                compact('comments')
            );
    }

    public function tourism(Tourism $tourism)
    {
        $data = $tourism->comments()->where('status', 1)->with('user', 'replies')->paginate(10, ['id', 'user_id', 'starts', 'image_ids', 'content', 'created_at']);

        $comments = $data->toArray();

        $data = $data->map(function($item){
            $item->images = $item->images;
            $item->user_avatar = $item->user->avatar;
            $item->user_name = $item->user->name;
            $item->reply_content = $item->replies->map->content;
            unset($item->user);
            unset($item->replies);

            return $item;
        });

        $comments['data'] = $data;

        return api(
                compact('comments')
            );
    }
}
