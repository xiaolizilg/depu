@extends('layouts.backend')

@section('title', '编辑菜单')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css') }}" rel="stylesheet" />
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
                <h4 class="panel-title">编辑菜单</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.system.menu.update', $menu->id) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">菜单信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="title">名称 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" id="title" name="title" placeholder="名称" data-parsley-trigger="change" data-parsley-required="true" data-parsley-maxlength="240" value="{{ $menu->title }}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="desc">描述 :</label>
                        <div class="col-md-6 col-sm-6">
                            <textarea class="form-control" id="desc" name="desc" rows="4" placeholder="描述" data-parsley-trigger="change" data-parsley-maxlength="240" value="{{ $menu->desc }}" ></textarea>
                        </div>
                    </div>
                    <legend><h3 class="text-center">状态</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">跳转 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="has_url" value="0" {{ $menu->has_url == 0 ? 'checked' : '' }} /> 不允许
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="has_url" value="1" {{ $menu->has_url == 1 ? 'checked' : '' }} /> 允许
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.system.menu.index') }}" class="btn btn-white">返回</a>
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
    });
</script>
@endsection