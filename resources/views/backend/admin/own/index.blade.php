@extends('layouts.backend')

@section('title', '专属客服')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="admins">
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
                            <th>姓名</th>
                            <th>联系方式</th>
                            <th>服务客户数量</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($admins as $admin)
                        <tr>
                            <td>{{$admin->id}}</td>
                            <td>{{$admin->info->real_name}}</td>
                            <td>{{$admin->info->mobile}}</td>
                            <td>{{$admin->own_users()->count()}}</td>
                            <td>{!! $admin->own_admin_action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $admins->appends(['search_word' => request()->input('search_word')])->links() : $admins->links() }}
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