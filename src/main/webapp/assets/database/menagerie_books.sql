-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: menagerie
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `isbn` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_general_ci,
  `year` int DEFAULT NULL,
  `author` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `publisher` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(190) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'9231287','The Color of Death',1991,'Trey Gowdy','Christopher Greyson ','https://m.media-amazon.com/images/I/81u5JEelmVL._SY425_.jpg','2025-10-08 00:21:40',NULL,NULL),(2,'9343456','May the Wolf Die',2001,' Elizabeth Heider','Paperback','https://m.media-amazon.com/images/I/91fK3kIfJYL._SY425_.jpg','2025-10-08 00:24:40',NULL,NULL),(3,'9329933','Cry Wolf',2004,'Tami Hoag','Paperback','https://m.media-amazon.com/images/I/71t35LelLaL._SY522_.jpg','2025-10-08 00:24:40',NULL,NULL),(4,'0862345','Lucky\'s Lady',2018,' Tami Hoag','Paperback','https://m.media-amazon.com/images/I/81AP4-ysaHL._SY522_.jpg','2025-10-08 00:31:14',NULL,NULL),(5,'9234566','Big Cherry Holler',2002,' Adriana Trigiani','Paperback','https://m.media-amazon.com/images/I/71MK4NZJT+L._SY425_.jpg','2025-10-08 00:31:14',NULL,NULL),(11,'1401201000','The Frozen River',2024,'Ariel Lawhon','Paperback','https://m.media-amazon.com/images/I/91ulu+khYLL._SY425_.jpg','2025-10-08 15:35:33',NULL,NULL),(22,'66','66',66,'66','66','poster.png','2025-11-09 14:56:39',NULL,NULL),(31,'999','999',999,'999','99','poster.png','2025-11-09 15:10:43',NULL,NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-10 21:06:34
