@extends('layouts.frontend')

@section('title', __('frontend.title'))
@section('body_attr', 'data-spy="scroll" data-target="#header-navbar" data-offset="51"')

@section('content')
    @include('components.frontend.home')
    @include('components.frontend.service')
    @include('components.frontend.milestone')
    @include('components.frontend.about')
    @include('components.frontend.quote')
    @include('components.frontend.team')
    @include('components.frontend.action_box')
    @include('components.frontend.feature')
    @include('components.frontend.contact')
@endsection

@section('page_scripts')
<script src="{{ asset('assets/js/apps.min.js') }}"></script>
@endsection

@section('page_script')
<script>    
    $(document).ready(function() {
        App.init();
    });
</script>
@endsection