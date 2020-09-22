-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: pjbus
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `tb_agency`
--

DROP TABLE IF EXISTS `tb_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_agency` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_agency`
--

LOCK TABLES `tb_agency` WRITE;
/*!40000 ALTER TABLE `tb_agency` DISABLE KEYS */;
INSERT INTO `tb_agency` VALUES ('0ff6e2db-1056-42b6-9f04-f5dc0d0773cb',NULL,'2020-09-09 06:37:33.478000','test','test',NULL,'5440d1dd-cfc4-4170-9de5-92c4e2b49d2f'),('688062e5-a6bb-4c30-99d9-109b04914166',NULL,'2020-09-15 07:10:38.082000','ini totproject','ToT Project',NULL,'30b3371c-e0bd-4d8d-aadc-e50c7faca21c'),('96d21074-ae1d-4fbe-8dbc-e6c525b1c182',NULL,'2020-08-28 03:58:19.330000','Ini Percobaan Pertama','Dway','2020-09-08 03:30:22.496000','38b71af8-2c06-45af-8ac1-395e847d67dc');
/*!40000 ALTER TABLE `tb_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_bus`
--

DROP TABLE IF EXISTS `tb_bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_bus` (
  `id` varchar(255) NOT NULL,
  `agency_id` varchar(255) DEFAULT NULL,
  `capacity` int NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `make` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bus`
--

LOCK TABLES `tb_bus` WRITE;
/*!40000 ALTER TABLE `tb_bus` DISABLE KEYS */;
INSERT INTO `tb_bus` VALUES ('07a3198c-4e89-4dbd-96d6-5a132821842d','96d21074-ae1d-4fbe-8dbc-e6c525b1c182',6,'OH-123','2020-08-28 04:01:40.724000','Mercedz',NULL),('38762876-de33-4dad-9d34-a38fd8879f08','96d21074-ae1d-4fbe-8dbc-e6c525b1c182',10,'KK-987','2020-09-10 02:15:46.488000','Honda',NULL),('51fec56d-8b33-4d6c-a304-6712fde6e6cc','96d21074-ae1d-4fbe-8dbc-e6c525b1c182',3,'LK-678','2020-09-10 02:16:19.329000','Honda',NULL),('70af0e5c-70f3-4b33-b6e4-62b99efb1b5e','96d21074-ae1d-4fbe-8dbc-e6c525b1c182',3,'AP-039','2020-09-10 02:15:05.548000','Honda',NULL),('a86f5454-8731-4e6b-bf62-b749548c97f6','96d21074-ae1d-4fbe-8dbc-e6c525b1c182',4,'AA-001','2020-09-10 01:49:06.510000','Honda',NULL),('b4dcc7c8-5d97-4141-bc2e-687d472d4bf9','96d21074-ae1d-4fbe-8dbc-e6c525b1c182',8,'AO-012','2020-09-10 02:14:37.346000','Honda',NULL),('c73b47e4-0c46-4abf-80a1-0cf4254e4820','96d21074-ae1d-4fbe-8dbc-e6c525b1c182',9,'OO-036','2020-09-10 02:17:13.634000','Honda',NULL),('ccc4e081-ee83-4609-8a3d-63048364b608','96d21074-ae1d-4fbe-8dbc-e6c525b1c182',4,'AI-992','2020-09-10 02:14:07.494000','Honda',NULL);
/*!40000 ALTER TABLE `tb_bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_role`
--

DROP TABLE IF EXISTS `tb_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_role` (
  `id` varchar(255) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_role`
--

LOCK TABLES `tb_role` WRITE;
/*!40000 ALTER TABLE `tb_role` DISABLE KEYS */;
INSERT INTO `tb_role` VALUES ('4e505de1-e8d3-11ea-8843-b86b230da373','2020-08-28 09:08:03.000000','owner',NULL);
/*!40000 ALTER TABLE `tb_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_stop`
--

DROP TABLE IF EXISTS `tb_stop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_stop` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_stop`
--

LOCK TABLES `tb_stop` WRITE;
/*!40000 ALTER TABLE `tb_stop` DISABLE KEYS */;
INSERT INTO `tb_stop` VALUES ('5c594cbf-ecbd-11ea-984f-b86b230da373','A-01','2020-09-02 08:41:03.000000','Pemberhentian Ke Jakarta','Stop A',NULL),('8322e8dd-ecbd-11ea-984f-b86b230da373','B-22','2020-09-02 08:42:08.000000','Pemberhentian Ke Bogor','Stop B',NULL);
/*!40000 ALTER TABLE `tb_stop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_ticket`
--

DROP TABLE IF EXISTS `tb_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_ticket` (
  `id` varchar(255) NOT NULL,
  `cancellable` bit(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `journey_date` datetime(6) NOT NULL,
  `seat_number` int NOT NULL,
  `trip_schedule_id` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_ticket`
--

LOCK TABLES `tb_ticket` WRITE;
/*!40000 ALTER TABLE `tb_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_trip`
--

DROP TABLE IF EXISTS `tb_trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_trip` (
  `id` varchar(255) NOT NULL,
  `agency_id` varchar(255) DEFAULT NULL,
  `bus_id` varchar(255) DEFAULT NULL,
  `created_date` datetime(6) NOT NULL,
  `dest_stop_id` varchar(255) DEFAULT NULL,
  `fare` int NOT NULL,
  `journey_time` varchar(255) DEFAULT NULL,
  `source_stop_id` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_trip`
--

LOCK TABLES `tb_trip` WRITE;
/*!40000 ALTER TABLE `tb_trip` DISABLE KEYS */;
INSERT INTO `tb_trip` VALUES ('106334eb-a374-4317-a1b2-f3930f163059','96d21074-ae1d-4fbe-8dbc-e6c525b1c182','07a3198c-4e89-4dbd-96d6-5a132821842d','2020-09-10 02:04:46.672000','8322e8dd-ecbd-11ea-984f-b86b230da373',456,'560','5c594cbf-ecbd-11ea-984f-b86b230da373',NULL),('411e1d64-1381-46d2-a2e5-9c9c74583f52','96d21074-ae1d-4fbe-8dbc-e6c525b1c182','a86f5454-8731-4e6b-bf62-b749548c97f6','2020-09-10 02:13:10.208000','5c594cbf-ecbd-11ea-984f-b86b230da373',443,'55','8322e8dd-ecbd-11ea-984f-b86b230da373',NULL),('579310ce-0d87-4f09-8d31-5ce5b30f5a81','96d21074-ae1d-4fbe-8dbc-e6c525b1c182','07a3198c-4e89-4dbd-96d6-5a132821842d','2020-09-10 02:09:21.337000','8322e8dd-ecbd-11ea-984f-b86b230da373',24221,'2221','5c594cbf-ecbd-11ea-984f-b86b230da373',NULL),('74f4c27f-172d-4c5f-b78e-44a5f071b45c','96d21074-ae1d-4fbe-8dbc-e6c525b1c182','a86f5454-8731-4e6b-bf62-b749548c97f6','2020-09-10 02:05:25.210000','5c594cbf-ecbd-11ea-984f-b86b230da373',567,'345','8322e8dd-ecbd-11ea-984f-b86b230da373','2020-09-10 02:06:06.063000');
/*!40000 ALTER TABLE `tb_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_trip_schedule`
--

DROP TABLE IF EXISTS `tb_trip_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_trip_schedule` (
  `id` varchar(255) NOT NULL,
  `available_seats` int NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `trip_date` datetime(6) NOT NULL,
  `trip_id` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_trip_schedule`
--

LOCK TABLES `tb_trip_schedule` WRITE;
/*!40000 ALTER TABLE `tb_trip_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_trip_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_user` (
  `id` varchar(255) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `updated_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES ('30b3371c-e0bd-4d8d-aadc-e50c7faca21c','2020-09-15 07:10:38.076000','totproject24@gmail.com','ToT','Project','081386153674','$2a$10$zpYt/qvKhy1fV1P.JSeG6OjzxcI7yVjcxPTJo/V7ZguCiXB7yLaYe','4e505de1-e8d3-11ea-8843-b86b230da373',NULL),('38b71af8-2c06-45af-8ac1-395e847d67dc','2020-08-28 03:58:19.310000','syirfanahmad01@gmail.com','Syirfan','Ibrahim','081386153674','$2a$10$AE8eiBWkcrIjBuU13UWN.OTbIyyo1J4J2HNhKO/4p0u.GtVLpX1QO','4e505de1-e8d3-11ea-8843-b86b230da373','2020-09-15 08:43:49.462000'),('5440d1dd-cfc4-4170-9de5-92c4e2b49d2f','2020-09-09 06:37:33.438000','test@gmail.com','test','test',NULL,'$2a$10$r.UUryixKe6OZvl7lxz4Weg0gUf3jL8FBx1BdQFJtNYLhqHOrNhzS','4e505de1-e8d3-11ea-8843-b86b230da373',NULL);
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip_schedule_ticket_id`
--

DROP TABLE IF EXISTS `trip_schedule_ticket_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip_schedule_ticket_id` (
  `trip_schedule_id` varchar(255) NOT NULL,
  `ticket_id` varchar(255) DEFAULT NULL,
  KEY `FKlv5lpbqi9esmqc75teboqxaen` (`trip_schedule_id`),
  CONSTRAINT `FKlv5lpbqi9esmqc75teboqxaen` FOREIGN KEY (`trip_schedule_id`) REFERENCES `tb_trip_schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_schedule_ticket_id`
--

LOCK TABLES `trip_schedule_ticket_id` WRITE;
/*!40000 ALTER TABLE `trip_schedule_ticket_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `trip_schedule_ticket_id` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-22  9:40:08
