<?php

use yii\helpers\Html;
use fedemotta\datatables\DataTables;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ProductSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Products';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-index">
    <div class="bg-light lter b-b wrapper-md">
        <div class="row">
            <div class="col-sm-6 col-xs-12">
                <h1 class="m-n font-thin h3 text-black"><?= Html::encode($this->title) ?></h1>
            </div>
            <div class="col-sm-6 text-right hidden-xs">
                <div class="inline m-r text-left">
                    <?php // echo $this->render('_search', ['model' => $searchModel]);  ?>
                    <?= Html::a('Register Product', ['create'], ['class' => 'btn btn-success']) ?>
                </div>
            </div>
        </div>
    </div>
    <div class="wrapper-md">
        <div class="panel panel-default">
            <div class="panel-heading">
                Responsive Table
            </div>
            <div class="panel-body">
                <?=
                DataTables::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        'id',
                        'category_id',
                        'name',
                        'weight',
                        'status',
                        // 'base_image',
                        // 'has_size',
                        // 'alert_quantity',
                        // 'description:ntext',
                        // 'meta_keyword',
                        // 'meta_description',
                        // 'seo_url:url',
                        // 'created_by',
                        ['class' => 'yii\grid\ActionColumn'],
                    ],
                    'clientOptions' => [
                        "lengthMenu" => [[20, -1], [20, Yii::t('app', "All")]],
                        "info" => false,
                        "responsive" => true,
                        "dom" => 'lfTrtip',
                        "tableTools" => [
                            "aButtons" => [
                                [
                                    "sExtends" => "copy",
                                    "sButtonText" => Yii::t('app', "Copy to clipboard")
                                ], [
                                    "sExtends" => "csv",
                                    "sButtonText" => Yii::t('app', "Save to CSV")
                                ], [
                                    "sExtends" => "xls",
                                    "oSelectorOpts" => ["page" => 'current']
                                ], [
                                    "sExtends" => "pdf",
                                    "sButtonText" => Yii::t('app', "Save to PDF")
                                ], [
                                    "sExtends" => "print",
                                    "sButtonText" => Yii::t('app', "Print")
                                ],
                            ]
                        ]
                    ],
                ]);
                ?>
            </div>
        </div>
    </div>
</div>
