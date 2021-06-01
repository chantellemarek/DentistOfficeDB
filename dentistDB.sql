-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dentistoffice
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `appointment` (
  `AppointmentID` int(10) NOT NULL AUTO_INCREMENT,
  `PatientID` int(10) DEFAULT NULL,
  `PolicyID` int(10) DEFAULT NULL,
  `Deductible` decimal(6,2) DEFAULT NULL,
  `ServiceID` int(10) DEFAULT NULL,
  `EmployeeID` int(10) DEFAULT NULL,
  `DateOfApp` date DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EstEndTime` time DEFAULT NULL,
  PRIMARY KEY (`AppointmentID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,5,24.00,5,1,'2020-10-01','10:00:00','12:00:00'),(2,1,3,50.00,4,1,'2020-09-28','09:30:00','10:15:00'),(3,6,3,72.00,2,5,NULL,NULL,NULL),(4,4,1,41.00,4,5,NULL,NULL,NULL),(5,3,3,55.00,6,3,NULL,NULL,NULL),(6,3,5,56.00,6,2,NULL,NULL,NULL),(7,6,3,47.00,2,6,NULL,NULL,NULL),(8,1,5,71.00,6,7,NULL,NULL,NULL),(9,4,3,64.00,5,6,NULL,NULL,NULL),(10,3,4,24.00,4,1,NULL,NULL,NULL),(11,1,5,44.00,1,3,NULL,NULL,NULL),(12,2,2,49.00,4,1,NULL,NULL,NULL),(13,6,4,40.00,4,7,NULL,NULL,NULL),(14,3,3,66.00,5,1,NULL,NULL,NULL),(15,2,2,29.00,4,7,NULL,NULL,NULL),(16,4,3,69.00,1,3,NULL,NULL,NULL),(17,2,3,50.00,6,6,NULL,NULL,NULL),(18,1,4,70.00,5,1,NULL,NULL,NULL),(19,3,5,77.00,5,8,NULL,NULL,NULL),(20,4,2,54.00,5,6,NULL,NULL,NULL),(21,5,3,37.00,6,8,NULL,NULL,NULL),(22,4,5,77.00,3,5,NULL,NULL,NULL),(23,4,1,74.00,5,6,NULL,NULL,NULL),(24,3,2,36.00,2,2,NULL,NULL,NULL),(25,3,5,72.00,2,5,NULL,NULL,NULL),(26,3,2,64.00,7,1,NULL,NULL,NULL),(27,2,1,66.00,1,4,NULL,NULL,NULL),(28,5,2,66.00,2,1,NULL,NULL,NULL),(29,6,5,41.00,5,8,NULL,NULL,NULL),(30,2,1,33.00,3,3,NULL,NULL,NULL),(31,4,5,83.00,5,7,NULL,NULL,NULL),(32,6,1,90.00,4,7,NULL,NULL,NULL),(33,1,3,32.00,2,6,NULL,NULL,NULL),(34,6,2,86.00,5,6,NULL,NULL,NULL),(35,3,2,22.00,2,2,NULL,NULL,NULL),(36,6,3,38.00,1,3,NULL,NULL,NULL),(37,2,3,43.00,4,2,NULL,NULL,NULL),(38,5,1,65.00,5,2,NULL,NULL,NULL),(39,6,3,27.00,2,1,NULL,NULL,NULL),(40,5,2,42.00,5,3,NULL,NULL,NULL),(41,5,4,34.00,7,2,NULL,NULL,NULL),(42,5,4,74.00,7,4,NULL,NULL,NULL),(43,3,4,84.00,5,7,NULL,NULL,NULL),(44,6,1,27.00,7,5,NULL,NULL,NULL),(45,1,4,49.00,6,8,NULL,NULL,NULL),(46,1,5,77.00,4,2,NULL,NULL,NULL),(47,4,1,66.00,1,5,NULL,NULL,NULL),(48,5,4,48.00,7,2,NULL,NULL,NULL),(49,1,2,32.00,6,6,NULL,NULL,NULL),(50,2,4,81.00,3,8,NULL,NULL,NULL);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `EmployeeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FName` varchar(25) DEFAULT NULL,
  `LName` varchar(25) DEFAULT NULL,
  `Title` varchar(15) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Salary` decimal(8,2) DEFAULT NULL,
  `Address` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `Country` varchar(25) DEFAULT NULL,
  `RegionCode` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Joel','De Kay','Dentist','1234567891',65000.00,'8139 Menomonie Drive','Eau Claire','WI','USA','54701'),(2,'Richard','McCavity','Dentist','1987654321',80000.00,'90361 Bunker Hill Center','Eau Claire','WI','USA','54701'),(3,'Matt','Mollar','Dentist','3615370478',54000.00,'22 Forest Hill','Eau Claire','WI','USA','54701'),(4,'Darryl','Yankum','Dentist','6265827571',72000.00,'9 Katie Crossing','Eau Claire','WI','USA','54701'),(5,'Alicia','Browell','Assistant','5613568526',42000.00,'25020 3rd Way','Eau Claire','WI','USA','54701'),(6,'Billy','McGibbon','Assistant','2141047309',38750.00,'6931 Anthes Alley','Eau Claire','WI','USA','54701'),(7,'Montigue','Johan','Assistant','8062768711',52850.00,'516 Bunker Hill Place','Eau Claire','WI','USA','54701'),(8,'Erin','Geard','Assistant','5627082729',62500.00,'29 Oak Valley Pass','Eau Claire','WI','USA','54701');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `insurance` (
  `PolicyID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(15) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `ExpDate` date DEFAULT NULL,
  PRIMARY KEY (`PolicyID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES (1,'BrightBean','8317508998','2020-04-05'),(2,'Cogibox','4626130661','2021-07-01'),(3,'Yodel','5479295176','2020-11-21'),(4,'Realpoint','8796821663','2021-06-05'),(5,'Meezzy','4478204130','2019-01-31');
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patient` (
  `PatientID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Address` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `Country` varchar(25) DEFAULT NULL,
  `RegionCode` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Annabella','Merryman','2000-09-17','6084372351','1624 Errie Parkway','Eau Claire','WI','USA','54701'),(2,'Brook','Staddon','1985-12-16','6084520997','8 Red Cloud Place','Eau Claire','WI','USA','54701'),(3,'Kristofer','Eldershaw','1967-06-04','2621966088','9429 Larry Alley','Eau Claire','WI','USA','54701'),(4,'Derick','Harby','1999-07-24','6087301291','697 Hintze Court','Eau Claire','WI','USA','54701'),(5,'Raymond','Coorington','1984-10-19','4142466677','850 Duke Avenue','Eau Claire','WI','USA','54701'),(6,'Rod','Flanders','2000-01-01','9204300439','744 Evergreen Terrace','Eau Claire','WI','USA','54701');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `policy` (
  `PolicyID` int(10) NOT NULL AUTO_INCREMENT,
  `PatientID` int(10) DEFAULT NULL,
  PRIMARY KEY (`PolicyID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
INSERT INTO `policy` VALUES (1,1),(2,3),(3,5),(4,3),(5,6);
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `service` (
  `ServiceID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SName` varchar(15) DEFAULT NULL,
  `Price` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'X-Ray',100.00),(2,'Crown',700.00),(3,'Install Braces',1000.00),(4,'Adjust Braces',75.00),(5,'Cavity Repair',90.00),(6,'Enamel Selant',45.00),(7,'Cleaning',50.00);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `services` (
  `ServiceID` int(10) NOT NULL AUTO_INCREMENT,
  `PatientID` int(10) DEFAULT NULL,
  PRIMARY KEY (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,2),(2,5),(3,5),(4,3),(5,5),(6,5),(7,2);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dentistoffice'
--
/*!50003 DROP PROCEDURE IF EXISTS `GenData_Appointment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenData_Appointment`()
BEGIN
DECLARE loopCnt INTEGER;
DECLARE vPatientID INTEGER;
DECLARE vPolicyID INTEGER;
DECLARE vDeductible INTEGER;
DECLARE VServiceID INTEGER;
DECLARE vEmployeeID INTEGER;

TRUNCATE appointment;

SET loopCnt = 0;

mainLoop: WHILE loopCnt < 50 DO
	SET loopCnt = loopCnt + 1;

    SET vPatientID = 1 + Floor(Rand() * 6);
    SET vPolicyID = 1 + Floor(Rand() * 5);
    SET vDeductible = Round(20 + (Rand() * 70.00), 2);
    SET vServiceID = 1 + Floor(Rand() * 7);
    SET vEmployeeID = 1 + Floor(Rand() * 8);

INSERT INTO appointment (`PatientID`, `PolicyID`, `Deductible`, `ServiceID`, `EmployeeID`) VALUES (`vPatientID`, `vPolicyID`, `vDeductible`, `VServiceID`, `vEmployeeID`);
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenData_Policy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenData_Policy`()
BEGIN
DECLARE loopCnt INTEGER;
DECLARE vPatientID INTEGER;

TRUNCATE policy;

SET loopCnt = 0;

mainLoop: WHILE loopCnt < 5 DO
	SET loopCnt = loopCnt + 1;
    
    SET vPatientID = 1 + Floor(Rand() * 6);
    
INSERT INTO policy (`PatientID`) VALUES (`vPatientID`);
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GenData_Services` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GenData_Services`()
BEGIN
DECLARE loopCnt INTEGER;
DECLARE vPatientID INTEGER;

TRUNCATE services;

SET loopCnt = 0;

mainLoop: WHILE loopCnt < 7 DO
	SET loopCnt = loopCnt + 1;
    
    SET vPatientID = 1 + Floor(Rand() * 6);
    
INSERT INTO services (`PatientID`) VALUES (`vPatientID`);
END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-01 13:59:14
