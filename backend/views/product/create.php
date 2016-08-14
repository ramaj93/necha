<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Product */

$this->title = 'Create Product';
$this->params['breadcrumbs'][] = ['label' => 'Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-create">
    <div class="bg-light lter b-b wrapper-md">
        <h1 class="m-n font-thin h3"><?= Html::encode($this->title) ?></h1>
    </div>
    <?=
    $this->render('_form', [
        'model' => $model,
    ])
    ?>

</div>
