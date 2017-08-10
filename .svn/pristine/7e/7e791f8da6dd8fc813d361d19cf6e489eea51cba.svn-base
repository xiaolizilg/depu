@extends('layouts.backend')

@section('title', '轮播图管理')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="banners">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    @if('backend.content.banner.deleted' != Route::currentRouteName())
                    <a href="{{ route('backend.content.banner.deleted') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="回收站"><i class="fa fa-trash"></i></a>
                    @else
                    <a href="{{ route('backend.content.banner.index') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="数据表"><i class="fa fa-search"></i></a>
                    @endif
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">数据表</h4>
            </div>
            <div class="panel-body">
                <div class="row m-b-20">
                    <div class="col-xs-4">
                        @if('backend.content.banner.deleted' != Route::currentRouteName())
                        <a href="{{ route('backend.content.banner.create') }}" class="btn btn-sm btn-inverse">添&nbsp;加</a>
                        @endif
                    </div>
                    <div class="col-xs-8">
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>PC端轮播图</th>
                            <th>移动端轮播图</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($banners as $banner)
                        <tr>
                            <td>{{$banner->id}}</td>
                            <td><img height="30" style="max-width: 30px;" src="{{$banner->pc_image}}" alt="{{$banner->pc_image}}"></td>
                            <td><img height="30" style="max-width: 30px;" src="{{$banner->mobile_image}}" alt="{{$banner->mobile_image}}"></td>
                            <td>{!! $banner->action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $banners->appends(['search_word' => request()->input('search_word')])->links() : $banners->links() }}
            </div>
        </div>
        <!-- end panel -->
    </div>
</div>
@endsection

@section('page_scripts')
<script src="{{ asset('backend/assets/js/apps.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
    });
</script>
@endsection