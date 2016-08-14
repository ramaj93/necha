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
use app\components\theme\SideMenu;

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
        <script src="<?= $bundle->baseUrl ?>/js/app.min.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="<?= $bundle->baseUrl ?>/img/favicon.png">
    </head>
    <body>
        <?php $this->beginBody() ?>
        <div class="app app-header-fixed  ">

            <!-- header -->
            <header id="header" class="app-header navbar" role="menu">
                <!-- navbar header -->
                <div class="navbar-header bg-dark">
                    <button class="pull-right visible-xs dk" ui-toggle="show" target=".navbar-collapse">
                        <i class="glyphicon glyphicon-cog"></i>
                    </button>
                    <button class="pull-right visible-xs" ui-toggle="off-screen" target=".app-aside" ui-scroll="app">
                        <i class="glyphicon glyphicon-align-justify"></i>
                    </button>
                    <!-- brand -->
                    <a href="#/" class="navbar-brand text-lt">
                        <img src="<?= $bundle->baseUrl ?>/img/logo.png" alt="." class="">
                        <span class="hidden-folded m-l-xs hide">NECHA</span>
                    </a>
                    <!-- / brand -->
                </div>
                <!-- / navbar header -->

                <!-- navbar collapse -->
                <div class="collapse pos-rlt navbar-collapse box-shadow bg-white-only">
                    <!-- buttons -->
                    <div class="nav navbar-nav hidden-xs">
                        <a href="#" class="btn no-shadow navbar-btn" ui-toggle="app-aside-folded" target=".app">
                            <i class="fa fa-dedent fa-fw text"></i>
                            <i class="fa fa-indent fa-fw text-active"></i>
                        </a>
                    </div>
                    <!-- / buttons -->

                    <!-- link and dropdown -->
                    <ul class="nav navbar-nav hidden-sm">
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                                <i class="fa fa-cog"></i>
                                <span >Settings</span> <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" >Accounts</a></li>
                                <li><a href="#" >Currencies</a></li>
                                <li><a href="#" >Countries</a></li>
                                <li><a href="">Regions</a></li>
                                <li><a href="">Taxes</a></li>
                                <li><a href="">Zones</a></li>
                                <li class="divider"></li>
                                <li><a href="">Store Setting</a></li>
                                <li><a href="">Site Setting</a></li>
                            </ul>
                        </li>
                    </ul>
                    <!-- / link and dropdown -->

                    <!-- search form -->
                    <form class="navbar-form navbar-form-sm navbar-left shift"  role="search">
                        <div class="form-group">
                            <div class="input-group">
                                <input type="text"   class="form-control input-sm bg-light no-border rounded padder" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button type="submit" class="btn btn-sm bg-light rounded"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </div>
                    </form>
                    <!-- / search form -->

                    <!-- nabar right -->
                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">
                                <i class="icon-bell fa-fw"></i>
                                <span class="visible-xs-inline">Notifications</span>
                                <span class="badge badge-sm up bg-danger pull-right-xs">2</span>
                            </a>
                            <!-- dropdown -->
                            <div class="dropdown-menu w-xl animated fadeInUp">
                                <div class="panel bg-white">
                                    <div class="panel-heading b-light bg-light">
                                        <strong>You have <span>2</span> notifications</strong>
                                    </div>
                                    <div class="list-group">
                                        <a href class="media list-group-item">
                                            <span class="pull-left thumb-sm">
                                                <img src="img/a0.jpg" alt="..." class="img-circle">
                                            </span>
                                            <span class="media-body block m-b-none">
                                                Use awesome animate.css<br>
                                                <small class="text-muted">10 minutes ago</small>
                                            </span>
                                        </a>
                                        <a href class="media list-group-item">
                                            <span class="media-body block m-b-none">
                                                1.0 initial released<br>
                                                <small class="text-muted">1 hour ago</small>
                                            </span>
                                        </a>
                                    </div>
                                    <div class="panel-footer text-sm">
                                        <a href class="pull-right"><i class="fa fa-cog"></i></a>
                                        <a href="#notes" data-toggle="class:show animated fadeInRight">See all the notifications</a>
                                    </div>
                                </div>
                            </div>
                            <!-- / dropdown -->
                        </li>
                        <li class="dropdown">
                            <a href="#" data-toggle="dropdown" class="dropdown-toggle clear" data-toggle="dropdown">
                                <span class="thumb-sm avatar pull-right m-t-n-sm m-b-n-sm m-l-sm">
                                    <img src="<?= $bundle->baseUrl ?>/img/a0.jpg" alt="...">
                                    <i class="on md b-white bottom"></i>
                                </span>
                                <span class="hidden-sm hidden-md">John.Smith</span> <b class="caret"></b>
                            </a>
                            <!-- dropdown -->
                            <ul class="dropdown-menu animated fadeInRight w">
                                <li class="wrapper b-b m-b-sm bg-light m-t-n-xs">
                                    <div>
                                        <p>300mb of 500mb used</p>
                                    </div>
                                    <div class="progress progress-xs m-b-none dker">
                                        <div class="progress-bar progress-bar-info" data-toggle="tooltip" data-original-title="50%" style="width: 50%"></div>
                                    </div>
                                </li>
                                <li>
                                    <a href>
                                        <span class="badge bg-danger pull-right">30%</span>
                                        <span>Settings</span>
                                    </a>
                                </li>
                                <li>
                                    <a ui-sref="app.page.profile">Profile</a>
                                </li>
                                <li>
                                    <a ui-sref="app.docs">
                                        <span class="label bg-info pull-right">new</span>
                                        Help
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="<?= Url::to('site/logout') ?>">Logout</a>
                                </li>
                            </ul>
                            <!-- / dropdown -->
                        </li>
                    </ul>
                    <!-- / navbar right -->
                </div>
                <!-- / navbar collapse -->
            </header>
            <!-- / header -->

            <!-- aside -->
            <aside id="aside" class="app-aside hidden-xs bg-dark">
                <div class="aside-wrap">
                    <div class="navi-wrap">
                        <!-- user -->
                        <div class="clearfix hidden-xs text-center hide" id="aside-user">
                            <div class="dropdown wrapper">
                                <a href="app.page.profile">
                                    <span class="thumb-lg w-auto-folded avatar m-t-sm">
                                        <img src="img/a0.jpg" class="img-full" alt="...">
                                    </span>
                                </a>
                                <a href="#" data-toggle="dropdown" class="dropdown-toggle hidden-folded">
                                    <span class="clear">
                                        <span class="block m-t-sm">
                                            <strong class="font-bold text-lt">John.Smith</strong> 
                                            <b class="caret"></b>
                                        </span>
                                        <span class="text-muted text-xs block">Art Director</span>
                                    </span>
                                </a>
                                <!-- dropdown -->
                                <ul class="dropdown-menu animated fadeInRight w hidden-folded">
                                    <li class="wrapper b-b m-b-sm bg-info m-t-n-xs">
                                        <span class="arrow top hidden-folded arrow-info"></span>
                                        <div>
                                            <p>300mb of 500mb used</p>
                                        </div>
                                        <div class="progress progress-xs m-b-none dker">
                                            <div class="progress-bar bg-white" data-toggle="tooltip" data-original-title="50%" style="width: 50%"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <a href>Settings</a>
                                    </li>
                                    <li>
                                        <a href="page_profile.html">Profile</a>
                                    </li>
                                    <li>
                                        <a href>
                                            <span class="badge bg-danger pull-right">3</span>
                                            Notifications
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="page_signin.html">Logout</a>
                                    </li>
                                </ul>
                                <!-- / dropdown -->
                            </div>
                            <div class="line dk hidden-folded"></div>
                        </div>
                        <!-- / user -->

                        <!-- nav -->
                        <nav ui-nav class="navi clearfix">
                            <?=
                            SideMenu::widget([
                                'items' => [
                                    [
                                        'url' => ['/'],
                                        'label' => 'Dashboard',
                                        'icon' => 'home'
                                    ],
                                    [
                                        'url' => Yii::$app->urlManagerFrontEnd->baseUrl,
                                        'label' => 'Site',
                                        'icon' => 'external-link'
                                    ],
                                    [
                                        'label' => 'Products',
                                        'icon' => 'cube',
                                        'items' => [
                                            ['label' => 'Categories', 'icon' => 'cubes', 'url' => ['category/index']],
                                            ['label' => 'Items', 'icon' => 'tags', 'url' => ['product/index']],
                                        ],
                                    ],
                                    [
                                        'label' => 'Sales',
                                        'icon' => 'money',
                                        'items' => [
                                            ['label' => 'Orders', 'icon' => 'gift', 'url' => ['order/index']],
                                            ['label' => 'Transactions', 'icon' => 'credit-card', 'url' => ['payment/index']],
                                        ],
                                    ],
                                    [
                                        'label' => 'People',
                                        'icon' => 'group',
                                        'items' => [
                                            ['label' => 'Customers', 'icon' => 'male', 'url' => ['customer/index']],
                                            ['label' => 'Users', 'icon' => 'users', 'url' => ['user/index']],
                                        ],
                                    ],
                                ],
                            ]);
                            ?>
                        </nav>
                        <!-- nav -->

                        <!-- aside footer -->
                        <div class="wrapper m-t">
                            <div class="text-center-folded">
                                <span class="pull-right pull-none-folded">60%</span>
                                <span class="hidden-folded">Milestone</span>
                            </div>
                            <div class="progress progress-xxs m-t-sm dk">
                                <div class="progress-bar progress-bar-info" style="width: 60%;">
                                </div>
                            </div>
                            <div class="text-center-folded">
                                <span class="pull-right pull-none-folded">35%</span>
                                <span class="hidden-folded">Release</span>
                            </div>
                            <div class="progress progress-xxs m-t-sm dk">
                                <div class="progress-bar progress-bar-primary" style="width: 35%;">
                                </div>
                            </div>
                        </div>
                        <!-- / aside footer -->
                    </div>
                </div>
            </aside>
            <!-- / aside -->

            <!-- content -->
            <div id="content" class="app-content" role="main">
                <div class="app-content-body ">
                    <?= $content ?>
                </div>
            </div>
            <!-- / content -->

            <!-- footer -->
            <footer id="footer" class="app-footer" role="footer">
                <div class="wrapper b-t bg-light">
                    <span class="pull-right">2.0.0 <a href ui-scroll="app" class="m-l-sm text-muted"><i class="fa fa-long-arrow-up"></i></a></span>
                    &copy; 2015 Copyright.
                </div>
            </footer>
            <!-- / footer -->

        </div>

    </body>
    <?php $this->endBody() ?>
</html>
<?php
$this->endPage()?>