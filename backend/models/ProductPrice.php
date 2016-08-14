<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "product_price".
 *
 * @property integer $id
 * @property integer $store_id
 * @property integer $product_id
 * @property string $price
 *
 * @property StoreSetting $store
 * @property Product $product
 */
class ProductPrice extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'product_price';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['store_id', 'product_id'], 'required'],
            [['store_id', 'product_id'], 'integer'],
            [['price'], 'number'],
            [['store_id'], 'exist', 'skipOnError' => true, 'targetClass' => StoreSetting::className(), 'targetAttribute' => ['store_id' => 'id']],
            [['product_id'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['product_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'store_id' => 'Store ID',
            'product_id' => 'Product ID',
            'price' => 'Price',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStore()
    {
        return $this->hasOne(StoreSetting::className(), ['id' => 'store_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id']);
    }
}
