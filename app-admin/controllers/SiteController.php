<?php
namespace admin\controllers;

use admin\libs\ControllerAdmin;
use mdm\admin\models\form\Login;

/**
 * Site controller
 */
class SiteController extends ControllerAdmin
{
    public function actionIndex()
    {
        return $this->render('index.tpl');
    }

    public function actionLogout()
    {
        \Yii::$app->getUser()->logout();

        return $this->goHome();
    }
    /**
     * Login
     * @return string
     */
    public function actionLogin()
    {
        if (!\Yii::$app->getUser()->isGuest) {
            return $this->goHome();
        }

        $model = new Login();
        if ($model->load(\Yii::$app->getRequest()->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login.tpl', [
                'model' => $model,
            ]);
        }
    }
}
