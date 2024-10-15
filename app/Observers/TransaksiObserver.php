<?php

namespace App\Observers;

use App\Models\Transaksi;
use App\Models\PesertaTest;

class TransaksiObserver
{
    /**
     * Handle the Transaksi "updated" event.
     *
     * @param  \App\Models\Transaksi  $transaksi
     * @return void
     */
    public function updated(Transaksi $transaksi)
    {
        // Check if the status has changed to "Berhasil" and the user is an admin
        if ($transaksi->isDirty('status') && $transaksi->status === 'Berhasil' && $transaksi->id !== null) {
            // Insert data into pesertaTest
            $pesertaTest = new PesertaTest();
            $pesertaTest->transaksi_id = $transaksi->id;
            $pesertaTest->id_peserta = $transaksi->id_peserta;
            $pesertaTest->nama = $transaksi->nama;
            $pesertaTest->jadwal = $transaksi->jadwal;
            $pesertaTest->save();
        }
    }
}
