<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transaksi', function (Blueprint $table) {
            $table->id();
            $table->string('inv');
            $table->unsignedBigInteger('id_peserta');
            $table->foreign('id_peserta')->references('id')->on('users');
            $table->string('nama');
            $table->dateTime('jadwal');
            $table->integer('jumlah_pembayaran');
            $table->string('jenis_pembayaran');
            $table->string('bukti_pembayaran');
            $table->string('status');
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
};
