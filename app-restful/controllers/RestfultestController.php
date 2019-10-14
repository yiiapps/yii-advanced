<?php
namespace restful\controllers;

use sizeg\jwt\JwtHttpBearerAuth;
use yii\rest\ActiveController;

class RestfultestController extends ActiveController
{
    public $modelClass = 'restful\models\RestfulTest';

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        $behaviors = parent::behaviors();
        $behaviors['authenticator'] = [
            'class' => JwtHttpBearerAuth::class,
            'optional' => [
                'login',
            ],
        ];

        return $behaviors;
    }
}
