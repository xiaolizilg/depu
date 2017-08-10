@extends('layouts.backend')

@section('title', '编辑友情链接')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/uploadify/css/uploadifive.css') }}" rel="stylesheet" />
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-inverse" data-sortable-id="form-validation">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">编辑友情链接</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.content.blogroll.update', $blogroll) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">友情链接信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">Logo图 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="avatar_box" class="m-b-10" style="width:200px">
                            <div class="profile-image"><img class="m-auto" src="{{ $blogroll->cover }}" title="{{ $blogroll->cover }}" height="100%" /></div>
                            </div>
                            <input class="form-control" type="text" name="cover_id" id="cover_id" value="{{ $blogroll->cover_id }}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">名称 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" value="{{ $blogroll->title }}" type="text" name="title" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="名称" data-parsley-required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">地址 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" value="{{ $blogroll->url }}" type="text" name="url" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-type="url" placeholder="地址" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.content.blogroll.index') }}" class="btn btn-white">返回</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('page_scripts')
<script src="{{ asset('backend/assets/plugins/parsley/dist/parsley.js') }}"></script>
<script src="{{ asset('backend/assets/js/apps.min.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/uploadify/js/jquery.uploadifive.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
        $("#cover_id").uploadifive({
            "uploadScript" : "{{ route('api.user.image.post') }}",
            "onUploadComplete" : function(file, data) {
                var body = eval("("+data+")").body;
                $("#cover_id").val(body.id);
                $("#avatar_box").html('<div class="profile-image"><img class="m-auto" src="'+body.url+'" title="'+body.url+'" height="100%" /></div>');
            }
        });
    });
</script>
@endsection