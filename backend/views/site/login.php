<?php

//

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \common\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Login';
$this->params['breadcrumbs'][] = $this->title;
?>
<!--<div class="site-login">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Please fill out the following fields to login:</p>

    <div class="row">
        <div class="col-lg-5">
<?php $form = ActiveForm::begin(['id' => 'login-form']); ?>

<?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

<?= $form->field($model, 'password')->passwordInput() ?>

<?= $form->field($model, 'rememberMe')->checkbox() ?>

                <div class="form-group">
<?= Html::submitButton('Login', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
                </div>

<?php ActiveForm::end(); ?>
        </div>
    </div>
</div>-->

<div class="wrapper text-center">
    <strong>Sign in to manage store</strong>
</div>
<?php $form = ActiveForm::begin(['id' => 'login-form', 'class' => 'form-validation']); ?>
<div class="text-danger wrapper text-center">
    <?= $form->errorSummary($model); ?>
</div>
<div class="list-group list-group-sm">
    <div class="list-group-item">
        <?= Html::activeTextInput($model, "username", ['placeholder' => 'Username', 'class' => 'form-control no-border']) ?>
    </div>
    <div class="list-group-item">
        <?= Html::activePasswordInput($model, "password", ['placeholder' => 'Password', 'class' => 'form-control no-border']) ?>
    </div>
    <div class="form-group">
        <div class="col-lg-10">
            <div class="checkbox">
                <label class="i-checks">
                    <input name="LoginForm[rememberMe]" value="0" type="hidden" checked>
                    <input name="LoginForm[rememberMe]" value="1" type="checkbox" checked><i></i> Remember me
                </label>
            </div>
        </div>
    </div>
    <button type="submit" class="btn btn-lg btn-primary btn-block" >Log in</button>
    <div class="text-center m-t m-b">
        <a ui-sref="access.forgotpwd">Forgot password?</a>
    </div>
    <div class="line line-dashed"></div>
    <?php ActiveForm::end(); ?>
</div>