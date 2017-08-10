@extends('layouts.backend')

@section('title', __('backend.dashboard.title'))
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/jquery-jvectormap/jquery-jvectormap.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
@endsection

@section('content')
<!-- begin row -->
<div class="row">
    <div class="col-md-12">
        <h3 class="text-center">{{__('backend.dashboard.welcome')}}</h3>
    </div>
</div>
<!-- end row -->
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