<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "site_setting".
 *
 * @property string $name
 * @property string $meta_title
 * @property string $meta_keyword
 * @property string $meta_description
 * @property string $copyright
 * @property integer $page_items
 * @property integer $updated_by
 * @property integer $store_setting_id
 *
 * @property User $updatedBy
 * @property StoreSetting $storeSetting
 */
class SiteSetting extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'site_setting';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name', 'updated_by', 'store_setting_id'], 'required'],
            [['page_items', 'updated_by', 'store_setting_id'], 'integer'],
            [['name', 'meta_title'], 'string', 'max' => 250],
            [['meta_keyword', 'meta_description'], 'string', 'max' => 1000],
            [['copyright'], 'string', 'max' => 500],
            [['updated_by'], 'exist', 'skipOnError' => true, 'targetClass' => User::className(), 'targetAttribute' => ['updated_by' => 'id']],
            [['store_setting_id'], 'exist', 'skipOnError' => true, 'targetClass' => StoreSetting::className(), 'targetAttribute' => ['store_setting_id' => 'id']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'name' => Yii::t('app', 'Name'),
            'meta_title' => Yii::t('app', 'Meta Title'),
            'meta_keyword' => Yii::t('app', 'Meta Keyword'),
            'meta_description' => Yii::t('app', 'Meta Description'),
            'copyright' => Yii::t('app', 'Copyright'),
            'page_items' => Yii::t('app', 'Page Items'),
            'updated_by' => Yii::t('app', 'Updated By'),
            'store_setting_id' => Yii::t('app', 'Store Setting ID'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getUpdatedBy()
    {
        return $this->hasOne(User::className(), ['id' => 'updated_by']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStoreSetting()
    {
        return $this->hasOne(StoreSetting::className(), ['id' => 'store_setting_id']);
    }
}
