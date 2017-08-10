@extends('layouts.backend')

@section('title', '订单详情')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="order">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">订单信息</h4>
            </div>
            <div class="panel-body">
                <table class="table table-profile">
                    <tbody>
                        <tr>
                            <td class="field">订单号</td>
                            <td>{{ $order->order_code }}</td>
                        </tr>
                        <tr>
                            <td class="field">会员名</td>
                            <td>{{ $order->user->name }}</td>
                        </tr>
                        <tr>
                            <td class="field">订单状态</td>
                            <td>{!! $order->status_desc !!}</td>
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
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="infos">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">数据表</h4>
            </div>
            <div class="panel-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>服务名称</th>
                            <th>服务提供者</th>
                            <th>描述</th>
                            <th>参考价格</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($order->order_infos as $info)
                        <tr>
                            <td>{{$info->id}}</td>
                            <td>{{$info->infoable->title}}</td>
                            <td>{{$info->real_name}}</td>
                            <td>{{$info->desc}}</td>
                            <td>{{$info->price}}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <!-- end panel -->
    </div>
</div>
@endsection

@section('page_scripts')
<script src="{{ asset('backend/assets/js/apps.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
    });
</script>
@endsection