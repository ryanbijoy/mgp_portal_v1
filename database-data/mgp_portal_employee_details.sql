-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: mgp_portal
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birth_date` date NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `designation` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,'Pranit','Singh','1992-06-23','Thane','7977590072','pranit.mgp@gmail.com','Senior Operations Manager','pranitsingh','Aarohi3107'),(2,'Yogesh','Kulkarni','1996-10-17','Thane','9004362578','kulkarniy507@gmail.com','Senior Graphic Designer','yogeshkulkarni','Admin123'),(3,'Siddhesh','Koltharkar','1993-05-20','Thane','8856818237','sidkoltharkar@gmail.com','Senior Presentation Designer','siddheshkoltharkar','1234'),(4,'Rakesh','Sonawane','1993-08-02','Thane','8286657271','rakeshsonawane555@gmail.com','Senior Designer','rakeshsonawane','1234'),(5,'Jagdeep','Singh','1992-08-30','Thane','8976030438','jd.dhillon1656@gmail.com','Motion Graphics Editor','jagdeepsingh','1234'),(6,'Deepak','Behera','2001-11-17','Thane','8806899882','beherad592@gmail.com','Junior Developer','deepakbehera','Deepak26@'),(7,'Allethea','Dias','2001-01-20','Thane','9930074608','allethea.dias@gmail.com','Event Manager','alletheadias','Arokspics@2001'),(8,'Piya','Bhanushali','2007-04-02','Thane','9324833013','piyavari@gmail.com','Intern','piyabhanushali','1234'),(9,'Aryan','Jadhav','2002-01-12','Thane','7715989974','aryanjadhav075@gmail.com','Operation Executive','aryanjadhav','arujadhav4257'),(10,'Pratik','Gulambe','2001-05-01','Thane','8652518869','pratik01gulambe@gmail.com','Production Coordinator','pratikgulambe','1234'),(11,'Manish','Jaiswal','1990-05-18','Thane','9867889039','jaiswal.manish12@gmail.com','Presentation Designer','manishjaiswal','Manish@123');
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-30 10:50:06
