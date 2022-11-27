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
-- Table structure for table `microcuencas`
--

DROP TABLE IF EXISTS `microcuencas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `microcuencas` (
  `ID_micro` int NOT NULL AUTO_INCREMENT,
  `nombreMicrocuenca` text NOT NULL,
  `area` varchar(10) NOT NULL,
  `ID_Municipio` int NOT NULL,
  `ID_Depto` int NOT NULL,
  `ID_Region` int NOT NULL,
  PRIMARY KEY (`ID_micro`),
  KEY `ID_Municipio` (`ID_Municipio`),
  KEY `ID_Depto` (`ID_Depto`),
  KEY `microcuencas_region_idx` (`ID_Region`),
  CONSTRAINT `microcuencas_ibfk_1` FOREIGN KEY (`ID_Municipio`) REFERENCES `municipios` (`ID_Municipio`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `microcuencas_ibfk_2` FOREIGN KEY (`ID_Depto`) REFERENCES `departamentos` (`ID_Depto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `microcuencas_region` FOREIGN KEY (`ID_Region`) REFERENCES `regiones` (`ID_Regiones`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microcuencas`
--

LOCK TABLES `microcuencas` WRITE;
/*!40000 ALTER TABLE `microcuencas` DISABLE KEYS */;
INSERT INTO `microcuencas` VALUES (1,'Gumersindo','3,72',179,12,1),(2,'La Montanita','7,91',179,12,1),(3,'Quebrada Choloma','109,37',150,10,1),(4,'Los Hornos','3,72',179,12,1),(5,'La Bandolina','30,95',174,12,1),(6,'Altamira','22,69',170,12,1),(7,'Los Lirios','150,86',22,3,1),(8,'Dona Paz','3,49',179,12,1),(9,'El Izote','17,25',179,12,1),(10,'Palo Verde','43,09',22,3,1),(11,'Quebrada La Majonchera','18,85',118,8,2),(12,'Quebrada Liquidambar','52,00',118,8,2),(13,'Cerro bonito, Montana de Cimartagua','34,47',118,8,2),(14,'El Zapotal','7,22',275,16,3),(15,'Quebrada E l Yate','2,46',57,4,4),(16,'Canaveral','247,41',246,15,5),(17,'Quebrada San Jose de Vallecillo','314,00',230,15,5),(18,'Quebrada Pola Rosales ','33,29',230,15,5),(19,'Los Llanos Rio Largo','9,49',232,15,6),(20,'Bella Vista','20,57',290,18,7),(21,'Colonia San Isidro la 35 Guaymas ','10,42',290,18,7),(22,'La 35 Guaymas ','28,65',290,18,7),(23,'Agua Sarca ','4,53',297,18,7),(24,'El Pimental ','80,70',292,18,7),(25,'El Lagarto','1,34',107,7,8),(26,'El Borbollon','3,14',106,7,8),(27,'Los Jicaros','1,20',79,6,9),(28,'La Manzana','2,40',77,6,9),(29,'El Mangon ','1,44',75,6,9),(30,'El Cacao','12,44',79,6,9),(31,'Las Canas ','7,65',86,6,9),(32,'San Isidro','16,76',87,6,9);
/*!40000 ALTER TABLE `microcuencas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:35:28
