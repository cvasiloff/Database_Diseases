-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Linux (x86_64)
--
-- Host: ember-db    Database: cvasiloff5771_dbProject
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

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
-- Table structure for table `COUNTRY`
--

DROP TABLE IF EXISTS `COUNTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COUNTRY` (
  `COUNTRY_ID` bigint(100) NOT NULL AUTO_INCREMENT,
  `COUNTRY_CODE` varchar(3) NOT NULL,
  `DISEASE_NAME` varchar(20) NOT NULL,
  `GOV_FUNDS` int(9) NOT NULL,
  `POPULATION_SIZE` int(9) NOT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  KEY `COUNTRY_CODE` (`COUNTRY_CODE`),
  CONSTRAINT `COUNTRY_ibfk_1` FOREIGN KEY (`COUNTRY_CODE`) REFERENCES `SOUTH_AMERICA` (`COUNTRY_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COUNTRY`
--

LOCK TABLES `COUNTRY` WRITE;
/*!40000 ALTER TABLE `COUNTRY` DISABLE KEYS */;
INSERT INTO `COUNTRY` VALUES (5,'ARG','Hepatitis A',7,45101781),(8,'ARG','Hepatitis B',7,45101781),(11,'ARG','Malaria',7,45101781),(14,'ARG','Rabies',7,45101781),(17,'ARG','Yellow Fever',7,45101781),(20,'ARG','Zika',7,45101781),(23,'ARG','Typhoid',7,45101781),(26,'BOL','Hepatitis A',6,11379861),(29,'BOL','Hepatitis B',6,11379861),(32,'BOL','Typhoid',6,11379861),(35,'BOL','Malaria',6,11379861),(38,'BOL','Rabies',6,11379861),(41,'BOL','Yellow Fever',6,11379861),(44,'BRA','Hepatitis A',9,212392717),(47,'BRA','Hepatitis B',9,212392717),(50,'BRA','Typhoid',9,212392717),(53,'BRA','Malaria',9,212392717),(56,'BRA','Rabies',9,212392717),(59,'BRA','Yellow Fever',9,212392717),(62,'BRA','Zika',9,212392717),(65,'CHL','Hepatitis A',6,18050000),(68,'CHL','Hepatitis B',6,18050000),(71,'CHL','Typhoid',6,18050000),(74,'CHL','Malaria',6,18050000),(77,'CHL','Rabies',6,18050000),(80,'CHL','Yellow Fever',6,18050000),(83,'CHL','Heart Disease',6,18050000),(86,'COL','Hepatitis A',6,49849818),(89,'COL','Hepatitis B',6,49849818),(92,'COL','Typhoid',6,49849818),(95,'COL','Malaria',6,49849818),(98,'COL','Rabies',6,49849818),(101,'COL','Yellow Fever',6,49849818),(104,'COL','Zika',6,49849818),(107,'ECU','Hepatitis A',9,17100444),(110,'ECU','Hepatitis B',9,17100444),(113,'ECU','Typhoid',9,17100444),(116,'ECU','Malaria',9,17100444),(119,'ECU','Rabies',9,17100444),(122,'ECU','Yellow Fever',9,17100444),(125,'ECU','Tuberculosis',9,17100444),(128,'GUY','Hepatitis A',4,786508),(131,'GUY','Hepatitis B',4,786508),(134,'GUY','Typhoid',4,786508),(137,'GUY','Malaria',4,786508),(140,'GUY','Rabies',4,786508),(143,'GUY','Yellow Fever',4,786508),(146,'GUY','Heart Disease',4,786508),(149,'GUY','Respiratory Infectio',4,786508),(152,'PER','Hepatitis A',5,32933835),(155,'PER','Hepatitis B',5,32933835),(158,'PER','Typhoid',5,32933835),(161,'PER','Malaria',5,32933835),(164,'PER','Rabies',5,32933835),(167,'PER','Yellow Fever',5,32933835),(170,'PER','Zika',5,32933835),(173,'PRY','Hepatitis A',8,6981981),(176,'PRY','Hepatitis B',8,6981981),(179,'PRY','Typhoid',8,6981981),(182,'PRY','Malaria',8,6981981),(185,'PRY','Rabies',8,6981981),(188,'PRY','Yellow Fever',8,6981981),(191,'PRY','Zika',8,6981981),(194,'SUR','Hepatitis A',7,573085),(197,'SUR','Hepatitis B',7,573085),(200,'SUR','Typhoid',7,573085),(203,'SUR','Malaria',7,573085),(206,'SUR','Rabies',7,573085),(209,'SUR','Yellow Fever',7,573085),(212,'SUR','Zika',7,573085),(215,'URY','Hepatitis A',9,3482156),(218,'URY','Hepatitis B',9,3482156),(221,'URY','Typhoid',9,3482156),(224,'URY','Malaria',9,3482156),(227,'URY','Rabies',9,3482156),(230,'URY','Yellow Fever',9,3482156),(233,'URY','Respiratory Infectio',9,3482156),(236,'URY','Heart Disease',9,3482156),(239,'VEN','Hepatitis A',3,32779868),(242,'VEN','Hepatitis B',3,32779868),(245,'VEN','Typhoid',3,32779868),(248,'VEN','Malaria',3,32779868),(251,'VEN','Rabies',3,32779868),(254,'VEN','Yellow Fever',3,32779868),(257,'VEN','Zika',3,32779868);
/*!40000 ALTER TABLE `COUNTRY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DISEASE`
--

DROP TABLE IF EXISTS `DISEASE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DISEASE` (
  `DISEASE_ID` bigint(100) NOT NULL AUTO_INCREMENT,
  `DISEASE_NAME` varchar(20) NOT NULL,
  `SYMPTOM_ID` bigint(100) DEFAULT NULL,
  `VACCINE` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`DISEASE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=528 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DISEASE`
--

LOCK TABLES `DISEASE` WRITE;
/*!40000 ALTER TABLE `DISEASE` DISABLE KEYS */;
INSERT INTO `DISEASE` VALUES (5,'Hepatitis A',5,'Y'),(8,'Hepatitis A',8,'Y'),(11,'Hepatitis A',11,'Y'),(14,'Hepatitis A',26,'Y'),(17,'Hepatitis A',14,'Y'),(20,'Hepatitis A',17,'Y'),(23,'Hepatitis A',29,'Y'),(26,'Hepatitis A',23,'Y'),(29,'Hepatitis A',98,'Y'),(32,'Hepatitis A',32,'Y'),(35,'Hepatitis B',26,'Y'),(38,'Hepatitis B',29,'Y'),(41,'Hepatitis B',17,'Y'),(44,'Hepatitis B',23,'Y'),(47,'Hepatitis B',8,'Y'),(50,'Hepatitis B',11,'Y'),(53,'Hepatitis B',5,'Y'),(56,'Hepatitis B',32,'Y'),(59,'Typhoid',26,'Y'),(62,'Typhoid',164,'Y'),(65,'Typhoid',5,'Y'),(68,'Typhoid',17,'Y'),(71,'Typhoid',38,'Y'),(74,'Typhoid',14,'Y'),(77,'Typhoid',44,'Y'),(80,'Typhoid',152,'Y'),(83,'Typhoid',98,'Y'),(86,'Malaria',38,'Y'),(89,'Malaria',17,'Y'),(92,'Malaria',41,'Y'),(95,'Malaria',44,'Y'),(98,'Malaria',8,'Y'),(101,'Malaria',11,'Y'),(104,'Malaria',26,'Y'),(107,'Malaria',35,'Y'),(110,'Malaria',101,'Y'),(113,'Rabies',50,'Y'),(116,'Rabies',53,'Y'),(119,'Rabies',56,'Y'),(122,'Rabies',59,'Y'),(125,'Rabies',62,'Y'),(128,'Rabies',65,'Y'),(131,'Rabies',17,'Y'),(134,'Rabies',68,'Y'),(137,'Rabies',71,'Y'),(140,'Yellow Fever',17,'Y'),(143,'Yellow Fever',44,'Y'),(146,'Yellow Fever',161,'Y'),(149,'Yellow Fever',164,'Y'),(152,'Yellow Fever',8,'Y'),(155,'Yellow Fever',11,'Y'),(158,'Yellow Fever',14,'Y'),(161,'Yellow Fever',74,'Y'),(164,'Yellow Fever',32,'Y'),(167,'Heart Disease',80,'Y'),(170,'Heart Disease',83,'Y'),(173,'Heart Disease',86,'Y'),(176,'Heart Disease',5,'Y'),(179,'Tuberculosis',92,'Y'),(182,'Tuberculosis',95,'Y'),(185,'Tuberculosis',98,'Y'),(188,'Tuberculosis',5,'Y'),(191,'Tuberculosis',17,'Y'),(194,'Tuberculosis',101,'Y'),(197,'Tuberculosis',38,'Y'),(200,'Tuberculosis',110,'Y'),(203,'Tuberculosis',83,'Y'),(206,'Tuberculosis',14,'Y'),(209,'HIV',26,'N'),(212,'HIV',119,'N'),(215,'HIV',47,'N'),(218,'HIV',5,'N'),(221,'HIV',17,'N'),(224,'HIV',14,'N'),(227,'HIV',101,'N'),(230,'HIV',11,'N'),(233,'HIV',41,'N'),(236,'HIV',8,'N'),(239,'HIV',116,'N'),(242,'HIV',107,'N'),(245,'HIV',152,'N'),(248,'HIV',110,'N'),(251,'AIDS',26,'N'),(254,'AIDS',119,'N'),(257,'AIDS',47,'N'),(260,'AIDS',5,'N'),(263,'AIDS',17,'N'),(266,'AIDS',14,'N'),(269,'AIDS',101,'N'),(272,'AIDS',11,'N'),(275,'AIDS',41,'N'),(278,'AIDS',8,'N'),(281,'AIDS',116,'N'),(284,'AIDS',107,'N'),(287,'AIDS',152,'N'),(290,'AIDS',110,'N'),(293,'Respiratory Infectio',125,'Y'),(296,'Respiratory Infectio',128,'Y'),(299,'Respiratory Infectio',131,'Y'),(302,'Respiratory Infectio',134,'Y'),(305,'Respiratory Infectio',119,'Y'),(308,'Respiratory Infectio',140,'Y'),(311,'Respiratory Infectio',110,'Y'),(314,'Lung Cancer',92,'N'),(317,'Lung Cancer',80,'N'),(320,'Lung Cancer',140,'N'),(323,'Lung Cancer',98,'N'),(326,'Lung Cancer',14,'N'),(329,'Lung Cancer',83,'N'),(332,'Lung Cancer',110,'N'),(335,'Lung Cancer',5,'N'),(338,'Throat Cancer',140,'N'),(341,'Throat Cancer',119,'N'),(344,'Throat Cancer',158,'N'),(347,'Throat Cancer',134,'N'),(350,'Throat Cancer',110,'N'),(353,'Throat Cancer',98,'N'),(356,'Liver Cancer',98,'N'),(359,'Liver Cancer',26,'N'),(362,'Liver Cancer',8,'N'),(365,'Liver Cancer',11,'N'),(368,'Liver Cancer',5,'N'),(371,'Liver Cancer',32,'N'),(374,'Liver Cancer',143,'N'),(377,'Influenza',17,'Y'),(380,'Influenza',134,'Y'),(383,'Influenza',128,'Y'),(386,'Influenza',5,'Y'),(389,'Influenza',44,'Y'),(392,'Influenza',134,'Y'),(395,'Influenza',83,'Y'),(398,'Influenza',164,'Y'),(401,'Influenza',110,'Y'),(404,'Influenza',146,'Y'),(407,'Influenza',8,'Y'),(410,'Ebola',17,'N'),(413,'Ebola',44,'N'),(416,'Ebola',164,'N'),(419,'Ebola',5,'N'),(422,'Ebola',35,'N'),(425,'Ebola',11,'N'),(428,'Ebola',26,'N'),(431,'Ebola',92,'N'),(434,'Ebola',146,'N'),(437,'Ebola',152,'N'),(440,'Ebola',74,'N'),(443,'Cholera',26,'Y'),(446,'Cholera',11,'Y'),(449,'Cholera',146,'Y'),(452,'Smallpox',164,'Y'),(455,'Smallpox',152,'Y'),(458,'Smallpox',158,'Y'),(461,'Smallpox',155,'Y'),(464,'Smallpox',5,'Y'),(467,'Smallpox',17,'Y'),(470,'Smallpox',11,'Y'),(473,'Zika',23,'N'),(476,'Zika',5,'N'),(479,'Zika',17,'N'),(482,'Zika',41,'N'),(485,'Zika',74,'N'),(488,'Zika',44,'N'),(491,'Lyme Disease',164,'N'),(494,'Lyme Disease',23,'N'),(497,'Lyme Disease',5,'N'),(500,'Lyme Disease',41,'N'),(503,'Lyme Disease',44,'N'),(506,'Lyme Disease',152,'N'),(509,'Swine Flu',17,'Y'),(512,'Swine Flu',38,'Y'),(515,'Swine Flu',134,'Y'),(518,'Swine Flu',128,'Y'),(521,'Swine Flu',164,'Y'),(524,'Swine Flu',44,'Y'),(527,'Swine Flu',74,'Y');
/*!40000 ALTER TABLE `DISEASE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SOUTH_AMERICA`
--

DROP TABLE IF EXISTS `SOUTH_AMERICA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SOUTH_AMERICA` (
  `COUNTRY_NAME` varchar(20) NOT NULL,
  `COUNTRY_CODE` varchar(3) NOT NULL,
  `TOURISIM_RATE` int(9) NOT NULL,
  PRIMARY KEY (`COUNTRY_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SOUTH_AMERICA`
--

LOCK TABLES `SOUTH_AMERICA` WRITE;
/*!40000 ALTER TABLE `SOUTH_AMERICA` DISABLE KEYS */;
INSERT INTO `SOUTH_AMERICA` VALUES ('Argentina','ARG',6720000),('Bolivia','BOL',1134000),('Brazil','BRA',6589000),('Chile','CHL',18050000),('Columbia','COL',4113000),('Ecuador','ECU',1608000),('Guyana','GUY',247000),('Peru','PER',4032000),('Paraguay','PRY',1584000),('Suriname','SUR',278000),('Uruguay','URY',3647000),('Venezuela','VEN',427000);
/*!40000 ALTER TABLE `SOUTH_AMERICA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYMPTOMS`
--

DROP TABLE IF EXISTS `SYMPTOMS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYMPTOMS` (
  `SYMPTOM_ID` bigint(100) NOT NULL AUTO_INCREMENT,
  `SYMPTOM_NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`SYMPTOM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYMPTOMS`
--

LOCK TABLES `SYMPTOMS` WRITE;
/*!40000 ALTER TABLE `SYMPTOMS` DISABLE KEYS */;
INSERT INTO `SYMPTOMS` VALUES (5,'Fatigue'),(8,'Nausea'),(11,'Vomiting'),(14,'Loss of appetite'),(17,'Fever'),(20,'Itchiness'),(23,'Joint Pain'),(26,'Abdominal Pain'),(29,'Dark Urine'),(32,'Yellow Skin'),(35,'Diarrhea'),(38,'Shivering'),(41,'Sweating'),(44,'Headaches'),(47,'Dry Cough'),(50,'Irritability'),(53,'Aggressiveness'),(56,'Muscle Spasms'),(59,'Seizures'),(62,'Anxiety'),(65,'Excess salivation'),(68,'Dilated Pupils'),(71,'Hallucinations'),(74,'Red Eyes'),(77,'Bleeding'),(80,'Chest Discomfort'),(83,'Shortness of Breath'),(86,'High blood pressure'),(89,'Irregular Heartbeat'),(92,'Coughing up Blood'),(95,'Chest Pain'),(98,'Weight Loss'),(101,'Night Sweats'),(104,'Sores'),(107,'Pneumonia'),(110,'Swollen lymph nodes'),(113,'Ulcers in mouth'),(116,'Ulcers on genitals'),(119,'Difficulty Swallowing'),(122,'Dark Splotches under the skin'),(125,'Nasal Congestion'),(128,'Runny Nose'),(131,'Sneezing'),(134,'Sore Throat'),(137,'Nasal Drip'),(140,'Hoarseness'),(143,'Chalky Stools'),(146,'Dehydration'),(149,'Low Blood Pressure'),(152,'Skin Rash'),(155,'Blistering'),(158,'Small Bumps'),(161,'Sensitivity to Light'),(164,'Body aches');
/*!40000 ALTER TABLE `SYMPTOMS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23 15:58:25
