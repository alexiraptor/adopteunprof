<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

/**
 * @group User management
 *
 * APIs for managing Users
 */
class UserAuthController extends Controller
{
    protected $namespace = 'App\Http\Controllers\Auth';

    /**
     * Register a USER.
     * @bodyParam name string required The name of the user. Example: Thomas Le Bg
     * @bodyParam facebookID string required The facebookID of the user. Example: 1
     * @bodyParam email string required The email of the user. Example: thomaslebg@grosBG.com
     * @bodyParam password string required The password of the user. Example: password
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|max:255',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed',
            'facebookID' => 'max:255'
        ]);

        $data['password'] = bcrypt($request->password);

        $user = User::create($data);

        $token = $user->createToken('API Token')->accessToken;

        return response(['user' => $user, 'token' => $token]);
    }

    /**
     * Login a USER.
     * @bodyParam email string required The email of the user. Example: thomaslebg@grosBG.com
     * @bodyParam password string required The password of the user. Example: password
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $data = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);

        if (!auth()->attempt($data)) {
            return response(['error_message' => 'Incorrect Details. 
            Please try again']);
        }

        $token = auth()->user()->createToken('API Token')->accessToken;

        return response(['user' => auth()->user(), 'token' => $token]);
    }

    /**
     * Display a listing of all the USERS.
     * 
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return User::all();
    }

    /**
     * Store a newly created USER in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store()
    {
        request()->validate([
            'name' => 'max:255',
            'email' => 'max:255',
            'password' => 'max:255',
            'facebookID' => 'max:255',
        ]);

        return User::create([
            'name' => request('name'),
            'email' => request('email'),
            'password' => request('password'),
            'facebookID' => request('facebookID'),
        ]);
    }

    /**
     * Update the specified USER in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(User $user)
    {
        request()->validate([
            'name' => 'max:255',
            'email' => 'max:255',
            'password' => 'max:255',
        ]);

        $success = $user->update([
            'name' => request('name'),
            'email' => request('email'),
            'password' => bcrypt(request('password'))
        ]);

        return [
            'success' => $success
        ];
    }

    /**
     * Remove the specified USER from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        $success = $user->delete();

        return [
            'success' => $success,
        ];
    }

    /**
     * Display the specified USER.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function showuser($id)
    {
        $data = User::find($id);
        return $data->toJson();
    }

    /**
     * Display the specified PROFESSOR account linked to the USER account.
     *
     * @param  \App\Models\Professor  $prof
     * @return \Illuminate\Http\Response
     */
    public function showprof($id)
    {
        $prof = User::find($id)->prof;
        if ($prof == null) {
            $prof = "EMPTY";
            return $prof;
        } else {
            return $prof->toJson();
        }
    }

    /**
     * Display the specified STUDENT account linked to the USER account.
     *
     * @param  \App\Models\Student  $stud
     * @return \Illuminate\Http\Response
     */
    public function showstud($id)
    {
        $stud = User::find($id)->stud;
        if ($stud == null) {
            $stud = "EMPTY";
            return $stud;
        } else {
            return $stud->toJson();
        }
    }
}
