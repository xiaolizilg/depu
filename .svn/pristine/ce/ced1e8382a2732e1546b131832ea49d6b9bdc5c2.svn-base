<?php

namespace App\Http\Controllers\Backend\Content;

use App\Models\Blogroll\Blogroll;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Repositories\Backend\Content\BlogrollRepository;

class BlogrollController extends Controller
{
    protected $blogrolls;

    public function __construct(BlogrollRepository $blogrolls)
    {
        $this->blogrolls = $blogrolls;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $blogrolls = $this->blogrolls->paginate();

        return view('backend.blogroll.index')
            ->with(compact('blogrolls'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.blogroll.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->blogrolls->create([
                'data'  => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.blogroll.index')
            ->with('success', __('alerts.backend.created'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Blogroll\Blogroll  $blogroll
     * @return \Illuminate\Http\Response
     */
    public function show(Blogroll $blogroll)
    {
        return view('backend.blogroll.show')
            ->with(compact('blogroll'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Blogroll\Blogroll  $blogroll
     * @return \Illuminate\Http\Response
     */
    public function edit(Blogroll $blogroll)
    {
        return view('backend.blogroll.edit')
            ->with(compact('blogroll'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Blogroll\Blogroll  $blogroll
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Blogroll $blogroll)
    {
        $this->blogrolls->update($blogroll, [
                'data' => $request->all(),
            ]);

        return redirect()
            ->route('backend.content.blogroll.index')
            ->with('success', __('alerts.backend.updated'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Blogroll\Blogroll  $blogroll
     * @return \Illuminate\Http\Response
     */
    public function destroy(Blogroll $blogroll)
    {
        $this->blogrolls->delete($blogroll);

        return redirect()
            ->route('backend.content.blogroll.index')
            ->with('success', __('alerts.backend.deleted'));
    }

    public function delete($id)
    {
        $this->blogrolls->forceDelete($id);

        return redirect()
            ->route('backend.content.blogroll.deleted')
            ->with('success', __('alerts.backend.deleted_permanently'));
    }

    public function restore($id)
    {
        $this->blogrolls->restore($id);

        return redirect()
            ->route('backend.content.blogroll.deleted')
            ->with('success', __('alerts.backend.restored'));
    }

    public function deleted(Blogroll $blogrolls)
    {
        $blogrolls = $blogrolls->onlyTrashed()
            ->paginate(10);

        return view('backend.blogroll.index')
            ->with(compact('blogrolls'));
    }
}
