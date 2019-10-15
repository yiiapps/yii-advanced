<?php
namespace frontend\controllers;

class MainController extends \common\Controller
{
    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        return $this->render('index.tpl');
    }
}
