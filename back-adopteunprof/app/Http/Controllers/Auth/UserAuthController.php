<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserAuthController extends Controller
{
    protected $namespace = 'App\Http\Controllers\Auth';

    public function register(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|max:255',
            'userID' => 'max:10',
            'email' => 'required|email|unique:users',
            'password' => 'required|confirmed',
            'facebookID' => 'max:255'
        ]);

        $data['password'] = bcrypt($request->password);

        $user = User::create($data);

        $token = $user->createToken('API Token')->accessToken;

        return response(['user' => $user, 'token' => $token]);
    }

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

    public function index()
    {
        return User::all();
    }

    public function store()
    {
        request()->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
            'facebookID' => 'max:255',
        ]);

        return User::create([
            'name' => request('name'),
            'email' => request('email'),
            'password' => request('password'),
            'facebookID' => request('facebookID'),
        ]);
    }

    public function update(User $user)
    {
        request()->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
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

    public function destroy(User $user)
    {
        $success = $user->delete();

        return [
            'success' => $success,
        ];
    }

    public function showuser($id)
    {
        $data = User::find($id);
        return $data->toJson();
    }

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
