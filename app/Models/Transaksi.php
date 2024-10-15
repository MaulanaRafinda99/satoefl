<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    protected $table = 'transaksi';
    use HasFactory;


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id_transaksi',
        'id_peserta', // Add the id field here
        'userId',
        'nama',
        'jadwal',
        'jumlah_pembayaran'
        // Add other fields as needed
    ];
}
