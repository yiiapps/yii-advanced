<?php

namespace restful\Models;

class User extends \common\models\User
{
    public function rules()
    {
        return [
            [['username'], 'required'],
            ['status', 'default', 'value' => self::STATUS_ACTIVE],
            ['status', 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_INACTIVE, self::STATUS_DELETED]],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
        ];
    }
    /**
     * {@inheritdoc}
     * @param \Lcobucci\JWT\Token $token
     */
    public static function findIdentityByAccessToken($token, $type = null)
    {
        $uid = (int) $token->getClaim('uid');
        return static::findOne([
            'id' => $uid,
            'status' => self::STATUS_ACTIVE,
        ]);
    }
}
