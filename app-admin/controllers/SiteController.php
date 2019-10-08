<?php
namespace admin\controllers;

use admin\libs\ControllerAdmin;

/**
 * Site controller
 */
class SiteController extends ControllerAdmin
{
    public function actionIndex()
    {

        return $this->render('index.tpl', ['test' => 'aaaaa', 'username' => \Yii::$app->user->identity->username]);
    }

    public function actionMain()
    {
        return $this->render('main.tpl', []);
    }

    public function actionLogout()
    {
        \Yii::$app->getUser()->logout();

        return $this->goHome();
    }
}
