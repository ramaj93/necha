<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

namespace app\components;

use Yii;
use yii\base\Component;
use common\models\SiteSetting;
/**
 * Description of SiteSettings
 *
 * @property SiteSetting $site_setting Description
 * @author Ramadan
 */
class Site  extends Component{
    
    public $site_setting;

    
    public function __construct() {
        $cache  = Yii::$app->cache;
        $sxn = $cache->get("site");
        if($sxn == FALSE){
            $sxn = SiteSetting::find()->one();
            $cache->set("site", $sxn);
            $this->site_setting = $sxn;
        }else{
            $this->site_setting = $sxn;
        }
    }
    
    public function getName(){
        return $this->site_setting->name;
    }
    
    public function getDescription(){
        return $this->site_setting->meta_description;
    }
    
    public function getTitle(){
        return $this->site_setting->meta_title;
    }
    
    public function getKeywords(){
        return $this->site_setting->meta_keyword;
    }
    
    public function getCopyright(){
        return $this->site_setting->copyright;
    }
    
}
