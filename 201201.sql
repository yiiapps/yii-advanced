/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.31 : Database - tbq_yii_advanced
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tbq_yii_advanced` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `tbq_yii_advanced`;

/*Table structure for table `admin_auth_assignment` */

DROP TABLE IF EXISTS `admin_auth_assignment`;

CREATE TABLE `admin_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `admin_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `admin_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_auth_assignment` */

insert  into `admin_auth_assignment`(`item_name`,`user_id`,`created_at`) values 
('系统管理员','1',1519364439),
('系统管理员','2',1519364455);

/*Table structure for table `admin_auth_item` */

DROP TABLE IF EXISTS `admin_auth_item`;

CREATE TABLE `admin_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `admin_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `admin_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_auth_item` */

insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values 
('/admin/*',2,NULL,NULL,NULL,1519364260,1519364260),
('/admin/assignment/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/assignment/assign',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/assignment/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/assignment/revoke',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/assignment/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/default/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/default/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/menu/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/update',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/menu/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/*',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/assign',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/remove',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/update',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/permission/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/role/assign',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/remove',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/update',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/role/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/route/assign',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/refresh',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/route/remove',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/rule/create',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/update',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/rule/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/*',2,NULL,NULL,NULL,1519363908,1519363908),
('/admin/user/activate',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/change-password',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/delete',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/index',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/login',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/logout',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/request-password-reset',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/reset-password',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/signup',2,NULL,NULL,NULL,1519364254,1519364254),
('/admin/user/view',2,NULL,NULL,NULL,1519364254,1519364254),
('/site/index',2,NULL,NULL,NULL,1570523060,1570523060),
('/site/logout',2,NULL,NULL,NULL,1570523652,1570523652),
('公共权限',2,NULL,NULL,NULL,1570523671,1570523671),
('系统管理',2,NULL,NULL,NULL,1519363858,1570523120),
('系统管理员',1,NULL,NULL,NULL,1519363298,1570523150);

/*Table structure for table `admin_auth_item_child` */

DROP TABLE IF EXISTS `admin_auth_item_child`;

CREATE TABLE `admin_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `admin_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `admin_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `admin_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `admin_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_auth_item_child` */

insert  into `admin_auth_item_child`(`parent`,`child`) values 
('系统管理','/admin/*'),
('系统管理','/admin/assignment/*'),
('系统管理','/admin/assignment/assign'),
('系统管理','/admin/assignment/index'),
('系统管理','/admin/assignment/revoke'),
('系统管理','/admin/assignment/view'),
('系统管理','/admin/default/*'),
('系统管理','/admin/default/index'),
('系统管理','/admin/menu/*'),
('系统管理','/admin/menu/create'),
('系统管理','/admin/menu/delete'),
('系统管理','/admin/menu/index'),
('系统管理','/admin/menu/update'),
('系统管理','/admin/menu/view'),
('系统管理','/admin/permission/*'),
('系统管理','/admin/permission/assign'),
('系统管理','/admin/permission/create'),
('系统管理','/admin/permission/delete'),
('系统管理','/admin/permission/index'),
('系统管理','/admin/permission/remove'),
('系统管理','/admin/permission/update'),
('系统管理','/admin/permission/view'),
('系统管理','/admin/role/*'),
('系统管理','/admin/role/assign'),
('系统管理','/admin/role/create'),
('系统管理','/admin/role/delete'),
('系统管理','/admin/role/index'),
('系统管理','/admin/role/remove'),
('系统管理','/admin/role/update'),
('系统管理','/admin/role/view'),
('系统管理','/admin/route/*'),
('系统管理','/admin/route/assign'),
('系统管理','/admin/route/create'),
('系统管理','/admin/route/index'),
('系统管理','/admin/route/refresh'),
('系统管理','/admin/route/remove'),
('系统管理','/admin/rule/*'),
('系统管理','/admin/rule/create'),
('系统管理','/admin/rule/delete'),
('系统管理','/admin/rule/index'),
('系统管理','/admin/rule/update'),
('系统管理','/admin/rule/view'),
('系统管理','/admin/user/*'),
('系统管理','/admin/user/activate'),
('系统管理','/admin/user/change-password'),
('系统管理','/admin/user/delete'),
('系统管理','/admin/user/index'),
('系统管理','/admin/user/login'),
('系统管理','/admin/user/logout'),
('系统管理','/admin/user/request-password-reset'),
('系统管理','/admin/user/reset-password'),
('系统管理','/admin/user/signup'),
('系统管理','/admin/user/view'),
('公共权限','/site/index'),
('公共权限','/site/logout'),
('系统管理员','公共权限'),
('系统管理员','系统管理');

/*Table structure for table `admin_auth_rule` */

DROP TABLE IF EXISTS `admin_auth_rule`;

CREATE TABLE `admin_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_auth_rule` */

/*Table structure for table `admin_menus` */

DROP TABLE IF EXISTS `admin_menus`;

CREATE TABLE `admin_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `data` blob,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `admin_menus` */

insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values 
(1,'系统管理',NULL,'/admin/default/index',0,NULL,1),
(2,'分配权限',1,'/admin/assignment/index',0,NULL,1),
(3,'菜单列表',1,'/admin/menu/index',0,NULL,1),
(4,'用户列表',1,'/admin/user/index',0,NULL,1),
(5,'角色列表',1,'/admin/role/index',0,NULL,1),
(6,'权限列表',1,'/admin/permission/index',0,NULL,1),
(7,'路由列表',1,'/admin/route/index',0,NULL,1),
(8,'规则列表',1,'/admin/rule/index',0,NULL,1),
(16,'新增菜单',1,'/admin/menu/create',0,NULL,0),
(17,'更新菜单',1,'/admin/menu/update',0,NULL,0),
(18,'更新菜单(View)',1,'/admin/menu/view',0,NULL,0);

/*Table structure for table `admin_users` */

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_users` */

insert  into `admin_users`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values 
(1,'admin1','Ij208jUVshN5NPTkkzSrA0qrAOOch1a8','$2y$13$TrxoY2RZe9zrN8/PryFPmOzd6Fg07yxZTicSwtbv45vZ4Pv.JsnCW',NULL,'admin1@test.com',10,1519362783,1519362783),
(2,'admin','NeFCg8aD2hn7u_mHd5FV8g8dQBxyXiD6','$2y$13$zzYMQpwlG2rFjcCR2Q.yqeCH4DM9vyfhRKJxyUWB4AdAOszy6NCcS',NULL,'admin@t.cn',10,1519363368,1519363368);

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values 
('m000000_000000_base',1570503071),
('m140506_102106_rbac_init',1570503662),
('m140602_111327_create_menu_table',1570503081),
('m160312_050000_create_user',1570503082),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1570503662),
('m180523_151638_rbac_updates_indexes_without_prefix',1570503662);

/*Table structure for table `restful_test` */

DROP TABLE IF EXISTS `restful_test`;

CREATE TABLE `restful_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `restful_test` */

insert  into `restful_test`(`id`,`test`) values 
(1,'tttt');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values 
(1,'admin1','Ij208jUVshN5NPTkkzSrA0qrAOOch1a8','$2y$13$TrxoY2RZe9zrN8/PryFPmOzd6Fg07yxZTicSwtbv45vZ4Pv.JsnCW',NULL,'admin1@test.com',10,1519362783,1519362783),
(2,'admin','NeFCg8aD2hn7u_mHd5FV8g8dQBxyXiD6','$2y$13$zzYMQpwlG2rFjcCR2Q.yqeCH4DM9vyfhRKJxyUWB4AdAOszy6NCcS',NULL,'admin@t.cn',10,1519363368,1519363368);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
