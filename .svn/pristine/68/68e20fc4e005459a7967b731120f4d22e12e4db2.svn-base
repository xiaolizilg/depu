@extends('layouts.backend')

@section('title', '编辑资讯')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css') }}" rel="stylesheet" />
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
                <h4 class="panel-title">编辑资讯</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.content.news.update', $news) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">资讯信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2">封面 :</label>
                        <div class="col-md-8 col-sm-8">
                            <div id="avatar_box" class="m-b-10" style="width:200px">
                                <div class="profile-image"><img class="m-auto" src="{{ $news->cover }}" title="{{ $news->cover }}" height="100%" /></div>
                            </div>
                            <input class="form-control" type="text" name="cover_id" id="cover_id" value="{{ $news->cover_id }}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2">标题 :</label>
                        <div class="col-md-8 col-sm-8">
                            <input class="form-control" value="{{ $news->title }}" type="text" name="title" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="标题" data-parsley-required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2">描述 :</label>
                        <div class="col-md-8 col-sm-8">
                            <input class="form-control" value="{{ $news->desc }}" type="text" name="desc" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="描述" data-parsley-required="true"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2">内容 :</label>
                        <div class="col-md-8 col-sm-8">
                            <textarea id="uedit_container" name="content">{{ $news->content }}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2">发布时间 :</label>
                        <div class="col-md-8 col-sm-8">
                            <div class="input-group date">
                                <input type="text" value="{{ $news->published_at }}" name="published_at" class="form-control" data-parsley-required="true" placeholder="年-月-日"/>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2">热门推荐 :</label>
                        <div class="col-md-8 col-sm-8">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="is_hot" value="0" {{ 0 == $news->is_hot ? 'checked' : '' }}/> 否
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="is_hot" value="1" {{ 1 == $news->is_hot ? 'checked' : '' }}/> 是
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2"></label>
                        <div class="col-md-8 col-sm-8">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.content.news.index') }}" class="btn btn-white">返回</a>
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
<script src="{{ asset('backend/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.zh.min.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/uploadify/js/jquery.uploadifive.min.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/uedit/ueditor.all.min.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/uedit/ueditor.config.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
        $(".date").datepicker({
            format: "yyyy-mm-dd",
            language: "{{ config('app.locale') }}",
            autoclose: true
        });
        $("#cover_id").uploadifive({
            "uploadScript" : "{{ route('api.user.image.post') }}",
            "onUploadComplete" : function(file, data) {
                var body = eval("("+data+")").body;
                $("#cover_id").val(body.id);
                $("#avatar_box").html('<div class="profile-image"><img class="m-auto" src="'+body.url+'" title="'+body.url+'" height="100%" /></div>');
            }
        });
        var ue = UE.getEditor('uedit_container');
    });
</script>
@endsection