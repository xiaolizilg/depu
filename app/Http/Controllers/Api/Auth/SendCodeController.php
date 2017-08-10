<?php

namespace App\Http\Controllers\Api\Auth;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Api\Auth\Traits\SendMobileCode;

class SendCodeController extends Controller
{
    use SendMobileCode;
}
