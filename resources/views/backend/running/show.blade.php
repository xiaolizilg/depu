@extends('layouts.backend')

@section('title', '财务详情')

@section('page_styles')
<link href="{{ asset('backend/assets/css/invoice-print.min.css') }}" rel="stylesheet" />
@endsection

@section('content')
<div class="invoice">
    <div class="invoice-company">
        <span class="pull-right hidden-print">
        <a href="javascript:;" onclick="window.print()" class="btn btn-sm btn-success m-b-10"><i class="fa fa-print m-r-5"></i> 打印</a>
        </span>
        {{ config('app.name') }}
    </div>
    <div class="invoice-header">
        <div class="row">
            <div class="col-xs-12">
                    <div class="invoice-from">
                        <small>服务信息</small>
                        <address class="m-t-5 m-b-5">
                            <strong>医院：</strong> {{ $running->order->hospital }}<br /><br />
                            {{ $running->order->desc }}
                        </address>
                    </div>
                    <div class="invoice-to">
                        <small>订单信息</small>
                        <address class="m-t-5 m-b-5">
                            <strong>订单号：</strong> {{ $running->order->order_code }}<br /><br />
                            服务费：￥{{ $running->order->money }}<br /><br />
                        </address>
                    </div>
                    <div class="invoice-date">
                        <small>付款信息</small>
                        <div class="date m-t-5">{{ $running->paid_at }}</div>
                        <div class="invoice-detail">
                            账号：{{ $running->account }}<br /><br />
                            支付金额：￥{!! $running->money !!}<br /><br />
                            支付方式：{!! $running->pay_type_desc !!}<br /><br />
                            支付状态：{!! $running->status_desc !!}
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <div class="invoice-content">
        <div class="table-responsive">
            <table class="table table-invoice">
                <thead>
                    <tr>
                        <th>服务名称</th>
                        <th>服务提供者</th>
                        <th>参考价格</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($running->order->order_infos as $info)
                    <tr>
                        <td>{{$info->infoable->title}}</td>
                        <td>{{$info->real_name}}</td>
                        <td>{{$info->price}}</td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <div class="invoice-price">
            <div class="invoice-price-left">
                <div class="invoice-price-row">
                    <div class="sub-price">
                        <small>参考价格</small>
                        ￥{{ $running->order->order_infos->pluck('price')->sum() }}
                    </div>
                    <div class="sub-price">
                        <i class="fa fa-plus"></i>
                    </div>
                    <div class="sub-price">
                        <small>服务费</small>
                        ￥{{ project()->price }}
                    </div>
                </div>
            </div>
            <div class="invoice-price-right">
                <small>总计</small> ￥{{ $running->order->order_infos->pluck('price')->sum() + project()->price }}
            </div>
        </div>
    </div>
    <div class="invoice-footer text-muted">
        <p class="text-center m-b-5">
            {{ config('app.name') }}
        </p>
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