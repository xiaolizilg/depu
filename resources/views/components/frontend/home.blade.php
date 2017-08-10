<!-- begin #home -->
<div id="home" class="content has-bg home">
    <!-- begin content-bg -->
    <div class="content-bg">
        <img src="{{ asset('assets/img/home-bg.jpg') }}" alt="Home" />
    </div>
    <!-- end content-bg -->
    <!-- begin container -->
    <div class="container home-content">
        <h1>{{ __('frontend.home.title', ['name' => config('app.name'), 'subffix_name' => __('frontend.subffix_name')]) }}</h1>
        <h3>{{ __('frontend.home.desc') }}</h3>
        <p>
            {!! __('frontend.home.body.content') !!}
        </p>
        <a href="#service" data-click="scroll-to-target" class="btn btn-theme">{{ __('frontend.home.body.learn_more') }}</a> <a href="/login" class="btn btn-outline">{{ __('frontend.home.body.login_now') }}</a><br />
        <br />
        {!! __('frontend.home.body.contact') !!}
    </div>
    <!-- end container -->
</div>
<!-- end #home -->