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

        return $this->render('index.tpl', []);
    }

    public function actionMain()
    {
        return $this->render('main.tpl', []);
    }
}
