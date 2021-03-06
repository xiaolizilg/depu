@extends('layouts.backend')

@section('title', '编辑版本')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css') }}" rel="stylesheet" />
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
                <h4 class="panel-title">编辑版本</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.content.version.update', $version) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">版本信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">版本名 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" value="{{ $version->title }}" type="text" name="title" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="版本名" data-parsley-required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">版本号 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" value="{{ $version->code_id }}" type="text" name="code_id" data-parsley-trigger="change" data-parsley-required="true" data-parsley-type="integer" placeholder="版本号" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">终端 :</label>
                        <div class="col-md-6 col-sm-6">
                            <select name="platform" class="select form-control" data-parsley-required="true" >
                                <option value="0" {{ $version->platform == 0 ? 'selected' : '' }}>安卓</option>
                                <option value="1" {{ $version->platform == 1 ? 'selected' : '' }}>IOS</option>
                            </select>
                        </div>
                    </div>                    
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">下载地址 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" value="{{ $version->url }}" type="text" name="url" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" data-parsley-type="url"  placeholder="下载地址" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">描述 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" value="{{ $version->desc }}" type="text" name="desc" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="描述" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">版本更新时间 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div class="input-group date">
                                <input type="text" value="{{ $version->app_updated_at }}" name="app_updated_at" class="form-control" data-parsley-required="true" placeholder="年-月-日"/>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.content.version.index') }}" class="btn btn-white">返回</a>
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
<script src="{{ asset('backend/assets/plugins/select2/dist/js/select2.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
        $(".select").select2();
        $(".date").datepicker({
            format: "yyyy-mm-dd",
            language: "{{ config('app.locale') }}",
            autoclose: true
        });
    });
</script>
@endsection