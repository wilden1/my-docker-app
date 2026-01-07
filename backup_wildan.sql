/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: belajar_docker
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `pelawat`
--

DROP TABLE IF EXISTS `pelawat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pelawat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `masa` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelawat`
--

LOCK TABLES `pelawat` WRITE;
/*!40000 ALTER TABLE `pelawat` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pelawat` VALUES
(1,'Wildan','2026-01-06 14:26:10'),
(2,'Wildan','2026-01-06 14:26:12'),
(3,'Wildan','2026-01-06 14:26:12'),
(4,'Wildan','2026-01-06 14:26:13'),
(5,'Wildan','2026-01-06 14:26:13'),
(6,'Wildan','2026-01-06 14:26:13'),
(7,'Wildan','2026-01-06 14:26:13'),
(8,'Wildan','2026-01-06 14:26:14'),
(9,'Wildan','2026-01-06 14:26:15'),
(10,'Wildan','2026-01-06 14:26:16'),
(11,'Wildan','2026-01-06 14:26:19'),
(12,'Wildan','2026-01-06 14:26:20'),
(13,'Wildan','2026-01-06 14:29:09'),
(14,'Wildan','2026-01-06 14:29:20'),
(15,'Wildan','2026-01-06 14:29:20'),
(16,'Wildan','2026-01-06 14:29:21'),
(17,'Haifa','2026-01-06 14:35:28'),
(18,'Haifa','2026-01-06 14:36:44'),
(19,'Wafi','2026-01-07 13:44:36');
/*!40000 ALTER TABLE `pelawat` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-01-07 13:53:55
