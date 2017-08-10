@extends('layouts.backend')

@section('title', '会员')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="users">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">数据表</h4>
            </div>
            <div class="panel-body">
                <div class="row m-b-20">
                    <div class="col-xs-4">
                    </div>
                    <div class="col-xs-8">
                        <form class="navbar-form full-width text-right m-0 p-t-0 p-b-0">
                            <div class="form-group">
                                <input type="text" name="search_word" class="form-control" style="display:inline-block;" placeholder="请输入昵称..." />
                                <button type="submit" class="btn btn-search" style="right:25px;top:0px;"><i class="fa fa-search"></i></button>
                            </div>
                        </form>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>UID</th>
                            <th>昵称</th>
                            <th>性别</th>
                            <th>真实姓名</th>
                            <th>联系方式</th>
                            <th>注册时间</th>
                            <th>状态</th>
                            <th>绑定账号</th>
                            <th>档案</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($users as $user)
                        <tr>
                            <td>{{$user->id}}</td>
                            <td>{{$user->uid}}</td>
                            <td>{{$user->name}}</td>
                            <td>{{$user->info->sex_desc}}</td>
                            <td>{{$user->info->real_name}}</td>
                            <td>{{$user->info->mobile}}</td>
                            <td>{{$user->created_at}}</td>
                            <td>{!! $user->status_desc !!}</td>
                            <td>{!! $user->accounts_desc !!}</td>
                            <td><a href="{{route('backend.account.user.records', $user->id)}}" class="m-r-5 text-info">查看</a> </td>
                            <td>{!! $user->user_action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $users->appends(['search_word' => request()->input('search_word')])->links() : $users->links() }}
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