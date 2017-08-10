<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LanguageController extends Controller
{
    
    public function swap($lang)
    {
        if ( in_array($lang, config('locale.languages')) ) {

            session(['locale' => ['app.locale' => $lang]]);

            return redirect()->back()->with('success', __('alerts.language.success', ['lang' => __('menus.language-picker.langs.' . $lang)]));
        }

        return redirect()->back()->with('danger', __('alerts.language.failed', ['lang' => __('menus.language-picker.langs.' . $lang)]));
    }
}
