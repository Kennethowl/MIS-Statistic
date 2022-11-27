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
-- Table structure for table `censopoblacional`
--

DROP TABLE IF EXISTS `censopoblacional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `censopoblacional` (
  `ID_Censo` int NOT NULL AUTO_INCREMENT,
  `ID_Unidades` int NOT NULL,
  `totalUrbana` double NOT NULL,
  `totalRural` double NOT NULL,
  `totalMujer` double NOT NULL,
  `totalHombre` double NOT NULL,
  `totalHombreUrbana` double NOT NULL,
  `totalMujerUrbana` double NOT NULL,
  `id_grupoSocial` int NOT NULL,
  `ID_Anio` int NOT NULL,
  `ID_Depto` int NOT NULL,
  PRIMARY KEY (`ID_Censo`),
  KEY `ID_Unidades` (`ID_Unidades`),
  KEY `ID_Depto` (`ID_Depto`),
  KEY `ID_Anio` (`ID_Anio`),
  KEY `censopoblacional_ibfk_4_idx` (`id_grupoSocial`),
  CONSTRAINT `censopoblacional_ibfk_1` FOREIGN KEY (`ID_Unidades`) REFERENCES `unidadesmonedas` (`ID_uniMone`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `censopoblacional_ibfk_2` FOREIGN KEY (`ID_Depto`) REFERENCES `departamentos` (`ID_Depto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `censopoblacional_ibfk_3` FOREIGN KEY (`ID_Anio`) REFERENCES `anio` (`ID_Anio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `censopoblacional_ibfk_4` FOREIGN KEY (`id_grupoSocial`) REFERENCES `gruposocial` (`ID_GrupoSocial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `censopoblacional`
--

LOCK TABLES `censopoblacional` WRITE;
/*!40000 ALTER TABLE `censopoblacional` DISABLE KEYS */;
/*!40000 ALTER TABLE `censopoblacional` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:36:02
