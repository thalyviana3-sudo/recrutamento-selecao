CREATE DATABASE  IF NOT EXISTS `cadastro_geral` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro_geral`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro_geral
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
-- Table structure for table `gestor`
--

DROP TABLE IF EXISTS `gestor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gestor` (
  `ID_Gestor` int NOT NULL AUTO_INCREMENT,
  `Nome_Gestor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email_Gestor` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Telefone_Gestor` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ID_Departamento` int NOT NULL,
  PRIMARY KEY (`ID_Gestor`),
  UNIQUE KEY `Email_Gestor` (`Email_Gestor`),
  KEY `gestor_ibfk_1` (`ID_Departamento`),
  CONSTRAINT `gestor_ibfk_1` FOREIGN KEY (`ID_Departamento`) REFERENCES `departamento` (`ID_Departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gestor`
--

LOCK TABLES `gestor` WRITE;
/*!40000 ALTER TABLE `gestor` DISABLE KEYS */;
INSERT INTO `gestor` VALUES (1,'Ricardo Mendes','ricardo.mendes@empresa.com','(11) 99871-4521',1),(2,'Patricia Souza','patricia.souza@empresa.com','(11) 99765-8821',2),(3,'Lucas Ferreira','lucas.ferreira@empresa.com','(11) 99654-1187',2),(4,'Mariana Costa','mariana.costa@empresa.com','(11) 99587-2241',4),(5,'Eduardo Lima','eduardo.lima@empresa.com','(11) 99471-3352',3),(6,'Camila Rocha','camila.rocha@empresa.com','(11) 99328-7714',3),(7,'Juliana Ribeiro','juliana.ribeiro@empresa.com','(11) 99217-4458',7),(8,'Felipe Martins','felipe.martins@empresa.com','(11) 99184-7731',8),(9,'Aline Gomes','aline.gomes@empresa.com','(11) 99075-6612',6),(10,'Debora Vieira','debora.vieira@empresa.com','(11) 98586-2342',5);
/*!40000 ALTER TABLE `gestor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-23 18:35:31
