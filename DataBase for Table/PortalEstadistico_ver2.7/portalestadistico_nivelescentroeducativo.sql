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
-- Table structure for table `nivelescentroeducativo`
--

DROP TABLE IF EXISTS `nivelescentroeducativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivelescentroeducativo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Desc_Nivel` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivelescentroeducativo`
--

LOCK TABLES `nivelescentroeducativo` WRITE;
/*!40000 ALTER TABLE `nivelescentroeducativo` DISABLE KEYS */;
INSERT INTO `nivelescentroeducativo` VALUES (1,'Básica'),(2,'Pre-1-Jardines / 1'),(3,'1 / Pre-1-Jardines'),(4,'1 / Media'),(5,'1 / Pre-1-CCPREB'),(6,'Pre-1-Jardines'),(7,'Pre-1-CCPREB'),(8,'Media'),(9,'1 - Adultos / 8'),(10,'1 - Adultos'),(11,'1 / 1 - Adultos'),(12,'1 - Adultos / 1'),(13,'1 / 1 - Adultos / 6'),(14,'8 / 1 - Adultos'),(15,'6 / 1 - Adultos'),(16,'8 / 1 - Adultos / 6'),(17,'1 - Adultos / 6'),(18,'8 / 1 - Adultos / 1'),(19,'1 - Adultos / 1 / 6');
/*!40000 ALTER TABLE `nivelescentroeducativo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:35:43
