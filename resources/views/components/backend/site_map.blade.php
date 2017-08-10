@if(config('app.env') != 'local')
<!-- begin breadcrumb -->
<ol class="breadcrumb pull-right">
        @if('backend.dashboard.index' != Route::currentRouteName())
        <li><a href="{{route('backend.dashboard.index')}}">管 理 中 心</a></li>
        @endif
    @foreach($_site_maps as $site_map)
        @if($site_map->is_actived)
        <li><a href="{{!empty($site_map->name) && Route::has($site_map->name) ? route($site_map->name) : 'javascript:;'}}">{{ $site_map->title }}</a></li>
        @else
        <li class="active">{{ $site_map->title }}</li>
        @endif
    @endforeach
</ol>
<!-- end breadcrumb -->
<!-- begin page-header -->
<h1 class="page-header">{{ $_current_menu->title }} <small>{{ $_current_menu->desc }}</small></h1>
<!-- end page-header -->
@endif