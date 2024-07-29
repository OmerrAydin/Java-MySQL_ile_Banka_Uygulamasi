-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: banka
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `tbl_credit_types`
--

DROP TABLE IF EXISTS `tbl_credit_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_credit_types` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CREDIT_NAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PERIOD` int NOT NULL,
  `BANK_RATE` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_credit_types`
--

LOCK TABLES `tbl_credit_types` WRITE;
/*!40000 ALTER TABLE `tbl_credit_types` DISABLE KEYS */;
INSERT INTO `tbl_credit_types` VALUES (1,'Tarım Kredisi',12,1.24),(2,'Tarım Kredisi',24,1.72),(3,'Tarım Kredisi',36,2.2),(4,'İhtiyaç Kredisi',12,4.33),(5,'İhtiyaç Kredisi',24,4.56),(6,'İhtiyaç Kredisi',36,4.99),(7,'Konut Kredisi',12,3.2),(8,'Konut Kredisi',24,3.62),(9,'Konut Kredisi',36,3.85),(10,'Taşıt Kredisi',12,3.3),(11,'Taşıt Kredisi',24,3.75),(12,'Taşıt Kredisi',36,4.1);
/*!40000 ALTER TABLE `tbl_credit_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_credits`
--

DROP TABLE IF EXISTS `tbl_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_credits` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CUSTOMER_TC` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL,
  `CREDIT_AMOUNT` float NOT NULL,
  `MONTHLY_PAYMENT` int DEFAULT NULL,
  `REMAINING_DEBT` float NOT NULL,
  `REMAINING_PERIOD` int NOT NULL,
  `CREDIT_TYPE_ID` int NOT NULL,
  `TIME` datetime DEFAULT NULL,
  `CONFIRMATION` tinyint NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_credits`
--

LOCK TABLES `tbl_credits` WRITE;
/*!40000 ALTER TABLE `tbl_credits` DISABLE KEYS */;
INSERT INTO `tbl_credits` VALUES (5,'15459639049',200000,23067,276800,12,7,'2025-07-24 18:41:50',1),(6,'12345678987',100000,4978,159288,32,3,'2025-09-22 18:41:50',1),(7,'12345678987',50000,6332,75980,12,4,'2026-01-20 18:41:50',1),(8,'12345678987',150000,11875,285000,24,11,NULL,0),(9,'15459639049',20000,1745,41888,24,5,NULL,0),(10,'15459639049',200000,13256,463944,35,9,'2026-01-20 18:41:50',1);
/*!40000 ALTER TABLE `tbl_credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customers`
--

DROP TABLE IF EXISTS `tbl_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TC` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SURNAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PASSWORD` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TEL` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MAIL` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `JOB` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `REMAINING_BALANCE` double DEFAULT '0',
  `BANK_SATISFACTION` int DEFAULT '0',
  `REMAINING_DEBT` int DEFAULT '0',
  PRIMARY KEY (`ID`,`TC`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `TC_UNIQUE` (`TC`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customers`
--

LOCK TABLES `tbl_customers` WRITE;
/*!40000 ALTER TABLE `tbl_customers` DISABLE KEYS */;
INSERT INTO `tbl_customers` VALUES (1,'15459639049','Ömer Faruk','Aydın','1234','05335249023','omerfaydin@gmail.com','Öğrenci',187294,5,0),(2,'12345678987','Salih','Kılıç','4567','05349107481','salihkilic@gmail.com','Özel Şirkette Satış Danışmanı',56044,5,0),(3,'72900152573','Zümrüt','Mercek','7021','05719260127','zumrutmercek@gmail.com','Petshop Sahibi',7000,5,0);
/*!40000 ALTER TABLE `tbl_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_eft`
--

DROP TABLE IF EXISTS `tbl_eft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_eft` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `SENDER_TC` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SENDER_NAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SENDER_SURNAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SENDER_REMAINING_BALANCE` int NOT NULL,
  `RECEIVER_TC` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RECEIVER_NAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RECEIVER_SURNAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `RECEIVER_REMAINING_BALANCE` int NOT NULL,
  `AMOUNT` int NOT NULL,
  `COMMENT` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_eft`
--

LOCK TABLES `tbl_eft` WRITE;
/*!40000 ALTER TABLE `tbl_eft` DISABLE KEYS */;
INSERT INTO `tbl_eft` VALUES (3,'15459639049','Ömer Faruk','Aydın',9150,'12345678987','Salih','Kılıç',3000,1000,'Güle güle kullan...','2024-07-28 17:14:26'),(4,'12345678987','Salih','Kılıç',0,'15459639049','Ömer Faruk','Aydın',12150,3000,'Sen de güle güle kullan','2024-07-28 17:14:26'),(5,'15459639049','Ömer Faruk','Aydın',10150,'72900152573','Zümrüt','Mercek',2000,2000,'Ev kirası','2024-07-28 17:14:26'),(6,'15459639049','Ömer Faruk','Aydın',8150,'12345678987','Salih','Kılıç',2000,2000,'Kira parası','2024-07-28 17:14:26'),(7,'15459639049','Ömer Faruk','Aydın',2053,'12345678987','Salih','Kılıç',5000,3000,'Borç','2024-08-08 18:41:50'),(8,'15459639049','Ömer Faruk','Aydın',5053,'72900152573','Zümrüt','Mercek',7000,5000,'Spor salonu ödemesi','2024-08-08 18:41:50');
/*!40000 ALTER TABLE `tbl_eft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_moneyoperations`
--

DROP TABLE IF EXISTS `tbl_moneyoperations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_moneyoperations` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TC` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SURNAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `AMOUNT` int NOT NULL,
  `OPERATION` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `REMAINING_BALANCE` int NOT NULL,
  `TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_moneyoperations`
--

LOCK TABLES `tbl_moneyoperations` WRITE;
/*!40000 ALTER TABLE `tbl_moneyoperations` DISABLE KEYS */;
INSERT INTO `tbl_moneyoperations` VALUES (1,'15459639049','Ömer Faruk','Aydın',1000,'Yatırma',11150,'2024-07-28 17:14:26'),(2,'15459639049','Ömer Faruk','Aydın',1000,'Çekme',10150,'2024-07-29 17:14:26'),(3,'15459639049','Ömer Faruk','Aydın',1000,'Yatırma',11150,'2024-07-29 17:14:26'),(4,'15459639049','Ömer Faruk','Aydın',1000,'Çekme',10150,'2024-07-29 17:14:26'),(5,'15459639049','Ömer Faruk','Aydın',1000,'Yatırma',9150,'2024-07-29 17:14:26'),(6,'15459639049','Ömer Faruk','Aydın',1000,'Çekme',6053,'2024-07-29 17:14:26'),(7,'15459639049','Ömer Faruk','Aydın',1000,'Yatırma',7053,'2024-07-29 17:14:26'),(8,'15459639049','Ömer Faruk','Aydın',1000,'Yatırma',8053,'2024-07-29 17:14:26'),(9,'15459639049','Ömer Faruk','Aydın',3000,'Çekme',5053,'2024-08-08 18:41:50'),(10,'15459639049','Ömer Faruk','Aydın',10000,'Çekme',-7947,'2024-08-08 18:41:50'),(11,'15459639049','Ömer Faruk','Aydın',10000,'Yatırma',2053,'2024-08-08 18:41:50'),(12,'15459639049','Ömer Faruk','Aydın',2000,'Çekme',53,'2024-08-08 18:41:50'),(13,'15459639049','Ömer Faruk','Aydın',10000,'Yatırma',10053,'2024-08-08 18:41:50'),(14,'15459639049','Ömer Faruk','Aydın',700000,'Yatırma',704354,'2024-08-28 18:41:50'),(15,'15459639049','Ömer Faruk','Aydın',634000,'Çekme',550,'2025-07-24 18:41:50'),(16,'12345678987','Salih','Kılıç',1000,'Yatırma',6000,'2025-09-22 18:41:50'),(17,'12345678987','Salih','Kılıç',1000,'Çekme',5000,'2025-09-22 18:41:50'),(18,'12345678987','Salih','Kılıç',100000,'Kredi Ödemesi',5000,'2025-10-22 18:41:50'),(19,'12345678987','Salih','Kılıç',1000,'Yatırma',6000,'2025-10-22 18:41:50'),(21,'12345678987','Salih','Kılıç',100000,'Yatırma',6000,'2025-11-21 18:41:50'),(22,'12345678987','Salih','Kılıç',4978,'Kredi Ödemesi',1022,'2025-12-21 18:41:50'),(23,'12345678987','Salih','Kılıç',10000,'Yatırma',11022,'2026-01-20 18:41:50'),(24,'12345678987','Salih','Kılıç',4978,'Kredi Ödemesi',6044,'2026-01-20 18:41:50'),(25,'12345678987','Salih','Kılıç',50000,'Kredi Geliri',56044,'2026-01-20 18:41:50'),(26,'15459639049','Ömer Faruk','Aydın',200000,'Çekme',550,'2026-01-20 18:41:50'),(27,'15459639049','Ömer Faruk','Aydın',200000,'Kredi Geliri',200550,'2026-01-20 18:41:50'),(28,'15459639049','Ömer Faruk','Aydın',13256,'Kredi Ödemesi',187294,'2026-02-19 18:41:50');
/*!40000 ALTER TABLE `tbl_moneyoperations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_time`
--

DROP TABLE IF EXISTS `tbl_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_time` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TIME` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_time`
--

LOCK TABLES `tbl_time` WRITE;
/*!40000 ALTER TABLE `tbl_time` DISABLE KEYS */;
INSERT INTO `tbl_time` VALUES (1,'2026-02-19 18:41:50');
/*!40000 ALTER TABLE `tbl_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_workers`
--

DROP TABLE IF EXISTS `tbl_workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_workers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `TC` varchar(11) COLLATE utf8mb3_unicode_ci NOT NULL,
  `NAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `SURNAME` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `PASSWORD` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TEL` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `MAIL` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `GRADE` varchar(45) COLLATE utf8mb3_unicode_ci NOT NULL,
  `TIER` varchar(45) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `SALARY` int NOT NULL,
  PRIMARY KEY (`ID`,`TC`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `TC_UNIQUE` (`TC`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_workers`
--

LOCK TABLES `tbl_workers` WRITE;
/*!40000 ALTER TABLE `tbl_workers` DISABLE KEYS */;
INSERT INTO `tbl_workers` VALUES (1,'34657768909','Ahmet','Arslan','2072','05474143019','ahmet_arslan@gmail.com','Developer','Senior',50000),(2,'98734278218','Ceyda','Karaca','5672','05939935274','ceydakarayılan@gmail.com','Officer','',30000),(4,'18324703425','Deniz','Merkür','5672','05121490304','deniztutucu@gmail.com','Admin',NULL,100000),(13,'98568198235','Fatma','Berberoğlu','1234','05140125602','fatmaberber@gmail.com','Developer','Junior',35000),(15,'34262837463','Mehmet','Akaydın','1234','05678994561','mehmetakaydin@gmail.com','Officer','',30000);
/*!40000 ALTER TABLE `tbl_workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-29 14:20:30
