-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: patient
-- ------------------------------------------------------
-- Server version	5.7.9-log

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
-- Table structure for table `patient_event`
--

DROP TABLE IF EXISTS `patient_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_event` (
  `event_date` date NOT NULL,
  `patient_UPI` char(6) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `event_desc` varchar(255) NOT NULL,
  `patient_type` varchar(20) NOT NULL,
  PRIMARY KEY (`patient_UPI`,`doctor_id`,`event_date`),
  KEY `doctor_serves_event` (`doctor_id`),
  CONSTRAINT `doctor_serves_event` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `patient_has_event` FOREIGN KEY (`patient_UPI`) REFERENCES `patient` (`patient_UPI`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_event`
--

LOCK TABLES `patient_event` WRITE;
/*!40000 ALTER TABLE `patient_event` DISABLE KEYS */;
INSERT INTO `patient_event` VALUES ('0000-00-00','089b1a',116078,'Routine Check UP','In-Patient'),('0000-00-00','089b1a',116079,'Routine Follow Up','In-Patient'),('2001-11-02','089b1a',116079,'Routine Check UP','Out-Patient'),('2001-11-12','089b1a',116079,'Routine Check UP','Out-Patient'),('2010-12-15','6fdb24',116078,'Routine Follow Up','Out-Patient'),('0000-00-00','6fdb24',116079,'Routine Follow Up','In-Patient');
/*!40000 ALTER TABLE `patient_event` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-20 22:08:59
