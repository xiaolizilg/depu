@extends('layouts.backend')

@section('title', '编辑酒店')
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
                <h4 class="panel-title">编辑酒店</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.hospital.hotal.update', [$hospital->id, $hotal->id]) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">酒店信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">封面 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="avatar_box" class="m-b-10" style="width:200px">
                                <div class="profile-image">
                                <img class="m-auto" src="{{get_image($hotal->cover_id)}}" title="{{get_image($hotal->cover_id)}}" height="100%" />
                                </div>
                            </div>
                            <input class="form-control" type="text" name="cover_id" id="cover_id" value="{{$hotal->cover_id}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">名称 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="title" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="名称" value="{{$hotal->title}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">英文名称 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="title_en" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="名称" value="{{$hotal->title_en}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">联系电话 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="mobile" data-parsley-trigger="change"  data-parsley-required="true" data-parsley-type="mobile" placeholder="联系电话" value="{{$hotal->mobile}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">中文地址 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="address_zh" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="中文地址" value="{{$hotal->address_zh}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">英文地址 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="address_en" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="英文地址" value="{{$hotal->address_en}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">简介 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="info" data-parsley-trigger="change" data-parsley-maxlength="80" placeholder="简介" value="{{$hotal->info}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">星级 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="level" data-parsley-trigger="change" data-parsley-type="integer" placeholder="星级" value="{{$hotal->level}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">费用 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="price" data-parsley-trigger="change" data-parsley-required="true" data-parsley-pattern="\d{0,8}\.\d{2}" placeholder="费用" value="{{$hotal->price}}" />
                        </div>
                    </div>
                    <legend><h3 class="text-center">坐标设置</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">坐标 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input type="hidden" name="baidu_point">
                            <input type="hidden" name="google_point">
                            <p>当前设置坐标：<span id="point_desc">{{ $hotal->baidu_point }}</span></p>
                            <div id="baidu_map" style="height: 300px"></div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.hospital.hotal.index', $hospital->id) }}" class="btn btn-white">返回</a>
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
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=q1fSDE91IL1GG77qtClILHnWkG7KwMyq"></script>
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

        var baidu_map = new BMap.Map("baidu_map");
        baidu_map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
        baidu_map.addControl(new BMap.MapTypeControl());
        baidu_map.setCurrentCity("北京");
        baidu_map.enableScrollWheelZoom(true);

        baidu_map.addEventListener("click",function(e){
            $("input[name=baidu_point],input[name=google_point]").val(e.point.lng + "," + e.point.lat);
            $("#point_desc").html(e.point.lng + "," + e.point.lat);
        });
    });
</script>
@endsection