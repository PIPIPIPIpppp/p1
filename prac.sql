-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: SHOES
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `SHOES`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `SHOES` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `SHOES`;

--
-- Table structure for table `History`
--

DROP TABLE IF EXISTS `History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `History` (
  `HistoryID` int NOT NULL AUTO_INCREMENT,
  `userID` int DEFAULT NULL,
  `shoeID` int DEFAULT NULL,
  `Bookingdate` date DEFAULT '2019-09-09',
  PRIMARY KEY (`HistoryID`),
  KEY `userID` (`userID`),
  KEY `shoeID` (`shoeID`),
  CONSTRAINT `History_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `User` (`userID`),
  CONSTRAINT `History_ibfk_2` FOREIGN KEY (`shoeID`) REFERENCES `Shoes` (`shoeID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `History`
--

LOCK TABLES `History` WRITE;
/*!40000 ALTER TABLE `History` DISABLE KEYS */;
INSERT INTO `History` VALUES (1,1,2,'2019-01-01'),(2,2,2,'2013-06-06'),(3,2,1,'2023-06-05'),(4,2,1,'2019-09-07'),(5,2,1,'2019-09-06');
/*!40000 ALTER TABLE `History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shoes`
--

DROP TABLE IF EXISTS `Shoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Shoes` (
  `shoeID` int NOT NULL AUTO_INCREMENT,
  `size` int DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shoeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shoes`
--

LOCK TABLES `Shoes` WRITE;
/*!40000 ALTER TABLE `Shoes` DISABLE KEYS */;
INSERT INTO `Shoes` VALUES (1,3,'Sport','Adidas',299,'image/kk.png'),(2,2,'fashion','Nike',344,'image/aj.png');
/*!40000 ALTER TABLE `Shoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Mike','123','Bitch','abc@gmail.com'),(2,'JOn','456','qq','asd@gmail.com');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 13:29:06
