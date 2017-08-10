<!-- begin #header -->
<div id="header" class="header navbar navbar-default navbar-fixed-top">
    <!-- begin container-fluid -->
    <div class="container-fluid">
        <!-- begin mobile sidebar expand / collapse button -->
        <div class="navbar-header">
            <a href="#" class="navbar-brand"><span class="navbar-logo"></span> {{config('app.name')}} {{ __('backend.subffix_name') }}</a>
            <button type="button" class="navbar-toggle" data-click="sidebar-toggled">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
        </div>
        <!-- end mobile sidebar expand / collapse button -->
        
        <!-- begin header navigation right -->
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown navbar-user">
                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="{{ auth()->user()->me->avatar }}" alt="" /> 
                    <span class="hidden-xs">{{ auth()->user()->me->name }}</span> <b class="caret"></b>
                </a>
                <ul class="dropdown-menu animated fadeInLeft">
                    <li class="arrow"></li>
                    <li><a href="{{ route('backend.account.admin.show', auth()->user()->user_id) }}">{{ __('navs.general.user.profile') }}</a></li>
                    <li><a href="{{ route('backend.account.admin.edit', auth()->user()->user_id) }}">{{ __('navs.general.user.setting') }}</a></li>
                    <li><a href="{{ route('backend.account.admin.change-password', auth()->user()->user_id) }}">{{ __('navs.general.user.change_password') }}</a></li>
                    <li class="divider"></li>
                    <li><a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();">{{ __('navs.general.logout') }}</a><form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">{{ csrf_field() }}</form></li>
                </ul>
            </li>
        </ul>
        <!-- end header navigation right -->
    </div>
    <!-- end container-fluid -->
</div>
<!-- end #header -->