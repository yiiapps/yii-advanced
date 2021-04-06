<?php
$params = [
    'adminEmail' => 'admin@example.com',
    'supportEmail' => 'support@example.com',
    'senderEmail' => 'noreply@example.com',
    'senderName' => 'Example.com mailer',
    'user.passwordResetTokenExpire' => 3600,
    'static_website' => '',
];
return yii\helpers\ArrayHelper::merge($params, require $config['vendorPath'] . '/yiiexttbq/blogmodule/configs/params.php');
