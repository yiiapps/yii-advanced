<?php
namespace frontend\controllers;

class MainController extends \yiiapps\yuqiutils\Controller
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
