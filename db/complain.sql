/*!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.4.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: complain
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
(27,'Liam Moore','admin@mail.com','admin-icn.png','$2y$10$oPOmdz1Ph/Sob88t5NWcXObo0.EdDa7TY6ZHEYrYG5IHEfMyEtpJ6',1,1,1599504982),
(32,'Tiffany O. Errico','tiffo@mail.com','default.jpg','$2y$10$pZFHhWCS.Ao.eJEsRIx8e.0HH.UdkNI4w/NdlLSZ8dYYigAbvgaAe',2,1,1599577135),
(33,'Marvin D. Behrens','marvind@mail.com','default.jpg','$2y$10$4Qc8UQVBZg8mx1/iKcgiHu.zJ9zs4IoIvDPMSMktj6DEyV3pQX7DS',2,1,1599577186),
(34,'Nelson L. Perez\n','nelsonp@mail.com','default.jpg','$2y$10$NRnnTrxQkRqVK0M/BNXLa.sajWUnF971Hff/Hsyext75qAoDgXWI2',2,1,1599577219),
(35,'Seth L. Buckner\n','sethb@mail.com','default.jpg','$2y$10$kIB2L/O3/7z7pQmV.XYtAOOBYDZl5TbSWSULg1QTws7TNm1qI/XAm',2,1,1599577247),
(36,'Harold B. Loya\n','haroldbl@mail.com','default.jpg','$2y$10$wW9vlmU6rjciESA6i1N.we3TMlE6fWG7ICy7LOkZdRxPK7m6j001W',2,1,1599577284),
(37,'Christine Moore','christine@mail.com','default.jpg','$2y$10$enF4wVVEDEYRSEd.NT7JheUjB6.TBnTWR0q4aJU5JlulO.lHmZb9G',2,1,1651551632),
(38,'Michael K. Parker','michaelp@mail.com','default.jpg','$2y$10$YP4.s3pZe2RzbYv48fEA5.g04TkeDnxOCq7OSSW5zQf77qaqZYGoK',2,1,1651593601),
(39,'pasakorn boondech','pasakorn124@hotmail.com','default.jpg','$2y$10$i1vRdKscRTCRqwm0uOaqE.LqfvcUlV508IfRGscRkDsAAEPjHmTQa',1,1,1748356912),
(40,'pasakorn boondech','pasakorn124@gmail.com','default.jpg','$2y$10$wU78FmeDZSyKHjiTJOL.2eTrySfizIfYV88sqozvXACaKDJsoOADW',2,1,1748357215);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_access_menu`
--

DROP TABLE IF EXISTS `user_access_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_access_menu`
--

LOCK TABLES `user_access_menu` WRITE;
/*!40000 ALTER TABLE `user_access_menu` DISABLE KEYS */;
INSERT INTO `user_access_menu` VALUES
(1,1,1),
(14,1,2),
(15,1,7),
(16,2,4),
(17,1,5),
(20,1,3),
(21,2,3),
(22,1,4);
/*!40000 ALTER TABLE `user_access_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_menu`
--

DROP TABLE IF EXISTS `user_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_menu`
--

LOCK TABLES `user_menu` WRITE;
/*!40000 ALTER TABLE `user_menu` DISABLE KEYS */;
INSERT INTO `user_menu` VALUES
(1,'Admin'),
(2,'Menu'),
(3,'User'),
(4,'Report Form'),
(5,'Report'),
(6,'korn');
/*!40000 ALTER TABLE `user_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_report`
--

DROP TABLE IF EXISTS `user_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_report` (
  `id` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `nik` varchar(64) NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `village` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL,
  `description` text NOT NULL,
  `type` text NOT NULL,
  `date_reported` int(11) NOT NULL,
  `file` varchar(64) NOT NULL DEFAULT 'default.jpg',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_report`
--

LOCK TABLES `user_report` WRITE;
/*!40000 ALTER TABLE `user_report` DISABLE KEYS */;
INSERT INTO `user_report` VALUES
('5f57a6d18c382','Marvin D. Behrens','0311192857689401',1,4,'Little Ivywood','Flood','Several residential areas were affected by the flood','Natural Disaster',1646499899,'5f57a6d18c382.jpeg'),
('5f57a769d43b0','Tiffany O. Errico','3299000709012871',2,4,'Aucteraden','Need Education Help','Some children are still not getting a decent education.','Education',1648405450,'5f57a769d43b0.jpg'),
('6270af1bdf852','Christine Moore','12121',2,2,'as','Demo','Demo demo demo','Corona Virus',1651552027,'6270af1bdf852.png'),
('66b9c6f9732ee','Liam Moore','test',55,66,'as','test','aa','Corona Virus',1723451129,'66b9c6f9732ee.jpg'),
('6835d3004c986','pasakorn boondech','test',2,2,'2','korn','aaa','Corona Virus',1748357888,'default.jpg');
/*!40000 ALTER TABLE `user_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES
(1,'Administrator'),
(2,'Member');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_sub_menu`
--

DROP TABLE IF EXISTS `user_sub_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_sub_menu`
--

LOCK TABLES `user_sub_menu` WRITE;
/*!40000 ALTER TABLE `user_sub_menu` DISABLE KEYS */;
INSERT INTO `user_sub_menu` VALUES
(1,1,'Dashboard','admin','fas fa-fw fa-tachometer-alt',1),
(2,3,'My Profile','user','fas fa-fw fa-user',1),
(3,3,'Update Profile','user/edit','fas fa-fw fa-user-edit',1),
(4,2,'Menu Management','menu','fas fa-fw fa-folder',1),
(5,2,'Submenu Management','menu/submenu','fas fa-fa-fw fa-folder-open',1),
(6,1,'Access Authority','admin/role','fas fa-fw fa-user-tie',1),
(7,3,'Change Password','user/changepassword','fas fa-fw fa-key',1),
(9,4,'Report','report/addreport','fas fa-fw fa-headset',1),
(10,5,'Report Data','report','fas fa-fw fa-file-alt',1),
(11,1,'User Data','admin/datamember','fas fa-fw fa-users',1);
/*!40000 ALTER TABLE `user_sub_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_token`
--

LOCK TABLES `user_token` WRITE;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
INSERT INTO `user_token` VALUES
(8,'aa@gmail.com','Wag8dsxx6ziM9O8n/HisVkGyy9+az5XeumzNuaJMGg4=',1599579296),
(9,'christine@mail.com','0Hrx2++F9JMO4pYOuQRLLlfQwP5DWH/O76x//+Yhs54=',1651551632),
(10,'pasakorn124@hotmail.com','+MOVqC5+7xAVyM2vuCZv+owM/JKeME/SRq8HYvkcKu0=',1748356912),
(11,'pasakorn124@gmail.com','GEvhJ3auRQRuM2mIKeeVQxj89qQ9zkxNWzxAJA59h6s=',1748357215);
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-05-27 22:14:12
