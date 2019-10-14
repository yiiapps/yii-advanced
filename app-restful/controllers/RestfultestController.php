<?php
namespace restful\controllers;

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
            'class' => \sizeg\jwt\JwtHttpBearerAuth::className(),
        ];

        return $behaviors;
    }
}
