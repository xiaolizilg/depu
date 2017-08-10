@extends('layouts.error')

@section('title', __('http.404.title'))
@section('page_body', 'pace-top')

@section('content')
<!-- begin error -->
<div class="error">
    <div class="error-code m-b-10">{{ __('http.404.title') }} <i class="fa fa-warning"></i></div>
    <div class="error-content">
        <div class="error-message">{{ __('http.404.description') }}</div>
        <div class="error-desc m-b-20">
            {!! __('http.404.content') !!}
        </div>
        <div>
            <a href="/" class="btn btn-success">{{ __('http.404.button') }}</a>
        </div>
    </div>
</div>
<!-- end error -->
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