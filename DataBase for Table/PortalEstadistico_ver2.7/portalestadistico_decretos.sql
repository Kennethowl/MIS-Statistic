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
-- Table structure for table `decretos`
--

DROP TABLE IF EXISTS `decretos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `decretos` (
  `ID_decretos` int NOT NULL AUTO_INCREMENT,
  `Nombre_Decreto` varchar(100) NOT NULL,
  PRIMARY KEY (`ID_decretos`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `decretos`
--

LOCK TABLES `decretos` WRITE;
/*!40000 ALTER TABLE `decretos` DISABLE KEYS */;
INSERT INTO `decretos` VALUES (1,'Acuerdo presidencial 3056-91 Y Decreto Legislativo 128-94'),(2,'Decreto Legislativo 5-99-E'),(3,'PROPUESTA'),(4,'Decreto Legislativo 99-87 Y 38-89'),(5,'Decreto Legislativo 154-94 Y 43-95'),(6,'Decreto Legislativo 166-2013'),(7,'Decreto Legislativo 22-2016'),(8,'Decreto Legislativo 114-03'),(9,'Decreto Legislativo 87-87'),(10,'Decreto Legislativo 211-85'),(11,'Decreto Legislativo No. 32-2014'),(12,'Decreto Legislativo 195-2010'),(13,'Acuerdo presidencial  140-97'),(14,'Decreto Legislativo 22-92'),(15,'Acuerdo presidencial  0348-89'),(16,'Decreto Legislativo 190-2006'),(17,'Acuerdo presidencial  118-92'),(18,'Decreto Legislativo 49-61'),(19,'Decreto Legislativo 75-2010'),(20,'Decreto Legislativo 976-90 Y 153-93'),(21,'Decreto Legislativo 71-71 Y 46-2007'),(22,'Decreto Legislativo 169-99'),(23,'Decreto Legislativo 48-90'),(24,'Decreto Legislativo 093-2016'),(25,'Decreto Legislativo 048-2017'),(26,'Decreto Legislativo No.87-87'),(27,'Decreto Legislativo 144-94'),(28,'Decreto Legislativo  87-87'),(29,'Decreto Legislativo 385-2005'),(30,'Decreto Legislativo 396-2005'),(31,'Decreto Legislativo  96-2016'),(32,'Decreto Legislativo 96-2016'),(33,'Decreto Legislativo 261-00'),(34,'Decreto Legislativo 185-82'),(35,'Acuerdo presidencial 139-97'),(36,'Decreto Legislativo 977-80 y 170-97'),(37,'Decreto Legislativo 46-90 y 334-2013'),(38,'Decreto Legislativo 157-99');
/*!40000 ALTER TABLE `decretos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:35:16
