<?php
// app/Models/PesertaTest.php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PesertaTest extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_peserta',
        'nama',
        'transaksi_id',
        'jadwal',
        'nilaiStr',
        'nilaiList',
        'nilaiRdg',
        'score',
        'keterangan'
    ];

    public function transaksi()
    {
        return $this->belongsTo(Transaksi::class);
    }
}
