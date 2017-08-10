@extends('layouts.auth')

@section('title', __('strings.auth.login_title'))
@section('page_body', 'pace-top bg-white')

@section('content')
<!-- begin login -->
<div class="login login-with-news-feed">
    <!-- begin news-feed -->
    <div class="news-feed">
        <div class="news-image">
            <img src="{{ asset('backend/assets/img/login-bg/bg-2.jpg') }}" data-id="login-cover-image" alt="" />
        </div>
        <div class="news-caption">
            <h4 class="caption-title"><i class="fa fa-diamond text-success"></i> {{ config('app.name') }} {{ __('frontend.subffix_name') }}</h4>
            <p>
                {{ __('strings.auth.desc') }}
            </p>
        </div>
    </div>
    <!-- end news-feed -->
    <!-- begin right-content -->
    <div class="right-content">
        <!-- begin login-header -->
        <div class="login-header">
            <div class="brand">
                <span class="logo"></span> {{ __('labels.frontend.auth.login_box_title') }}
                <small>{{ __('frontend.home.desc') }}</small>
            </div>
            <div class="icon">
                <i class="fa fa-sign-in"></i>
            </div>
        </div>
        <!-- end login-header -->
        <!-- begin login-content -->
        <div class="login-content">
            <form action="{{ url('/login') }}" method="POST" class="margin-bottom-0">
                {{ csrf_field() }}
                <div class="form-group m-b-15">
                    <input type="text" name="name" class="form-control input-lg" placeholder="{{ __('labels.frontend.auth.name_placeholder') }}" required />
                </div>
                <div class="form-group m-b-15">
                    <input type="password" name="password" class="form-control input-lg" placeholder="{{ __('labels.frontend.auth.password_placeholder') }}" required />
                </div>
                <div class="checkbox m-b-30">
                    <label>
                        <input type="checkbox" /> {{ __('labels.frontend.auth.remember_me') }}
                    </label>
                </div>
                <div class="login-buttons">
                    <button type="submit" class="btn btn-success btn-block btn-lg">{{ __('labels.frontend.auth.login_button') }}</button>
                </div>
                <hr />
                <p class="text-center">
                    {!! __('frontend.footer.body', ['name' => config('app.name'), 'subffix_name' => __('frontend.subffix_name')]) !!}
                </p>
            </form>
        </div>
        <!-- end login-content -->
    </div>
    <!-- end right-container -->
</div>
<!-- end login -->
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