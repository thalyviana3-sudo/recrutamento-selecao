CREATE DATABASE  IF NOT EXISTS `endomarketing` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `endomarketing`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: endomarketing
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `ciclo_pesquisa`
--

DROP TABLE IF EXISTS `ciclo_pesquisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciclo_pesquisa` (
  `ID_CICLO` int NOT NULL AUTO_INCREMENT,
  `DESCRICAO` varchar(100) NOT NULL COMMENT 'Ex: Pesquisa de Clima 1S/2025',
  `SEMESTRE` enum('1S','2S') NOT NULL,
  `ANO` year NOT NULL,
  `DATA_INICIO` date NOT NULL,
  `DATA_FIM` date NOT NULL,
  `STATUS` enum('Planejado','Aberto','Encerrado') NOT NULL DEFAULT 'Planejado',
  PRIMARY KEY (`ID_CICLO`),
  UNIQUE KEY `uq_ciclo_semestre_ano` (`SEMESTRE`,`ANO`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Edições semestrais da pesquisa de clima organizacional';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciclo_pesquisa`
--

LOCK TABLES `ciclo_pesquisa` WRITE;
/*!40000 ALTER TABLE `ciclo_pesquisa` DISABLE KEYS */;
INSERT INTO `ciclo_pesquisa` VALUES (1,'Pesquisa de Clima 1S/2020','1S',2020,'2020-01-15','2020-06-30','Encerrado'),(2,'Pesquisa de Clima 2S/2020','2S',2020,'2020-07-01','2020-12-15','Encerrado'),(3,'Pesquisa de Clima 1S/2021','1S',2021,'2021-01-15','2021-06-30','Encerrado'),(4,'Pesquisa de Clima 2S/2021','2S',2021,'2021-07-01','2021-12-15','Encerrado'),(5,'Pesquisa de Clima 1S/2022','1S',2022,'2022-01-15','2022-06-30','Encerrado'),(6,'Pesquisa de Clima 2S/2022','2S',2022,'2022-07-01','2022-12-15','Encerrado'),(7,'Pesquisa de Clima 1S/2023','1S',2023,'2023-01-15','2023-06-30','Encerrado'),(8,'Pesquisa de Clima 2S/2023','2S',2023,'2023-07-01','2023-12-15','Encerrado'),(9,'Pesquisa de Clima 1S/2024','1S',2024,'2024-01-15','2024-06-30','Encerrado'),(10,'Pesquisa de Clima 2S/2024','2S',2024,'2024-07-01','2024-12-15','Encerrado'),(11,'Pesquisa de Clima 1S/2025','1S',2025,'2025-01-15','2025-06-30','Encerrado'),(12,'Pesquisa de Clima 2S/2025','2S',2025,'2025-07-01','2025-12-15','Encerrado'),(13,'Pesquisa de Clima 1S/2026','1S',2026,'2026-01-15','2026-05-12','Encerrado');
/*!40000 ALTER TABLE `ciclo_pesquisa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-23 18:35:32
