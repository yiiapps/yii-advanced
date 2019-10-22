<?php
return [
    'adminEmail' => 'admin@example.com',
    'supportEmail' => 'support@example.com',
    'senderEmail' => 'noreply@example.com',
    'senderName' => 'Example.com mailer',
    'user.passwordResetTokenExpire' => 3600,

    //blog
    'blogTitle' => 'HikeBlog',
    'blogTitleSeo' => 'Simple Blog based on Yii2',
    'blogFooter' => 'Copyright &copy; ' . date('Y') . ' by ahuasheng on Yii2. All Rights Reserved.',
    'blogPostPageCount' => '10',
    'blogLinks' => [
        'Google' => 'http://www.google.com',
        'Funson86 Blog' => 'http://github.com/funson86/yii2-blog',
    ],
    'blogUploadPath' => 'upload/', //default to frontend/web/upload
];
