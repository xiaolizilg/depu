<!-- begin #about -->
<div id="about" class="content" data-scrollview="true">
    <!-- begin container -->
    <div class="container" data-animation="true" data-animation-type="fadeInDown">
        <h2 class="content-title">{{ __('frontend.about.title') }}</h2>
        <p class="content-desc">
            {!! __('frontend.about.desc') !!}
        </p>
        <!-- begin row -->
        <div class="row">
            <!-- begin col-4 -->
            <div class="col-md-4 col-sm-6">
                <!-- begin about -->
                <div class="about">
                    <h3>{{ __('frontend.about.body.about.title') }}</h3>
                    {!! __('frontend.about.body.about.content') !!}
                </div>
                <!-- end about -->
            </div>
            <!-- end col-4 -->
            <!-- begin col-4 -->
            <div class="col-md-4 col-sm-6">
                <h3>{{ __('frontend.about.body.author.title') }}</h3>
                <!-- begin about-author -->
                <div class="about-author">
                    <div class="quote bg-silver">
                        <i class="fa fa-quote-left"></i>
                        <h3>{!! __('frontend.about.body.author.dictum') !!}</h3>
                        <i class="fa fa-quote-right"></i>
                    </div>
                    <div class="author">
                        <div class="image">
                            <img src="{{ asset('assets/img/user-3.jpg') }}" alt="Sean Ngu" />
                        </div>
                        <div class="info">
                            {{ __('frontend.about.body.author.name') }}
                            <small>{{ __('frontend.about.body.author.profession') }}</small>
                        </div>
                    </div>
                </div>
                <!-- end about-author -->
            </div>
            <!-- end col-4 -->
            <!-- begin col-4 -->
            <div class="col-md-4 col-sm-12">
                <h3>{{ __('frontend.about.body.skills.title') }}</h3>
                <!-- begin skills -->
                <div class="skills">
                    <div class="skills-name">{{ __('frontend.about.body.skills.body.skill_1.title') }}</div>
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-success" style="width: {{ __('frontend.about.body.skills.body.skill_1.completed') }}">
                            <span class="progress-number">{{ __('frontend.about.body.skills.body.skill_1.completed') }}</span>
                        </div>
                    </div>
                    <div class="skills-name">{{ __('frontend.about.body.skills.body.skill_2.title') }}</div>
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-success" style="width: {{ __('frontend.about.body.skills.body.skill_2.completed') }}">
                            <span class="progress-number">{{ __('frontend.about.body.skills.body.skill_2.completed') }}</span>
                        </div>
                    </div>
                    <div class="skills-name">{{ __('frontend.about.body.skills.body.skill_3.title') }}</div>
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-success" style="width: {{ __('frontend.about.body.skills.body.skill_3.completed') }}">
                            <span class="progress-number">{{ __('frontend.about.body.skills.body.skill_3.completed') }}</span>
                        </div>
                    </div>
                    <div class="skills-name">{{ __('frontend.about.body.skills.body.skill_4.title') }}</div>
                    <div class="progress progress-striped">
                        <div class="progress-bar progress-bar-success" style="width: {{ __('frontend.about.body.skills.body.skill_4.completed') }}">
                            <span class="progress-number">{{ __('frontend.about.body.skills.body.skill_4.completed') }}</span>
                        </div>
                    </div>
                </div>
                <!-- end skills -->
            </div>
            <!-- end col-4 -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end #about -->