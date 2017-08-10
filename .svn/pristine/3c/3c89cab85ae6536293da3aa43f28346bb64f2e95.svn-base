<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\News\News;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Content\NewsRepository;

class NewsController extends Controller
{
    protected $news;

    public function __construct(NewsRepository $news)
    {
        $this->news = $news;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $news = $this->news->paginate();

        return view('backend.news.index')
            ->with(compact('news'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.news.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->news->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.news.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\news\news  $news
     * @return \Illuminate\Http\Response
     */
    public function show(news $news)
    {
        return view('backend.news.show')
            ->with(compact('news'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\news\news  $news
     * @return \Illuminate\Http\Response
     */
    public function edit(news $news)
    {
        return view('backend.news.edit')
            ->with(compact('news'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\news\news  $news
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, news $news)
    {
        $this->news->update($news, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.news.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\news\news  $news
     * @return \Illuminate\Http\Response
     */
    public function destroy(news $news)
    {
        $this->news->delete($news);

        return redirect()
            ->route('backend.content.news.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete($id)
    {
        $this->news->forceDelete($id);

        return redirect()
            ->route('backend.content.news.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->news->restore($id);

        return redirect()
            ->route('backend.content.news.deleted')
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(News $news)
    {
        $news = $news->onlyTrashed()
            ->paginate(10);

        return view('backend.news.index')
            ->with(compact('news'));
    }
}
