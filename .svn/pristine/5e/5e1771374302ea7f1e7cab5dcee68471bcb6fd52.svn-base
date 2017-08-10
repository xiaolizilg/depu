@extends('layouts.backend')

@section('title', '项目管理')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="projects">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">数据表</h4>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>名称</th>
                            <th>简介</th>
                            <th>费用</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($projects as $project)
                        <tr>
                            <td>{{$project->id}}</td>
                            <td>{{$project->title}}</td>
                            <td>{{str_limit($project->info, 60)}}</td>
                            <td>{{$project->price}}</td>
                            <td>{!! $project->action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $projects->appends(['search_word' => request()->input('search_word')])->links() : $projects->links() }}
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