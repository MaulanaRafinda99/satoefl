<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class peserta extends Model
{
    use HasFactory;
    // Membuat tabel yang diakses dalam bentuk singular bukan plural.
    protected $table = 'peserta_tests';
}
