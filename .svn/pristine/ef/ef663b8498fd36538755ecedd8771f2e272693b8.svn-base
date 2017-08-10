@extends('layouts.backend')

@section('title', '医疗翻译管理')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="hospital">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">医院信息</h4>
            </div>
            <div class="panel-body">
                <table class="table table-profile">
                    <tbody>
                    <td class="field">封面</td>
                        <td><img height="150" style="max-width: 150px;" src="{{$hospital->cover}}" alt="{{$hospital->cover}}"></td>
                        <tr class="divider">
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td class="field">名称</td>
                            <td>{{ $hospital->title }}</td>
                        </tr>
                        <tr>
                            <td class="field">描述</td>
                            <td>{{ $hospital->desc }}</td>
                        </tr>
                        <tr>
                            <td class="field">简介</td>
                            <td>{{ $hospital->info }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- end panel -->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="medicals">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    @if('backend.hospital.medical.deleted' != Route::currentRouteName())
                    <a href="{{ route('backend.hospital.medical.deleted', $hospital->id) }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="回收站"><i class="fa fa-trash"></i></a>
                    @else
                    <a href="{{ route('backend.hospital.medical.index', $hospital->id) }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="数据表"><i class="fa fa-search"></i></a>
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
                        @if('backend.hospital.medical.deleted' != Route::currentRouteName())
                        <a href="{{ route('backend.hospital.medical.create', $hospital->id) }}" class="btn btn-sm btn-inverse">添&nbsp;加</a>
                        @endif
                    </div>
                    <div class="col-xs-8">
                        <form class="navbar-form full-width text-right m-0 p-t-0 p-b-0">
                            <div class="form-group">
                                <input type="text" name="search_word" class="form-control" style="display:inline-block;" placeholder="请输入姓名..." />
                                <button type="submit" class="btn btn-search" style="right:25px;top:0px;"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>头像</th>
                            <th>姓名</th>
                            <th>国籍</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($medicals as $medical)
                        <tr>
                            <td>{{$medical->id}}</td>
                            <td><img height="30" style="max-width: 30px;" src="{{$medical->avatar}}" alt="{{$medical->avatar}}"></td>
                            <td>{{$medical->real_name}}</td>
                            <td>{{$medical->country->title}}</td>
                            <td>{!! $medical->medical_action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $medicals->appends(['search_word' => request()->input('search_word')])->links() : $medicals->links() }}
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