@extends('layouts.backend')

@section('title', '编辑轮播图')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/uploadify/css/uploadifive.css') }}" rel="stylesheet" />
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
                <h4 class="panel-title">编辑轮播图</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.content.banner.update', $banner->id) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">轮播图信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">PC端轮播图 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="pc_image_box" class="m-b-10" style="width:200px">
                                <div class="profile-image">
                                    <img class="m-auto" src="{{ $banner->pc_image }}" title="{{ $banner->pc_image }}" height="100%" />
                                </div>
                            </div>
                            <input class="form-control" type="text" name="pc_image_id" id="pc_image_id" value="{{ $banner->pc_image_id }}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">移动端轮播图 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="mobile_image_box" class="m-b-10" style="width:200px">
                                <div class="profile-image">
                                    <img class="m-auto" src="{{ $banner->mobile_image }}" title="{{ $banner->mobile_image }}" height="100%" />
                                </div>
                            </div>
                            <input class="form-control" type="text" name="mobile_image_id" id="mobile_image_id" value="{{ $banner->mobile_image_id }}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">跳转地址 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="url" value="{{ $banner->url }}" data-parsley-trigger="change" data-parsley-type="url" data-parsley-maxlength="80" placeholder="跳转地址" data-parsley-required="true" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.content.banner.index') }}" class="btn btn-white">返回</a>
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
<script src="{{ asset('backend/assets/plugins/uploadify/js/jquery.uploadifive.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
        $("#pc_image_id").uploadifive({
            "uploadScript" : "{{ route('api.user.image.post') }}",
            "onUploadComplete" : function(file, data) {
                var body = eval("("+data+")").body;
                $("#pc_image_id").val(body.id);
                $("#pc_image_box").html('<div class="profile-image"><img class="m-auto" src="'+body.url+'" title="'+body.url+'" height="100%" /></div>');
            }
        });

        $("#mobile_image_id").uploadifive({
            "uploadScript" : "{{ route('api.user.image.post') }}",
            "onUploadComplete" : function(file, data) {
                var body = eval("("+data+")").body;
                $("#mobile_image_id").val(body.id);
                $("#mobile_image_box").html('<div class="profile-image"><img class="m-auto" src="'+body.url+'" title="'+body.url+'" height="100%" /></div>');
            }
        });
    });
</script>
@endsection