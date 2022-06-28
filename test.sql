-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user1',NULL,'user1@mail.ru','$2b$05$rnTmLTYLNCe40zI5rChxB.OIj/iUIFj2L4ZWWS2NT9kIrLXTwt7Iy',NULL,NULL,'2022-06-28 00:38:17','2022-06-28 00:38:17'),(2,'user2',NULL,'user2@mail.ru','$2b$05$mvbXyBZNXFspsmUWOOkqieLVhzMWJ7CHISU3ej/f.aGtK0o/NBUYG',NULL,NULL,'2022-06-28 00:38:24','2022-06-28 00:38:24'),(3,'user3',NULL,'user3@mail.ru','$2b$05$E9H3CP4eVLlLBNlJNFh.fue26HdMlJQSk5zB2OmP6eSqQ8Vp7YTYu',NULL,NULL,'2022-06-28 00:38:30','2022-06-28 00:38:30'),(4,'user4',NULL,'user4@mail.ru','$2b$05$L.uxuqxEahDvIUKQK2720uGp1gzBtaChUNuadMTXghOby4RE7wm8W',NULL,NULL,'2022-06-28 00:38:35','2022-06-28 00:38:35'),(5,'user5',NULL,'user@mail.ru5','$2b$05$41DI235hbNI..sNJo2c1jOB4KRy5HF/osGSPD0BelAC2zAonvWaIu',NULL,NULL,'2022-06-28 00:38:40','2022-06-28 00:38:40'),(6,'user6',NULL,'user@mail.ru6','$2b$05$TPAG1m2gCoda/wAty70kp.pDFM3NFKFUqYKC4FLuytjFTc95qLxq.',NULL,NULL,'2022-06-28 00:38:43','2022-06-28 00:38:43'),(7,'user7',NULL,'user@mail.ru7','$2b$05$MzJ4YeQB2hznNsLZVgfPku/1GwpwVNP7eM512MYhpwh.fcmCxKQHK',NULL,NULL,'2022-06-28 00:38:47','2022-06-28 00:38:47'),(8,'user8',NULL,'user@mail.ru8','$2b$05$dbkboEcYdEBfl2iIWMA8wuNIV5WepiPbcotIvzBP2GBqO9EG1MSkK',NULL,NULL,'2022-06-28 00:38:51','2022-06-28 00:38:51'),(9,'user9',NULL,'user@mail.ru9','$2b$05$oWMyml4hSweID/0yBpE4ReeynSl0i8covFt/Fgr6a8uRvjwpvy1qe',NULL,NULL,'2022-06-28 00:38:56','2022-06-28 00:38:56'),(10,'user10','mylastname2','user@mail.ru10','$2b$05$DQSaYaRgI8dP6Bg0U6tHWul3s9.PZpr0ebVceKFMuU9Wh2i0r.gK.',NULL,'5c77a869-35a0-4436-bcd0-139e46e76c00.jpg','2022-06-28 00:39:02','2022-06-28 00:43:44'),(11,'user11','mylastname','user@mail.ru11','$2b$05$U6ZSqQzFf9g7a0jz4XEdxuRX31KEjO9/1zRgB5PD.B.kqa1eWzWJq',1,'d22016ed-a78e-40d6-ac10-e88a38854588.jpg','2022-06-28 00:39:05','2022-06-28 00:43:37'),(12,'user12',NULL,'user@mail.ru12','$2b$05$5EV1XQl2CBs.kW1gp.jnOesytB6xQD6E.3DDCxFoSgUbCn1q39dZm',NULL,NULL,'2022-06-28 00:39:10','2022-06-28 00:39:10');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'test'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-28  4:55:17
