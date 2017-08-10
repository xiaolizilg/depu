@extends('layouts.backend')

@section('title', '编辑行程')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/uploadify/css/uploadifive.css') }}" rel="stylesheet" />
<style>
    #images_box>.superbox-list>.del-icon{position: relative;display: block;}
    #images_box>.superbox-list>.del-icon>div{position: absolute;right:2px}
</style>
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
                <h4 class="panel-title">编辑行程</h4>
            </div>
            <div class="panel-body panel-form">
                <form method="POST" action="{{ route('backend.order.trip.update', [$order, $trip]) }}" class="form-horizontal form-bordered" data-parsley-validate="true">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <legend><h3 class="text-center">行程信息</h3></legend>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">封面 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="avatar_box" class="m-b-10" style="width:200px">
                                <div class="profile-image">
                                    <img class="m-auto" src="{{ $trip->cover }}" title="{{ $trip->cover }}" height="100%" />
                                </div>
                            </div>
                            <input class="form-control" type="text" name="cover_id" id="cover_id" value="{{$trip->cover_id}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">描述 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="desc" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="描述" value="{{$trip->desc}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">简介 :</label>
                        <div class="col-md-6 col-sm-6">
                            <input class="form-control" type="text" name="info" data-parsley-trigger="change" data-parsley-maxlength="80" data-parsley-required="true" placeholder="简介" value="{{$trip->info}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">开始时间 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div class="input-group date">
                                <input type="text" name="started_at" value="{{$trip->started_at->format('Y-m-d')}}" class="form-control" placeholder="年-月-日"/>
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4">图组 :</label>
                        <div class="col-md-6 col-sm-6">
                            <div id="images_box" class="m-b-10" data-offset="{{ count($trip->images) }}" style="width:100%">
                                @foreach($trip->images as $image)
                               <div onclick="del_image(this)" class="superbox-list">
                                    <div class="del-icon">
                                        <div>
                                            <i class="fa fa-times text-danger"></i>
                                        </div>
                                    </div>
                                    <img src="{{ $image }}" alt="" class="superbox-img" />
                                </div>
                                @endforeach
                            </div>
                            <input class="form-control" type="text" name="image_ids" id="image_ids" value="{{$trip->image_ids}}" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-4 col-sm-4"></label>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-success">提交</button>
                            <a href="{{ route('backend.order.trip.index', $order) }}" class="btn btn-white">返回</a>
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
@endsection

@section('page_script')
<script>
    function del_image(image) {
        $(image).remove();
        var image_ids = $("#image_ids").val().split(",");
        image_ids.splice($(image).index(), 1);
        $("#image_ids").val(image_ids.join(","));
    }

    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
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
        $("#image_ids").uploadifive({
            "uploadScript" : "{{ route('api.user.image.post') }}",
            "onUploadComplete" : function(file, data) {
                var body = eval("("+data+")").body;
                var image_ids = $("#image_ids").val().split(",");

                if (9 <= image_ids.length) {
                    alert('不能超过9张图片');

                    return false;
                }

                image_ids.push(body.id + '');
                $("#image_ids").val(image_ids.join(","));
                $("#images_box").prepend('<div onclick="del_image(this)" class="superbox-list"><div class="del-icon"><div><i class="fa fa-times text-danger"></i></div></div><img src="'+body.url+'" alt="" class="superbox-img" /></div>');
            }
        });
    });
</script>
@endsection