<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransaksiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaksi', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_peserta')->nullable();
            $table->string('nama')->nullable();
            $table->string('jadwal')->nullable();
            $table->integer('jumlah_pembayaran')->nullable();
            $table->string('jenis_pembayaran')->nullable();
            $table->string('image')->nullable();
            $table->string('status')->default('Diproses')->nullable();
            $table->string('status_pendaftaran')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('transaksi');
    }
}
