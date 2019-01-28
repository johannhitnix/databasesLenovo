-- MySQL dump 10.13  Distrib 5.5.31, for Win64 (x86)
--
-- Host: localhost    Database: cursodb
-- ------------------------------------------------------
-- Server version	5.5.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (4,'ReactJS','Es un curso completo de ReactJS',37000),(5,'NodeJS','Es un curso completo de NodeJS',40000),(6,'VueJS','curso completo de VueJS',45000),(7,'FullStack Developer','Es un curso completo de FullStack Developer',30000),(8,'panaderia','este curso te enseña como hacer varios tipos de pan',500000),(9,'cocina','curso basico de cocina para principiantes',200000),(10,'paracaidismo','lanzate de un avion sin romperte el culo',700000);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Hola','fdasfsa','fdasdf'),(2,'fasdf','fasdfas','fdasfsa'),(3,'Bq AQUARIS','Movil BQ con Android','140'),(57,'PS32','FASDFA','32');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `alternative` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (3,'Rasmus','Lerdorf PHP','Creador de PHP','rasmus@lerdorf.com','contraseña de prueba','',''),(4,'Bruce','Wayne','Soy Batman','bruce@wayne.com','batman','null','null'),(6,'Bruce 2','Wayne','Soy Batman','bruce2@wayne.com','batman','null','null'),(7,'Victor','Robles','fadsdfa','victor@victor2.com','fasdfasfasfd','null','null'),(8,'fdasdfasd','fdasdfa','fasdfas','fasfdas@fas.com','fasdfas','null','null'),(9,'fasdfa','fasdfas','fasdfas','fasdfasdf@dig.com','fadsfas','',''),(13,'fdafsdfas','fasdfasdf','fdasdfa','sfdasdfas@das.com','$2y$06$Y3Vyc29femVuZF9mcmFtZO/g4Ej.3wibRVDC10S09yiHKGvucRWsm','null','null'),(15,'Víctor','Robles','Soy programador web desde hace varios años asfdads','victor@victor.com','$2y$06$Y3Vyc29femVuZF9mcmFtZO7KafSa6NR9m3cB8SXN1aQCBu0Nnnx9a','',''),(16,'gfdsgfsdfgsf','gsdgfsfg','gfsdgfsfg','sfgsd@hoads.com','$2y$06$Y3Vyc29femVuZF9mcmFtZOgiSTxClxPJpJgGj8VNqKbHcsvks9icW','null','null'),(17,'amadeus','fasdfas jostin','fdasfdas','amadeus@gmail.com','$2y$06$Y3Vyc29femVuZF9mcmFtZOmoUwZxSS7o7O4DHzmE7LRYbEIg3Zlje','','');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-28 12:02:33
