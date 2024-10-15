<?php
// database/migrations/xxxx_xx_xx_xxxxxx_create_peserta_tests_table.php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePesertaTestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peserta_tests', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('transaksi_id');
            $table->unsignedBigInteger('id_peserta');
            $table->foreign('id_peserta')->references('id')->on('users');
            $table->foreign('transaksi_id')->references('id')->on('transaksi');
            $table->string('nama');
            $table->dateTime('jadwal');
            $table->integer('nilaiStr')->nullable();
            $table->integer('nilaiList')->nullable();
            $table->integer('nilaiRdg')->nullable();
            $table->integer('score')->nullable();
            $table->string('keterangan')->nullable();
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
        Schema::dropIfExists('peserta_tests');
    }
}
