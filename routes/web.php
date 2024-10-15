<?php

use App\Admin\Controllers\HomeController;
use App\Http\Controllers\CertificateController;
use App\Http\Controllers\FeedbackController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HalamanController;
use App\Http\Controllers\JadwalController;
use App\Http\Controllers\PesertaController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\SessionController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

// Route::get('/', function () {
//     return view('halaman/index');
// });

Route::get('/', [HalamanController::class, 'index']);

// Route::get('/register', [HalamanController::class, 'register']);

Route::get('/login', [HalamanController::class, 'login']);

Route::get('/sesi', [SessionController::class, 'index']);

Route::post('/sesi/login', [SessionController::class, 'login']);

Route::get('/peserta', [SessionController::class, 'loginPeserta']);

Route::get('/register', [SessionController::class, 'register']);

Route::get('/logout', [SessionController::class, 'logout']);

Route::get('/sesi/register', [SessionController::class, 'register']);

Route::post('/sesi/create', [SessionController::class, 'create']);

Route::get('/transaksi', [SessionController::class, 'transaction']);

Route::get('/jadwalSaya', [SessionController::class, 'schedule']);

Route::get('/hasilTes', [SessionController::class, 'result']);

Route::get('/jadwals/register', [JadwalController::class, 'register'])->name('jadwals.register');

Route::post('/jadwals/transaksi', [JadwalController::class, 'transaksi']);

Route::delete('/jadwals/transaksi/{id}', [JadwalController::class, 'destroy'])->name('transaksi.destroy');

Route::get('transaksiDetail', [JadwalController::class, 'detailTransaction']);

Route::post('transaksiDetail/{id}', [JadwalController::class, 'update'])->name('transaction.update');

Route::get('/profile', [ProfileController::class,'profile']);

Route::get('editProfile', [ProfileController::class, 'profileDetail']);

Route::post('editProfile/{id}', [ProfileController::class, 'update'])->name('profile.update');

Route::get('detailJadwal', [JadwalController::class, 'detail'])->name('detail.jadwal');

Route::post('/certificate/{id}', [CertificateController::class, 'show'])->name('print.certificate');

Route::post('/feedback', [FeedbackController::class, 'FeedbackUser']);
