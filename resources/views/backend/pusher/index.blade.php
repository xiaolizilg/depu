@extends('layouts.backend')

@section('title', '推送管理')

@section('page_styles')
<link href="{{ asset('backend/assets/plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css') }}" rel="stylesheet" />
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="pushers">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">数据表</h4>
            </div>
            <div class="panel-body">
                <div class="row m-b-20">
                    <div class="col-xs-4">
                        <a href="{{ route('backend.content.pusher.create') }}" class="btn btn-sm btn-inverse">添&nbsp;加</a>
                    </div>
                    <div class="col-xs-8">
                    </div>
                    <div class="col-xs-12 m-t-20">
                        <form method="GET" action="">
                            <div class="row m-b-10">
                                <div class="col-xs-4">
                                    <select name="role" id="role" class="select form-control" data-parsley-required="true" >
                                        <option value="0" {{ request()->has('role') && request()->input('role') == 1 ? 'selected' : '' }}>全站用户</option>
                                        <option value="1" {{ request()->has('role') && request()->input('role') == 1 ? 'selected' : '' }}>ios</option>
                                        <option value="2" {{ request()->has('role') && request()->input('role') == 2 ? 'selected' : '' }}>安卓</option>
                                        <option value="3" {{ request()->has('role') && request()->input('role') == 3 ? 'selected' : '' }}>角色组</option>
                                        <option value="4" {{ request()->has('role') && request()->input('role') == 4 ? 'selected' : '' }}>用户</option>
                                    </select>
                                </div>
                                <div class="col-xs-2">
                                    <input class="form-control" disabled="disabled" type="text" id="role_id" data-parsley-trigger="change" data-parsley-type="integer" placeholder="对象ID" />
                                </div>
                            </div>
                            <div class="row m-b-10">
                                <div class="col-xs-6">
                                    <div class="input-group date">
                                        <input type="text" class="form-control" name="created_at" placeholder="推送时间"/>
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-xs-6">

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12">
                                    <button type="submit" class="btn btn-inverse">搜索</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>标题</th>
                            <th>推送对象</th>
                            <th>操作事件</th>
                            <th>推送时间</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($pushers as $pusher)
                        <tr>
                            <td>{{$pusher->id}}</td>
                            <td>{{$pusher->title}}</td>
                            <td>{!! $pusher->role_desc !!}</td>
                            <td>{!! $pusher->event_desc !!}</td>
                            <td>{{ $pusher->created_at }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $pushers->appends(['search_word' => request()->input('search_word')])->links() : $pushers->links() }}
            </div>
        </div>
        <!-- end panel -->
    </div>
</div>
@endsection

@section('page_scripts')
<script src="{{ asset('backend/assets/js/apps.min.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/select2/dist/js/select2.min.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.zh.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        $(".date").datepicker({
            format: "yyyy-mm-dd",
            language: "{{ config('app.locale') }}",
            autoclose: true
        });
        $(".select").select2();

        if ($("#role").val() > 2) {
                $("#role_id").removeAttr('disabled').attr('name', 'role_id');
            } else {
                $("#role_id").removeAttr('name').attr('disabled', 'disabled');
            }
        
        $("#role").change(function(){
            if ($(this).val() > 2) {
                $("#role_id").removeAttr('disabled').attr('name', 'role_id');
            } else {
                $("#role_id").removeAttr('name').attr('disabled', 'disabled');
            }
        });
    });
</script>
@endsection