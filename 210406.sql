/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.4.17-MariaDB : Database - yii_advanced_blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yii_advanced_blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `yii_advanced_blog`;

/*Table structure for table `admin_auth_assignment` */

DROP TABLE IF EXISTS `admin_auth_assignment`;

CREATE TABLE `admin_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_auth_assignment` */

insert  into `admin_auth_assignment`(`item_name`,`user_id`,`created_at`) values ('博客管理员','3',1617702293);
insert  into `admin_auth_assignment`(`item_name`,`user_id`,`created_at`) values ('系统管理员','1',1519364439);
insert  into `admin_auth_assignment`(`item_name`,`user_id`,`created_at`) values ('系统管理员','2',1617702179);

/*Table structure for table `admin_auth_item` */

DROP TABLE IF EXISTS `admin_auth_item`;

CREATE TABLE `admin_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `admin_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `admin_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_auth_item` */

insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/*',2,NULL,NULL,NULL,1519364260,1519364260);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/*',2,NULL,NULL,NULL,1519363908,1519363908);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/assign',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/index',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/revoke',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/assignment/view',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/default/*',2,NULL,NULL,NULL,1519363908,1519363908);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/default/index',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/*',2,NULL,NULL,NULL,1519363908,1519363908);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/create',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/delete',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/index',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/update',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/menu/view',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/*',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/assign',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/create',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/delete',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/index',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/remove',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/update',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/permission/view',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/*',2,NULL,NULL,NULL,1519363908,1519363908);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/assign',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/create',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/delete',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/index',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/remove',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/update',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/role/view',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/*',2,NULL,NULL,NULL,1519363908,1519363908);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/assign',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/create',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/index',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/refresh',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/route/remove',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/*',2,NULL,NULL,NULL,1519363908,1519363908);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/create',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/delete',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/index',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/update',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/rule/view',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/*',2,NULL,NULL,NULL,1519363908,1519363908);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/activate',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/change-password',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/delete',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/index',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/login',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/logout',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/request-password-reset',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/reset-password',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/signup',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin/user/view',2,NULL,NULL,NULL,1519364254,1519364254);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/*',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/catalog/*',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/catalog/create',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/catalog/delete',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/catalog/index',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/catalog/update',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/catalog/view',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/comment/*',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/comment/create',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/comment/delete',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/comment/index',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/comment/update',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/comment/view',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/default/*',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/default/index',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/post/*',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/post/create',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/post/delete',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/post/index',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/post/update',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/post/view',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/tag/*',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/tag/create',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/tag/delete',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/tag/index',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/tag/update',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/adminblog/tag/view',2,NULL,NULL,NULL,1558669668,1558669668);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/index',2,NULL,NULL,NULL,1570523060,1570523060);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/site/logout',2,NULL,NULL,NULL,1570523652,1570523652);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('公共权限',2,NULL,NULL,NULL,1570523671,1570523671);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('博客管理',2,NULL,NULL,NULL,1558670469,1558670469);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('博客管理员',1,NULL,NULL,NULL,1571731958,1571731958);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('系统管理',2,NULL,NULL,NULL,1519363858,1570523120);
insert  into `admin_auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('系统管理员',1,NULL,NULL,NULL,1519363298,1570523150);

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

insert  into `admin_auth_item_child`(`parent`,`child`) values ('公共权限','/site/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('公共权限','/site/logout');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/catalog/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/catalog/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/catalog/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/catalog/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/catalog/update');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/catalog/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/comment/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/comment/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/comment/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/comment/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/comment/update');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/comment/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/default/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/default/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/post/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/post/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/post/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/post/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/post/update');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/post/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/tag/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/tag/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/tag/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/tag/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/tag/update');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理','/adminblog/tag/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理员','公共权限');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('博客管理员','博客管理');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/assignment/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/assignment/assign');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/assignment/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/assignment/revoke');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/assignment/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/default/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/default/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/menu/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/menu/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/menu/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/menu/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/menu/update');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/menu/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/permission/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/permission/assign');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/permission/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/permission/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/permission/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/permission/remove');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/permission/update');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/permission/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/role/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/role/assign');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/role/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/role/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/role/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/role/remove');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/role/update');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/role/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/route/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/route/assign');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/route/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/route/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/route/refresh');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/route/remove');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/rule/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/rule/create');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/rule/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/rule/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/rule/update');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/rule/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/*');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/activate');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/change-password');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/delete');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/index');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/login');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/logout');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/request-password-reset');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/reset-password');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/signup');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理','/admin/user/view');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理员','公共权限');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理员','博客管理');
insert  into `admin_auth_item_child`(`parent`,`child`) values ('系统管理员','系统管理');

/*Table structure for table `admin_auth_rule` */

DROP TABLE IF EXISTS `admin_auth_rule`;

CREATE TABLE `admin_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob DEFAULT NULL,
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
  `data` blob DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

/*Data for the table `admin_menus` */

insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (1,'系统管理',NULL,'/admin/default/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (2,'分配权限',1,'/admin/assignment/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (3,'菜单列表',1,'/admin/menu/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (4,'用户列表',1,'/admin/user/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (5,'角色列表',1,'/admin/role/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (6,'权限列表',1,'/admin/permission/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (7,'路由列表',1,'/admin/route/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (8,'规则列表',1,'/admin/rule/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (16,'新增菜单',1,'/admin/menu/create',0,NULL,0);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (17,'更新菜单',1,'/admin/menu/update',0,NULL,0);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (18,'更新菜单(View)',1,'/admin/menu/view',0,NULL,0);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (100,'博客',NULL,'/adminblog/default/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (101,'分类',100,'/adminblog/catalog/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (102,'文章',100,'/adminblog/post/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (103,'评论',100,'/adminblog/comment/index',0,NULL,1);
insert  into `admin_menus`(`id`,`name`,`parent`,`route`,`order`,`data`,`visible`) values (104,'标签',100,'/adminblog/tag/index',0,NULL,1);

/*Table structure for table `admin_users` */

DROP TABLE IF EXISTS `admin_users`;

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin_users` */

insert  into `admin_users`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (2,'admin','NeFCg8aD2hn7u_mHd5FV8g8dQBxyXiD6','$2y$13$zzYMQpwlG2rFjcCR2Q.yqeCH4DM9vyfhRKJxyUWB4AdAOszy6NCcS',NULL,'admin@t.cn',10,1519363368,1519363368);
insert  into `admin_users`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (3,'blogmanage','LtphFwyBMJxPeTExiwChnNjgDDehR52z','$2y$13$rMgh.A18DX5aLqJuvynxCurPxSPT4CModEjq5OL0qTqVSqsA5kE3q',NULL,'blogmanage@t.cn',10,1617702254,1617702254);

/*Table structure for table `blog_catalog` */

DROP TABLE IF EXISTS `blog_catalog`;

CREATE TABLE `blog_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `is_nav` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 50,
  `page_size` int(11) NOT NULL DEFAULT 10,
  `template` varchar(255) NOT NULL DEFAULT 'post',
  `redirect_url` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_nav` (`is_nav`),
  KEY `sort_order` (`sort_order`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `blog_catalog` */

insert  into `blog_catalog`(`id`,`parent_id`,`title`,`surname`,`banner`,`is_nav`,`sort_order`,`page_size`,`template`,`redirect_url`,`status`,`created_at`,`updated_at`) values (1,0,'前端','前端',NULL,1,50,10,'post','',1,1558620068,1566896381);
insert  into `blog_catalog`(`id`,`parent_id`,`title`,`surname`,`banner`,`is_nav`,`sort_order`,`page_size`,`template`,`redirect_url`,`status`,`created_at`,`updated_at`) values (2,0,'架构','架构',NULL,1,50,10,'post','',1,1566897986,1566897986);
insert  into `blog_catalog`(`id`,`parent_id`,`title`,`surname`,`banner`,`is_nav`,`sort_order`,`page_size`,`template`,`redirect_url`,`status`,`created_at`,`updated_at`) values (3,0,'PHP','php',NULL,1,50,10,'post','',1,1566952924,1566952924);

/*Table structure for table `blog_comment` */

DROP TABLE IF EXISTS `blog_comment`;

CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `FK_comment_post` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `blog_comment` */

/*Table structure for table `blog_post` */

DROP TABLE IF EXISTS `blog_post`;

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `source_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  KEY `FK_post_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `blog_post` */

insert  into `blog_post`(`id`,`catalog_id`,`title`,`brief`,`content`,`tags`,`surname`,`banner`,`click`,`user_id`,`status`,`created_at`,`updated_at`,`source_url`) values (1,1,' jQuery.form.js详细用法','记录我jquery from的学习笔记，也是借鉴了好几个人的博客，在此谢过，并补充一些没有提到的内容：\r\n\r\n借鉴博客：http://www.jb51.net/article/75692.htm\r\n\r\n                 https://www.cnblogs.com/hgmyz/p/6708512.html\r\n\r\n相关js：\r\n\r\njquery-3.3.1.min.js  ： http://jquery.com/download\r\n\r\njquery.form.min.js  ：http://malsup.com/jquery/form/#tab7\r\n\r\njquery form是一个表单异步提交的插件，可以很容易提交表单，设置表单提交的参数，并在表单提交前对表单数据进行校验和处理和表单提交后的函数调用。\r\n\r\n表单代码：\r\n ———————————————— \r\n版权声明：本文为CSDN博主「某知名砖家」的原创文章，遵循CC 4.0 by-sa版权协议，转载请附上原文出处链接及本声明。\r\n原文链接：https://blog.csdn.net/m0_37505854/article/details/79639046','<p>记录我jquery from的学习笔记，也是借鉴了好几个人的博客，在此谢过，并补充一些没有提到的内容：</p>\r\n\r\n<p>借鉴博客：http://www.jb51.net/article/75692.htm</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;https://www.cnblogs.com/hgmyz/p/6708512.html</p>\r\n\r\n<p>相关js：</p>\r\n\r\n<p>jquery-3.3.1.min.js &nbsp;： http://jquery.com/download</p>\r\n\r\n<p>jquery.form.min.js &nbsp;：http://malsup.com/jquery/form/#tab7</p>\r\n\r\n<p>jquery form是一个表单异步提交的插件，可以很容易提交表单，设置表单提交的参数，并在表单提交前对表单数据进行校验和处理和表单提交后的函数调用。</p>\r\n\r\n<p>表单代码：</p>\r\n\r\n<p>&lt;form id=&quot;form1&quot; method=&quot;get&quot; action=&quot;/day09/jqueryFormServlet&quot;&gt;<br />\r\n&nbsp; &nbsp; 姓名:&lt;input name=&quot;name&quot; id=&quot;name&quot; class=&quot;specialFields&quot;&gt;&lt;br&gt;<br />\r\n&nbsp; &nbsp; 年龄:&lt;input name=&quot;age&quot; id=&quot;age&quot; type=&quot;number&quot; class=&quot;specialFields&quot;&gt;&lt;br&gt;<br />\r\n&nbsp; &nbsp; 地址:&lt;input name=&quot;address&quot; id=&quot;address&quot;&gt;&lt;br&gt;<br />\r\n&nbsp; &nbsp; 兴趣:&lt;p&gt;<br />\r\n&nbsp; &nbsp; h1:&lt;input type=&quot;checkbox&quot; name=&quot;hobby&quot; value=&quot;h1&quot; checked=&quot;checked&quot;&gt;<br />\r\n&nbsp; &nbsp; h2:&lt;input type=&quot;checkbox&quot; name=&quot;hobby&quot; value=&quot;h2&quot;&gt;<br />\r\n&nbsp; &nbsp; h3:&lt;input type=&quot;checkbox&quot; name=&quot;hobby&quot; value=&quot;h3&quot;&gt;<br />\r\n&nbsp; &nbsp; h4:&lt;input type=&quot;checkbox&quot; name=&quot;hobby&quot; value=&quot;h4&quot;&gt;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &lt;/p&gt;<br />\r\n&nbsp; &nbsp; 性别:<br />\r\n&nbsp; &nbsp; 男:&lt;input type=&quot;radio&quot; name=&quot;sexuality&quot; value=&quot;man&quot; checked=&quot;checked&quot;&gt;&lt;br&gt;<br />\r\n&nbsp; &nbsp; 女:&lt;input type=&quot;radio&quot; name=&quot;sexuality&quot; value=&quot;girl&quot;&gt;&lt;br&gt;<br />\r\n&nbsp; &nbsp; &lt;input type=&quot;submit&quot; value=&quot;submit1&quot; id=&quot;sub1&quot;&gt;<br />\r\n&nbsp; &nbsp; &lt;input type=&quot;submit&quot; value=&quot;submit2&quot; id=&quot;sub2&quot;&gt;</p>\r\n\r\n<p>&nbsp; &nbsp; &lt;div id=&quot;p1&quot;&gt;p&lt;/div&gt;<br />\r\n&lt;/form&gt;<br />\r\n这个插件有两个主要方法：</p>\r\n\r\n<p>ajaxForm() 和 ajaxSubmit()， 它们集合了从控制表单元素到决定如何管理提交进程的功能；</p>\r\n\r\n<p>他们都可以接受0个或一个参数，参数可以为一个函数或者一个JS对象，类似json格式；</p>\r\n\r\n<p>ajaxForm（）不能提交表单，只是为表单提交做准备：</p>\r\n\r\n<p>①：传入函数</p>\r\n\r\n<p><br />\r\n$(&quot;#form1&quot;).submit(function () {<br />\r\n&nbsp; &nbsp; $(&#39;#form1&#39;).ajaxForm(function () {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; alert(&quot;提交成功2&quot;)<br />\r\n&nbsp; &nbsp; })<br />\r\n})<br />\r\n但是虽然我看了很多博客都是这样写，我实际代码运行之后发现，&ldquo;提交成功2&rdquo;并没有打印，也就是函数没有进去，<br />\r\n而且提交后，页面会跳转到action的地址，也就是说，这个方法不能实现表单的异步提交，只是为表单提交做准备，但传入一个函数的方式不适合这个方法，因为没有进去，不知道是不是我写的有问题。但是如果传入一个option是对象，就能生效。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>var options = {<br />\r\n&nbsp; &nbsp; url: &quot;/day09/jqueryFormServlet&quot;, //提交地址：默认是form的action,如果申明,则会覆盖<br />\r\n&nbsp; &nbsp; type: &quot;post&quot;, &nbsp; //默认是form的method（get or post），如果申明，则会覆盖<br />\r\n&nbsp; &nbsp; beforeSubmit: beforeCheck, //提交前的回调函数<br />\r\n&nbsp; &nbsp; success: successfun, &nbsp;//提交成功后的回调函数<br />\r\n&nbsp; &nbsp; target: &quot;#output&quot;, &nbsp;//把服务器返回的内容放入id为output的元素中<br />\r\n&nbsp; &nbsp; dataType: &quot;json&quot;, //html(默认), xml, script, json...接受服务端返回的类型<br />\r\n&nbsp; &nbsp; clearForm: true, &nbsp;//成功提交后，是否清除所有表单元素的值<br />\r\n&nbsp; &nbsp; resetForm: true, &nbsp;//成功提交后，是否重置所有表单元素的值<br />\r\n&nbsp; &nbsp; timeout: 3000 &nbsp; &nbsp; //限制请求的时间，当请求大于3秒后，跳出请求<br />\r\n};<br />\r\n②：传入一个js对象</p>\r\n\r\n<p>$(&#39;#form1&#39;).ajaxForm(options)<br />\r\najaxSubmit（）方法：实现表单的异步提交</p>\r\n\r\n<p>$(&quot;#form1&quot;).submit(function () {<br />\r\n&nbsp; &nbsp; $(&#39;#form1&#39;).ajaxSubmit(function () {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; alert(&quot;提交成功2&quot;)<br />\r\n&nbsp; &nbsp; })</p>\r\n\r\n<p>&nbsp; &nbsp; return false;<br />\r\n})<br />\r\n这里必须返回false，不然表单会提交两次，因为异步提交一次，默认提交一次；</p>\r\n\r\n<p>$(&#39;#form1&#39;).ajaxSubmit(options)<br />\r\n但如果传入options对象则只会提交一次，目前我不知道什么原理。</p>\r\n\r\n<p>//表单提交前，数据校验<br />\r\n/*<br />\r\n&nbsp;* formData：表单元素数组对象，数组里面每一个元素都是一个&lt;input&gt;元素，可以通过.name、.value的方式访问元素<br />\r\n&nbsp;* 提交表单时，Form插件会以Ajax方式自动提交这些数据，格式如：[{name:user,value:val },{name:pwd,value:pwd}]<br />\r\n&nbsp;* form: jQuery对象，封装了表单的元素<br />\r\n&nbsp;* options: options对象<br />\r\n&nbsp;* */<br />\r\nfunction beforeCheck(formData, form, options) {</p>\r\n\r\n<p>&nbsp; &nbsp; //利用formData校验<br />\r\n&nbsp; &nbsp; //$.param(formData) 可以和formSerialize方法一样，实现表单元素的序列化<br />\r\n&nbsp; &nbsp; var queryString = $.param(formData);<br />\r\n&nbsp; &nbsp; $(&quot;#p1&quot;).html(queryString + &quot;&lt;br&gt;&quot;)</p>\r\n\r\n<p>&nbsp; &nbsp; for (var i = 0; i &lt; formData.length; i++) {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; //打印每一个元素的name属性和value值<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; //alert(formData[i].name + &quot; &nbsp;&quot; + formData[i].value)<br />\r\n&nbsp; &nbsp; }</p>\r\n\r\n<p>&nbsp; &nbsp; //利用form校验<br />\r\n&nbsp; &nbsp; var formDom = form[0];</p>\r\n\r\n<p>&nbsp; &nbsp; //formDom是jQuery表单对象，感觉类似数组，可以通过下标访问元素<br />\r\n&nbsp; &nbsp; //比如：formDom[0].targetName 表示元素标签名，INPUT<br />\r\n&nbsp; &nbsp; var name = formDom[&quot;name&quot;].value;//这里寻找name为name或者id为name的元素的值<br />\r\n&nbsp; &nbsp; var age = formDom[&quot;age&quot;].value;</p>\r\n\r\n<p>&nbsp; &nbsp; alert(name+&quot; &nbsp;&quot;+age)<br />\r\n&nbsp; &nbsp; if (!name || !age) {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; alert(&quot;name age 不能为空&quot;)<br />\r\n&nbsp; &nbsp; }</p>\r\n\r\n<p>&nbsp; &nbsp; //利用fieldValue校验<br />\r\n&nbsp; &nbsp; //返回选择元素的value值，是一个数组<br />\r\n&nbsp; &nbsp; var name = $(&quot;input[name=&#39;name&#39;]&quot;).fieldValue();<br />\r\n&nbsp; &nbsp; var hobby = $(&quot;input[name=&#39;hobby&#39;]&quot;).fieldValue();<br />\r\n&nbsp; &nbsp; if (!name[0] || !hobby[0]) {<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; alert(&quot;必须填姓名和选择兴趣&quot;)<br />\r\n&nbsp; &nbsp; }</p>\r\n\r\n<p>&nbsp; &nbsp; //把表单的元素序列化，：name=姓名&amp;age=年龄；以字符串的方式拼接所有表单元素<br />\r\n&nbsp; &nbsp; var formSerializeStr = $(&quot;#form1&quot;).formSerialize();<br />\r\n&nbsp; &nbsp; alert(formSerializeStr)<br />\r\n&nbsp; &nbsp; //序列化某些表单元素 $(&quot;#form1 .ss&quot;)通过选择器选择某些元素<br />\r\n&nbsp; &nbsp; //这里就是选择表单里面，有specialFields样式的元素；但是这里我用属性选择器没有生效，比如$(&quot;#form1[name=&#39;name&#39;]&quot;)<br />\r\n&nbsp; &nbsp; var formSerializeStr = $(&quot;#form1 .specialFields&quot;).fieldSerialize();<br />\r\n&nbsp; &nbsp; alert(formSerializeStr)</p>\r\n\r\n<p><br />\r\n&nbsp; &nbsp; return true;//如果return false，则校验不通过，表单不会提交<br />\r\n}</p>\r\n\r\n<p>function successfun(data, status) {<br />\r\n&nbsp; &nbsp; //data是提交成功后的返回数据，status是提交结果 比如success<br />\r\n&nbsp; &nbsp; //返回数据的类型是通过options对象里面的dataType定义的，比如json、xml，默认是html</p>\r\n\r\n<p>&nbsp; &nbsp; //这里data.success是因为我后天返回的json数据的一个属性 String jsonText = &quot;{&#39;success&#39;:&#39;提交成功&#39;}&quot;;<br />\r\n&nbsp; &nbsp; alert(data.success + &quot; &nbsp;&quot; + status)<br />\r\n}</p>\r\n\r\n<p>一、jQuery.Form.js 配置选项options</p>\r\n\r\n<p>选项&nbsp;&nbsp; &nbsp;说明<br />\r\nurl&nbsp;&nbsp; &nbsp;表单提交数据的地址<br />\r\ntype&nbsp;&nbsp; &nbsp;form提交的方式(method:post/get)<br />\r\ntarget&nbsp;&nbsp; &nbsp;服务器返回的响应数据显示在元素(Id)号<br />\r\nbeforeSerialize: function($form, options)&nbsp;&nbsp; &nbsp;表单数据被序列化之前执行的回调函数，如果在内部return false将终止序列化和提交。<br />\r\nbeforeSubmit: function(arr, $form, options)&nbsp;&nbsp; &nbsp;表单数据被序列化成arr数组，并且在提交前触发的回调函数。<br />\r\nerror&nbsp;&nbsp; &nbsp;提交失败执行的回调函数<br />\r\nsuccess&nbsp;&nbsp; &nbsp;提交成功后执行的回调函数<br />\r\ndata&nbsp;&nbsp; &nbsp;除了表单数据外，还需要额外提交到服务器的数据<br />\r\niframe&nbsp;&nbsp; &nbsp;如果有&lt;input type=&quot;file&quot;&gt;是否应该使用iframe来上传文件(对旧版本浏览器而言)<br />\r\niframeSrc&nbsp;&nbsp; &nbsp;为&lt;iframe&gt;元素设定src属性值<br />\r\niframeTarget&nbsp;&nbsp; &nbsp;如果你想用自己的iframe来上传文件，可以将Id传给这个属性<br />\r\ndataType&nbsp;&nbsp; &nbsp;期望服务器返回数据类型<br />\r\nclearForm&nbsp;&nbsp; &nbsp;提交成功后是否清空表单中的字段值<br />\r\nrestForm&nbsp;&nbsp; &nbsp;提交成功后是否重置表单中的字段值，即恢复到页面加载时的状态<br />\r\ntimeout&nbsp;&nbsp; &nbsp;设置请求时间，超过该时间后，自动退出请求，单位(毫秒)<br />\r\nforceSync&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\nsemantic&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\nuploadProgress&nbsp;&nbsp; &nbsp;&nbsp;<br />\r\n二、可操作函数</p>\r\n\r\n<p>函数&nbsp;&nbsp; &nbsp;说明<br />\r\najaxForm&nbsp;&nbsp; &nbsp;提交表单 与ajaxSubmit的区别在于是否触发浏览器的提交。<br />\r\najaxSubmit&nbsp;&nbsp; &nbsp;提交表单<br />\r\nformSerialize&nbsp;&nbsp; &nbsp;序列化表单<br />\r\nfieldSerialize&nbsp;&nbsp; &nbsp;序列化字段<br />\r\nfieldValue&nbsp;&nbsp; &nbsp;返回某个input的字段值<br />\r\nresetForm&nbsp;&nbsp; &nbsp;重置表单为打开页时的状态<br />\r\nclearForm&nbsp;&nbsp; &nbsp;清空表单的所有值<br />\r\nclearFields&nbsp;&nbsp; &nbsp;清空某个字段值<br />\r\n&nbsp;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&nbsp;<br />\r\n版权声明：本文为CSDN博主「某知名砖家」的原创文章，遵循CC 4.0 by-sa版权协议，转载请附上原文出处链接及本声明。<br />\r\n原文链接：https://blog.csdn.net/m0_37505854/article/details/79639046</p>\r\n','jquery,form','jquery,form',NULL,9,2,1,1558620103,1566897784,'');
insert  into `blog_post`(`id`,`catalog_id`,`title`,`brief`,`content`,`tags`,`surname`,`banner`,`click`,`user_id`,`status`,`created_at`,`updated_at`,`source_url`) values (2,2,'Docker 重命名镜像 TAG','使用docker images时，可能会出现REPOSITORY 和TAG均为none的镜像，如下图 \r\n','<p>使用docker images时，可能会出现REPOSITORY 和TAG均为none的镜像，如下图&nbsp;</p>\r\n\r\n<p>重命名镜像</p>\r\n\r\n<p>docker tag IMAGEID(镜像id) REPOSITORY:TAG（仓库：标签）</p>\r\n\r\n<p>#例子<br />\r\ndocker tag ca1b6b825289 registry.cn-hangzhou.aliyuncs.com/xxxxxxx:v1.0<br />\r\n&nbsp;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;&nbsp;<br />\r\n版权声明：本文为CSDN博主「木灵木灵」的原创文章，遵循CC 4.0 by-sa版权协议，转载请附上原文出处链接及本声明。<br />\r\n原文链接：https://blog.csdn.net/a19891024/article/details/68946065</p>\r\n','docker','docker',NULL,1,2,1,1566898027,1566898114,'');
insert  into `blog_post`(`id`,`catalog_id`,`title`,`brief`,`content`,`tags`,`surname`,`banner`,`click`,`user_id`,`status`,`created_at`,`updated_at`,`source_url`) values (3,2,'nginx 反向代理和负载均衡','1.nginx负载均衡\r\n　　网站的访问量越来越大，服务器的服务模式也得进行相应的升级，比如分离出数据库服务器、分离出图片作为单独服务，这些是简单的数据的负载均衡，将压力分散到不同的机器上。有时候来自web前端的压力，也能让人十分头痛。怎样将同一个域名的访问分散到两台或更多的机器上呢？这其实就是另一种负载均衡了，nginx自身就可以做到，只需要做个简单的配置就行。\r\n　　nginx不单可以作为强大的web服务器，也可以作为一个反向代理服务器，而且nginx还可以按照调度规则实现动态、静态页面的分离，可以按照轮询、ip哈希、URL哈希、权重等多种方式对后端服务器做负载均衡，同时还支持后端服务器的健康检查。\r\nNginx负载均衡一些基础知识：\r\nnginx 的 upstream目前支持 4 种方式的分配 \r\n1)、轮询（默认） \r\n　　每个请求按时间顺序逐一分配到不同的后端服务器，如果后端服务器down掉，能自动剔除。 \r\n2)、weight \r\n　　指定轮询几率，weight和访问比率成正比，用于后端服务器性能不均的情况。 \r\n2)、ip_hash \r\n　　每个请求按访问ip的hash结果分配，这样每个访客固定访问一个后端服务器，可以解决session的问题。  \r\n3)、fair（第三方） \r\n　　按后端服务器的响应时间来分配请求，响应时间短的优先分配。  \r\n4)、url_hash（第三方）','<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><strong><span style=\"font-size:large\">1.nginx负载均衡</span></strong></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">　　网站的访问量越来越大，服务器的服务模式也得进行相应的升级，比如分离出数据库服务器、分离出图片作为单独服务，这些是简单的数据的负载均衡，将压力分散到不同的机器上。有时候来自web前端的压力，也能让人十分头痛。怎样将同一个域名的访问分散到两台或更多的机器上呢？这其实就是另一种负载均衡了，nginx自身就可以做到，只需要做个简单的配置就行。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">　　nginx不单可以作为强大的web服务器，也可以作为一个反向代理服务器，而且nginx还可以按照调度规则实现动态、静态页面的分离，可以按照轮询、ip哈希、URL哈希、权重等多种方式对后端服务器做负载均衡，同时还支持后端服务器的健康检查。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">Nginx负载均衡一些基础知识：</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\"><strong>nginx 的 upstream目前支持 4 种方式的分配&nbsp;</strong></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">1)、轮询（默认）&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">　　每个请求按时间顺序逐一分配到不同的后端服务器，如果后端服务器down掉，能自动剔除。&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">2)、weight&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">　　指定轮询几率，weight和访问比率成正比，用于后端服务器性能不均的情况。&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">2)、ip_hash&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">　　每个请求按访问ip的hash结果分配，这样每个访客固定访问一个后端服务器，可以解决session的问题。 &nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">3)、fair（第三方）&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">　　按后端服务器的响应时间来分配请求，响应时间短的优先分配。 &nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">4)、url_hash（第三方）</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n<div style=\"margin: 0px; padding: 0px;\"><span style=\"font-size:large\"><strong>2.nginx负载均衡配置,主要是proxy_pass,upstream的使用</strong></span></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">在http段做如下配置，即可实现两个域名</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">upstream &nbsp;www.linuxidc.com &nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; server &nbsp;&nbsp;10.0.1.50:8080;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; server &nbsp;&nbsp;10.0.1.51:8080;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">}</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">upstream &nbsp;blog.linuxidc.com &nbsp;&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; server &nbsp;&nbsp;10.0.1.50:8080;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; server &nbsp;&nbsp;10.0.1.51:8080;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">}</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">server</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; listen &nbsp;80;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; server_name &nbsp;www.linuxidc.com;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; location&nbsp;/&nbsp;{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; proxy_pass &nbsp; &nbsp; &nbsp; &nbsp;http://www.linuxidc.com;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; proxy_set_header &nbsp; Host &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $host;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; proxy_set_header &nbsp; X-Real-IP &nbsp; &nbsp; &nbsp; &nbsp;$remote_addr;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; proxy_set_header &nbsp; X-Forwarded-For &nbsp;$proxy_add_x_forwarded_for;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; }</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">}</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">server</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; listen &nbsp;80;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; server_name &nbsp;blog.linuxidc.com wode.linuxidc.com;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; location&nbsp;/&nbsp;{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; proxy_pass &nbsp; &nbsp; &nbsp; &nbsp;http://www.linuxidc.com;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; proxy_set_header &nbsp; Host &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $host;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; proxy_set_header &nbsp; X-Real-IP &nbsp; &nbsp; &nbsp; &nbsp;$remote_addr;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; proxy_set_header &nbsp; X-Forwarded-For &nbsp;$proxy_add_x_forwarded_for;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; }</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">}</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<div style=\"margin: 0px; padding: 0px;\"><span style=\"font-size:large\"><strong>3.注意的几个小问题</strong></span></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\"><strong>3.1 多台机器间session的共享问题</strong></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">配置负载均衡比较简单,但是最关键的一个问题是怎么实现多台服务器之间session的共享</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">下面有几种方法(以下内容来源于网络,第四种方法没有实践.)</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">1). 不使用session，换作cookie</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　能把session改成cookie，就能避开session的一些弊端，在从前看的一本J2EE的书上，也指明在集群系统中不能用session，否则惹出祸端来就不好办。如果系统不复杂，就优先考虑能否将session去掉，改动起来非常麻烦的话，再用下面的办法。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">2). 应用服务器自行实现共享</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　php可以用数据库或memcached来保存session，从而在php本身建立了一个session集群，用这样的方式可以令 session保证稳定，即使某个节点有故障，session也不会丢失，适用于较为严格但请求量不高的场合。但是它的效率是不会很高的，不适用于对效率要求高的场合。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">以上两个办法都跟nginx没什么关系，下面来说说用nginx该如何处理：</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">3). &nbsp;ip_hash</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　nginx中的ip_hash技术能够将某个ip的请求定向到同一台后端，这样一来这个ip下的某个客户端和某个后端就能建立起稳固的session，ip_hash是在upstream配置中定义的：</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">upstream backend&nbsp;{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; server&nbsp;127.0.0.1:8080&nbsp;;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; server&nbsp;127.0.0.1:9090&nbsp;;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; ip_hash;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">}</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　ip_hash是容易理解的，但是因为仅仅能用ip这个因子来分配后端，因此ip_hash是有缺陷的，不能在一些情况下使用：</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　nginx不是最前端的服务器。ip_hash要求nginx一定是最前端的服务器，否则nginx得不到正确ip，就不能根据ip作hash。譬如使用的是squid为最前端，那么nginx取ip时只能得到squid的服务器ip地址，用这个地址来作分流是肯定错乱的。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　nginx的后端还有其它方式的负载均衡。假如nginx后端又有其它负载均衡，将请求又通过另外的方式分流了，那么某个客户端的请求肯定不能定位到同一台session应用服务器上。这么算起来，nginx后端只能直接指向应用服务器，或者再搭一个squid，然后指向应用服务器。最好的办法是用location作一次分流，将需要session的部分请求通过ip_hash分流，剩下的走其它后端去。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">4). upstream_hash</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　为了解决ip_hash的一些问题，可以使用upstream_hash这个第三方模块，这个模块多数情况下是用作url_hash的，但是并不妨碍将它用来做session共享。假如前端是squid，他会将ip加入x_forwarded_for这个http_header里，用upstream_hash可以用这个头做因子，将请求定向到指定的后端：可见这篇文档：http://www.sudone.com/nginx/nginx_url_hash.html</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">在文档中是使用$request_uri做因子，稍微改一下：</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<p>hash &nbsp; $http_x_forwarded_for;</p>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">这样就改成了利用x_forwarded_for这个头作因子，在nginx新版本中可支持读取cookie值，所以也可以改成：</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<p>hash &nbsp; $cookie_jsessionid;</p>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　假如在php中配置的session为无cookie方式，配合nginx自己的一个userid_module模块就可以用nginx自发一个cookie，可参见userid模块的英文文档：http://wiki.nginx.org/NginxHttpUserIdModule</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　另可用姚伟斌编写的模块upstream_jvm_route：http://code.google.com/p/nginx-upstream-jvm-route/</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\"><strong>3.2 后端服务器自动加上端口的问题</strong></div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">　　一个典型的 Nginx + Apache 应用方案可以是Nginx 占用 80 端口，过滤静态请求，然后动态请求即 Proxy 到 Apache 的 8080 端口。Proxy 反向代理的好处是访问的时候，始终就是 80端口，来访者不会觉察到有任何的区别。但有的应用确非常&ldquo;聪明&rdquo;，识别到 Apache 所位于的端口是 8080 ，就会把相关的超链接都一并加上 :8080 的后续。这么就死定了，还能有正常访问麽？！有个方法可以解决这事，就是把 apache 也运行在80端口上。同一台服务器，有Nginx 也有 Apache，2个httpd服务，都是80，不会冲突麽？</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">nginx.conf 的配置中</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">server&nbsp;{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; listen&nbsp;80;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; server_name www.linuxidc.com;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;....</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">}</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">修改为：</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">server&nbsp;{</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;&nbsp;&nbsp; listen&nbsp;123.123.123.123:80;&nbsp;#指定Nginx只占用某个公网IP的80端口。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; #listen 123.123.123.124:80; #如果你服务器中有多个IP，还可以指定多个。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp; &nbsp; server_name www.linuxidc.com;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">....</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">}</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">把 apache 的配置文件 httpd.conf 中的</div>\r\n\r\n<p>Listen&nbsp;80</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">改为</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">\r\n<p>Listen&nbsp;127.0.0.1:80</p>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">跟Nginx一样，指定apache所占用的IP及端口。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">保存退出，重启apache即可生效。</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">&nbsp;</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px;\">https://www.cnblogs.com/microtiger/p/7623858.html</div>\r\n</div>\r\n</div>\r\n</div>\r\n','nginx,反向代理,负载均衡','nginx 反向代理和负载均衡',NULL,0,2,1,1566974927,1566974927,'');

/*Table structure for table `blog_tag` */

DROP TABLE IF EXISTS `blog_tag`;

CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `frequency` (`frequency`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `blog_tag` */

insert  into `blog_tag`(`id`,`name`,`frequency`) values (1,'sdfsdf',2);
insert  into `blog_tag`(`id`,`name`,`frequency`) values (2,'jquery',1);
insert  into `blog_tag`(`id`,`name`,`frequency`) values (3,'form',1);
insert  into `blog_tag`(`id`,`name`,`frequency`) values (4,'docker',1);
insert  into `blog_tag`(`id`,`name`,`frequency`) values (5,'nginx',1);
insert  into `blog_tag`(`id`,`name`,`frequency`) values (6,'反向代理',1);
insert  into `blog_tag`(`id`,`name`,`frequency`) values (7,'负载均衡',1);
insert  into `blog_tag`(`id`,`name`,`frequency`) values (8,'drupal',1);
insert  into `blog_tag`(`id`,`name`,`frequency`) values (9,'sdf',1);

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1570503071);
insert  into `migration`(`version`,`apply_time`) values ('m140506_102106_rbac_init',1570503662);
insert  into `migration`(`version`,`apply_time`) values ('m140602_111327_create_menu_table',1570503081);
insert  into `migration`(`version`,`apply_time`) values ('m160312_050000_create_user',1570503082);
insert  into `migration`(`version`,`apply_time`) values ('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1570503662);
insert  into `migration`(`version`,`apply_time`) values ('m180523_151638_rbac_updates_indexes_without_prefix',1570503662);

/*Table structure for table `restful_test` */

DROP TABLE IF EXISTS `restful_test`;

CREATE TABLE `restful_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `test` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `restful_test` */

insert  into `restful_test`(`id`,`test`) values (1,'tttt');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (1,'admin1','Ij208jUVshN5NPTkkzSrA0qrAOOch1a8','$2y$13$TrxoY2RZe9zrN8/PryFPmOzd6Fg07yxZTicSwtbv45vZ4Pv.JsnCW',NULL,'admin1@test.com',10,1519362783,1519362783);
insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (2,'admin','NeFCg8aD2hn7u_mHd5FV8g8dQBxyXiD6','$2y$13$zzYMQpwlG2rFjcCR2Q.yqeCH4DM9vyfhRKJxyUWB4AdAOszy6NCcS',NULL,'admin@t.cn',10,1519363368,1519363368);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
