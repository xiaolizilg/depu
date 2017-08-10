<?php

namespace App\Http\Controllers\Api\Auth;

use App\Models\Agreement\Agreement;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Repositories\Api\User\UserRepository;
use App\Http\Controllers\Api\Auth\Traits\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    protected $users;

    protected $agreements;

    public function __construct(
            UserRepository $users,
            Agreement $agreements
        )
    {
        $this->users      = $users;
        $this->agreements = $agreements;
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|mobile|max:16|unique:user_accounts,name,0,user_id,type,3',
            'code' => 'required|string',
            'password' => 'required|alpha_num|min:6|max:16',
            'accept' => 'accepted',
        ]);
    }

    /**
     * Create a new user auth instance after a valid registration.
     *
     * @param  array  $data
     * @return User
     */
    protected function create(array $data)
    {
        return $this->users->createMobileUser($data);
    }

    public function agreement()
    {
        $agreement = $this->agreements->first();

        $agreement = !empty($agreement) ? $agreement->content : '';

        $agreement = str_replace('src="', 'src="' . config('app.url'), $agreement);

        $agreement = '<style>p img{width: 100%}</style>' . $agreement;

        return api(compact('agreement'));
    }
}
