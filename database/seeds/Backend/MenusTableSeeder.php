<?php

use Illuminate\Database\Seeder;
use Carbon\Carbon as Carbon;

class MenusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $created_at = $updated_at = Carbon::now();

        $menus = [
            ['pid' => 0, 'title' => '管&nbsp;理&nbsp;中&nbsp;心', 'icon' => 'dashboard', 'name' => 'backend.dashboard.index', 'has_url' => 1, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 0, 'title' => '用&nbsp;户', 'icon' => 'user', 'name' => 'backend.account', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 0, 'title' => '权&nbsp;限', 'icon' => 'lock', 'name' => 'backend.access', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 0, 'title' => '分&nbsp;类', 'icon' => 'bars', 'name' => 'backend.category', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 0, 'title' => '日&nbsp;志', 'icon' => 'pencil', 'name' => 'backend.log', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 0, 'title' => '系&nbsp;统', 'icon' => 'laptop', 'name' => 'backend.system', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 2, 'title' => '管理员', 'icon' => '', 'name' => 'backend.account.admin.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 2, 'title' => '会员', 'icon' => '', 'name' => 'backend.account.user.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 3, 'title' => '角色管理', 'icon' => '', 'name' => 'backend.access.role.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 3, 'title' => '权限管理', 'icon' => '', 'name' => 'backend.access.permission.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 3, 'title' => '分组管理', 'icon' => '', 'name' => 'backend.access.group.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 5, 'title' => '操作日志', 'icon' => '', 'name' => 'backend.log.action.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 5, 'title' => '系统日志', 'icon' => '', 'name' => 'backend.log.system.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 6, 'title' => '菜单管理', 'icon' => '', 'name' => 'backend.system.menu.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 7, 'title' => '管理员详情', 'icon' => '', 'name' => 'backend.account.admin.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 7, 'title' => '添加管理员', 'icon' => '', 'name' => 'backend.account.admin.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 7, 'title' => '编辑管理员', 'icon' => '', 'name' => 'backend.account.admin.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 7, 'title' => '修改管理员密码', 'icon' => '', 'name' => 'backend.account.admin.change-password', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 7, 'title' => '回收站', 'icon' => '', 'name' => 'backend.account.admin.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 8, 'title' => '会员详情', 'icon' => '', 'name' => 'backend.account.user.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 8, 'title' => '添加会员', 'icon' => '', 'name' => 'backend.account.user.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 8, 'title' => '编辑会员', 'icon' => '', 'name' => 'backend.account.user.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 8, 'title' => '修改会员密码', 'icon' => '', 'name' => 'backend.account.user.change-password', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 8, 'title' => '回收站', 'icon' => '', 'name' => 'backend.account.user.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 9, 'title' => '角色详情', 'icon' => '', 'name' => 'backend.access.role.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 9, 'title' => '添加角色', 'icon' => '', 'name' => 'backend.access.role.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 9, 'title' => '编辑角色', 'icon' => '', 'name' => 'backend.access.role.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 9, 'title' => '角色授权', 'icon' => '', 'name' => 'backend.access.role.set-role', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 9, 'title' => '访问授权', 'icon' => '', 'name' => 'backend.access.role.set-permission', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 9, 'title' => '回收站', 'icon' => '', 'name' => 'backend.access.role.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 10, 'title' => '权限详情', 'icon' => '', 'name' => 'backend.access.permission.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 10, 'title' => '添加权限', 'icon' => '', 'name' => 'backend.access.permission.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 10, 'title' => '编辑权限', 'icon' => '', 'name' => 'backend.access.permission.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 10, 'title' => '回收站', 'icon' => '', 'name' => 'backend.access.permission.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 11, 'title' => '分组详情', 'icon' => '', 'name' => 'backend.access.group.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 11, 'title' => '添加分组', 'icon' => '', 'name' => 'backend.access.group.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 11, 'title' => '编辑分组', 'icon' => '', 'name' => 'backend.access.group.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 11, 'title' => '回收站', 'icon' => '', 'name' => 'backend.access.group.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 12, 'title' => '日志详情', 'icon' => '', 'name' => 'backend.log.system.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 13, 'title' => '日志详情', 'icon' => '', 'name' => 'backend.log.action.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 14, 'title' => '菜单详情', 'icon' => '', 'name' => 'backend.system.menu.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 14, 'title' => '添加菜单', 'icon' => '', 'name' => 'backend.system.menu.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 14, 'title' => '编辑菜单', 'icon' => '', 'name' => 'backend.system.menu.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 14, 'title' => '回收站', 'icon' => '', 'name' => 'backend.system.menu.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 8, 'title' => '档案管理', 'icon' => '', 'name' => 'backend.account.user.records', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            
            ['pid' => 0, 'title' => '项目', 'icon' => 'inbox', 'name' => 'backend.project', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 46, 'title' => '项目管理', 'icon' => '', 'name' => 'backend.project.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 47, 'title' => '编辑项目', 'icon' => '', 'name' => 'backend.project.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 46, 'title' => '国家管理', 'icon' => '', 'name' => 'backend.project.country.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 49, 'title' => '创建国家', 'icon' => '', 'name' => 'backend.project.country.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 49, 'title' => '编辑国家', 'icon' => '', 'name' => 'backend.project.country.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 49, 'title' => '删除国家列表', 'icon' => '', 'name' => 'backend.project.country.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 0, 'title' => '内容', 'icon' => 'cube', 'name' => 'backend.content.service', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 53, 'title' => '服务管理', 'icon' => '', 'name' => 'backend.content.service.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 54, 'title' => '编辑服务', 'icon' => '', 'name' => 'backend.content.service.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 0, 'title' => '医院', 'icon' => 'heart', 'name' => 'backend.hospital', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 56, 'title' => '医院管理', 'icon' => '', 'name' => 'backend.hospital.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加医院', 'icon' => '', 'name' => 'backend.hospital.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑医院', 'icon' => '', 'name' => 'backend.hospital.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的医院', 'icon' => '', 'name' => 'backend.hospital.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '医院图片管理', 'icon' => '', 'name' => 'backend.hospital.image.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '医院医生', 'icon' => '', 'name' => 'backend.hospital.doctor.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加医生', 'icon' => '', 'name' => 'backend.hospital.doctor.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑医生', 'icon' => '', 'name' => 'backend.hospital.doctor.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的医生', 'icon' => '', 'name' => 'backend.hospital.doctor.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '医疗翻译管理', 'icon' => '', 'name' => 'backend.hospital.medical.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加医疗翻译', 'icon' => '', 'name' => 'backend.hospital.medical.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑医疗翻译', 'icon' => '', 'name' => 'backend.hospital.medical.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的医疗翻译', 'icon' => '', 'name' => 'backend.hospital.medical.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '生活翻译管理', 'icon' => '', 'name' => 'backend.hospital.life.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加生活翻译', 'icon' => '', 'name' => 'backend.hospital.life.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑生活翻译', 'icon' => '', 'name' => 'backend.hospital.life.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的生活翻译', 'icon' => '', 'name' => 'backend.hospital.life.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '保姆管理', 'icon' => '', 'name' => 'backend.hospital.nanny.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加保姆', 'icon' => '', 'name' => 'backend.hospital.nanny.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑保姆', 'icon' => '', 'name' => 'backend.hospital.nanny.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的保姆', 'icon' => '', 'name' => 'backend.hospital.nanny.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '出租车管理', 'icon' => '', 'name' => 'backend.hospital.taxi.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加出租车', 'icon' => '', 'name' => 'backend.hospital.taxi.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑出租车', 'icon' => '', 'name' => 'backend.hospital.taxi.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的出租车', 'icon' => '', 'name' => 'backend.hospital.taxi.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '出租车图片管理', 'icon' => '', 'name' => 'backend.hospital.taxi.image.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '酒店管理', 'icon' => '', 'name' => 'backend.hospital.hotal.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加酒店', 'icon' => '', 'name' => 'backend.hospital.hotal.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑酒店', 'icon' => '', 'name' => 'backend.hospital.hotal.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的酒店', 'icon' => '', 'name' => 'backend.hospital.hotal.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '酒店图片管理', 'icon' => '', 'name' => 'backend.hospital.hotal.image.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '景区管理', 'icon' => '', 'name' => 'backend.hospital.tourism.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加景区', 'icon' => '', 'name' => 'backend.hospital.tourism.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑景区', 'icon' => '', 'name' => 'backend.hospital.tourism.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的景区', 'icon' => '', 'name' => 'backend.hospital.tourism.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '景点管理', 'icon' => '', 'name' => 'backend.hospital.tourism.spot.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '添加景点', 'icon' => '', 'name' => 'backend.hospital.tourism.spot.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '编辑景点', 'icon' => '', 'name' => 'backend.hospital.tourism.spot.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '已删除的景点', 'icon' => '', 'name' => 'backend.hospital.tourism.spot.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 57, 'title' => '景点图片管理', 'icon' => '', 'name' => 'backend.hospital.tourism.spot.image.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 56, 'title' => '评论管理', 'icon' => '', 'name' => 'backend.comment.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 97, 'title' => '回复评论', 'icon' => '', 'name' => 'backend.comment.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 97, 'title' => '已删除的评论', 'icon' => '', 'name' => 'backend.comment.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 53, 'title' => '投诉管理', 'icon' => '', 'name' => 'backend.content.complaint.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 100, 'title' => '回复投诉', 'icon' => '', 'name' => 'backend.content.complaint.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 0, 'title' => '订单', 'icon' => 'money', 'name' => 'backend.order', 'has_url' => 0, 'level' => 0, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 102, 'title' => '订单管理', 'icon' => '', 'name' => 'backend.order.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 103, 'title' => '查看订单', 'icon' => '', 'name' => 'backend.order.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 103, 'title' => '行程管理', 'icon' => '', 'name' => 'backend.order.trip.index', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 103, 'title' => '编辑行程', 'icon' => '', 'name' => 'backend.order.trip.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 103, 'title' => '添加行程', 'icon' => '', 'name' => 'backend.order.trip.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 102, 'title' => '财务管理', 'icon' => '', 'name' => 'backend.running.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 108, 'title' => '财务详情', 'icon' => '', 'name' => 'backend.running.show', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 53, 'title' => '友情链接管理', 'icon' => '', 'name' => 'backend.content.blogroll.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 110, 'title' => '添加友情链接', 'icon' => '', 'name' => 'backend.content.blogroll.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 110, 'title' => '编辑友情链接', 'icon' => '', 'name' => 'backend.content.blogroll.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 110, 'title' => '已删除的友情链接', 'icon' => '', 'name' => 'backend.content.blogroll.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],

            ['pid' => 53, 'title' => '资讯管理', 'icon' => '', 'name' => 'backend.content.news.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 114, 'title' => '添加资讯', 'icon' => '', 'name' => 'backend.content.news.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 114, 'title' => '编辑资讯', 'icon' => '', 'name' => 'backend.content.news.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 114, 'title' => '已删除的资讯', 'icon' => '', 'name' => 'backend.content.news.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 53, 'title' => '站点设置', 'icon' => '', 'name' => 'backend.content.agreement.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 53, 'title' => '版本管理', 'icon' => '', 'name' => 'backend.content.version.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 119, 'title' => '添加版本', 'icon' => '', 'name' => 'backend.content.version.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 119, 'title' => '编辑版本', 'icon' => '', 'name' => 'backend.content.version.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 119, 'title' => '已删除的版本', 'icon' => '', 'name' => 'backend.content.version.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 53, 'title' => '轮播图管理', 'icon' => '', 'name' => 'backend.content.banner.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 123, 'title' => '添加轮播图', 'icon' => '', 'name' => 'backend.content.banner.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 123, 'title' => '编辑轮播图', 'icon' => '', 'name' => 'backend.content.banner.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 123, 'title' => '已删除的轮播图', 'icon' => '', 'name' => 'backend.content.banner.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 53, 'title' => '广告管理', 'icon' => '', 'name' => 'backend.content.ad.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 127, 'title' => '添加广告', 'icon' => '', 'name' => 'backend.content.ad.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 127, 'title' => '编辑广告', 'icon' => '', 'name' => 'backend.content.ad.edit', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 127, 'title' => '已删除的广告', 'icon' => '', 'name' => 'backend.content.ad.deleted', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 53, 'title' => '推送管理', 'icon' => '', 'name' => 'backend.content.pusher.index', 'has_url' => 1, 'level' => 1, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
            ['pid' => 131, 'title' => '添加推送', 'icon' => '', 'name' => 'backend.content.pusher.create', 'has_url' => 1, 'level' => 2, 'is_system' => 1, 'status' => 1, 'created_at' => $created_at, 'updated_at' => $updated_at],
        ];

        DB::table('menus')->insert($menus);
    }
}
