<!-- begin #quote -->
<div id="quote" class="content bg-black-darker has-bg" data-scrollview="true">
    <!-- begin content-bg -->
    <div class="content-bg">
        <img src="{{ asset('assets/img/quote-bg.jpg') }}" alt="Quote" />
    </div>
    <!-- end content-bg -->
    <!-- begin container -->
    <div class="container" data-animation="true" data-animation-type="fadeInLeft">
        <!-- begin row -->
        <div class="row">
            <!-- begin col-12 -->
            <div class="col-md-12 quote">
                <i class="fa fa-quote-left"></i> 
                {!! __('frontend.quote.content') !!}
                <i class="fa fa-quote-right"></i>
                <small>{{ __('frontend.quote.desc') }}</small>
            </div>
            <!-- end col-12 -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end #quote -->