-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: votingmodel
-- ------------------------------------------------------
-- Server version	5.1.33-community

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `stream` varchar(20) DEFAULT NULL,
  `partyname` varchar(20) DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES ('Priyanshu',19,'BCS','Slytherin',101,'male'),('Shanaya Shaikh',18,'BBA(CA)','The Legendary Party',102,'female'),('Priya Wadke',15,'BBA(CA)','Youngistaan',103,'female'),('Purva Sawant',23,'BCS','Youngistaan',104,'female');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lastid`
--

DROP TABLE IF EXISTS `lastid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lastid` (
  `vid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lastid`
--

LOCK TABLES `lastid` WRITE;
/*!40000 ALTER TABLE `lastid` DISABLE KEYS */;
INSERT INTO `lastid` VALUES ('1');
/*!40000 ALTER TABLE `lastid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `userid` int(11) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `seckey` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `seckey` varchar(20) DEFAULT NULL,
  `stream` varchar(20) DEFAULT NULL,
  `vid` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('Akash','Rane','Male','1998','Pune','123','345','BCA','101'),('Priya','Kumari','female','19','Rajasthan','123456','09876','BBA(CA)','102'),('Nikesh','Mukesh','Male','20','Bangalore','12222','098998','BCA','103'),('Daya','Gada','female','21','Patna','12111','333333','BSC(CS)','104'),('Vikas','Patil','Male','20','Bangalore','123456','12345678','BBA(CA)','105'),('Sanjay','kumar','Male','21','Rajasthan','sanjay0987','sanju567','BCS','106'),('Harry','Doe','Male','18','Mumbai','harry12','12345','BCA','107');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voter` (
  `vname` varchar(50) DEFAULT NULL,
  `vage` int(25) DEFAULT NULL,
  `vcourse` varchar(25) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `seckey` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votes` (
  `cname` varchar(50) DEFAULT NULL,
  `stream` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
INSERT INTO `votes` VALUES ('Skyfury','BSC(CS)'),('Skyfury','BSC(CS)'),('Skyfury','BSC(CS)'),('Slytherin','BCA'),('Slytherin','BCA'),('Slytherin','BCA'),('Youngistaan','BBA(CA)'),('Youngistaan','BBA(CA)'),('Youngistaan','BBA(CA)'),('Skyfury','BSC(CS)'),('Skyfury','BSC(CS)'),('The Legendary Party','Bcs'),('The Legendary Party','Bcs'),('Skyfury','BSC(CS)'),('The Legendary Party','Bcs'),('Skyfury','BSC(CS)'),('Skyfury','BSC(CS)'),('The Legendary Party','Bcs'),('Skyfury','BSC(CS)'),('Skyfury','BSC(CS)'),('The Legendary Party','Bcs'),('Skyfury','BSC(CS)');
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votesdatareport`
--

DROP TABLE IF EXISTS `votesdatareport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votesdatareport` (
  `votes` int(11) DEFAULT NULL,
  `partyname` varchar(50) NOT NULL,
  `stream` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`partyname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votesdatareport`
--

LOCK TABLES `votesdatareport` WRITE;
/*!40000 ALTER TABLE `votesdatareport` DISABLE KEYS */;
/*!40000 ALTER TABLE `votesdatareport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-31  2:07:38
