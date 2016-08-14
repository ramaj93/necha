<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "similar_product".
 *
 * @property integer $id
 * @property integer $product_id
 * @property integer $peer_id
 *
 * @property Product $product
 * @property Product $peer
 */
class SimilarProduct extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'similar_product';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'peer_id'], 'required'],
            [['product_id', 'peer_id'], 'integer'],
            [['product_id'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['product_id' => 'id']],
            [['peer_id'], 'exist', 'skipOnError' => true, 'targetClass' => Product::className(), 'targetAttribute' => ['peer_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'product_id' => Yii::t('app', 'Product ID'),
            'peer_id' => Yii::t('app', 'Peer ID'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getProduct()
    {
        return $this->hasOne(Product::className(), ['id' => 'product_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getPeer()
    {
        return $this->hasOne(Product::className(), ['id' => 'peer_id']);
    }
}
