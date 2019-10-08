composer create-project --prefer-dist yiisoft/yii2-app-advanced yii-advanced
ln -s /work/d/phpapps/yii-advanced/nginx.conf yii-advanced.conf
/etc/init.d/nginx restart
./init

app-admin独立--从backend copy

集成 https://github.com/mdmsoft/yii2-admin
创建数据库 yii-advanced 导入admin.sql 或
./yii migrate --migrationPath=@mdm/admin/migrations
./yii migrate --migrationPath=@yii/rbac/migrations

Signup User 添加新用户
http://localhost/myapp/admin/user/signup

集成smarty adminlte
