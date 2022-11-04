-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: transactionexample
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Dumping data for table `engine_ex`
--

LOCK TABLES `engine_ex` WRITE;
/*!40000 ALTER TABLE `engine_ex` DISABLE KEYS */;
/*!40000 ALTER TABLE `engine_ex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',3),(2,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',1),(3,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',1),(4,'2005-05-31','2005-06-10','2005-06-11','DESPACHADO',2),(5,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',1),(6,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',1),(7,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',1),(8,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',1),(10,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',1),(11,'2005-05-01','2005-06-10','2005-05-11','EM PROGRESSO',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ordersdetails`
--

LOCK TABLES `ordersdetails` WRITE;
/*!40000 ALTER TABLE `ordersdetails` DISABLE KEYS */;
INSERT INTO `ordersdetails` VALUES (2,'18_1749',30,'143'),(2,'18_2248',50,'62.09'),(5,'18_1849',30,'196.5'),(5,'18_2569',50,'112.09'),(7,'18_1849',30,'196.5'),(7,'18_2569',50,'112.09'),(10,'18_1849',30,'196.5'),(10,'18_2569',50,'112.09');
/*!40000 ALTER TABLE `ordersdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04  3:18:50
