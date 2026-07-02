CREATE DATABASE  IF NOT EXISTS `treinamento` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `treinamento`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: treinamento
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
-- Table structure for table `treinamento`
--

DROP TABLE IF EXISTS `treinamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treinamento` (
  `ID_TREINAMENTO` int NOT NULL DEFAULT '0',
  `NOME_TREINAMENTO` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MODALIDADE` enum('Presencial','EAD','Híbrido') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CATEGORIA` enum('Técnico','Comportamental','Liderança','Compliance','Segurança','Onboarding','Idiomas') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CARGA_HORARIA` int NOT NULL COMMENT 'em horas',
  `FORNECEDOR` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CUSTO_UNITARIO` decimal(10,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treinamento`
--

LOCK TABLES `treinamento` WRITE;
/*!40000 ALTER TABLE `treinamento` DISABLE KEYS */;
INSERT INTO `treinamento` VALUES (1,'Excel Avançado','EAD','Técnico',16,'Alura',350.00),(2,'Power BI para Negócios','EAD','Técnico',20,'Alura',450.00),(3,'Comunicação Assertiva','Presencial','Comportamental',8,'Dale Carnegie',800.00),(4,'Liderança e Gestão de Pessoas','Presencial','Liderança',24,'FGV',1800.00),(5,'LGPD e Proteção de Dados','EAD','Compliance',4,'Interno',0.00),(6,'Segurança da Informação','EAD','Segurança',6,'Interno',0.00),(7,'Inglês Corporativo','Híbrido','Idiomas',40,'CNA',2200.00),(8,'Scrum e Agile','EAD','Técnico',8,'Udemy',150.00),(9,'Onboarding Corporativo','Presencial','Onboarding',16,'Interno',0.00),(10,'Gestão de Conflitos','Presencial','Comportamental',8,'Dale Carnegie',750.00),(11,'Python para Análise de Dados','EAD','Técnico',30,'Alura',500.00),(12,'Feedback e Desenvolvimento','Híbrido','Liderança',12,'FGV',1200.00),(13,'Primeiros Socorros','Presencial','Segurança',8,'SESI',300.00),(14,'Gestão de Projetos PMP','Híbrido','Técnico',40,'PMI',2500.00),(15,'Diversidade e Inclusão','EAD','Comportamental',4,'Interno',0.00),(16,'SQL e Banco de Dados','EAD','Técnico',20,'Alura',400.00),(17,'Gestão Financeira','Presencial','Técnico',16,'IBMEC',1400.00),(18,'Marketing Digital','EAD','Técnico',24,'Rock Content',600.00),(19,'Apresentações de Impacto','Presencial','Comportamental',8,'Interno',200.00),(20,'Cloud Computing AWS','EAD','Técnico',32,'AWS Training',900.00),(1,'Excel Avançado','EAD','Técnico',16,'Alura',350.00),(2,'Power BI para Negócios','EAD','Técnico',20,'Alura',450.00),(3,'Comunicação Assertiva','Presencial','Comportamental',8,'Dale Carnegie',800.00),(4,'Liderança e Gestão de Pessoas','Presencial','Liderança',24,'FGV',1800.00),(5,'LGPD e Proteção de Dados','EAD','Compliance',4,'Interno',0.00),(6,'Segurança da Informação','EAD','Segurança',6,'Interno',0.00),(7,'Inglês Corporativo','Híbrido','Idiomas',40,'CNA',2200.00),(8,'Scrum e Agile','EAD','Técnico',8,'Udemy',150.00),(9,'Onboarding Corporativo','Presencial','Onboarding',16,'Interno',0.00),(10,'Gestão de Conflitos','Presencial','Comportamental',8,'Dale Carnegie',750.00),(11,'Python para Análise de Dados','EAD','Técnico',30,'Alura',500.00),(12,'Feedback e Desenvolvimento','Híbrido','Liderança',12,'FGV',1200.00),(13,'Primeiros Socorros','Presencial','Segurança',8,'SESI',300.00),(14,'Gestão de Projetos PMP','Híbrido','Técnico',40,'PMI',2500.00),(15,'Diversidade e Inclusão','EAD','Comportamental',4,'Interno',0.00),(16,'SQL e Banco de Dados','EAD','Técnico',20,'Alura',400.00),(17,'Gestão Financeira','Presencial','Técnico',16,'IBMEC',1400.00),(18,'Marketing Digital','EAD','Técnico',24,'Rock Content',600.00),(19,'Apresentações de Impacto','Presencial','Comportamental',8,'Interno',200.00),(20,'Cloud Computing AWS','EAD','Técnico',32,'AWS Training',900.00);
/*!40000 ALTER TABLE `treinamento` ENABLE KEYS */;
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
