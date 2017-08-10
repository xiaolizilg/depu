<?php

namespace App\Models\User\Traits\Attribute;

use Carbon\Carbon as Carbon;

/**
 * Class UserAttribute.
 */
trait UserAttribute
{
    public function getUidAttribute()
    {
        return 1000000 + $this->id;
    }

    /**
     * @return string
     */
    public function getAccountsDescAttribute()
    {
        return $this->accounts->map(function($account){
            $account->account_desc = '<a href="#" data-toggle="tooltip" data-placement="top" title="' . $account->name . '">' . __('auth.account_types.' . $account->type . '.icon') . '</a>';
            return $account;
        })->implode('account_desc', '');
    }

    /**
     * @return string
     */
    public function getAvatarAttribute()
    {
        return get_image($this->avatar_id);
    }

    /**
     * @return string
     */
    public function getCreatedAtAttribute($date)
    {
        if (request()->expectsJson()) {
            return Carbon::parse($date)->format('Y-m-d');
        }

        return Carbon::parse($date);
    }

    /**
     * @return string
     */
    public function getUpdatedAtAttribute($date)
    {
        if (request()->expectsJson()) {
            return Carbon::parse($date)->format('Y-m-d');
        }

        return Carbon::parse($date);
    }

    /**
     * @return string
     */
    public function getStatusDescAttribute()
    {
        $desc = '<span class="text-danger"><i class="fa fa-ban"></i> 未知</span>';

        switch ($this->attributes['status']) {
            case 0:
                $desc = '<span class="text-warning"><i class="fa fa-ban"></i> 停用</span>';
                break;
            case 1:
                $desc = '<span class="text-success"><i class="fa fa-check-circle"></i> 启用</span>';
                break;
        }
        
        return $desc;
    }

    /**
     * @return string
     */
    public function getShowButtonAttribute($route = '')
    {
        return '<a href="'. (!empty($route) ? route($route, $this) : '#') .'" class="m-r-5 text-info"><i class="fa fa-search" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.general.crud.view').'"></i></a> ';
    }

    /**
     * @return string
     */
    public function getRecordButtonAttribute($route = '')
    {
        return '<a href="'. (!empty($route) ? route($route, $this) : '#') .'" class="m-r-5 text-info"><i class="fa fa-search" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.general.crud.view').'"></i></a>';
    }

    /**
     * @return string
     */
    public function getEditButtonAttribute($route = '')
    {
        return '<a href="'. (!empty($route) ? route($route, $this) : '#') .'" class="m-r-5 text-primary"><i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.general.crud.edit').'"></i></a> ';
    }

    /**
     * @return string
     */
    public function getChangePasswordButtonAttribute($route = '')
    {
        return '<a href="'. (!empty($route) ? route($route, $this) : '#') .'" class="m-r-5 text-info"><i class="fa fa-refresh" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.backend.change_password').'"></i></a> ';
    }

    /**
     * @return string
     */
    public function getStatusButtonAttribute($route = '')
    {
        if ($this->id != auth()->id()) {
            switch ($this->status) {
                case 0:
                    return '<a href="#" data-comfirm="true" data-method="GET" data-message="' . __('alerts.general.comfirm.active') . '" data-action="' . (!empty($route) ? route($route, [$this, 1]) : '#') . '" class="m-r-5 text-success"><i class="fa fa-play" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.backend.activate').'"></i></a> ';
                // No break

                case 1:
                    return '<a href="#" data-comfirm="true" data-method="GET" data-message="' . __('alerts.general.comfirm.disable') . '" data-action="' . (!empty($route) ? route($route, [$this, 0]) : '#') . '" class="m-r-5 text-warning"><i class="fa fa-pause" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.backend.deactivate').'"></i></a> ';
                // No break

                default:
                    return '';
                // No break
            }
        }

        return '';
    }

    /**
     * @return string
     */
    public function getDeleteButtonAttribute($route = '')
    {
        if ($this->id != auth()->id() && !in_array($this->id, config('auth.super_admins', [1]))) {
            return '<a href="#" data-comfirm="true" data-method="POST" data-message="' . __('alerts.general.comfirm.destroy') . '" data-action="destroy-form-' . $this->id . '" class="m-r-5 text-danger"><i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.general.crud.delete').'"></i><form id="destroy-form-'.$this->id.'" action="'. (!empty($route) ? route($route, $this) : '#') .'" method="POST" style="display: none;">'.csrf_field() . method_field('DELETE').'</form></a> ';
        }

        return '';
    }

    /**
     * @return string
     */
    public function getRestoreButtonAttribute($route = '')
    {
        return '<a href="#" data-comfirm="true" data-method="GET" data-message="' . __('alerts.general.comfirm.restore') . '" data-action="'. (!empty($route) ? route($route, $this) : '#') .'" class="m-r-5 text-info"><i class="fa fa-refresh" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.backend.restore').'"></i></a> ';
    }

    /**
     * @return string
     */
    public function getDeletePermanentlyButtonAttribute($route = '')
    {
        return '<a href="#" data-comfirm="true" data-method="GET" data-message="' . __('alerts.general.comfirm.delete') . '" data-action="'. (!empty($route) ? route($route, $this) : '#') .'" class="m-r-5 text-danger"><i class="fa fa-trash" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.backend.delete_permanently').'"></i></a> ';
    }

    /**
     * @return string
     */
    public function getAdminActionButtonsAttribute()
    {
        if ($this->trashed()) {
            return $this->getRestoreButtonAttribute('backend.account.admin.restore').
                $this->getDeletePermanentlyButtonAttribute('backend.account.admin.forcedelete');
        }

        return
            $this->getShowButtonAttribute('backend.account.admin.show').
            $this->getEditButtonAttribute('backend.account.admin.edit').
            $this->getChangePasswordButtonAttribute('backend.account.admin.change-password').
            $this->getStatusButtonAttribute('backend.account.admin.mark').
            $this->getDeleteButtonAttribute('backend.account.admin.destroy');
    }

    /**
     * @return string
     */
    public function getUserActionButtonsAttribute()
    {
        // if ($this->trashed()) {
        //     return $this->getRestoreButtonAttribute('backend.account.user.restore').
        //         $this->getDeletePermanentlyButtonAttribute('backend.account.user.forcedelete');
        // }

        return
            $this->getShowButtonAttribute('backend.account.user.show').
            // $this->getRecordButtonAttribute('backend.account.user.records').
            // $this->getEditButtonAttribute('backend.account.user.edit').
            // $this->getChangePasswordButtonAttribute('backend.account.user.change-password').
            $this->getStatusButtonAttribute('backend.account.user.mark');
    }

    /**
     * @return string
     */
    public function getOwnAdminActionButtonsAttribute()
    {
        return
            $this->getEditButtonAttribute('backend.account.user.edit').
            $this->getDeleteButtonAttribute('backend.account.user.destroy');
    }

}
