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
    <link href="//fonts.lug.ustc.edu.cn/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
    <link href="{{ asset('assets/plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/plugins/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/css/animate.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/css/style.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/css/style-responsive.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/css/theme/default.css') }}" id="theme" rel="stylesheet" />
    <!-- ================== END BASE CSS STYLE ================== -->

    <!-- ================== BEGIN PAGE CSS STYLE ================== -->
    <link href="{{ asset('backend/assets/plugins/gritter/css/jquery.gritter.css') }}" rel="stylesheet" />
    @section('page_styles')
    @show
    <!-- ================== END PAGE CSS STYLE ================== -->
    
    <!-- ================== BEGIN BASE JS ================== -->
    <script src="{{ asset('assets/plugins/pace/pace.min.js') }}"></script>
    <!-- ================== END BASE JS ================== -->
</head>
<body @yield('body_attr')>
    <!-- begin #page-container -->
    <div id="page-container" class="fade">
        @include('components.frontend.header')
        @yield('content')
        @include('components.frontend.footer')
        @include('components.frontend.theme_panel')
    </div>
    <!-- end #page-container -->
    
    <!-- ================== BEGIN BASE JS ================== -->
    <script src="{{ asset('assets/plugins/jquery/jquery-1.9.1.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/jquery/jquery-migrate-1.1.0.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.min.js') }}"></script>
    <!--[if lt IE 9]>
        <script src="{{ asset('assets/crossbrowserjs/html5shiv.js') }}"></script>
        <script src="{{ asset('assets/crossbrowserjs/respond.min.js') }}"></script>
        <script src="{{ asset('assets/crossbrowserjs/excanvas.min.js') }}"></script>
    <![endif]-->
    <script src="{{ asset('assets/plugins/jquery-cookie/jquery.cookie.js') }}"></script>
    <script src="{{ asset('assets/plugins/scrollMonitor/scrollMonitor.js') }}"></script>
    <script src="{{ asset('assets/js/apps.min.js') }}"></script>
    <!-- ================== END BASE JS ================== -->

    <!-- ================== BEGIN PAGE LEVEL JS ================== -->
    <script src="{{ asset('backend/assets/plugins/gritter/js/jquery.gritter.js') }}"></script>
    @section('page_scripts')
    @show
    <!-- ================== END PAGE LEVEL JS ================== -->
    @section('page_script')
    @show
    @include('components.message')
</body>
</html>
