<?php

namespace App\Models\Order\Traits\Attribute;

use Carbon\Carbon as Carbon;

/**
 * Class RunningAccountAttribute.
 */
trait RunningAccountAttribute
{
    public function getPaidAtAttribute($date)
    {
        if (empty($date)) {
            return '';
        }

        if (request()->expectsJson()) {
            return Carbon::parse($date)->format('Y-m-d');
        }

        return Carbon::parse($date);
    }

    public function getMoneyAttribute($value)
    {
        return $value / 100;
    }

    public function getCreatedAtAttribute($date)
    {
        if (request()->expectsJson()) {
            return Carbon::parse($date)->format('Y-m-d');
        }

        return Carbon::parse($date);
    }

    public function getUpdatedAtAttribute($date)
    {
        if (request()->expectsJson()) {
            return Carbon::parse($date)->format('Y-m-d');
        }

        return Carbon::parse($date);
    }

    public function getPayTypeDescAttribute()
    {
        $desc = '';

        switch ($this->attributes['pay_type']) {
            case 1:
                $desc = '<span class="text-info">支付宝</span>';
                break;
            case 2:
                $desc = '<span class="text-info">微信</span>';
                break;
            case 3:
                $desc = '<span class="text-info">银联</span>';
                break;
            case 4:
                $desc = '<span class="text-info">线下</span>';
                break;
        }

        return $desc;
    }

    /**
     * @return string
     */
    public function getStatusDescAttribute()
    {
        $desc = '<span class="text-danger"><i class="fa fa-ban"></i> 未知</span>';

        switch ($this->attributes['status']) {
            case 0:
                $desc = '<span class="text-inverse"><i class="fa fa-ban"></i> 已关闭</span>';
                break;
            case 1:
                $desc = '<span class="text-success"><i class="fa fa-check-circle"></i> 已完成</span>';
                break;
            case 2:
                $desc = '<span class="text-info"><i class="fa fa-exclamation-circle"></i> 已支付</span>';
                break;
            case 3:
                $desc = '<span class="text-warning"><i class="fa fa-exclamation-circle"></i> 未支付</span>';
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
    public function getEditButtonAttribute($route = '')
    {
        return '<a href="'. (!empty($route) ? route($route, $this) : '#') .'" class="m-r-5 text-primary"><i class="fa fa-pencil" data-toggle="tooltip" data-placement="top" title="'.trans('buttons.general.crud.edit').'"></i></a> ';
    }

    /**
     * @return string
     */
    public function getRefundButtonAttribute($route = '')
    {
        if ($this->status == 5) {
            return '<a href="#" data-comfirm="true" data-method="GET" data-message="确定同意退款吗？" data-action="' . (!empty($route) ? route($route, [$this, 4]) : '#') . '" class="m-r-5 text-success"><i class="fa fa-cny" data-toggle="tooltip" data-placement="top" title="退款"></i></a> ';
        }

        return '';
    }

    /**
     * @return string
     */
    public function getTripButtonAttribute($route = '')
    {
        if ($this->status == 2) {
            return '<a href="'. (!empty($route) ? route($route, $this) : '#') .'" class="m-r-5 text-info"><i class="fa fa-flag" data-toggle="tooltip" data-placement="top" title="行程"></i></a> ';
        }

        return '';
    }

    /**
     * @return string
     */
    public function getDeleteButtonAttribute($route = '')
    {
        if ($this->is_system != 1) {
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
    public function getActionButtonsAttribute()
    {
        return
            $this->getShowButtonAttribute('backend.running.show');
    }

}
