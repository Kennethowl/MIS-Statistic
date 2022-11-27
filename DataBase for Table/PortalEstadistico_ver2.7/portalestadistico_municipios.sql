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
-- Table structure for table `municipios`
--

DROP TABLE IF EXISTS `municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipios` (
  `ID_Municipio` int NOT NULL AUTO_INCREMENT,
  `Nombre_Municipio` varchar(100) NOT NULL,
  `ID_Departamentos` int NOT NULL,
  PRIMARY KEY (`ID_Municipio`),
  KEY `ID_Departamentos_idx` (`ID_Departamentos`),
  CONSTRAINT `ID_Departamentos` FOREIGN KEY (`ID_Departamentos`) REFERENCES `departamentos` (`ID_Depto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=299 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipios`
--

LOCK TABLES `municipios` WRITE;
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` VALUES (1,' La Ceiba',1),(2,'Tela ',1),(3,' Jutiapa ',1),(4,' La Masica ',1),(5,' San Francisco ',1),(6,' Arizona ',1),(7,' Esparta ',1),(8,' El Porvenir',1),(9,'Trujillo',2),(10,'Balfate',2),(11,'Iriona',2),(12,'Limón',2),(13,'Sabá',2),(14,'Santa Fe',2),(15,'Santa Rosa de Aguán',2),(16,'Sonaguera',2),(17,'Tocoa',2),(18,'Bonito Oriental',2),(19,'Comayagua',3),(20,' Ajuterique',3),(21,'El Rosario',3),(22,'Esquías',3),(23,'Humuya',3),(24,'La libertad',3),(25,'Lamaní',3),(26,'La Trinidad',3),(27,'Lejamani',3),(28,'Meambar',3),(29,'Minas de Oro',3),(30,'Ojos de Agua',3),(31,'San Jerónimo (Honduras)',3),(32,'San José de Comayagua',3),(33,'San José del Potrero',3),(34,'San Luis',3),(35,'San Sebastián',3),(36,'Siguatepeque',3),(37,'Villa de San Antonio',3),(38,'Las Lajas',3),(39,'Taulabé',3),(40,'Santa Rosa de Copán',4),(41,'Cabañas',4),(42,'Concepción',4),(43,'Copán Ruinas',4),(44,'Corquín',4),(45,'Cucuyagua',4),(46,'Dolores',4),(47,'Dulce Nombre',4),(48,'El Paraíso',4),(49,'Florida',4),(50,'La Jigua',4),(51,'La Unión',4),(52,'Nueva Arcadia',4),(53,'San Agustín',4),(54,'San Antonio',4),(55,'San Jerónimo',4),(56,'San José',4),(57,'San Juan de Opoa',4),(58,'San Nicolás',4),(59,'San Pedro',4),(60,'Santa Rita',4),(61,'Trinidad de Copán',4),(62,'Veracruz',4),(63,'San Pedro Sula',5),(64,'Choloma',5),(65,'Omoa',5),(66,'Pimienta',5),(67,'Potrerillos',5),(68,'Puerto Cortés',5),(69,'San Antonio de Cortés',5),(70,'San Francisco de Yojoa',5),(71,'San Manuel',5),(72,'Santa Cruz de Yojoa',5),(73,'Villanueva',5),(74,'La Lima',5),(75,'Choluteca',6),(76,' Apacilagua',6),(77,'Concepción de María',6),(78,'Duyure',6),(79,'El Corpus',6),(80,'El Triunfo',6),(81,'Marcovia',6),(82,'Morolica',6),(83,'Namasigue',6),(84,'Orocuina',6),(85,'Pespire',6),(86,'San Antonio de Flores',6),(87,'San Isidro',6),(88,'San José',6),(89,'San Marcos de Colón',6),(90,'Santa Ana de Yusguare',6),(91,'Yuscarán',7),(92,'Alauca',7),(93,'Danlí',7),(94,'El Paraíso',7),(95,' Güinope',7),(96,'Jacaleapa',7),(97,'Liure',7),(98,'Morocelí',7),(99,'Oropolí',7),(100,'10) Potrerillos',7),(101,'San Antonio de Flores',7),(102,'San Lucas',7),(103,'San Matías',7),(104,'Soledad',7),(105,'Teupasenti',7),(106,'Texiguat',7),(107,'Vado Ancho',7),(108,'Yauyupe',7),(109,'Trojes',7),(110,'Distrito Central (capital de Honduras)',8),(111,'Alubarén',8),(112,'Cedros',8),(113,'Curarén',8),(114,'El Porvenir',8),(115,'Guaimaca',8),(116,'La Libertad',8),(117,'La Venta',8),(118,'Lepaterique',8),(119,'Maraita',8),(120,'Marale',8),(121,'Nueva Armenia',8),(122,'Ojojona',8),(123,'Orica',8),(124,'Reitoca',8),(125,'Sabanagrande',8),(126,'San Antonio de Oriente',8),(127,'San Buenaventura',8),(128,'San Ignacio',8),(129,'San Juan de Flores',8),(130,'San Miguelito',8),(131,'Santa Ana',8),(132,'Santa Lucía',8),(133,'Talanga',8),(134,'Tatumbla',8),(135,'Valle de Ángeles',8),(136,'Villa de San Francisco',8),(137,'Vallecillo',8),(138,'Puerto Lempira',9),(139,'Brus Laguna',9),(140,'Ahuas',9),(141,'Juan Francisco Bulnes',9),(142,'Ramón Villeda Morales',9),(143,'Wampusirpe',9),(144,'La Esperanza',10),(145,'Camasca',10),(146,'Colomoncagua',10),(147,'Concepción',10),(148,'Dolores',10),(149,'Intibucá',10),(150,'Jesús de Otoro',10),(151,'Magdalena',10),(152,'Masaguara',10),(153,'San Antonio',10),(154,'San Isidro',10),(155,'San Juan',10),(156,'San Marcos de la Sierra',10),(157,'San Miguel Guancapla',10),(158,'Santa Lucía',10),(159,'Yamaranguila',10),(160,'San Francisco de Opalaca',10),(161,'Roatán',11),(162,'Guanaja',11),(163,'José Santos Guardiola',11),(164,'Utila',11),(165,'La Paz',12),(166,'Aguanqueterique',12),(167,'Cabañas',12),(168,'Cane',12),(169,'Chinacla',12),(170,'Guajiquiro',12),(171,'Lauterique',12),(172,'Marcala',12),(173,'Mercedes de Oriente',12),(174,'Opatoro',12),(175,'San Antonio del Norte',12),(176,'San José',12),(177,'San Juan',12),(178,'San Pedro de Tutule',12),(179,'Santa Ana',12),(180,'Santa Elena',12),(181,'Santa María',12),(182,'Santiago de Puringla',12),(183,'Yarula',12),(184,'Gracias',13),(185,'Belén',13),(186,'Candelaria',13),(187,'Cololaca',13),(188,'Erandique',13),(189,'Gualcince',13),(190,'Guarita',13),(191,'La Campa',13),(192,'La Iguala',13),(193,'Las Flores',13),(194,'La Unión',13),(195,'La Virtud',13),(196,'Lepaera',13),(197,'Mapulaca',13),(198,'Piraera',13),(199,'San Andrés',13),(200,'San Francisco',13),(201,'San Juan Guarita',13),(202,'San Manuel Colohete',13),(203,'San Rafael',13),(204,'San Sebastián',13),(205,'Santa Cruz',13),(206,'Talgua',13),(207,'Tambla',13),(208,'Tomalá',13),(209,'Valladolid',13),(210,'Virginia',13),(211,'San Marcos de Caiquín',13),(212,'Ocotepeque',14),(213,'Belén Gualcho',14),(214,'Concepción',14),(215,'Dolores Merendón',14),(216,'Fraternidad',14),(217,' La Encarnación',14),(218,'La Labor',14),(219,'Lucerna',14),(220,'Mercedes',14),(221,'San Fernando',14),(222,'San Francisco del Valle',14),(223,'San Jorge',14),(224,'San Marcos',14),(225,'Santa Fe',14),(226,'Sensenti',14),(227,'Sinuapa',14),(228,'Juticalpa',15),(229,'Campamento',15),(230,'Catacamas',15),(231,'Concordia',15),(232,'Dulce Nombre de Culmí',15),(233,'El Rosario',15),(234,'Esquipulas del Norte',15),(235,'Gualaco',15),(236,'Guarizama',15),(237,'Guata',15),(238,'Guayape',15),(239,'Jano',15),(240,'La Unión',15),(241,'Mangulile',15),(242,'Manto',15),(243,'Salamá',15),(244,'San Esteban',15),(245,'San Francisco de Becerra',15),(246,'San Francisco de la Paz',15),(247,'Santa María del Real',15),(248,'Silca',15),(249,'Yocón',15),(250,'Patuca',15),(251,'Santa Bárbara',16),(252,'Arada',16),(253,'Atima',16),(254,'Azacualpa',16),(255,'Ceguaca',16),(256,'Concepción del Norte',16),(257,'Concepción del Sur',16),(258,'Chinda',16),(259,'El Níspero',16),(260,'Gualala',16),(261,'Ilama',16),(262,'Las Vegas',16),(263,'Macuelizo',16),(264,'Naranjito',16),(265,'Nuevo Celilac',16),(266,'Nueva Frontera',16),(267,'Petoa',16),(268,'Protección',16),(269,'Quimistán',16),(270,'San Francisco de Ojuera',16),(271,'San José de las Colinas',16),(272,'San Luis',16),(273,'San Marcos',16),(274,'San Nicolás',16),(275,'San Pedro Zacapa',16),(276,'San Vicente Centenario',16),(277,'Santa Rita',16),(278,'Trinidad',16),(279,'Nacaome',17),(280,'Alianza',17),(281,'Amapala',17),(282,'Aramecina',17),(283,'Caridad',17),(284,'Goascoran',17),(285,'Langue',17),(286,'San Fransisco de Coray',17),(287,'San Lorenzo',17),(288,'Yoro',18),(289,'Arenal',18),(290,'El Negrito',18),(291,'El Progreso',18),(292,'Jocón',18),(293,'Morazán',18),(294,'Olanchito',18),(295,'Santa Rita',18),(296,'Sulaco',18),(297,'Victoria',18),(298,'Yorito',18);
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:35:33
