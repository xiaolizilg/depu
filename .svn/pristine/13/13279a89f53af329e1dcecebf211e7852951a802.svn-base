<?php

namespace App\Http\Controllers\Api;

use App\Models\News\News;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class NewsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(News $news)
    {
        $data = $news->where(['status' => 1])->paginate(10, ['id', 'cover_id', 'title', 'desc', 'published_at']);

        $news = $data->toArray();

        $data = $data->map(function($item){
            $item->cover  = $item->cover;
            return $item;
        });

        $news['data'] = $data;

        return api(compact('news'));
    }

    public function hots(News $news)
    {
        $news = $news->where(['status' => 1, 'is_hot' => 1])->orderBy('id', 'desc')->limit(3)->get(['id', 'cover_id', 'title', 'desc', 'published_at'])->map(function($item){
            $item->cover = $item->cover;
            return $item;
        });

        return api(
                compact('news')
            );
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\News\News  $news
     * @return \Illuminate\Http\Response
     */
    public function show(News $news)
    {

        $content = $news->content;
        $content = str_replace('src="', 'src="' . config('app.url'), $content);
        $content = '<style>p img{width: 100%}</style>' . $content;

        $news = [
            'id'           => $news->id,
            'cover'        => $news->cover,
            'title'        => $news->title,
            'content'      => $content,
            'published_at' => $news->published_at
        ];

        return api(
                compact('news')
            );
    }
}
