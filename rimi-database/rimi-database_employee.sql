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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressId` int DEFAULT NULL,
  `bankAccountNumber` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Employee_addressId_fkey` (`addressId`),
  KEY `Employee_userId_fkey` (`userId`),
  CONSTRAINT `Employee_addressId_fkey` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `Employee_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Lenna','Konopelski','Lenna97@gmail.com','+3728203483',2,NULL,1),(2,'Emerald','Leffler','Emerald_Leffler@hotmail.com','+37220889358',4,NULL,2),(3,'Adonis','Beatty','Adonis_Beatty@gmail.com','+3726342778',6,NULL,3),(4,'Linnie','Metz','Linnie_Metz82@yahoo.com','+372818542',8,NULL,4),(5,'Tad','Abbott','Tad.Abbott@yahoo.com','+3724100488',10,NULL,5),(6,'Muriel','Spinka','Muriel.Spinka@hotmail.com','+37210252220',12,NULL,6),(7,'Maxie','Mitchell','Maxie_Mitchell32@hotmail.com','+37260445124',14,NULL,7),(8,'Rosetta','Cassin','Rosetta_Cassin@hotmail.com','+372776695',16,NULL,8),(9,'Wilfrid','Howe','Wilfrid.Howe@hotmail.com','+37276744481',18,NULL,9),(10,'Samson','Durgan','Samson80@hotmail.com','+3721734596',20,NULL,10),(11,'Alvis','Walter','Alvis.Walter@gmail.com','+372274112',22,NULL,11),(12,'Al','Mitchell','Al_Mitchell@hotmail.com','+37298984998',24,NULL,12),(13,'Rossie','Rau','Rossie.Rau14@gmail.com','+372662506',26,NULL,13),(14,'Lynn','Fritsch-Dicki','Lynn54@gmail.com','+372822667',28,NULL,14),(15,'Tillman','Botsford','Tillman65@gmail.com','+372729519',30,NULL,15),(16,'Savannah','McCullough','Savannah.McCullough58@yahoo.com','+372773620',32,NULL,16),(17,'Hermina','Stoltenberg','Hermina71@hotmail.com','+37277053608',34,NULL,17),(18,'Idella','Schuppe','Idella.Schuppe55@hotmail.com','+3726961130',36,NULL,18),(19,'Jo','Cartwright','Jo.Cartwright@gmail.com','+3728445472',38,NULL,19),(20,'Zelda','Bednar','Zelda.Bednar@yahoo.com','+372253945',40,NULL,20),(21,'Wallace','Huels','Wallace_Huels@yahoo.com','+3727404729',42,NULL,21),(22,'Jaycee','Wintheiser','Jaycee61@yahoo.com','+3723443645',44,NULL,22),(23,'General','Larkin','General_Larkin@yahoo.com','+3722266689',46,NULL,23),(24,'Xzavier','O\'Keefe','Xzavier_OKeefe28@gmail.com','+37230142920',48,NULL,24),(25,'Imogene','Borer','Imogene49@yahoo.com','+372172965',50,NULL,25),(26,'Jacky','Corwin','Jacky_Corwin@yahoo.com','+37252992722',52,NULL,26),(27,'Nickolas','Jacobson','Nickolas.Jacobson@yahoo.com','+372961025',54,NULL,27),(28,'Nya','Harris','Nya.Harris47@hotmail.com','+372208768',56,NULL,28),(29,'Elliot','Berge','Elliot13@yahoo.com','+3723295653',58,NULL,29),(30,'Dewitt','McLaughlin','Dewitt94@yahoo.com','+3726660053',60,NULL,30),(31,'Adrain','Morar','Adrain_Morar@gmail.com','+3723139518',62,NULL,31),(32,'Waino','McKenzie','Waino_McKenzie@gmail.com','+37228523278',64,NULL,32),(33,'Kaley','Okuneva','Kaley51@yahoo.com','+372935804',66,NULL,33),(34,'Granville','Zboncak','Granville_Zboncak53@gmail.com','+3726279891',68,NULL,34),(35,'Rosalyn','Smith','Rosalyn_Smith@gmail.com','+37246802109',70,NULL,35),(36,'Lesley','Waelchi','Lesley.Waelchi78@gmail.com','+37255530486',72,NULL,36),(37,'Joanie','Batz','Joanie.Batz@yahoo.com','+37285166036',74,NULL,37),(38,'Hermina','Hermiston','Hermina.Hermiston@gmail.com','+372403199',76,NULL,38),(39,'Amy','Breitenberg','Amy.Breitenberg79@gmail.com','+3722119393',78,NULL,39),(40,'Cielo','Rippin','Cielo98@yahoo.com','+372892071',80,NULL,40),(41,'Vickie','Bartoletti','Vickie96@yahoo.com','+37218273032',82,NULL,41),(42,'Halle','Lehner','Halle_Lehner@yahoo.com','+37276965340',84,NULL,42),(43,'Reynold','Considine','Reynold98@yahoo.com','+3723680205',86,NULL,43),(44,'Candice','Kihn','Candice49@gmail.com','+372945922',88,NULL,44),(45,'Olga','Ruecker-Farrell','Olga0@yahoo.com','+3722076555',90,NULL,45),(46,'Neoma','Marks','Neoma.Marks@hotmail.com','+3724457127',92,NULL,46),(47,'Erick','Quitzon','Erick.Quitzon@yahoo.com','+372358427',94,NULL,47),(48,'Carole','Heidenreich','Carole54@yahoo.com','+3723322646',96,NULL,48),(49,'Chet','Pollich','Chet.Pollich13@yahoo.com','+37221397925',98,NULL,49),(50,'Anthony','Littel','Anthony53@yahoo.com','+3721590451',100,NULL,50),(51,'Kristoffer','O\'Kon','Kristoffer_OKon5@hotmail.com','+37298936854',102,NULL,51),(52,'Adrian','Ebert','Adrian.Ebert@yahoo.com','+3724358790',104,NULL,52),(53,'Hassie','Buckridge','Hassie_Buckridge@hotmail.com','+3725563626',106,NULL,53),(54,'Jeff','Bergnaum','Jeff_Bergnaum@gmail.com','+37275506670',108,NULL,54),(55,'Bill','Spencer','Bill21@hotmail.com','+3723922756',110,NULL,55),(56,'Blanca','Mosciski','Blanca_Mosciski@hotmail.com','+3721440366',112,NULL,56),(57,'Dino','Schoen','Dino.Schoen@hotmail.com','+37215890362',114,NULL,57),(58,'Ceasar','Ledner','Ceasar.Ledner34@yahoo.com','+3726488297',116,NULL,58),(59,'Delfina','Veum-Jacobs','Delfina_Veum-Jacobs41@gmail.com','+372909035',118,NULL,59),(60,'Jarod','Veum','Jarod.Veum59@hotmail.com','+37265407173',120,NULL,60),(61,'Shanny','Grady','Shanny.Grady79@hotmail.com','+37215625922',122,NULL,61),(62,'Naomi','Hyatt','Naomi_Hyatt@hotmail.com','+372629520',124,NULL,62),(63,'Cale','Hettinger','Cale.Hettinger@hotmail.com','+3724586090',126,NULL,63),(64,'Ena','McLaughlin','Ena_McLaughlin@hotmail.com','+372397715',128,NULL,64),(65,'Bret','Daniel','Bret0@yahoo.com','+372887178',130,NULL,65),(66,'Jadon','Rodriguez','Jadon_Rodriguez@gmail.com','+3721802972',132,NULL,66),(67,'Jimmie','Mitchell','Jimmie_Mitchell10@yahoo.com','+3728529023',134,NULL,67),(68,'Aniya','Daniel','Aniya_Daniel80@yahoo.com','+372863626',136,NULL,68),(69,'Bailee','Hoppe','Bailee_Hoppe14@yahoo.com','+37227918709',138,NULL,69),(70,'Tierra','Keeling','Tierra.Keeling25@hotmail.com','+372720037',140,NULL,70),(71,'Riley','Ward','Riley.Ward@gmail.com','+37283875168',142,NULL,71),(72,'Caesar','Rutherford','Caesar35@yahoo.com','+372105107',144,NULL,72),(73,'Jacquelyn','Murazik','Jacquelyn.Murazik85@yahoo.com','+3722631309',146,NULL,73),(74,'Jesus','Keeling','Jesus.Keeling@hotmail.com','+37269122225',148,NULL,74),(75,'Mckayla','Lindgren','Mckayla_Lindgren@yahoo.com','+37255901329',150,NULL,75),(76,'Dell','Schuppe','Dell_Schuppe52@hotmail.com','+37229025462',152,NULL,76),(77,'Joana','Wiza','Joana_Wiza65@yahoo.com','+3727085702',154,NULL,77),(78,'Columbus','Gislason-Bins','Columbus.Gislason-Bins3@yahoo.com','+3729239823',156,NULL,78),(79,'Lilla','Hermann','Lilla57@hotmail.com','+37299521112',158,NULL,79),(80,'Kamron','Prosacco','Kamron_Prosacco@gmail.com','+372591787',160,NULL,80),(81,'Selmer','Heidenreich','Selmer80@gmail.com','+3727888195',162,NULL,81),(82,'Alfonso','Larson','Alfonso_Larson@gmail.com','+372500564',164,NULL,82);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-10 13:06:01
