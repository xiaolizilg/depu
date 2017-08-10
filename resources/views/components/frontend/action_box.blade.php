<!-- beign #action-box -->
<div id="action-box" class="content has-bg" data-scrollview="true">
    <!-- begin content-bg -->
    <div class="content-bg">
        <img src="{{ asset('assets/img/action-bg.jpg') }}" alt="Action" />
    </div>
    <!-- end content-bg -->
    <!-- begin container -->
    <div class="container" data-animation="true" data-animation-type="fadeInRight">
        <!-- begin row -->
        <div class="row action-box">
            <!-- begin col-9 -->
            <div class="col-md-9 col-sm-9">
                <div class="icon-large text-theme">
                    <i class="fa fa-binoculars"></i>
                </div> 
                <h3>{{ __('frontend.action_box.title', ['name' => config('app.name'), 'subffix_name' => __('frontend.subffix_name')]) }}</h3>
                <p>
                   {{ __('frontend.action_box.desc') }}
                </p>
            </div>
            <!-- end col-9 -->
            <!-- begin col-3 -->
            <div class="col-md-3 col-sm-3">
                <a href="{{ route('login') }}" class="btn btn-outline btn-block">{{ __('frontend.action_box.button') }}</a>
            </div>
            <!-- end col-3 -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end #action-box -->