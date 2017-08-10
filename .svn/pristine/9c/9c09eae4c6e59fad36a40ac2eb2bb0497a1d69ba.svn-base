@extends('layouts.backend')

@section('title', '网站配置')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
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
                <h4 class="panel-title">网站配置</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.content.agreement.update', $agreement->id) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">客服热线</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2">客服热线 :</label>
                        <div class="col-md-8 col-sm-8">
                            <input class="form-control" type="text" value="{{ config('website.service_mobile') }}" name="service_mobile" placeholder="客服热线" data-parsley-trigger="change" data-parsley-required="true" data-parsley-type="mobile" />
                        </div>
                    </div>
                    <legend><h3 class="text-center">协议信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2">内容 :</label>
                        <div class="col-md-8 col-sm-8">
                            <textarea id="uedit_container" name="content">{{ $agreement->content }}</textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-2 col-sm-2"></label>
                        <div class="col-md-8 col-sm-8">
                            <button type="submit" class="btn btn-success">修改</button>
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
<script src="{{ asset('backend/assets/plugins/uedit/ueditor.all.min.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/uedit/ueditor.config.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
        window.UEDITOR_HOME_URL = "{{ config('app.url') }}";
        var ue = UE.getEditor('uedit_container');
    });
</script>
@endsection