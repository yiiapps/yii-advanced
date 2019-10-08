/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 5.7.18-log : Database - yiibasic
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values 
('role1','1',1519364439),
('role1','2',1519364455);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
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
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values 
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
('Permission1',2,NULL,NULL,NULL,1519363858,1519363858),
('role1',1,NULL,NULL,NULL,1519363298,1519363298);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values 
('Permission1','/admin/*'),
('Permission1','/admin/assignment/*'),
('Permission1','/admin/assignment/assign'),
('Permission1','/admin/assignment/index'),
('Permission1','/admin/assignment/revoke'),
('Permission1','/admin/assignment/view'),
('Permission1','/admin/default/*'),
('Permission1','/admin/default/index'),
('Permission1','/admin/menu/*'),
('Permission1','/admin/menu/create'),
('Permission1','/admin/menu/delete'),
('Permission1','/admin/menu/index'),
('Permission1','/admin/menu/update'),
('Permission1','/admin/menu/view'),
('Permission1','/admin/permission/*'),
('Permission1','/admin/permission/assign'),
('Permission1','/admin/permission/create'),
('Permission1','/admin/permission/delete'),
('Permission1','/admin/permission/index'),
('Permission1','/admin/permission/remove'),
('Permission1','/admin/permission/update'),
('Permission1','/admin/permission/view'),
('Permission1','/admin/role/*'),
('Permission1','/admin/role/assign'),
('Permission1','/admin/role/create'),
('Permission1','/admin/role/delete'),
('Permission1','/admin/role/index'),
('Permission1','/admin/role/remove'),
('Permission1','/admin/role/update'),
('Permission1','/admin/role/view'),
('Permission1','/admin/route/*'),
('Permission1','/admin/route/assign'),
('Permission1','/admin/route/create'),
('Permission1','/admin/route/index'),
('Permission1','/admin/route/refresh'),
('Permission1','/admin/route/remove'),
('Permission1','/admin/rule/*'),
('Permission1','/admin/rule/create'),
('Permission1','/admin/rule/delete'),
('Permission1','/admin/rule/index'),
('Permission1','/admin/rule/update'),
('Permission1','/admin/rule/view'),
('Permission1','/admin/user/*'),
('Permission1','/admin/user/activate'),
('Permission1','/admin/user/change-password'),
('Permission1','/admin/user/delete'),
('Permission1','/admin/user/index'),
('Permission1','/admin/user/login'),
('Permission1','/admin/user/logout'),
('Permission1','/admin/user/request-password-reset'),
('Permission1','/admin/user/reset-password'),
('Permission1','/admin/user/signup'),
('Permission1','/admin/user/view'),
('role1','Permission1');

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_rule` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values 
(1,'系统管理',NULL,'/admin/default/index',NULL,NULL),
(2,'分配权限',1,'/admin/assignment/index',NULL,NULL),
(3,'菜单列表',1,'/admin/menu/index',NULL,NULL),
(4,'用户列表',1,'/admin/user/index',NULL,NULL),
(5,'角色列表',1,'/admin/role/index',NULL,NULL),
(6,'权限列表',1,'/admin/permission/index',NULL,NULL),
(7,'路由列表',1,'/admin/route/index',NULL,NULL),
(8,'规则列表',1,'/admin/rule/index',NULL,NULL);

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values 
('m000000_000000_base',1547711609),
('m130524_201442_init',1547711615),
('m140506_102106_rbac_init',1547712334),
('m140602_111327_create_menu_table',1547713744),
('m160312_050000_create_user',1547713744),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1547712334);

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
