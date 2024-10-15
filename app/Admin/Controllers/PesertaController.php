<?php

namespace App\Admin\Controllers;

use OpenAdmin\Admin\Controllers\AdminController;
use OpenAdmin\Admin\Form;
use OpenAdmin\Admin\Grid;
use OpenAdmin\Admin\Show;
use \App\Models\Peserta;

class PesertaController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Pengguna';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Peserta());
        $grid->column('id', __('Id'));
        // $grid->column('image')->image();
        $grid->column('name', __('Nama'));
        $grid->column('nim', __('NIM'));
        $grid->column('jk', __('Jk'));
        $grid->column('prodi', __('Prodi'));
        $grid->column('no_hp', __('No hp'));
        $grid->column('alamat', __('Alamat'));
        $grid->column('email', __('Email'));
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
        $show = new Show(Peserta::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('image')->image();
        $show->field('name', __('Nama'));
        $show->field('nim', __('Nim'));
        $show->field('jk', __('Jk'));
        $show->field('fakultas', __('Fakultas'));
        $show->field('prodi', __('Prodi'));
        $show->field('no_hp', __('No hp'));
        $show->field('alamat', __('Alamat'));
        $show->field('email', __('Email'));
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
        $form = new Form(new Peserta());

        $form->text('name', __('Nama'));
        $form->text('nim', __('Nim'));
        $form->text('jk', __('Jk'));
        $form->text('prodi', __('Prodi'));
        $form->text('no_hp', __('No hp'));
        $form->text('alamat', __('Alamat'));
        $form->email('email', __('Email'));
        $form->password('password', __('Password'));
        $form->image('image', __('Image'));

        return $form;
    }
}
