@extends('layouts.backend')

@section('title', '添加医生')
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
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="hospital">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">医院信息</h4>
            </div>
            <div class="panel-body">
                <table class="table table-profile">
                    <tbody>
                    <td class="field">封面</td>
                        <td><img height="150" style="max-width: 150px;" src="{{$hospital->cover}}" alt="{{$hospital->cover}}"></td>
                        <tr class="divider">
                            <td colspan="2"></td>
                        </tr>
                        <tr>
                            <td class="field">名称</td>
                            <td>{{ $hospital->title }}</td>
                        </tr>
                        <tr>
                            <td class="field">描述</td>
                            <td>{{ $hospital->desc }}</td>
                        </tr>
                        <tr>
                            <td class="field">简介</td>
                            <td>{{ $hospital->info }}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- end panel -->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-inverse" data-sortable-id="form-validation">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">添加医生</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.hospital.doctor.store', $hospital->id) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    <input type="hidden" name="hospital_id" value="{{$hospital->id}}" />
                    <legend><h3 class="text-center">医生信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">头像 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="avatar_box" class="m-b-10" style="width:200px">
                            </div>
                            <input class="form-control" type="text" name="avatar_id" value="0" id="avatar_id" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">姓名 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="real_name" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="姓名" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4" for="country_id">国家 :</label>
                        <div class="col-md-6 col-sm-6">
                            <select name="country_id" id="country_id" data-parsley-required="true" class="select form-control">
                            @foreach($countries as $country)
                                <option value="{{ $country->id }}">{{ $country->title }}</option>
                            @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">描述 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="desc" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="描述" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">简介 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="info" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="简介" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">成功率 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="success_rate" data-parsley-trigger="change" data-parsley-type="integer" data-parsley-range="[0,100]" placeholder="成功率" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">从业经验 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="exp" data-parsley-trigger="change" data-parsley-type="integer" placeholder="从业经验" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.hospital.doctor.index', $hospital->id) }}" class="btn btn-white">返回</a>
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
        $("#avatar_id").uploadifive({
            "uploadScript" : "{{ route('api.user.image.post') }}",
            "onUploadComplete" : function(file, data) {
                var body = eval("("+data+")").body;
                $("#avatar_id").val(body.id);
                $("#avatar_box").html('<div class="profile-image"><img class="m-auto" src="'+body.url+'" title="'+body.url+'" height="100%" /></div>');
            }
        });
    });
</script>
@endsection