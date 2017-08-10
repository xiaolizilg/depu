<?php

namespace App\Http\Controllers\Api;

use App\Models\News\News;
use App\Models\Hotal\Hotal;
use App\Models\Doctor\Doctor;
use App\Models\Banner\Banner;
use App\Models\Service\Service;
use App\Models\Tourism\Tourism;
use App\Models\Project\Project;
use App\Models\Country\Country;
use App\Models\Blogroll\Blogroll;
use App\Models\Hospital\Hospital;
use App\Models\Taxi\Taxi;
use App\Models\ServiceMember\ServiceMember;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HomeController extends Controller
{
    public function index(Banner $banners, Project $projects)
    {
        $service  = config('website.service_mobile', '17612888261');
        $banners  = $banners->where(['status' => 1])->orderBy('id', 'desc')->limit(4)->get(['pc_image_id', 'mobile_image_id', 'url'])->map(function($banner){
            $banner->pc_image     = $banner->pc_image;
            $banner->mobile_image = $banner->mobile_image;
            return $banner;
        });

        $projects = $projects->where(['status' => 1])->get(['id', 'title', 'cover_id'])->map(function($project){
            $project->cover = $project->cover;
            return $project;
        });

        return api(
                compact('service', 'banners', 'projects')
            );
    }

    public function blogrolls(Blogroll $blogrolls)
    {
        $blogrolls = $blogrolls->where([])->orderBy('id', 'asc')->get(['id', 'cover_id', 'title', 'url'])->map(function($item){
            $item->cover = $item->cover;
            return $item;
        });

        $service  = config('website.service_mobile', '17612888261');

        return api(
                compact('blogrolls', 'service')
            );
    }

    public function projectInfo(Project $project, Country $countries)
    {
        $project = [
            'id'    => $project->id,
            'title' => $project->title,
            'cover' => $project->cover,
            'info'  => $project->info,
        ];

        $countries = $countries->where(['status' => 1])->get(['id', 'title', 'title_en', 'cover_id'])->map(function($country){
            $country->cover = $country->cover;
            return $country;
        });

        return api(
                compact('project', 'countries')
            );
    }

    public function hospitals(Country $country)
    {
        $data = $country->hospitals()->where(['status' => 1])->paginate(10, ['id', 'cover_id', 'title', 'desc', 'price', 'comment_starts', 'comment_numbers']);

        $hospitals = $data->toArray();

        $data = $data->map(function($item){
            $item->cover  = $item->cover;
            $item->starts = $item->starts;
            return $item;
        });

        $hospitals['data'] = $data;

        return api(compact('hospitals'));
    }

    public function hospitalInfo(Hospital $hospital)
    {
        $data = $hospital->doctors()->where(['status' => 1])->paginate(10, ['id', 'avatar_id', 'country_id', 'real_name', 'desc', 'comment_starts', 'comment_numbers']);

        $doctors = $data->toArray();

        $data = $data->map(function($item){
            $item->avatar = $item->avatar;
            $item->starts = $item->starts;
            $item->images = $item->images;
            $item->country_name = $item->country->title;
            unset($item->country);

            return $item;
        });

        $doctors['data'] = $data;

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

        $images = $hospital->pictures->map(function($item){
            return [
                'title' => $item->title,
                'url' => $item->image
            ];
        });

        $hospital = [
            'id'                 => $hospital->id,
            'cover'              => $hospital->cover,
            'title'              => $hospital->title,
            'info'               => $hospital->info,
            'address_zh'         => $hospital->address_zh,
            'address_en'         => $hospital->address_en,
            'baidu_point'        => $hospital->baidu_point,
            'google_point'       => $hospital->google_point,
            'success_rate'       => $hospital->success_rate,
            'bed_numbers'        => $hospital->bed_numbers,
            'doctor_numbers'     => $hospital->doctors()->count(),
            'treatment_numbers'  => $hospital->treatment_numbers,
            'department_numbers' => $hospital->department_numbers,
            'starts'             => $hospital->starts,
            'price'              => $hospital->price,
            'images'             => $images,
        ];

        return api(
                compact('hospital', 'doctors', 'comments')
            );
    }

    public function doctors(Hospital $hospital)
    {
        $data = $hospital->doctors()->where(['status' => 1])->paginate(10, ['id', 'avatar_id', 'country_id', 'real_name', 'desc', 'comment_starts', 'comment_numbers']);

        $doctors = $data->toArray();

        $data = $data->map(function($item){
            $item->avatar = $item->avatar;
            $item->starts = $item->starts;
            $item->country_name = $item->country->title;
            unset($item->country);

            return $item;
        });

        $doctors['data'] = $data;

        return api(
                compact('doctors')
            );
    }

    public function doctorInfo(Doctor $doctor)
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

        $doctor = [
            'id'           => $doctor->id,
            'avatar'       => $doctor->avatar,
            'country_name' => $doctor->country->title,
            'real_name'    => $doctor->real_name,
            'desc'         => $doctor->desc,
            'info'         => $doctor->info,
            'success_rate' => $doctor->success_rate,
            'exp'          => $doctor->exp,
            'starts'       => $doctor->starts,
        ];

        return api(
                compact('doctor', 'comments')
            );
    }

    public function services(Service $services)
    {
        $services = $services->where(['status' => 1])->get(['id', 'icon_id', 'title', 'desc'])->map(function($item){
            $item->icon = $item->icon;

            return $item;
        });

        return api(
                compact('services')
            );
    }

    public function medicalTranslations(Hospital $hospital)
    {
        $data = $hospital->service_members()->where(['type' => 0, 'status' => 1])->paginate(10, ['id', 'avatar_id', 'country_id', 'real_name', 'sex', 'desc', 'price', 'comment_starts', 'comment_numbers']);

        $service_members = $data->toArray();

        $data = $data->map(function($item){
            $item->avatar       = $item->avatar;
            $item->country_name = $item->country->title;
            $item->sex_desc     = $item->sex_desc;
            $item->starts       = $item->starts;
            unset($item->country);

            return $item;
        });

        $service_members['data'] = $data;

        return api(
                compact('service_members')
            );
    }

    public function lifeTranslations(Hospital $hospital)
    {
        $data = $hospital->service_members()->where(['type' => 1, 'status' => 1])->paginate(10, ['id', 'avatar_id', 'country_id', 'real_name', 'sex', 'desc', 'price', 'comment_starts', 'comment_numbers']);

        $service_members = $data->toArray();

        $data = $data->map(function($item){
            $item->avatar       = $item->avatar;
            $item->country_name = $item->country->title;
            $item->sex_desc     = $item->sex_desc;
            $item->starts       = $item->starts;
            unset($item->country);

            return $item;
        });

        $service_members['data'] = $data;

        return api(
                compact('service_members')
            );
    }

    public function nannies(Hospital $hospital)
    {
        $data = $hospital->service_members()->where(['type' => 2, 'status' => 1])->paginate(10, ['id', 'avatar_id', 'country_id', 'real_name', 'sex', 'desc', 'price', 'comment_starts', 'comment_numbers']);

        $service_members = $data->toArray();

        $data = $data->map(function($item){
            $item->avatar       = $item->avatar;
            $item->country_name = $item->country->title;
            $item->sex_desc     = $item->sex_desc;
            $item->starts       = $item->starts;
            unset($item->country);

            return $item;
        });

        $service_members['data'] = $data;

        return api(
                compact('service_members')
            );
    }

    public function serviceMemberInfo(ServiceMember $member)
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

        $service_member = [
             'id'              => $member->id,
             'avatar'          => $member->avatar,
             'country_name'    => $member->country->title,
             'real_name'       => $member->real_name,
             'desc'            => $member->desc,
             'info'            => $member->info,
             'sex_desc'        => $member->sex_desc,
             'price'           => $member->price,
             'service_content' => $member->service_content,
             'starts'          => $member->starts,
        ];

        return api(
                compact('service_member', 'comments')
            );
    }

    public function hotals(Hospital $hospital)
    {
        $data = $hospital->hotals()->where(['status' => 1])->paginate(10, ['id', 'cover_id', 'title', 'title_en', 'address_zh', 'address_en', 'baidu_point', 'google_point', 'price', 'comment_starts', 'comment_numbers']);

        $hotals = $data->toArray();

        $data = $data->map(function($item){
            $item->cover  = $item->cover;
            $item->starts = $item->starts;

            return $item;
        });

        $hotals['data'] = $data;

        return api(
                compact('hotals')
            );
    }

    public function hotalInfo(Hotal $hotal)
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

        $images = $hotal->pictures->map(function($item){
            return [
                'title' => $item->title,
                'url' => $item->image
            ];
        });

        $hotal = [
            'id'                    => $hotal->id,
            'cover'                 => $hotal->cover,
            'title'                 => $hotal->title,
            'title_en'              => $hotal->title_en,
            'info'                  => $hotal->info,
            'address_zh'            => $hotal->address_zh,
            'address_en'            => $hotal->address_en,
            'baidu_point'           => $hotal->baidu_point,
            'google_point'          => $hotal->google_point,
            'hospital_baidu_point'  => $hotal->hospital->baidu_point,
            'hospital_google_point' => $hotal->hospital->google_point,
            'price'                 => $hotal->price,
            'images'                => $images,
            'price'                 => $hotal->price,
            'level'                 => $hotal->level,
            'starts'                => $hotal->starts,
        ];

        return api(
                compact('hotal', 'comments')
            );
    }

    public function taxis(Hospital $hospital)
    {
        $data = $hospital->taxis()->where(['status' => 1])->paginate(10, ['id', 'cover_id', 'title', 'desc', 'price', 'members', 'comment_starts', 'comment_numbers']);

        $taxis = $data->toArray();

        $data = $data->map(function($item){
            $item->cover     = $item->cover;
            $item->starts    = $item->starts;
            
            return $item;
        });

        $taxis['data'] = $data;

        return api(
                compact('taxis')
            );
    }

    public function taxiInfo(Taxi $taxi)
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

        $images = $taxi->pictures->map(function($item){
            return [
                'title' => $item->title,
                'url' => $item->image
            ];
        });

        $taxi = [
            'id'     => $taxi->id,
            'cover'  => $taxi->cover,
            'title'  => $taxi->title,
            'desc'   => $taxi->desc,
            'info'   => $taxi->info,
            'price'  => $taxi->price,
            'images' => $images,
            'starts' => $taxi->starts
        ];

        return api(
                compact('taxi', 'comments')
            );
    }

    public function tourisms(Hospital $hospital)
    {
        $data = $hospital->tourisms()->where(['status' => 1])->paginate(10, ['id', 'cover_id', 'title', 'price', 'desc', 'comment_starts', 'comment_numbers']);

        $tourisms = $data->toArray();

        $data = $data->map(function($item){
            $item->cover  = $item->cover;
            $item->starts = $item->starts;

            return $item;
        });

        $tourisms['data'] = $data;

        return api(
                compact('tourisms')
            );
    }

    public function tourismInfo(Tourism $tourism)
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

        $spots = $tourism->spots->map(function($item){
            $images = $item->pictures->map(function($item){
                return [
                    'title' => $item->title,
                    'url' => $item->image
                ];
            });
            
            return [
                'cover'  => $item->cover,
                'title'  => $item->title,
                'info'   => $item->info,
                'images' => $images,
            ];
        });

        $tourism = [
            'id'     => $tourism->id,
            'cover'  => $tourism->cover,
            'title'  => $tourism->title,
            'info'   => $tourism->info,
            'desc'   => $tourism->desc,
            'price'  => $tourism->price,
            'starts' => $tourism->starts,
        ];

        return api(
                compact('tourism', 'spots', 'comments')
            );
    }

    public function AllAreas()
    {
        $areas = config('website.areas');

        return api(
                compact('areas')
            );
    }

    public function provinces()
    {
        $provinces = collect(config('website.areas'))->map(function($item){
            return [
                'id'   => $item['id'],
                'name' => $item['name'],
            ];
        });

        return api(
                compact('provinces')
            );
    }

    public function citys($province_id)
    {
        $citys = collect(collect(collect(config('website.areas'))->where('id', $province_id)->first())->get('sub_areas'))->map(function($item){
            return [
                'id'   => $item['id'],
                'name' => $item['name'],
            ];
        });

        return api(
                compact('citys')
            );
    }

    public function areas($province_id, $city_id)
    {
        $areas = collect(collect(collect(collect(collect(collect(config('website.areas'))->where('id', $province_id)->first())->get('sub_areas')))->where('id', $city_id)->first())->get('sub_areas'))->map(function($item){
            return [
                'id'   => $item['id'],
                'name' => $item['name'],
            ];
        });

        return api(
                compact('areas')
            );
    }
}
