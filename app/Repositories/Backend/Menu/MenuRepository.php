<?php

namespace App\Repositories\Backend\Menu;

use App\Models\Menu\Menu;
use Illuminate\Support\Facades\DB;
use App\Exceptions\GeneralException;
use App\Repositories\BaseRepository;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Route;

/**
 * Class MenuRepository.
 */
class MenuRepository extends BaseRepository
{

    const MODEL = Menu::class;

    public function getTree()
    {
        $where = ['status' => 1, 'hide' => 0];
        $level = config('menu.level', 1);

        if ('local' != config('app.env')) {
            $where['is_local'] = 0;
        }

        $_menus = Collection::make();

        $menus = $this->query()->where($where)->orderBy('sort', 'desc')->get();

        if (!in_array(auth()->guard('admin')->user()->user_id, config('auth.super_admins', []))) {
            // 允许进入的菜单
            $accessMenus = $menus->whereIn('name', 
                    auth()->guard('admin')->user()->me->roles->map(function($role){
                        return $role->permissions->pluck('name');
                    })->collapse()
                );
        } else {
            // 允许进入的菜单
            $accessMenus = $menus;
        }

        // 获取该菜单的所有父节点，并合并重复项
        $accessMenus->each(function($accessMenus, $key) use($menus, $_menus, $level){
            $this->createParentTree($menus, $accessMenus, $level)->map(function($menu) use($_menus){
                $_menus->put($menu->id, $menu);
            });
        });

        return $_menus;
    }

    public function getMap()
    {
        $where = ['status' => 1, 'hide' => 0];
        $level = config('menu.level', 1);

        if ('local' != config('app.env')) {
            $where['is_local'] = 0;
        }

        $map = Collection::make();
        $currentMenu = $this->getCurrentMenu();

        if (!is_null($currentMenu)) {
            $map = $this->createParentTree($this->query()->where($where)->orderBy('sort', 'desc')->get(), $currentMenu)
                        ->map(function($item) use($currentMenu) {
                            $item->is_actived = $item->id == $currentMenu->id ? 0 : 1;
                            return $item;
                        })->sortBy('level');
        }

        return $map;
    }

    public function getCurrentMenu()
    {
        return $this->query()->where('name', Route::currentRouteName())->first();
    }

    public function create(array $input)
    {
        $data = $input['data'];

        $menu = $this->createMenuStub($data);

        DB::transaction(function () use ($menu, $data) {
            if ($menu->save()) {

                // event(new MenuCreated($menu));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.create_error'));
        });
    }

    public function update(Model $menu, array $input)
    {
        $data = $input['data'];

        $menu->icon    = !empty($data['icon']) ? $data['icon'] : '';
        $menu->title   = !empty($data['title']) ? $data['title'] : '';
        $menu->desc    = !empty($data['desc']) ? $data['desc'] : '';
        $menu->has_url = isset($data['has_url']) && 1 == $data['has_url'] ? 1 : 0;

        DB::transaction(function () use ($menu, $data) {
            if ($menu->save()) {

                // event(new MenuUpdated($menu));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.update_error'));
        });
    }

    public function mark(Model $menu, $status)
    {
        if ($menu->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_deactivate_system'));
        }

        $menu->status = $status;

        switch ($status) {
            case 0:
                // event(new MenuDeactivated($menu));
            break;

            case 1:
                // event(new MenuReactivated($menu));
            break;
        }

        if ($menu->save()) {
            return true;
        }

        throw new GeneralException(__('exceptions.backend.mark_error'));
    }

    public function delete(Model $menu)
    {
        if ($menu->is_system == 1) {
            throw new GeneralException(__('exceptions.backend.cant_delete_system'));
        }

        if (!$menu->menus->isEmpty()) {
            throw new GeneralException(__('exceptions.backend.has_menus'));
        }
        
        if ($menu->delete()) {
            // event(new MenuDeleted($menu));

            return true;
        }

        throw new GeneralException(__('exceptions.backend.delete_error'));
    }

    public function forceDelete($id)
    {
        $menu = $this->query()->withTrashed()->find($id);

        if (is_null($menu->deleted_at)) {
            throw new GeneralException(__('exceptions.backend.delete_first'));
        }

        DB::transaction(function () use ($menu) {
            if ($menu->forceDelete()) {
                // event(new MenuPermanentlyDeleted($menu));

                return true;
            }

            throw new GeneralException(__('exceptions.backend.delete_error'));
        });
    }

    public function restore($id)
    {
        $menu = $this->query()->withTrashed()->find($id);

        if (is_null($menu->deleted_at)) {
            throw new GeneralException(trans('exceptions.backend.cant_restore'));
        }

        if ($menu->restore()) {
            // event(new MenuRestored($menu));

            return true;
        }

        throw new GeneralException(trans('exceptions.backend.restore_error'));
    }

    protected function createMenuStub($input)
    {
        $menu = self::MODEL;
        $menu = new $menu;

        if (0 != $input['pid']) {
            $parentMenu = $menu->where('id', $input['pid'])->first();

            if (empty($parentMenu)) {
                throw new GeneralException(__('exceptions.backend.create_error'));
            }

            $level = $parentMenu->level + 1;
        } else {
            $level = 0;
        }

        $menu->pid     = $input['pid'];
        $menu->level   = $level;
        $menu->name    = $input['name'];
        $menu->icon    = !empty($input['icon']) ? $input['icon'] : '';
        $menu->title   = !empty($input['title']) ? $input['title'] : '';
        $menu->desc    = !empty($input['desc']) ? $input['desc'] : '';
        $menu->has_url = isset($input['has_url']) && 1 == $input['has_url'] ? 1 : 0;
        $menu->status  = isset($input['status']) && 1 == $input['status'] ? 1 : 0;
        
        return $menu;
    }

    protected function createSubTree(Collection $data, Model $item, $level = false)
    {
        $id   = $item->id;
        $task = Collection::make($id);
        $tree = Collection::make();

        while (!$task->isEmpty()) {
            $flag = false;

            $data->each(function($itm, $key) use(&$id, $tree, $data, $task, &$flag) {
                if ($id == $itm->pid) {
                    $tree->put($itm->id, $itm);
                    $task->push($itm->id);
                    $data->forget($key);
                    $id = $itm->id;
                    $flag = true;
                }
            });

            if (false == $flag) {
                $task->pop();
                $id = $task->last();
            }

        }

        $tree->put($item->id, $item);
        
        return $tree;
    }

    protected function createParentTree(Collection $data, Model $item, $level = false)
    {
        $tree = Collection::make();
        $pid = $item->pid;

        while ($pid > 0) {
            $data->each(function($itm) use(&$pid, $tree, $level) {
                if ($pid == $itm->id) {
                    $itm->has_sub = false === $level || $level > $itm->level ? 1 : 0;
                    $tree->put($itm->id, $itm);
                    $pid = $itm->pid;
                    return false;
                }
            });
        }

        $tree->put($item->id, $item);

        return false === $level ? 
            $tree : $tree->filter(function($itm) use($level) { return $itm->level <= $level;});
    }
}
