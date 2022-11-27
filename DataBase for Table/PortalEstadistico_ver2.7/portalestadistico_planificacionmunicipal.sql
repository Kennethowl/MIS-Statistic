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
-- Table structure for table `planificacionmunicipal`
--

DROP TABLE IF EXISTS `planificacionmunicipal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planificacionmunicipal` (
  `ID_planificacion` int NOT NULL AUTO_INCREMENT,
  `nombrePlanificacion` varchar(100) NOT NULL,
  `encargado` varchar(100) NOT NULL,
  `ID_Anio` int NOT NULL,
  `ID_Municipio` int NOT NULL,
  `ID_Depto` int NOT NULL,
  PRIMARY KEY (`ID_planificacion`),
  KEY `ID_Anio` (`ID_Anio`),
  KEY `ID_Municipio` (`ID_Municipio`),
  KEY `ID_Depto` (`ID_Depto`),
  CONSTRAINT `planificacionmunicipal_ibfk_1` FOREIGN KEY (`ID_Anio`) REFERENCES `anio` (`ID_Anio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `planificacionmunicipal_ibfk_2` FOREIGN KEY (`ID_Municipio`) REFERENCES `municipios` (`ID_Municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `planificacionmunicipal_ibfk_3` FOREIGN KEY (`ID_Depto`) REFERENCES `departamentos` (`ID_Depto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planificacionmunicipal`
--

LOCK TABLES `planificacionmunicipal` WRITE;
/*!40000 ALTER TABLE `planificacionmunicipal` DISABLE KEYS */;
INSERT INTO `planificacionmunicipal` VALUES (1,'Plan municipal de gestion de riesgos','Proyecto Mitigar ',315,280,17),(2,'Plan municipal de gestion de riesgos','Proyecto Mitigar ',315,76,6),(3,'Plan municipal de gestion de riesgos','Proyecto PMDN',311,1,1),(4,'Plan municipal de gestion de riesgos','Proyecto PMDN',307,3,1),(5,'Plan municipal de gestion de riesgos','Proyecto PMDN',307,75,6),(6,'Plan municipal de gestion de riesgos','Proyecto PMDN',307,77,6),(7,'Plan municipal de gestion de riesgos','Proyecto PMDN',307,80,6),(8,'Plan municipal de gestion de riesgos','Proyecto PMDN',307,81,6),(9,'Plan municipal de gestion de riesgos','Proyecto PMDN',311,85,6),(10,'Plan municipal de gestion de riesgos','Proyecto PMDN',307,90,6),(11,'Plan municipal de gestion de riesgos','Proyecto PMDN',311,10,2),(12,'Plan municipal de gestion de riesgos','Proyecto PMDN',311,10,2),(13,'Plan Municipal de Ordenamiento Territorial Caracterizacion y Planificacion Regional','Proyecto PMDN',311,10,2),(14,'Plan de Gestion Local de Riesgos','Proyecto PMDN',307,13,2),(15,'Plan de Gestion Local de Riesgos','Proyecto PMDN',307,16,2),(16,'Plan de Gestion Local de Riesgos','Proyecto PMDN',307,17,2),(17,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',306,24,3),(18,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,41,4),(19,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,31,4),(20,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,44,4),(21,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,48,4),(22,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,49,4),(23,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,50,4),(24,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,51,4),(25,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,52,4),(26,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,54,4),(27,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,54,4),(28,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,58,4),(29,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,40,4),(30,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,61,4),(31,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',315,43,4),(32,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,64,5),(33,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,74,5),(34,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,65,5),(35,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,66,5),(36,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,67,5),(37,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,68,5),(38,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,94,7),(39,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,93,7),(40,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,93,7),(41,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,105,7),(42,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,91,7),(43,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',315,21,3),(44,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',315,234,15),(45,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',306,113,8),(46,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar ',315,115,8),(47,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',306,147,10),(48,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',311,149,10),(49,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',315,228,15),(50,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',315,165,12),(51,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,171,12),(52,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,172,12),(53,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,183,12),(54,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,187,13),(55,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,184,13),(56,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,196,13),(57,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,202,13),(58,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',306,200,13),(59,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',315,83,6),(60,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',306,213,14),(61,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,212,14),(62,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',306,222,14),(63,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,224,14),(64,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,226,14),(65,'Plan Municipal de Gestion de Riesgos','Proyecto Mititigar',315,294,18),(66,'Plan Municipal de Gestion de Riesgos','Proyecto Mititigar',315,287,17),(67,'Plan Municipal de Gestion de Riesgos','Proyecto Mititigar',315,89,6),(68,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,253,16),(69,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,260,16),(70,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,262,16),(71,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,264,16),(72,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,271,16),(73,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,272,16),(74,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,251,16),(75,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,278,16),(76,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',315,225,14),(77,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',307,40,4),(78,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',315,36,3),(79,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',315,94,7),(80,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,284,17),(81,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',306,279,17),(82,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigat',315,73,5),(83,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',311,1,10),(84,'Plan Municipal de Gestion de Riesgos','Proyecto PMDN',315,18,18),(85,'Plan Municipal de Gestion de Riesgos','Proyecto Mitigar',315,1,18);
/*!40000 ALTER TABLE `planificacionmunicipal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:35:21
