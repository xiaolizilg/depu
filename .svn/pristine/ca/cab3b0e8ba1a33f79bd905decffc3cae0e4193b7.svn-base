<!-- begin #sidebar -->
<div id="sidebar" class="sidebar">
    <!-- begin sidebar scrollbar -->
    <div data-scrollbar="true" data-height="100%">
        <!-- begin sidebar user -->
        <ul class="nav">
            <li class="nav-profile">
                <div class="image">
                    <a href="javascript:;"><img src="{{ auth()->user()->me->avatar }}" alt="" /></a>
                </div>
                <div class="info">
                    {{ auth()->user()->me->name }}
                    <small><i class="fa fa-circle-o text-success"></i> {{ in_array(auth()->user()->me->id, config('auth.super_admins')) ? __('roles.administrator') : (auth()->user()->me->roles->isEmpty() ? __('roles.no_roles') : auth()->user()->me->roles->forPage(2, 1)->implode('title', '&nbsp;&nbsp;')) }}</small>
                </div>
            </li>
        </ul>
        <!-- end sidebar user -->
        <!-- begin sidebar nav -->
        <ul class="nav">
            <li class="nav-header">{{ __('labels.general.navigation') }}</li>
            @foreach($_menus->where('level', 0) as $menu)
            <?php $level = 0; ?>
            <li class="{{$menu->has_sub ? 'has-sub' : ''}} {{in_array($menu->id, $_site_maps->keys()->all()) ? 'active' : ''}}">
                <a href="{{!empty($menu->name) && Route::has($menu->name) && $menu->has_url ? route($menu->name) : '#'}}">
                    @if(isset($menu->has_sub))
                    <b class="caret pull-right"></b>
                    @endif
                    <i class="fa fa-{{!empty($menu->icon) ? $menu->icon : 'laptop'}}"></i>
                    <span>{{ $menu->title }}</span>
                </a>
                @if(!$_menus->where('level', ++$level)->where('pid', $menu->id)->isEmpty())
                    @include('components.backend.sub_menus', ['level' => $level, 'pid' => $menu->id])
                @endif
            </li>
            @endforeach
            <!-- begin sidebar minify button -->
            <li><a href="javascript:;" class="sidebar-minify-btn" data-click="sidebar-minify"><i class="fa fa-angle-double-left"></i></a></li>
            <!-- end sidebar minify button -->
        </ul>
        <!-- end sidebar nav -->
    </div>
    <!-- end sidebar scrollbar -->
</div>
<div class="sidebar-bg"></div>
<!-- end #sidebar -->