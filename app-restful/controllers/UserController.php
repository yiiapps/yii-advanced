<?php
namespace restful\controllers;

use common\models\User;
use restful\models\LoginForm;
use restful\models\SignupForm;
use Yii;
use yii\rest\ActiveController;

class UserController extends ActiveController
{
    public $modelClass = 'common\models\User';

    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        $model = new LoginForm();
        if ($model->load(Yii::$app->getRequest()->getBodyParams(), '') && $model->login()) {
            return ['status' => 0, 'msg' => 'success', 'user' => Yii::$app->user];
        } else {
            return ['status' => 1, 'msg' => '登录失败'];
        }
    }

    public function actionRegist()
    {
        $model = new SignupForm();
        if ($model->load(Yii::$app->getRequest()->getBodyParams(), '') && $model->signup()) {
            Yii::$app->session->setFlash('success', 'Thank you for registration. Please check your inbox for verification email.');
            return ['status' => 0, 'msg' => 'success'];
        }
        return ['status' => 1, 'msg' => 'faild', 'errors' => $model->getErrors()];
    }
}
