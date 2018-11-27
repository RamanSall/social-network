<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Jrean\UserVerification\Traits\VerifiesUsers;
    use Jrean\UserVerification\Facades\UserVerification;
use Illuminate\Http\Request;
use Illuminate\Auth\Events\Registered;

use App\Mail\EmailVerification;
 
use Mail;

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
    use VerifiesUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/dashboard';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       $this->middleware('guest', ['except' => ['getVerification', 'getVerificationError']]);
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
            'name' => 'required|string|max:60|min:3',
            'lname' => 'required|string|max:60|min:3',
            'email' => 'required|string|email|max:50|unique:users',
            'password' => 'required|string|min:6|max:30|confirmed',
            'phone' => 'required|numeric|digits:15',
            'city_id' => 'required|integer',
            'gender' => 'required|in:male,female',
            'agreeterm'=>'required',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {

  
       
        return User::create([
            'name' => $data['name'],
            'lname' => $data['lname'],
            'email' => $data['email'],
            'password' => bcrypt($data['password']),
            'phone' => $data['phone'],
            'city_id' => $data['city_id'],
            'gender' => $data['gender'],
        ]);

        
    }


        public function register(Request $request)
        {
            $this->validator($request->all())->validate();

            $user = $this->create($request->all());

            event(new Registered($user));

            $this->guard()->login($user);

            UserVerification::generate($user);
           
            $link = route('email-verification.check', $user->verification_token) . '?email=' . urlencode($user->email) ;
         

            $data = array( 'email' => $user->email, 'link' => $link, 'name' =>$user->name );
            Mail::send('email',
              $data , function($message) use ($data)
           {
            
           
               $message->from('raman199126@gmail.com');
              $message->to($data['email'], 'Admin')->subject('Verify Social Books') ;
           });
 

            return $this->registered($request, $user)
                            ?: redirect($this->redirectPath());
        }

}
