<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\ProductCategory */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Product Categories', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-category-view">
    <div class="bg-light lter b-b wrapper-md">
        <div class="row">
            <div class="col-sm-6 col-xs-12">
                <h1 class="m-n font-thin h3 text-black"><?= Html::encode($this->title) ?></h1>
            </div>
            <div class="col-sm-6 text-right hidden-xs">
                <div class="inline m-r text-left">
                    <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                    <?=
                    Html::a('Delete', ['delete', 'id' => $model->id], [
                        'class' => 'btn btn-danger',
                        'data' => [
                            'confirm' => 'Are you sure you want to delete this item?',
                            'method' => 'post',
                        ],
                    ])
                    ?>
                </div>
            </div>
        </div>
    </div>
    <div class="wrapper-md">
        <div class="panel panel-default">
            <div class="panel-heading">
                <?= $this->title ?>
            </div>
            <div class="panel-body">
                <?=
                DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'id',
                        'name',
                        'description',
                        'status',
                    ],
                ])
                ?>
            </div>
        </div>
    </div>
</div>
