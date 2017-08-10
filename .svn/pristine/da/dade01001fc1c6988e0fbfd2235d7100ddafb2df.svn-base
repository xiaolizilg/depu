@extends('layouts.backend')

@section('title', '评论管理')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="comments">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    @if('backend.comment.deleted' != Route::currentRouteName())
                    <a href="{{ route('backend.comment.deleted') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="回收站"><i class="fa fa-trash"></i></a>
                    @else
                    <a href="{{ route('backend.comment.index') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="数据表"><i class="fa fa-search"></i></a>
                    @endif
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
                            <th>评论用户</th>
                            <th>评论时间</th>
                            <th>评论服务</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($comments as $comment)
                        <tr>
                            <td>{{$comment->id}}</td>
                            <td>{{$comment->user->name}}</td>
                            <td>{{$comment->created_at}}</td>
                            <td>{{is_null($comment->commentable->title) ? $comment->commentable->real_name : $comment->commentable->title}}</td>
                            <td>{!! $comment->action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $comments->appends(['search_word' => request()->input('search_word')])->links() : $comments->links() }}
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