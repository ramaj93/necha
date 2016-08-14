<?php

use yii\helpers\Html;
use fedemotta\datatables\DataTables;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ProductCategorySearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Product Categories';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-category-index">

    <div class="bg-light lter b-b wrapper-md">
        <div class="row">
            <div class="col-sm-6 col-xs-12">
                <h1 class="m-n font-thin h3 text-black"><?= Html::encode($this->title) ?></h1>
            </div>
            <div class="col-sm-6 text-right hidden-xs">
                <div class="inline m-r text-left">
                    <?php // echo $this->render('_search', ['model' => $searchModel]);  ?>
                    <?= Html::a('Create Category', ['create'], ['class' => 'btn btn-success']) ?>
                </div>
            </div>
        </div>
    </div>
    <div class="wrapper-md">
        <div class="panel panel-default">
            <div class="panel-heading">
                <?=$this->title?>
            </div>
            <div class="panel-body">
                <?=
                DataTables::widget([
                    'dataProvider' => $dataProvider,
                    'filterModel' => $searchModel,
                    'columns' => [
                        ['class' => 'yii\grid\SerialColumn'],
                        'name',
                        'description',
                        'status',
                        ['class' => 'yii\grid\ActionColumn'],
                    ],
                    'clientOptions' => [
                        "lengthMenu" => [[10, 25, 50, 100, -1], [10, 25, 50, 100, Yii::t('app', "All")]],
                        //'bServerSide'    => true,
                        "info" => false,
                        "responsive" => true,
                        "oLanguage" => ['sSearch' => 'Search'],
                        "dom" => '<"text-center"<"btn-group"T>><"clear"><"row"<"col-md-6"l><"col-md-6 text-right"f>r>t<"row"<"col-md-6"i><"col-md-6"p>><"clear">',
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
<script>
    $(document).ready(function () {

        if ($.fn.DataTable.TableTools) {
            // Set the classes that TableTools uses to something suitable for Bootstrap
            $.extend(true, $.fn.DataTable.TableTools.classes, {
                "container": "DTTT btn-group",
                "buttons": {
                    "normal": "btn btn-default",
                    "disabled": "disabled"
                },
                "collection": {
                    "container": "DTTT_dropdown dropdown-menu",
                    "buttons": {
                        "normal": "",
                        "disabled": "disabled"
                    }
                },
                "print": {
                    "info": "DTTT_print_info modal"
                },
                "select": {
                    "row": "active"
                }
            });
        }
    })
</script>
