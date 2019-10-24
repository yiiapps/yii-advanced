<?php
namespace frontend\controllers;

use yii\web\Controller;

/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            // 'access' => [
            // 'class' => AccessControl::className(),
            // 'only' => ['logout', 'signup'],
            // 'rules' => [
            //     [
            //         'actions' => ['signup'],
            //         'allow' => true,
            //         'roles' => ['?'],
            //     ],
            //     [
            //         'actions' => ['logout'],
            //         'allow' => true,
            //         'roles' => ['@'],
            //     ],
            // ],
            // ],
            // 'verbs' => [
            // 'class' => VerbFilter::className(),
            // 'actions' => [
            //     'logout' => ['post'],
            // ],
            // ],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }
    /**
     * Displays about page.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        return $this->render('index');
    }
}
