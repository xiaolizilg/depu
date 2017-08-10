@extends('layouts.backend')

@section('title', '图片管理')

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
        <!-- begin panel -->
        <div class="panel panel-inverse" data-sortable-id="hospitals">
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
                        <a href="{{ route('backend.hospital.taxi.image.create', [$hospital, $taxi]) }}" class="btn btn-sm btn-inverse">添&nbsp;加</a>
                    </div>
                    <div class="col-xs-8">
                    </div>
                </div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>名称</th>
                            <th>图片</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($images as $image)
                        <tr>
                            <td>{{ $image->id }}</td>
                            <td>{{ $image->title }}</td>
                            <td><img height="30" style="max-width: 30px;" src="{{$image->image}}" alt="{{$image->image}}"></td>
                            <td>
                                <a href="{{ route('backend.hospital.taxi.image.edit', [$hospital, $taxi, $image]) }}" class="m-r-5 text-primary"><i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="{{ __('buttons.general.crud.edit') }}"></i></a>
                                <a href="#" data-comfirm="true" data-method="GET" data-message="{{ __('alerts.general.comfirm.delete') }}" data-action="{{ route('backend.hospital.taxi.image.delete', [$hospital, $taxi, $image]) }}" class="m-r-5 text-danger"><i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="{{ __('buttons.backend.delete_permanently') }}"></i></a>
                            </td>
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