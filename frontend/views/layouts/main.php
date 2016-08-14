<?php
/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use yii\helpers\Url;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!doctype html>
<html lang="<?= Yii::$app->language ?>">  
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta http-equiv="cleartype" content="on">
        <meta name="robots" content="index,follow">
        <title><?= Html::encode(Yii::$app->site->name) ?></title>
        <meta name="description" content="<?= Yii::$app->site->description?>" />
        <meta property="og:image" content="favicon.ico" />     
        <meta property="og:url" content="<?= Url::base() ?>" />
        <meta property="og:title" content="<?= Yii::$app->site->title?>" />
        <meta property="og:description" content="<?= Yii::$app->site->description?>" />
        <meta property="og:type" content="website" />
        <meta name="author" content="CoreIT">

        <?= Html::csrfMetaTags() ?>

        <!-- Mobile Specific Metas -->
        <meta name="HandheldFriendly" content="True">
        <meta name="MobileOptimized" content="320">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> 

        <?php $this->head() ?>
        <!-- Stylesheets -->

        <!-- Icons -->
        <link rel="shortcut icon" type="image/x-icon" href="favicon.png">
        <link rel="canonical" href="<?php echo Url::canonical(); ?>" />

        <!-- Custom Fonts -->
        <link href='css/font.css' rel='stylesheet' type='text/css'>


    </head>
    <body>
        <?php $this->beginBody() ?>
        <div class="top_bar">
            <div class="container">


                <div class="sixteen columns alpha ">
                    <ul>
                        <li>
                            <a href="checkout" title="Checkout">Checkout</a>
                        </li>
                        <li>
                            <a href="cart" class="cart" title="Shopping Cart">Cart (0)</a>
                        </li>
                        <li>
                            <a href="account" title="My Account">My Account</a>
                        </li>
                    </ul>
                </div>
            </div>  
        </div>

        <div class="container content"> 
            <div class="sixteen columns logo">
                <a href="<?php echo Url::base() ?>" title="Necha">
                    <img src="images/logo2.png" alt="Necha" />
                </a>
            </div>
            <div class="sixteen columns clearfix">
                <div id="nav">
                    <ul id="menu">
                        <li><a href="/" title="Home" class="active">Home</a></li>
                        <li><a href="/pages/who-we-are" title="Our Story"  >Our Story 
                                <span class="arrow">&or;</span></a> 
                            <ul>
                                <li><a href="/pages/who-we-are" title="Who We Are">Who We Are</a></li>
                                <li><a href="/pages/what-we-do" title="What We Do">What We Do</a></li>
                            </ul>
                        </li>
                        <li><a href="/collections/all" title="Shop"  >Shop 
                                <span class="arrow">&or;</span></a> 
                            <ul>
                                <li><a href="/collections/clothing" title="Clothing">Clothing</a></li>
                                <li><a href="/collections/sample-sale" title="Sample Sale">Sample Sale</a></li>
                                <li><a href="/collections/travel-bags" title="Travel Bags">Travel Bags</a></li>
                                <li><a href="/collections/headbands" title="Headbands">Headbands</a></li>
                                <li><a href="/collections/classic-hobo-bags" title="Classic Hobo Bags">Classic Hobo Bags</a></li>
                                <li><a href="/collections/ipad-cases" title="iPad Cases">iPad Cases</a></li>
                                <li><a href="/collections/11-macbook-cases" title="MacBook Cases">11" MacBook Cases</a></li>
                                <li><a href="/collections/macbook-cases" title=" MacBook Cases">13" MacBook Cases</a></li>
                                <li><a href="/collections/15-macbook-cases" title="MacBook Cases">15" MacBook Cases</a></li>
                            </ul>
                        </li>
                        <li><a href="/pages/get-involved" title="Get Involved" >Contact Us</a></li>
                        <ul>
                            <li><a href="/pages/spring-2016" title="Spring 2016">Spring 2016</a></li>
                            <li><a href="/pages/summer-2016" title="Summer 2016">Summer 2016</a></li>
                        </ul>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="sixteen columns">
                <div class="section">
                    <div id="homepage_slider" class="flexslider">
                        <ul class="slides">
                            <li>
                                <a href="http://www.dellala.com/collections/clothing"><img src="//cdn.shopify.com/s/files/1/0228/7183/t/2/assets/slideshow_2.jpg?6892268779728020780" alt="Carry Change" /></a>
                            </li>
                            <li>
                                <a href="http://www.dellala.com/collections/clothing"><img src="//cdn.shopify.com/s/files/1/0228/7183/t/2/assets/slideshow_3.jpg?6892268779728020780" alt="Happy Holidays" /></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="sixteen columns">
                <div class="section">
                    <h1 class="home">We believe in responsibility</h1>
                </div>
            </div>
            <div class="section">
            </div>
            <div class="sixteen columns">
                <div class="section clearfix">
                    <div class="five columns offset-by-one omega"><img style="float: right; margin-right: 40px;" alt="Della in Ghana, West Africa" src="http://cdn.shopify.com/s/files/1/0228/7183/files/Africa.jpg?614" /></div>
                    <div class="ten columns alpha">
                        <blockquote style="padding-top: 80px;">Della is a fashion line handcrafted by a community in Ghana, West Africa. The passionate, talented women who create the pieces are given an opportunity to build a foundation for a better life through jobs, education and skills training.<br /><br /></blockquote>
                    </div>
                </div>
            </div>


            <div class="sixteen columns">
                <div class="section clearfix">

                </div>
            </div>

        </div> <!-- end container -->
        <div class="footer">
            <div class="container">
                <div class="sixteen columns">

                    <div class="one-third column alpha">

                        <h6>Newsletter</h6>

                        <form action="http://dellala.us1.list-manage.com/subscribe?u=0a052d84bc4f80a33572c9e65&id=8b796936c3" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="contact-form" target="_blank">
                            <input type="email" value="" name="EMAIL" class="required email" id="contact_email" placeholder="Enter your email address...">
                            <input type="submit" value="Sign Up" name="subscribe" id="mc-embedded-subscribe" class="submit">
                        </form>

                        <h6 class="social">Social</h6>
                        <a href="http://instagram.com/dellalosangeles/#" title="Della on Instagram" class="social_link" rel="me">
                            <img src="//cdn.shopify.com/s/files/1/0228/7183/t/2/assets/instagram.png?6892268779728020780" alt="Instagram" />
                        </a>              
                        <a href="http://www.facebook.com/Dellalosangeles" title="Della on Facebook" class="social_link" rel="me">
                            <img src="//cdn.shopify.com/s/files/1/0228/7183/t/2/assets/facebook.png?6892268779728020780" alt="Facebook" />
                        </a>              
                        <a href="http://twitter.com/DellaLosAngeles" title="Della on Twitter" class="social_link" rel="me">
                            <img src="//cdn.shopify.com/s/files/1/0228/7183/t/2/assets/twitter.png?6892268779728020780" alt="Twitter" />
                        </a>              
                        <a href="http://dellalosangeles.tumblr.com/" title="Della on Tumblr" class="social_link" rel="me">
                            <img src="//cdn.shopify.com/s/files/1/0228/7183/t/2/assets/tumblr.png?6892268779728020780" alt="Tumblr" />
                        </a>              
                        <a href="http://www.pinterest.com/dellala1/pins/" title="Della on Pinterest" class="social_link" rel="me">
                            <img src="//cdn.shopify.com/s/files/1/0228/7183/t/2/assets/pinterest.png?6892268779728020780" alt="Pinterest" />
                        </a>              











                    </div>


                    <div class="one-third column">
                        <h6>More</h6>
                        <ul>

                            <li><a href="/pages/contact-us" title="Contact">Contact</a></li>

                            <li><a href="/pages/press" title="Press">Press</a></li>

                            <li><a href="/pages/retailers" title="Retailers">Retailers</a></li>

                            <li><a href="http://www.toms.com/marketplace/brand/della" title="TOMS x Della">TOMS x Della</a></li>

                        </ul>
                    </div>

                    <div class="one-third column omega">


                        <h6>Carry Change</h6>

                        <p>Della is a Los Angeles-based fashion line that is changing the way people shop. We are a woman-owned and woman-run business working directly with a community in West Africa, providing jobs, education and skills training to our employees. We are driven by awareness of the need for a global market that provides socially-responsible, quality products. We are not a charity; we are a business done &ndash; and doing &ndash; &ldquo;right.&rdquo;</p>

                        <div class="payment_methods">

                        </div>

                        <p class="credits">
                            Copyright ©2016 Della LA LLC, All Rights Reserved <br />
                            <a href="http://mkdesignrocks.com" target="_blank" title="Graphic Design by Monica Katzenell">Site Design </a><br />
                        </p>

                    </div>
                </div>
            </div>
        </div> <!-- end footer -->

    </body>
    <?php $this->endBody() ?>
</html>
<?php $this->endPage() ?>