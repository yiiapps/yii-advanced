<?php
namespace restful\controllers;

use yii\rest\ActiveController;

class UserController extends ActiveController
{
    public $modelClass = 'common\models\User';

    public function actionLogin()
    {
        return 'a';
    }

    public function actionSearch()
    {
        return 'abbb';
    }
}
