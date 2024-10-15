<?php

namespace App\Http\Controllers;

use App\Models\Jadwal;
use App\Models\PesertaTest;
use App\Models\Transaksi;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;

class JadwalController extends Controller
{

    public function transaksi(Request $request)
    {
        // Validate inputs
        $request->validate([
            'id' => 'required|integer',
            'jadwal' => 'required|string',
            'harga' => 'required|numeric',
        ]);

        // Retrieve user information
        $id_peserta = Auth::user()->id;
        $nama = Auth::user()->name;

        // Retrieve request inputs
        $jadwal_id = $request->input('id');
        $transaksi_jadwal = $request->input('jadwal');

        $countRegister = Auth::user()->count_register;

        if ($countRegister >= 3) {
            $harga = 20000;
        } else {
            $harga = $request->input('harga');
        }

        // Count Register User 
        $countRegisterUser = User::find($id_peserta);

        // Find the schedule
        $jadwal = Jadwal::find($jadwal_id);

        // Check if the schedule is full
        if ($request->input('peserta') >= $request->input('kouta')) {
            return redirect('peserta')->with('error', 'Participants for this schedule are already full');
        }

        // Check if the user has an existing transaction in process
        $existingTransactionProcess = Transaksi::where('id_peserta', $id_peserta)
            ->where('status', 'Diproses')
            ->first();

        // If a transaction already exists, redirect back with an error message
        if ($existingTransactionProcess) {
            return redirect('transaksi')->with('error', 'Transaction already registered.');
        } else {
            // Create a new transaction
            $request->has('peserta');
            $jadwal->peserta++;
            $jadwal->save();
            $countRegisterUser->count_register++;
            $countRegisterUser->save();
            $transaction = new Transaksi();
            $transaction->id_peserta = $id_peserta;
            $transaction->jadwal_id = $jadwal_id;
            $transaction->nama = $nama;
            $transaction->jadwal = $transaksi_jadwal;
            $transaction->jumlah_pembayaran = $harga;
            $transaction->save();

            // Redirect with success message
            return redirect('transaksi')->with('message', 'Transaction successfully processed.');
        }
    }


    // Delete or Cancel Transaction
    public function destroy($id)
    {

        $transaction = Transaksi::findOrFail($id);

        // Find the associated jadwal
        $jadwal = Jadwal::find($transaction->jadwal_id);

        // Find user by Id
        $userId = Auth::user()->id;
        $countRegisterUser = User::find($userId);


        if ($jadwal && $jadwal->peserta > 0) {
            // Decrement the peserta column
            $jadwal->peserta--;
            $jadwal->save();
        }

        if ($countRegisterUser) {
            // Increment the user registration count
            $countRegisterUser->count_register--;
            $countRegisterUser->save();
        }

        // Delete the transaction
        $transaction->delete();

        // Optionally, you can return a response indicating success or failure
        return redirect('transaksi')->with('message', 'Transaction successfully deleted.');
    }

    // Lanjutan Transaksi

    public function detailTransaction()
    {
        $userId = Auth::id();
        $transaksis =
            Transaksi::where('id_peserta', $userId)
            ->whereIn('status', ['Diproses', 'Gagal'])
            ->get();
        return view('transaksiDetail', compact('transaksis'));
    }

    public function update(Request $request, $id)
    {
        // Validate the request
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:4096',
            'jenis_pembayaran' => 'required'
        ],
            [
                'image.required' => 'The uploaded image format is incorrect',
                'image.max:4096' => 'The uploaded image size is too large.',
                'jenis_pembayaran.required' => 'Payment type has not been selected.',
            ]
        );

        // Check if the file is uploaded
        if ($request->hasFile('image')) {
            $transaksi = Transaksi::findOrFail($id);
            $path = $request->file('image')->store('/images', 'admin');

            $transaksi->jenis_pembayaran = $request->input('jenis_pembayaran');
            $transaksi->image = $path;
            $transaksi->status_pendaftaran = $request->input('status_pendaftaran');
            $transaksi->save();

            return redirect('transaksi')->with('message', 'Transaction Updated')
                ->with('image', $path);
        } 
    }

    public function detail(Request $request) {
        $userId = Auth::id();
        $users = User::where('id', $userId)->get();
        $jadwalS = PesertaTest::where('id_peserta', $userId)->get();
        // Fount jadwal klik


        return view('detailJadwal', [
            'users' => $users,
            'jadwalS' => $jadwalS,
        ]);
    }
}
