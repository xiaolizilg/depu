<!DOCTYPE html>
<!--[if IE 8]> <html lang="{{ config('app.locale') }}" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="{{ config('app.locale') }}">
<!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <title>{{ config('app.name') }} | @yield('title')</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />

    <!-- ================== BEGIN BASE CSS STYLE ================== -->
    <!-- <link href="//fonts.lug.ustc.edu.cn/css?family=Open+Sans:300,400,600,700" rel="stylesheet"> -->
    <link href="{{ asset('backend/assets/plugins/jquery-ui/themes/base/minified/jquery-ui.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/plugins/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/css/animate.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/css/style.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/css/style-responsive.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/css/theme/default.css') }}" rel="stylesheet" id="theme" />
    <!-- ================== END BASE CSS STYLE ================== -->

    <!-- ================== BEGIN PAGE CSS STYLE ================== -->
    <link href="{{ asset('backend/assets/plugins/flag-icon/css/flag-icon.css') }}" rel="stylesheet" />
    <link href="{{ asset('backend/assets/plugins/gritter/css/jquery.gritter.css') }}" rel="stylesheet" />
    @section('page_styles')
    @show
    <!-- ================== END PAGE CSS STYLE ================== -->
    
    <!-- ================== BEGIN BASE JS ================== -->
    <script src="{{ asset('backend/assets/plugins/pace/pace.min.js') }}"></script>
    <!-- ================== END BASE JS ================== -->

    <script>
        window.Larawos = { api_token : '{{ auth()->user()->api_token }}' };
    </script>
</head>
<body>
    @include('components.loading')
    
    <!-- begin #page-container -->
    <div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
        @include('components.backend.header')
        
        @include('components.backend.sidebar')
        <div id="content" class="content">
            @include('components.backend.site_map')
            @yield('content')
        </div>
        
        @include('components.topping')
    </div>
    <!-- end page container -->
    
    <!-- ================== BEGIN BASE JS ================== -->
    <script src="{{ asset('backend/assets/plugins/jquery/jquery-1.9.1.min.js') }}"></script>
    <script src="{{ asset('backend/assets/plugins/jquery/jquery-migrate-1.1.0.min.js') }}"></script>
    <script src="{{ asset('backend/assets/plugins/jquery-ui/ui/minified/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('backend/assets/plugins/bootstrap/js/bootstrap.min.js') }}"></script>
    <!--[if lt IE 9]>
        <script src="{{ asset('backend/assets/crossbrowserjs/html5shiv.js') }}"></script>
        <script src="{{ asset('backend/assets/crossbrowserjs/respond.min.js') }}"></script>
        <script src="{{ asset('backend/assets/crossbrowserjs/excanvas.min.js') }}"></script>
    <![endif]-->
    <script src="{{ asset('backend/assets/plugins/slimscroll/jquery.slimscroll.min.js') }}"></script>
    <script src="{{ asset('backend/assets/plugins/jquery-cookie/jquery.cookie.js') }}"></script>
    <!-- ================== END BASE JS ================== -->
    
    <!-- ================== BEGIN PAGE LEVEL JS ================== -->
    <script src="{{ asset('backend/assets/plugins/gritter/js/jquery.gritter.js') }}"></script>
    @section('page_scripts')
    @show
    <!-- ================== END PAGE LEVEL JS ================== -->
    @section('page_script')
    @show
    @include('components.comfirm')
    @include('components.message')
</body>
</html>
