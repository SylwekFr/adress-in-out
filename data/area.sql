-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: area
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `AreaId` int(11) NOT NULL AUTO_INCREMENT,
  `AreaName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`AreaId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'areaCoord_1'),(2,'areaCoord_2'),(3,'areaCoord_3');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinates`
--

DROP TABLE IF EXISTS `coordinates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordinates` (
  `CoordinateId` int(11) NOT NULL AUTO_INCREMENT,
  `AreaId` int(11) NOT NULL,
  `Longitude` double DEFAULT NULL,
  `Latitude` double DEFAULT NULL,
  PRIMARY KEY (`CoordinateId`),
  KEY `AreaId` (`AreaId`),
  CONSTRAINT `coordinates_ibfk_1` FOREIGN KEY (`AreaId`) REFERENCES `area` (`AreaId`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinates`
--

LOCK TABLES `coordinates` WRITE;
/*!40000 ALTER TABLE `coordinates` DISABLE KEYS */;
INSERT INTO `coordinates` VALUES (1,1,-73.9346845,40.7284786),(2,1,-73.9382465,40.7281208),(3,1,-73.9457138,40.7274053),(4,1,-73.9517648,40.725454),(5,1,-73.9560993,40.721486),(6,1,-73.9564855,40.710394),(7,1,-73.9406068,40.7118904),(8,1,-73.9330966,40.713582),(9,1,-73.9347274,40.7172251),(10,1,-73.933955,40.7202501),(11,1,-73.9351995,40.722722),(12,1,-73.9282472,40.7243482),(13,1,-73.9298351,40.727633),(14,1,-73.9346845,40.7284786),(15,2,-73.9431817,40.7329176),(16,2,-73.9481599,40.7309989),(17,2,-73.9581163,40.7300884),(18,2,-73.9579875,40.72508),(19,2,-73.9647682,40.7183148),(20,2,-73.9667852,40.716233),(21,2,-73.968373,40.7134681),(22,2,-73.9690597,40.7109308),(23,2,-73.9517219,40.7060185),(24,2,-73.927346,40.710085),(25,2,-73.9185483,40.7144114),(26,2,-73.9162738,40.7251775),(27,2,-73.924814,40.7290802),(28,2,-73.9331825,40.7299908),(29,2,-73.9395339,40.7348037),(30,2,-73.9431817,40.7329176),(31,3,-73.9565713,40.739031),(32,3,-73.9622362,40.7340883),(33,3,-73.9617212,40.7248523),(34,3,-73.9696176,40.7131428),(35,3,-73.9703042,40.7083283),(36,3,-73.9689309,40.704034),(37,3,-73.9605195,40.6973968),(38,3,-73.9294488,40.7010409),(39,3,-73.9150293,40.7114513),(40,3,-73.8985498,40.72173),(41,3,-73.8935716,40.7242018),(42,3,-73.9069612,40.7256328),(43,3,-73.9114244,40.7286249),(44,3,-73.9193208,40.7307063),(45,3,-73.9234407,40.7320071),(46,3,-73.9255006,40.7348688),(47,3,-73.9419801,40.7379905),(48,3,-73.9498765,40.7408519),(49,3,-73.9565713,40.739031);
/*!40000 ALTER TABLE `coordinates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23 20:11:06
