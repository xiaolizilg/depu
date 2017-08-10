@extends('layouts.backend')

@section('title', '回复投诉')
@section('page_styles')
<link href="{{ asset('backend/assets/plugins/parsley/src/parsley.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/uploadify/css/uploadifive.css') }}" rel="stylesheet" />
<link href="{{ asset('backend/assets/plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" />
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-inverse" data-sortable-id="form-validation">
            <div class="panel-heading">
                <h4 class="panel-title">投诉历史 </h4>
            </div>
            <div class="panel-body bg-silver">
                <div data-scrollbar="true" data-height="225px">
                    <ul class="chats">
                        <li class="left">
                            <span class="date-time">{{ $complaint->createded_at }}</span>
                            <a href="javascript:;" class="name">{{ $complaint->user->name }}</a>
                            <a href="javascript:;" class="image"><img alt="" src="{{ $complaint->user->avatar }}" /></a>
                            <div class="message">
                                {{ $complaint->content }}
                            </div>
                        </li>
                        @if(!empty($complaint->comment))
                        <li class="right">
                            <span class="date-time">{{ $complaint->updateded_at }}</span>
                            <a href="#" class="name"><span class="label label-primary">专属客服</span> 我</a>
                            <a href="javascript:;" class="image"><img alt="" src="{{ $complaint->commenter->avatar }}" /></a>
                            <div class="message">
                                {{ $complaint->comment }}
                            </div>
                        </li>
                        @endif
                    </ul>
                </div>
            </div>
            <div class="panel-footer">
                <form name="send_message_form" data-id="message-form" method="POST" action="{{ route('backend.content.complaint.update', [$complaint->id]) }}">
                    {!! csrf_field() !!}
                    {!! method_field('PUT') !!}
                    <div class="input-group">
                        <input type="text" class="form-control input-sm" name="comment" placeholder="输入回复内容……">
                        <span class="input-group-btn">
                            <button class="btn btn-primary btn-sm" type="submit">发送</button>
                        </span>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection

@section('page_scripts')
<script src="{{ asset('backend/assets/plugins/parsley/dist/parsley.js') }}"></script>
<script src="{{ asset('backend/assets/js/apps.min.js') }}"></script>
@endsection

@section('page_script')
<script>
    $(document).ready(function() {
        App.init();
        Parsley.setLocale('{{ config('app.locale') }}');
    });
</script>
@endsection