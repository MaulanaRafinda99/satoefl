<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\PesertaTest;

class PesertaTestController extends AdminController
{
    protected function getCalculationScript()
    {
        return <<<SCRIPT
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            function calculateScore() {
                var nilaiStr = parseFloat(document.getElementById('nilaiStr').value) || 0;
                var nilaiList = parseFloat(document.getElementById('nilaiList').value) || 0;
                var nilaiRdg = parseFloat(document.getElementById('nilaiRdg').value) || 0;

                var totalScore = ((nilaiStr + nilaiList + nilaiRdg) / 3) * 10;
                var roundedScore = Math.round(totalScore);
                document.getElementById('score').value = roundedScore;

                var keterangan = roundedScore < 450 ? 'Not Passed' : 'Passed';
                document.getElementById('keterangan').value = keterangan;
            }

            document.getElementById('nilaiStr').addEventListener('input', calculateScore);
            document.getElementById('nilaiList').addEventListener('input', calculateScore);
            document.getElementById('nilaiRdg').addEventListener('input', calculateScore);
        });
    </script>
    SCRIPT;
    }

    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'PesertaTest';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PesertaTest());

        $grid->column('id', __('Id'));
        $grid->column('transaksi_id', __('Transaksi id'));
        $grid->column('id_peserta', __('Id peserta'));
        $grid->column('nama', __('Nama'));
        $grid->column('jadwal', __('Jadwal'))->filter('datetime');
        $grid->column('nilaiStr', __('NilaiStr'));
        $grid->column('nilaiList', __('NilaiList'));
        $grid->column('nilaiRdg', __('NilaiRdg'));
        $grid->column('score', __('Score'));
        $grid->column('keterangan', __('Keterangan'))->filter([
            'Passed' => 'Passed',
            'Not Passed' => 'Not Passed',
        ]);
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
        $show = new Show(PesertaTest::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('transaksi_id', __('Transaksi id'));
        $show->field('id_peserta', __('Id peserta'));
        $show->field('nama', __('Nama'));
        $show->field('jadwal', __('Jadwal'));
        $show->field('nilaiStr', __('NilaiStr'));
        $show->field('nilaiList', __('NilaiList'));
        $show->field('nilaiRdg', __('NilaiRdg'));
        $show->field('score', __('Score'));
        $show->field('keterangan', __('Keterangan'));
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
        $form = new Form(new PesertaTest());

        $form->number('transaksi_id', __('Transaksi id'));
        $form->number('id_peserta', __('Id peserta'));
        $form->text('nama', __('Nama'));
        $form->datetime('jadwal', __('Jadwal'))->default(date('Y-m-d H:i:s'));
        $form->number('nilaiStr', __('NilaiStr'))->attribute(['id' => 'nilaiStr']);
        $form->number('nilaiList', __('NilaiList'))->attribute(['id' => 'nilaiList']);
        $form->number('nilaiRdg', __('NilaiRdg'))->attribute(['id' => 'nilaiRdg']);
        $form->number('score', __('Score'))->attribute(['id' => 'score'])->readonly();
        $form->text('keterangan', __('Keterangan'))->attribute(['id' => 'keterangan']);

        $form->html($this->getCalculationScript());

        return $form;
    }
}
