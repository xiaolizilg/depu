@extends('layouts.backend')

@section('title', '财务管理')

@section('page_styles')
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css') }}" rel="stylesheet" />
@endsection()

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="runnings">
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
                    <form method="GET" action="">
                        <div class="row m-b-10">
                            <div class="col-xs-6">
                                <input type="text" class="form-control" name="account" placeholder="账号" />
                            </div>
                            <div class="col-xs-6">
                                <label class="m-r-20"><input type="radio" name="status" value="0" {{ request()->has('status') && request()->input('status') == 0 ? 'checked' : '' }}> 已关闭</label>
                                <label class="m-r-20"><input type="radio" name="status" value="1" {{ request()->has('status') && request()->input('status') == 1 ? 'checked' : '' }}> 已完成</label>
                                <label class="m-r-20"><input type="radio" name="status" value="2" {{ request()->has('status') && request()->input('status') == 2 ? 'checked' : '' }}> 已支付</label>
                                <label><input type="radio" name="status" value="3" {{ request()->has('status') && request()->input('status') == 3 ? 'checked' : '' }}> 未支付</label>
                            </div>
                        </div>
                        <div class="row m-b-10">
                            <div class="col-xs-6">
                                <div class="input-group date">
                                    <input type="text" class="form-control" name="paid_at" placeholder="支付时间"/>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                    </span>
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <label class="m-r-20"><input type="radio" name="pay_type" value="1" {{ request()->has('pay_type') && request()->input('pay_type') == 1 ? 'checked' : '' }}> 支付宝</label>
                                <label class="m-r-20"><input type="radio" name="pay_type" value="2" {{ request()->has('pay_type') && request()->input('pay_type') == 2 ? 'checked' : '' }}> 微信</label>
                                <label class="m-r-20"><input type="radio" name="pay_type" value="3" {{ request()->has('pay_type') && request()->input('pay_type') == 3 ? 'checked' : '' }}> 银联</label>
                                <label><input type="radio" name="pay_type" value="4" {{ request()->has('pay_type') && request()->input('pay_type') == 4 ? 'checked' : '' }}> 线下</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-12">
                                <button type="submit" class="btn btn-inverse">搜索</button>
                            </div>
                        </div>
                    </form>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>订单编号</th>
                            <th>付款账号</th>
                            <th>付款金额</th>
                            <th>付款方式</th>
                            <th>付款时间</th>
                            <th>付款状态</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($runnings as $running)
                        <tr>
                            <td>{{$running->id}}</td>
                            <td>{{$running->order_code}}</td>
                            <td>{{$running->account}}</td>
                            <td>{{$running->money}}</td>
                            <td>{!! $running->pay_type_desc !!}</td>
                            <td>{{$running->paid_at}}</td>
                            <td>{!! $running->status_desc !!}</td>
                            <td>{!! $running->action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $runnings->appends(['search_word' => request()->input('search_word')])->links() : $runnings->links() }}
            </div>
        </div>
        <!-- end panel -->
    </div>
</div>
@endsection

@section('page_scripts')
<script src="{{ asset('backend/assets/js/apps.min.js') }}"></script>
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
    });
</script>
@endsection