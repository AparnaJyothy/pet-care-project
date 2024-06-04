-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: pet_shop_db
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `inventory_id` int NOT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (7,1,9,11351,1,'2024-05-28 11:58:12');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(250) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Food','Dog and cat food',1,'2021-06-21 10:17:41'),(4,'Accessories','&lt;p&gt;dog and cat accessories&lt;/p&gt;',1,'2021-06-21 16:34:04'),(7,'Pets','&lt;p&gt;Puppies and kittens&lt;/p&gt;',1,'2024-05-27 19:59:00');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` text NOT NULL,
  `default_delivery_address` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'John','Smith','Male','09123456789','jsmith@sample.com','1254737c076cf867dc53d60a0364f38e','Sample Address','2021-06-21 16:00:23'),(2,'Aparna','jyothy','Female','8281002877','aparnajyothy1@gmail.com','263ace68571f3091a2cb5731e95cc139','','2024-05-28 11:11:00'),(3,'Appu','j','Male','8900248571','appu123@gmail.com','394759c36d48453f0b96fdfdea6760fe','Amrita nagar, Delhi','2024-05-30 13:01:15');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` double NOT NULL,
  `unit` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `size` varchar(250) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,50,'pcs',250,'M','2021-06-21 13:01:30','2021-06-21 13:05:23'),(2,1,20,'pack',300,'L','2021-06-21 13:07:00','2024-05-28 14:26:29'),(3,4,150,'pcs',500,'M','2021-06-21 16:50:37',NULL),(4,3,50,'pack',150,'M','2021-06-21 16:51:12',NULL),(5,5,30,'pcs',50,'M','2021-06-21 16:51:35',NULL),(6,4,10,'pcs',550,'L','2021-06-21 16:51:54',NULL),(7,6,100,'pcs',150,'S','2021-06-22 15:50:47',NULL),(8,6,150,'pcs',180,'M','2021-06-22 15:51:13',NULL),(9,8,6,'1',11351,'NONE','2024-05-28 11:55:21','2024-05-28 11:56:15'),(10,16,23,'1',12000,'NONE','2024-05-28 14:17:25',NULL),(11,7,2,'1',12350,'NONE','2024-05-28 14:18:08',NULL),(12,12,32,'pcs',230,'S','2024-05-28 14:19:11',NULL),(13,12,320,'pcs',232,'M','2024-05-28 14:20:58',NULL),(14,9,20,'1',12000,'NONE','2024-05-28 14:22:00',NULL),(15,10,20,'1',12500,'NONE','2024-05-28 14:22:47',NULL),(16,14,200,'pcs',230,'M','2024-05-28 14:23:38',NULL),(17,13,120,'pcs',128,'M','2024-05-28 14:24:20',NULL),(18,15,120,'pack',400,'L','2024-05-28 14:25:23','2024-05-28 14:26:08'),(19,11,100,'pcs',450,'L','2024-05-28 14:25:46',NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_list`
--

DROP TABLE IF EXISTS `order_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `size` varchar(20) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_list`
--

LOCK TABLES `order_list` WRITE;
/*!40000 ALTER TABLE `order_list` DISABLE KEYS */;
INSERT INTO `order_list` VALUES (1,1,4,'L','pcs',2,550,1100),(2,2,3,'M','pack',5,150,750),(5,4,1,'M','pcs',1,250,250),(6,5,3,'M','pack',1,150,150),(7,6,10,'NONE','1',1,12500,12500),(8,6,4,'L','pcs',1,550,550),(9,7,11,'L','pcs',1,450,450),(10,8,16,'NONE','1',1,12000,12000);
/*!40000 ALTER TABLE `order_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `delivery_address` text NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `amount` double NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'Sample Address','Online Payment',1100,2,1,'2021-06-22 13:48:54','2021-06-22 14:49:15'),(2,1,'Sample Address','cod',750,3,1,'2021-06-22 15:26:07','2021-06-22 15:32:55'),(4,2,'abad towers','cod',250,1,0,'2024-05-28 11:17:54','2024-05-28 11:19:17'),(5,2,'','cod',150,3,1,'2024-05-28 12:00:16','2024-05-28 12:02:48'),(6,2,'Abad towers','cod',13050,1,0,'2024-05-30 12:51:44','2024-05-30 13:03:22'),(7,2,'Abad towers','cod',450,2,0,'2024-05-30 12:59:20','2024-05-30 13:03:51'),(8,3,'Amrita nagar, Delhi','cod',12000,3,1,'2024-05-30 13:01:56','2024-05-30 13:04:20');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `sub_category_id` int NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'Dog Food ','&lt;p&gt;Dog food rich in proteins and vitamins needed for you dog.&lt;/p&gt;',1,'2021-06-21 11:19:31'),(3,1,3,'Cat Food ','&lt;p&gt;Cat food rich in proteins and vitamins needed for you cat.&lt;br&gt;&lt;/p&gt;',1,'2021-06-21 16:48:16'),(4,4,4,'Dog bed','&lt;p&gt;Available in:&lt;/p&gt;&lt;ol&gt;&lt;li&gt;Blue&lt;/li&gt;&lt;li&gt;White&lt;/li&gt;&lt;/ol&gt;',1,'2021-06-21 16:49:07'),(5,4,5,'Cat  Plates 623','&lt;p&gt;Available as a combo pack of 5&lt;/p&gt;&lt;p&gt;Available colours:&lt;/p&gt;&lt;ol&gt;&lt;li&gt;White&lt;/li&gt;&lt;li&gt;Pink&lt;/li&gt;&lt;li&gt;Black&lt;/li&gt;&lt;li&gt;Brown&lt;/li&gt;&lt;li&gt;Silver&lt;/li&gt;&lt;/ol&gt;',1,'2021-06-21 16:50:11'),(6,4,4,'Dog Belt','&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Available in&amp;nbsp;&lt;/p&gt;&lt;ol&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;blue black&lt;/li&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;red black&lt;/li&gt;&lt;/ol&gt;',1,'2021-06-22 15:50:16'),(7,7,7,'Beagle','&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Gender: Male&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Age: 3 weeks&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Color: Brown and Black&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Delivery: 7-8 working days&lt;/span&gt;&lt;br&gt;&lt;/p&gt;',1,'2024-05-27 20:03:53'),(8,7,7,'American bull','&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: medium;&quot;&gt;Gender: Male&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: medium;&quot;&gt;Age: 6 weeks&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: medium;&quot;&gt;Color: Chocolate &lt;/span&gt;&lt;span style=&quot;font-family: &amp;quot;Segoe UI&amp;quot;;&quot;&gt;﻿&lt;/span&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: medium;&quot;&gt;and White&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Segoe UI&amp;quot;; font-size: medium;&quot;&gt;Delivery: 5-6 working days&lt;/span&gt;&lt;br&gt;&lt;/p&gt;',1,'2024-05-27 20:30:34'),(9,7,7,'Corgi','&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Gender: Female&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Age: 6 weeks&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Color: Golden and White&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Delivery: 5-6 working days&lt;/span&gt;&lt;br&gt;&lt;/p&gt;',1,'2024-05-27 20:31:52'),(10,7,7,'Dachshund','&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Gender: Male&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Age: 3 weeks&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Color: Black and Golden&lt;/span&gt;&lt;br style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Times New Roman&amp;quot;; font-size: medium;&quot;&gt;Delivery: 4-5 working days&lt;/span&gt;&lt;br&gt;&lt;/p&gt;',1,'2024-05-27 20:32:41'),(11,4,4,'Muzzle','&lt;p&gt;Muzzles are a useful preventive tool for to keep dogs from eating something dangerous&lt;/p&gt;',1,'2024-05-27 20:34:25'),(12,4,4,'Bone toy','&lt;p&gt;Favourite toy of your dog&lt;/p&gt;',1,'2024-05-27 20:35:05'),(13,4,4,'Dog collar','&lt;p&gt;Collar with bow tie&lt;/p&gt;',1,'2024-05-27 20:36:24'),(14,4,4,'Disk','&lt;p&gt;Another favourite toy of your dog&lt;/p&gt;',1,'2024-05-27 20:38:21'),(15,1,1,'Drools','&lt;p&gt;Quantity : 1.2 kg&lt;/p&gt;&lt;p&gt;Ingredients : Vegetables&lt;/p&gt;&lt;p&gt;Type : Dry&lt;/p&gt;',1,'2024-05-27 20:39:22'),(16,7,8,'American short','&lt;p&gt;Gender : Male&lt;/p&gt;&lt;p&gt;Age : 2 weeks&lt;/p&gt;&lt;p&gt;Colour : Black ,white and grey&lt;/p&gt;&lt;p&gt;Delivery : 4-5 working days&lt;/p&gt;',1,'2024-05-28 11:52:41');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `total_amount` double NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1,1100,'2021-06-22 13:48:54'),(2,2,750,'2021-06-22 15:26:07'),(4,4,250,'2024-05-28 11:17:54'),(5,5,150,'2024-05-28 12:00:17'),(6,6,13050,'2024-05-30 12:51:46'),(7,7,450,'2024-05-30 12:59:21'),(8,8,12000,'2024-05-30 13:01:56');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `size` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (1,'xs'),(2,'s'),(3,'m'),(4,'l'),(5,'xl'),(6,'None');
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES (1,1,'Dog Food','&lt;p&gt;From different trustable bands&lt;/p&gt;',1,'2021-06-21 10:58:32'),(3,1,'Cat Food','&lt;p&gt;From different trustable brands&lt;/p&gt;',1,'2021-06-21 16:34:59'),(4,4,'Dog Needs','&lt;p&gt;Accessories for dogs&lt;br&gt;&lt;/p&gt;',1,'2021-06-21 16:35:26'),(5,4,'Cat Needs','&lt;p&gt;Accessories for cats&lt;/p&gt;',1,'2021-06-21 16:35:36'),(7,7,'Dogs','Adaptable and cute puppies',1,'2024-05-27 20:01:15'),(8,7,'Cats','lovely and adaptable kittens',1,'2024-05-27 20:02:56');
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_info`
--

DROP TABLE IF EXISTS `system_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_info` (
  `id` int NOT NULL AUTO_INCREMENT,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_info`
--

LOCK TABLES `system_info` WRITE;
/*!40000 ALTER TABLE `system_info` DISABLE KEYS */;
INSERT INTO `system_info` VALUES (1,'name','Pet  adoption and retail shop'),(6,'short_name','Claws and Paws'),(11,'logo','uploads/1716817320_mbr.png'),(13,'user_avatar','uploads/user_avatar.jpg'),(14,'cover','uploads/1716881640_1624240440_banner1.jpg');
/*!40000 ALTER TABLE `system_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','Aparna','admin','0192023a7bbd73250516f069df18b500','uploads/1716821580_mbr-1-600x400.jpg',NULL,1,'2021-01-20 14:02:37','2024-05-27 20:23:06'),(4,'John','Smith','jsmith','1254737c076cf867dc53d60a0364f38e',NULL,NULL,0,'2021-06-19 08:36:09','2021-06-19 10:53:12'),(5,'Claire','Blake','cblake','4744ddea876b11dcb1d169fadf494418',NULL,NULL,0,'2021-06-19 10:01:51','2021-06-19 12:03:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-04 10:26:27
