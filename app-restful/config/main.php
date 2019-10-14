<?php
$params = array_merge(
    require __DIR__ . '/../../common/config/params.php',
    require __DIR__ . '/../../common/config/params-local.php',
    require __DIR__ . '/params.php',
    require __DIR__ . '/params-local.php'
);

$config = [
    'modules' => [
        'v1' => [
            'class' => 'restful\modules\v1\Module',
        ],
        'v2' => [
            'class' => 'restful\modules\v2\Module',
        ],
    ],
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
            'identityClass' => 'restful\modules\v1\models\User',
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
        'urlManager' => [
            'enablePrettyUrl' => true,
            'enableStrictParsing' => true,
            'showScriptName' => false,
            'rules' => [
                ['class' => 'yii\rest\UrlRule', 'controller' => ['v1/user', 'v2/user'], 'extraPatterns' => [
                    'POST login' => 'login',
                    'POST regist' => 'regist',
                ]],
                ['class' => 'yii\rest\UrlRule', 'controller' => 'v1/restfultest'],
                ['class' => 'yii\rest\UrlRule', 'controller' => 'v2/restfultest'],
            ],
        ],
        'jwt' => [
            'class' => \sizeg\jwt\Jwt::class,
            'key' => 'secret',
            // You have to configure ValidationData informing all claims you want to validate the token.
            'jwtValidationData' => \restful\components\JwtValidationData::class,
        ],
    ],
    'params' => $params,

    'language' => 'zh-CN',
    'timeZone' => 'Asia/Shanghai',
];

$config['params']['jwt'] = require "params-jwt.php";

return $config;
