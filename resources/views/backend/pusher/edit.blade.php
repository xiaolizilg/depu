@extends('layouts.backend')

@section('title', '编辑医院')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/uploadify/css/uploadifive.css') }}" rel="stylesheet" />
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
                <h4 class="panel-title">编辑医院</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.hospital.update', $hospital->id) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">医院信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">封面 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="avatar_box" class="m-b-10" style="width:200px">
                                <div class="profile-image">
                                    <img class="m-auto" src="{{ get_image($hospital->cover_id) }}" title="{{ get_image($hospital->cover_id) }}" height="100%" />
                                </div>
                            </div>
                            <input class="form-control" type="text" name="cover_id" id="cover_id" value="{{$hospital->cover_id}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">名称 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="title" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="名称" value="{{$hospital->title}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="country_id">国家 :</label>
                        <div class="col-md-6 col-sm-6">
                            <select name="country_id" id="country_id" data-parsley-required="true" class="select form-control">
                            @foreach($countries as $country)
                                <option value="{{ $country->id }}" {{ $country->id == $hospital->country_id ? 'selected' : '' }}>{{ $country->title }}</option>
                            @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">描述 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="desc" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="描述" value="{{$hospital->desc}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">简介 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="info" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="简介" value="{{$hospital->info}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">中文地址 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="address_zh" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="中文地址" value="{{$hospital->address_zh}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">英文地址 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="address_en" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="英文地址" value="{{$hospital->address_en}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">费用 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="price" data-parsley-trigger="change"  data-parsley-type="integer" placeholder="费用" value="{{$hospital->price}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">成功率 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="success_rate" data-parsley-trigger="change" data-parsley-type="integer" placeholder="成功率" value="{{$hospital->success_rate}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">就诊数 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="treatment_numbers" data-parsley-trigger="change"  data-parsley-type="integer" placeholder="就诊数" value="{{$hospital->treatment_numbers}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">科室 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="department_numbers" data-parsley-trigger="change"  data-parsley-type="integer" placeholder="科室" value="{{$hospital->department_numbers}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">床位 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="bed_numbers" data-parsley-trigger="change" data-parsley-type="integer" placeholder="床位" value="{{$hospital->bed_numbers}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.hospital.index') }}" class="btn btn-white">返回</a>
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