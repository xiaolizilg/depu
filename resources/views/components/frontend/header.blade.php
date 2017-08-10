<!-- begin #header -->
<div id="header" class="header navbar navbar-transparent navbar-fixed-top">
    <!-- begin container -->
    <div class="container">
        <!-- begin navbar-header -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/" class="navbar-brand">
                <span class="brand-logo"></span>
                <span class="brand-text">
                    <span class="text-theme">{{ config('app.name') }}</span> {{ __('frontend.subffix_name') }}
                </span>
            </a>
        </div>
        <!-- end navbar-header -->
        <!-- begin navbar-collapse -->
        <div class="collapse navbar-collapse" id="header-navbar">
            <ul class="nav navbar-nav navbar-right">
                <li class="active">
                    <a href="#home" data-click="scroll-to-target">{{ __('navs.general.home') }}</a>
                </li>
                <li><a href="#service" data-click="scroll-to-target">{{ __('navs.frontend.service') }}</a></li>
                <li><a href="#about" data-click="scroll-to-target">{{ __('navs.frontend.about') }}</a></li>
                <li><a href="#team" data-click="scroll-to-target">{{ __('navs.frontend.team') }}</a></li>
                <li><a href="#feature" data-click="scroll-to-target">{{ __('navs.frontend.feature') }}</a></li>
                <li><a href="#contact" data-click="scroll-to-target">{{ __('navs.frontend.contact') }}</a></li>
                 @if(auth()->guard('admin')->check())
                 <li><a href="{{ route('logout') }}" onclick="event.preventDefault();document.getElementById('logout-form').submit();"><i class="fa fa-sign-out"></i> {{ __('navs.general.logout') }}</a><form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">{{ csrf_field() }}</form></li>
                 @endif
            </ul>
        </div>
        <!-- end navbar-collapse -->
    </div>
    <!-- end container -->
</div>
<!-- end #header -->