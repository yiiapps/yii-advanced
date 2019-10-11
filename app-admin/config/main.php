<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

$config = [
    'id' => 'app-admin',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'admin\controllers',
    'bootstrap' => ['log'],
    'modules' => [],
    'name' => '后台管理系统',
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'user' => [
            // 'identityClass' => 'common\models\User',
            // 'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],
    ],
    'params' => $params,

    'language' => 'zh-CN',
    'timeZone' => 'Asia/Shanghai',
];

//admin
$config['modules']['admin'] = [
    'class' => 'yiiapps\adminlte\Module',
    'layout' => 'main',
    'menus' => [], //详见 mdmsoft/yii2-admin
];
$config['aliases']['@yiiapps/adminlte'] = '@vendor/yiiapps/adminlte-asset-ext';
$config['components']['user'] = [
    'identityClass' => 'mdm\admin\models\User',
    'loginUrl' => ['site/login'],
    'enableAutoLogin' => false,
];
$config['components']['authManager'] = [
    'class' => 'common\DbManager',
    'itemTable' => 'admin_auth_item',
    'itemChildTable' => 'admin_auth_item_child',
    'assignmentTable' => 'admin_auth_assignment',
    'ruleTable' => 'admin_auth_rule',
];
$config['as access'] = [
    'class' => 'mdm\admin\components\AccessControl',
    'allowActions' => [
        'assignment/*',
        'admin/user/login',
    ],
];

return $config;
