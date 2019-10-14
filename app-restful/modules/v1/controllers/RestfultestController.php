<?php
namespace restful\modules\v1\controllers;

use sizeg\jwt\JwtHttpBearerAuth;
use yii\rest\ActiveController;

class RestfultestController extends ActiveController
{
    public $modelClass = 'restful\modules\v1\models\RestfulTest';

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
