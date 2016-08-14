<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "product".
 *
 * @property integer $id
 * @property integer $category_id
 * @property string $name
 * @property string $weight
 * @property string $status
 * @property string $base_image
 * @property integer $has_size
 * @property integer $alert_quantity
 * @property string $description
 * @property string $meta_keyword
 * @property string $meta_description
 * @property string $seo_url
 * @property integer $created_by
 *
 * @property CartItem[] $cartItems
 * @property OrderItem[] $orderItems
 * @property ProductCategory $category
 * @property User $createdBy
 * @property ProductImage[] $productImages
 * @property ProductPrice[] $productPrices
 * @property SimilarProduct[] $similarProducts
 * @property SimilarProduct[] $similarProducts0
 * @property StoreProduct[] $storeProducts
 */
class Product extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['category_id', 'name','alert_quantity'], 'required'],
            [['category_id', 'has_size', 'alert_quantity', 'created_by'], 'integer'],
            [['weight'], 'number'],
            [['description'], 'string'],
            [['name', 'base_image', 'seo_url'], 'string', 'max' => 250],
            [['status'], 'string', 'max' => 45],
            [['meta_keyword', 'meta_description'], 'string', 'max' => 500],
            [['category_id'], 'exist', 'skipOnError' => true, 'targetClass' => ProductCategory::className(), 'targetAttribute' => ['category_id' => 'id']],
            [['created_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['created_by' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'category_id' => Yii::t('app', 'Category'),
            'name' => Yii::t('app', 'Name'),
            'weight' => Yii::t('app', 'Weight'),
            'status' => Yii::t('app', 'Status'),
            'base_image' => Yii::t('app', 'Base Image'),
            'has_size' => Yii::t('app', 'Has Size'),
            'alert_quantity' => Yii::t('app', 'Alert Quantity'),
            'description' => Yii::t('app', 'Description'),
            'meta_keyword' => Yii::t('app', 'Meta Keyword'),
            'meta_description' => Yii::t('app', 'Meta Description'),
            'seo_url' => Yii::t('app', 'Seo Url'),
            'created_by' => Yii::t('app', 'Created By'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCartItems()
    {
        return $this->hasMany(CartItem::className(), ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrderItems()
    {
        return $this->hasMany(OrderItem::className(), ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategory()
    {
        return $this->hasOne(ProductCategory::className(), ['id' => 'category_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCreatedBy()
    {
        return $this->hasOne(User::className(), ['id' => 'created_by']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductImages()
    {
        return $this->hasMany(ProductImage::className(), ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProductPrices()
    {
        return $this->hasMany(ProductPrice::className(), ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSimilarProducts()
    {
        return $this->hasMany(SimilarProduct::className(), ['product_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSimilarProducts0()
    {
        return $this->hasMany(SimilarProduct::className(), ['peer_id' => 'id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStoreProducts()
    {
        return $this->hasMany(StoreProduct::className(), ['product_id' => 'id']);
    }
}
