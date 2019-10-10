<?php

namespace common;

use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;

class Controller extends \yii\web\Controller
{
    public $layout = false;
    public $enableCsrfValidation = false;

    private $isLogin = false;

    public function render($tpl, $data = [])
    {
        $data['appname'] = \Yii::$app->name;
        if ($userId = Yii::$app->user->getId()) {
            $data['menus'] = \mdm\admin\components\MenuHelper::getAssignedMenu(\Yii::$app->user->id);
            $data['username'] = \Yii::$app->user->identity->username;
        }

        if ($this->isJson()) {
            return $this->renderJson([
                'tpl' => $tpl,
                'data' => $data,
            ]);
        } else {
            return parent::render($tpl, $data);
        }
    }

    public function renderJson($arr)
    {
        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        return $arr;
    }

    private function isJson()
    {
        if (isset($_GET['isJson']) && $_GET['isJson'] == 1) {
            return true;
        } else {
            return false;
        }
    }
    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }
    /**
     * @inheritdoc
    public function behaviors()
    {
    return [
    'access' => [
    'class' => AccessControl::className(),
    'rules' => [
    [
    'actions' => ['login', 'error'],
    'allow' => true,
    ],
    [
    'actions' => ['logout', 'index'],
    'allow' => true,
    'roles' => ['@'],
    ],
    ],
    ],
    'verbs' => [
    'class' => VerbFilter::className(),
    'actions' => [
    'logout' => ['get'],
    ],
    ],
    ];
    }
     */
}
