@extends('layouts.backend')

@section('title', __('backend.admin.show.title'))

@section('content')
<div class="row">
    <div class="col-md-12">
        <!-- begin profile-container -->
        <div class="profile-container">
            <!-- begin profile-section -->
            <div class="profile-section">
                <!-- begin profile-left -->
                <div class="profile-left">
                    <!-- begin profile-image -->
                    <div class="profile-image">
                        <img class="m-auto" src="{{ $admin->avatar }}" height="100%" />
                        <i class="fa fa-user hide"></i>
                    </div>
                </div>
                <!-- end profile-left -->
                <!-- begin profile-right -->
                <div class="profile-right">
                    <!-- begin profile-info -->
                    <div class="profile-info">
                        <!-- begin table -->
                        <div class="table-responsive">
                            <table class="table table-profile">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>
                                            <h4>{{ $admin->name }} <small>{{ in_array($admin->id, config('auth.super_admins')) ? __('roles.administrator') : ($admin->roles->isEmpty() ? __('roles.no_roles') : $admin->roles->forPage(1, 3)->implode('title', '&nbsp;&nbsp;')) }}</small></h4>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="highlight">
                                        <td class="field">绑定账号</td>
                                        <td>{!! $admin->accounts->implode('name', '<br/><br/>') !!}</td>
                                    </tr>
                                    <tr class="divider">
                                        <td colspan="2"></td>
                                    </tr>
                                    <tr>
                                        <td class="field">性别</td>
                                        <td>{{ $admin->info->sex_desc }}</td>
                                    </tr>
                                    <tr>
                                        <td class="field">真实姓名</td>
                                        <td>{{ $admin->info->real_name }}</td>
                                    </tr>
                                    <tr>
                                        <td class="field">生日</td>
                                        <td>{{ $admin->info->birthday }}</td>
                                    </tr>
                                    <tr>
                                        <td class="field">联系方式</td>
                                        <td>{{ $admin->info->mobile }}</td>
                                    </tr>
                                    <tr>
                                        <td class="field">最近登录时间</td>
                                        <td>{{ $admin->extend->last_logined_at }}</td>
                                    </tr>
                                    <tr>
                                        <td class="field">最近登录IP</td>
                                        <td>{{ $admin->extend->last_logined_ip }}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!-- end table -->
                    </div>
                    <!-- end profile-info -->
                </div>
                <!-- end profile-right -->
            </div>
            <!-- end profile-section -->
        </div>
        <!-- end profile-container -->
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