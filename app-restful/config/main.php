<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

$config = [
    'id' => 'app-restful',
    'basePath' => dirname(__DIR__),
    'bootstrap' => ['log'],
    'controllerNamespace' => 'restful\controllers',
    'components' => [
        'request' => [
            'parsers' => [
                'application/json' => 'yii\web\JsonParser',
            ],
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => false,
            'identityCookie' => false,
            'enableSession' => false,
            'loginUrl' => null,
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
            'enableStrictParsing' => true,
            'showScriptName' => false,
            'rules' => [
                [
                    'class' => 'yii\rest\UrlRule',
                    'controller' => 'user',
                    'extraPatterns' => [
                        'POST login' => 'login',
                        'POST regist' => 'regist',
                        'GET create-token' => 'create-token',
                        'GET parse-token' => 'parse-token',
                        'GET validate-token' => 'validate-token',
                    ],
                ],
                ['class' => 'yii\rest\UrlRule', 'controller' => 'restfultest'],
            ],
        ],
        'jwt' => [
            'key' => 'secret',
            'class' => 'sizeg\jwt\Jwt',
            // // You have to configure ValidationData informing all claims you want to validate the token.
            // 'jwtValidationData' => \app\components\JwtValidationData::class,
        ],
    ],
    'params' => $params,

    'language' => 'zh-CN',
    'timeZone' => 'Asia/Shanghai',
];

return $config;
