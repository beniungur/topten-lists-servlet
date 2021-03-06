CREATE DATABASE  IF NOT EXISTS `topten` /*!40100 DEFAULT CHARACTER SET utf8mb4 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `topten`;
-- MySQL dump 10.13  Distrib 5.7.29, for osx10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: topten
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Members`
--

DROP TABLE IF EXISTS `Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Members` (
  `memberID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Members`
--

LOCK TABLES `Members` WRITE;
/*!40000 ALTER TABLE `Members` DISABLE KEYS */;
INSERT INTO `Members` VALUES (1,'fred@lwtech.edu','12345678'),(2,'tom@lwtech.edu','12345678'),(3,'mary@lwtech.edu','12345678');
/*!40000 ALTER TABLE `Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TopTenLists`
--

DROP TABLE IF EXISTS `TopTenLists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TopTenLists` (
  `listID` int NOT NULL AUTO_INCREMENT,
  `description` varchar(256) NOT NULL,
  `item1` varchar(45) NOT NULL,
  `item2` varchar(45) NOT NULL,
  `item3` varchar(45) NOT NULL,
  `item4` varchar(45) NOT NULL,
  `item5` varchar(45) NOT NULL,
  `item6` varchar(45) NOT NULL,
  `item7` varchar(45) NOT NULL,
  `item8` varchar(45) NOT NULL,
  `item9` varchar(45) NOT NULL,
  `item10` varchar(45) NOT NULL,
  `isPublished` varchar(8) NOT NULL,
  `ownerID` int DEFAULT NULL,
  `numViews` int DEFAULT NULL,
  `numLikes` int DEFAULT NULL,
  PRIMARY KEY (`listID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TopTenLists`
--

LOCK TABLES `TopTenLists` WRITE;
/*!40000 ALTER TABLE `TopTenLists` DISABLE KEYS */;
INSERT INTO `TopTenLists` VALUES (1,'Top 10 Favorite Roman Numerals','I','II','III','IV','V','VI','VII','VIII','IX','X','Y',1,0,0),(2,'Top 10 Favorite Planets','Pluto!!!','Saturn','Jupiter','Mars','Earth','Mercury','Venus','Uranus','Neptune','Hollywood','Y',1,0,0);
/*!40000 ALTER TABLE `TopTenLists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-04 15:44:28
