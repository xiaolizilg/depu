<?php

namespace App\Http\Controllers\Api\User;

use App\Http\Controllers\Controller;
use App\Http\Requests\Api\User\GetCommentRequest;
use App\Http\Requests\Api\User\UpdateProfileRequest;
use App\Http\Requests\Api\User\ComplaintRequest;
use App\Http\Requests\Api\User\ChangePasswordRequest;
use App\Http\Requests\Api\User\ValidateCodeRequest;
use App\Repositories\Api\User\UserRepository;

class MeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $user_info = [
            'avatar'       => auth()->user()->me->avatar,
            'name'         => auth()->user()->me->name,
            'admin_mobile' => '',
        ];

        if (auth()->user()->me->orders()->where('status', '<=', 2)->count()) {
            $user_info['admin_mobile'] = auth()->user()->me->own_admin->info->mobile;
        }

        return api(
                compact('user_info')
            );
    }

    public function info()
    {
        $province = 0 < auth()->user()->me->info->province_id ? auth()->user()->me->info->province->name : '';
        $city = 0 < auth()->user()->me->info->city_id ? auth()->user()->me->info->city->name : '';
        $area = 0 < auth()->user()->me->info->area_id ? auth()->user()->me->info->area->name : '';

        $user_info = [
            'avatar'           => auth()->user()->me->avatar,
            'name'             => auth()->user()->me->name,
            'real_name'        => auth()->user()->me->info->real_name,
            'sex'              => auth()->user()->me->info->sex,
            'sex_desc'         => auth()->user()->me->info->sex_desc,
            'birthday'         => auth()->user()->me->info->birthday,
            'mobile'           => auth()->user()->me->info->mobile,
            'address'          => auth()->user()->me->info->address,
            'province'         => $province,
            'city'             => $city,
            'area'             => $area,
            'province_id'      => auth()->user()->me->info->province_id,
            'city_id'          => auth()->user()->me->info->city_id,
            'area_id'          => auth()->user()->me->info->area_id,
            'attendant'        => auth()->user()->me->info->attendant,
            'attendant_mobile' => auth()->user()->me->info->attendant_mobile,
            'family'           => auth()->user()->me->info->family,
            'family_mobile'    => auth()->user()->me->info->family_mobile,
            'person_card'      => auth()->user()->me->info->person_card,
        ];

        return api(
                compact('user_info')
            );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UpdateProfileRequest $request)
    {
        if (empty($request->all())) {
            return api();
        }

        if ($request->has('avatar_id')) {
            auth()->user()->me()->update($request->only('avatar_id'));
        }

        if ($request->has('name')) {
            auth()->user()->me()->update($request->only('name'));
        }

        if (empty($request->except('avatar_id', 'name'))) {
            return api();
        }

        auth()->user()->me->info()->update($request->except('avatar_id', 'name'));

        return api();
    }

    public function complaint(ComplaintRequest $request)
    {
        auth()->user()->me->complaints()->create([
                'trip_info_id' => $request->has('trip_info_id') ? $request->input('trip_info_id') : 0,
                'type'     => $request->input('type'),
                'mobile'   => $request->has('mobile') ? $request->input('mobile') : '',
                'content'  => $request->has('content') ? $request->input('content') : '',
                'image_ids' => $request->has('image_ids') ? implode(',', $request->input('image_ids')) : '',
                'status'   => 1,
            ]);

        return api();
    }

    public function changePassword(ChangePasswordRequest $request, UserRepository $users)
    {
        if (
                ($request->input('code') == cache()->get(config('auth.user_auths.reset_password') . '|' . $request->input('name'))) &&
                $users->changeMobileAccountPassword($request->all())
            ) {
            return api();
        }
        return api([], 1004);
    }

    public function validateCode(ValidateCodeRequest $request)
    {
        if (
                ($request->input('code') == cache()->get(config('auth.user_auths.reset_password') . '|' . $request->input('name')))
            ) {
            return api();
        }
        
        return api([], 1004);
    }

    public function comment(GetCommentRequest $request)
    {
        $commentableType = [
            '\App\Models\User\User' => [0, 1, 13],
            '\App\Models\Hospital\Hospital' => [5, 11, 12],
            '\App\Models\Doctor\Doctor' => [6, 7, 8, 9],
            '\App\Models\ServiceMember\ServiceMember' => [2],
            '\App\Models\Taxi\Taxi' => [3],
            '\App\Models\Hotal\Hotal' => [4],
            '\App\Models\Tourism\Tourism' => [10],
        ];

        $comments = [];

        foreach ($commentableType as $key => $val) {
            if (in_array($request->input('type'), $val)) {
                $comments = $key::find($request->input('service_id'))
                    ->comments()
                    ->where('user_id', auth()->user()->user_id)
                    ->where('trip_id', $request->input('trip_id'))
                    ->orderBy('id', 'desc')
                    ->get(['id', 'user_id', 'starts', 'image_ids', 'content', 'created_at'])
                    ->map(function($item){
                        $item->images = $item->images;
                        $item->user_avatar = $item->user->avatar;
                        $item->user_name = $item->user->name;
                        $item->reply_content = $item->replies->map->content;
                        unset($item->user);
                        unset($item->replies);

                        return $item;
                    });
            }
        }

        return api(
                compact('comments')
            );
    }
}
