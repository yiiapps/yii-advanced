<?php
namespace frontend\controllers;

use common\models\LoginForm;
use Yii;

class UserController extends \yiiexttbq\yuqiutils\Controller
{
    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            $model->password = '';

            return $this->render('login.tpl', [
                'model' => $model,
            ]);
        }
    }
}
