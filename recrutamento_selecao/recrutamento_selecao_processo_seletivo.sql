CREATE DATABASE  IF NOT EXISTS `recrutamento_selecao` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recrutamento_selecao`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: recrutamento_selecao
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
-- Table structure for table `processo_seletivo`
--

DROP TABLE IF EXISTS `processo_seletivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `processo_seletivo` (
  `ID_Processo` int NOT NULL AUTO_INCREMENT,
  `ID_Vaga` int NOT NULL,
  `ID_Candidato` int NOT NULL,
  `Data_Candidatura_Candidato` date NOT NULL,
  `Fase_Processo_Seletivo` enum('Candidatura','Triagem','Entrevista RH','Entrevista Gestor','Proposta') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Data_Entrevista_RH` date DEFAULT NULL,
  `Data_Entrevista_Gestor` date DEFAULT NULL,
  `Status_Candidato` enum('Em Processo','Aprovado','Reprovado','Contratado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `Fonte_Recrutamento` enum('LinkedIn','Catho','PandaPé','Interno') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID_Processo`),
  UNIQUE KEY `ID_Vaga` (`ID_Vaga`,`ID_Candidato`),
  KEY `ID_Candidato` (`ID_Candidato`),
  CONSTRAINT `processo_seletivo_ibfk_1` FOREIGN KEY (`ID_Candidato`) REFERENCES `candidato` (`ID_Candidato`),
  CONSTRAINT `processo_seletivo_ibfk_2` FOREIGN KEY (`ID_Vaga`) REFERENCES `vaga` (`ID_Vaga`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `processo_seletivo`
--

LOCK TABLES `processo_seletivo` WRITE;
/*!40000 ALTER TABLE `processo_seletivo` DISABLE KEYS */;
INSERT INTO `processo_seletivo` VALUES (80,38,1,'2025-01-12','Proposta','2025-01-20','2025-01-27','Contratado','LinkedIn'),(81,38,2,'2025-01-12','Entrevista RH','2025-01-20',NULL,'Reprovado','Catho'),(82,38,4,'2025-01-13','Triagem',NULL,NULL,'Reprovado','PandaPé'),(83,39,2,'2025-02-07','Proposta','2025-02-15','2025-02-22','Contratado','Catho'),(84,39,3,'2025-02-07','Entrevista Gestor','2025-02-15','2025-02-20','Reprovado','LinkedIn'),(85,39,5,'2025-02-08','Triagem',NULL,NULL,'Reprovado','PandaPé'),(86,40,4,'2025-02-17','Proposta','2025-02-25','2025-03-04','Contratado','PandaPé'),(87,40,12,'2025-02-17','Entrevista RH','2025-02-25',NULL,'Reprovado','LinkedIn'),(88,40,13,'2025-02-18','Triagem',NULL,NULL,'Reprovado','Catho'),(89,41,5,'2025-03-03','Proposta','2025-03-10','2025-03-17','Contratado','LinkedIn'),(90,41,3,'2025-03-03','Entrevista Gestor','2025-03-10','2025-03-14','Reprovado','LinkedIn'),(91,41,7,'2025-03-04','Entrevista RH','2025-03-11',NULL,'Reprovado','Catho'),(92,42,6,'2025-03-12','Proposta','2025-03-20','2025-03-27','Contratado','Catho'),(93,42,9,'2025-03-12','Entrevista RH','2025-03-20',NULL,'Reprovado','PandaPé'),(94,42,15,'2025-03-13','Triagem',NULL,NULL,'Reprovado','Interno'),(95,43,7,'2025-04-03','Entrevista Gestor','2025-04-10','2025-04-17','Em Processo','LinkedIn'),(96,43,10,'2025-04-03','Entrevista RH','2025-04-10',NULL,'Reprovado','Catho'),(97,43,8,'2025-04-04','Triagem',NULL,NULL,'Reprovado','LinkedIn'),(98,48,14,'2025-05-07','Entrevista RH','2025-05-14',NULL,'Em Processo','Interno'),(99,48,15,'2025-05-07','Triagem',NULL,NULL,'Reprovado','PandaPé'),(100,48,20,'2025-05-08','Candidatura',NULL,NULL,'Reprovado','LinkedIn'),(101,44,9,'2025-04-12','Triagem',NULL,NULL,'Em Processo','PandaPé'),(102,44,6,'2025-04-12','Candidatura',NULL,NULL,'Reprovado','Catho'),(103,44,15,'2025-04-13','Candidatura',NULL,NULL,'Reprovado','Interno'),(104,45,10,'2025-04-17','Triagem',NULL,NULL,'Em Processo','LinkedIn'),(105,45,8,'2025-04-17','Candidatura',NULL,NULL,'Reprovado','LinkedIn'),(106,45,17,'2025-04-18','Candidatura',NULL,NULL,'Reprovado','Catho'),(107,46,11,'2025-04-22','Entrevista RH','2025-04-29',NULL,'Em Processo','Interno'),(108,46,12,'2025-04-22','Triagem',NULL,NULL,'Reprovado','LinkedIn'),(109,46,20,'2025-04-23','Candidatura',NULL,NULL,'Reprovado','PandaPé'),(110,47,13,'2025-05-03','Candidatura',NULL,NULL,'Em Processo','PandaPé'),(111,47,12,'2025-05-03','Candidatura',NULL,NULL,'Reprovado','Catho'),(112,47,19,'2025-05-04','Candidatura',NULL,NULL,'Reprovado','Interno'),(113,49,16,'2025-05-12','Triagem',NULL,NULL,'Em Processo','LinkedIn'),(114,49,17,'2025-05-12','Candidatura',NULL,NULL,'Reprovado','Catho'),(115,49,20,'2025-05-13','Candidatura',NULL,NULL,'Reprovado','PandaPé'),(116,50,18,'2025-05-17','Entrevista RH','2025-05-21',NULL,'Em Processo','Catho'),(117,50,19,'2025-05-17','Triagem',NULL,NULL,'Reprovado','LinkedIn'),(118,50,3,'2025-05-18','Candidatura',NULL,NULL,'Reprovado','Interno'),(119,48,741,'2025-07-10','Triagem',NULL,NULL,'Em Processo','LinkedIn'),(120,48,742,'2025-07-10','Entrevista RH','2025-07-17',NULL,'Em Processo','Catho'),(121,49,743,'2025-07-12','Proposta','2025-07-19','2025-07-26','Contratado','PandaPé'),(122,49,744,'2025-07-12','Triagem',NULL,NULL,'Reprovado','LinkedIn'),(123,50,745,'2025-07-15','Proposta','2025-07-22','2025-07-29','Contratado','Interno'),(124,50,746,'2025-07-15','Candidatura',NULL,NULL,'Reprovado','Catho'),(125,51,747,'2025-07-18','Entrevista RH','2025-07-25',NULL,'Em Processo','LinkedIn'),(126,51,748,'2025-07-18','Triagem',NULL,NULL,'Reprovado','PandaPé'),(127,52,749,'2025-07-20','Entrevista Gestor','2025-07-27','2025-08-03','Aprovado','LinkedIn'),(128,52,750,'2025-07-20','Triagem',NULL,NULL,'Reprovado','Catho'),(129,53,751,'2025-07-22','Proposta','2025-07-29','2025-08-05','Contratado','Interno'),(130,53,752,'2025-07-22','Candidatura',NULL,NULL,'Reprovado','PandaPé'),(131,54,753,'2025-07-25','Entrevista RH','2025-08-01',NULL,'Em Processo','LinkedIn'),(132,54,754,'2025-07-25','Triagem',NULL,NULL,'Reprovado','Catho'),(133,55,755,'2025-07-28','Entrevista Gestor','2025-08-04','2025-08-11','Aprovado','LinkedIn'),(134,55,756,'2025-07-28','Triagem',NULL,NULL,'Reprovado','PandaPé'),(135,56,757,'2025-08-01','Proposta','2025-08-08','2025-08-15','Contratado','Interno'),(136,56,758,'2025-08-01','Candidatura',NULL,NULL,'Reprovado','Catho'),(137,57,759,'2025-08-03','Entrevista RH','2025-08-10',NULL,'Em Processo','LinkedIn'),(138,57,760,'2025-08-03','Triagem',NULL,NULL,'Reprovado','PandaPé'),(139,58,761,'2025-08-05','Proposta','2025-08-12','2025-08-19','Contratado','LinkedIn'),(140,58,762,'2025-08-05','Triagem',NULL,NULL,'Reprovado','Catho'),(141,59,763,'2025-08-08','Proposta','2025-08-15','2025-08-22','Contratado','Interno'),(142,59,764,'2025-08-08','Candidatura',NULL,NULL,'Reprovado','PandaPé'),(143,60,765,'2025-08-10','Entrevista RH','2025-08-17',NULL,'Em Processo','LinkedIn'),(144,60,766,'2025-08-10','Triagem',NULL,NULL,'Reprovado','Catho'),(145,61,767,'2025-08-12','Proposta','2025-08-19','2025-08-26','Contratado','LinkedIn'),(146,61,768,'2025-08-12','Triagem',NULL,NULL,'Reprovado','PandaPé'),(147,62,769,'2025-08-15','Proposta','2025-08-22','2025-08-29','Contratado','Interno'),(148,62,770,'2025-08-15','Candidatura',NULL,NULL,'Reprovado','Catho');
/*!40000 ALTER TABLE `processo_seletivo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-23 18:35:33
