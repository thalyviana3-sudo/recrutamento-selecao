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
-- Table structure for table `pergunta_pesquisa`
--

DROP TABLE IF EXISTS `pergunta_pesquisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pergunta_pesquisa` (
  `ID_PERGUNTA` int NOT NULL AUTO_INCREMENT,
  `ENUNCIADO` varchar(300) NOT NULL,
  `CATEGORIA` enum('Liderança','Comunicação','Bem-estar','Reconhecimento','Desenvolvimento','Cultura e Valores','Condições de Trabalho') NOT NULL,
  `ORDEM` tinyint NOT NULL DEFAULT '1' COMMENT 'Ordem de exibição no formulário',
  `STATUS` enum('Ativa','Inativa') NOT NULL DEFAULT 'Ativa',
  PRIMARY KEY (`ID_PERGUNTA`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Banco de perguntas reutilizáveis entre ciclos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta_pesquisa`
--

LOCK TABLES `pergunta_pesquisa` WRITE;
/*!40000 ALTER TABLE `pergunta_pesquisa` DISABLE KEYS */;
INSERT INTO `pergunta_pesquisa` VALUES (1,'Meu gestor me dá feedbacks claros e construtivos.','Liderança',1,'Ativa'),(2,'Sinto que meu gestor reconhece meu trabalho e esforço.','Liderança',2,'Ativa'),(3,'Meu gestor está disponível quando preciso de apoio.','Liderança',3,'Ativa'),(4,'As informações importantes da empresa chegam até mim de forma clara.','Comunicação',4,'Ativa'),(5,'Me sinto ouvido(a) quando expresso minhas opiniões.','Comunicação',5,'Ativa'),(6,'Há transparência sobre decisões que impactam meu trabalho.','Comunicação',6,'Ativa'),(7,'Minha carga de trabalho é compatível com o tempo disponível.','Bem-estar',7,'Ativa'),(8,'O ambiente de trabalho favorece minha saúde mental.','Bem-estar',8,'Ativa'),(9,'Consigo equilibrar bem minha vida profissional e pessoal.','Bem-estar',9,'Ativa'),(10,'Sinto que sou reconhecido(a) pelo resultado que entrego.','Reconhecimento',10,'Ativa'),(11,'A remuneração e os benefícios são compatíveis com o mercado.','Reconhecimento',11,'Ativa'),(12,'Tenho oportunidades de crescimento e desenvolvimento na empresa.','Desenvolvimento',12,'Ativa'),(13,'Os treinamentos oferecidos contribuem para minha evolução profissional.','Desenvolvimento',13,'Ativa'),(14,'Vejo perspectiva de evolução de carreira aqui.','Desenvolvimento',14,'Ativa'),(15,'Os valores da empresa refletem a forma como trabalhamos no dia a dia.','Cultura e Valores',15,'Ativa'),(16,'Me sinto parte de um time colaborativo e respeitoso.','Cultura e Valores',16,'Ativa'),(17,'Tenho as ferramentas e recursos necessários para realizar bem meu trabalho.','Condições de Trabalho',17,'Ativa'),(18,'O espaço ou modalidade de trabalho (presencial/home office) atende minhas necessidades.','Condições de Trabalho',18,'Ativa');
/*!40000 ALTER TABLE `pergunta_pesquisa` ENABLE KEYS */;
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
