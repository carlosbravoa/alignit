-- MySQL dump 10.15  Distrib 10.0.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: alignit
-- ------------------------------------------------------
-- Server version	10.0.19-MariaDB-1~trusty

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
-- Table structure for table `alignment_assets_excellence`
--

DROP TABLE IF EXISTS `alignment_assets_excellence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alignment_assets_excellence` (
  `it_assets_id` int(11) NOT NULL,
  `operational_excellence_dimensions_id` int(11) NOT NULL,
  PRIMARY KEY (`it_assets_id`,`operational_excellence_dimensions_id`),
  KEY `fk_it_assets_has_operational_excellence_dimensions_operatio_idx` (`operational_excellence_dimensions_id`),
  KEY `fk_it_assets_has_operational_excellence_dimensions_it_asset_idx` (`it_assets_id`),
  CONSTRAINT `fk_it_assets_has_operational_excellence_dimensions_it_assets1` FOREIGN KEY (`it_assets_id`) REFERENCES `it_assets` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_it_assets_has_operational_excellence_dimensions_operationa1` FOREIGN KEY (`operational_excellence_dimensions_id`) REFERENCES `operational_excellence_dimensions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alignment_assets_excellence`
--

LOCK TABLES `alignment_assets_excellence` WRITE;
/*!40000 ALTER TABLE `alignment_assets_excellence` DISABLE KEYS */;
INSERT INTO `alignment_assets_excellence` VALUES (25,1),(25,4),(25,9),(26,3),(26,9),(27,1),(27,3),(27,5),(27,7),(27,9),(27,10),(28,3),(28,5),(28,8);
/*!40000 ALTER TABLE `alignment_assets_excellence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alignment_objectives_excellence`
--

DROP TABLE IF EXISTS `alignment_objectives_excellence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alignment_objectives_excellence` (
  `operational_excellence_dimensions_id` int(11) NOT NULL,
  `business_objectives_id` int(11) NOT NULL,
  PRIMARY KEY (`operational_excellence_dimensions_id`,`business_objectives_id`),
  KEY `fk_operational_excellence_dimensions_has_business_objective_idx` (`business_objectives_id`),
  KEY `fk_operational_excellence_dimensions_has_business_objective_idx1` (`operational_excellence_dimensions_id`),
  CONSTRAINT `fk_operational_excellence_dimensions_has_business_objectives_1` FOREIGN KEY (`operational_excellence_dimensions_id`) REFERENCES `operational_excellence_dimensions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_operational_excellence_dimensions_has_business_objectives_2` FOREIGN KEY (`business_objectives_id`) REFERENCES `business_objectives` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alignment_objectives_excellence`
--

LOCK TABLES `alignment_objectives_excellence` WRITE;
/*!40000 ALTER TABLE `alignment_objectives_excellence` DISABLE KEYS */;
INSERT INTO `alignment_objectives_excellence` VALUES (1,57),(2,31),(2,58),(2,59),(2,60),(3,55),(3,59),(3,60),(4,55),(4,57),(4,59),(5,58),(5,59),(5,60),(6,55),(6,59),(7,57),(8,31),(8,55),(8,59),(8,60),(9,58),(10,60);
/*!40000 ALTER TABLE `alignment_objectives_excellence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_objectives`
--

DROP TABLE IF EXISTS `business_objectives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_objectives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_business_objectives_company1_idx` (`company_id`),
  CONSTRAINT `fk_business_objectives_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_objectives`
--

LOCK TABLES `business_objectives` WRITE;
/*!40000 ALTER TABLE `business_objectives` DISABLE KEYS */;
INSERT INTO `business_objectives` VALUES (31,'Test',13),(55,'fsdfs',13),(57,'Test7',13),(58,'Reducir costos',16),(59,'Internacionalización',16),(60,'Nuevos productos',16),(61,'Javier',14),(62,'Javier Rivera',14);
/*!40000 ALTER TABLE `business_objectives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (13,'Test'),(14,'UAI'),(15,'porta4'),(16,'Comercial eDocere ltda.');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `it_assets`
--

DROP TABLE IF EXISTS `it_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `budget` varchar(60) DEFAULT NULL,
  `headcount` varchar(60) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_it_assets_company1_idx` (`company_id`),
  CONSTRAINT `fk_it_assets_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `it_assets`
--

LOCK TABLES `it_assets` WRITE;
/*!40000 ALTER TABLE `it_assets` DISABLE KEYS */;
INSERT INTO `it_assets` VALUES (25,'Email','20000000','50',13),(26,'dgdf','4574','457',13),(27,'Servicio de correo','150000','2',16),(28,'SAP','5000000','15',16);
/*!40000 ALTER TABLE `it_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operational_excellence_dimensions`
--

DROP TABLE IF EXISTS `operational_excellence_dimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operational_excellence_dimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operational_excellence_dimensions`
--

LOCK TABLES `operational_excellence_dimensions` WRITE;
/*!40000 ALTER TABLE `operational_excellence_dimensions` DISABLE KEYS */;
INSERT INTO `operational_excellence_dimensions` VALUES (1,'manage service quality'),(2,'realize scale economies'),(3,'optimize it internal processes'),(4,'standardize platforms and architecture'),(5,'deliver on schedule'),(6,'effectively support end users'),(7,'improve business productivity'),(8,'propose enabling solutions'),(9,'understand emerging technologies'),(10,'understand business units strengths');
/*!40000 ALTER TABLE `operational_excellence_dimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `can_fill_business` int(11) DEFAULT NULL,
  `can_fill_it` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_company_idx` (`company_id`),
  CONSTRAINT `fk_user_company` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (16,'Admin','Admin','Admin','Admin','Admin',1,1,13),(17,'andrea pinto','dgtic','andrea.pinto@uai.cl','Director comercial ','FIC UAI',1,0,14),(18,'fran','francisca','francisca.martinez@porta4.com','marketing','marketing',0,0,14),(19,'paraula','13311331','paula.pastor@porta4.com','Directora de grupo','design',0,0,15),(20,'Constanza','1234567890','constanza.cid@porta4.com','design','design',0,0,15),(21,'Javier Rivera','frc14273120','javier.rivera@uai.cl','manager','marketing',1,1,14),(22,'villalon','pepito.P0','jorge.villalon@uai.cl','CIO','Engineering',1,1,16),(23,'carlos','hola','carlos.bravo@uai.cl','Profesor','FIC',0,0,14);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-01 16:12:57
