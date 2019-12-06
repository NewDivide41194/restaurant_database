-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: restaurant
-- ------------------------------------------------------
-- Server version	5.7.27-log

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
-- Table structure for table `tbl_employee`
--

DROP TABLE IF EXISTS `tbl_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_employee` (
  `employeeId` int(10) NOT NULL AUTO_INCREMENT,
  `employeeImage` varchar(100) DEFAULT NULL,
  `employeeName` varchar(50) NOT NULL,
  `fatherName` varchar(50) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `nrcNo` varchar(20) NOT NULL,
  `joinDate` date DEFAULT NULL,
  `departmentId` int(10) NOT NULL,
  `designationId` int(10) NOT NULL,
  `education` varchar(50) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `maritalStatus` varchar(10) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `createBy` int(10) NOT NULL,
  `createdDate` datetime NOT NULL,
  PRIMARY KEY (`employeeId`),
  KEY `designationId` (`designationId`),
  KEY `departmentId` (`departmentId`),
  CONSTRAINT `tbl_employee_ibfk_1` FOREIGN KEY (`designationId`) REFERENCES `tbl_designation` (`designationId`),
  CONSTRAINT `tbl_employee_ibfk_2` FOREIGN KEY (`departmentId`) REFERENCES `tbl_department` (`departmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employee`
--

LOCK TABLES `tbl_employee` WRITE;
/*!40000 ALTER TABLE `tbl_employee` DISABLE KEYS */;
INSERT INTO `tbl_employee` VALUES (1,'/images/1.jpg','John Henry','William Henry','2015-02-15','9/AhMaZa(N)043454','2015-02-15',1,1,'B.A Myanmar','Male','Married','No(44), BakerStreet, London',1,'2015-02-15 10:30:00');
/*!40000 ALTER TABLE `tbl_employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 17:46:29
