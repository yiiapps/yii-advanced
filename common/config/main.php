<?php
$config = [
    'aliases' => [
        '@bower' => '@vendor/bower-asset',
        '@npm' => '@vendor/npm-asset',
        '@funson86/blog' => '@vendor/yiiexttbq/blog',
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
$configBlog = require $config['vendorPath'] . '/yiiexttbq/blogmodule/configs/common.php';

$config = array_merge_recursive($config, $configSmarty, $configBlog);

return $config;
