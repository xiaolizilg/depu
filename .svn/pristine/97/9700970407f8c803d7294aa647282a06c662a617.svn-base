@extends('layouts.backend')

@section('title', '添加推送')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" />
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
                <h4 class="panel-title">添加推送</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.content.pusher.store') }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    <legend><h3 class="text-center">推送信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">标题 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="title" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="标题" data-parsley-required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="role">对象 :</label>
                        <div class="col-md-4 col-sm-4">
                            <select name="role" id="role" class="select form-control" data-parsley-required="true" >
                                <option value="0" selected>全站用户</option>
                                <option value="1">ios</option>
                                <option value="2">安卓</option>
                                <option value="3">角色组</option>
                                <option value="4">用户</option>
                            </select>
                        </div>
                        <div class="col-md-2 col-sm-2">
                            <input class="form-control" disabled="disabled" type="text" id="role_id" data-parsley-trigger="change" data-parsley-type="integer" placeholder="对象ID" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="event">推送事件 :</label>
                        <div class="col-md-6 col-sm-6">
                            <select name="event" id="event" class="select form-control" data-parsley-required="true" >
                                <option value="0" selected>无操作</option>
                                <option value="1">外链跳转</option>
                                <option value="2">应用跳转</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">内容 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="content" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="内容" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.content.pusher.index') }}" class="btn btn-white">返回</a>
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
<script src="{{ asset('backend/assets/plugins/select2/dist/js/select2.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
        $(".select").select2();

        $("#role").change(function(){
            if ($(this).val() > 2) {
                $("#role_id").removeAttr('disabled').attr('name', 'role_id');
            } else {
                $("#role_id").removeAttr('name').attr('disabled', 'disabled');
            }
        });
    });
</script>
@endsection