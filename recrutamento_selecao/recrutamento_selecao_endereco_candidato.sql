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
-- Table structure for table `endereco_candidato`
--

DROP TABLE IF EXISTS `endereco_candidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco_candidato` (
  `ID_Endereço` int NOT NULL AUTO_INCREMENT,
  `ID_Candidato` int NOT NULL,
  `Rua` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CEP` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Numero` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Estado` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Cidade` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bairro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Complemento` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_Endereço`),
  KEY `ID_Candidato` (`ID_Candidato`),
  CONSTRAINT `endereco_candidato_ibfk_1` FOREIGN KEY (`ID_Candidato`) REFERENCES `candidato` (`ID_Candidato`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco_candidato`
--

LOCK TABLES `endereco_candidato` WRITE;
/*!40000 ALTER TABLE `endereco_candidato` DISABLE KEYS */;
INSERT INTO `endereco_candidato` VALUES (1,1,'Rua das Acácias','01310-100','45','São Paulo','São Paulo','Bela Vista',NULL),(2,2,'Avenida Paulista','01311-200','1200','São Paulo','São Paulo','Jardim Paulista','Apto 82'),(3,3,'Rua Vergueiro','04101-300','78','São Paulo','São Paulo','Vila Mariana','Casa 2'),(4,4,'Rua dos Pinheiros','05422-010','321','São Paulo','São Paulo','Pinheiros',NULL),(5,5,'Alameda Santos','01419-100','560','São Paulo','São Paulo','Cerqueira César','Apto 31'),(6,6,'Rua Voluntários da Pátria','02010-000','88','São Paulo','São Paulo','Santana',NULL),(7,7,'Rua Marechal Deodoro','09020-240','200','São Paulo','Santo André','Centro','Apto 54'),(8,8,'Avenida Brasil','09190-615','415','São Paulo','Santo André','Jardim do Mar',NULL),(9,9,'Rua Sete de Setembro','09750-730','33','São Paulo','São Bernardo do Campo','Centro',NULL),(10,10,'Rua XV de Novembro','09530-100','150','São Paulo','São Caetano do Sul','Centro','Apto 12'),(11,11,'Rua Independência','06010-030','274','São Paulo','Osasco','Centro',NULL),(12,12,'Rua das Flores','07110-020','89','São Paulo','Guarulhos','Vila Galvão','Casa 1'),(13,13,'Avenida Tiradentes','07080-010','512','São Paulo','Guarulhos','Jardim Bom clima','Apto 23'),(14,14,'Rua Campos Sales','13010-150','67','São Paulo','Campinas','Centro',NULL),(15,15,'Rua José Paulino','13013-002','340','São Paulo','Campinas','Bonfim','Apto 07'),(16,16,'Avenida das Nações Unidas','04578-000','1400','São Paulo','São Paulo','Vila Gertrudes','Apto 101'),(17,17,'Rua Augusta','01305-100','230','São Paulo','São Paulo','Consolação',NULL),(18,18,'Rua Haddock Lobo','01414-001','595','São Paulo','São Paulo','Cerqueira César','Apto 62'),(19,19,'Rua Oscar Freire','01426-001','810','São Paulo','São Paulo','Jardins',NULL),(20,20,'Avenida Rebouças','05402-300','1750','São Paulo','São Paulo','Pinheiros','Apto 143'),(21,721,'Rua das Acácias','01311000','125','SP','São Paulo','Bela Vista','Apto 32'),(22,722,'Rua Monte Castelo','13015081','87','SP','Campinas','Centro',NULL),(23,723,'Rua dos Ipês','14025020','456','SP','Ribeirão Preto','Jardim Paulista','Casa'),(24,724,'Avenida Brasil','30140071','1020','MG','Belo Horizonte','Funcionários','Sala 5'),(25,725,'Rua das Palmeiras','80020000','78','PR','Curitiba','Centro',NULL),(26,726,'Rua João Pessoa','90040001','230','RS','Porto Alegre','Cidade Baixa','Apto 401'),(27,727,'Rua Santa Clara','22041011','315','RJ','Rio de Janeiro','Copacabana',NULL),(28,728,'Rua XV de Novembro','89010001','90','SC','Blumenau','Centro','Fundos'),(29,729,'Rua dos Girassóis','74810020','155','GO','Goiânia','Setor Bueno',NULL),(30,730,'Avenida Atlântica','57035000','450','AL','Maceió','Jatiúca','Apto 801'),(31,731,'Rua Maranhão','65010000','120','MA','São Luís','Centro',NULL),(32,732,'Rua das Flores','64000010','89','PI','Teresina','Centro','Casa'),(33,733,'Avenida Paulista','01310100','1578','SP','São Paulo','Bela Vista','Apto 1204'),(34,734,'Rua Ceará','30150120','220','MG','Belo Horizonte','Savassi',NULL),(35,735,'Rua Amazonas','69005010','330','AM','Manaus','Centro','Bloco B'),(36,736,'Rua Almirante Barroso','66010000','480','PA','Belém','Campina',NULL),(37,737,'Rua Prudente de Moraes','59020000','92','RN','Natal','Petrópolis','Casa'),(38,738,'Rua Tiradentes','79002000','145','MS','Campo Grande','Centro',NULL),(39,739,'Avenida Beira Mar','60165120','870','CE','Fortaleza','Meireles','Apto 702'),(40,740,'Rua Sete de Setembro','88010020','110','SC','Florianópolis','Centro',NULL),(41,741,'Rua José Bonifácio','11013001','55','SP','Santos','Centro',NULL),(42,742,'Rua das Oliveiras','12245010','301','SP','São José dos Campos','Jardim Aquarius','Apto 23'),(43,743,'Rua Dom Pedro II','69010120','190','AM','Manaus','Adrianópolis',NULL),(44,744,'Avenida Paraná','86010000','640','PR','Londrina','Centro','Sala 2'),(45,745,'Rua Boa Vista','50070000','88','PE','Recife','Boa Vista',NULL),(46,746,'Rua Sergipe','49010000','120','SE','Aracaju','Centro','Casa'),(47,747,'Rua Bahia','69900010','75','AC','Rio Branco','Bosque',NULL),(48,748,'Avenida das Flores','77001000','200','TO','Palmas','Plano Diretor Sul','Apto 15'),(49,749,'Rua Marechal Deodoro','79002010','180','MS','Campo Grande','Amambaí',NULL),(50,750,'Rua Padre Anchieta','95010000','500','RS','Caxias do Sul','Centro','Bloco A'),(51,751,'Rua Rio Branco','69915000','140','AC','Cruzeiro do Sul','Centro',NULL),(52,752,'Avenida Independência','38400000','750','MG','Uberlândia','Centro','Apto 202'),(53,753,'Rua Pernambuco','79005000','320','MS','Campo Grande','Jardim dos Estados',NULL),(54,754,'Rua das Camélias','29100000','65','ES','Vila Velha','Praia da Costa',NULL),(55,755,'Avenida Central','64001000','420','PI','Teresina','Fátima','Casa'),(56,756,'Rua do Comércio','66013000','250','PA','Belém','Reduto',NULL),(57,757,'Rua São Jorge','29101000','145','ES','Vila Velha','Itapuã','Fundos'),(58,758,'Rua dos Lírios','89801000','97','SC','Chapecó','Centro',NULL),(59,759,'Avenida Getúlio Vargas','89802000','1200','SC','Chapecó','Presidente Médici','Apto 110'),(60,760,'Rua Pedro Álvares Cabral','44002000','175','BA','Feira de Santana','Centro',NULL),(61,761,'Rua dos Cravos','44003000','210','BA','Feira de Santana','Kalilândia','Casa'),(62,762,'Avenida Vitória','29010000','850','ES','Vitória','Centro',NULL),(63,763,'Rua São Bento','65015000','70','MA','São Luís','Cohama','Apto 301'),(64,764,'Rua Coronel Oliveira','57020000','99','AL','Maceió','Farol',NULL),(65,765,'Rua das Hortênsias','76801000','130','RO','Porto Velho','Centro','Casa'),(66,766,'Avenida Norte Sul','76802000','550','RO','Porto Velho','Embratel',NULL),(67,767,'Rua Goiás','74015000','260','GO','Goiânia','Setor Central','Apto 404'),(68,768,'Rua Tocantins','74020000','310','GO','Goiânia','Setor Oeste',NULL),(69,769,'Avenida das Nações','79031000','780','MS','Campo Grande','Santa Fé','Bloco C'),(70,770,'Rua das Magnólias','89201000','115','SC','Joinville','América',NULL);
/*!40000 ALTER TABLE `endereco_candidato` ENABLE KEYS */;
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
