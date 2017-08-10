@extends('layouts.backend')

@section('title', '编辑出租车')
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
                <h4 class="panel-title">编辑出租车</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.hospital.taxi.update', [$hospital->id, $taxi->id]) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">车主信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">头像 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="avatar_box" class="m-b-10" style="width:200px">
                                <div class="profile-image">
                                    <img class="m-auto" src="{{ get_image($taxi->avatar_id) }}" title="{{ get_image($taxi->avatar_id) }}" height="100%" />
                                </div>
                            </div>
                            <input class="form-control" type="text" name="avatar_id" id="avatar_id" value="{{$taxi->avatar_id}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">姓名 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="real_name" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="姓名" value="{{$taxi->real_name}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">联系电话 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="mobile" data-parsley-trigger="change" data-parsley-required="true" data-parsley-type="mobile" placeholder="联系电话" value="{{$taxi->mobile}}" />
                        </div>
                    </div>
                    <legend><h3 class="text-center">出租车信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">封面 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="cover_box" class="m-b-10" style="width:200px">
                                <div class="profile-image">
                                    <img class="m-auto" src="{{ get_image($taxi->cover_id) }}" title="{{ get_image($taxi->cover_id) }}" height="100%" />
                                </div>
                            </div>
                            <input class="form-control" type="text" name="cover_id" id="cover_id" value="{{$taxi->cover_id}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">车名 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="title" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="姓名" value="{{$taxi->title}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">费用 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="price" data-parsley-trigger="change" data-parsley-maxlength="300" data-parsley-required="true" placeholder="费用" data-parsley-pattern="\d{0,8}\.\d{2}" value="{{$taxi->price}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">描述 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="desc" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="描述" value="{{$taxi->desc}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">简介 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="info" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="简介" value="{{$taxi->info}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">载座 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="members" data-parsley-trigger="change" data-parsley-type="integer" data-parsley-required="true" placeholder="载座" value="{{$taxi->members}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.hospital.taxi.index', $hospital->id) }}" class="btn btn-white">返回</a>
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

        $("#cover_id").uploadifive({
            "uploadScript" : "{{ route('api.user.image.post') }}",
            "onUploadComplete" : function(file, data) {
                var body = eval("("+data+")").body;
                $("#cover_id").val(body.id);
                $("#cover_box").html('<div class="profile-image"><img class="m-auto" src="'+body.url+'" title="'+body.url+'" height="100%" /></div>');
            }
        });
    });
</script>
@endsection