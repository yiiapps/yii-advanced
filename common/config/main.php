<?php
$config = [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm' => '@vendor/npm-asset',
    ],
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
    ],

    'language' => 'zh-CN',
    'timeZone' => 'Asia/Shanghai',
];

$configSmarty = require $config['vendorPath'] . '/yiiexttbq/yuqiutils/configs/smarty.php';

return $configSmarty + $config;
