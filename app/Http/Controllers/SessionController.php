<?php

namespace App\Http\Controllers;

use App\Models\Jadwal;
use App\Models\PesertaTest;
use App\Models\Transaksi;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;


class SessionController extends Controller
{
    //
    function index()
    {
        return view("sesi/index");
    }

    function login(Request $request)
    {
        Session::flash('email', $request->email);
        $request->validate([
            'email' => 'required',
            'password' => 'required'
        ], [
            'email.required' => 'Email wajib diisi',
            'password.required' => 'Password wajib diisi',
        ]);

        $infologin = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (Auth::attempt($infologin)) {
            return redirect('/peserta')->with('message', 'Login Success, Welcome:)');
        } else {
            return redirect('/sesi')->with('error', 'Email or Password not Valid');
        }
    }

    function loginPeserta()
    {
        $jadwals = Jadwal::where('status', 'Scheduled')->get();

        return view('peserta', compact('jadwals'));
    }

    function logout()
    {
        Auth::logout();
        return redirect('sesi');
    }

    function register()
    {
        return view('/register');
    }

    function create(Request $request)
    {
        Session::flash('name', $request->input('name'));
        Session::flash('nim', $request->input('nim'));
        Session::flash('email', $request->input('email'));
        Session::flash('password', $request->input('password'));
        $request->validate([
            'name'  => 'required',
            'email' => 'required | email | unique:users',
            'password' => 'required|min:6',
            'nim' => 'required | unique:users'
        ], [
            'name.required' => 'Nama wajib diisi',
            'email.email' => 'Email tidak Valid',
            'email.unique' => 'Email sudah terdaftar',
            'email.required' => 'Email wajib diisi',
            'nim.required' => 'NIM wajib diisi',
            'nim.unique' => 'NIM sudah terdaftar',
            'password.required' => 'Password wajib diisi',
            'password.min' => 'Minimal 6 karekter'
        ]);

        $data = [
            'name' => $request->name,
            'nim' => $request->nim,
            'email' => $request->email,
            'count_register' => $request->count_register,
            'password' => Hash::make($request->password)
        ];

        if (User::create($data)) {
            return redirect('sesi')->with('message', 'Registration successful');
        }

        // $infologin = [
        //     'email' => $request->email,
        //     'password' => $request->password
        // ];

        // if (Auth::attempt($infologin)) {
        //     return redirect('sesi')->with('message', 'Success Login');
        // } else {
        //     return redirect('sesi')->withErrors('error', "Email atau Password Tidak Valid");
        // }
    }


    function schedule()
    {
        $userId = Auth::id();
        $jadwalS = PesertaTest::where('id_peserta', $userId)->get();
        return view('jadwalSaya', compact('jadwalS'));
    }

    function transaction()
    {
        $userId = Auth::id();
        $transaksis = Transaksi::where('id_peserta', $userId)
            ->whereIn('status', ['Diproses', 'Gagal'])
            ->get();
        return view('transaksi', compact('transaksis'));
    }


    function result()
    {
        $userId = Auth::id();
        $results = PesertaTest::where('id_peserta', $userId)->get();

        return view('hasilTes', compact('results'));
    }
}
