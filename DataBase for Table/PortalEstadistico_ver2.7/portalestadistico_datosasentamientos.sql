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
-- Table structure for table `datosasentamientos`
--

DROP TABLE IF EXISTS `datosasentamientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datosasentamientos` (
  `ID_asentamientos` int NOT NULL AUTO_INCREMENT,
  `Codigo` text,
  `ID_Region` int NOT NULL,
  `ID_Pais` int NOT NULL,
  `ID_Departamento` int NOT NULL,
  `ID_Municipio` int NOT NULL,
  `ID_Asentamiento` int NOT NULL,
  `Rango_Poblacion` text NOT NULL,
  `Cantidad_de_familias` double NOT NULL,
  `Cantidad_de_personas` double DEFAULT NULL,
  `servicio` int DEFAULT NULL,
  `tipocalle` text,
  `jardin_infantil` text,
  `escuela_primaria` text,
  `escuela_secundaria` text,
  `hospita_centr_salud` text,
  `oficinas_municipales` text,
  `poligono` longtext,
  PRIMARY KEY (`ID_asentamientos`),
  KEY `ID_Municipio` (`ID_Municipio`),
  KEY `ID_Pais` (`ID_Pais`),
  KEY `asentamientos_ibfk_3` (`ID_Departamento`),
  KEY `asentamientos_ibfk_6` (`ID_Region`),
  KEY `datosasentamientos_ibfk_7_idx` (`ID_Asentamiento`),
  CONSTRAINT `datosasentamientos_ibfk_2` FOREIGN KEY (`ID_Municipio`) REFERENCES `municipios` (`ID_Municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datosasentamientos_ibfk_3` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamentos` (`ID_Depto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datosasentamientos_ibfk_4` FOREIGN KEY (`ID_Pais`) REFERENCES `paises` (`ID_pais`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datosasentamientos_ibfk_6` FOREIGN KEY (`ID_Region`) REFERENCES `regiones` (`ID_Regiones`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `datosasentamientos_ibfk_7` FOREIGN KEY (`ID_Asentamiento`) REFERENCES `asentamientos` (`ID_Asentamiento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosasentamientos`
--

LOCK TABLES `datosasentamientos` WRITE;
/*!40000 ALTER TABLE `datosasentamientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `datosasentamientos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:35:31
