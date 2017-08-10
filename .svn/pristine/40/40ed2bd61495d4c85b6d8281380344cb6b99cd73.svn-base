@extends('layouts.backend')

@section('title', '添加菜单')
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
                <h4 class="panel-title">添加菜单</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.system.menu.store') }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    <legend><h3 class="text-center">菜单信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="name">标识 :</label>
                        <div class="col-md-6 col-sm-6">
                            <select name="name" id="name" class="select form-control">
                            @foreach($routes as $route)
                                <option value="{{ $route }}">{{ $route }}</option>
                            @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="pid">上级 :</label>
                        <div class="col-md-6 col-sm-6">
                            <select name="pid" id="pid" class="select form-control">
                                <option value="0">顶级菜单</option>
                            @foreach($menus as $menu)
                                <option value="{{ $menu->id }}">{{ $menu->title }}</option>
                            @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="title">名称 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" id="title" name="title" placeholder="名称" data-parsley-trigger="change" data-parsley-required="true" data-parsley-maxlength="240" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="icon">图标 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" id="icon" name="icon" placeholder="图标" data-parsley-trigger="change" data-parsley-maxlength="240" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="desc">描述 :</label>
                        <div class="col-md-6 col-sm-6">
                            <textarea class="form-control" id="desc" name="desc" rows="4" placeholder="描述" data-parsley-trigger="change" data-parsley-maxlength="240" ></textarea>
                        </div>
                    </div>
                    <legend><h3 class="text-center">状态</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">启用 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="status" value="0" /> 否
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="status" value="1" checked/> 是
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">跳转 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="has_url" value="0" checked/> 不允许
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="has_url" value="1" /> 允许
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
<script src="{{ asset('backend/assets/plugins/select2/dist/js/select2.min.js') }}"></script>
<script src="{{ asset('backend/assets/js/apps.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
        $(".select").select2();
    });
</script>
@endsection