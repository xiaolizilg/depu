@extends('layouts.backend')

@section('title', __('backend.user.show.title'))

@section('content')
<div class="row">
    <div class="col-md-12">
        <h3 class="text-center">你进入了未知空间。 :)</h3>
    </div>
</div>
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