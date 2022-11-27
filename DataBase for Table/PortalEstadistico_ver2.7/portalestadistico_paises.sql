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
-- Table structure for table `paises`
--

DROP TABLE IF EXISTS `paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paises` (
  `ID_pais` int NOT NULL AUTO_INCREMENT,
  `Nombre_pais` varchar(100) NOT NULL,
  `capital` varchar(100) DEFAULT NULL,
  `continente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paises`
--

LOCK TABLES `paises` WRITE;
/*!40000 ALTER TABLE `paises` DISABLE KEYS */;
INSERT INTO `paises` VALUES (1,'Afganistán','Kabul','Asia'),(2,'Albania','Tirana','Europa'),(3,'Alemania','Berlín','Europa'),(4,'Andorra','Andorra la Vieja','Europa'),(5,'Angola','Luanda','África'),(6,'Antigua y Barbuda','Saint John','América'),(7,'Arabia Saudita','Riad','Asia'),(8,'Argelia','Argel','África'),(9,'Argentina','Buenos Aires','América'),(10,'Armenia','Ereván','Asia'),(11,'Australia','Canberra','Oceanía'),(12,'Austria','Viena','Europa'),(13,'Azerbaiyán','Bakú','Asia'),(14,'Bahamas','Nasáu','América'),(15,'Bangladés','Daca','Asia'),(16,'Barbados','Bridgetown','América'),(17,'Baréin','Manama','Asia'),(18,'Bélgica','Bruselas','Europa'),(19,'Belice','Belmopán','América'),(20,'Benín','Porto-Novo','África'),(21,'Bielorrusia','Minsk','Europa'),(22,'Birmania','Naipyidó','Asia'),(23,'Bolivia','Sucre','América'),(24,'Bosnia-Herzegovina','Sarajevo','Europa'),(25,'Botsuana','Gaborone','África'),(26,'Brasil','Brasilia','América'),(27,'Brunéi','Bandar Seri Begawan','Asia'),(28,'Bulgaria','Sofía','Europa'),(29,'Burkina Faso','Uagadugú','África'),(30,'Burundi','Buyumbura','África'),(31,'Bután','Thimphu','Asia'),(32,'Cabo Verde','Praia','África'),(33,'Camboya','Nom Pen','Asia'),(34,'Camerún','Yaundé','África'),(35,'Canadá','Ottawa','América'),(36,'Catar','Doha','Asia'),(37,'Chad','Yamena','África'),(38,'Chile','Santiago','América'),(39,'China','Pekín','Asia'),(40,'Chipre','Nicosia','Europa'),(41,'Colombia','Bogotá','América'),(42,'Comoras','Moroni','África'),(43,'Congo','Brazzaville','África'),(44,'Corea del Norte','Pionyang','Asia'),(45,'Corea del Sur','Seúl','Asia'),(46,'Costa de Marfil','Yamusukro','África'),(47,'Costa Rica','San José','América'),(48,'Croacia','Zagreb','Europa'),(49,'Cuba','La Habana','América'),(50,'Dinamarca','Copenhague','Europa'),(51,'Dominica','Roseau','América'),(52,'Ecuador','Quito','América'),(53,'Egipto','El Cairo','África'),(54,'El Salvador','San Salvador','América'),(55,'Emiratos Árabes Unidos','Abu Dabi','Asia'),(56,'Eritrea','Asmara','África'),(57,'Eslovaquia','Bratislava','Europa'),(58,'Eslovenia','Liubliana','Europa'),(59,'España','Madrid','Europa'),(60,'Estados Unidos','Washington D. C.','América'),(61,'Estonia','Tallin','Europa'),(62,'Esuatini','Mbabane','África'),(63,'Etiopía','Adís Abeba','África'),(64,'Filipinas','Manila','Asia'),(65,'Finlandia','Helsinki','Europa'),(66,'Fiyi','Suva','Oceanía'),(67,'Francia','París','Europa'),(68,'Gabón','Libreville','África'),(69,'Gambia','Banjul','África'),(70,'Georgia','Tiflis','Asia'),(71,'Ghana','Accra','África'),(72,'Granada','Saint George','América'),(73,'Grecia','Atenas','Europa'),(74,'Guatemala','Guatemala','América'),(75,'Guinea','Conakri','África'),(76,'Guinea Ecuatorial','Malabo','África'),(77,'Guinea-Bisáu','Bisáu','África'),(78,'Guyana','Georgetown','América'),(79,'Haití','Puerto Príncipe','América'),(80,'Honduras','Tegucigalpa','América'),(81,'Hungría','Budapest','Europa'),(82,'India','Nueva Delhi','Asia'),(83,'Indonesia','Yakarta','Asia'),(84,'Irak','Bagdad','Asia'),(85,'Irán','Teherán','Asia'),(86,'Irlanda','Dublín','Europa'),(87,'Islandia','Reikiavik','Europa'),(88,'Islas Marshall','Majuro','Oceanía'),(89,'Islas Salomón','Honiara','Oceanía'),(90,'Israel','Jerusalén','Asia'),(91,'Italia','Roma','Europa'),(92,'Jamaica','Kingston','América'),(93,'Japón','Tokio','Asia'),(94,'Jordania','Amán','Asia'),(95,'Kazajistán','Astaná','Asia'),(96,'Kenia','Nairobi','África'),(97,'Kirguistán','Biskek','Asia'),(98,'Kiribati','Tarawa','Oceanía'),(99,'Kosovo','Pristina','Europa'),(100,'Kuwait','Kuwait City','Asia'),(101,'Laos','Vientián','Asia'),(102,'Lesoto','Maseru','África'),(103,'Letonia','Riga','Europa'),(104,'Líbano','Beirut','Asia'),(105,'Liberia','Monrovia','África'),(106,'Libia','Trípoli','África'),(107,'Liechtenstein','Vaduz','Europa'),(108,'Lituania','Vilna','Europa'),(109,'Luxemburgo','Luxemburgo','Europa'),(110,'Macedonia del Norte','Skopie','Europa'),(111,'Madagascar','Antananarivo','África'),(112,'Malasia','Kuala Lumpur','Asia'),(113,'Malaui','Lilongüe','África'),(114,'Maldivas','Malé','Asia'),(115,'Malí','Bamako','África'),(116,'Malta','La Valeta','Europa'),(117,'Marruecos','Rabat','África'),(118,'Mauricio','Port Louis','África'),(119,'Mauritania','Nuakchot','África'),(120,'México','México','América'),(121,'Micronesia','Palikir','Oceanía'),(122,'Moldavia','Chisináu','Europa'),(123,'Mónaco','Mónaco','Europa'),(124,'Mongolia','Ulán Bator','Asia'),(125,'Montenegro','Podgorica','Europa'),(126,'Mozambique','Maputo','África'),(127,'Namibia','Windhoek','África'),(128,'Nauru','Yaren','Oceanía'),(129,'Nepal','Katmandú','Asia'),(130,'Nicaragua','Managua','América'),(131,'Níger','Niamey','África'),(132,'Nigeria','Abuya','África'),(133,'Noruega','Oslo','Europa'),(134,'Nueva Zelanda','Wellington','Oceanía'),(135,'Omán','Mascate','Asia'),(136,'Países Bajos','Ámsterdam','Europa'),(137,'Pakistán','Islamabad','Asia'),(138,'Palaos','Melekeok','Oceanía'),(139,'Palestina','Jerusalén Este','Asia'),(140,'Panamá','Panamá','América'),(141,'Papúa Nueva Guinea','Puerto Moresby','Oceanía'),(142,'Paraguay','Asunción','América'),(143,'Perú','Lima','América'),(144,'Polonia','Varsovia','Europa'),(145,'Portugal','Lisboa','Europa'),(146,'Reino Unido','Londres','Europa'),(147,'República Centroafricana','Bangui','África'),(148,'República Checa','Praga','Europa'),(149,'República Democrática del Congo','Kinsasa','África'),(150,'República Dominicana','Santo Domingo','América'),(151,'Ruanda','Kigali','África'),(152,'Rumania','Bucarest','Europa'),(153,'Rusia','Moscú','Europa'),(154,'Samoa','Apia','Oceanía'),(155,'San Cristóbal y Nieves','Basseterre','América'),(156,'San Marino','San Marino','Europa'),(157,'San Vicente y las Granadinas','Kingstown','América'),(158,'Santa Lucía','Castries','América'),(159,'Santo Tomé y Príncipe','Santo Tomé','África'),(160,'Senegal','Dakar','África'),(161,'Serbia','Belgrado','Europa'),(163,'Sierra Leona','Freetown','África'),(164,'Singapur','Singapur','Asia'),(165,'Siria','Damasco','Asia'),(166,'Somalia','Mogadiscio','África'),(167,'Sri Lanka','Sri Jayawardenapura Kotte','Asia'),(168,'Sudáfrica','Pretoria','África'),(169,'Sudán','Jartum','África'),(170,'Sudán del Sur','Yuba','África'),(171,'Suecia','Estocolmo','Europa'),(172,'Suiza','Berna','Europa'),(173,'Surinam','Paramaribo','América'),(174,'Tailandia','Bangkok','Asia'),(175,'Taiwán','Taipéi','Asia'),(176,'Tanzania','Dodoma','África'),(177,'Tayikistán','Dusambé','Asia'),(178,'Timor Oriental','Dili','Oceanía'),(179,'Togo','Lomé','África'),(180,'Tonga','Nukualofa','Oceanía'),(181,'Trinidad y Tobago','Puerto España','América'),(182,'Túnez','Túnez','África'),(183,'Turkmenistán','Asjabad','Asia'),(184,'Turquía','Ankara','Asia'),(185,'Tuvalu','Funafuti','Oceanía'),(186,'Ucrania','Kiev','Europa'),(187,'Uganda','Kampala','África'),(188,'Uruguay','Montevideo','América'),(189,'Uzbekistán','Taskent','Asia'),(190,'Vanuatu','Port Vila','Oceanía'),(191,'Vaticano','Vaticano','Europa'),(192,'Venezuela','Caracas','América'),(193,'Vietnam','Hanói','Asia'),(194,'Yemen','Saná','Asia'),(195,'Yibuti','Yibuti','África'),(196,'Zambia','Lusaka','África'),(197,'Zimbabue','Harare','África'),(198,'Canada','Ottawa','America'),(199,'Republica Checa','Praga','Europa'),(200,'Inglaterra','Londres','Europa'),(201,'Irlanda del Norte','Belfast','Europa'),(202,'Escocia','Glasgow','Europa'),(203,'Gales','Cardiff','Europa');
/*!40000 ALTER TABLE `paises` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-26 20:35:17
