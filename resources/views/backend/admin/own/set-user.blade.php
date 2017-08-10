@extends('layouts.backend')

@section('title', '分配人员')

@section('page_styles')
<link href="{{ asset('backend/assets/plugins/jquery-tag-it/css/jquery.tagit.css') }}" rel="stylesheet" />
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="admin">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">分配人员</h4>
            </div>
            <div class="panel-body">
                <table class="table table-profile">
                    <tbody>
                        <tr>
                            <td class="field">客服姓名</td>
                            <td>{{ $admin->info->real_name }}</td>
                        </tr>
                        <tr class="divider">
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td class="field">客服联系方式</td>
                            <td>{{ $admin->info->mobile }}</td>
                        </tr>
                        <tr class="divider">
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td class="field">用户ID</td>
                            <td>
                                <form id="set-own-user" method="POST" action="{{ route('backend.account.admin.set-own-user', $admin->id) }}">
                                    {!! csrf_field() !!}
                                    {!! method_field('PUT') !!}
                                    <div class="form-group">
                                        <ul class="inverse" id="user_ids">
                                        </ul>
                                    </div>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td class="field">确认授权</td>
                            <td>
                                <button type="button" onclick="javascript:$('#set-own-user').submit();" class="btn btn-sm btn-success">授权</button>
                                <a href="{{ route('backend.account.admin.index') }}" class="btn btn-sm btn-white">返回</a>
                            </td>
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
<script src="{{ asset('backend/assets/plugins/jquery-tag-it/js/tag-it.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        $("#user_ids").tagit({fieldName: "user_ids[]"});
    });
</script>
@endsection