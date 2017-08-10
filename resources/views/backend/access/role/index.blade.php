@extends('layouts.backend')

@section('title', '角色管理')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="roles">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    @if('backend.access.role.deleted' != Route::currentRouteName())
                    <a href="{{ route('backend.access.role.deleted') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="回收站"><i class="fa fa-trash"></i></a>
                    @else
                    <a href="{{ route('backend.access.role.index') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="数据表"><i class="fa fa-search"></i></a>
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
                        @if('backend.access.role.deleted' != Route::currentRouteName())
                        <a href="{{ route('backend.access.role.create') }}" class="btn btn-sm btn-inverse">添&nbsp;加</a>
                        @endif
                    </div>
                    <div class="col-xs-8">
                        <form class="navbar-form full-width text-right m-0 p-t-0 p-b-0">
                            <div class="form-group">
                                <input type="text" name="search_word" class="form-control" style="display:inline-block;" placeholder="请输入标识..." />
                                <button type="submit" class="btn btn-search" style="right:25px;top:0px;"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>标识</th>
                            <th>名称</th>
                            <th>创建时间</th>
                            <th>群组</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($roles as $role)
                        <tr>
                            <td>{{$role->id}}</td>
                            <td>{{$role->name}}</td>
                            <td>{{$role->title}}</td>
                            <td>{{$role->created_at}}</td>
                            <td>{{$role->guard_desc}}</td>
                            <td>{!! $role->status_desc !!}</td>
                            <td>{!! $role->role_action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $roles->appends(['search_word' => request()->input('search_word')])->links() : $roles->links() }}
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