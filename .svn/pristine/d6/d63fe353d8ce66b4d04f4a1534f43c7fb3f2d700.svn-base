@extends('layouts.backend')

@section('title', '医院管理')

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="hospitals">
            <div class="panel-heading">
                <div class="panel-heading-btn">
                    @if('backend.hospital.deleted' != Route::currentRouteName())
                    <a href="{{ route('backend.hospital.deleted') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="回收站"><i class="fa fa-trash"></i></a>
                    @else
                    <a href="{{ route('backend.hospital.index') }}" class="btn btn-xs btn-icon btn-circle btn-success" data-toggle="tooltip" data-placement="top" title="数据表"><i class="fa fa-search"></i></a>
                    @endif
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-default" data-click="panel-expand"><i class="fa fa-expand"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-warning" data-click="panel-collapse"><i class="fa fa-minus"></i></a>
                    <a href="javascript:;" class="btn btn-xs btn-icon btn-circle btn-danger" data-click="panel-remove"><i class="fa fa-times"></i></a>
                </div>
                <h4 class="panel-title">数据表</h4>
            </div>
            <div class="panel-body">
                <div class="row m-b-20">
                    <div class="col-xs-4">
                        @if('backend.hospital.deleted' != Route::currentRouteName())
                        <a href="{{ route('backend.hospital.create') }}" class="btn btn-sm btn-inverse">添&nbsp;加</a>
                        @endif
                    </div>
                    <div class="col-xs-8">
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>名称</th>
                            <th>科室</th>
                            <th>床位</th>
                            <th>费用</th>
                            <th>医生数量</th>
                            <th>更多</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($hospitals as $hospital)
                        <tr>
                            <td>{{$hospital->id}}</td>
                            <td>{{$hospital->title}}</td>
                            <td>{{$hospital->department_numbers}}</td>
                            <td>{{$hospital->bed_numbers}}</td>
                            <td>{{$hospital->price}}</td>
                            <td>{{$hospital->doctors()->count()}}</td>
                            <td>
                            <a href="{{route('backend.hospital.image.index', $hospital->id)}}" class="m-r-5 text-info">照片</a>
                            <a href="{{route('backend.hospital.doctor.index', $hospital->id)}}" class="m-r-5 text-info">医生</a>
                            <a href="{{route('backend.hospital.medical.index', $hospital->id)}}" class="m-r-5 text-info">医疗翻译</a>
                            <a href="{{route('backend.hospital.life.index', $hospital->id)}}" class="m-r-5 text-info">生活翻译</a>
                            <a href="{{route('backend.hospital.nanny.index', $hospital->id)}}" class="m-r-5 text-info">保姆</a>
                            <a href="{{route('backend.hospital.taxi.index', $hospital->id)}}" class="m-r-5 text-info">出租车</a>
                            <a href="{{route('backend.hospital.hotal.index', $hospital->id)}}" class="m-r-5 text-info">酒店</a>
                            <a href="{{route('backend.hospital.tourism.index', $hospital->id)}}" class="m-r-5 text-info">景区</a>
                            </td>
                            <td>{!! $hospital->action_buttons !!}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ request()->has('search_word') ? $hospitals->appends(['search_word' => request()->input('search_word')])->links() : $hospitals->links() }}
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