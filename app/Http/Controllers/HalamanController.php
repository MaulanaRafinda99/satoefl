<?php

namespace App\Http\Controllers;

use App\Models\Jadwal;
use Illuminate\Http\Request;


class HalamanController extends Controller
{
    function index()
    {
        $jadwalTest = Jadwal::where('status', 'Scheduled')->get();
        return view('halaman/index', compact('jadwalTest'));
    }

    function login() {
        return view('halaman/login');
    }

    function register() {
        return view('halaman/register');
    }

    
}
