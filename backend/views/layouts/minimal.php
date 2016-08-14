<?php
/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use common\widgets\Alert;
use yii\bootstrap\ActiveForm;

$bundle = AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title><?= Html::encode($this->title) ?></title>
        <meta name="description" content="Necha Store Backend" />
        <meta name="keywords" content="" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <meta property="og:image" content="img/favicon.ico" />  
        <?= Html::csrfMetaTags() ?>
        <?php $this->head() ?>
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    </head>
    <body>
        <div class="app app-header-fixed  ">
            <div class="container w-xxl w-auto-xs" >
                <a href class="navbar-brand block m-t">
                    <img style="max-height: 96px;" src="<?= $bundle->baseUrl ?>/img/logo2.png" alt="." class="">
                </a>
                <div class="m-b-lg">
                    <?= $content; ?>
                    <div class="text-center m-t m-b">
                        NECHA by Daniella Raymond &copy; <?= date("Y") ?>
                    </div>
                </div>
            </div>

        </div>
    </body>
    <?php $this->endBody() ?>
</html>
<?php
$this->endPage()?>