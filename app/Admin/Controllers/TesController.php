<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Tes;

class TesController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Tes';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Tes());

        $grid->column('id', __('Id'));
        $grid->column('id_peserta', __('Id peserta'));
        $grid->column('jadwal', __('Jadwal'));
        $grid->column('harga', __('Harga'));
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
        $show = new Show(Tes::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('id_peserta', __('Id peserta'));
        $show->field('jadwal', __('Jadwal'));
        $show->field('harga', __('Harga'));
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
        $form = new Form(new Tes());

        $form->number('id_peserta', __('Id peserta'));
        $form->datetime('jadwal', __('Jadwal'))->default(date('Y-m-d H:i:s'));
        $form->number('harga', __('Harga'));

        return $form;
    }
}
