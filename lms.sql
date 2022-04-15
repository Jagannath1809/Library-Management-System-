-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `username` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `security` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('Jagannathkar','Jagannath Kar','Jagannath@1809','20CSE265','Chilhood Nickname?','Jaga'),('Narottam','Narottam Prusty','Prusty@123','20CSE274','Chilhood Nickname?','bapuni'),('Satartha','Satartha Mohanty','SatarthaMohanty','20CSE261','Chilhood Nickname?','chiku');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `publisherYear` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('101','Programming With Java','E Balagurusamy','525','2019'),('102','Let Us C','Yashavant Kanetkar','330','2020'),('103','Let Us Python','yashavant Kanetkar','360','2021'),('104','Object Oriented Programming with C++','E  Balagurusamy','460','2020');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issue`
--

DROP TABLE IF EXISTS `issue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issue` (
  `bookID` varchar(10) DEFAULT NULL,
  `studentID` varchar(10) DEFAULT NULL,
  `issueDate` varchar(20) DEFAULT NULL,
  `dueDate` varchar(20) DEFAULT NULL,
  `returnBook` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issue`
--

LOCK TABLES `issue` WRITE;
/*!40000 ALTER TABLE `issue` DISABLE KEYS */;
INSERT INTO `issue` VALUES ('1','1','24-12-2021','31-12-2021','YES'),('345','265','25-12-2021','31-12-2021','YES'),('345','265','24-12-2021','30-12-2021','YES'),('101','20CSE265','27-12-2021','31-12-2021','YES'),('102','20CSE261','29-12-2021','05-12-2022','No');
/*!40000 ALTER TABLE `issue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `studentID` varchar(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `coursename` varchar(100) DEFAULT NULL,
  `branchName` varchar(20) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('20CSE261','Satartha Mohanty','Sukanta kumar Mohanty','CSE','B.TECH','2nd','3rd'),('20CSE265','Jagannath kar','Biraja Prasad kar','CSE','B.TECH','2nd','3rd'),('20CSE266','Sk.Md.Samim Akthar','','CSE','B.TECH','2nd','3rd'),('20CSE267','Sibasankar Swain','','CSE','B.TECH','2nd','3rd'),('20CSE268','Pravash Ranjan','','CSE','B.TECH','2nd','3rd'),('20CSE269','Biswaranjan Rout','','CSE','B.TECH','2nd','3rd'),('20CSE270','Sapneswar Pradhan','','CSE','B.TECH','2nd','3rd'),('20CSE271','Bhabatosh panda','','CSE','B.TECH','2nd','3rd'),('20CSE272','Satapriya Nayak','','CSE','B.TECH','2nd','3rd'),('20CSE274','Narottam Prusty','Nityananda Prusty','CSE','B.TECH','2nd','3rd'),('20CSE275','Satyajeetnath','','CSE','B.TECH','2nd','3rd'),('20CSE276','Titikshu Tarun Behera','','CSE','B.TECH','2nd','3rd'),('20CSE281','Asutosh sahoo','','CSE','B.TECH','2nd','3rd'),('20CSE284','Somya Ranjan Muduli','','CSE','B.TECH','2nd','3rd'),('20CSE285','Prabhu Kalyan Sahoo','','CSE','B.TECH','2nd','3rd'),('20CSE287','Vipul kumar','','CSE','B.TECH','2nd','3rd'),('20CSE288','Omkar Patra','','CSE','B.TECH','2nd','3rd');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-13 19:45:06
