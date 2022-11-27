CREATE DATABASE  IF NOT EXISTS `portalestadistico` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `portalestadistico`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: portalestadistico
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `plantacionesforestales`
--

DROP TABLE IF EXISTS `plantacionesforestales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plantacionesforestales` (
  `ID_plantaciones` int NOT NULL AUTO_INCREMENT,
  `id_region` int NOT NULL,
  `certificadas` int NOT NULL,
  `regeneracionNaturalCer` int NOT NULL,
  `cantidad_plantas` int NOT NULL,
  `cantidadplantasregeneracionnatural` int NOT NULL,
  PRIMARY KEY (`ID_plantaciones`),
  KEY `regions_fk_idx` (`id_region`),
  CONSTRAINT `regions_fk` FOREIGN KEY (`id_region`) REFERENCES `regiones` (`ID_Regiones`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plantacionesforestales`
--

LOCK TABLES `plantacionesforestales` WRITE;
/*!40000 ALTER TABLE `plantacionesforestales` DISABLE KEYS */;
INSERT INTO `plantacionesforestales` VALUES (1,11,25,1,14075,753850),(2,1,4,2,2404,4002187),(3,8,28,3,22882,3480577),(4,2,7,9,769953,6716863),(5,12,0,2,0,1197608),(6,5,0,2,0,8063525),(7,3,11,2,48884,1023329),(8,4,22,0,16773,0),(9,5,16,4,29616,8111807),(10,9,1,0,1500,0),(11,6,1,0,134,0),(12,7,8,4,157927,6400640);
/*!40000 ALTER TABLE `plantacionesforestales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:35:23
