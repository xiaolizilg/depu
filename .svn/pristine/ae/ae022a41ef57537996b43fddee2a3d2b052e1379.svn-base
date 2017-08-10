@extends('layouts.backend')

@section('title', '行程管理')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="trip">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">行程简介</h4>
            </div>
            <div class="panel-body">
                <table class="table table-profile">
                    <tbody>
                        <tr>
                            <td class="field">医院</td>
                            <td>{{ $trip->hospital }}</td>
                        </tr>
                        <tr>
                            <td class="field">行程描述</td>
                            <td>{{ $trip->desc }}</td>
                        </tr>
                        <tr>
                            <td class="field">服务费</td>
                            <td>{{ $trip->price }}</td>
                        </tr>
                        <tr>
                            <td class="field">开始时间</td>
                            <td>{{ empty($trip->started_at) ? '待定' : $trip->started_at->format('Y年m月d日') }}</td>
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
                <h4 class="panel-title">行程信息</h4>
            </div>
            <div class="panel-body">
                <div class="row m-b-20">
                    <div class="col-xs-4">
                        @if(14 > count($trip->trip_infos))
                        <a href="{{ route('backend.order.trip.create', $order) }}" class="btn btn-sm btn-inverse">添&nbsp;加</a>
                        @endif
                    </div>
                    <div class="col-xs-8">
                    </div>
                </div>
                <!-- begin timeline -->
                <ul class="timeline">
                @foreach($trip->trip_infos as $info)
                    <li>
                        <!-- begin timeline-time -->
                        <div class="timeline-time">
                        @if(empty($info->started_at))
                            <span class="time">待定</span>
                        @else
                            <span class="date">{{ $info->started_at->format('Y年m月d日') }}</span>
                            <span class="time">{{ $info->started_at->diffForHumans() }}</span>
                        @endif
                        </div>
                        <!-- end timeline-time -->
                        <!-- begin timeline-icon -->
                        <div class="timeline-icon">
                            <a href="{{ route('backend.order.trip.edit', [$order, $info]) }}"><i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="{{ __('buttons.general.crud.edit') }}"></i></a>
                        </div>
                        <!-- end timeline-icon -->
                        <!-- begin timeline-body -->
                        <div class="timeline-body">
                            <div class="timeline-header">
                                <span class="userimage"><img src="{{ $info->cover }}" alt="" /></span>
                                <span class="username"><a href="javascript:;">{{ $info->real_name }}</a> <small></small></span>
                                <span class="pull-right text-muted">
                                    <span class="m-r-20">{!! $info->status_desc !!}</span>
                                    <span>
                                        @if($info->status == 2)
                                        <a href="#" data-comfirm="true" data-method="GET" data-message="确定要将该行程的状态改为已确认吗？" data-action="{{ route('backend.order.trip.mark', [$order, $info, 1]) }}" class="m-r-5 text-success"><i class="fa fa-play" data-toggle="tooltip" data-placement="top" title="已确认"></i></a>
                                        @else
                                        <a href="#" data-comfirm="true" data-method="GET" data-message="确定要将该行程的状态改为未确认吗？" data-action="{{ route('backend.order.trip.mark', [$order, $info, 2]) }}" class="m-r-5 text-warning"><i class="fa fa-pause" data-toggle="tooltip" data-placement="top" title="未确认"></i></a>
                                        @endif

                                        @if(in_array($info->type, [2, 3, 4, 10]))
                                        <a href="#" data-comfirm="true" data-method="POST" data-message="{{__('alerts.general.comfirm.destroy')}}" data-action="destroy-form-{{ $info->id }}" class="m-r-5 text-danger"><i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="{{__('buttons.general.crud.delete')}}"></i><form id="destroy-form-{{ $info->id }}" action="{{ route('backend.order.trip.destroy', [$order, $info]) }}" method="POST" style="display: none;">{{csrf_field()}}{{method_field('DELETE')}}</form></a>
                                        @endif
                                    </span>
                                </span>
                            </div>
                            <div class="timeline-content">
                                <p>
                                    {{ $info->info }}
                                </p>
                            </div>
                            <div class="timeline-footer">
                                <p>
                                    {{ $info->desc }}
                                </p>
                            </div>
                        </div>
                        <!-- end timeline-body -->
                    </li>
                @endforeach
                </ul>
                <!-- end timeline -->
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