-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.37-1ubuntu5.4


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ecomerce
--

CREATE DATABASE IF NOT EXISTS ecomerce;
USE ecomerce;

--
-- Definition of table `ecomerce`.`permissions`
--

DROP TABLE IF EXISTS `ecomerce`.`permissions`;
CREATE TABLE  `ecomerce`.`permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecomerce`.`permissions`
--

/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
LOCK TABLES `permissions` WRITE;
INSERT INTO `ecomerce`.`permissions` VALUES  (1,'All','2010-07-23 02:10:27','2010-07-23 02:10:27'),
 (2,'control_panel_index','2010-07-24 16:06:44','2010-07-24 16:06:44'),
 (3,'permissions_edit','2010-07-24 16:13:27','2010-07-24 16:13:27'),
 (4,'permissions_index','2010-07-24 16:13:39','2010-07-24 16:13:39'),
 (5,'permissions_new','2010-07-24 16:13:54','2010-07-24 16:13:54'),
 (6,'permissions_show','2010-07-24 16:14:06','2010-07-24 16:14:06'),
 (7,'role_permissions_edit','2010-07-24 17:16:26','2010-07-24 17:16:26'),
 (8,'role_permissions_index','2010-07-24 17:16:48','2010-07-24 17:16:48'),
 (9,'role_permissions_new','2010-07-24 17:17:09','2010-07-24 17:17:09'),
 (10,'role_permissions_show','2010-07-24 17:17:28','2010-07-24 17:17:28'),
 (11,'roles_edit','2010-07-24 17:17:46','2010-07-24 17:17:46'),
 (12,'roles_index','2010-07-24 17:18:01','2010-07-24 17:18:01'),
 (13,'roles_new','2010-07-24 17:18:18','2010-07-24 17:18:18'),
 (14,'roles_show','2010-07-24 17:18:31','2010-07-24 17:18:31'),
 (15,'session_index','2010-07-24 17:18:50','2010-07-24 17:18:50');
INSERT INTO `ecomerce`.`permissions` VALUES  (16,'user_roles_edit','2010-07-24 17:19:04','2010-07-24 17:19:04'),
 (17,'user_roles_index','2010-07-24 17:19:22','2010-07-24 17:19:22'),
 (18,'user_roles_new','2010-07-24 17:19:34','2010-07-24 17:19:34'),
 (19,'user_roles_show','2010-07-24 17:19:44','2010-07-24 17:19:44'),
 (20,'users_edit','2010-07-24 17:20:10','2010-07-24 17:20:10'),
 (21,'users_index','2010-07-24 17:20:28','2010-07-24 17:20:28'),
 (22,'users_new','2010-07-24 17:21:02','2010-07-24 17:21:02'),
 (23,'users_show','2010-07-24 17:21:19','2010-07-24 17:21:19'),
 (24,'users_destroy','2010-07-24 17:21:19','2010-07-24 17:21:19');
UNLOCK TABLES;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;


--
-- Definition of table `ecomerce`.`role_permissions`
--

DROP TABLE IF EXISTS `ecomerce`.`role_permissions`;
CREATE TABLE  `ecomerce`.`role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecomerce`.`role_permissions`
--

/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
LOCK TABLES `role_permissions` WRITE;
INSERT INTO `ecomerce`.`role_permissions` VALUES  (1,1,1,'2010-07-23 02:10:37','2010-07-23 02:10:37');
UNLOCK TABLES;
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;


--
-- Definition of table `ecomerce`.`roles`
--

DROP TABLE IF EXISTS `ecomerce`.`roles`;
CREATE TABLE  `ecomerce`.`roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecomerce`.`roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
LOCK TABLES `roles` WRITE;
INSERT INTO `ecomerce`.`roles` VALUES  (1,'Admin','2010-07-23 02:10:16','2010-07-23 02:10:16'),
 (2,'User','2010-07-23 02:10:16','2010-07-23 02:10:16');
UNLOCK TABLES;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


--
-- Definition of table `ecomerce`.`schema_migrations`
--

DROP TABLE IF EXISTS `ecomerce`.`schema_migrations`;
CREATE TABLE  `ecomerce`.`schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecomerce`.`schema_migrations`
--

/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
LOCK TABLES `schema_migrations` WRITE;
INSERT INTO `ecomerce`.`schema_migrations` VALUES  ('20100715194531'),
 ('20100722195231'),
 ('20100722195301'),
 ('20100722223842'),
 ('20100722230056'),
 ('20100723200640'),
 ('20100723210941'),
 ('20100726174249');
UNLOCK TABLES;
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;


--
-- Definition of table `ecomerce`.`user_roles`
--

DROP TABLE IF EXISTS `ecomerce`.`user_roles`;
CREATE TABLE  `ecomerce`.`user_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecomerce`.`user_roles`
--

/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
LOCK TABLES `user_roles` WRITE;
INSERT INTO `ecomerce`.`user_roles` VALUES  (3,2,1,'2010-07-24 00:52:08','2010-07-24 00:52:08'),
 (7,5,2,'2010-07-30 21:39:03','2010-07-30 21:39:03');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;


--
-- Definition of table `ecomerce`.`users`
--

DROP TABLE IF EXISTS `ecomerce`.`users`;
CREATE TABLE  `ecomerce`.`users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_login` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ecomerce`.`users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
LOCK TABLES `users` WRITE;
INSERT INTO `ecomerce`.`users` VALUES  (2,'rfonte','12345','Rodrigo','rodrigo@fonte.com.br','2010-07-30 14:52:09','2010-07-24 00:31:19','2010-07-30 21:52:09'),
 (5,'teste1','12345','teste1','rodrigo.rodrigo@teste.com.br','2010-07-30 14:52:04','2010-07-30 21:39:03','2010-07-30 21:52:04');
UNLOCK TABLES;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
