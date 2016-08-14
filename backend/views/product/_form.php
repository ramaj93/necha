<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use common\models\ProductCategory;

/* @var $this yii\web\View */
/* @var $model common\models\Product */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="wrapper-md">
    <div class="panel panel-default">
        <div class="panel-heading">
            <?= $this->title ?>
        </div>
        <div class="panel-body">
            <?php $form = ActiveForm::begin(['layout' => 'horizontal', 'options' => ['enctype' => 'multipart/form-data']]); ?>

            <?= $form->field($model, 'category_id')->dropDownList(ProductCategory::getAllActive(), array("prompt" => 'Select Category', "class" => 'form-control')) ?>

            <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
            
            <?= $form->field($model, 'alert_quantity')->textInput() ?>

            <?= $form->field($model, 'weight')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'base_image')->fileInput() ?>

            <?= $form->field($model, 'has_size')->dropDownList(array(1 => "yes", 0 => "No"), array('prompt' => 'Select', "class" => 'form-control')) ?>

            <?= $form->field($model, 'meta_keyword')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'meta_description')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'seo_url')->textInput(['maxlength' => true]) ?>

            <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>
        </div>
        <div class="panel-footer">
            <div class="col-md-offset-3">
                <?= Html::submitButton($model->isNewRecord ? 'Register' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
            </div>
        </div>

        <?php ActiveForm::end(); ?>
    </div>

</div>
