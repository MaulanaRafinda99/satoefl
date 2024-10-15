<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Jadwal;

class JadwalController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Jadwal';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Jadwal());

        $grid->column('id', __('Id'));
        $grid->column('jadwal', __('Jadwal'));
        $grid->column('harga', __('Harga'));
        $grid->column('kouta', __('Kouta'));
        $grid->column('peserta', __('Peserta Mendaftar'));
        $grid->column('status', __('Status'));
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
        $show = new Show(Jadwal::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('jadwal', __('Jadwal'));
        $show->field('harga', __('Harga'));
        $show->field('kouta', __('Kouta'));
        $show->field('peserta', __('Peserta Mendaftar'));
        $show->field('status', __('Status Jadwal Tes'));
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
        $form = new Form(new Jadwal());

        $form->datetime('jadwal', __('Jadwal'))->default(date('Y-m-d H:i:s'));
        $form->decimal('harga', __('Harga'));
        $form->decimal('kouta', __('Kouta'));
        $form->decimal('peserta', __('peserta'));
        $form->select('status', __('Status'))->options([
            'Scheduled' => 'Scheduled',
            'Done' => 'Done'
        ])->default('Scheduled');
        return $form;
    }
}
