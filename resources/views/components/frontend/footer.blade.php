<!-- begin #footer -->
<div id="footer" class="footer">
    <div class="container">
        <div class="footer-brand">
            <div class="footer-brand-logo"></div>
            {{ config('app.name') }} {{ __('frontend.subffix_name') }}
        </div>
        <p>
            {!! __('frontend.footer.body', ['name' => config('app.name'), 'subffix_name' => __('frontend.subffix_name')]) !!}
        </p>
        <p class="social-list">
            <a href="#"><i class="fa fa-facebook fa-fw"></i></a>
            <a href="#"><i class="fa fa-instagram fa-fw"></i></a>
            <a href="#"><i class="fa fa-twitter fa-fw"></i></a>
            <a href="#"><i class="fa fa-google-plus fa-fw"></i></a>
            <a href="#"><i class="fa fa-dribbble fa-fw"></i></a>
        </p>
    </div>
</div>
<!-- end #footer -->