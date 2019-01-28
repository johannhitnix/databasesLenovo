-- MySQL dump 10.13  Distrib 5.5.31, for Win64 (x86)
--
-- Host: localhost    Database: blog
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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Desarrollo web','Categoria de desarrollo web'),(2,'Desarrollo Movil','Categoria de desarrollo Movil en Android'),(3,'Retomar aprendizaje','no olvidar lo aprendido');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `status` varchar(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_entries_users` (`user_id`),
  KEY `fk_entries_categories` (`category_id`),
  CONSTRAINT `fk_entries_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_entries_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,1,1,'entrada de desarrollo con php','entrada de desarrollo con php entrada de desarrollo con php','public',NULL),(2,2,2,'entrada de android','entrada de android bla bla bla','public',NULL),(3,1,1,'desarrollo de webapps','desarrollo bla bla bla','public',NULL),(4,1,1,'desarrollo de apis rest','apis rest bla bla ble','public',NULL),(5,1,3,'V de victoria','bla bla bla bla bla bla bla bla bla','public','1544622725.jpeg'),(6,1,2,'entrada con tags','lulululu lululu lululul ulululul','public','1544633035.png'),(7,1,2,'entrada con tags','lulululu lululu lululul ulululul','public','1544633064.png'),(8,1,1,'post con espacion','lalala a lalalal aalla aalalala','public','1544633777.jpeg'),(9,1,2,'probando trim','eehohoe hell hell hee heee helou','public','1544634547.jpeg'),(10,1,2,'prueba 2 trim','eehohoe hell hell hee heee helou','public','1544634696.png'),(11,1,2,'prueba 3 trim','eehohoe hell hell hee heee helou','public','1544634782.jpeg'),(12,1,2,'otra prueba del trim','pwoeiiwe qwep qwer piuoi nm,.kke','public','1544634853.jpeg');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_tag`
--

DROP TABLE IF EXISTS `entry_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_tag` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `entry_id` int(255) NOT NULL,
  `tag_id` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_entry_tag_entries` (`entry_id`),
  KEY `fk_entry_tag_tags` (`tag_id`),
  CONSTRAINT `fk_entry_tag_entries` FOREIGN KEY (`entry_id`) REFERENCES `entries` (`id`),
  CONSTRAINT `fk_entry_tag_tags` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_tag`
--

LOCK TABLES `entry_tag` WRITE;
/*!40000 ALTER TABLE `entry_tag` DISABLE KEYS */;
INSERT INTO `entry_tag` VALUES (1,1,2),(2,1,1),(3,2,1),(4,2,3),(5,3,2),(6,1,4),(7,6,1),(8,6,2),(9,6,3),(10,8,1),(11,8,10),(12,8,11),(13,9,5),(14,9,11),(15,9,12),(16,9,13),(17,10,5),(18,10,11),(19,10,12),(20,10,13),(21,11,1),(22,12,3);
/*!40000 ALTER TABLE `entry_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'php','php tag'),(2,'symfony','symfony tag'),(3,'html','html tag'),(4,'zend','zend tag'),(5,'java script','tag de java script'),(7,'fundamentos java','tag java'),(9,'mysql','motor base de datos'),(10,' symfony',' symfony'),(11,' html',' html'),(12,' zend',' zend'),(13,' php',' php'),(14,'mysql','mysql'),(16,'vue js','vue js');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `role` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ROLE_ADMIN','camilo','colmenares','camilo@cool.com','$2a$04$p4synQlkcc3O0Xj1z35Dkevtqqqhc50voS4mxKFcDoAe/1zLfllWO',NULL),(2,'ROLE_USER','victor','enseñaphp','victor@php.com','$2a$04$UNfoKtdSUhfoN3kQ4lHdm.J0l1xzhnT6rafpOA8dCzkv.BiLy/rwO',NULL),(6,'ROLE_USER','El Viejo','Brayan','el@brayan.com','$2y$04$sWc/3TTzJfVhTnWNn7/qRu.F7q/XRwXyDfWc9IbpsfxlpivBCUoeW',NULL),(7,'ROLE_USER','chica','desarrolladora','chica@chica.com','$2y$04$J46j8QAC/cQIt/1xBJqBAOfU.F4WDmzVPaFRjwaUFwgt2szupBOEi',NULL),(8,'ROLE_USER','El Viejo','edwin','edwin@edwin.com','$2y$04$EO2Ykj5kqcEN5S..wlVsHeTcEM/3gUPzanVKVhnLeC8cDUArTi39a',NULL),(9,'ROLE_USER','yoko','ono','yoko@ono.com','$2y$04$PgYpCkGeN.WF/HID8QbR1enm1uimoRII8zoCZQYF1yTO39K9DZRsy',NULL),(10,'ROLE_USER','simon','belmont','simon@belmont.com','$2y$04$1n3hqqDzth4k2en7ew91ieqW2uebBhzUTJC1RRLVD3JUKIoj0k8E2',NULL),(11,'ROLE_USER','esteban','dido','esteban@dido.com','$2y$04$xANbopOq1aDSSL0lpCkXn.Hh4inRE0kTl9Os0PHJJ/QXbgFfQjB.G',NULL),(12,'ROLE_USER','El Viejo','ono','viejo@ono.com','$2y$04$Yw7XgquC0FPEIq9ie7Kyu.4fET3rNoc3O9GT2prObQ6rKsNmv5qh2',NULL),(13,'ROLE_USER','maye','rly','maye@rly.com','$2y$04$j4O91QN14XLfj28x5MNUa.afnYhbbpZDZEEoC9NUnfOxYpV8DfPkK',NULL),(14,'ROLE_USER','tati','ana','tati@ana.com','$2y$04$Osq99upwCpXw3eCUd3kaiu2czCSJ2GpZkOk4zRAkOXynbouylqzMq',NULL),(15,'ROLE_USER','El Viejo','hernandez','viejo@hernandez.com','$2y$04$ahSvBoyGwFwUETZNsHI7vumdqAzEx9d6DxqLAVY06WxCL0smwFJ2a',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-28  9:54:40
