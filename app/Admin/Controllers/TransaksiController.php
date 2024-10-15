<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Transaksi;

class TransaksiController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Transaksi';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Transaksi());

        $grid->column('id', __('Id'));
        $grid->column('id_peserta', __('Id peserta'));
        $grid->column('nama', __('Nama'));
        $grid->column('jadwal', __('Jadwal'));
        $grid->column('jumlah_pembayaran', __('Jumlah pembayaran'));
        $grid->column('jenis_pembayaran', __('Jenis pembayaran'));
        $grid->column('status', __('Status'))->filter([
            'Berhasil' => 'Berhasil',
            'Diproses' => 'Diproses',
            'Gagal' => 'Gagal'
        ]);
        $grid->column('status_pendaftaran', __('Status pendaftaran'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Transaksi::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_peserta', __('Id peserta'));
        $show->field('nama', __('Nama'));
        $show->field('jadwal', __('Jadwal'));
        $show->field('jumlah_pembayaran', __('Jumlah pembayaran'));
        $show->field('jenis_pembayaran', __('Jenis pembayaran'));
        $show->field('image', __('Image'))->image();
        $show->field('status', __('Status'));
        $show->field('status_pendaftaran', __('Status pendaftaran'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Transaksi());

        $form->number('id_peserta', __('Id peserta'));
        $form->text('nama', __('Nama'));
        $form->text('jadwal', __('Jadwal'));
        $form->number('jumlah_pembayaran', __('Jumlah pembayaran'));
        $form->text('jenis_pembayaran', __('Jenis pembayaran'));
        $form->image('image', __('Image'));
        $form->select('status', __('Status'))->options([
            'Diproses' => 'Diproses',
            'Berhasil' => 'Berhasil',
            'Gagal' => 'Gagal'
        ])->default('Diproses');
        $form->text('status_pendaftaran', __('Status pendaftaran'));

        return $form;
    }
}
