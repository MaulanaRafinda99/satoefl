<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;


class ProfileController extends Controller
{
    public function profile()
    {
        $userId = Auth::id();

        $users = User::where('id', $userId)->get();

        return view('profile', compact('users')); // Correct usage
    }

    public function profileDetail()
    {
        $userId = Auth::id();

        $users = User::where('id', $userId)->get();

        return view('editProfile', compact('users'));
    }

    public function update(Request $request, $id)
    {
        // Flash the input data to the session before validation
        Session::flash('name', $request->input('name'));
        Session::flash('email', $request->input('email'));
        Session::flash('fakultas', $request->input('fakultas'));
        Session::flash('jk', $request->input('jk'));
        Session::flash('prodi', $request->input('prodi'));
        Session::flash('no_hp', $request->input('no_hp'));
        Session::flash('alamat', $request->input('alamat'));

        // Validate the request data
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users,email,' . $id,
            'fakultas' => 'required',
            'jk' => 'required',
            'prodi' => 'required',
            'no_hp' => 'required',
            'alamat' => 'required',
        ], [
            'name.required' => 'Nama wajib diisi',
            'email.email' => 'Email tidak valid',
            'email.unique' => 'Email sudah terdaftar',
            'email.required' => 'Email wajib diisi',
            'fakultas.required' => 'Fakultas wajib diisi',
            'jk.required' => 'Jenis kelamin wajib diisi',
            'prodi.required' => 'Program studi wajib diisi',
            'no_hp.required' => 'Nomor HP wajib diisi',
            'alamat.required' => 'Alamat wajib diisi',
        ]);

        $user = User::findOrFail($id);

        // Check if the file is uploaded
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('/images', 'admin'); // Consider appending a unique identifier to the filename
            $user->image = $path;
        }

        // Update user data
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->fakultas = $request->input('fakultas');
        $user->jk = $request->input('jk');
        $user->prodi = $request->input('prodi');
        $user->no_hp = $request->input('no_hp');
        $user->alamat = $request->input('alamat');
        $user->save();

        return redirect('editProfile')->with('message', 'Profile successfully updated');
    }



}
