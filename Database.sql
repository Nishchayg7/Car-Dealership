-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: carDealership
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access` (
  `DID` varchar(10) NOT NULL,
  `In_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`DID`,`In_ID`),
  KEY `In_ID` (`In_ID`),
  CONSTRAINT `access_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `dealer` (`DID`),
  CONSTRAINT `access_ibfk_2` FOREIGN KEY (`In_ID`) REFERENCES `inventory` (`In_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
INSERT INTO `access` VALUES ('0111','000AA'),('0000','001AA'),('0001','001AA'),('0011','001AA'),('0010','001BB'),('1000','001BB'),('0100','010AA'),('0101','010AA'),('0100','011AA'),('0101','011AA'),('0110','100AA'),('1001','101AA'),('0010','111AA');
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `C_ID` varchar(10) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(10) NOT NULL,
  `Line_1` varchar(50) NOT NULL,
  `Line2` varchar(40) NOT NULL,
  `Pin` int(11) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Annual_Income` varchar(20) NOT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('00000','Nishchay','Grover','35 suraj appartments','New Delhi',110044,'8587886414','10 LAKH'),('00001','Payanshi','Jain',' chowki dhani','Jaipr',301789,'9530454204','15 LAKH'),('00010','Javin','Juneja','Rithala','New Delhi',110034,'9555942199','12 LAKH'),('000101','Tathagat','Kumar',' plot 101','Ranchi',501420,'8587496322','20 LAKH'),('00011','Moksh','Talreja','90 Green Hills','Gurgaon',110002,'8524714857','7 LAKH'),('000110','Veer','Bains','0004 sector 17','Chandigarh',192578,'7854123695','13 LAKH'),('000111','Tuck','Shop','NIIT University','Neemrana',301705,'9999658755','30 LAKH'),('00100','Ojasvi','Bhalerao','234 secundarabad','Hyderabad',784520,'7845789632','11 LAKH'),('001000','Nikhil','Reddy','899 secundarabad','Hyderabad',784520,'9998745236','40 LAKH'),('001001','Sheikh','Hussain','chowki dhani','Jaipur',301789,'8000900089','60 LAKH');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dealer`
--

DROP TABLE IF EXISTS `dealer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dealer` (
  `DID` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Dealer_location` varchar(30) NOT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dealer`
--

LOCK TABLES `dealer` WRITE;
/*!40000 ALTER TABLE `dealer` DISABLE KEYS */;
INSERT INTO `dealer` VALUES ('0000','AAA Vehicles','Saket,New Delhi'),('0001','AAA Vehicles','Rohini,New Delhi'),('0010','Tiwari Automobiles','Hawa Mahal,Jaipur'),('0011','Kaintura Vehicles','MG Road,Gurgaon'),('0100','Rana Motors','Telangana,Hyderabad'),('0101','Rana Motors','Secundarbad,Hyderabad'),('0110','Maruti Nexa','Van Vhibhag,Ranchi'),('0111','Bagga Motors','Model Town,Chandigarh'),('1000','Magic Auto','Neemrana Market, Rajasthan'),('1001','Fair Deal','juhu,Navi Mumbai');
/*!40000 ALTER TABLE `dealer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has` (
  `VIN` int(11) NOT NULL,
  `Option_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`VIN`,`Option_ID`),
  KEY `Option_ID` (`Option_ID`),
  CONSTRAINT `has_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`),
  CONSTRAINT `has_ibfk_2` FOREIGN KEY (`Option_ID`) REFERENCES `opt` (`Option_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has`
--

LOCK TABLES `has` WRITE;
/*!40000 ALTER TABLE `has` DISABLE KEYS */;
INSERT INTO `has` VALUES (11001,'OPT0000'),(11010,'OPT0001'),(11005,'OPT0010'),(11011,'OPT0010'),(11006,'OPT0011'),(11100,'OPT0011'),(11101,'OPT0100'),(11110,'OPT0101'),(11007,'OPT0110'),(11111,'OPT0110'),(11002,'OPT0111'),(11003,'OPT1000'),(11004,'OPT1001');
/*!40000 ALTER TABLE `has` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory` (
  `In_Name` varchar(20) NOT NULL,
  `In_Location` varchar(20) NOT NULL,
  `In_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`In_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('Kapoor and sons','chandigarh','000AA'),('Khanna Storage','Khanpur,New Delhi','001AA'),('Kailash cars','Bawal,rajasthan','001BB'),('Aiyer Automobiles','Hyderabad','010AA'),('Tea N car Dealers','Assam','010BB'),('Reddy and sons','Secundarabad','011AA'),('Rana Motors','Ranchi','100AA'),('filmcity Automobiles','Mumbai','101AA'),('Dry storage','Gujarat','110AA'),('Pinky Motors','jaipur','111AA');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `MName` varchar(20) NOT NULL,
  `MLocation` varchar(20) NOT NULL,
  `MF_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`MF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES ('Castrol','Hyderabad','MF0000AA'),('Gulf','Nagpur','MF0000BB'),('Indian Oil','Jaisalmer','MF0000CC'),('Fag','New Delhi','MF0000DD'),('Amaron','Punjab','MF0000EE'),('Servo','Kolkata','MF0000FF'),('Philips','Maharashtra','MF0000GG'),('Excide','Uttrakhand','MF0000HH'),('MFG','Delho','MF0000II'),('Golden Cruizer','Haryana','MF0000JJ');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opt`
--

DROP TABLE IF EXISTS `opt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opt` (
  `Option_ID` varchar(10) NOT NULL,
  `Engine` varchar(20) NOT NULL,
  `Transmission` varchar(20) NOT NULL,
  `Color` char(1) NOT NULL,
  `Fuel_Type` char(1) NOT NULL,
  PRIMARY KEY (`Option_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opt`
--

LOCK TABLES `opt` WRITE;
/*!40000 ALTER TABLE `opt` DISABLE KEYS */;
INSERT INTO `opt` VALUES ('OPT0000','2000 CC','Manual','B','P'),('OPT0001','2200 CC','Automatic','W','P'),('OPT0010','2400 CC','Manual','S','P'),('OPT0011','1500 CC','Manual','W','P'),('OPT0100','1700 CC','Automatic','B','P'),('OPT0101','4000 CC','Manual','B','D'),('OPT0110','2000 CC','Manual','W','P'),('OPT0111','2200 CC','Automatic','S','D'),('OPT1000','2300 CC','Automatic','W','D'),('OPT1001','1300 CC','Manual','B','P');
/*!40000 ALTER TABLE `opt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requires`
--

DROP TABLE IF EXISTS `requires`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requires` (
  `C_ID` varchar(10) NOT NULL,
  `Center_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`C_ID`,`Center_ID`),
  KEY `Center_ID` (`Center_ID`),
  CONSTRAINT `requires_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`C_ID`),
  CONSTRAINT `requires_ibfk_2` FOREIGN KEY (`Center_ID`) REFERENCES `service_centre` (`Center_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requires`
--

LOCK TABLES `requires` WRITE;
/*!40000 ALTER TABLE `requires` DISABLE KEYS */;
INSERT INTO `requires` VALUES ('00001','SER0001'),('001001','SER0001'),('000111','SER0010'),('00000','SER0011'),('00011','SER0011'),('00100','SER0100'),('001000','SER0100'),('000101','SER0110'),('00010','SER1000'),('000110','SER1001');
/*!40000 ALTER TABLE `requires` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `S_Date` date NOT NULL,
  `Price` int(11) NOT NULL,
  `C_ID` varchar(10) NOT NULL,
  `DID` varchar(10) NOT NULL,
  PRIMARY KEY (`C_ID`,`DID`),
  KEY `DID` (`DID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`C_ID`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`DID`) REFERENCES `dealer` (`DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES ('2013-04-15',2000,'00000','0000'),('2017-02-16',2000,'00000','0001'),('2017-01-26',3000,'00001','0010'),('2017-01-26',4000,'00010','0000'),('2017-03-03',1000,'00010','0011'),('2013-10-24',2500,'000101','0110'),('2016-02-16',5000,'00011','0011'),('2012-09-23',3500,'000110','0111'),('2010-08-03',3400,'000111','0010'),('2016-08-26',2200,'000111','0111'),('2015-12-12',6000,'00100','0101'),('2016-07-30',4500,'001000','0100'),('2016-01-29',3000,'001001','0010');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_centre`
--

DROP TABLE IF EXISTS `service_centre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_centre` (
  `Location` varchar(20) NOT NULL,
  `No_of_workers` int(11) NOT NULL,
  `Center_ID` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  PRIMARY KEY (`Center_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_centre`
--

LOCK TABLES `service_centre` WRITE;
/*!40000 ALTER TABLE `service_centre` DISABLE KEYS */;
INSERT INTO `service_centre` VALUES ('Secundarabad',100,'SER0000','kinari market'),('Jaipur',60,'SER0001','Dev Nagar'),('Neemrana',70,'SER0010','360 Bawal'),('New Delhi',90,'SER0011','J Block Saket'),('Hyderabad',110,'SER0100','Char Minar'),('Gujarat',130,'SER0101','Rann of Katch'),('Assam',10,'SER0110','Kaziranga'),('Andhara pradesh',35,'SER0111','Biryani Circle'),('New delhi',70,'SER1000','Chandni Chwok'),('Chandigarh',190,'SER1001','Gol Market');
/*!40000 ALTER TABLE `service_centre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_details`
--

DROP TABLE IF EXISTS `service_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_details` (
  `No_of_Services` int(11) NOT NULL,
  `Date_Delivered` date NOT NULL,
  `Date_Received` date NOT NULL,
  `Amount` int(11) NOT NULL,
  `Mech_ID` varchar(20) NOT NULL,
  `Service_Ticket` int(11) NOT NULL,
  `Center_ID` varchar(20) NOT NULL,
  `VIN` int(11) NOT NULL,
  PRIMARY KEY (`Service_Ticket`),
  KEY `Center_ID` (`Center_ID`),
  KEY `VIN` (`VIN`),
  CONSTRAINT `service_details_ibfk_1` FOREIGN KEY (`Center_ID`) REFERENCES `service_centre` (`Center_ID`),
  CONSTRAINT `service_details_ibfk_2` FOREIGN KEY (`VIN`) REFERENCES `vehicle` (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_details`
--

LOCK TABLES `service_details` WRITE;
/*!40000 ALTER TABLE `service_details` DISABLE KEYS */;
INSERT INTO `service_details` VALUES (3,'2017-04-15','2017-04-14',4000,'MECH001',0,'SER0011',11001),(2,'2017-04-13','2017-04-10',5000,'MECH010',1,'SER0001',11010),(1,'2017-04-11','2017-04-11',6000,'MECH011',10,'SER1000',11011),(4,'2017-04-19','2017-04-17',7000,'MECH000',11,'SER1000',11100),(1,'2017-04-12','2017-04-12',8000,'MECH000',100,'SER0100',11101),(2,'2017-04-11','2017-04-10',2000,'MECH001',101,'SER0110',11110),(3,'2017-04-12','2017-04-12',1000,'MECH011',110,'SER1001',11111),(0,'2017-04-13','2017-04-10',500,'MECH0011',111,'SER0010',11002),(2,'2017-04-14','2017-04-12',700,'MECH010',1000,'SER0100',11003),(0,'2017-04-14','2017-04-13',4200,'MECH001',1001,'SER0001',11004),(0,'2017-04-13','2017-04-10',600,'MECH0011',1010,'SER0011',11005),(2,'2017-04-14','2017-04-12',600,'MECH010',1011,'SER0011',11006),(0,'2017-04-14','2017-04-13',2200,'MECH001',1100,'SER0010',11007);
/*!40000 ALTER TABLE `service_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spare_part`
--

DROP TABLE IF EXISTS `spare_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spare_part` (
  `Part_ID` varchar(10) NOT NULL,
  `Part_Type` varchar(10) NOT NULL,
  `MF_Date` date NOT NULL,
  `Supply_Date` date NOT NULL,
  PRIMARY KEY (`Part_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spare_part`
--

LOCK TABLES `spare_part` WRITE;
/*!40000 ALTER TABLE `spare_part` DISABLE KEYS */;
INSERT INTO `spare_part` VALUES ('PART0000','Engine Oil','2016-12-04','2017-02-15'),('PART0001','Break Oil','2016-12-17','2017-01-17'),('PART0010','Wipers','2016-11-01','2017-02-18'),('PART0011','Oil Filter','2016-12-31','2017-02-25'),('PART0100','Air Filter','2016-10-23','2017-03-15'),('PART0101','Suspension','2017-01-25','2017-03-15'),('PART0110','Wheels','2016-10-17','2016-11-29'),('PART0111','Coolant','2017-03-24','2017-04-19'),('PART1000','Battery','2017-02-14','2017-03-14'),('PART1001','Bearing','2017-01-04','2017-02-01');
/*!40000 ALTER TABLE `spare_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spare_part_vendor`
--

DROP TABLE IF EXISTS `spare_part_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spare_part_vendor` (
  `S_Name` varchar(20) NOT NULL,
  `S_location` varchar(30) NOT NULL,
  `S_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spare_part_vendor`
--

LOCK TABLES `spare_part_vendor` WRITE;
/*!40000 ALTER TABLE `spare_part_vendor` DISABLE KEYS */;
INSERT INTO `spare_part_vendor` VALUES ('Malhotra oils','Chandni Chowk ,Delhi','VEN0000'),('Apoorv Automobiles','Secundarabad ,Hyderabad','VEN0001'),('Kapoor N sons','Sector 15 ,Chandigarh','VEN0010'),('Modi Automoblies','Dry State ,Gujarat','VEN0011'),('Khandaani Spares','City Palace ,Jaipur','VEN0100'),('Dorjey supplies','Mayur Vihar ,Assam','VEN0101'),('Shanti Motors','Malviya Nagar ,Delhi','VEN0110'),('Jain Automobiles','Chandni Chowk ,Jaipur','VEN0111'),('Bunty Spares','Chandni Chowk ,Nagpur','VEN1000'),('Chaudhary oils','Sahara Mall,Gurgaon','VEN1001');
/*!40000 ALTER TABLE `spare_part_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies`
--

DROP TABLE IF EXISTS `supplies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplies` (
  `MF_ID` varchar(10) NOT NULL,
  `Part_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`MF_ID`,`Part_ID`),
  KEY `Part_ID` (`Part_ID`),
  CONSTRAINT `supplies_ibfk_1` FOREIGN KEY (`MF_ID`) REFERENCES `manufacturer` (`MF_ID`),
  CONSTRAINT `supplies_ibfk_2` FOREIGN KEY (`Part_ID`) REFERENCES `spare_part` (`Part_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies`
--

LOCK TABLES `supplies` WRITE;
/*!40000 ALTER TABLE `supplies` DISABLE KEYS */;
INSERT INTO `supplies` VALUES ('MF0000AA','PART0000'),('MF0000BB','PART0000'),('MF0000CC','PART0000'),('MF0000EE','PART0000'),('MF0000FF','PART0000'),('MF0000HH','PART0000'),('MF0000AA','PART0001'),('MF0000BB','PART0001'),('MF0000CC','PART0001'),('MF0000FF','PART0001'),('MF0000II','PART0010'),('MF0000FF','PART0011'),('MF0000II','PART0011'),('MF0000FF','PART0100'),('MF0000II','PART0100'),('MF0000II','PART0101'),('MF0000AA','PART0111'),('MF0000BB','PART0111'),('MF0000CC','PART0111'),('MF0000FF','PART0111'),('MF0000JJ','PART0111'),('MF0000EE','PART1000'),('MF0000FF','PART1000'),('MF0000DD','PART1001'),('MF0000II','PART1001');
/*!40000 ALTER TABLE `supplies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplies_spares_and_maintanence`
--

DROP TABLE IF EXISTS `supplies_spares_and_maintanence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplies_spares_and_maintanence` (
  `Center_ID` varchar(20) NOT NULL,
  `MF_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Center_ID`,`MF_ID`),
  KEY `MF_ID` (`MF_ID`),
  CONSTRAINT `supplies_spares_and_maintanence_ibfk_1` FOREIGN KEY (`Center_ID`) REFERENCES `service_centre` (`Center_ID`),
  CONSTRAINT `supplies_spares_and_maintanence_ibfk_2` FOREIGN KEY (`MF_ID`) REFERENCES `manufacturer` (`MF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplies_spares_and_maintanence`
--

LOCK TABLES `supplies_spares_and_maintanence` WRITE;
/*!40000 ALTER TABLE `supplies_spares_and_maintanence` DISABLE KEYS */;
INSERT INTO `supplies_spares_and_maintanence` VALUES ('SER0000','MF0000AA'),('SER0001','MF0000AA'),('SER0101','MF0000AA'),('SER0110','MF0000AA'),('SER0000','MF0000BB'),('SER0001','MF0000BB'),('SER0011','MF0000BB'),('SER0101','MF0000BB'),('SER0110','MF0000BB'),('SER0000','MF0000CC'),('SER0001','MF0000CC'),('SER0011','MF0000CC'),('SER0100','MF0000CC'),('SER0101','MF0000CC'),('SER0110','MF0000CC'),('SER1001','MF0000CC'),('SER0000','MF0000DD'),('SER0001','MF0000DD'),('SER0011','MF0000DD'),('SER0100','MF0000DD'),('SER0101','MF0000DD'),('SER0110','MF0000DD'),('SER0111','MF0000DD'),('SER1001','MF0000DD'),('SER0000','MF0000EE'),('SER0001','MF0000EE'),('SER0010','MF0000EE'),('SER0011','MF0000EE'),('SER0100','MF0000EE'),('SER0101','MF0000EE'),('SER0110','MF0000EE'),('SER0111','MF0000EE'),('SER1001','MF0000EE'),('SER0000','MF0000FF'),('SER0001','MF0000FF'),('SER0010','MF0000FF'),('SER0011','MF0000FF'),('SER0100','MF0000FF'),('SER0101','MF0000FF'),('SER0110','MF0000FF'),('SER0111','MF0000FF'),('SER1001','MF0000FF'),('SER0000','MF0000GG'),('SER0010','MF0000GG'),('SER0011','MF0000GG'),('SER0100','MF0000GG'),('SER0101','MF0000GG'),('SER0110','MF0000GG'),('SER0111','MF0000GG'),('SER1001','MF0000GG'),('SER0000','MF0000HH'),('SER0010','MF0000HH'),('SER0011','MF0000HH'),('SER0100','MF0000HH'),('SER0101','MF0000HH'),('SER0110','MF0000HH'),('SER0111','MF0000HH'),('SER1001','MF0000HH'),('SER0000','MF0000II'),('SER0010','MF0000II'),('SER0011','MF0000II'),('SER0101','MF0000II'),('SER0111','MF0000II'),('SER1001','MF0000II'),('SER0000','MF0000JJ'),('SER0010','MF0000JJ'),('SER0101','MF0000JJ'),('SER0111','MF0000JJ'),('SER1001','MF0000JJ');
/*!40000 ALTER TABLE `supplies_spares_and_maintanence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `VIN` int(11) NOT NULL,
  `Model_Type` varchar(10) NOT NULL,
  `Body_Type` varchar(20) NOT NULL,
  `Model_Name` varchar(20) NOT NULL,
  `Model_Year` int(11) NOT NULL,
  `MF_ID` varchar(10) NOT NULL,
  `C_ID` varchar(10) NOT NULL,
  `In_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`VIN`),
  KEY `MF_ID` (`MF_ID`),
  KEY `C_ID` (`C_ID`),
  KEY `In_ID` (`In_ID`),
  CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`MF_ID`) REFERENCES `manufacturer` (`MF_ID`),
  CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`C_ID`) REFERENCES `customer` (`C_ID`),
  CONSTRAINT `vehicle_ibfk_3` FOREIGN KEY (`In_ID`) REFERENCES `inventory` (`In_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (11001,'LXI','MINI','WAGON-R',2010,'MF0000II','00000','001AA'),(11002,'ZXI','SUV','ERTIGA',2009,'MF0000II','000111','001BB'),(11003,'LXI','SUV','BREEZA',2011,'MF0000II','001000','011AA'),(11004,'VXI','SEDAN','BALENO',2012,'MF0000II','001001','111AA'),(11005,'ZXI','SUV','BREEZA',2012,'MF0000II','00000','001AA'),(11006,'VXI','SEDAN','BALENO',2012,'MF0000II','00010','001AA'),(11007,'LXI','MINI','ALTO',2012,'MF0000II','000111','001BB'),(11010,'ZXI','LUXURY','KIZASHI',2012,'MF0000II','00001','111AA'),(11011,'VXI','MINI','ALTO',2011,'MF0000II','00010','001AA'),(11100,'VXI','SEDAN','CIAZ',2015,'MF0000II','00011','001AA'),(11101,'ZXI','VAN','OMNI',2016,'MF0000II','00100','010AA'),(11110,'LXI','SPORTS','GYPSY',2008,'MF0000II','000101','100AA'),(11111,'VXI','MINI','SWIFT',2011,'MF0000II','000110','000AA');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `Part_ID` varchar(10) NOT NULL,
  `S_ID` varchar(10) NOT NULL,
  PRIMARY KEY (`Part_ID`,`S_ID`),
  KEY `S_ID` (`S_ID`),
  CONSTRAINT `vendor_ibfk_1` FOREIGN KEY (`Part_ID`) REFERENCES `spare_part` (`Part_ID`),
  CONSTRAINT `vendor_ibfk_2` FOREIGN KEY (`S_ID`) REFERENCES `spare_part_vendor` (`S_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES ('PART0000','VEN0000'),('PART0001','VEN0000'),('PART0010','VEN0000'),('PART0011','VEN0000'),('PART0100','VEN0000'),('PART0101','VEN0000'),('PART0110','VEN0000'),('PART0111','VEN0000'),('PART1000','VEN0000'),('PART1001','VEN0000'),('PART0000','VEN0001'),('PART0001','VEN0001'),('PART0010','VEN0001'),('PART0011','VEN0001'),('PART0100','VEN0001'),('PART0101','VEN0001'),('PART0101','VEN0010'),('PART0110','VEN0010'),('PART0111','VEN0010'),('PART1000','VEN0010'),('PART1001','VEN0010'),('PART0000','VEN0011'),('PART0001','VEN0011'),('PART0010','VEN0011'),('PART0011','VEN0011'),('PART0100','VEN0011'),('PART0101','VEN0011'),('PART0110','VEN0011'),('PART0111','VEN0011'),('PART1000','VEN0011'),('PART1001','VEN0011'),('PART0110','VEN0100'),('PART0111','VEN0100'),('PART1000','VEN0100'),('PART1001','VEN0100'),('PART0000','VEN0101'),('PART0001','VEN0101'),('PART0010','VEN0101'),('PART0011','VEN0101'),('PART0010','VEN0110'),('PART0011','VEN0110'),('PART0100','VEN0110'),('PART0101','VEN0110'),('PART0110','VEN0110'),('PART0111','VEN0110'),('PART0000','VEN0111'),('PART0001','VEN0111'),('PART0010','VEN0111'),('PART0101','VEN0111'),('PART0110','VEN0111'),('PART0111','VEN0111'),('PART0000','VEN1000'),('PART0001','VEN1000'),('PART0010','VEN1000'),('PART0011','VEN1000'),('PART0100','VEN1000'),('PART0101','VEN1000'),('PART0110','VEN1000'),('PART0111','VEN1000'),('PART1000','VEN1000'),('PART1001','VEN1000');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-30 17:45:53
