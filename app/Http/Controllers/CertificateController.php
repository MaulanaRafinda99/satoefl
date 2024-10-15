<?php

namespace App\Http\Controllers;

use App\Models\PesertaTest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CertificateController extends Controller
{
    public function show(Request $request, $id)
    {
        $userId = Auth::id();
        
        $checkResult = PesertaTest::where('id', $id)
        ->whereNull('score')
        ->first();

        if ($checkResult) {
            return redirect('hasilTes')->with('error', 'Your test results are not yet available.');
        }

        // Check latest test :
        $results = PesertaTest::where('id', $id)->get();

        // Check passed or not : When not passed, user can't print the certificate :
        // $checkScore = PesertaTest::where('id', $id)
        //     ->where('keterangan', 'Not Passed')
        //     ->get();

        // if ($checkScore->isNotEmpty()) {
        //     return redirect('hasilTes')->with('error', 'Your result not Passed');
        // } else {
           
        //     return view('Putih Biru Abu Modern Minimalis Sertifikat Penghargaan', compact('results'));
        // }

        return view('Putih Biru Abu Modern Minimalis Sertifikat Penghargaan', compact('results'));

    }
}
