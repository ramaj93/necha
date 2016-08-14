<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "store_setting".
 *
 * @property integer $id
 * @property string $name
 * @property string $owner
 * @property string $email
 * @property string $phone
 * @property string $address
 * @property string $logo
 * @property string $favicon
 * @property integer $approve_customer
 * @property integer $currency_id
 * @property string $fb_url
 * @property string $twitter_url
 * @property string $insta_url
 * @property string $pin_url
 * @property integer $updated_by
 *
 * @property ProductPrice[] $productPrices
 * @property SiteSetting[] $siteSettings
 * @property StoreAccount[] $storeAccounts
 * @property StoreProduct[] $storeProducts
 * @property Currency $currency
 * @property User $updatedBy
 */
class StoreSetting extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'store_setting';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'owner', 'email', 'currency_id', 'updated_by'], 'required'],
            [['approve_customer', 'currency_id', 'updated_by'], 'integer'],
            [['name', 'owner', 'email', 'address', 'logo', 'favicon', 'fb_url', 'twitter_url', 'insta_url', 'pin_url'], 'string', 'max' => 250],
            [['phone'], 'string', 'max' => 15],
            [['currency_id'], 'exist', 'skipOnError' => true, 'targetClass' => Currency::className(), 'targetAttribute' => ['currency_id' => 'id']],
            [['updated_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['updated_by' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'name' => Yii::t('app', 'Name'),
            'owner' => Yii::t('app', 'Owner'),
            'email' => Yii::t('app', 'Email'),
            'phone' => Yii::t('app', 'Phone'),
            'address' => Yii::t('app', 'Address'),
            'logo' => Yii::t('app', 'Logo'),
            'favicon' => Yii::t('app', 'Favicon'),
            'approve_customer' => Yii::t('app', 'Approve Customer'),
            'currency_id' => Yii::t('app', 'Currency ID'),
            'fb_url' => Yii::t('app', 'Fb Url'),
            'twitter_url' => Yii::t('app', 'Twitter Url'),
            'insta_url' => Yii::t('app', 'Insta Url'),
            'pin_url' => Yii::t('app', 'Pin Url'),
            'updated_by' => Yii::t('app', 'Updated By'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductPrices()
    {
        return $this->hasMany(ProductPrice::className(), ['store_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSiteSettings()
    {
        return $this->hasMany(SiteSetting::className(), ['store_setting_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStoreAccounts()
    {
        return $this->hasMany(StoreAccount::className(), ['store_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStoreProducts()
    {
        return $this->hasMany(StoreProduct::className(), ['store_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCurrency()
    {
        return $this->hasOne(Currency::className(), ['id' => 'currency_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUpdatedBy()
    {
        return $this->hasOne(User::className(), ['id' => 'updated_by']);
    }
}
