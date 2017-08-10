<ul class="sub-menu">
@foreach($_menus->where('level', $level)->where('pid', $pid) as $menu)
    <?php $sub_level = $level; ?>
    <li class="{{$menu->has_sub ? 'has-sub' : ''}} {{in_array($menu->id, $_site_maps->keys()->all()) ? 'active' : ''}}"><a href="{{!empty($menu->name) && Route::has($menu->name) && $menu->has_url ? route($menu->name) : '#'}}">
    @if($menu->has_sub)
    <b class="caret pull-right"></b>
    @endif
    {{ $menu->title }}
    </a>
        @if(!$_menus->where('level', ++$sub_level)->where('pid', $menu->id)->isEmpty())
            @include('components.backend.sub_menus', ['level' => $sub_level])
        @endif
    </li>
@endforeach
</ul>
