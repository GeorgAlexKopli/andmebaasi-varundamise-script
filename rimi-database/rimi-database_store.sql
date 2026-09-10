-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: rimi-database
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addressId` int NOT NULL,
  `managerId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Store_addressId_fkey` (`addressId`),
  KEY `Store_managerId_fkey` (`managerId`),
  CONSTRAINT `Store_addressId_fkey` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Store_managerId_fkey` FOREIGN KEY (`managerId`) REFERENCES `employee` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'Luise 3','retail',1,1),(2,'Lehola 828','retail',3,2),(3,'N. Lunini tänav 114','retail',5,3),(4,'Vormsi 666','retail',7,4),(5,'Kuldtiiva 28','retail',9,5),(6,'Prii tänav 8','retail',11,6),(7,'Friedrich Kuhlbarsi 37','retail',13,7),(8,'Virbi 83','retail',15,8),(9,'Mailase tee 454','retail',17,9),(10,'Kurni 267','retail',19,10),(11,'Saha põik 74','retail',21,11),(12,'N. Triigi 239','retail',23,12),(13,'Umboja 8','retail',25,13),(14,'Varju 87','retail',27,14),(15,'Sõbra põik 203','retail',29,15),(16,'Õllepruuli 2','retail',31,16),(17,'Oru 2','retail',33,17),(18,'Vati 363','retail',35,18),(19,'Tuulemäe 6','retail',37,19),(20,'Tondi 448','retail',39,20),(21,'Võrse 2','retail',41,21),(22,'Aarde 7','retail',43,22),(23,'Lahe 7','retail',45,23),(24,'Põllu põik 5','retail',47,24),(25,'Säina 9','retail',49,25),(26,'Käo põik 462','retail',51,26),(27,'Koldrohu tee 65','retail',53,27),(28,'Viirpuu tee 9','retail',55,28),(29,'Sälu 54','retail',57,29),(30,'Taara 566','retail',59,30),(31,'Amandus Adamsoni 461','retail',61,31),(32,'Jaaniku 20','retail',63,32),(33,'Piiskopi 31','retail',65,33),(34,'Tuhkru 398','retail',67,34),(35,'Hiidtamme 93','retail',69,35),(36,'Keemia 46','retail',71,36),(37,'Nepi 71','retail',73,37),(38,'Kiriku 3','retail',75,38),(39,'Neiuvaiba tee 63','retail',77,39),(40,'Kauba 76','retail',79,40),(41,'Sügise 74','retail',81,41),(42,'Ravi 139','retail',83,42),(43,'Otsatalu 31','retail',85,43),(44,'Paluka 6','retail',87,44),(45,'Külaniidu tee 198','retail',89,45),(46,'Vismeistri 545','retail',91,46),(47,'Ehitajate tee 21','retail',93,47),(48,'A. Johani 4','retail',95,48),(49,'Mooni 927','retail',97,49),(50,'Eerikneeme tee 309','retail',99,50),(51,'Allika 26','retail',101,51),(52,'Jaaniku 259','retail',103,52),(53,'Kuuse 5','retail',105,53),(54,'Sirge 605','retail',107,54),(55,'Tuisu 9','retail',109,55),(56,'Kungla 5','retail',111,56),(57,'Saialille 810','retail',113,57),(58,'Pliiatsi 6','retail',115,58),(59,'Toominga 259','retail',117,59),(60,'Rocca al Mare 122','retail',119,60),(61,'Liblika 808','retail',121,61),(62,'A. Johani 20','retail',123,62),(63,'Üliõpilaste tee 721','retail',125,63),(64,'Väina tee 78','retail',127,64),(65,'Paadi 270','retail',129,65),(66,'Prii tänav 4','retail',131,66),(67,'Niguliste 757','retail',133,67),(68,'Rästa 833','retail',135,68),(69,'Loomuse 312','retail',137,69),(70,'Saarepiiga puiestee 6','retail',139,70),(71,'Mündi 90','retail',141,71),(72,'Plasti 36','retail',143,72),(73,'Välu 7','retail',145,73),(74,'Pihlametsa tee 2','retail',147,74),(75,'Tirdi 70','retail',149,75),(76,'Ehte 1','retail',151,76),(77,'Laevastiku 98','retail',153,77),(78,'Haldja 801','retail',155,78),(79,'Ujuki 31','retail',157,79),(80,'Halsi 609','retail',159,80),(81,'Saialille 2','retail',161,81),(82,'Poldri 16','retail',163,82);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-10 13:06:02
