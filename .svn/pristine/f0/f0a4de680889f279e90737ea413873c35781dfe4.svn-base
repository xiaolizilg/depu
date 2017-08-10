@extends('layouts.error')

@section('title', __('http.503.title'))
@section('page_body', 'bg-white p-t-0 pace-top')

@section('page_styles')
<link href="{{ asset('backend/assets/plugins/jquery.countdown/jquery.countdown.css') }}" rel="stylesheet" />
@endsection

@section('content')
<!-- begin coming-soon -->
<div class="coming-soon">
    <div class="coming-soon-header">
        <div class="bg-cover"></div>
        <div class="brand">
            <span class="logo"></span> {{ env('APP_NAME') }}
        </div>
        <div class="timer">
            <div id="timer"></div>
        </div>
        <div class="desc">
            {!! __('http.503.description_1') !!}
        </div>
    </div>
    <div class="coming-soon-content">
        <div class="desc">
            {!! __('http.503.description_2') !!}
        </div>
        <div class="input-group">
            <input type="text" class="form-control" placeholder="Email Address" />
            <div class="input-group-btn">
                <button type="button" class="btn btn-success">{!! __('http.503.button') !!}</button>
            </div>
        </div>
        <p class="help-block m-b-25"><i>{!! __('http.503.dont_spam') !!}</i></p>
        <p>
            {!! __('http.503.contact') !!}
            <a href="#"><i class="fa fa-twitter fa-fw"></i> Twitter</a> and 
            <a href="#"><i class="fa fa-facebook fa-fw"></i> Facebook</a>
        </p>
    </div>
</div>
<!-- end coming-soon -->
@endsection

@section('page_scripts')
<script src="{{ asset('backend/assets/plugins/jquery.countdown/jquery.plugin.js') }}"></script>
<script src="{{ asset('backend/assets/plugins/jquery.countdown/jquery.countdown.js') }}"></script>
<script src="{{ asset('backend/assets/js/coming-soon.demo.min.js') }}"></script>
<script src="{{ asset('backend/assets/js/apps.min.js') }}"></script>
@endsection

@section('page_script')
<script>
	$(document).ready(function() {
		App.init();
		ComingSoon.init();
	});
</script>
@endsection