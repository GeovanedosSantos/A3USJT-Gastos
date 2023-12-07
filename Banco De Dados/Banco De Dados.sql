-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: gastosdb
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `abrtb`
--

DROP TABLE IF EXISTS `abrtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abrtb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `abrtb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abrtb`
--

LOCK TABLES `abrtb` WRITE;
/*!40000 ALTER TABLE `abrtb` DISABLE KEYS */;
INSERT INTO `abrtb` VALUES (1,1,0.00,0.00,0.00,0.00,0.00,12,2023,'2023-12-04 00:36:06');
/*!40000 ALTER TABLE `abrtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agotb`
--

DROP TABLE IF EXISTS `agotb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agotb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `agotb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agotb`
--

LOCK TABLES `agotb` WRITE;
/*!40000 ALTER TABLE `agotb` DISABLE KEYS */;
/*!40000 ALTER TABLE `agotb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deztb`
--

DROP TABLE IF EXISTS `deztb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deztb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `deztb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deztb`
--

LOCK TABLES `deztb` WRITE;
/*!40000 ALTER TABLE `deztb` DISABLE KEYS */;
INSERT INTO `deztb` VALUES (1,1,3200.00,2565.05,634.95,400.52,234.43,12,2023,'2023-12-30 11:23:16'),(2,7,4200.00,5503.43,596.57,501.57,95.00,12,2023,'2023-12-01 22:49:11'),(3,2,0.00,0.00,0.00,0.00,0.00,12,2023,'2023-12-04 00:27:12');
/*!40000 ALTER TABLE `deztb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fevtb`
--

DROP TABLE IF EXISTS `fevtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fevtb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `fevtb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fevtb`
--

LOCK TABLES `fevtb` WRITE;
/*!40000 ALTER TABLE `fevtb` DISABLE KEYS */;
/*!40000 ALTER TABLE `fevtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jantb`
--

DROP TABLE IF EXISTS `jantb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jantb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `jantb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jantb`
--

LOCK TABLES `jantb` WRITE;
/*!40000 ALTER TABLE `jantb` DISABLE KEYS */;
/*!40000 ALTER TABLE `jantb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jultb`
--

DROP TABLE IF EXISTS `jultb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jultb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `jultb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jultb`
--

LOCK TABLES `jultb` WRITE;
/*!40000 ALTER TABLE `jultb` DISABLE KEYS */;
/*!40000 ALTER TABLE `jultb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juntb`
--

DROP TABLE IF EXISTS `juntb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juntb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `juntb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juntb`
--

LOCK TABLES `juntb` WRITE;
/*!40000 ALTER TABLE `juntb` DISABLE KEYS */;
/*!40000 ALTER TABLE `juntb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maitb`
--

DROP TABLE IF EXISTS `maitb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maitb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `maitb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maitb`
--

LOCK TABLES `maitb` WRITE;
/*!40000 ALTER TABLE `maitb` DISABLE KEYS */;
/*!40000 ALTER TABLE `maitb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `martb`
--

DROP TABLE IF EXISTS `martb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `martb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `martb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `martb`
--

LOCK TABLES `martb` WRITE;
/*!40000 ALTER TABLE `martb` DISABLE KEYS */;
/*!40000 ALTER TABLE `martb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `novtb`
--

DROP TABLE IF EXISTS `novtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novtb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `novtb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novtb`
--

LOCK TABLES `novtb` WRITE;
/*!40000 ALTER TABLE `novtb` DISABLE KEYS */;
INSERT INTO `novtb` VALUES (1,1,123.00,326.00,2351.00,1127.00,1224.00,11,2023,'2023-11-28 17:47:03'),(2,2,-1234.00,-1234.00,0.00,0.00,0.00,11,2023,'2023-11-28 20:17:33'),(3,3,240.00,240.00,123.00,123.00,0.00,11,2023,'2023-11-28 20:21:14'),(4,1,0.00,0.00,0.00,0.00,0.00,11,2024,'2024-11-28 20:23:05'),(5,4,0.00,500.25,0.00,0.00,0.00,11,2023,'2023-11-29 00:55:25'),(6,5,3200.00,2400.50,900.00,400.00,500.00,11,2023,'2023-11-30 11:33:46'),(7,6,3200.46,2199.94,1100.52,400.00,700.52,11,2023,'2023-11-30 11:36:47');
/*!40000 ALTER TABLE `novtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outtb`
--

DROP TABLE IF EXISTS `outtb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outtb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `outtb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outtb`
--

LOCK TABLES `outtb` WRITE;
/*!40000 ALTER TABLE `outtb` DISABLE KEYS */;
/*!40000 ALTER TABLE `outtb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settb`
--

DROP TABLE IF EXISTS `settb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settb` (
  `id_nov` int NOT NULL AUTO_INCREMENT,
  `usuario_id` int NOT NULL,
  `saldo_inicial` decimal(10,2) DEFAULT '0.00',
  `saldo_flutuante` decimal(10,2) DEFAULT '0.00',
  `gastototal` decimal(10,2) DEFAULT '0.00',
  `gasto_essencial` decimal(10,2) DEFAULT '0.00',
  `gasto_naoessencial` decimal(10,2) DEFAULT '0.00',
  `mes` int NOT NULL,
  `ano` int NOT NULL,
  `data_gasto` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nov`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `settb_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settb`
--

LOCK TABLES `settb` WRITE;
/*!40000 ALTER TABLE `settb` DISABLE KEYS */;
INSERT INTO `settb` VALUES (1,1,0.00,0.00,0.00,0.00,0.00,11,2023,'2023-11-30 11:14:50');
/*!40000 ALTER TABLE `settb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `senha_usuario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Tome','123'),(2,'Tome2','123'),(3,'Tome3','123'),(4,'Tome4','123'),(5,'Jorgin','Tome23'),(6,'Jorginho','Tome123'),(7,'Maria','Vmbd2811');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07 10:49:52
