@extends('layouts.backend')

@section('title', '国家管理')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="countries">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    @if('backend.project.country.deleted' != Route::currentRouteName())
                    <a href="{{ route('backend.project.country.deleted') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="回收站"><i class="fa fa-trash"></i></a>
                    @else
                    <a href="{{ route('backend.project.country.index') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="数据表"><i class="fa fa-search"></i></a>
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
                        @if('backend.project.country.deleted' != Route::currentRouteName())
                        <a href="{{ route('backend.project.country.create') }}" class="btn btn-sm btn-inverse">添&nbsp;加</a>
                        @endif
                    </div>
                    <div class="col-xs-8">
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>封面</th>
                            <th>中文名称</th>
                            <th>英文名称</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($countries as $country)
                        <tr>
                            <td>{{$country->id}}</td>
                            <td><img height="30" style="max-width: 120px;" src="{{$country->cover}}" alt="{{$country->cover}}"></td>
                            <td>{{$country->title}}</td>
                            <td>{{$country->title_en}}</td>
                            <td>{!! $country->action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $countries->appends(['search_word' => request()->input('search_word')])->links() : $countries->links() }}
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