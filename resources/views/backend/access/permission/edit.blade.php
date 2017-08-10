@extends('layouts.backend')

@section('title', '编辑权限')
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
                <h4 class="panel-title">编辑权限</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.access.permission.update', $permission->id) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">权限信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="name">标识 :</label>
                        <div class="col-md-6 col-sm-6">
                            {{ $permission->name }}
                            <input type="hidden" name="name" value="{{ $permission->name }}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="title">名称 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" id="title" name="title" value="{{ $permission->title }}" placeholder="名称" data-parsley-trigger="change" data-parsley-required="true" data-parsley-maxlength="240" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="group_id">分组 :</label>
                        <div class="col-md-6 col-sm-6">
                            <select name="group_id" id="group_id" class="select form-control">
                            @foreach($groups as $group)
                                <option value="{{ $group->id }}" {{ $permission->group_id == $group->id ? 'selected' : '' }}>{{ $group->title }}</option>
                            @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.access.permission.index') }}" class="btn btn-white">返回</a>
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