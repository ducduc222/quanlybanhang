-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: sales
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `_order`
--
DROP DATABASE IF EXISTS sales;
CREATE DATABASE sales;
USE sales;
DROP TABLE IF EXISTS `_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `discount` int(11) DEFAULT 0,
  `customer_id` int(11) DEFAULT NULL,
  `person_in_charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK89rlip6yd7m162yywywl56e7q` (`customer_id`),
  KEY `FKbv28aihj1d90tivqmtwxj2apn` (`person_in_charge`),
  CONSTRAINT `FK89rlip6yd7m162yywywl56e7q` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `FKbv28aihj1d90tivqmtwxj2apn` FOREIGN KEY (`person_in_charge`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_order`
--

LOCK TABLES `_order` WRITE;
/*!40000 ALTER TABLE `_order` DISABLE KEYS */;
INSERT INTO `_order` VALUES (1,'2023-09-12 19:32:23.000000','2023-09-12 19:32:23.000000',0,2,1),(2,'2023-09-13 14:09:48.000000','2023-09-13 14:09:48.000000',0,1,1),(3,'2023-09-13 20:53:05.000000','2023-09-13 20:53:05.000000',0,1,1),(4,'2023-09-15 08:45:15.000000','2023-09-15 08:45:15.000000',0,1,1),(5,'2023-09-15 15:28:28.000000','2023-09-15 15:28:28.000000',0,1,1),(6,'2023-09-15 16:55:37.000000','2023-09-15 16:55:37.000000',0,1,1);
/*!40000 ALTER TABLE `_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `balance_variant`
--

DROP TABLE IF EXISTS `balance_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balance_variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `real_quantity` int(11) NOT NULL,
  `saved_quantity` int(11) NOT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `balance_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKggrctc42mw5do93o7t7wh4ahn` (`variant_id`),
  KEY `FK2h24nth1v3f6q3aolm5ytqhd2` (`balance_id`),
  CONSTRAINT `FK2h24nth1v3f6q3aolm5ytqhd2` FOREIGN KEY (`balance_id`) REFERENCES `warehouse_balance` (`id`),
  CONSTRAINT `FKggrctc42mw5do93o7t7wh4ahn` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balance_variant`
--

LOCK TABLES `balance_variant` WRITE;
/*!40000 ALTER TABLE `balance_variant` DISABLE KEYS */;
INSERT INTO `balance_variant` VALUES (1,NULL,NULL,'không có gì cả',40,10,1,1),(2,NULL,NULL,'hbgjhgj',0,0,62,2),(3,NULL,NULL,'dfg',0,0,60,2),(4,NULL,NULL,'dfg',0,10,7,2),(5,NULL,NULL,'',0,0,61,3),(6,NULL,NULL,'',7,1,33,3),(7,NULL,NULL,'',0,0,62,4),(8,NULL,NULL,'',0,0,60,5),(9,NULL,NULL,'',0,0,57,5),(10,NULL,NULL,'',0,0,55,6),(11,NULL,NULL,'',0,0,59,7),(12,NULL,NULL,'',11,10,6,7),(13,NULL,NULL,'',20,19,3,7),(14,NULL,NULL,'try',0,0,60,8),(15,NULL,NULL,'adsd',10,10,68,9),(16,NULL,NULL,'ád',1,1,46,9),(17,NULL,NULL,'ád',0,0,21,9),(18,NULL,NULL,'',10,10,67,10),(19,NULL,NULL,'',10,10,68,10),(20,NULL,NULL,'',0,0,62,10),(21,NULL,NULL,'',0,0,61,10),(22,NULL,NULL,'',0,0,60,10),(23,NULL,NULL,'',0,0,59,10),(24,NULL,NULL,'',1,1,43,10),(25,NULL,NULL,'',0,0,18,10),(26,NULL,NULL,'',0,0,57,10),(27,NULL,NULL,'',0,0,55,10),(28,NULL,NULL,'',0,0,53,10),(29,NULL,NULL,'',1,1,45,10),(30,NULL,NULL,'',1,1,46,10),(31,NULL,NULL,'sdfsd',14,10,67,11),(32,NULL,NULL,'ds',12,10,68,12),(33,NULL,NULL,'sd',16,13,67,12),(34,NULL,NULL,'',24,24,76,13),(35,NULL,NULL,'',50,50,73,13),(36,NULL,NULL,'',234,234,71,13),(37,NULL,NULL,'',16,16,67,13),(38,NULL,NULL,'',37,37,75,13);
/*!40000 ALTER TABLE `balance_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_product`
--

DROP TABLE IF EXISTS `base_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `attribute3` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `label` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1emt9gsggr71h2cly2kh2ue70` (`shop_id`),
  CONSTRAINT `FK1emt9gsggr71h2cly2kh2ue70` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_product`
--

LOCK TABLES `base_product` WRITE;
/*!40000 ALTER TABLE `base_product` DISABLE KEYS */;
INSERT INTO `base_product` VALUES (1,'2023-09-11 16:56:47.000000','2023-09-11 16:56:47.000000','Kích thước','','',1,'Áo','Áo mẹ mua',NULL),(2,'2023-09-11 17:06:55.000000','2023-09-11 17:06:55.000000','Màu sắc','KÍch thước','',1,'Áo','Áo bố mua',NULL),(3,'2023-09-11 17:08:43.000000','2023-09-11 17:08:43.000000','Kích thước','Chất liệu','',1,'kjnkdsafs','Aso iausd',NULL),(4,'2023-09-11 18:49:09.000000','2023-09-11 18:49:09.000000','Màu sắc','Chất liệu','',1,'Quần','Quần mẹ mua',NULL),(5,'2023-09-12 11:44:25.000000','2023-09-12 11:44:25.000000','Kích thước','','',1,'Áo','Áo hiệu anh bán',NULL),(6,'2023-09-12 11:55:38.000000','2023-09-12 11:55:38.000000','Kích thước','','',0,'BRay','Áo bạn anh hiếu',NULL),(8,'2023-09-12 11:55:56.000000','2023-09-12 11:55:56.000000','Kích thước','','',1,'Áo','Áo bạn anh hiếu',NULL),(10,'2023-09-12 11:57:38.000000','2023-09-12 11:57:38.000000','Kích thước','','',1,'Áo','Áo mới',NULL),(11,'2023-09-12 11:58:24.000000','2023-09-12 11:58:24.000000','Kích thước','','',1,'Nike','Áo mớiasd',NULL),(12,'2023-09-12 21:00:25.000000','2023-09-12 21:00:25.000000','Kích thước','','',1,'dfg','dfghdf',NULL),(13,'2023-09-12 21:02:33.000000','2023-09-12 21:02:33.000000','Kích thước','','',1,'dfgh','fgdjhfg',NULL),(14,'2023-09-12 21:04:18.000000','2023-09-12 21:04:18.000000','Kích thước','','',1,'erty','tery',NULL),(15,'2023-09-12 21:05:09.000000','2023-09-12 21:05:09.000000','Kích thước','','',1,'adfs','asdf',NULL),(16,'2023-09-12 21:05:33.000000','2023-09-12 21:05:33.000000','Kích thước','','',1,'df','df',NULL),(17,'2023-09-12 21:10:31.000000','2023-09-12 21:10:31.000000','Kích thước','','',1,'er','er',NULL),(25,'2023-09-12 21:32:32.000000','2023-09-12 21:32:32.000000','Kích thước','','',1,'dfg','dfg',NULL),(26,'2023-09-12 21:36:13.000000','2023-09-12 21:36:13.000000','Kích thước','','',1,'fgh','fg',NULL),(27,'2023-09-12 21:37:15.000000','2023-09-12 21:37:15.000000','Kích thước','','',1,'fdgh','fg',NULL),(28,'2023-09-13 00:13:33.000000','2023-09-13 00:13:33.000000','Kích thước','Màu sắc','',0,'','Áo mới mua',NULL),(29,'2023-09-13 00:14:56.000000','2023-09-13 00:14:56.000000','Kích thước','','',1,'','sdfsd',NULL),(30,'2023-09-13 01:21:35.000000','2023-09-13 01:21:35.000000','Kích thước','','',1,'','Áo cậu mua',NULL),(31,'2023-09-13 01:46:24.000000','2023-09-13 01:46:24.000000','Kích thước','Màu sắc','',0,'DIOR','Áo bà nội mua',NULL),(32,'2023-09-13 01:52:32.000000','2023-09-13 01:52:32.000000','Kích thước','','',1,'','fgd',NULL),(33,'2023-09-13 01:57:19.000000','2023-09-13 01:57:19.000000','Kích thước','','',1,'safd','sadf',NULL),(34,'2023-09-13 01:57:40.000000','2023-09-13 01:57:40.000000','Kích thước','','',1,'','sfd',NULL),(35,'2023-09-13 01:58:10.000000','2023-09-13 01:58:10.000000','Kích thước','','',1,'','dfgds',NULL),(36,'2023-09-13 11:40:09.000000','2023-09-13 11:40:09.000000','Kích thước','Màu sắc','',1,'','Áo mẹ mua',NULL),(38,'2023-09-13 22:51:13.000000','2023-09-13 22:51:13.000000','Kích thước','','',1,'','ertesf',NULL),(39,'2023-09-14 23:27:46.000000','2023-09-14 23:27:46.000000','Kích thước','Màu sắc','',0,'GUCCI','Áo ông nội mua',NULL),(40,'2023-09-15 08:51:20.000000','2023-09-15 08:51:20.000000','Kích thước','','',0,'','Áo bố mua',NULL),(41,'2023-09-15 08:54:45.000000','2023-09-15 08:54:45.000000','Kích thước','','',0,'','Áo anh mua',NULL),(43,'2023-09-15 09:10:44.000000','2023-09-15 09:10:44.000000','Kích thước','','',0,'ADIDAS','Áo chị mua',NULL),(45,'2023-09-15 09:22:29.000000','2023-09-15 09:22:29.000000','Kích cỡ',NULL,NULL,0,'NIKE','Áo ba mua',NULL),(49,'2023-09-15 09:25:03.000000','2023-09-15 09:25:03.000000','Kích thước',NULL,NULL,0,'ADIDAS','Áo mẹ mua',NULL),(50,'2023-09-15 09:41:53.000000','2023-09-15 09:41:53.000000','Kích thước','','',1,'','Áo mới mua',NULL),(51,'2023-09-15 10:04:39.000000','2023-09-15 10:04:39.000000','Kích thước','Màu sắc','',0,'','Áo mới mua',NULL);
/*!40000 ALTER TABLE `base_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` enum('FEMALE','MALE','OTHER') DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `customer_code` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime(6) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlkies97eyvye3jidco7p4db1i` (`group_id`),
  CONSTRAINT `FKlkies97eyvye3jidco7p4db1i` FOREIGN KEY (`group_id`) REFERENCES `customer_group` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,NULL,NULL,'here','MALE','Anonymous','-1',NULL,NULL,NULL,NULL),(2,'2023-09-12 15:42:01.000000','2023-09-12 15:42:01.000000','sdvfsd','OTHER','Duc','0987989899',NULL,'CUZ00002',NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_group`
--

DROP TABLE IF EXISTS `customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `discount` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_dl4it04rsafxcy89j1wir4fnl` (`name`),
  KEY `FKfenqg14mdke8rn41ugnxfcgk5` (`shop_id`),
  CONSTRAINT `FKfenqg14mdke8rn41ugnxfcgk5` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_group`
--

LOCK TABLES `customer_group` WRITE;
/*!40000 ALTER TABLE `customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `evaluate` int(11) NOT NULL,
  `person_in_charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpi2y2j7n01ypo49fone3knjry` (`customer_id`),
  KEY `FKff7hj937ulehi1ysj40lwxnkd` (`person_in_charge`),
  CONSTRAINT `FKff7hj937ulehi1ysj40lwxnkd` FOREIGN KEY (`person_in_charge`) REFERENCES `user` (`id`),
  CONSTRAINT `FKpi2y2j7n01ypo49fone3knjry` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `operation_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKc9uy2xsqd8uwc5gfrn59v8sad` (`variant_id`),
  CONSTRAINT `FKc9uy2xsqd8uwc5gfrn59v8sad` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_item`
--

DROP TABLE IF EXISTS `import_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `import_price` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `import_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7ljyd6dlkrp89sjwyr8v0wx4j` (`import_id`),
  KEY `FK2v3adg34uq4voqbil3fmqa9nc` (`variant_id`),
  CONSTRAINT `FK2v3adg34uq4voqbil3fmqa9nc` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`),
  CONSTRAINT `FK7ljyd6dlkrp89sjwyr8v0wx4j` FOREIGN KEY (`import_id`) REFERENCES `import_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_item`
--

LOCK TABLES `import_item` WRITE;
/*!40000 ALTER TABLE `import_item` DISABLE KEYS */;
INSERT INTO `import_item` VALUES (14,NULL,NULL,70000,45,7,75,0);
/*!40000 ALTER TABLE `import_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_order`
--

DROP TABLE IF EXISTS `import_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `shipment_status` tinyint(4) DEFAULT NULL,
  `person_in_charge` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKh2aoealeqisxupg31wyjyqlpw` (`person_in_charge`),
  KEY `FKfy3sqeq1tf5hkmyd2mr611l04` (`vendor_id`),
  CONSTRAINT `FKfy3sqeq1tf5hkmyd2mr611l04` FOREIGN KEY (`vendor_id`) REFERENCES `vendor` (`id`),
  CONSTRAINT `FKh2aoealeqisxupg31wyjyqlpw` FOREIGN KEY (`person_in_charge`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_order`
--

LOCK TABLES `import_order` WRITE;
/*!40000 ALTER TABLE `import_order` DISABLE KEYS */;
INSERT INTO `import_order` VALUES (7,'2023-09-15 16:56:41.000000','2023-09-15 16:56:46.000000',1,1,6);
/*!40000 ALTER TABLE `import_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `return_quantity` int(11) DEFAULT 0,
  `order_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK27k1n0p6fl3w72nur1clauqre` (`order_id`),
  KEY `FKroikilpfif4yfqiigotg1ql4p` (`variant_id`),
  CONSTRAINT `FK27k1n0p6fl3w72nur1clauqre` FOREIGN KEY (`order_id`) REFERENCES `_order` (`id`),
  CONSTRAINT `FKroikilpfif4yfqiigotg1ql4p` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
INSERT INTO `order_line` VALUES (1,'2023-09-12 19:32:23.000000','2023-09-12 19:32:23.000000',2000003,1,0,1,3),(2,'2023-09-13 14:09:48.000000','2023-09-13 14:09:48.000000',0,1,0,2,33),(3,'2023-09-13 20:53:06.000000','2023-09-15 08:45:15.000000',0,1,1,3,45),(4,'2023-09-15 08:45:15.000000','2023-09-15 08:45:15.000000',34,1,0,4,67),(5,'2023-09-15 15:28:29.000000','2023-09-15 15:28:29.000000',0,1,0,5,76),(6,'2023-09-15 15:28:29.000000','2023-09-15 15:28:29.000000',100000,2,0,5,75),(7,'2023-09-15 15:28:29.000000','2023-09-15 15:28:29.000000',0,5,0,5,73),(8,'2023-09-15 15:28:29.000000','2023-09-15 15:28:29.000000',100000,6,0,5,72),(9,'2023-09-15 16:55:37.000000','2023-09-15 16:55:37.000000',0,1,0,6,76);
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_type` enum('IMPORT','ORDER','RETURN') DEFAULT NULL,
  `pay_date` date DEFAULT NULL,
  `payment_method` enum('CASH','CREDIT','TRANSFER') DEFAULT NULL,
  `payment_status` enum('COMPLETE','INIT') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (13,'2023-09-15 16:55:37.000000','2023-09-15 16:55:37.000000',0,6,'ORDER','2023-09-15','CASH','COMPLETE'),(14,'2023-09-15 16:56:41.000000','2023-09-15 16:56:52.000000',3150000,7,'IMPORT','2023-09-15','TRANSFER','COMPLETE');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `_from` date DEFAULT NULL,
  `profit` int(11) DEFAULT NULL,
  `revenue` int(11) DEFAULT NULL,
  `sold_orders` int(11) DEFAULT NULL,
  `sold_products` int(11) DEFAULT NULL,
  `_to` date DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `person_in_charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKe1sh1pqkbmc2c6ub16jg5eted` (`person_in_charge`),
  CONSTRAINT `FKe1sh1pqkbmc2c6ub16jg5eted` FOREIGN KEY (`person_in_charge`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_order`
--

DROP TABLE IF EXISTS `return_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `base_order` int(11) DEFAULT NULL,
  `swap_order` int(11) DEFAULT NULL,
  `person_in_charge` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_augin0gjmdjyuajo9or8i7dd7` (`swap_order`),
  KEY `FKgo8vk6a384eetolgv545fkwsj` (`base_order`),
  KEY `FKeaxhspo6qtesxxq2r4gpm9d7y` (`person_in_charge`),
  CONSTRAINT `FKeaxhspo6qtesxxq2r4gpm9d7y` FOREIGN KEY (`person_in_charge`) REFERENCES `user` (`id`),
  CONSTRAINT `FKgo8vk6a384eetolgv545fkwsj` FOREIGN KEY (`base_order`) REFERENCES `_order` (`id`),
  CONSTRAINT `FKppivrep58o7rj0b0rp9i4yw2` FOREIGN KEY (`swap_order`) REFERENCES `_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_order`
--

LOCK TABLES `return_order` WRITE;
/*!40000 ALTER TABLE `return_order` DISABLE KEYS */;
INSERT INTO `return_order` VALUES (1,'2023-09-15 08:45:15.000000','2023-09-15 08:45:15.000000',NULL,3,4,1);
/*!40000 ALTER TABLE `return_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `return_order_line`
--

DROP TABLE IF EXISTS `return_order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `return_order_line` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `original_price` int(11) DEFAULT NULL,
  `return_price` int(11) DEFAULT NULL,
  `return_quantity` int(11) DEFAULT NULL,
  `return_id` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK40ia2uul22s6trglrbdumw6sg` (`return_id`),
  KEY `FKlw5ppn8bo87qqhx16o8376l4o` (`variant_id`),
  CONSTRAINT `FK40ia2uul22s6trglrbdumw6sg` FOREIGN KEY (`return_id`) REFERENCES `return_order` (`id`),
  CONSTRAINT `FKlw5ppn8bo87qqhx16o8376l4o` FOREIGN KEY (`variant_id`) REFERENCES `variant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `return_order_line`
--

LOCK TABLES `return_order_line` WRITE;
/*!40000 ALTER TABLE `return_order_line` DISABLE KEYS */;
INSERT INTO `return_order_line` VALUES (1,'2023-09-15 08:45:15.000000','2023-09-15 08:45:15.000000',0,0,1,1,45);
/*!40000 ALTER TABLE `return_order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `name` enum('ADMIN','CARE','SALE','WAREHOUSE') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,NULL,NULL,'ADMIN'),(2,NULL,NULL,'SALE'),(3,NULL,NULL,'CARE'),(4,NULL,NULL,'WAREHOUSE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vat` double NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `business` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `wards` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `gender` enum('FEMALE','MALE','OTHER') DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `work_status` enum('QUIT','WORKING') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_589idila9li6a4arw1t8ht1gx` (`phone`),
  KEY `FKophlo4m4uodyxvpnqf1a6d4vn` (`shop_id`),
  CONSTRAINT `FKophlo4m4uodyxvpnqf1a6d4vn` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'2023-11-05 20:55:19.000000','Ha Noi','2002-01-01','Admin','MALE',1,'$2a$10$FBKv4lEteOG9t1M.R2oYEeRjzFfxyZa4EMDRNM9pWR1oUvECezX2y','123123',NULL,'WORKING'),(2,NULL,NULL,'Ha Noi','2002-01-01','Sale','MALE',1,NULL,'010202021',NULL,NULL),(3,NULL,NULL,'Ha Noi','2002-01-01','Care','MALE',1,NULL,'010202022',NULL,NULL),(4,NULL,NULL,'Ha Noi','2002-01-01','Warehouse','MALE',1,NULL,'010202023',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variant`
--

DROP TABLE IF EXISTS `variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `import_price` int(11) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `retail_price` int(11) DEFAULT 0,
  `sku` varchar(255) DEFAULT NULL,
  `value1` varchar(255) DEFAULT NULL,
  `value2` varchar(255) DEFAULT NULL,
  `value3` varchar(255) DEFAULT NULL,
  `wholesale_price` int(11) DEFAULT 0,
  `base_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_llpabmolrn143l5uh3dp92bgy` (`sku`),
  KEY `FKdgvfgiduminfsf4njbnip63n8` (`base_id`),
  CONSTRAINT `FKdgvfgiduminfsf4njbnip63n8` FOREIGN KEY (`base_id`) REFERENCES `base_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variant`
--

LOCK TABLES `variant` WRITE;
/*!40000 ALTER TABLE `variant` DISABLE KEYS */;
INSERT INTO `variant` VALUES (1,'2023-09-11 16:56:47.000000','2023-09-11 16:56:47.000000','dszfgfad','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',100000,1,'Áo mẹ mua - M',40,100000,'ssh1110-1','M','','',100000,1),(2,'2023-09-11 17:06:55.000000','2023-09-12 11:10:11.000000','fgsdfg','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',100000,1,'Áo bố mua  N-M',10,100000,'SSSKKK-1','Đỏ','M','',100000,2),(3,'2023-09-11 17:08:43.000000','2023-09-12 19:32:23.000000','kjnkjn-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',200000,1,'Aso iausdxfgv',20,2000003,'kjnkjn-1','Mwe','Bê tông','',200000,3),(4,'2023-09-11 18:49:09.000000','2023-09-12 00:21:22.000000','ssssskj-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',100000,1,'Quần mẹ mua - M - Đỏ',10,100000,'ssssskj-1','Đỏ','Cotton','',100000,4),(5,'2023-09-11 18:49:09.000000','2023-09-12 00:21:22.000000','ssssskj-2','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',100000,1,'Quần mẹ mua - S -Trắng',10,1000007,'ssssskj-2','Đỏ','Cotton','',100000,4),(6,'2023-09-12 11:44:25.000000','2023-09-12 15:55:10.000000','KHKD-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',100000,1,'Áo hiệu anh bán m',11,100000,'KHKD-1','m','','',100000,5),(7,'2023-09-12 11:55:38.000000','2023-09-15 14:01:56.000000','SKU6100013','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694761296/bfu2oq2im7buhmcftxon.jpg',70000,0,'Áo bạn anh hiếu - PB1',0,100000,'SKU6100013','M','','',80000,6),(9,'2023-09-12 11:55:56.000000','2023-09-12 11:55:56.000000','JÁDKN-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',100000,1,'Áo bạn anh hiếu M',10,100000,'JÁDKN-1dty','M','','',100000,8),(11,'2023-09-12 11:57:38.000000','2023-09-12 11:57:38.000000','kjadfj-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',10000,1,'Áo mớifdgtd',10,100000,'kjadfj-1','df','','',10000,10),(12,'2023-09-12 11:58:24.000000','2023-09-12 11:58:24.000000','kjadfj-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',10000,1,'Áo mớifdgtd',10,100000,'kjadfjasd-1','df','','',10000,11),(13,'2023-09-12 14:56:27.000000','2023-09-12 14:56:27.000000','dtg','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',3453453,1,'dtg',88,353,'dtrvg','dyt','dtbt','',4534242,3),(14,'2023-09-12 15:26:10.000000','2023-09-12 15:26:10.000000','sef','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',1,1,'sf',9998,0,'sef','gth','rt','',0,3),(15,'2023-09-12 15:37:44.000000','2023-09-12 15:37:44.000000','sdf','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'sdrrdrf',0,0,'sddf','sdf','sdd','',0,3),(16,'2023-09-12 21:00:25.000000','2023-09-12 21:00:25.000000','-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'dsfgd',0,0,'sdfg','M','','',0,12),(17,'2023-09-12 21:02:33.000000','2023-09-12 21:02:33.000000','dfgh-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'dsfgdsf',2,0,'dfgh-1','sdfg','','',0,13),(18,'2023-09-12 21:04:18.000000','2023-09-12 21:04:18.000000','erty-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'tery',0,0,'erty-1','tr','','',0,14),(19,'2023-09-12 21:05:09.000000','2023-09-12 21:05:09.000000','sdfg-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'asdf',0,0,'sdfg-1','df','','',0,15),(20,'2023-09-12 21:05:33.000000','2023-09-12 21:05:33.000000','df-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'df',0,0,'df-1','d','','',0,16),(21,'2023-09-12 21:10:31.000000','2023-09-12 21:10:31.000000','erd-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'er',0,0,'erd-1','df','','',0,17),(29,'2023-09-12 21:32:32.000000','2023-09-12 21:32:32.000000','SKU25100026','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'ads',0,0,'SKU25100026','df','','',0,25),(30,'2023-09-12 21:36:14.000000','2023-09-12 21:36:14.000000','fdg-1','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'fg',1,0,'fdg-1','df','','',0,26),(31,'2023-09-12 21:37:15.000000','2023-09-12 21:37:15.000000','gfhf271','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'fg',1,0,'gfhf271','fg','','',0,27),(32,'2023-09-13 00:13:33.000000','2023-09-13 00:13:33.000000','SKU28100029','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'Áo mới mua -1',1,0,'SKU28100029','d','Đỏ','',0,28),(33,'2023-09-13 00:13:33.000000','2023-09-13 14:09:48.000000','SKU28100061','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,0,'Áo mới mua -2',7,0,'SKU28100061','d','Đỏ','',0,28),(34,'2023-09-13 00:13:33.000000','2023-09-13 00:13:33.000000','dfghghdfg','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'Áo mới mua-3',2,0,'SKU28100031','d','Đỏ','',0,28),(35,'2023-09-13 00:14:56.000000','2023-09-13 00:14:56.000000','SKU29100030','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'sdfs',0,0,'SKU29100030','sdf','','',0,29),(36,'2023-09-13 01:21:35.000000','2023-09-15 13:59:17.000000','SKU30100031','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694761145/btkemqpeiveuebu7872u.jpg',70000,1,'Áo cậu mua',0,100000,'SKU30100031','Đen','','',80000,30),(38,'2023-09-13 01:31:38.000000','2023-09-15 08:27:55.000000','SKU28100065','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',100000,0,'Áo mới mua -3',0,100000,'SKU28100065','M','Đỏ','',100000,28),(39,'2023-09-13 01:31:54.000000','2023-09-13 01:31:54.000000','SKU28100067','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,0,'dsdwer',0,0,'SKU28100067','weasd','swe','',0,28),(40,'2023-09-13 01:32:45.000000','2023-09-13 01:32:45.000000','SKU28100068','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,0,'dsdwersadf',0,0,'SKU28100068','weasds','sswe','',0,28),(41,'2023-09-13 01:32:59.000000','2023-09-13 01:32:59.000000','SKU28100069','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'dsdwersadf',0,0,'SKU28100069','weasds','sswe','',0,28),(42,'2023-09-13 01:33:09.000000','2023-09-13 01:33:09.000000','SKU28100070','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,0,'dsdwersadf',0,0,'SKU28100070','weasds','sswe','',0,28),(43,'2023-09-13 01:46:24.000000','2023-09-15 13:57:35.000000','SKU31100074','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694761025/wqqzfqdiqa0ephfvlgiz.jpg',2000000,0,'Áo bà nội mua - L',1,3000000,'SKU31100074','L','Trắng','',2700000,31),(44,'2023-09-13 01:52:32.000000','2023-09-13 01:52:32.000000','SKU32100076','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'rtet',0,0,'SKU32100076','t','','',0,32),(45,'2023-09-13 01:57:19.000000','2023-09-15 08:45:15.000000','SKU33100078','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694614866/yk0fkint7vjvq2ziwh3g.png',1,1,'sadf',2,0,'SKU33100078','sdd','','',0,33),(46,'2023-09-13 01:57:19.000000','2023-09-13 21:21:27.000000','SKU33100079','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694614881/tayki2wxomkgrxsrsekx.jpg',0,1,'sadfsd',1,0,'SKU33100079','sd','','',0,33),(47,'2023-09-13 01:57:40.000000','2023-09-13 02:01:14.000000','SKU34100081','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'sfd',0,0,'SKU34100081','df','','',0,34),(48,'2023-09-13 01:58:10.000000','2023-09-13 11:00:08.000000','SKU35100083er','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'dfdfdf',0,0,'SKU35100083','sdd','','',0,35),(50,'2023-09-13 11:09:04.000000','2023-09-13 11:09:04.000000','SKU35100084','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'djhg',0,0,'SKU35100084','hg','','',0,35),(51,'2023-09-13 11:40:09.000000','2023-09-13 12:32:43.000000','SKU36100087hj','https://ananas.vn/wp-content/uploads/Pro_A6T014_2-500x500.jpeg',0,1,'ytr',0,0,'SKU36100087','r','XXL','',0,36),(52,'2023-09-13 12:31:25.000000','2023-09-13 13:57:38.000000','SKU36100088',NULL,0,1,'gđ',0,0,'SKU36100088','g','g','',0,36),(53,'2023-09-13 17:18:06.000000','2023-09-13 20:54:35.000000','SKU33100086','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694613268/rlc3r5iquxsnq2pvje5s.png',0,1,'Áo mới mua',0,0,'SKU33100086','d','','',0,33),(54,'2023-09-13 21:42:02.000000','2023-09-13 21:42:24.000000','SKU33100087','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694616139/gmgk5ftkqfpxc0id8hdh.jpg',0,1,'th',0,0,'SKU33100087','rt','','',0,33),(55,'2023-09-13 21:47:07.000000','2023-09-13 21:47:07.000000','dfgsd','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694616411/m4fkmoanpphfayemzb6e.jpg',0,1,'fgds',0,0,'dsfgsd','dfgd','','',0,33),(57,'2023-09-13 21:49:03.000000','2023-09-13 21:49:03.000000','dfgsddf','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694616539/eoicfnzqezpei6dphqo2.png',0,1,'fgds4',0,0,'dsfgsddf','dfgd','','',0,33),(58,'2023-09-13 21:49:27.000000','2023-09-13 21:49:27.000000','SKU33100091','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694616554/vzchqofoxfecmyjxzhfu.png',0,1,'dsfs',4,0,'SKU33100091','sdf','','',0,33),(59,'2023-09-13 22:02:45.000000','2023-09-13 22:02:45.000000','SKU33100092','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694617359/pyqlyn4yjyjrdoys2d4g.png',0,1,'sd',0,0,'SKU33100092','sd','','',0,33),(60,'2023-09-13 22:04:46.000000','2023-09-13 22:04:46.000000','SKU33100093','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694617429/xgciqodfefjtojtagobl.png',0,1,'sdfsdf',0,0,'SKU33100093','sdf','','',0,33),(61,'2023-09-13 22:10:24.000000','2023-09-13 22:11:33.000000','SKU33100094','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694617808/sfxwnhaz3gnckt0huyaw.png',0,1,',bk',0,0,'SKU33100094','j','','',0,33),(62,'2023-09-13 22:10:33.000000','2023-09-13 22:11:12.000000','SKU33100095','',0,1,'fh',0,0,'SKU33100095','j','','',0,33),(63,'2023-09-13 22:51:14.000000','2023-09-13 22:51:14.000000','SKU38100101','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694620079/huogughmz9k37midl3xu.jpg',0,1,'asfgad',0,0,'SKU38100101','er','','',0,38),(64,'2023-09-13 22:51:14.000000','2023-09-13 22:51:14.000000','SKU38100102','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694620074/nw3snqrbt10xo24vvfql.png',0,1,'dfaad',0,0,'SKU38100102','ter','','',0,38),(65,'2023-09-13 22:51:14.000000','2023-09-13 22:51:14.000000','SKU38100103','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694620088/chbn803mtbzpyhvhbqoa.png',0,1,'adsfg',0,0,'SKU38100103','tr','','',0,38),(66,'2023-09-14 23:27:46.000000','2023-09-14 23:28:25.000000','SKU39100105','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694708821/z0bsz8ylpp9f6dvhf2zk.jpg',23,1,'dfwqq',10,34,'SKU3910010kl','wk','Tím','',21,39),(67,'2023-09-14 23:27:46.000000','2023-09-15 13:54:40.000000','SKU39100106','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694760863/jkfxwpam20qiwf9ecsnj.png',2000000,0,'Áo ông nội mua -PB1',16,3000000,'SKU39100106','L','Hồng','',2700000,39),(68,'2023-09-14 23:28:59.000000','2023-09-15 13:55:24.000000','SKU39100107','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694760898/tbxejpq5opcmabm2l54f.jpg',2000000,0,'Áo ông nội mua -PB1',12,3000000,'SKU39100107','XXL','Đen','',2700000,39),(69,'2023-09-15 08:51:20.000000','2023-09-15 16:07:05.000000','SKU40100109','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694768821/hzijiapt04jhyqzfhsqk.jpg',100000,0,'Áo bố mua',30,100000,'SKU40100109','M','','',100000,40),(70,'2023-09-15 08:54:45.000000','2023-09-15 13:52:48.000000','SKU41100111','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694760752/odjgcbez0hziuyjnpe5g.jpg',100000,0,'Áo anh mua - PB1',0,140000,'SKU41100111','L','','',120000,41),(71,'2023-09-15 09:10:44.000000','2023-09-15 13:51:41.000000','SKU43100114','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694760679/d413vne4xorftclwuows.jpg',80000,0,'Áo chị mua -PB1',234,120000,'SKU43100114','M',NULL,NULL,100000,43),(72,'2023-09-15 09:22:29.000000','2023-09-15 15:28:29.000000','SKU45100117','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694760535/rkgng12snn0kw8ejar04.jpg',60000,0,'Áo ba mua -PB1',0,100000,'SKU45100117','L',NULL,NULL,80000,45),(73,'2023-09-15 09:25:03.000000','2023-09-15 15:28:29.000000','SKU49100122','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694760468/pp1iexybuwqaq3ksxog3.jpg',100000,0,'Áo mẹ mua - PB1',55,0,'SKU49100122','M',NULL,NULL,0,49),(74,'2023-09-15 09:41:53.000000','2023-09-15 09:51:50.000000','SKU50100124','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694745688/x2pr3iobim53xro71cxp.jpg',100000,1,'Áo mới mua',100,100000,'SKU50100124','M','','',100000,50),(75,'2023-09-15 10:04:39.000000','2023-09-15 16:56:41.000000','SKU51100126','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694768874/snuhtxrdfgu9ssg1z92m.jpg',70000,0,'Áo mới mua',90,100000,'SKU51100126','M','Đỏ','',80000,51),(76,'2023-09-15 11:22:17.000000','2023-09-15 16:55:37.000000','SKU51100127','https://res.cloudinary.com/dnfqh0xor/image/upload/v1694768853/u7l54edhqngko6pej6gn.jpg',100000,0,'ds',32,0,'SKU51100127','Đỏ','Đỏ','',0,51);
/*!40000 ALTER TABLE `variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `shop_id` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2xmu542vpxadksjt6trq9tkcr` (`shop_id`),
  CONSTRAINT `FK2xmu542vpxadksjt6trq9tkcr` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (6,'2023-09-15 16:56:14.000000','2023-09-15 16:56:14.000000','sdf','df@gmail.com','dfg','3333333444',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_balance`
--

DROP TABLE IF EXISTS `warehouse_balance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_balance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `person_in_charge` int(11) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4cf8y4hvv6gtfsdluypq1ui0f` (`person_in_charge`),
  CONSTRAINT `FK4cf8y4hvv6gtfsdluypq1ui0f` FOREIGN KEY (`person_in_charge`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_balance`
--

LOCK TABLES `warehouse_balance` WRITE;
/*!40000 ALTER TABLE `warehouse_balance` DISABLE KEYS */;
INSERT INTO `warehouse_balance` VALUES (1,'2023-09-14 10:28:34.000000','2023-09-14 10:28:34.000000',1,0,NULL),(2,'2023-09-14 22:11:30.000000','2023-09-14 22:11:30.000000',1,0,'khong co'),(3,'2023-09-14 22:21:03.000000','2023-09-14 22:21:03.000000',1,0,'khong co'),(4,'2023-09-14 22:41:13.000000','2023-09-14 22:41:13.000000',1,0,'lô này đang bị fail'),(5,'2023-09-14 22:41:54.000000','2023-09-14 22:41:54.000000',1,0,''),(6,'2023-09-14 22:42:02.000000','2023-09-14 22:42:02.000000',1,0,''),(7,'2023-09-14 22:42:39.000000','2023-09-14 22:42:39.000000',1,0,''),(8,'2023-09-14 22:52:29.000000','2023-09-14 22:52:29.000000',1,0,''),(9,'2023-09-15 00:23:59.000000','2023-09-15 00:23:59.000000',1,0,'ádsadsadf'),(10,'2023-09-15 00:48:53.000000','2023-09-15 00:48:53.000000',1,0,''),(11,'2023-09-15 00:50:36.000000','2023-09-15 00:50:36.000000',1,0,'dfsdf'),(12,'2023-09-15 11:38:01.000000','2023-09-15 11:38:01.000000',1,0,'sdf'),(13,'2023-09-15 15:10:07.000000','2023-09-15 15:10:07.000000',1,0,'sdfasdf');
/*!40000 ALTER TABLE `warehouse_balance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-05 21:13:42
