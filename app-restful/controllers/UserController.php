<?php
namespace restful\controllers;

use restful\models\SignupForm;
use Yii;
use yii\rest\ActiveController;

class UserController extends ActiveController
{
    public $modelClass = 'common\models\User';

    public function actionLogin()
    {
        return 'a';
    }

    public function actionRegist()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->getRequest()->getBodyParams(), '') && $model->signup()) {
            Yii::$app->session->setFlash('success', 'Thank you for registration. Please check your inbox for verification email.');
            return ['msg' => 'success'];
        }
        return ['msg' => 'faild', 'errors' => $model->getErrors()];
    }
}
