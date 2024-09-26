CREATE DATABASE  IF NOT EXISTS `ambiental_victoria_tiago` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ambiental_victoria_tiago`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ambiental_victoria_tiago
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `jogador`
--

DROP TABLE IF EXISTS `jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogador` (
  `codJogador` int NOT NULL AUTO_INCREMENT,
  `NomeJogador` varchar(100) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  PRIMARY KEY (`codJogador`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogador`
--

LOCK TABLES `jogador` WRITE;
/*!40000 ALTER TABLE `jogador` DISABLE KEYS */;
INSERT INTO `jogador` VALUES (1,'João Victor','202211987003'),(2,'Paola Vieira','20201398887'),(3,'Isabela Magalhaes','2023199987'),(4,'Tiago Masaro','20231190056'),(5,'Priscila Santos','20191100432'),(6,'Victoria Caixeta','20157680009');
/*!40000 ALTER TABLE `jogador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jogo`
--

DROP TABLE IF EXISTS `jogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogo` (
  `codJogo` int NOT NULL AUTO_INCREMENT,
  `dataJogo` date NOT NULL,
  `pontuacaoFinal` varchar(45) DEFAULT NULL,
  `jogador_codJogador` int NOT NULL,
  PRIMARY KEY (`codJogo`,`jogador_codJogador`),
  KEY `fk_Jogo_jogador1_idx` (`jogador_codJogador`),
  CONSTRAINT `fk_Jogo_jogador1` FOREIGN KEY (`jogador_codJogador`) REFERENCES `jogador` (`codJogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogo`
--

LOCK TABLES `jogo` WRITE;
/*!40000 ALTER TABLE `jogo` DISABLE KEYS */;
/*!40000 ALTER TABLE `jogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niveis`
--

DROP TABLE IF EXISTS `niveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `niveis` (
  `codNivel` int NOT NULL AUTO_INCREMENT,
  `tipoNivel` varchar(45) NOT NULL,
  `chancesPossiveis` int NOT NULL,
  PRIMARY KEY (`codNivel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveis`
--

LOCK TABLES `niveis` WRITE;
/*!40000 ALTER TABLE `niveis` DISABLE KEYS */;
INSERT INTO `niveis` VALUES (1,'Fácil',10),(2,'Médio',5),(3,'DiFícil',3);
/*!40000 ALTER TABLE `niveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pergunta` (
  `codPergunta` int NOT NULL AUTO_INCREMENT,
  `descricao` varchar(500) NOT NULL,
  `resposta` varchar(100) NOT NULL,
  PRIMARY KEY (`codPergunta`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta`
--

LOCK TABLES `pergunta` WRITE;
/*!40000 ALTER TABLE `pergunta` DISABLE KEYS */;
INSERT INTO `pergunta` VALUES (1,'Qual cor é utilizada em reciclagem para indicar o depósito de papel?','Azul'),(2,'Qual o nome da atividade legal que visa alimentar o caçador e sua família?','Caça de subsistência'),(3,'Qual é o principal elemento químico da chuva ácida? ','Dióxido de Enxofre'),(4,'Como se classificam os animais que não vivem em liberdade, portanto, sofrem modificações do seu hábitat natural?','Domésticos'),(5,'Como se chama o grupo de animais de uma região? ','Fauna'),(6,'Como se chama as espécies vegetais de uma região? ','Flora'),(7,'Qual o nome do gás poluente inodoro, incolor e produzido pela queima incompleta de combustível cujo a característica é ser portador de Carbono?','Monóxido de Carbono'),(8,'Qual é o poluente que nos ecossistemas atua como fator de desequilíbrio, pois eliminam não somente as pragas, mas os seres vivos que não atacam as agriculturas?','Pesticidas'),(9,'Qual o poluente, advindo das camadas profundas do oceano, que ao ser despejado no meio ambiente produz uma lâmina que impede a oxigenação da água?','Petróleo'),(10,'Qual o nome dado à alteração desfavorável do meio ambiente pelos subprodutos e resíduos resultantes da atividade humana?','Poluição Ambiental'),(11,'Qual nome recebe os atos que despejam esgotos quentes e que elevam a temperatura dos rios e lagos?','Poluição Térmica'),(12,'Qual é o nome da poluição proveniente das usinas nucleares? ','Radiativa'),(13,'De acordo com a proteção ambiental, como são classificados os animais que vivem em liberdade, ou seja, fora do cativeiro?','Silvestres'),(14,'Qual cor é utilizada em reciclagem para indicar o depósito de vidro? ','Verde'),(15,'Qual cor é utilizada em reciclagem para indicar o depósito de plástico? ','Vermelho');
/*!40000 ALTER TABLE `pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rodada`
--

DROP TABLE IF EXISTS `rodada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rodada` (
  `codRodada` int NOT NULL AUTO_INCREMENT,
  `pontuacaoRodada` varchar(45) DEFAULT NULL,
  `quantRodadas` varchar(45) NOT NULL,
  `Jogo_codJogo` int NOT NULL,
  `niveis_codNivel` int NOT NULL,
  `pergunta_codPergunta` int NOT NULL,
  PRIMARY KEY (`codRodada`,`Jogo_codJogo`,`niveis_codNivel`,`pergunta_codPergunta`),
  KEY `fk_Rodada_Jogo1_idx` (`Jogo_codJogo`),
  KEY `fk_Rodada_niveis1_idx` (`niveis_codNivel`),
  KEY `fk_Rodada_pergunta1_idx` (`pergunta_codPergunta`),
  CONSTRAINT `fk_Rodada_Jogo1` FOREIGN KEY (`Jogo_codJogo`) REFERENCES `jogo` (`codJogo`),
  CONSTRAINT `fk_Rodada_niveis1` FOREIGN KEY (`niveis_codNivel`) REFERENCES `niveis` (`codNivel`),
  CONSTRAINT `fk_Rodada_pergunta1` FOREIGN KEY (`pergunta_codPergunta`) REFERENCES `pergunta` (`codPergunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rodada`
--

LOCK TABLES `rodada` WRITE;
/*!40000 ALTER TABLE `rodada` DISABLE KEYS */;
/*!40000 ALTER TABLE `rodada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ambiental_victoria_tiago'
--

--
-- Dumping routines for database 'ambiental_victoria_tiago'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26 10:42:06
