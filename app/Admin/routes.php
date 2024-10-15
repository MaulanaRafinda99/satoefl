<?php

use App\Admin\Controllers\TransaksiController;
use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');

    $router->resource('users', PesertaController::class);

    $router->resource('tes', TesController::class);

    $router->resource('jadwals',JadwalController::class);

    $router->resource('transaksi', TransaksiController::class);

    $router->resource('peserta-tests', PesertaTestController::class);

    $router->resource('feedback', FeedbackController::class);








    // $router->resource('hasil_tes', HasilController::class);

    // $router->resource('transaksi', TransaksiController::class);

    

});
