-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: bazardatabase
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adonis_schema`
--

DROP TABLE IF EXISTS `adonis_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adonis_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `batch` int NOT NULL,
  `migration_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema`
--

LOCK TABLES `adonis_schema` WRITE;
/*!40000 ALTER TABLE `adonis_schema` DISABLE KEYS */;
INSERT INTO `adonis_schema` VALUES (1,'database/migrations/1638184204415_user_roles',1,'2022-04-02 06:14:12'),(2,'database/migrations/1638184204416_users',1,'2022-04-02 06:14:13'),(3,'database/migrations/1638184204421_api_tokens',1,'2022-04-02 06:14:13'),(4,'database/migrations/1654948802457_alter_table_colors',2,'2022-06-11 12:31:34'),(5,'database/migrations/1656481777764_alter_users_tables',3,'2022-06-29 09:13:45'),(6,'database/migrations/1657282234264_adding_service_shop_id_to_reklama_shops',4,'2022-07-08 13:39:04');
/*!40000 ALTER TABLE `adonis_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adonis_schema_versions`
--

DROP TABLE IF EXISTS `adonis_schema_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adonis_schema_versions` (
  `version` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema_versions`
--

LOCK TABLES `adonis_schema_versions` WRITE;
/*!40000 ALTER TABLE `adonis_schema_versions` DISABLE KEYS */;
INSERT INTO `adonis_schema_versions` VALUES (2);
/*!40000 ALTER TABLE `adonis_schema_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adress`
--

DROP TABLE IF EXISTS `adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `adress_welayat_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `Adress_id` (`adress_welayat_id`),
  CONSTRAINT `Adress_id` FOREIGN KEY (`adress_welayat_id`) REFERENCES `adress_welayat` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress`
--

LOCK TABLES `adress` WRITE;
/*!40000 ALTER TABLE `adress` DISABLE KEYS */;
INSERT INTO `adress` VALUES (14,'Arzuw',1),(15,'Atatürk köçe',1),(16,'Altyn Asyr Gündogar bazary',1),(17,'Arçabil şaýoly',1),(18,'Bagyr',1),(19,'Berzeňňi',1),(20,'Bekrewe',1),(21,'Bedew',1),(22,'Büzmeýin',1),(23,'Büzmeýin GRES',1),(24,'Çandybil şaýoly',1),(25,'WDNH Söwda Merkezi',1),(26,'1 mkr',1),(27,'2 mkr',1),(28,'3 mkr',1),(29,'4 mkr',1),(30,'5 mkr',1),(31,'6 mkr',1),(32,'7 mkr',1),(33,'8 mkr',1),(34,'9 mkr',1),(35,'10 mkr',1),(36,'11 mkr',1),(38,'30 mkr',1),(39,'Türkmenbaşy şaýoly',1),(40,'Olimpiýa şäherçesi',1),(41,'Sowetskiý köçe',1),(42,'Garadamak',1),(43,'Garadamak Şor',1),(44,'Gökje',1),(45,'G.Kuliýew köçe',1),(46,'Podwoýski köçe',1),(47,'Howdan A',1),(48,'Howdan B',1),(49,'Howdan W',1),(50,'Aýtakow',1),(51,'14 nji tapgyr',1),(52,'15 nji tapgyr',1),(53,'16 nji tapgyr',1),(54,'Moskowskiý köçe',1),(55,'Sowetskiý köçe',1),(56,'Gurtly',1),(57,'Dosaaf',1),(58,'Kim raýon',1),(59,'Köpetdag şaýoly',1),(60,'Köşi',1),(61,'Parahat 1',1),(62,'Parahat 2',1),(63,'Parahat 3',1),(64,'Parahat 4',1),(65,'Parahat 5',1),(66,'Parahat 6',1),(67,'Parahat 7',1),(68,'Parahat 8',1),(69,'Gagarin köçe,kňne Howa menzili',1),(70,'Gypjak',1),(71,'Ruhabat',1),(72,'Täze zaman',1),(73,'Berkarar SDAM',1),(74,'Garaşsyzlygyň 15 ýyllygy Söwda Merkezi',1),(75,'Çoganly',1),(76,'Hitrowka',1),(77,'Herrikgala',1),(78,'Şor daça',1),(79,'Ýalkym',1),(80,'Ýanbaş',1),(81,'Akdepe',2),(82,'Gurbansoltan eje',2),(83,'Boldumsaz',2),(84,'Gubadag',2),(85,'Görogly',2),(86,'Türkmenbaşy etr',2),(87,'Ruhubelent etr',2),(88,'Köneürgenç',2),(89,'S.A.Nyýazow etr',2),(90,'Ak bugdaý etr',3),(91,'Ýaşlyk',3),(92,'Bäherden',3),(93,'Babadaýhan',3),(94,'Gökdepe',3),(95,'Kaka',3),(96,'Änew',3),(97,'Tejen',3),(98,'Sarahs',3),(99,'Ýolöten',4),(100,'Murgap',4),(101,'Sakarçäge',4),(102,'Serhetabat',4),(103,'Tagtabazar',4),(104,'Türkmengala',4),(105,'Oguzhan',4),(106,'Baýramaly',4),(107,'Şatlyk',4),(108,'Wekilbazar',4),(109,'Garagum etr',4),(110,'Darganata',5),(111,'Farap',5),(112,'Gazojak',5),(113,'Dänew',5),(114,'Türkmenabat',5),(115,'Garabekewül',5),(116,'Dostluk',5),(117,'Hojambaz',5),(118,'Köýtendag',5),(119,'Kerki',5),(120,'Magdanly',5),(121,'Sakar',5),(122,'Saýat',5),(123,'Seýdi',5),(124,'Çärjew',5),(125,'Halaç',5),(126,'Balkanabat',6),(127,'Magtymguly',6),(128,'Bereket',6),(129,'Esenguly',6),(130,'Gumdag',6),(131,'Garabogaz',6),(132,'Hazar',6),(133,'Serdar',6),(134,'Türkmenbaşy',6),(135,'Jebel',6);
/*!40000 ALTER TABLE `adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adress_welayat`
--

DROP TABLE IF EXISTS `adress_welayat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adress_welayat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adress_welayat`
--

LOCK TABLES `adress_welayat` WRITE;
/*!40000 ALTER TABLE `adress_welayat` DISABLE KEYS */;
INSERT INTO `adress_welayat` VALUES (1,'Aşgabat'),(2,'Daşoguz'),(3,'Ahal'),(4,'Mary'),(5,'Lebap'),(6,'Balkan');
/*!40000 ALTER TABLE `adress_welayat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_admin`
--

DROP TABLE IF EXISTS `ads_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tertip_nomer` int NOT NULL DEFAULT '0',
  `merkez_id` int NOT NULL,
  `ads_type_id` int NOT NULL,
  `product_id` int NOT NULL DEFAULT '0',
  `ads_photo` varchar(250) NOT NULL DEFAULT ' ',
  `ads_description` text,
  `ads_descriptionRU` text,
  `seen` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_admin`
--

LOCK TABLES `ads_admin` WRITE;
/*!40000 ALTER TABLE `ads_admin` DISABLE KEYS */;
INSERT INTO `ads_admin` VALUES (5,0,0,4,80,'http://tmshop.com.tm/api/images/1657818880366_images (2).png','tort','altyn',0);
/*!40000 ALTER TABLE `ads_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_fromshops`
--

DROP TABLE IF EXISTS `ads_fromshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_fromshops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tertip_nomer` int NOT NULL DEFAULT '99999',
  `ads_type_id` int NOT NULL,
  `merkez_id` int NOT NULL,
  `product_id` int DEFAULT '0',
  `ads_photo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT ' ',
  `ads_description` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
  `ads_descriptionRU` text NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `seen` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_fromshops`
--

LOCK TABLES `ads_fromshops` WRITE;
/*!40000 ALTER TABLE `ads_fromshops` DISABLE KEYS */;
INSERT INTO `ads_fromshops` VALUES (6,99999,8,0,4,'http://tmshop.com.tm/api/images/1655961579269_RDJ-Tony-Stark.jpg','sadfasdfa','asdfasdf',0,0);
/*!40000 ALTER TABLE `ads_fromshops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_like`
--

DROP TABLE IF EXISTS `ads_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_like` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ads_admin_id` int NOT NULL DEFAULT '0',
  `ads_fromshops_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_like`
--

LOCK TABLES `ads_like` WRITE;
/*!40000 ALTER TABLE `ads_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_type`
--

DROP TABLE IF EXISTS `ads_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_type`
--

LOCK TABLES `ads_type` WRITE;
/*!40000 ALTER TABLE `ads_type` DISABLE KEYS */;
INSERT INTO `ads_type` VALUES (1,'shop'),(2,'Service_shop'),(3,'Restoran'),(4,'Restoran Product'),(5,'Fashion Product'),(6,'Product'),(7,'Service Product'),(8,'Surat'),(9,'Fashion_shop');
/*!40000 ALTER TABLE `ads_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_tokens_token_unique` (`token`),
  KEY `api_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `api_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `system_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=465 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tokens`
--

LOCK TABLES `api_tokens` WRITE;
/*!40000 ALTER TABLE `api_tokens` DISABLE KEYS */;
INSERT INTO `api_tokens` VALUES (1,2,'Opaque Access Token','api','ce42ee9a210610924150e5c1c29e9f22dae4937581be6b0e55a5f54e59d7559a',NULL,'2022-04-02 06:15:58'),(2,2,'Opaque Access Token','api','dd97059d744855203840e30d2334acb7cd2a63e259b7743c967a4a2b14695fad',NULL,'2022-04-02 08:54:51'),(3,2,'Opaque Access Token','api','30767faf916cc6e2cc144dc5e4a5b8d812ad223ca42f59bd6588e758521a9b12',NULL,'2022-04-02 09:04:22'),(4,2,'Opaque Access Token','api','36ab5b9771d0a5fd4ab032cb3e6f83899c408c997a3393b212733c578ba42eea',NULL,'2022-04-02 11:41:51'),(5,2,'Opaque Access Token','api','84e0913f4c8b44cb11c913abcf268831d9bdec95ca704fd7dada4ae84f24ed44',NULL,'2022-04-02 11:45:46'),(6,2,'Opaque Access Token','api','357eb2b580147bb4cc3317f880dd5e1c263bfc6a5879ef5723e00801f1191915',NULL,'2022-04-02 13:30:01'),(7,2,'Opaque Access Token','api','73ec51c1bc337432c3d21d73d5a7b70946ca0ed5d51d9ff500d541ede1d03bbb',NULL,'2022-04-03 09:38:46'),(8,2,'Opaque Access Token','api','79a529b3cccc3e944322e83a2d4d56a8ccbb15c33b9ec8afd804c6d2c2028d1b',NULL,'2022-04-03 10:20:44'),(9,2,'Opaque Access Token','api','cf13b4382389243a51e90b78813142fc803e5205bb01fc8f884c1d92f8ede7fe',NULL,'2022-04-04 04:59:30'),(10,2,'Opaque Access Token','api','2dc55a6f874cb909ded8890b6934d217de985ccfe3f81574e6a13ee8a0d3aca0',NULL,'2022-04-05 04:23:23'),(11,2,'Opaque Access Token','api','8686497198361de90d8645bc1cb9a80d6656033458997e83080bda9171feff26',NULL,'2022-04-05 06:00:30'),(12,2,'Opaque Access Token','api','8e74e9cf3bd7fca414accda846411af57deae8214914c6f513c6a6f889abd747',NULL,'2022-04-05 07:02:25'),(13,2,'Opaque Access Token','api','b749c9341c22166dbaf480f5ff80c7491e1f28aaec1e5c1ced604274ffe85b55',NULL,'2022-04-05 14:17:38'),(14,2,'Opaque Access Token','api','5e96c35d390f52683ef1e284a9858091fad1fac81513c037d15cad35bbd83677',NULL,'2022-04-05 20:26:20'),(15,2,'Opaque Access Token','api','6106a110d7543c5cf31a14155911ddec9e55d9e17ffb591651ab9e584e4c51d5',NULL,'2022-04-06 05:46:49'),(16,2,'Opaque Access Token','api','575a37170d36e01989420957424aaa994143dc351000852fcf12688151622a02',NULL,'2022-04-06 07:30:15'),(17,2,'Opaque Access Token','api','6c1af87c147ab56a3646b8bec2ab57c1dcdea95cb8b8e5b917cb81283b29a013',NULL,'2022-04-06 07:49:18'),(18,2,'Opaque Access Token','api','1d369b89745444c487b88ea100e36fe990946aff9645b46d6319a10e115eec87',NULL,'2022-04-06 08:52:23'),(19,2,'Opaque Access Token','api','6d6d793446ae33738f986e4684de275b01bfddecd2b64e502b3f9d26ceb1f93c',NULL,'2022-04-06 09:11:23'),(20,2,'Opaque Access Token','api','bfb76847fdbfa120599d3e3bd01ee84251d6c689fe9e58cb1ea825e57c5b5614',NULL,'2022-04-06 10:40:36'),(21,2,'Opaque Access Token','api','38ca2f0d40ec78e2a628e733de2e050a39f3ca26ee1612d9d43e43f74892bf31',NULL,'2022-04-07 04:02:45'),(22,2,'Opaque Access Token','api','76fe87c754c9cca7687120a4cdaa320c7e10f8472229519951a67c38afc21f91',NULL,'2022-04-07 05:47:22'),(23,2,'Opaque Access Token','api','64481aed5e4f426d017af06d5972883ea471ffbe69114f4e693df01513960af3',NULL,'2022-04-07 10:07:34'),(24,2,'Opaque Access Token','api','57c4f254fc049ed8019bc6864932c2a7efeb1d1de77fa5ba7282f0177b92b709',NULL,'2022-04-07 10:35:14'),(25,2,'Opaque Access Token','api','ae5dbc3e349a5741ce5a5849df890efc210754f408b559274cb2dffa46f44534',NULL,'2022-04-07 13:58:47'),(26,2,'Opaque Access Token','api','2a837a118711e0e6ae00c2910bcd549818833fe027bb51d1b27ee29f40656ad0',NULL,'2022-04-08 03:52:28'),(27,2,'Opaque Access Token','api','401cfb64bec24674396f2dcc47512d969883a0509361bdf893cb89da56ded26e',NULL,'2022-04-08 05:23:51'),(28,2,'Opaque Access Token','api','2b3e24d87cff6fc1066390409ad6446c0f4cf1a61539b4876b9d908c5822d2bb',NULL,'2022-04-08 09:31:59'),(29,2,'Opaque Access Token','api','86e29e07a9b2af0b66e56d6b24085ba759a8bbf9b470495a9e1c134a5a832cdb',NULL,'2022-04-08 11:57:36'),(30,2,'Opaque Access Token','api','e64ce846a1949db87610ff188ae32f40932e98a617c9b2dfcd3edbc317bfa705',NULL,'2022-04-08 13:03:03'),(31,2,'Opaque Access Token','api','b3f4b1cbe85ceab7a4428143b57a36e6e0f481c71554b63826e6098ebac18c8d',NULL,'2022-04-08 13:55:10'),(32,2,'Opaque Access Token','api','66c9a2301c354b387d8bfdb0abe98af9df154e41a2a0b5586cba02084ee0988d',NULL,'2022-04-08 14:02:35'),(33,2,'Opaque Access Token','api','d6809066d4d14411bd2612b0642fb4de521e28253798435b21b6b9f70dc3d3da',NULL,'2022-04-08 15:59:01'),(34,2,'Opaque Access Token','api','a81b57d39d3f818a10a5b35f5158b4baf4a3aa23902813af5e454e9547b9750b',NULL,'2022-04-09 07:49:25'),(35,2,'Opaque Access Token','api','87ce0e23307f2edd27990e81a1c57c53bf62d35e0ea7d10e2a3f72dad980fb76',NULL,'2022-04-09 11:13:22'),(36,2,'Opaque Access Token','api','67633e1be4cdd84aadeab5b350138dd20abe091601828d2eccca8d62a190d95b',NULL,'2022-04-09 12:52:01'),(37,2,'Opaque Access Token','api','64a429a3eeb5ff88fefe2f1cf9e7b3ea3550b46a93031d788a3a90df6c81180b',NULL,'2022-04-11 12:28:50'),(38,2,'Opaque Access Token','api','289f3e520bffb87deeab4a3a7e5d4b557a58d2152fdf770bad26564ede2bde4e',NULL,'2022-04-11 14:02:41'),(39,2,'Opaque Access Token','api','ec78277d3e7dd7554f82d00542ff55d23c99ea999f9cb7812c9ca9ab80823988',NULL,'2022-04-12 04:28:46'),(40,2,'Opaque Access Token','api','685203229fd44e56ccd02302ecacea0b5f6f53d8e5298bd22043f028805ffd57',NULL,'2022-04-12 08:09:32'),(41,2,'Opaque Access Token','api','1d0d18dffc44c36b998d3c7996cf8c26dc3fddce96874c6166dc1e281f9e7671',NULL,'2022-04-12 08:09:57'),(42,2,'Opaque Access Token','api','85b9c9ba86cf4746aa0eaa9470736edee360284e71882b9ac8d61d2fb9672538',NULL,'2022-04-12 11:31:56'),(43,2,'Opaque Access Token','api','296143fb233b9bfeead560362d09756677670da480d8ab93c03b3881c6b5f69e',NULL,'2022-04-14 08:11:17'),(44,2,'Opaque Access Token','api','a56c24b6a2ba6575a01b9e8668f2957f9b1a152e33c9735b358026e067e07bdb',NULL,'2022-04-14 10:22:15'),(45,2,'Opaque Access Token','api','be836759ad5dda9085353f49f855aad4ea97b4f815b6daf1ede506680efaec9f',NULL,'2022-04-14 12:05:09'),(46,2,'Opaque Access Token','api','b3142ac8d4a6e88fe97a916119d0012c07d471497a2f9467bf128072aa0bc394',NULL,'2022-04-14 14:06:36'),(47,2,'Opaque Access Token','api','9e6a4b4169c66c23d3a27c0ac64033a06c96998e26b7786b04ec593f077d1031',NULL,'2022-04-15 05:00:11'),(48,2,'Opaque Access Token','api','9b005be71e0b82ceca1103140b3047e811239b047fb7b668f97692b773239d5b',NULL,'2022-04-15 07:16:06'),(49,2,'Opaque Access Token','api','62e4bef4f0912143a38b28f0da34d342a6a67cb1918f14642ddb6c7d795f98f4',NULL,'2022-04-15 07:20:49'),(50,2,'Opaque Access Token','api','33c48106b2301ac53671c92b832e97f1036335fa38815437fed890f2f60c8083',NULL,'2022-04-15 07:32:36'),(51,2,'Opaque Access Token','api','4add576a2b5ade90adbadc211339ca520e3dd307e39cdb54fc443d665f028051',NULL,'2022-04-15 08:55:33'),(52,2,'Opaque Access Token','api','36b1b411e691c7768cb71603a5a190f6c0eb01266ffe1d0bcd885fec492dc1e5',NULL,'2022-04-15 10:41:29'),(53,2,'Opaque Access Token','api','da738f15622a93d81a558f751d806b17569ce2d2adf75d2be35dc789cd6f910f',NULL,'2022-04-15 11:12:58'),(54,2,'Opaque Access Token','api','b566cac631adc60cc5aa112bf9bd8a66fe8119b03dbd1a1964153af96d33bc59',NULL,'2022-04-15 11:33:01'),(55,2,'Opaque Access Token','api','a8d738a455ad55a605171cd867881fd6a540e03795bf0aa3769013eed091e1cd',NULL,'2022-04-15 12:38:22'),(56,2,'Opaque Access Token','api','55af2c0cae7b6e68b1fd984e6004f03c4c8b61e4d35f25e86de038a8f08ec07a',NULL,'2022-04-15 14:10:51'),(57,2,'Opaque Access Token','api','08ac664ab42bdd9311584e3d66cbbde083a01293d61f44ee3d61b85de8cc67aa',NULL,'2022-04-15 14:24:10'),(58,2,'Opaque Access Token','api','160542c67edb337ca1b2c7d308f0654070f4518f3184e07065bf861a7ef493e6',NULL,'2022-04-15 15:46:03'),(59,2,'Opaque Access Token','api','c01b15e8af6dbdc604975a6e9822ca6403831bf457a92696f7718637f1d48c8f',NULL,'2022-04-15 16:00:16'),(60,2,'Opaque Access Token','api','cc10809000aa5e5587353cc1ce5a00d88abd59e7ef5dcf97f3afba059c290fb0',NULL,'2022-04-15 20:06:39'),(61,2,'Opaque Access Token','api','6fa6ebfb4b37731a3ea95085946645732e4a6d3052bef6b54c0daceb3e21a911',NULL,'2022-04-16 09:08:50'),(62,2,'Opaque Access Token','api','7c9b71a81ddd2677b697d402f3434f46951061685590b9070080486b0167a77d',NULL,'2022-04-16 10:41:57'),(63,2,'Opaque Access Token','api','cec7e9a63f667304f9b04159da9e7c973fb9b455e096a88bd8b42623d7f542d2',NULL,'2022-04-16 10:49:03'),(64,2,'Opaque Access Token','api','4407c0a201b054dd23e084d52fc5a0731e6ef389ae9ed45496d6547f55e68b90',NULL,'2022-04-17 07:37:54'),(65,2,'Opaque Access Token','api','991e1b93c135337620a5900da6e1f48f81f24e9452fd7c52aa653e0e891259a1',NULL,'2022-04-17 12:06:59'),(66,2,'Opaque Access Token','api','f6edbad021c393fb787aeec5304a1017327567c17195d7621b8e4caaf6e7748b',NULL,'2022-04-18 12:37:35'),(67,2,'Opaque Access Token','api','59a59d4026e1e6c1f93b95de1db51af0b42da08c8bf3da97a75968ce8d58bf1f',NULL,'2022-04-18 12:37:59'),(68,2,'Opaque Access Token','api','d85075cda4b9f2063489b26b026535af5be90e56a6f96d64002d4db9cc3c1fb8',NULL,'2022-04-18 12:52:01'),(69,2,'Opaque Access Token','api','35e49621896cd3743d2d329780d5142260fbbb3f5096a2bd69686412cc296c0c',NULL,'2022-04-18 13:21:08'),(70,2,'Opaque Access Token','api','b60316fec76d7d28a5f296252b685f2c2265912adc3186b9d412bde98e12a920',NULL,'2022-04-18 13:49:24'),(71,2,'Opaque Access Token','api','017fd1dd920f6b667ce1b26dd70d018c0f1044889f15b9aa5bbe0782ef4caa0b',NULL,'2022-04-19 11:47:40'),(72,2,'Opaque Access Token','api','cd0bcb53c95cb8f8e77d65e7800485b32bfcc539cc9e1deccd298796582893d3',NULL,'2022-04-19 12:16:44'),(73,2,'Opaque Access Token','api','29bfbe4aa31d3bb78167a68d69dbae0b3efeba6e18c99912990770d3ea58cd00',NULL,'2022-04-19 13:13:33'),(74,2,'Opaque Access Token','api','ace407fa7d59ef85b372369446af576cb8cdef8e32143b1fe0aa3fe675d546d4',NULL,'2022-04-19 14:04:15'),(75,2,'Opaque Access Token','api','360d2986b00b01988c71401c6f8c15252ad15c55ec59bd6162fc3443985836e0',NULL,'2022-04-20 04:54:18'),(76,2,'Opaque Access Token','api','110ff1dbc5cf30c8f490783a33a357fa8f27610496a9650fb48174f5bbd8e8ae',NULL,'2022-04-20 05:56:27'),(77,2,'Opaque Access Token','api','0a40dd18a1924768a86ee3d04801569c62f9d0445b3e83905a690debad470d95',NULL,'2022-04-20 13:29:55'),(78,2,'Opaque Access Token','api','ad83f292cee7d37c13861c582234fd16595822ac74bd38a4c23a0020fb046d71',NULL,'2022-04-20 15:40:24'),(79,2,'Opaque Access Token','api','7c5a1eff8c755aca411aae27c2b59de933b070352e1251afeffa3e08c5eb69be',NULL,'2022-04-21 07:27:16'),(80,2,'Opaque Access Token','api','21cd6cfa60f045f1c02edfa477d2d7297e0726d26745bffa542430a0e49494f3',NULL,'2022-04-21 07:30:26'),(81,2,'Opaque Access Token','api','a57fc9bb24d9b2c7b812f9d54732975efc195f7664b49cf413c252c0836bc553',NULL,'2022-04-21 07:41:57'),(82,2,'Opaque Access Token','api','5852f2fbf4ad71b928a6ce93b7fd501fbfd863623a4a3cb50ed4f11597a6d01e',NULL,'2022-04-21 07:41:57'),(83,2,'Opaque Access Token','api','3f2d881a1b6ee9a90029d2e4839a1efb87776c79150c1979e0ccc3bc78d36ae2',NULL,'2022-04-21 11:42:20'),(84,2,'Opaque Access Token','api','5de7bb25a236c2f8daed276b59c114a560ba8433cf6b9c49b31125e1057778ac',NULL,'2022-04-21 12:14:35'),(85,2,'Opaque Access Token','api','746492261ba005d7c52f9c9cd7ee44329c2bdf40cb31bdd40e51d45466f28dbb',NULL,'2022-04-21 12:49:52'),(86,2,'Opaque Access Token','api','442b959c2a9e482be54c6ebcfb3230b060ecb6e09fe660fd749785c8ea4ea9e6',NULL,'2022-04-21 15:57:22'),(87,2,'Opaque Access Token','api','81dcd20ad7bb646c38b1f4b012176b0b0605568b8cacccf20e8fc67ccbb565ae',NULL,'2022-04-21 17:06:16'),(88,2,'Opaque Access Token','api','c78a2714d2c5e82eaf3eadbd7b41f442c2a7b8a79bc17172d6792384602fc1a2',NULL,'2022-04-22 10:19:42'),(89,2,'Opaque Access Token','api','d5f8aac0570d3e7b8c022ac49ef8d2879a5f3f6b7d9ab1c429fc35fb372198ef',NULL,'2022-04-25 05:34:28'),(90,2,'Opaque Access Token','api','20c721d8b589a25a3182bbb039db7307e4819ba94ca031e2a8e38e2c1cb38f81',NULL,'2022-04-25 09:29:46'),(91,2,'Opaque Access Token','api','5f496f0e83363c870fcd39dff5bcfc93b919622107818af38eb9dc428ec54b2a',NULL,'2022-04-25 13:37:31'),(92,2,'Opaque Access Token','api','4ca8d46de501c31a8c05534bf456cdbbd67abbfafe618afe2c2e97b520741712',NULL,'2022-04-25 16:05:54'),(93,2,'Opaque Access Token','api','56b2cb8aa525e7fce3dfd68c926dc4620f701b1039a0a2412cb72332b4499aaf',NULL,'2022-04-26 04:24:47'),(94,2,'Opaque Access Token','api','d42a1a1e95c19638feb334d819fb0eb6afcfb5bd6f75a4751b59198de418dafc',NULL,'2022-04-26 09:35:36'),(95,2,'Opaque Access Token','api','949033d8f42341d423018ff34abccc91537ef75d7c309875915fd6afe0edcc1b',NULL,'2022-04-26 11:04:51'),(96,2,'Opaque Access Token','api','83e4cc758ce2399448a76a82ad928f0dedf30a14f49a18ae5697a542207e78f5',NULL,'2022-04-26 12:08:15'),(97,2,'Opaque Access Token','api','3c1a4cbe519f9b8015d751733b730efebc8c19187806e6f057572ce68d1365d5',NULL,'2022-04-26 12:26:23'),(98,2,'Opaque Access Token','api','860e339b1fcad79b8595808011e99bd549972e2cf9c38af4440b48e8615f0472',NULL,'2022-04-26 13:48:10'),(99,2,'Opaque Access Token','api','2c97bafe201f025ef4b98c466bef51353548b3c49a8896939992365f0981be3d',NULL,'2022-04-26 13:49:38'),(100,2,'Opaque Access Token','api','89ac19806054ad1eb38895c920127238ac413ce7b8ded699221d63ff44c9f67d',NULL,'2022-04-26 13:49:54'),(101,2,'Opaque Access Token','api','aaf5e89492cc7452a58e001732dd463e57f30d46379e235caed2866ab00b3886',NULL,'2022-04-26 13:53:47'),(102,2,'Opaque Access Token','api','77bc11db914653e2ed394db3a7d2529993c83ff90bccc047198ff4df1e86540d',NULL,'2022-04-26 13:58:39'),(103,2,'Opaque Access Token','api','fca594ed86ebefe5025b8bd1e985aa0ba2b2b2bd3785db1a9ebb55fd7b7dfcd2',NULL,'2022-04-27 07:17:17'),(104,2,'Opaque Access Token','api','ed4b74f96fa18d28ac7881188f2c14fa3339ba0e195f8fc946e169df363475fe',NULL,'2022-04-27 09:11:22'),(105,2,'Opaque Access Token','api','deae17190d8bf2bbc476169a528fd5a2feb335ad1f5f52e056e1bea4bbd15e4f',NULL,'2022-04-27 10:14:20'),(106,2,'Opaque Access Token','api','cbed20fdce87be2773832f22e3c19a394431481aee060f07168fe4469326faa8',NULL,'2022-04-27 11:00:21'),(107,2,'Opaque Access Token','api','24bdd831a1c90ed57a4b865537dbacb6189f0f0f81d3de0c5199dc238895763c',NULL,'2022-04-27 12:32:40'),(108,2,'Opaque Access Token','api','a500be390f9385313eff7874317ddf19893aeb572df042e9e79d2f748543d46f',NULL,'2022-04-27 12:33:11'),(109,2,'Opaque Access Token','api','1fd45546c5800030a30b16be09c1d5f138923aa252b5ee9c45089d05965fe214',NULL,'2022-04-27 13:40:30'),(110,2,'Opaque Access Token','api','4dbcc34d1f23264c644eb545a71bd86166dd66e908e3e82f83fa0e001caaca51',NULL,'2022-04-27 13:42:00'),(111,2,'Opaque Access Token','api','590359d39c2e617dbc11608afc7ed02cffeea9a629821871ccbc6780051094dd',NULL,'2022-04-27 14:45:28'),(112,2,'Opaque Access Token','api','61ea2a69c0ef4362e840d083180b93557ebd3441cd92dc744f8e9cfae0582b61',NULL,'2022-04-27 15:04:59'),(113,2,'Opaque Access Token','api','6838be0d5abbe53306f0ae033d7d6dab1874306253785200ec81d7c8cd71f433',NULL,'2022-04-27 16:43:22'),(114,2,'Opaque Access Token','api','cbb6fa7243f92e0f381bce54317953eaa9b4b638b6b0b065b2b423eb5bc3888d',NULL,'2022-04-28 05:05:07'),(115,2,'Opaque Access Token','api','4d6d5e974dcc752992d470856c9755e38157f5d4b40304eaf94950496eb11efd',NULL,'2022-04-28 06:12:50'),(116,2,'Opaque Access Token','api','e71c58e2f6bd8f40a802d4c83c9eabfeace8ef6bcfa87e927bfa65cfec3f5c49',NULL,'2022-04-28 09:05:23'),(117,2,'Opaque Access Token','api','055349d11c687b3ccf45eb5f85c3f3f30f0eb5a1687d5e73c73587d8e412c77b',NULL,'2022-04-28 09:41:32'),(118,2,'Opaque Access Token','api','2d5d767f64d8abcab06ca284ad177ad716642bc091ffb84d8894878274942df4',NULL,'2022-04-28 12:21:44'),(119,2,'Opaque Access Token','api','903199d96435ed58d66eeebe0a6576acdc8e29ea7f03fc3bb662f3811202d758',NULL,'2022-04-28 13:43:38'),(120,2,'Opaque Access Token','api','009dc7d211dfc815ba666295a5c206e405c7ae25d2226c40a7aa9d4f37d4fdc5',NULL,'2022-04-28 15:40:15'),(121,2,'Opaque Access Token','api','2b141b51ffc1efcb5ae410fce2ea57613b55617d99a25a635ed757cc197872ad',NULL,'2022-04-29 17:47:06'),(122,2,'Opaque Access Token','api','3382cf128003fbc97bdeda593289bbc123999c4101826b840b67bf3e83bc031f',NULL,'2022-04-29 19:43:34'),(123,2,'Opaque Access Token','api','21a03098d8ae86839b19211c48a15d6f1f6c9adcff37a5579fc64cce6c898728',NULL,'2022-04-29 19:43:34'),(124,2,'Opaque Access Token','api','b5a6d5b6ee1274929d2b81d83e30017b666c789c8386dc3ba0746a00f9fc0d22',NULL,'2022-04-30 09:07:33'),(125,2,'Opaque Access Token','api','4282a9df15779de3b097503436f5e9baeb91cd16f27570db551e3bf696680509',NULL,'2022-04-30 09:09:49'),(126,2,'Opaque Access Token','api','d3fac73e9ab40026fb789f8ae7e8bb3ad25ec924be3d039f9a9ce83bb0c7ee04',NULL,'2022-04-30 11:50:49'),(127,2,'Opaque Access Token','api','e5fd513ba6427d02658e25c4c77ddfe00dcaf23ca5c15b036690c5d5e6b77a1d',NULL,'2022-04-30 13:05:47'),(128,2,'Opaque Access Token','api','27363583ff2c1afa5454485b7461e0375de1e0237ae0b1a383746dc9bf469004',NULL,'2022-04-30 17:57:19'),(129,2,'Opaque Access Token','api','67785cbc383d1beced18a129c59c02faf121610c359d5d348319f41e0041ac4c',NULL,'2022-05-01 10:17:02'),(130,2,'Opaque Access Token','api','c8349b4061f9dd232db4f6ffce7af391eb87da67ba7b0d625072dbda375cc380',NULL,'2022-05-01 12:40:06'),(131,2,'Opaque Access Token','api','e9f2e8c15425f24cb4d44772948035ad28e5d36e19b2d324b2db628050981ca0',NULL,'2022-05-01 15:08:43'),(132,2,'Opaque Access Token','api','c01c56abdba7664b24d78cc7bb323b6c82161c1e4505218e5be733924a17ed88',NULL,'2022-05-01 17:36:04'),(133,2,'Opaque Access Token','api','6d97f29d2908d015fae9ffd5f2e9df00eae91af582c39a16b90530b22878367b',NULL,'2022-05-01 20:37:25'),(134,2,'Opaque Access Token','api','96c234953186904c1af1efade69fb8be21b558fcbe55f5a96d72c6cd7e77f2eb',NULL,'2022-05-03 04:26:51'),(135,2,'Opaque Access Token','api','8f73aa490abcd106515b14111eb6de7cf54a03f5bd2fa4be887a8bcc56d86f01',NULL,'2022-05-03 04:38:27'),(136,2,'Opaque Access Token','api','16850bf14de0f5f2697fc354744dec3f3137660c303efc7f3b6607bae13d8450',NULL,'2022-05-03 05:54:27'),(137,2,'Opaque Access Token','api','bdbed3dcc500de43915c11304746f910a080c67a7099d4277eaa98e028c332d5',NULL,'2022-05-03 06:35:28'),(138,2,'Opaque Access Token','api','ba897dc205ff8335417d038e001a3c5e993ff668362de039b6fddd0efd651499',NULL,'2022-05-03 07:28:46'),(139,2,'Opaque Access Token','api','18ae9162ea8708198527ed33e719455ade4433f93b027ec29fe9f9df083fd7b1',NULL,'2022-05-03 07:36:19'),(140,2,'Opaque Access Token','api','2afecf8a6fcebc619d90685889fb6e9e3e53b4a464b5b4498b115b5b8d6526a3',NULL,'2022-05-03 13:29:14'),(141,2,'Opaque Access Token','api','e60c65d4d933da4dd1f90fac0558ed20eb1c6a3499f8e8d65a73fbf0968e9ec7',NULL,'2022-05-03 14:02:10'),(142,2,'Opaque Access Token','api','b57fa4899eacacc253b8da6845c57c1f1797f18a092e7f306e815b7c9c43f1a3',NULL,'2022-05-03 14:29:23'),(143,2,'Opaque Access Token','api','6b674739f521f723bee397ce73cda7aabffc49c2688a1cb431db33943366705e',NULL,'2022-05-04 10:18:35'),(144,2,'Opaque Access Token','api','385094ddfeee86b7b804720c0f2020325a3897e07b031de4693c48b8920b5161',NULL,'2022-05-04 13:19:14'),(145,2,'Opaque Access Token','api','692ad221269fdc7f7cc57d4d64ebacdf225b791fc2c073dddfefa4579c4389df',NULL,'2022-05-04 16:07:02'),(146,2,'Opaque Access Token','api','0aa6f6b2adc2ba921d987a6e7b4bc207a2cf1a62952838d3e6d042d905bb077b',NULL,'2022-05-05 03:56:11'),(147,2,'Opaque Access Token','api','01f9cc8d2ed6bfda54f7485dad05b9d3632d9b71d539d85548f3a9112798debc',NULL,'2022-05-05 05:45:32'),(148,2,'Opaque Access Token','api','1471602900b6c34bfc9e4632a9aa1031a85b51ac7e273432a069fc501acafe6f',NULL,'2022-05-05 07:19:14'),(149,2,'Opaque Access Token','api','83c3bdbc39b4e62614917281a0233426e094cf0da844ace8c67a6e9e8acc68ca',NULL,'2022-05-05 11:01:32'),(150,2,'Opaque Access Token','api','cde0f81e7be29b36e5f3aee84bd1f48c308a0ba8afc559dc3f9755589bf2178d',NULL,'2022-05-05 12:11:12'),(151,2,'Opaque Access Token','api','adce12b0662f7b9901acf509c8b17ed15f6b58b20cb507bd0e10312bc70abe49',NULL,'2022-05-05 12:32:06'),(152,2,'Opaque Access Token','api','0d77181965ed9255b17ec0d662612da62393bd5a22b35d54b0c34f6325f687e6',NULL,'2022-05-05 13:26:03'),(153,2,'Opaque Access Token','api','0f62b77e16a6602a85d03e40b767c963a2bc570712f9df7321a48546d425776c',NULL,'2022-05-05 13:36:08'),(154,2,'Opaque Access Token','api','71f3a21f4069546e0621fbaa0f8a3a67ec4e132267c48714555b77c4657f9ed9',NULL,'2022-05-05 16:01:26'),(155,2,'Opaque Access Token','api','80c34507c624ea65bf498b18bdd48b1052858e09606282cc8607793947cbbda4',NULL,'2022-05-06 15:31:26'),(156,2,'Opaque Access Token','api','6717908033ea8dbf5623807a7e6b2563edc4edb40289c08f11199d79a7e492d9',NULL,'2022-05-06 15:31:26'),(157,2,'Opaque Access Token','api','363bc399cecb73561bab9b4c231bf09342251c1c944d160ff95094a96509f816',NULL,'2022-05-06 15:31:26'),(158,2,'Opaque Access Token','api','6002f9d08fb4c7a42d5e4324eebc031390b2a400fd518a21da4ad22b2e3443e6',NULL,'2022-05-06 15:32:10'),(159,2,'Opaque Access Token','api','5fa424094cd5b531214aaf765d07a33f5b2ada5b3e579e1e5b63886f4952b578',NULL,'2022-05-06 17:31:42'),(160,2,'Opaque Access Token','api','eb241fe09bae08c2def8e70c927c09042be7e4c48d67cb7a0302acdcac25e7d8',NULL,'2022-05-07 08:46:02'),(161,2,'Opaque Access Token','api','d8da4fb7317f5ff5633f86591d297896bcd8c0ddfba5d8ae65e951b31411fe3e',NULL,'2022-05-07 09:28:30'),(162,2,'Opaque Access Token','api','214830a556d2fe927750c32bb41d9515e02b80bd4eb824a445d52ebe6f22d9d5',NULL,'2022-05-07 09:33:42'),(163,2,'Opaque Access Token','api','d470fcb95e69c48374bbbdc16aba46514eaf07c64f5b1a5227afb00de415273a',NULL,'2022-05-07 09:33:44'),(164,2,'Opaque Access Token','api','a527e19af639f3b312f717d379b9b8b7032132cd00def9460dc506a4e4ebe229',NULL,'2022-05-07 10:54:11'),(165,2,'Opaque Access Token','api','d0bf0151bf2c1b01e3a4aacc1939239d36d2083b1bdcc4268d79370cff989727',NULL,'2022-05-07 10:54:16'),(166,2,'Opaque Access Token','api','88da6cf4a373d252484039dde1c12a9c11906973385e2e7fece125e251e48ab0',NULL,'2022-05-07 12:08:51'),(167,2,'Opaque Access Token','api','e7a8f7c5ce812fe27eea1f93920ab076f842555794ac331d3eea805326e00d28',NULL,'2022-05-07 12:26:43'),(168,2,'Opaque Access Token','api','80254a62a5a1101785387da5cb288a976c7adcded86db97b78eb2beff0213189',NULL,'2022-05-07 16:31:43'),(169,2,'Opaque Access Token','api','c335fb892ab55bf5def671b039fe3239a11c6c166f79693dd06ab599c966ae69',NULL,'2022-05-08 08:17:29'),(170,2,'Opaque Access Token','api','cededf82b3ddde3341e12fe14919d01bbe4d0ba0adaf86f946baf501439dcb24',NULL,'2022-05-10 06:47:53'),(171,2,'Opaque Access Token','api','3600c60ef30417f5c97e5f54187c2e048282f4db05b7ca3b6f5daf79f191fe24',NULL,'2022-05-10 09:54:49'),(172,2,'Opaque Access Token','api','281b879dd3bf1c6ccd1a062020ac5f7542a38e5714dd3c75b937cb938d61683c',NULL,'2022-05-10 11:23:30'),(173,2,'Opaque Access Token','api','0dd3115eb52e1b33a92f5671c7ae0dcbc7e4aed3cc6ee64c91ba5e110862f146',NULL,'2022-05-10 12:18:23'),(174,2,'Opaque Access Token','api','f8de729677c57380e7a3dca90c7347105a3d5a9da9b21b543bfa2ecb56209b38',NULL,'2022-05-10 12:30:57'),(175,2,'Opaque Access Token','api','35d2aee11fd871d4a4fad9510b54d0cd724bc4a53811ddfdc6af4a9dc8ddef3e',NULL,'2022-05-10 13:12:13'),(176,2,'Opaque Access Token','api','d4eb91541ff5c246973d2a839d1ede3eb47bfd2921dd775f1391da2ca8615b96',NULL,'2022-05-10 13:53:06'),(177,2,'Opaque Access Token','api','38f92866e15fffe186e3f803d36f6838d10ca111b05c9080915a3683d43a15cf',NULL,'2022-05-11 04:19:05'),(178,2,'Opaque Access Token','api','aad51b5ed551374fb5c43dee7ab7b3e1268ef3fd317aa98bafa659f8a540409f',NULL,'2022-05-11 04:19:19'),(179,2,'Opaque Access Token','api','40e703fd362178e8e9d6010966d7958bb9f32da80b73167382ecc274281c4797',NULL,'2022-05-11 13:30:47'),(180,2,'Opaque Access Token','api','6a4fe4a72f642a7006a06dca40f7c83bec304338351e1d8d1814a0ff8c3d397c',NULL,'2022-05-11 14:25:34'),(181,2,'Opaque Access Token','api','4e28fcf92ba9d9bed071131920c473bc598d673e371a9c4b33d1087275706867',NULL,'2022-05-11 15:14:55'),(182,2,'Opaque Access Token','api','0bd8e65c2e60f7141f3e1f06aebb2e930fef583ddc326c53dc1e39e1d5e1a9ea',NULL,'2022-05-12 10:11:50'),(183,2,'Opaque Access Token','api','db8f55c0f4522c01a64a5dacd49f106e5d5b800bfba0603c745a6faeae2517c6',NULL,'2022-05-12 11:26:56'),(184,2,'Opaque Access Token','api','9b7e387d8265ab2ebf40029a1446a60f7c0671507ac45eeaf65dbfc43ae99690',NULL,'2022-05-12 13:07:14'),(185,2,'Opaque Access Token','api','df597f60b120bd282b1bba775ca0fba1e6db9276c47c9e3207214510cd787c1b',NULL,'2022-05-12 13:48:07'),(186,2,'Opaque Access Token','api','0fd6678245c2fd504fe06bb3532a94a57d14833df1881f73a8c7fc8c5ad5ff5f',NULL,'2022-05-12 13:49:17'),(187,2,'Opaque Access Token','api','2c3a990e0bb1a535fa9d12fe6bcebab8a4b77bd62378e7516b36a910484096f6',NULL,'2022-05-12 15:35:03'),(188,2,'Opaque Access Token','api','fbebdd48d6c50a6abb4257b3ac477ba936c9119060da3bd5bfa2cc329c15d011',NULL,'2022-05-15 15:14:40'),(189,2,'Opaque Access Token','api','c4468b0b40eb627c16816e6294faa79e83c0d6e4809a31f95c0e1e91600b314e',NULL,'2022-05-15 17:01:30'),(190,2,'Opaque Access Token','api','5b3f93711bf44583863a20c737dcd87779390c6f4d2e0fb50e99002288eb9cac',NULL,'2022-05-19 13:01:58'),(191,2,'Opaque Access Token','api','228431fb0cbcd8b7afdcee654fbcc010f75334a4e50beb0d4c89a626d959d50a',NULL,'2022-05-19 14:15:01'),(192,2,'Opaque Access Token','api','91eb6e27d5b2aea72e0d7231e8add6996b0f6648ac724ce18d9e6a05b692d0c9',NULL,'2022-05-19 17:25:41'),(193,2,'Opaque Access Token','api','4561f7680b8510350f4400988349709eaa642598e6f5b5acda676115f711c4f7',NULL,'2022-05-20 12:13:46'),(194,2,'Opaque Access Token','api','d7eed12161a15c518f75c1fd7226e5c893a345c9851a5785336136850eab0f31',NULL,'2022-05-20 13:19:48'),(195,2,'Opaque Access Token','api','183f881ce58e5620db88147a721f35729a580d56b3dff80ff28c3d284ab93b18',NULL,'2022-05-20 13:56:12'),(196,2,'Opaque Access Token','api','299556f085240496d4b3fef4274b010b272b03f9c7b311eb657f8d3373cba70d',NULL,'2022-05-20 13:59:49'),(197,2,'Opaque Access Token','api','25e35578f33f3a3e8bd1d6a0c776dcf24d230b2d64387f74061d5650bf7f82b8',NULL,'2022-05-20 14:02:56'),(198,2,'Opaque Access Token','api','c9cd08d861637a3b38695756c132a9f20616f27bdc5cbcac8434597382d6f5ae',NULL,'2022-05-20 14:20:32'),(199,2,'Opaque Access Token','api','785b1be7c373c231e74b22b519338e17ab646fbe657395c6e267055dd571c1aa',NULL,'2022-05-21 13:07:07'),(200,2,'Opaque Access Token','api','225869766a805841ca3f1256e5feab281c6c7854066353366e07922f8a44926b',NULL,'2022-05-22 11:42:36'),(201,2,'Opaque Access Token','api','d83eb830d2b0e9db4baa9ae3132da292ee79200feeecb970b049e375ead59c3e',NULL,'2022-05-22 14:24:11'),(202,2,'Opaque Access Token','api','8d49f20fb611d5270ed3020b973443e07e441f97defa24f55f08d338683df087',NULL,'2022-05-22 15:28:37'),(203,2,'Opaque Access Token','api','3640d2a3c4c33684042654e8817203094df1bcd2b7aeb6f823c1d3dc5778970b',NULL,'2022-05-22 16:44:23'),(204,2,'Opaque Access Token','api','9402999d04299c6a3896cb72aeed40380392f03d41d19366a23c946d6c9577f4',NULL,'2022-05-23 14:26:04'),(205,2,'Opaque Access Token','api','bcb19b0455fe0989b31c47028815fa9c949f08ed8010d95d4af9f72559146753',NULL,'2022-05-23 16:27:46'),(206,2,'Opaque Access Token','api','a9ee8e7c50438910926a9766b1945fa35941fc39c57f6e6cd0f7ad86815b4166',NULL,'2022-05-23 16:38:42'),(207,2,'Opaque Access Token','api','59b7a58f208fad4bf973d37c33b6b722504aa121012317f30e3f5e28b249ffba',NULL,'2022-05-23 17:56:37'),(208,2,'Opaque Access Token','api','dd83173af6c64fdc0bbb05a135b1d98aa013bfd14a4927e438bcc120a5625c55',NULL,'2022-05-26 12:41:57'),(209,2,'Opaque Access Token','api','e42d1a02e51bfe732c16986aa6ad9e8d8c1a4280e80063a2ad12391c2bed8d8f',NULL,'2022-05-26 12:42:38'),(210,2,'Opaque Access Token','api','76b510a6943d8e7dc144a7c2414bcfd2f31fb4523f90bcd410ab9dac9e36210f',NULL,'2022-05-27 09:57:30'),(211,2,'Opaque Access Token','api','749482ace2ef04ca7ab98a1df56c763372185f9374828ecedaf474b0c67d3e3c',NULL,'2022-05-27 10:34:38'),(212,2,'Opaque Access Token','api','6fa4fc796319e0c424344eb65faa1cde6a21036b3cd5ef0af3a6829a9d7e0a7e',NULL,'2022-05-27 11:19:43'),(213,2,'Opaque Access Token','api','a9faa51530c2e1f3bf83e4c33e3cda2cd697609d373bb4af84ceac7ab70e564f',NULL,'2022-05-27 11:25:54'),(214,2,'Opaque Access Token','api','95136a0784d0c5a3c020e2bd797ad43c7ee953af9129ff0ac453adcdb8cc6591',NULL,'2022-05-27 12:20:46'),(215,2,'Opaque Access Token','api','62fe647129a6f84b1394762abd020d45654735c9c803dca7772ccafed16b9d70',NULL,'2022-05-27 12:59:49'),(216,2,'Opaque Access Token','api','ab6eb9e811b8bba9c0f33cf39f95d44dc94cb93fcfed1f14b475a9fd3b2ca436',NULL,'2022-05-27 13:33:07'),(217,2,'Opaque Access Token','api','ea3f0dc23c4ede661a7041a2f1637ee68d2fff8096df12a9a6d47be1bf77d191',NULL,'2022-05-27 13:49:56'),(218,2,'Opaque Access Token','api','a35398120de189dd9536695dc7956da978a606767e21e17ec0642b54ae1cecec',NULL,'2022-05-27 13:51:27'),(219,2,'Opaque Access Token','api','b008cbb27c1bff964c18a19e215d1685c4b2111f41df7f5bfc62c8432d1b4513',NULL,'2022-05-27 17:45:08'),(220,2,'Opaque Access Token','api','cc8a55dd2b8ffd4b4ab9ab36c8a65a5e1913ab3ea5085baa24fe9dffdb99dc62',NULL,'2022-05-27 19:49:16'),(221,2,'Opaque Access Token','api','2606ed5d0f958a295ef0a345b7c7f6a681662f3c6d59a7eac694b9eea99719c8',NULL,'2022-05-28 10:34:25'),(222,2,'Opaque Access Token','api','47969138cf6505b06064f38ee49016f6c46b7943af566a597725b1b66d3042a0',NULL,'2022-05-28 16:52:22'),(223,2,'Opaque Access Token','api','7d7f4f537bece2e4e07d092bf813877f2c1f2751ca55945fd17a1f37fadc2fd1',NULL,'2022-05-28 17:23:58'),(224,2,'Opaque Access Token','api','c579a63d55de9c05cad48cd2b7f639575ab47f0850db312632fd983cdac3bfa7',NULL,'2022-05-29 07:09:12'),(225,2,'Opaque Access Token','api','ec23a11e3edb6a04eb0a7b40275153b79debcaa66ae4dcb4652e94241d0ce1f8',NULL,'2022-05-29 09:46:00'),(226,2,'Opaque Access Token','api','b5684b464299becf4755f96e3d5d641f1377eb838d0d45e6656caf5fa7027e4d',NULL,'2022-05-29 11:22:38'),(227,2,'Opaque Access Token','api','90c5694d9d8dadbd71eb3edb8e820a9a45f6812159c09e5cb6b464f97080e02f',NULL,'2022-05-29 15:10:12'),(228,2,'Opaque Access Token','api','f9b5557ac408633e2bd37d955b1b702e1480ef0022723ca173746f05d18df732',NULL,'2022-05-29 16:43:29'),(229,2,'Opaque Access Token','api','f99e265d0a8a63cb648d256d73142ad8b532d6602dd9ea512d38c420c415a863',NULL,'2022-05-29 17:58:44'),(230,2,'Opaque Access Token','api','4a2fcf4bd47263c681429a1e8e84d48700b38667ab9ae62f007bb774eb6fac4c',NULL,'2022-05-31 14:21:06'),(231,2,'Opaque Access Token','api','30ef6770bb95144871742c2d65e301fb035eba910b95ecf195e8e7b43c0cbb5e',NULL,'2022-05-31 15:56:10'),(232,2,'Opaque Access Token','api','a7f7ae975c81138c4150d6cda0b0716ef72682033ca0d5565f6e07e1a50503f0',NULL,'2022-05-31 16:00:13'),(233,2,'Opaque Access Token','api','d8b5b4cc837b40d70b48ac462a8b1a53fc3b674160b9cf4760b343b928edd4ca',NULL,'2022-05-31 17:51:57'),(234,2,'Opaque Access Token','api','43da2185b6675b3b4c6689778fdfade8a6321611bdaa06eaec59b08574707121',NULL,'2022-05-31 18:13:52'),(235,2,'Opaque Access Token','api','f5c9ac2d7afbecf14206cff9f81d7dc0355b6e25a88edcb9f33170740cc1f78d',NULL,'2022-06-01 12:41:10'),(236,2,'Opaque Access Token','api','5ccae64b2988e7c1cd8d11ea78ee5014921d95f71cb99dabde4edeb34b19495c',NULL,'2022-06-02 15:31:29'),(237,2,'Opaque Access Token','api','24ea2f87d7e0a0aef3ccd3e1307beb2f08f43d2915ae0e3101e75be3c25b1d26',NULL,'2022-06-02 16:00:55'),(238,2,'Opaque Access Token','api','ddb0cf97987472d43ab64952b0fe990459a84a79e4e1fddaaf4dbe0537f1e5f6',NULL,'2022-06-02 18:12:26'),(239,2,'Opaque Access Token','api','62cd97c13a02f58e46b7a134e0409ac336b33fffb8901147e4ed530fe10e0492',NULL,'2022-06-03 05:55:39'),(240,2,'Opaque Access Token','api','a3003098025f6e36e52c093aba56b16cc4bbe50dcb14b944039dee589a5a6693',NULL,'2022-06-04 08:33:33'),(241,2,'Opaque Access Token','api','cda603a4076db8cd32b544036c618bbcda1b9307d320582109f81d14cd5f3fbb',NULL,'2022-06-05 11:54:44'),(242,2,'Opaque Access Token','api','4554331f567d83194c55ea7fe05a82c38d8901369445c2de52e43cef4493cc53',NULL,'2022-06-05 13:47:45'),(243,2,'Opaque Access Token','api','2326a232a941011922f372b768a935943ddab630706468aa5ebcc90a258b15dc',NULL,'2022-06-05 15:16:16'),(244,2,'Opaque Access Token','api','06a3926f472c8c62a2d52dbb7c171964b6fb9bc35bbc10f06a9d5bda9f2b2623',NULL,'2022-06-05 16:07:11'),(245,2,'Opaque Access Token','api','6456b3690db670c3dd8a650931760df2d56ea14567580752476be2f5e1e95d83',NULL,'2022-06-05 16:27:54'),(246,2,'Opaque Access Token','api','f65b9745ee18c04330998b22f944e130df07948151003bf87d15b43ecce2c2df',NULL,'2022-06-05 17:24:56'),(247,2,'Opaque Access Token','api','432d7b0bbd694aef4ea73c3b0eff917bd0e1d25a8aebcbfd4aef0cc60f739665',NULL,'2022-06-05 18:28:40'),(248,2,'Opaque Access Token','api','d7caf182c8703bc903742c3d4ad0a44596feaf5061c6af5d4eb16b3e7b3f8e47',NULL,'2022-06-05 19:34:26'),(249,2,'Opaque Access Token','api','101f721a9bfd60341bd45d826aab8b08c15d5068276c54f114684065244f7016',NULL,'2022-06-06 07:38:17'),(250,2,'Opaque Access Token','api','50b5efd71f4e0ee1a09804aa38cdf72c90aab14edb15ace3b068db9412aa415a',NULL,'2022-06-06 09:59:51'),(251,2,'Opaque Access Token','api','3c5d47960c480f1f85a1a196262563c0097c3fd9b113058666b4ebba29859861',NULL,'2022-06-06 11:02:59'),(252,2,'Opaque Access Token','api','50e86b2b21a4babf38f8d7de6fdbf9aa8b86e83be97fcfb04c3ecdabe46ee365',NULL,'2022-06-06 12:06:38'),(253,2,'Opaque Access Token','api','24d6081e708b13d0be51ab5039d5142e42ccd5aa59cb71532b4e4c7723c25f5c',NULL,'2022-06-07 05:48:38'),(254,2,'Opaque Access Token','api','0a84b27e429ef8f7721bad695803b46de56e9c97ec3099fc8a6edf97e50af0bf',NULL,'2022-06-07 07:53:38'),(255,2,'Opaque Access Token','api','93d411e11482c8e926d1a95b32090131f10a02cd531378b4b4983c41cf2ccdb3',NULL,'2022-06-07 09:05:38'),(256,2,'Opaque Access Token','api','bd8eb4e49271c1e33e72981625e6600d0d3e8238e86e5417e1024fc582196426',NULL,'2022-06-07 09:13:15'),(257,2,'Opaque Access Token','api','059ad28987449231966433769092fd76d6385b7bc9a436c8ee3af4097f682b6a',NULL,'2022-06-07 10:14:26'),(258,2,'Opaque Access Token','api','1570551bf809ac2cf96be1423b994c0fc774ee6d39b04204b7052a72bfc0ae41',NULL,'2022-06-07 13:25:35'),(259,2,'Opaque Access Token','api','02c8167d8653c67ae9300b20815e2655db8c287f260370c5ce7658626825ad11',NULL,'2022-06-07 13:53:19'),(260,2,'Opaque Access Token','api','872541973ced84b3132fee75ee33302d1514a52e8c051af2107367039a529521',NULL,'2022-06-08 11:58:41'),(261,2,'Opaque Access Token','api','36c75d0bd5070f1ca4b5af847eb9d74a5bcc56cea0a5494faf8e86ec2b0abef8',NULL,'2022-06-08 14:06:49'),(262,2,'Opaque Access Token','api','bb523b6b14469e7e0bdbe0eb4b1d058dfcdd7627a09f84b4dd198adab2ae2899',NULL,'2022-06-08 14:07:42'),(263,2,'Opaque Access Token','api','66c7197722166ff645eb27ea09bb3d15f210d5ab3c29778c01a7dc5165cf92ce',NULL,'2022-06-08 15:23:21'),(264,2,'Opaque Access Token','api','f7aeac40509f1e577c3d0a6cd6b549f6080bedfdfc184e4b6d7abf120a5407a8',NULL,'2022-06-08 15:34:53'),(265,2,'Opaque Access Token','api','dd5e089b549255bccb355752e8a73bfe7fbf704d6c5e5a3e1b33c127c316b8ef',NULL,'2022-06-08 16:25:23'),(266,2,'Opaque Access Token','api','a2cbbd2d8d69fe2b4d45a28ac379449eba14eebef58fea46e983db70f76a4e76',NULL,'2022-06-08 16:25:23'),(267,2,'Opaque Access Token','api','e39fbef176c8fe971832934b2ab7fcef83405d83abc84a00ab205757f3f548d7',NULL,'2022-06-08 16:47:42'),(268,2,'Opaque Access Token','api','101b421bcce54a6e1b9668b94b31d190054ddc00caeb63ba8ccdb2841fbcf0c1',NULL,'2022-06-09 13:27:57'),(269,2,'Opaque Access Token','api','76d499817ff239b01fcbd5c0b6beffae3abe82f46a23b06313aaaf6862eda1c0',NULL,'2022-06-09 18:15:46'),(270,2,'Opaque Access Token','api','d4cfc054701f91a9e9a7a12b437e3a8ee10c14db15308d794932a9b934b6bbec',NULL,'2022-06-11 07:48:13'),(271,2,'Opaque Access Token','api','9ca36bed15f58706740c8e4e224ac7aacf4fcb718be374c07919356816fc5f4f',NULL,'2022-06-11 12:42:17'),(272,2,'Opaque Access Token','api','3a2584a97d015cfeb7cad0eebe38b74fbd4c6208d8d62ba63b406c49d349a15b',NULL,'2022-06-13 13:01:56'),(273,2,'Opaque Access Token','api','3e24e2efd90ab84d688e8f563c2523b891f5302aa53f0f9787461154822474a9',NULL,'2022-06-13 15:22:03'),(274,2,'Opaque Access Token','api','b0b6e297526ccd9a34e3f1287321797297e8ecaac4de7d0e43cc4a2527a53314',NULL,'2022-06-14 14:17:32'),(275,2,'Opaque Access Token','api','a95b1809c845ed4ec536c3d5c5bd7242625f5d1167bc87073c7bd1799bf15b61',NULL,'2022-06-15 03:24:34'),(276,2,'Opaque Access Token','api','ab1eea7146bf3a49c34ddd448e7221707b8c6105b6d29fe9e13f3630ccdf7c6d',NULL,'2022-06-15 03:29:19'),(277,2,'Opaque Access Token','api','dcb9a753e1bff51e5f0d773e9aada6b36e9c46f6cb95caeeab97b682f1121333',NULL,'2022-06-15 04:45:58'),(278,2,'Opaque Access Token','api','00a5ded9106076a226ae36be9b011e1942385c50a4d2f925f069e0feb9f7f8cf',NULL,'2022-06-15 06:03:22'),(279,2,'Opaque Access Token','api','6f433b5d9ead8203efe58d765e408274b15b47e8b91abb25f1e3e9c52ba19afb',NULL,'2022-06-16 08:44:00'),(280,2,'Opaque Access Token','api','c1f2d832ff93d147fd6ab51f59fa8177de7c76dbd01e389a3467ba92ce945197',NULL,'2022-06-17 10:28:22'),(281,2,'Opaque Access Token','api','db03711bd750f204c0e57a07766874c0d90c1940350ac610bca976d3e1a71e7a',NULL,'2022-06-17 10:34:10'),(282,2,'Opaque Access Token','api','743c9b879ce19c6482b949dbcabde9e7401f992d2d93433f6c4f1672184418f9',NULL,'2022-06-17 10:36:12'),(283,2,'Opaque Access Token','api','e3ddecc495fbe73169e0b23ce87522e2ef264bb5aa8bb5ca4c9c0bab0233ff5a',NULL,'2022-06-17 11:53:12'),(284,2,'Opaque Access Token','api','5b2807f948c291caeaa0ab5aa4ef76b73429da8bb9136a7fb74b6be370178530',NULL,'2022-06-17 12:10:04'),(285,2,'Opaque Access Token','api','51fc3da923d81fb718ef0163a1d122c74f15f9ff36c589bdaa57333b3dc5665c',NULL,'2022-06-18 13:06:43'),(286,2,'Opaque Access Token','api','765b3357595e72cd3be7beb2264455dd22149e3e1dbcf59b8a17efc828aeae81',NULL,'2022-06-19 09:50:09'),(287,2,'Opaque Access Token','api','9447fe6134a88df4ec2480cd70fb4e0719dc3a6ab1970647f7f994e70a83813a',NULL,'2022-06-19 12:51:50'),(288,2,'Opaque Access Token','api','26083e21a3ce1c37528e03a471542c58e1cbc660e08f19089e510fa2385bcbd7',NULL,'2022-06-19 14:47:25'),(289,2,'Opaque Access Token','api','2b5e391fb648d8efcd0cbe81503cf8617cbb222c3381236eebf534fef2122be1',NULL,'2022-06-21 05:13:25'),(290,2,'Opaque Access Token','api','1124195bc7a5849dc82111a8a490a3e32db6a999c3416948d7f6ac7e3131065c',NULL,'2022-06-21 05:40:32'),(291,2,'Opaque Access Token','api','18f2f37eea7b2696bb17153cc33a01a422b3642d3dd43607744efebe6a158e07',NULL,'2022-06-21 07:14:59'),(292,2,'Opaque Access Token','api','33024c03ddf6666074cf2c4fd745820931844efbec84384e2c7d216fe4509bd8',NULL,'2022-06-21 10:35:41'),(293,2,'Opaque Access Token','api','582fa1fbaa7ec62849b62bd73be6564d8da6f83a9c6d44fcc47cd8dfd790a715',NULL,'2022-06-21 11:37:27'),(294,2,'Opaque Access Token','api','013b7f3bcf28b1c4f05a52a83aed93655b30df82676d5b715cc924c4fc22a5af',NULL,'2022-06-21 12:21:42'),(295,2,'Opaque Access Token','api','9cf47525be97d49b1f120d4dfb6854530378e9f313398e08e2d0d9a1814b0956',NULL,'2022-06-21 12:40:53'),(296,2,'Opaque Access Token','api','ad6469c781e2f136d09d621f1bb8ce60ace03abf02477b56aab45806a0ff1e49',NULL,'2022-06-21 13:59:17'),(297,2,'Opaque Access Token','api','98e45435a7a616a591f011d925280728968464e522052f09c4f87ce9e67adbcc',NULL,'2022-06-21 16:52:01'),(298,2,'Opaque Access Token','api','15abd6382bf9636b23ab1c9f7e4db5d27f22791dec1e0be7344d98b09f443b0b',NULL,'2022-06-22 12:15:21'),(299,2,'Opaque Access Token','api','0e352d0ba3cec2d1584af28dab9681d0e8b43de25e9b15b0ec12689cad39796b',NULL,'2022-06-22 13:33:53'),(300,2,'Opaque Access Token','api','c2e0a71834fc1c0a066d3b0ce985cb567325f2767c691b24d7ed3170aa18d84c',NULL,'2022-06-22 14:15:53'),(301,2,'Opaque Access Token','api','ed7e26c5e6c3afe30556f6fb418e37dee22ca54f5fc0caa3f6cb12144c095cf8',NULL,'2022-06-23 05:19:19'),(302,2,'Opaque Access Token','api','f3a942e605e388ea586434a4e8349b92cfecfbdb95e51cffd71975be116257fb',NULL,'2022-06-23 08:00:30'),(303,2,'Opaque Access Token','api','996acd7eb083200641d5aeb7cd3945968246dea0ee13a85ebf96bc2202f2be3f',NULL,'2022-06-23 10:08:13'),(304,2,'Opaque Access Token','api','97dfe64a396d5b591658a8d8d8671d010993ec711f98ed8278e677f9b2a6fafc',NULL,'2022-06-23 10:21:31'),(305,2,'Opaque Access Token','api','72ae4ad1ef1da9536730f9dfb89be7a6d374987164a887245dd1f95262206d02',NULL,'2022-06-23 10:49:24'),(306,2,'Opaque Access Token','api','eba07a038960d1e4d57dfe32a767842cbfe4205af1063f6822dd1cdad7b759d8',NULL,'2022-06-23 11:37:03'),(307,2,'Opaque Access Token','api','bf6301e889352f78350a65bbfd9e6dc0b7ef2399c01749f505b72298fb281611',NULL,'2022-06-23 12:32:42'),(308,2,'Opaque Access Token','api','90b848bcb0b0c6e9fe51a18b827f9be22bd0d723ed3b121a4631c0a27ad666b8',NULL,'2022-06-23 14:00:38'),(309,2,'Opaque Access Token','api','24f027d823454680bec92f3f0655e0a7dfc7bf4d9fc2f040aa23c36020eb10d4',NULL,'2022-06-23 17:08:51'),(310,2,'Opaque Access Token','api','41fcf3e06d7ccb380cb001d59072b4c663aaac49c0eaabfe144f6de54c0b73f7',NULL,'2022-06-24 06:47:58'),(311,2,'Opaque Access Token','api','019c9a4476fc32a36d4b78c4ce64332e11bbcee97110e03bdcc4235193ee202a',NULL,'2022-06-24 06:55:07'),(312,2,'Opaque Access Token','api','9b9acf23dd51c0567c3f30ac20e1a432f3313a8cb4e0f735574bf028c2504396',NULL,'2022-06-24 06:56:28'),(313,2,'Opaque Access Token','api','7687e204636121e799a7445161f2b4cad12de50f44710cf2e0435ce6bba03776',NULL,'2022-06-24 07:29:48'),(314,2,'Opaque Access Token','api','d7ca64a995de2f6c8a04eb4be6f3454331b500ea4bc501b092a21b1d37173693',NULL,'2022-06-24 07:35:31'),(315,2,'Opaque Access Token','api','1d9a273216c8a7265866bccd4cf94a5d6c48cacb21d4e822de8a5d47709a7361',NULL,'2022-06-24 08:04:06'),(316,2,'Opaque Access Token','api','9e4225f585645302c3af37d5c7cda0bfccc4fa49eb3598289ed8602a0de3d344',NULL,'2022-06-24 08:15:07'),(317,2,'Opaque Access Token','api','6e5f120462680618412c9ae2b2063ed8dd934fa11eaf6adc79cf764e01d5ef32',NULL,'2022-06-24 08:30:16'),(318,2,'Opaque Access Token','api','1e711271afb4ed9038652a7062f7156d18508698e7ef71c808b71231c4b7f792',NULL,'2022-06-24 08:59:44'),(319,2,'Opaque Access Token','api','e5144556af31a3d5a017d330aceb48437b807ba00ae33e58984e85bc675eb30c',NULL,'2022-06-24 09:01:02'),(320,2,'Opaque Access Token','api','51136d5c52fc54c5109913b62e4b317d7a0d0ec4e2972c77fb8bf95cfdd5f672',NULL,'2022-06-24 09:14:16'),(321,2,'Opaque Access Token','api','52f3519af1bfb8e4a0fc408313c8663318007b81ef8da44e22e3163930d020e7',NULL,'2022-06-24 09:17:15'),(322,2,'Opaque Access Token','api','bb868bc5cfe40b49e0136bd1ad2514764244d987285d05afdee1292d0d5408d8',NULL,'2022-06-24 11:12:20'),(323,2,'Opaque Access Token','api','871393e9ef562a48fa709f7e7ca75b3e26a14db985c86c8aec76be2e6704dad2',NULL,'2022-06-24 12:23:10'),(324,2,'Opaque Access Token','api','8f9c30b8989384298e672f121baddc5fe064f33480ba6fb1be7cb862c40cab27',NULL,'2022-06-24 13:43:33'),(325,2,'Opaque Access Token','api','649e4e37bdf99d5f1f88e61dbc30968336c771e402e7ed5075a070c0c52416f7',NULL,'2022-06-25 04:42:46'),(326,2,'Opaque Access Token','api','065faa1aabf9341a5c74fcc7ee8b046b05d3dcb89839860befcd6fc97ca97091',NULL,'2022-06-25 04:57:55'),(327,2,'Opaque Access Token','api','e0114fdac04a930b3474819e458a719a1b4171a21dd992d9c0b582fcba0d4430',NULL,'2022-06-25 06:24:05'),(328,2,'Opaque Access Token','api','6d6a4c2347b277650c3e7d7cc34c5d8ed860f5ad3961000c8a615500fc1a499d',NULL,'2022-06-25 07:22:50'),(329,2,'Opaque Access Token','api','60819a68a43a2f7c7857ca292e2cc3eeceebae03deababa20f8c21344bab6852',NULL,'2022-06-25 09:17:40'),(330,2,'Opaque Access Token','api','e63a82160dc118870c5f1d57dc4c96a0312c970c96ef552f8ff237c6f7b8ccf0',NULL,'2022-06-25 10:02:24'),(331,2,'Opaque Access Token','api','90a35d80300902c21590fc791a99ff7054ba54a5670478f14d4694ffa86b2c8f',NULL,'2022-06-26 08:06:48'),(332,2,'Opaque Access Token','api','6331239b6c977f9732f2ee2ea29ef580d7b61e91e8709e9dd17f785a69c67c1b',NULL,'2022-06-26 11:25:06'),(333,2,'Opaque Access Token','api','4f35bcd0ef0f00e2fba3777a2b70b57576b55bd3f25aff2f5c5559c9cc437905',NULL,'2022-06-26 16:15:39'),(334,2,'Opaque Access Token','api','5daa2af1df10294c6afc3b5749519d81cbe42e8f3f7ee9c6c0dc0ab49fa6bfa5',NULL,'2022-06-27 06:23:18'),(335,2,'Opaque Access Token','api','ae505b9767c639c1169750f59f04168e74516cfa9894fe17370b8efeed19e073',NULL,'2022-06-27 06:56:02'),(336,2,'Opaque Access Token','api','433aeda4a163747c6785f053d9f862c12623323a90e7b67e03e8934f1197f65d',NULL,'2022-06-27 08:37:18'),(337,2,'Opaque Access Token','api','95e392ad23b8c6ed98ad087186b2f933cb1c5a154ff865a26fe45e8c07b7bebd',NULL,'2022-06-27 12:01:34'),(338,2,'Opaque Access Token','api','8f0799884cb8e2a3643dd88095d26666df78f94097288446bd0f75dfafcd5a87',NULL,'2022-06-27 13:54:53'),(339,2,'Opaque Access Token','api','70f38fd7c2629fc6f1e4401c1aa2e783a16da729a96bdef3f45857c44dd58a33',NULL,'2022-06-27 16:01:45'),(340,2,'Opaque Access Token','api','58ac4308b8e5bb439c34771479298f3625760a804258346631ed168676049e6a',NULL,'2022-06-28 08:51:26'),(341,2,'Opaque Access Token','api','c517004f2c399b26765e917c24cdb8edd3a164a35e3fed21573102b0e7d37107',NULL,'2022-06-28 08:51:28'),(342,2,'Opaque Access Token','api','c5b86b912d9e97036759f96710ca15d14a8c24b0b2e92debbf3f092c93e35bda',NULL,'2022-06-28 11:02:34'),(343,2,'Opaque Access Token','api','0caddd01ffb61433c59128b458ea7ab370e2592acd9a0ea987e83902086a4d7a',NULL,'2022-06-28 12:03:53'),(344,2,'Opaque Access Token','api','d8579cf3d30a0c210e233cbe7f90a648891b5412a9821ba1f3135dc6fed2b3d7',NULL,'2022-06-28 13:23:43'),(345,2,'Opaque Access Token','api','4a69222bbcc38423095fc280146d58fd081f0e4bebe74f160c9be397bc13b355',NULL,'2022-06-29 05:17:46'),(346,2,'Opaque Access Token','api','09e545281e599352a77a5a0941f1e0a08929d3d44f3d67c28c9f6eb4becdd002',NULL,'2022-06-29 06:35:05'),(347,2,'Opaque Access Token','api','162641051094ca51619858abbb7283540dc1deede5dbb55314a38b1d0242a831',NULL,'2022-06-29 06:49:33'),(348,2,'Opaque Access Token','api','a7b62b9184acd62618a376b90bf98e03fca718a06259728eab2fa7483a744ac6',NULL,'2022-06-29 07:39:09'),(349,2,'Opaque Access Token','api','ba984b6a6dfa44e603662d6a62036fd9cdfa3096ec1e3ff52dafb42ff4a83f19','2022-07-06 07:46:49','2022-06-29 07:46:49'),(350,2,'Opaque Access Token','api','575aad284c50c046803aea29c048ecf99a44f935ccedd67fbedce3c1c25d4980','2022-07-06 07:50:44','2022-06-29 07:50:45'),(351,2,'Opaque Access Token','api','4b927a86e9bcdf1853578a00c2622f55bc6a018115c9f5d0ba7c957b6cbdf40b','2022-07-06 08:43:25','2022-06-29 08:43:25'),(352,2,'Opaque Access Token','api','14df15ca12edc49755b95935f586ab60812eae86f801cc0eea8d7f77ed3ad8c2','2022-07-06 09:13:03','2022-06-29 09:13:03'),(353,4,'Opaque Access Token','api','116ab8c44a062ac28db87056f35c1f3014e798f9f1e0cf4438f66a835b1b7b1c','2022-07-06 09:35:01','2022-06-29 09:35:01'),(354,4,'Opaque Access Token','api','563d1895665d7c669069dac3b6f6847480895c4304ecc1e5a6729aa252bd8c3e','2022-07-06 09:35:15','2022-06-29 09:35:15'),(355,2,'Opaque Access Token','api','75e7c37f7142d7fa2b7a201776ca5b1f1cf8c201ed1fee58fc1264a598cd6184','2022-07-06 09:38:07','2022-06-29 09:38:07'),(356,2,'Opaque Access Token','api','4ebb21f6a53d418171bb5a7d3b6533daa5790056a645dba5e2660708754950ef','2022-07-06 09:42:55','2022-06-29 09:42:55'),(357,2,'Opaque Access Token','api','b8fd53f70ebb0165aba1bbadc31bcdc4a0a681ac9727b03bae197c4e5d764562','2022-07-06 12:41:36','2022-06-29 12:41:36'),(358,2,'Opaque Access Token','api','d87f2391db4620c0eebd0658f9829f95acb0d99462d54a7b20040088854f9263','2022-07-06 12:52:51','2022-06-29 12:52:51'),(359,2,'Opaque Access Token','api','ba3a6bfd7305995b905784dfb617276435ea8c1cdd7f5689511c02183d17d2e7','2022-07-06 13:51:15','2022-06-29 13:51:15'),(360,2,'Opaque Access Token','api','30590cb76a64876613931fcf7d2b8e6d1e8d398c90c3b28a14f707244f8282f3','2022-07-07 06:38:33','2022-06-30 06:38:33'),(361,2,'Opaque Access Token','api','910bd7a5e18bdcd9b3be91ef26f3e9aaa6ea8e6efe5c19c46a2d0f0184867646','2022-07-07 06:40:54','2022-06-30 06:40:54'),(362,2,'Opaque Access Token','api','b2b07e8c988ff7b5ba5d7ff772d8da6d1c35ccb8e363250e193c744a3b63885d','2022-07-07 07:44:08','2022-06-30 07:44:08'),(363,2,'Opaque Access Token','api','f8cbf62607587dbad689d43f6e452f2b9fc9485d5239a5e278f0aee7ddb2135d','2022-07-07 07:48:00','2022-06-30 07:48:00'),(364,2,'Opaque Access Token','api','975136df864255ba8edb8fcf5c252d0fb5450d3d24a79b57b89cdbe9b36493ac','2022-07-07 08:53:29','2022-06-30 08:53:29'),(365,2,'Opaque Access Token','api','503927c32dbe4d148648950f2cb3f7a7d819a475e3ae4cbf397e000599a1ffc9','2022-07-07 08:57:46','2022-06-30 08:57:46'),(366,2,'Opaque Access Token','api','a13a1d92abf8bc6b4afd4350bc0ce755b8bfd3708e42a8eb846c53799e9d6928','2022-07-07 10:00:51','2022-06-30 10:00:51'),(367,2,'Opaque Access Token','api','885ab4bf277203b2f94c646bcbcf2d904fb373ecb7bc31fdac24346bc3dee24f','2022-07-07 10:07:00','2022-06-30 10:07:00'),(368,2,'Opaque Access Token','api','63e903be631a6e10e20ca881c257556b3cae614ded43af58c6e760f5e09d195c','2022-07-07 11:03:05','2022-06-30 11:03:05'),(369,2,'Opaque Access Token','api','52353e7ccb9a0c9e840cc6169b14cc89ce4e121e0604b5f7639c9b8ce2d54b34','2022-07-07 11:16:02','2022-06-30 11:16:02'),(370,2,'Opaque Access Token','api','29ef90435d207678baba677b183dd862efe6be78525dae8c8585c965b06b77b6','2022-07-07 12:21:14','2022-06-30 12:21:14'),(371,2,'Opaque Access Token','api','12fa7ffc97327deb03e2e92d217f011cdbaa662f7583ca88de90ae308312f146','2022-07-07 12:26:06','2022-06-30 12:26:06'),(372,2,'Opaque Access Token','api','de652652379668840a92196300aff1cfe5de25e6532c00353bd17902bf867d4d','2022-07-07 13:25:27','2022-06-30 13:25:27'),(373,2,'Opaque Access Token','api','e1e382900395cbaf3ccc94dca7175bbe4a9bea2d140a04b94e16e439415162c7','2022-07-08 06:19:29','2022-07-01 06:19:29'),(374,2,'Opaque Access Token','api','79c50519047a4a59021704931d17dea1b267010ca6f1538a7c76868aba443e75','2022-07-08 07:56:50','2022-07-01 07:56:50'),(375,2,'Opaque Access Token','api','b75c7572748e4bf7056fb9a258560ffc348713c5cd49765560917cbe01772947','2022-07-08 08:59:09','2022-07-01 08:59:09'),(376,2,'Opaque Access Token','api','878343d92658ff3a9e875876d0dd09d73bc618cccecde35e29a59f4c2a6a324c','2022-07-08 10:00:59','2022-07-01 10:00:59'),(377,2,'Opaque Access Token','api','682479b35c8f047f4ec2cc60527e81d2a1c3d53e8ef00a62139d27a1ad67e441','2022-07-08 11:10:51','2022-07-01 11:10:51'),(378,2,'Opaque Access Token','api','d11d3a4eec3a92fb066cea1aebe83b1c77e765afc5e63f91ff6a561b859ed2d3','2022-07-09 05:40:15','2022-07-02 05:40:15'),(379,2,'Opaque Access Token','api','1b06c0872c27b9cb76a01b9f6a7b030a81e2ff86c1c4abddba9c02b325068796','2022-07-09 06:58:41','2022-07-02 06:58:41'),(380,2,'Opaque Access Token','api','f4071430ecbab3ced7f685f93287f55f3dad402623beb4fe6be007567b6fa015','2022-07-09 08:03:32','2022-07-02 08:03:32'),(381,2,'Opaque Access Token','api','ec7ab8543a667fe86ecf7a93b581e7002622a83cc7ece8b29f4474a445a7fcb9','2022-07-09 09:52:03','2022-07-02 09:52:03'),(382,2,'Opaque Access Token','api','3a7971d7da4563ab1a11a18f135d16bd32e19baca3ebf4567cf18a6e1b9a5789','2022-07-09 10:04:52','2022-07-02 10:04:52'),(383,2,'Opaque Access Token','api','6d580cbe1dd691f7d026b99dca5bd41ecdc19121c9e25e0b1935754ee984cf80','2022-07-09 11:06:05','2022-07-02 11:06:05'),(384,2,'Opaque Access Token','api','bd7f03f4e06545e5c2eb6365a275293e2ecf00c446b5fd88b929f9339c847adb','2022-07-09 12:08:14','2022-07-02 12:08:14'),(385,2,'Opaque Access Token','api','45981f820e424015f01a4b839c96c85bd9656414394e1c45faae671952307722','2022-07-09 12:12:25','2022-07-02 12:12:25'),(386,2,'Opaque Access Token','api','a5ccc5bb349c3338528366df316ef9d7d53467ea0e32f18f9e0592653bde009a','2022-07-09 12:17:27','2022-07-02 12:17:27'),(387,2,'Opaque Access Token','api','78d47816577e8c84813c785cc5d06bbd36f4de1bb530b1c3f46ca8254ee2b58a','2022-07-09 12:17:27','2022-07-02 12:17:27'),(388,4,'Opaque Access Token','api','3cd7e4ca8e90b1cd62c33c6a88df9b1687e8dfc2f020e85e42ade6beda24fdb1','2022-07-09 12:31:58','2022-07-02 12:31:58'),(389,2,'Opaque Access Token','api','308964ba60a0fae7f3c39beac616d1368da143e9219e6e2c86d64d98fa379edd','2022-07-09 13:09:13','2022-07-02 13:09:13'),(390,2,'Opaque Access Token','api','92e1a7d373679a3ecc90f8fb57de1fc59bb8bb3de662ab9c5dd94907df93624d','2022-07-09 14:33:14','2022-07-02 14:33:14'),(391,2,'Opaque Access Token','api','4958282abdc926b1335285e7d05ce0d0c6674a8747a455bea39f3e9df3829387','2022-07-10 06:16:51','2022-07-03 06:16:51'),(392,2,'Opaque Access Token','api','2ca3eeef061ac6c82ea8ed88f5c5329696b36cf37835800b7912b6fd06764d29','2022-07-10 07:45:53','2022-07-03 07:45:53'),(393,2,'Opaque Access Token','api','8896e39188317382198882d16eba37504d0ac86501f0f140858b4bfb560ac923','2022-07-10 08:17:21','2022-07-03 08:17:21'),(394,2,'Opaque Access Token','api','e6a70e9ac5a2f823e4e3417e0a848506bfd97dd667a430159a1edffcfa95929e','2022-07-10 09:10:34','2022-07-03 09:10:34'),(395,2,'Opaque Access Token','api','3592fb967cdf25374b2f1910baed0ca42d0dcc80db034db39dda5e61d52772dc','2022-07-10 10:17:53','2022-07-03 10:17:53'),(396,2,'Opaque Access Token','api','0396a4edd5b8e661884dc7c0cde08ed589bdfc3204d9b2b2ceece96e3639fdcf','2022-07-10 11:11:36','2022-07-03 11:11:36'),(397,2,'Opaque Access Token','api','079b57f1d05c8066a23c7be45f7880c3d074b83ba7600ead86663ae2bab22d52','2022-07-10 11:35:55','2022-07-03 11:35:55'),(398,2,'Opaque Access Token','api','9986c32fa1c3c0ff3cc7e9499c201a18ab9a55db2f4b25dcf433692aa7f977b6','2022-07-10 11:35:55','2022-07-03 11:35:55'),(400,2,'Opaque Access Token','api','ed50df5b18ece524c13baa9b6254ba8d34fc3ec0e70043c640c6c01bd248b2bc','2022-07-10 13:46:23','2022-07-03 13:46:23'),(401,2,'Opaque Access Token','api','169dbf450bf1bc451e3fab9a42ca1b2569249ded1b3b96e64053c8133c80d0fb','2022-07-11 05:29:29','2022-07-04 05:29:29'),(402,2,'Opaque Access Token','api','dadfcfc9ebc150c5c2348d143cea561a61da00893ff405123e0934740b6589d1','2022-07-11 06:12:43','2022-07-04 06:12:43'),(403,2,'Opaque Access Token','api','29ffa2a4f0a31611cdf4470fe3244fedae69273102f071050035e694b4c99848','2022-07-11 06:40:44','2022-07-04 06:40:44'),(404,2,'Opaque Access Token','api','6997ea2bdda9e2a40ef782f37a2f156779d994f19b9ae3d181c5f01bd6d6d272','2022-07-11 07:14:47','2022-07-04 07:14:47'),(405,2,'Opaque Access Token','api','9d31498bb29bc239f8bf45e01a775473ec10b77ecbd0ccc8c7143cbf3dae07d9','2022-07-11 08:11:53','2022-07-04 08:11:53'),(406,2,'Opaque Access Token','api','5251ae3bef12b1f0d4e7b8032b5296ee4613dba4d47ff6ab2831ec90ebd1b1cc','2022-07-11 08:15:09','2022-07-04 08:15:09'),(407,2,'Opaque Access Token','api','64b13958d16cfb943fa28e639d63a597a2c4a82042556e52c2af3ee2f2286672','2022-07-11 09:18:33','2022-07-04 09:18:33'),(408,2,'Opaque Access Token','api','a5b4ba45c4e322d779ea865fb353b7f4b2e81d50c7e1e54fe50766247d4e4a59','2022-07-11 09:21:05','2022-07-04 09:21:05'),(409,2,'Opaque Access Token','api','738a6843c64ea7cb2bae0cc5efe0cbb78888d3c30421f5642e65d2addd1ed4f9','2022-07-11 10:16:00','2022-07-04 10:16:00'),(410,2,'Opaque Access Token','api','62359213d91854b1d7aa7b7dd47966d5cc1569830db0248efbe8e1da815bad87','2022-07-11 10:22:04','2022-07-04 10:22:04'),(411,2,'Opaque Access Token','api','b44091f47544e4fd8d035d6e34b10ed7b75c8b721df16ee77aa0a49fe11b3dff','2022-07-11 10:56:04','2022-07-04 10:56:04'),(412,2,'Opaque Access Token','api','66156e191cc7fd999d885713dc6c195ac4e0625ceedb0eb58b570ef1a49170f0','2022-07-11 11:23:57','2022-07-04 11:23:57'),(413,2,'Opaque Access Token','api','9ba29b53bda76ca9772977f2f20203700a6796d72c7c850abb5bfb113b6c2cfd','2022-07-11 12:20:25','2022-07-04 12:20:25'),(414,2,'Opaque Access Token','api','dd441d42d3732d2a33d8164384aff69a08167454b23fd43ad9147f6c0d7df070','2022-07-11 12:26:34','2022-07-04 12:26:34'),(415,2,'Opaque Access Token','api','faa94546e471be19ffa18b2ca59af689b9487cbe74be7319f2d1facd33813824','2022-07-12 06:34:27','2022-07-05 06:34:27'),(416,2,'Opaque Access Token','api','681dfcae851c77a58b68a2a1a2c71f50846c5943ae0711c8b5f0de58509b2092','2022-07-12 07:42:02','2022-07-05 07:42:02'),(417,2,'Opaque Access Token','api','8d69b70506dff5dab73f357da62bf6c909ea28df90be50383d66c117d674face','2022-07-12 08:42:05','2022-07-05 08:42:05'),(418,2,'Opaque Access Token','api','34baa96b3a4ded157d2f792ce809ceb98b7f164bd953c14bce0ee557257cae98','2022-07-13 06:05:09','2022-07-06 06:05:09'),(419,2,'Opaque Access Token','api','58fcbdc7ad28c93d174af261febd48e5331f43456461d6b4371556c5175614d2','2022-07-13 06:49:33','2022-07-06 06:49:33'),(420,2,'Opaque Access Token','api','f307c86cbf4fd006f144ab1f934cdc56ae653da0e157d631933ef3ca33df48e1','2022-07-13 07:05:20','2022-07-06 07:05:20'),(421,2,'Opaque Access Token','api','7eef2c4f81fda53db0910171a30864c9e41f9acc0d87192741f73d2bbc8f622f','2022-07-13 07:21:13','2022-07-06 07:21:13'),(422,2,'Opaque Access Token','api','ff5314355d29cd2d71cb629d0aead6a1626db24e2847df2af9300ce9def2a64c','2022-07-13 07:26:46','2022-07-06 07:26:46'),(423,4,'Opaque Access Token','api','2179b8c1260ec6450836607c2a491b19c56221ce97fa800d795f1c089e01bb34','2022-07-13 07:36:09','2022-07-06 07:36:09'),(424,4,'Opaque Access Token','api','d3e5be22269465b051f89054d7aeae7257d7293867084e5a68b508f35d1eab63','2022-07-13 07:37:48','2022-07-06 07:37:48'),(425,2,'Opaque Access Token','api','97d93206435686e7ebc1dd4c3a1bd250408bcea557ca498226fb9bf837691324','2022-07-13 08:18:27','2022-07-06 08:18:27'),(426,4,'Opaque Access Token','api','c8b2009d760910e355b2f9bc09d81d2d4869dc440a265d1e3e854d72bee0a2c4','2022-07-13 08:56:49','2022-07-06 08:56:49'),(427,4,'Opaque Access Token','api','53f9f6ff25c62da07be9d60d70055a18d2065206610cb61a88bc2f5b5b02c5ee','2022-07-13 08:58:37','2022-07-06 08:58:37'),(428,2,'Opaque Access Token','api','bfae9c1f52a9fb34b0d10e7158602b4bdbbeca7090b0307dc7d207067b638e47','2022-07-13 09:19:16','2022-07-06 09:19:16'),(429,2,'Opaque Access Token','api','56788025e10ee92ddea9f12a54439206a484e62bf5b5ef1cde95384366e83645','2022-07-13 09:25:12','2022-07-06 09:25:12'),(430,2,'Opaque Access Token','api','9cb7e600c9ab46e47f8b3db54da4242b42f527efab6f879fef089f4513d85ac2','2022-07-13 09:26:00','2022-07-06 09:26:00'),(431,2,'Opaque Access Token','api','97f5dbd7be31aca49d4241376da53ab945855e981eb0c426e16142e3131058a5','2022-07-13 09:45:02','2022-07-06 09:45:02'),(432,4,'Opaque Access Token','api','38e087a84e74035f390b015c94841a5e1032688cf46798e0bc0469b2ff4ba1cc','2022-07-13 10:08:46','2022-07-06 10:08:46'),(433,2,'Opaque Access Token','api','5d551a06cff608ac9f949f05028461b56cae74e459352b0ccda41e3e6cdca861','2022-07-13 10:23:32','2022-07-06 10:23:32'),(434,2,'Opaque Access Token','api','6d238714d07d7c6ce7ceeaebfafba503a8be4b1a103c455c08aff1dcece627ff','2022-07-13 10:31:14','2022-07-06 10:31:14'),(435,2,'Opaque Access Token','api','717e853ba302dc3dc0715a3b3411130bcb217564d474042ff79139f8daf41a41','2022-07-13 10:31:33','2022-07-06 10:31:33'),(436,4,'Opaque Access Token','api','06ce6a97db25d870d4acf9d75ea0322d5df6b8a47a135abf4e016ae4de7f3e60','2022-07-13 10:44:12','2022-07-06 10:44:12'),(437,2,'Opaque Access Token','api','fdb0a0d5a7e0fa7faeaf1fd6f7b476b2ab8a8b9f13c39784f77358f755d19d0f','2022-07-13 11:31:42','2022-07-06 11:31:42'),(438,4,'Opaque Access Token','api','9f0a1df088df497f89e3674476513312dba13ab17a95818cc3688f2437830b86','2022-07-13 12:47:44','2022-07-06 12:47:44'),(439,4,'Opaque Access Token','api','6f57269f798601a6954f0409ea5ab5e465741e5f48dc1d61a336fa56f01168ff','2022-07-14 03:29:32','2022-07-07 03:29:32'),(440,4,'Opaque Access Token','api','45f4b6dce383ab02bd3840aa72bf79fe9131ef05d1d2111b14ae4852b0779203','2022-07-14 03:31:23','2022-07-07 03:31:23'),(441,4,'Opaque Access Token','api','405c221b121560c360b9723d1148dd5cdbd2ffe1e0e0d4b28a1edf87035ad98e','2022-07-14 11:17:21','2022-07-07 11:17:21'),(442,2,'Opaque Access Token','api','9e13eb1844bacfe80333bb4d5e90a14219f8f7b2367dfba0f15b3e0ac6ceac60','2022-07-14 11:27:42','2022-07-07 11:27:42'),(443,4,'Opaque Access Token','api','31316f3736f28b15c4303dffdcbae7db79f54003723d99cb04da17734c9f26c7','2022-07-15 14:10:22','2022-07-08 14:10:22'),(444,4,'Opaque Access Token','api','145cef7673ed76b1bde2c9eac07f20a8336e4a56b76443d1ddf6e695205aa2ec','2022-07-19 09:47:51','2022-07-12 09:47:51'),(445,2,'Opaque Access Token','api','f22fbd6ca640d6ccbce551f9a7491db4235b719bc9ca30b77a176896e1d9f8ef','2022-07-20 15:07:57','2022-07-13 15:07:57'),(446,2,'Opaque Access Token','api','216da63d44b5ef8ed8a96dbc1eb3fc766eb212897efe8342b53700403351a085','2022-07-21 05:27:54','2022-07-14 05:27:54'),(447,4,'Opaque Access Token','api','3f8829b3890300473cd85bf9e76e1ac281b5a3d5d19d1a22aba312cca7c049d0','2022-07-21 07:43:30','2022-07-14 07:43:30'),(448,4,'Opaque Access Token','api','3b995c4de6f6e816b3c1760125cdab2a9fefb80ea25d2cfb3c86123d2c0486d4','2022-07-21 13:18:25','2022-07-14 13:18:25'),(449,4,'Opaque Access Token','api','47469db1f141186166ccd475e3281a40d3a9d0b9599382f9aecf4ba0554dce8a','2022-07-21 13:46:23','2022-07-14 13:46:23'),(450,2,'Opaque Access Token','api','cf51b4b01be5b91ea7435e9e018ab95e99f09e99b91384131543d0befd71f326','2022-07-21 16:00:36','2022-07-14 16:00:36'),(451,4,'Opaque Access Token','api','f1a143fa9b796c3ebb328b00f874b23db696b4d1a8768b73145523b172d73143','2022-07-22 10:40:59','2022-07-15 10:40:59'),(452,4,'Opaque Access Token','api','6ac904e318ca34fa8e3c37dbc0ab32db857b668f1de30b262afe71de7e9326e9','2022-07-22 12:30:08','2022-07-15 12:30:08'),(453,2,'Opaque Access Token','api','af444ec0429f08c5171367f81eb6c00155bfd493db54ce610c85da05734b985b','2022-07-22 16:52:30','2022-07-15 16:52:30'),(454,4,'Opaque Access Token','api','299012f47b13fd0410e836cbb7738237ba146a03a95148a7004bf8d1cc86372a','2022-07-23 07:08:37','2022-07-16 07:08:37'),(455,4,'Opaque Access Token','api','4c13d18977d5a2ac102a2c447f616e9bce2b5989d066c73d88a1632d8b74709c','2022-07-23 09:23:42','2022-07-16 09:23:42'),(456,4,'Opaque Access Token','api','512b5054412d02311408a9a300e8ba5b9740ad07385895e4af0ac8f9bafe443e','2022-07-23 12:35:58','2022-07-16 12:35:58'),(457,2,'Opaque Access Token','api','ab7260c76ed7876cf20ae3512fd5640cc6f96651c6db1301640a740feaacb214','2022-07-23 15:34:55','2022-07-16 15:34:55'),(458,4,'Opaque Access Token','api','4f93330e033a1309c72132ee08a51025f143622d469dd5a2a3c8b14c7c0c7168','2022-07-25 08:40:19','2022-07-18 08:40:19'),(459,4,'Opaque Access Token','api','c65a9d6c5bb8e2bec21b9bf739dd815eb56ab8a3a616320bce3b222af03dcaab','2022-07-25 11:42:29','2022-07-18 11:42:29'),(460,4,'Opaque Access Token','api','9a564443943c0d6dc0b07c9eb2ef804ef14d8da7db86b29cbce38768b8276ecd','2022-07-25 12:47:20','2022-07-18 12:47:20'),(461,4,'Opaque Access Token','api','1f353ae0539f7c8af4cdd91fc9b762f1e019b41c899e668a9fdf86be020816c6','2022-07-26 12:32:14','2022-07-19 12:32:14'),(462,4,'Opaque Access Token','api','8d281779655a55a6d3ac8f030499b1e431785b8506cc5274bdff7a85fc9acfc5','2022-07-26 13:36:16','2022-07-19 13:36:16'),(463,4,'Opaque Access Token','api','b7e784547f178730b3d0a1c58df77ae227512ae238deb69f46ea383f2369d70b','2022-07-26 13:36:27','2022-07-19 13:36:27'),(464,4,'Opaque Access Token','api','1f07b07d71c422f252c75a7c65f0dc5410cf47bd1f8909d7f797939e58cfa03b','2022-07-27 14:51:27','2022-07-20 14:51:27');
/*!40000 ALTER TABLE `api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arzanladysh_kart`
--

DROP TABLE IF EXISTS `arzanladysh_kart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arzanladysh_kart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `background_photo` varchar(250) NOT NULL,
  `prosent` int NOT NULL,
  `count` int NOT NULL,
  `ulanysh_duzguni` text NOT NULL,
  `srok_date` date NOT NULL,
  `doredilen_wagty` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_key` (`shop_id`),
  CONSTRAINT `shop_key` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arzanladysh_kart`
--

LOCK TABLES `arzanladysh_kart` WRITE;
/*!40000 ALTER TABLE `arzanladysh_kart` DISABLE KEYS */;
/*!40000 ALTER TABLE `arzanladysh_kart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arzanladysh_kart_user`
--

DROP TABLE IF EXISTS `arzanladysh_kart_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arzanladysh_kart_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `arzanladysh_id` int NOT NULL,
  `kod` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `summa` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_key` (`user_id`),
  KEY `arz_key` (`arzanladysh_id`),
  CONSTRAINT `arz_key` FOREIGN KEY (`arzanladysh_id`) REFERENCES `arzanladysh_kart` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arzanladysh_kart_user`
--

LOCK TABLES `arzanladysh_kart_user` WRITE;
/*!40000 ALTER TABLE `arzanladysh_kart_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `arzanladysh_kart_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bolum_id` int NOT NULL,
  `shop_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `ads_type_id` int NOT NULL,
  `tertip_nomer` int NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `route` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (12,2,8,NULL,3,1,'http://tmshop.com.tm/api/images/1656055434003_sd.jpg','gj'),(16,2,NULL,NULL,4,2,'http://tmshop.com.tm/api/images/1656060112081_restoran.jpg','2'),(17,2,NULL,NULL,3,3,'http://tmshop.com.tm/api/images/1656060153380_restoran1.jpg','3'),(18,2,NULL,NULL,3,4,'http://tmshop.com.tm/api/images/1656060242074_r3.jfif','4'),(19,3,NULL,21,9,4,'http://tmshop.com.tm/api/images/1656060504362_moda.jpg','1'),(20,3,NULL,NULL,5,2,'http://tmshop.com.tm/api/images/1656060790216_moda..jpeg','2'),(21,3,NULL,21,5,3,'http://tmshop.com.tm/api/images/1656061245310_m.jpg','weff'),(22,3,NULL,NULL,9,1,'http://tmshop.com.tm/api/images/1656061711318_m1.jpg','dfvf'),(24,7,NULL,NULL,8,1,'http://tmshop.com.tm/api/images/1656492466549_sofa4.jpg','1'),(28,1,NULL,NULL,8,1,'http://tmshop.com.tm/api/images/1656507708373_ser.jfif','1'),(29,1,NULL,NULL,8,2,'http://tmshop.com.tm/api/images/1656507767634_service.jpg','2'),(30,1,NULL,NULL,8,3,'http://tmshop.com.tm/api/images/1656507809132_service3.jpg','3'),(31,1,NULL,NULL,8,4,'http://tmshop.com.tm/api/images/1656508220655_buehnenbild_doorpage-smart-service-welt-01.jpg','4'),(32,7,NULL,NULL,8,3,'http://tmshop.com.tm/api/images/1656926389934_sofa3.jpg','3'),(33,6,NULL,NULL,8,1,'http://tmshop.com.tm/api/images/1656926698324_1500x500121-1140x380.jpg','1'),(34,6,NULL,NULL,8,2,'http://tmshop.com.tm/api/images/1656926859186_281367b52c8dedea8c86a6238bdf9126.jpg','2'),(35,6,NULL,NULL,8,3,'http://tmshop.com.tm/api/images/1656926901810_Constructions-10.png','3'),(36,7,NULL,NULL,8,2,'http://tmshop.com.tm/api/images/1656927667054_banner-02-1210x536.jpg','2'),(37,4,NULL,NULL,8,1,'http://tmshop.com.tm/api/images/1656935322589_3370291.jpg','1'),(38,4,NULL,NULL,8,2,'http://tmshop.com.tm/api/images/1656935365951_332.jpg','2'),(39,4,NULL,NULL,8,3,'http://tmshop.com.tm/api/images/1656935392737_images104.jpg','3'),(40,11,NULL,172,8,1,'http://tmshop.com.tm/api/images/1657102735768_2.jpg','2'),(41,11,NULL,172,8,2,'http://tmshop.com.tm/api/images/1657102769082_cb656d71b8e5e28fd17d10f67cb714533df8fc40_home-appliances-range-menu.jpg','2'),(43,11,NULL,172,8,3,'http://tmshop.com.tm/api/images/1657102951033_8.jpg','2');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bash_sahypa_reklama_dukan`
--

DROP TABLE IF EXISTS `bash_sahypa_reklama_dukan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bash_sahypa_reklama_dukan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `tertip_nomer` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tertip_nomer` (`tertip_nomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bash_sahypa_reklama_dukan`
--

LOCK TABLES `bash_sahypa_reklama_dukan` WRITE;
/*!40000 ALTER TABLE `bash_sahypa_reklama_dukan` DISABLE KEYS */;
/*!40000 ALTER TABLE `bash_sahypa_reklama_dukan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bolum`
--

DROP TABLE IF EXISTS `bolum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bolum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bolum_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `bolum_nameRU` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `tertip_nomer` int DEFAULT '999',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolum`
--

LOCK TABLES `bolum` WRITE;
/*!40000 ALTER TABLE `bolum` DISABLE KEYS */;
INSERT INTO `bolum` VALUES (1,'Hyzmat','Услуга',1,1),(2,'Restoran','Рестораны',2,1),(3,'Moda','Мода',3,1),(4,'Öndüriji','Производитель',4,1),(6,'Gurluşyk','Строительство',6,1),(7,'Mebel','Мебель',7,1),(8,'Öý we Ofis','Дом и офис',8,0),(9,'SmartTehnika','СмартТехника',9,0),(10,'bolum taze','nowyy bolum',10,0),(11,'SmartTeh','СмартТех',999,1),(13,'Gözellik we saglyk','Красота и здоровье',999,1),(14,'Sowgatlyklar we güller','Подарки и цветы',999,1);
/*!40000 ALTER TABLE `bolum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus`
--

DROP TABLE IF EXISTS `bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `background_photo` varchar(250) NOT NULL,
  `bonus_prosent` int NOT NULL,
  `count` int NOT NULL,
  `ulanysh_duzguni` text NOT NULL,
  `mohleti` datetime NOT NULL,
  `doredilen_wagty` date NOT NULL,
  `girish_toleg` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shops_pkey` (`shop_id`),
  CONSTRAINT `shops_pkey` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus`
--

LOCK TABLES `bonus` WRITE;
/*!40000 ALTER TABLE `bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus_bank`
--

DROP TABLE IF EXISTS `bonus_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus_bank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `user_id` int NOT NULL,
  `balans` double NOT NULL DEFAULT '0',
  `ulanylan_summa` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `shops_key` (`shop_id`),
  KEY `user_idk` (`user_id`),
  CONSTRAINT `shops_key` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_idk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus_bank`
--

LOCK TABLES `bonus_bank` WRITE;
/*!40000 ALTER TABLE `bonus_bank` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonus_user`
--

DROP TABLE IF EXISTS `bonus_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonus_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bonus_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_key` (`user_id`),
  KEY `bonus_idk` (`bonus_id`),
  CONSTRAINT `bonus_idk` FOREIGN KEY (`bonus_id`) REFERENCES `bonus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `users_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus_user`
--

LOCK TABLES `bonus_user` WRITE;
/*!40000 ALTER TABLE `bonus_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonus_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand_catalog`
--

DROP TABLE IF EXISTS `brand_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand_catalog` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` int unsigned DEFAULT NULL,
  `catalog_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand_catalog`
--

LOCK TABLES `brand_catalog` WRITE;
/*!40000 ALTER TABLE `brand_catalog` DISABLE KEYS */;
INSERT INTO `brand_catalog` VALUES (1,8,22),(2,8,23),(3,8,25),(4,8,29),(5,8,32),(6,8,33),(7,9,23),(8,9,27),(9,9,29),(10,10,25),(11,11,27),(12,12,25),(13,12,27),(14,12,72),(15,12,74),(20,14,25),(21,14,27),(22,14,72),(23,14,74),(24,13,25),(25,13,27),(26,13,74),(27,13,72),(28,15,74),(29,15,72),(30,16,25),(31,17,27),(32,18,25),(33,18,27),(34,18,72),(35,18,74),(36,19,27),(37,19,74),(38,20,25),(39,20,27),(40,20,72),(41,20,74),(42,21,90),(43,21,91),(44,22,25),(45,22,27),(46,22,72),(47,22,74),(48,22,90),(49,22,91),(50,23,25),(51,23,27),(52,23,72),(53,23,74),(54,23,90),(55,23,91),(56,24,90),(57,24,91),(58,25,27),(59,25,25),(60,25,72),(61,25,74),(62,26,27),(63,26,25),(64,26,72),(65,26,74),(66,27,27),(67,27,25),(68,27,72),(69,27,74),(70,28,25),(71,28,72);
/*!40000 ALTER TABLE `brand_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brend`
--

DROP TABLE IF EXISTS `brend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `surat` varchar(250) NOT NULL,
  `esasy_sahypa` tinyint(1) NOT NULL DEFAULT '0',
  `katalog_ids` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brend`
--

LOCK TABLES `brend` WRITE;
/*!40000 ALTER TABLE `brend` DISABLE KEYS */;
INSERT INTO `brend` VALUES (10,'Intermod','http://tmshop.com.tm/api/images/1654442455337_unnamed (10).jpg',0,'25,'),(12,'ZARA','http://tmshop.com.tm/api/images/1657176427730_zara.png',0,'25,27,72,74,'),(13,'Gucci','http://tmshop.com.tm/api/images/1657176921264_Без названия (2).png',0,'25,27,74,72,'),(14,'Nike','http://tmshop.com.tm/api/images/1657176848540_Без названия (1).png',0,'25,27,72,74,'),(15,'LC waikiki','http://tmshop.com.tm/api/images/1657177084202_Без названия (3).png',0,'74,72,'),(16,'D\'S Damat','http://tmshop.com.tm/api/images/1657177207901_images (1).jfif',0,'25,'),(17,'stradivarius','http://tmshop.com.tm/api/images/1657177336711_Без названия (4).png',0,'27,'),(18,'Adidas','http://tmshop.com.tm/api/images/1657177403672_Без названия (5).png',0,'25,27,72,74,'),(19,'Chanel','http://tmshop.com.tm/api/images/1657177482935_images (2).png',0,'27,74,'),(21,'Chicco','http://tmshop.com.tm/api/images/1657177822664_Без названия (6).png',0,'90,91,'),(22,'Koton','http://tmshop.com.tm/api/images/1657633294653_278763820211220062450476.jpg',0,'25,27,72,74,90,91,'),(23,'Mango','http://tmshop.com.tm/api/images/1657633387359_e666a32071e544f15d3d082bb57e2422.gif',0,'25,27,72,74,90,91,'),(24,'Civil baby','http://tmshop.com.tm/api/images/1657633468269_logo-civil.jpg',0,'90,91,'),(25,'PUMA','http://tmshop.com.tm/api/images/1657633569083_d9635269a26e1af2e8285fcf26a55588jpg.jfif',0,'27,25,72,74,'),(26,'Lacoste','http://tmshop.com.tm/api/images/1657633618685_0Uzwzv.jpg',0,'27,25,72,74,'),(27,'D&G','http://tmshop.com.tm/api/images/1657633713886_89b3b55844c5cd215ebd25d65cbee33b.jpg',0,'27,25,72,74,'),(28,'Burberry','http://tmshop.com.tm/api/images/1657633796727_Burberry.jpg',0,'25,72,');
/*!40000 ALTER TABLE `brend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bolum_id` int NOT NULL,
  `katalog_id` int NOT NULL,
  `category_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `category_nameRU` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `category_photo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (12,4,16,'category1','category1 RU',NULL,0),(27,3,48,'Çaga köýnekleri','Платя для детей','http://tmshop.com.tm/api/images/1653824682754_childrens-dress-beautiful-tulle-lace-2026192.jpg',1),(28,2,49,'Desert','Десерт','http://tmshop.com.tm/api/images/1653837752538_upload-dessert-pic700-700x467-19766.jpg',1),(29,2,39,'Gyzgyn nahar','Горячие блюда','http://tmshop.com.tm/api/images/1653838277992_46ca4e.jpg',1),(30,2,49,'Gyzgyn naharlar','Горячие блюда','http://tmshop.com.tm/api/images/1653838446336_ро.jpg',1),(31,2,49,'Suşi','Суши','http://tmshop.com.tm/api/images/1653845130688_sushi_robots_01.jpg',1),(33,2,49,'Döner we burger','Бургеры','http://tmshop.com.tm/api/images/1653845244304_burger.jpg',1),(35,2,49,'Salat','Салат','http://tmshop.com.tm/api/images/1653845325958_salat.jpg',1),(41,7,53,'Kreslo','Кресло','http://tmshop.com.tm/api/images/1656489594989_f1.jpg',1),(42,7,54,'Aşhana üçin mebel','Кухонная мебель','http://tmshop.com.tm/api/images/1656491499538_kitchen2.jpg',1),(55,3,25,'Köýnekler','Рубашки','http://tmshop.com.tm/api/images/1656574138777_сорочка_стирка.png',1),(56,3,25,'Üstki geýim','Верхняя одежда','http://tmshop.com.tm/api/images/1656574521387_$_57.jpg',1),(57,3,27,'Köýnekler','Платья','http://tmshop.com.tm/api/images/1656574606563_dress300.jpg',1),(58,3,27,'Üstki geýim','Верхняя одежда','http://tmshop.com.tm/api/images/1656575004344_jacket300.jpg',1),(59,3,27,'Balaklar','Брюки','http://tmshop.com.tm/api/images/1656576827878_balak300.jpg',1),(61,3,25,'Balaklar','Брюки','http://tmshop.com.tm/api/images/1656577040505_images.jpg',1),(62,3,25,'Sport','Спорт','http://tmshop.com.tm/api/images/1656578170244_H80bda948a4114cd592837d0b57ad21b6J.webp',1),(64,3,27,'Sport','Спорт','http://tmshop.com.tm/api/images/1656578515012_sport.png',1),(65,3,25,'Futbolklar we batniklar','Футболки и батники','http://tmshop.com.tm/api/images/1656579516183_1e20b2a5274ec16c.jpg',1),(70,3,27,'Futbolkalar','Футболки','http://tmshop.com.tm/api/images/1656579861124_t-shirt300.jpg',1),(72,3,27,'Bluzkalar,tunikalar we köýnekler','Блузки, туники и рубашки','http://tmshop.com.tm/api/images/1656580026029_blouse4.jpg',1),(74,3,25,'Kostýum-balak','Костюм и брюки','http://tmshop.com.tm/api/images/1656580481291_HTB1bdDoafvsK1RjSspdq6AZepXam.jpg',1),(76,3,25,'Ýorite geýimler','Спец-одежды','http://tmshop.com.tm/api/images/1656580676317_51745478_nw.jpg',1),(77,3,27,'Kombinezonlar','Комбинезон','http://tmshop.com.tm/api/images/1656580688912_comb300.jpg',1),(78,3,27,'Ýubkalar','Юбки','http://tmshop.com.tm/api/images/1656580896967_red skirt 300.jpg',1),(79,3,25,'Aýakgaplar','Обувь','http://tmshop.com.tm/api/images/1656581304588_HTB1H.LDelKw3KVjSZTEq6AuRpXaE.jpg',1),(80,3,27,'Aýakgaplar','Обувь','http://tmshop.com.tm/api/images/1656581309104_shoes300.jfif',1),(82,3,27,'Altyn-kümüş harytlar','Золотые и серебряные изделия','http://tmshop.com.tm/api/images/1656583047419_acessories2.jpg',1),(83,3,25,'Aksessuarlar','Аксессуары','http://tmshop.com.tm/api/images/1656583213718_portmone-482x482.png',1),(85,3,27,'Aksessuarlar','Аксессуары','http://tmshop.com.tm/api/images/1656584958936_accessories-banner2.jpg',1),(87,3,27,'Matalar','Ткани','http://tmshop.com.tm/api/images/1656586035841_koja36-300x300 (1).png',1),(88,3,27,'Ýakalar','Вышивки','http://tmshop.com.tm/api/images/1656586848167_701ef69129784a1db31dd587ae1d1c8f--counted-cross-stitch-kits-crossstitch.jpg',1),(90,3,27,'Ýaglyklar','Платки','http://tmshop.com.tm/api/images/1656587741259_Platok-hohloma.jpg',1),(91,3,25,'Içki geýimler','Нижнее белье','http://tmshop.com.tm/api/images/1656588304595_9f6708a4f680161be00159d5764fb672.jpg',1),(92,3,27,'Içki geýimler','Нижнее белье','http://tmshop.com.tm/api/images/1656588523877_H18c5c7f7a0244f82a186ec580953bb75L.jpg_300x300.jpg',1),(94,3,27,'Tikin esbaplar','Швейная фурнитура','http://tmshop.com.tm/api/images/1656590162726_51590p.jpg',1),(96,3,74,'Bluzkalar,tunikalar we köýnekler','Блузки, туники и рубашки','http://tmshop.com.tm/api/images/1656665414975_1640ecc4f84643a3-3782-1-w300h300.jpg',1),(97,3,74,'Üst geýimler','Верхняя одежда','http://tmshop.com.tm/api/images/1656665639339_thumb300 (1).jfif',1),(98,3,74,'Balaklar','Брюки','http://tmshop.com.tm/api/images/1656666095796_2812abb98ee335d497b64ceb16896b50.jpg',1),(99,3,74,'Sport','Спорт','http://tmshop.com.tm/api/images/1656666649373_772904854_162_pic_1.jpg',1),(100,3,74,'Futbolkalar','Футболки','http://tmshop.com.tm/api/images/1656667017925_futbolka-dlya-devochki-cvet-sirenevyj-51152.jpg',1),(101,3,74,'Kombinezon','Комбинезон','http://tmshop.com.tm/api/images/1656667215508_thumb300 (2).jfif',1),(102,3,74,'Ýubkalar','Юбки','http://tmshop.com.tm/api/images/1656667399821_$_57.jfif',1),(103,3,74,'Komplekt geýimler','Комплект одежда','http://tmshop.com.tm/api/images/1656667887398_2a7f2742642f039a711ca57050d50dff.jpg',1),(104,3,74,'Aýakgaplar','Обувь','http://tmshop.com.tm/api/images/1656668317686_2020.jpg',1),(105,3,74,'Aksessuarlar','Аксессуары','http://tmshop.com.tm/api/images/1656668745621_small_nabor_aksessyarov_mattel_1.jpg',1),(106,3,74,'Içki geýimler','Нижнее белье','http://tmshop.com.tm/api/images/1656669235063_PqzAyaw8.jpg',1),(107,3,72,'Köýnekler','Рубашки','http://tmshop.com.tm/api/images/1656669836889_mek2479000282_0.jpg',1),(108,3,72,'Üst geýimler','Верхняя одежда','http://tmshop.com.tm/api/images/1656669966163_2020 (1).jpg',1),(109,3,72,'Balaklar','Брюки','http://tmshop.com.tm/api/images/1656670393360_s-l300 (1).jpg',1),(110,3,72,'Sport','Спорт','http://tmshop.com.tm/api/images/1656670687294_sportivnii_kostum_adidas_1.jpg',1),(111,3,72,'Futbolkalar','Футболки','http://tmshop.com.tm/api/images/1656670931090_thumb300 (3).jfif',1),(112,3,72,'Kombinezonlar','Комбинезон','http://tmshop.com.tm/api/images/1656671168940_thumb300 (2).jfif',1),(114,3,72,'Komplekt geýimler','Комплекты одежды','http://tmshop.com.tm/api/images/1656671826281_1-3-3.jpg',1),(115,3,72,'Aýakgaplar','Обувь','http://tmshop.com.tm/api/images/1656672027863_middle_img_54785.jpg',1),(116,3,72,'Aksessuarlar','Аксессуары','http://tmshop.com.tm/api/images/1656672360489_accessory.png',1),(117,3,72,'Içki geýimler','Нижнее бельё','http://tmshop.com.tm/api/images/1656672937966_b56229a24f3f3e5ea073f1e386214507.jpg',1),(118,3,91,'Köýnekler we sarafanlar','Платья и сарафаны','http://tmshop.com.tm/api/images/1656675361517_HTB1qseEQ9zqK1RjSZFjq6zlCFXaP.jpg_300x300.jpg',1),(120,3,91,'Ýubkalar','Юбки','http://tmshop.com.tm/api/images/1656675902220_thumb300 (5).jfif',1),(122,3,91,'Joraplar we kolgotkalar','Носки и колготки','http://tmshop.com.tm/api/images/1656676603012_52981.750x0.jpg',1),(123,3,91,'Başgaplar','Головные  уборы','http://tmshop.com.tm/api/images/1656677065779_ut_00019827_img_2307-1000x1000.jpg',1),(124,3,91,'Kelte balaklar','Шорты','http://tmshop.com.tm/api/images/1656677359339_-.jpg_640x640.jpg',1),(125,3,91,'Futbolkalar we maýkalar','Футболки и майки','http://tmshop.com.tm/api/images/1656741983966_f5bd9275724bfb0985a0740912f71fe8.jpg',1),(126,3,91,'Hassahanadan çykyş bäbek komplekty','Комплекты для выписки из роддома','http://tmshop.com.tm/api/images/1656742630261_thumb300 (7).jfif',1),(127,3,91,'Aýakgaplar','Обувь','http://tmshop.com.tm/api/images/1656742827906_Spring-New-Crystal-Lace-Princess-Performing.jpg',1),(128,3,91,'Bodiklar we kombinezonlar','Бодики и комбинезоны','http://tmshop.com.tm/api/images/1656743566502_3201900301-300x300.jpg',1),(129,3,91,'Bäbek komplekty','Комплекты для новорожденных','http://tmshop.com.tm/api/images/1656743834136_TELOTUNY.jpg',1),(131,3,91,'Losinalar','Лосины','http://tmshop.com.tm/api/images/1656744439461_thumb300 (9).jfif',1),(132,3,91,'Kurtkalar we paltolar','Куртки и пальто','http://tmshop.com.tm/api/images/1656744647145_thumb300 (12).jfif',1),(133,3,91,'Balaklar','Брюки','http://tmshop.com.tm/api/images/1656744769612_54954.750x0.jpg',1),(134,3,90,'Köýnekler','Рубашки','http://tmshop.com.tm/api/images/1656745380950_thumb300 (14).jfif',1),(135,3,90,'Balaklar','Брюки','http://tmshop.com.tm/api/images/1656745705235_thumb300 (15).jfif',1),(136,3,90,'Joraplar','Носки','http://tmshop.com.tm/api/images/1656745932180_30f1479a711ff2af3413c5f177e0d897.jpg',1),(137,3,90,'Başgaplar','Головные уборы','http://tmshop.com.tm/api/images/1656746391756_100028870654b0.jpg',1),(138,3,90,'Kelte balaklar','Шорты','http://tmshop.com.tm/api/images/1656746584382_thumb300 (16).jfif',1),(139,3,90,'Futbolkalar we maýkalar','Футболки и майки','http://tmshop.com.tm/api/images/1656746802020_thumb300 (17).jfif',1),(140,3,90,'Hassahanadan çykyş bäbek komplekty','Комплекты для выписки из роддома','http://tmshop.com.tm/api/images/1656746982915_thumb300 (7).jfif',1),(141,3,90,'Aýakgaplar','Обувь','http://tmshop.com.tm/api/images/1656747195689_7563.jpg',1),(143,3,90,'Bodiklar we kombinezonlar','Бодики и комбинезоны','http://tmshop.com.tm/api/images/1656748047391_48f797b55499e884f30c8f2f975903be.jpg',1),(144,3,90,'Bäbek komplekty','Комплект для новорожденных','http://tmshop.com.tm/api/images/1656748246101_6ada949a69d026d979a9e43893c24ada.jpg',1),(145,3,90,'Kurtkalar we paltolar','Куртки и пальто','http://tmshop.com.tm/api/images/1656748526162_online-shopping-baby-girl-winter-warm-jackets-children-clothes-baby-winter-down-coat1-0294342001556751956.jpg',1),(146,6,62,'Daşky gapylar','Наружные двери','http://tmshop.com.tm/api/images/1656756459093_e46b725247d689a06d7dadbc0ff95a2a_1.png',1),(147,6,62,'Içki gapylar','Межкомнатные двери','http://tmshop.com.tm/api/images/1656756608093_1-Agoprofil-Double-Round-Model-DR-103-RI-300x300.jpg',1),(148,6,63,'Plastik penjireler','Пластиковые окна','http://tmshop.com.tm/api/images/1656758033595_pvc-300x300.png',1),(149,6,63,'Alýumin penjireler','Алюминиевые окна','http://tmshop.com.tm/api/images/1656758618575_c46fe4e10a2a01b99c1d1575445491.jpg',1),(150,6,66,'Linolium','Линолиум','http://tmshop.com.tm/api/images/1656759108841_3347757_PVC-Bodenbelag-GENF-Parkett-Stab-Eiche-4-Meter_detail.jpg',1),(151,6,66,'Laminat üçin örtük','Ламинированное покрытие','http://tmshop.com.tm/api/images/1656759357741_0Г-00561664new.jpg',1),(152,6,66,'Poroglar','Пороги','http://tmshop.com.tm/api/images/1656759471425_korobka_dvernaya_dub_2070_70_26_s_pazom_pod_dobor_g_vologda.330x300.jpeg',1),(153,6,66,'Laminatlar','Ламинаты','http://tmshop.com.tm/api/images/1656759628407_e8ebbd23f992b1c568fa69cc9656732a.jpg',1),(154,6,66,'Plintuslar we esbaplar','Плинтуса и аксессуары','http://tmshop.com.tm/api/images/1656759913378_00581317.jpg',1),(155,6,94,'Laklar','Лак','http://tmshop.com.tm/api/images/1656760433254_87d0c36a4136a394d27f6963f14a485b.jpg',1),(156,6,94,'Agaç üçin boýaglar','Краски для дерева','http://tmshop.com.tm/api/images/1656760648270_image005.jpg',1),(157,6,94,'Içki emulsiýalar','Внутренние эмульсии','http://tmshop.com.tm/api/images/1656760988470_8412057e-ba04-4ba3-98cb-1d5c3367bd2d.jpeg',1),(158,6,94,'Bezeg emulsiýalar','Декоративные эмульсии','http://tmshop.com.tm/api/images/1656761069551_a8cce617f1a576749cb62b5fc1e1badc.jpeg',1),(159,6,94,'Daşgy emulsiýalar','Наружные эмульсии','http://tmshop.com.tm/api/images/1656761516673_10227637-kraska-vd-ak-novie-tehnologii-3kg.jpg',1),(160,6,94,'Boýaglar','Краски','http://tmshop.com.tm/api/images/1656761628748_s4v825sfvs-300x300.jpg',1),(161,6,94,'Kolerlar','Колер','http://tmshop.com.tm/api/images/1656761848363_img12620_39187.jpg',1),(162,6,94,'Antipas','Антипас','http://tmshop.com.tm/api/images/1656762015273_Sikadur-31CF-A-Normal-300x300.jpg',1),(163,6,94,'Rastworitel','Растворитель','http://tmshop.com.tm/api/images/1656762107868_img1875_28185.jpg',1),(164,6,69,'Smesiteller','Смесители','http://tmshop.com.tm/api/images/1656762340118_17-5-745-65.jpg',1),(165,6,69,'Esbaplar','Инструменты','http://tmshop.com.tm/api/images/1656762535147_external-large.jpg',1),(166,6,69,'Demir şlanga','Железный шланг','http://tmshop.com.tm/api/images/1656762644638_eb057e45850352db71434f3fb2f2d979.jpg',1),(167,6,69,'Howa çalşygy we esbaplar','Дамандех и инструменты','http://tmshop.com.tm/api/images/1656762951164_vytyazhnoy-ventilyator-soler-palau-silent-300-cz-silver_10669a4fe892aa9_300x300.jpg',1),(168,6,69,'Suw nasoslar','Водяные насосы','http://tmshop.com.tm/api/images/1656763062568_nasos_poverkhnostnyy_aquario_adb_40_1288006_2.jpg',1),(169,6,69,'Rakowinalar we umywalniklar','Раковины и умывальники','http://tmshop.com.tm/api/images/1656763150794_AM.PM Sense_55_1.jpg',1),(170,6,69,'Wanna we duş otagy','Ванна и душевая','http://tmshop.com.tm/api/images/1656763305986_fico_fc215_1.jpg',1),(171,6,69,'Unitazlar we bide','Унитазы и биде','http://tmshop.com.tm/api/images/1656763453339_258155.1500.jpg',1),(172,6,93,'Gury garyndylar','Сухие смеси','http://tmshop.com.tm/api/images/1656763679627_starateliPr.jpg',1),(173,6,93,'Kerpiçler','Кирпичи','http://tmshop.com.tm/api/images/1656764196033_ruchnaya-formovka-logotip.jpg',1),(174,6,93,'Alçipan we esbaplar','Гипсокартон и инструменты','http://tmshop.com.tm/api/images/1656764492157_gipsokarton_volma-belgips_gkl_2500h1200-300x300.jpg',1),(175,6,93,'Izolýasiýa','Изоляция','http://tmshop.com.tm/api/images/1656764716899_naplavlayemye-materialy1.png',1),(176,6,95,'Ýyladyjy radiatorlar','Радиаторы отопления','http://tmshop.com.tm/api/images/1656765361221_Rifar_Base_500_5_sekc..jpg',1),(177,6,95,'Boýlerlar','Бойлер','http://tmshop.com.tm/api/images/1656765623605_6679.jpg',1),(178,6,95,'Gaz turbalar we kranlar','Газовые трубы и краны','http://tmshop.com.tm/api/images/1656765727946_sharovoy_latunnyy_kran_vr_vr_polnoprokhodnoy_bosto_6s3zEHV.jpg',1),(179,6,95,'Ýyly pola','Теплый пол','http://tmshop.com.tm/api/images/1656765789689_s-l300.jpg',1),(180,6,95,'Ýyladyjy enjamlar','Отопительное оборудование','http://tmshop.com.tm/api/images/1656765883084_Otopitelnoe-oborudovanie.jpg',1),(181,6,96,'Simler we kabellar','Провода и кабели','http://tmshop.com.tm/api/images/1656767338321_5eb0acb91c30f81d7685598b88cc3917.jpeg',1),(183,6,96,'Rozetkalar','Розетки','http://tmshop.com.tm/api/images/1656767469324_69df0f83-ee30-4c33-bbde-147a692496fa.jpg',1),(184,6,96,'Paýlaýjy şitler we karobkalar','Распределены шить и коробки','http://tmshop.com.tm/api/images/1656768058639_Screenshot_20220702-181824.jpg',1),(185,6,96,'Awtomatlar','Автоматы','http://tmshop.com.tm/api/images/1656768385985_0678daa9cd42.jpg',1),(186,6,96,'Elektrik hasaplaýjylar','Электросчетчики','http://tmshop.com.tm/api/images/1656768477231_schetchiki-elektroenergii-300x300.jpg',1),(187,6,96,'Wyklýuçateller','Выключатель','http://tmshop.com.tm/api/images/1656768799000_71719_1_fcbed6a29027941e66f32ab23b0efb71.jpg',1),(188,6,96,'Wilkalar','Вилки','http://tmshop.com.tm/api/images/1656768939303_048a6632da0ab3658a25ff3968e00561.jpg',1),(189,6,97,'Wanna kafeli','Ванная кафель','http://tmshop.com.tm/api/images/1656830206498_48cc8c5ff5f9b42e13d974488a058717eccd68ae.jpeg',1),(190,6,97,'Keramogranit','Керамогранит','http://tmshop.com.tm/api/images/1656830389055_Plastonda_Decor_MIX.jpg',1),(192,6,97,'Daşky we trotuar plitkalar','Наружная и тротуарная плитка','http://tmshop.com.tm/api/images/1656830539256_98.750.jpg',1),(193,6,97,'Mozaika plitkalar','Мозаика','http://tmshop.com.tm/api/images/1656830686619_keramicheskaya-plitka-mosaic-stone-delacora-dw7ste21-5dcfc24d08a1e.jpg',1),(194,6,97,'Pol plitkalar','Напольная плитка','http://tmshop.com.tm/api/images/1656830835897_fantaziya-5_0x300.jpg',1),(195,6,97,'Bordýurlar','Бордюры','http://tmshop.com.tm/api/images/1656830948877_20f0fd99800ce42d05170d524f49b387.jpg',1),(196,6,97,'Diwar plitkasy','Настенная плитка','http://tmshop.com.tm/api/images/1656831021162_41778_middle.jpg',1),(197,6,97,'Aşhana kafeli','Кухонная кафель','http://tmshop.com.tm/api/images/1656831098303_c199d2f29270b5a4fb7c48a8af7a670c.jpg',1),(198,6,98,'Kompressorlar','Компрессоры','http://tmshop.com.tm/api/images/1656831471392_small_kompressor_top_machine_ta1506_1.jpg',1),(199,6,98,'Metr ölçeýjiler','Метры','http://tmshop.com.tm/api/images/1656831642166_spec40-1-03-04-2018-15-20-46.jpg',1),(200,6,98,'Bolgarkalar','Болгарки','http://tmshop.com.tm/api/images/1656831736091_untitled_2.jpg',1),(201,6,98,'Drel','Дрель','http://tmshop.com.tm/api/images/1656831860773_power_tools_2_300_300_png.png',1),(202,6,99,'Dekor lepkalar','Декоративные лепка','http://tmshop.com.tm/api/images/1656834633730_3fa010dd2a6c695335ae71bb7fa9817b.png',1),(203,6,99,'Asma potolok','Висячий потолок','http://tmshop.com.tm/api/images/1656836134993_pa4-5-300x300.jpeg',1),(204,6,99,'Podokolniklar','Подоконники','http://tmshop.com.tm/api/images/1656836971636_file_377_93.jpg',1),(205,6,99,'Gips','Гипс','http://tmshop.com.tm/api/images/1656837145534_f692cd4f57f9bd22e1c030b2d4e6051f.png',1),(206,6,99,'Oboýlar','Обои','http://tmshop.com.tm/api/images/1656837244030_5e2048dee7d7cede3b03e07f.jpg',1),(207,6,100,'Lampalar','Лампы','http://tmshop.com.tm/api/images/1656841785939_10038498-lampa-lon-95-w.jpeg',1),(208,6,100,'Lýustralar','Люстры','http://tmshop.com.tm/api/images/1656842853741_m38066.jpg',1),(209,6,100,'Köçe we bag çyralar','Уличное и садовое освещение','http://tmshop.com.tm/api/images/1656842941357_4c0cf2f0ad47a29775857d7be44a70c2.jpeg',1),(210,6,100,'Stol çyralar','Настольные лампы','http://tmshop.com.tm/api/images/1656843036190_menatwork_RBX-4176.jpg',1),(211,6,100,'Prožektorlar','Прожекторы','http://tmshop.com.tm/api/images/1656843127148_preview_a2ddbae6d1f2493992b3afced3c11be6_2.jpeg',1),(212,6,100,'Lampa üçin patronlar','Патрон для лампы','http://tmshop.com.tm/api/images/1656843260859_img_16231586229bvfjww6pt.jpg',1),(213,6,101,'Atagzylar we gysgyclar','Щипцы и прищепки','http://tmshop.com.tm/api/images/1656845353934_427610-Jeu-3-pinces-multi-usages-Pliers-Set-silverline-300x300.jpg',1),(214,6,101,'Pyçaklar we gaýçylar','Ножи и ножницы','http://tmshop.com.tm/api/images/1656845697892_original-925x925-fit.jpg',1),(215,6,101,'Gaýka açarlar','Гаечный ключ','http://tmshop.com.tm/api/images/1656845889486_HN59168.jpg',1),(216,6,101,'Sim kesijiler (kusaçkalar)','Кусачки','http://tmshop.com.tm/api/images/1656846074336_87.jpg',1),(217,6,101,'Otwýortkalar we indikatorlar','Отвертки и индикаторы','http://tmshop.com.tm/api/images/1656846238280_b11c7294_f875_11e8_93c0_14dae9f4b3a7_d7fff2c6_ad25_11e9_9a7e_14dae9f4b3a7.resize1.jpeg',1),(218,6,101,'Merdiwanlar','Лестницы','http://tmshop.com.tm/api/images/1656846341088_x5v1z8dp7qi13wq3pbuw04zoew689ygf.jpg',1),(219,6,102,'Kanalizasiýa turbalary we esbaplary','Канализационные трубы и аксессуары','http://tmshop.com.tm/api/images/1656848233361_swr-pipes.png',1),(220,6,102,'Filtrlar','Фильтры','http://tmshop.com.tm/api/images/1656848364505_HEPA-Air-Oil-Filter-for-All-Ki.jpg',1),(221,6,102,'Krestowina','Крестовина','http://tmshop.com.tm/api/images/1656848511528_krest90-300x300.jpg',1),(222,6,102,'Manžetlar','Манжеты','http://tmshop.com.tm/api/images/1656848596442_3de72e29dfa301d8fdda22111d2305aa.jpg',1),(223,6,102,'Zagluşkalar we berkidijiler','Заглушки и застежки','http://tmshop.com.tm/api/images/1656848754678_img_10572.jpg',1),(224,6,102,'Yza gaýdyş klapan','Обратный клапан','http://tmshop.com.tm/api/images/1656848845309_kessel-staufix-rueckstauverschluss-aus-kunststoff-orange-versch-nennweiten.jpg',1),(225,6,102,'Kranlar we wentillar','Краны и вентили','http://tmshop.com.tm/api/images/1656848934697_10546496.jpg',1),(226,6,102,'Tirsekler','Локти','http://tmshop.com.tm/api/images/1656849117246_17391.970.jpg',1),(227,6,102,'Suw turbalar','Водопроводные трубы','http://tmshop.com.tm/api/images/1656849269156_truba-kategoriya1-300x300.png',1),(228,6,102,'Troýniklar','Тройники','http://tmshop.com.tm/api/images/1656849359473_kanalizaciya-sinikon9.jpg',1),(229,7,103,'Spalnylar','Спальни','http://tmshop.com.tm/api/images/1656913518121_99210966_p0.jpg',1),(231,7,103,'Komodlar we tumbolar','Комоды и тумбы','http://tmshop.com.tm/api/images/1656914099044_117157-auto_width_300.jpg',1),(232,7,103,'Ýatylýan otag toplumy','Спальный гарнитур','http://tmshop.com.tm/api/images/1656914695223_32ba8e5cce49aeb311609bcfcb004473.jpg',1),(233,7,103,'Şkaflar','Шкафы','http://tmshop.com.tm/api/images/1656915060263_maestro-300x300.jpg',1),(234,7,103,'Krowatlar','Кровати','http://tmshop.com.tm/api/images/1656916048392_pine-double-bed-300x300.jpeg',1),(235,7,103,'Weşilkalar','Вешалки','http://tmshop.com.tm/api/images/1656916249219_503077392_tn30_0.jpg',1),(236,7,103,'Matraslar','Матрасы','http://tmshop.com.tm/api/images/1656916372576_products_corsicana_color_1000 crazy quilt_1000-t-m1.jpg',1),(237,7,103,'Puflar','Пуфы','http://tmshop.com.tm/api/images/1656916565296_894191c48f7d25ae2e8f775b71429868.jpeg',1),(238,7,103,'Matras örtükleri','Чехлы для матрасов','http://tmshop.com.tm/api/images/1656916817524_11849_image_small.jpeg',1),(239,7,104,'Stollar','Столы','http://tmshop.com.tm/api/images/1656917190920_300_300_productGfx_aa7349ab29ccf7b1316fa03c3a90e328.jpg',1),(240,7,104,'Otyrgyçlar','Стулья','http://tmshop.com.tm/api/images/1656917285377_c98f368c3b9de3c6c02d70813afa852e.jpg',1),(242,7,104,'Aşhana toplumy','Кухонный гарнитур','http://tmshop.com.tm/api/images/1656917430237_2392537312656778_cd47_300x300.jpg',1),(243,7,104,'Polkalar','Полки','http://tmshop.com.tm/api/images/1656917572105_5f9838_496952_1.jpg',1),(244,7,104,'Şkaflar','Шкафы','http://tmshop.com.tm/api/images/1656917682531_50c0f630-e1aa-4a69-ac42-59d5b05297a5-300x300.jpg',1),(245,7,105,'Diwanlar','Диваны','http://tmshop.com.tm/api/images/1656918453657_small_sekciya_divana_the_idea_divani_case_4.jpg',1),(246,7,105,'Komodlar','Комоды','http://tmshop.com.tm/api/images/1656918557650_af08f884671dfbb3e85b927da032782a.jpg',1),(247,7,105,'TV postawkalar','ТВ поставки','http://tmshop.com.tm/api/images/1656918746368_ARI-MOBİLYA-IMG_3131-copy-300x300.jpg',1),(248,7,105,'Kürsiler','Кресла','http://tmshop.com.tm/api/images/1656918910683_best-kreslo_lavemaris__1.jpg',1),(249,7,105,'Konsollar','Консоли','http://tmshop.com.tm/api/images/1656919042669_9455.0x200.jpg',1),(250,7,105,'Tekjeler','Стеллажи','http://tmshop.com.tm/api/images/1656919207024_5d402ba6-7cbf-4762-a685-c5e37ef12440.jpg',1),(251,7,105,'Dekorlar','Украшения','http://tmshop.com.tm/api/images/1656919472782_s-l300.jpg',1),(252,7,105,'Stol we oturgyçlar','Столы и стулья','http://tmshop.com.tm/api/images/1656919598906_stol-1,6-528-milano.jpg',1),(253,7,106,'Krowatlar','Кровати','http://tmshop.com.tm/api/images/1656919955105_1ea8b36e92b062ee6839865f8fe445d2.jpg',1),(254,7,106,'Komodlar we tumbalar','Комоды и тумбы','http://tmshop.com.tm/api/images/1656920057620_6292562047c5163e44a1b3c9c6467642.jpg',1),(256,7,106,'Şkaflar','Шкафы','http://tmshop.com.tm/api/images/1656920215386_45355.700.jpg',1),(257,7,106,'Weşilkalar','Вешалки','http://tmshop.com.tm/api/images/1656921223245_T14_vkFg8aXXXXXXXX_!!0-item_pic.jpg',1),(259,7,106,'Matraslar','Матрасы','http://tmshop.com.tm/api/images/1656921304653_4555_middle.jpg',1),(260,7,106,'Diwanlar','Диваны','http://tmshop.com.tm/api/images/1656921415928_DSC_5729r-2-1200x800.jpg',1),(261,7,106,'Stollar we partalar','Столы и письменные столы','http://tmshop.com.tm/api/images/1656921607895_stol_kompyuterniy_kst_11.1_dub_sonoma_beliy_573332_2.jpg',1),(262,7,106,'Oturgyçlar','Стулья','http://tmshop.com.tm/api/images/1656921765760_af595e2582c2737f466add44c0f6cff4.jpg',1),(263,7,106,'Tekjeler','Полки','http://tmshop.com.tm/api/images/1656921966740_2226e96f1c.jpg',1),(264,7,107,'Kompýuter stoly','Компьютерный стол','http://tmshop.com.tm/api/images/1656922787965_8bb42018836aedea837adbff263a5a16.jpg',1),(265,7,107,'Kreslo','Кресло','http://tmshop.com.tm/api/images/1656922900820_shop_items_catalog_image1336.jpg',1),(267,7,109,'Diwanlar','Диваны','http://tmshop.com.tm/api/images/1656922913876_vintage-03.lo22-1500x1000-1500x1500.jpg',1),(268,7,109,'Stollar','Столы','http://tmshop.com.tm/api/images/1656923043266_31V-on+go2L._SL500_AA300_.jpg',1),(269,7,109,'Şezlonglar we kürsiler','Шезлонги и кресла','http://tmshop.com.tm/api/images/1656923261269_f3a7b15a5-300x300.jpg',1),(273,7,109,'Hiňňildikler','Качели','http://tmshop.com.tm/api/images/1656923590960_992963-228x228.jpg',1),(276,7,109,'Puflar','Пуфы','http://tmshop.com.tm/api/images/1656923916225_0085eaef7a9db46ee6836b5103c827a1.jpg',1),(281,7,109,'Balkon toplumy','Балконный комплект','http://tmshop.com.tm/api/images/1656924218553_100000035k-545x545.jpg',1),(282,7,107,'Ofis üçin tumbalar','Тумбы для офиса','http://tmshop.com.tm/api/images/1656924490000_e42700e0d4054aca36cfbba6b3d564e8.jpg',1),(283,7,107,'Ofis üçin şkaflar','Шкафы для офиса','http://tmshop.com.tm/api/images/1656924666230_11343.750x0.jpg',1),(284,7,107,'Ofis bölümi','Офисная перегородка','http://tmshop.com.tm/api/images/1656924734256_ff7c7a362f68a6e2248429c83f5b9318.jpg',1),(285,7,107,'Ofis kabul ediş stollar','Мебель на ресепшн в офис','http://tmshop.com.tm/api/images/1656925008942_reception-14.jpg',1),(286,7,107,'Duşuşyklar üçin stollar','Стол для совещаний','http://tmshop.com.tm/api/images/1656925237448_2b_DISC-BASE-Oval-meeting-table-MDD-242334-rel831906c8.webp',1),(287,7,110,'Tumbolar','Тумбы','http://tmshop.com.tm/api/images/1656925331345_6e245255048807b4bc7263640916cc4a.jpg',1),(288,7,110,'Ýüz görülýän aýnalar','Зеркала','http://tmshop.com.tm/api/images/1656925489298_52357.970.jfif',1),(289,7,110,'Şkaflar we tekjeler','Шкафы и полки','http://tmshop.com.tm/api/images/1656925703790_defesto-pro-def008.jpg',1),(290,7,110,'Bezegler','Украшения','http://tmshop.com.tm/api/images/1656926144246_1485594598_untitled-1-300x300.jpg',1),(292,11,114,'Smartfonlar','Смартфоны','http://tmshop.com.tm/api/images/1656932759920_c2ovbc3kamoh9fu_52278e57.jpg (1).webp',1),(295,11,114,'Akylly sagatlar','Умные часы','http://tmshop.com.tm/api/images/1656933194974_smart_watch_x6_cherniy.jpg',1),(296,11,114,'Nauşniklar','Наушники','http://tmshop.com.tm/api/images/1656933513114_hiper_tws_lazo_lx10_1.jpg',1),(297,11,114,'Smartfon üçin çehollar','Чехлы для смартфона','http://tmshop.com.tm/api/images/1656933832289_1pcs-Flexible-Slim-Silicon-Gel-Soft-Case-for-Apple-iphone-6-6s-Plus-5-5-i6.jpg.crdownload',1),(298,11,114,'Telefon saklaýjylar','Потставки для смартфона','http://tmshop.com.tm/api/images/1656934212540_HTB15cTjyIuYBuNkSmRyq6AA3pXaO.jpg',1),(301,11,116,'Uly göwrümli tehniklar','Крупногабаритная техника','http://tmshop.com.tm/api/images/1656934916839_krupnaya_tehnika_dlya_kuhni_2062.jpg',1),(302,11,116,'Aşhana üçin tehniklar','Техника для кухни','http://tmshop.com.tm/api/images/1656935860195_Elettrodomestici-vari-da-cucina1.jpg',1),(303,11,116,'Howa üçin tehniklar','Климатические техника','http://tmshop.com.tm/api/images/1656936044916_premium_invertor.jpg',1),(305,11,116,'Öý üçin tehniklar','Техника для дома','http://tmshop.com.tm/api/images/1656936468717_efe9d3f503af76f3cb86ce26c9a65b6d.jpg',1),(307,11,116,'Gözellik we saglyk üçin tehniklar','Техника для красоты и здоровья','http://tmshop.com.tm/api/images/1656936757589_495431_r1103.jpg',1),(308,11,119,'Monobloklar we sistema bloklar','Моноблоки и системные блоки','http://tmshop.com.tm/api/images/1656937475002_11378637-1607280513.jpg',1),(311,11,119,'Noutbuklar','Ноутбуки','http://tmshop.com.tm/api/images/1656938065113_microsoft_surface_laptop_3_13_5_inch_vgs_00054_8.jpg',1),(312,11,119,'Monitorlar','Мониторы','http://tmshop.com.tm/api/images/1656938281929_2757951.jpeg',1),(313,11,119,'Aksessuarlar','Аксессуары','http://tmshop.com.tm/api/images/1656938488860_defender_redragon_legend_1.jpg',1),(314,11,119,'Ofis tehniklary','Офисные техники','http://tmshop.com.tm/api/images/1656939013426_896149_1.jpg',1),(315,11,119,'HDD we fleşkalar','Накопители','http://tmshop.com.tm/api/images/1656939182406_Vneshniy_zhestkiy_disk_Transcend_TS2TSJ25M3S_1-500x500.jpg',1),(319,11,121,'Oýun pristawkalar','Игровые приставки','http://tmshop.com.tm/api/images/1657094063189_screenshot_408.200x200 (1).png',1),(320,11,121,'Telewizorlar we wideo tehnikalar','Телевизоры и видеотехники','http://tmshop.com.tm/api/images/1657094340258_samsung-smart-tv-2019.jpg',1),(321,11,114,'Powerbanklar we zaryad berijiler','Повербанки и зарядное устройства','http://tmshop.com.tm/api/images/1657094651051_1744ffd4d8a9dc4110aef419dbd39739.jpg',1),(323,11,121,'Set enjamlary','Сетевое устройства','http://tmshop.com.tm/api/images/1657095625606_fa759ef49bb5c4d9136b9dffe1eb79fa.jpg',1),(324,11,121,'Audiotehnikalar','Аудиотехники','http://tmshop.com.tm/api/images/1657096085349_mcintosh_mxa80_3.jpg',1),(326,2,49,'Ertirlikler','Завтраки','http://tmshop.com.tm/api/images/1657096487314_599148245.jpg',1),(327,11,121,'Wideogözegçilik we howpsuzlyk','Видеонаблюдение и Безопасность','http://tmshop.com.tm/api/images/1657096641895_samsung_sno_l6013rp_1.jpg',1),(328,11,121,'Beýlekiler','Другие','http://tmshop.com.tm/api/images/1657096689685_CP.MA.00000037.01_1_4713876_Classic.jpg',1),(329,2,49,'Fast Food','Быстрое питание','http://tmshop.com.tm/api/images/1657096794206_fast-food.jpg',1),(330,2,49,'Hamyrly naharlar','Мучной','http://tmshop.com.tm/api/images/1657097500711_unnamed.png',1),(331,2,49,'Çorbalar','Супы','http://tmshop.com.tm/api/images/1657097850480_Minestrone-6-300x300.jpg',1),(332,2,49,'Alkagolsyz içgiler','Безалкогольные напитки','http://tmshop.com.tm/api/images/1657109310963_1627164709_2-kartinkin-com-p-bezalkogolnie-napitki-fon-krasivo-2.jpg',1),(333,2,49,'Kokteýller','Коктейли','http://tmshop.com.tm/api/images/1657109475501_proteinshakes.jpg',1),(334,2,49,'Limonatlar','Лимонат','http://tmshop.com.tm/api/images/1657109560083_limonad1.jpg',1),(335,11,127,'Smartfonlar','Смартфоны','http://tmshop.com.tm/api/images/1657109743363_1631676240185_bulletin.jfif',1),(336,11,127,'Nauşniklar','Наушники','http://tmshop.com.tm/api/images/1657109972652_i12_white.jpg',1),(337,2,49,'Kofe we çaý','Кофе и чай','http://tmshop.com.tm/api/images/1657110023362_coffe-300x300.jpg',1),(338,2,39,'Ertirlikler','Завтраки','http://tmshop.com.tm/api/images/1657110976717_599148245.jpg',1),(339,2,39,'Tiz tagamlar','Быстрое питание','http://tmshop.com.tm/api/images/1657111028201_fast-food.jpg',1),(340,11,127,'Smartfon üçin çehollar','Чехлы для смартфонов','http://tmshop.com.tm/api/images/1657111106535_1524573709083_bulletin.jfif',1),(341,2,39,'Süýjilikler we desertler','Сладости и десерты','http://tmshop.com.tm/api/images/1657111202682_bigstock-chocolate-dessert-with-strawbe-300x300.jpg',1),(343,2,39,'Hamyrly naharlar','Мучной','http://tmshop.com.tm/api/images/1657111421318_unnamed.png',1),(344,11,127,'Aksessuarlar','Аксессуары','http://tmshop.com.tm/api/images/1657111482571_5_2oyd-0n.jpg',1),(346,2,39,'Salatlar','Салаты','http://tmshop.com.tm/api/images/1657111541526_983.jpg',1),(347,2,39,'Pizza','Пицца','http://tmshop.com.tm/api/images/1657111633166_unnamed.jpg',1),(348,2,39,'Suşi','Суши','http://tmshop.com.tm/api/images/1657111716375_997e0743ed7404663903a6960e0ee5b2_300_300.jpeg',1),(349,2,39,'Garnirler','Гарнир','http://tmshop.com.tm/api/images/1657111754426_unnamed (1).png',1),(350,2,39,'Steýkler','Стейки','http://tmshop.com.tm/api/images/1657111786292_dallassteak_big.jpg',1),(352,2,39,'Alkagolsyz içgiler','Безалкогольные напитки','http://tmshop.com.tm/api/images/1657111919658_1627164709_2-kartinkin-com-p-bezalkogolnie-napitki-fon-krasivo-2.jpg',1),(353,2,39,'Kokteýler','Коктейли','http://tmshop.com.tm/api/images/1657111948913_proteinshakes.jpg',1),(354,2,39,'Limonatlar','Лимонад','http://tmshop.com.tm/api/images/1657111988249_limonad1.jpg',1),(355,2,39,'Kofe we çaý','Кофе и чай','http://tmshop.com.tm/api/images/1657112016374_coffe-300x300.jpg',1),(356,2,50,'Ertirlikler','Завтраки','http://tmshop.com.tm/api/images/1657112625532_599148245.jpg',1),(357,2,50,'Tiz tagamlar','Быстрое питание','http://tmshop.com.tm/api/images/1657112669964_fast-food.jpg',1),(358,2,50,'Süýjilikler we desertler','Сладости и десерты','http://tmshop.com.tm/api/images/1657112714681_bigstock-chocolate-dessert-with-strawbe-300x300.jpg',1),(359,2,50,'Gyzgyn naharlar','Горячие блюда','http://tmshop.com.tm/api/images/1657112741536_0c9af68ee1c11732d98375de1d1605ed.jpg',1),(360,2,50,'Hamyrly naharlar','Мучной','http://tmshop.com.tm/api/images/1657112789852_unnamed.png',1),(361,2,50,'Salatlar','Салаты','http://tmshop.com.tm/api/images/1657112830297_983.jpg',1),(362,11,128,'Noutbuklar we kompýuterler','Ноутбуки и компьютеры','http://tmshop.com.tm/api/images/1657112849012_41erm7gbdml._aa300_.jpg',1),(363,2,50,'Çorbalar','Супы','http://tmshop.com.tm/api/images/1657112863905_Minestrone-6-300x300.jpg',1),(364,2,50,'Pizza','Пицца','http://tmshop.com.tm/api/images/1657112895270_unnamed.jpg',1),(365,2,50,'Suşi','Суши','http://tmshop.com.tm/api/images/1657112922070_997e0743ed7404663903a6960e0ee5b2_300_300.jpeg',1),(366,2,50,'Garnirler','Гарнир','http://tmshop.com.tm/api/images/1657112966335_unnamed (1).png',1),(367,2,50,'Steýkler','Стейки','http://tmshop.com.tm/api/images/1657113004416_dallassteak_big.jpg',1),(368,2,50,'Alkagolsyz içgiler','Безалкогольные напитки','http://tmshop.com.tm/api/images/1657113051513_1627164709_2-kartinkin-com-p-bezalkogolnie-napitki-fon-krasivo-2.jpg',1),(369,2,50,'Kokteýler','Коктейли','http://tmshop.com.tm/api/images/1657113085060_proteinshakes.jpg',1),(370,2,50,'Limonatlar','Лимонад','http://tmshop.com.tm/api/images/1657113137245_limonad1.jpg',1),(371,11,128,'Esbaplar','Комплектующие','http://tmshop.com.tm/api/images/1657113143855_3612f47d7c03edc9fbe48be9d0f9b885.jpg',1),(372,2,50,'Kofe we çaý','Кофе и чай','http://tmshop.com.tm/api/images/1657113172086_coffe-300x300.jpg',1),(373,2,51,'Ertirlikler','Завтраки','http://tmshop.com.tm/api/images/1657113252876_599148245.jpg',1),(375,11,128,'Saklayyjy enjamlary','Устройства хранения','http://tmshop.com.tm/api/images/1657113357821_5765d4cb8d808e7060e2012ad76dc23f.jfif',1),(376,2,51,'Fast Food','Быстрое питание','http://tmshop.com.tm/api/images/1657113373296_fast-food.jpg',1),(377,2,51,'Süýjilikler we desertler','Сладости и десерты','http://tmshop.com.tm/api/images/1657113423402_bigstock-chocolate-dessert-with-strawbe-300x300.jpg',1),(379,2,51,'Gyzgyn naharlar','Горячие блюда','http://tmshop.com.tm/api/images/1657113460562_0c9af68ee1c11732d98375de1d1605ed.jpg',1),(380,2,51,'Hamyrly naharlar','Мучной','http://tmshop.com.tm/api/images/1657113511548_unnamed.png',1),(381,2,51,'Salatlar','Салаты','http://tmshop.com.tm/api/images/1657113541742_983.jpg',1),(382,11,128,'Aksessuarlar','Аксессуары','http://tmshop.com.tm/api/images/1657113602063_ZIYOU-LANG-Bluetooth.jpg',1),(383,2,51,'Çorbalar','Супы','http://tmshop.com.tm/api/images/1657113602589_Minestrone-6-300x300.jpg',1),(384,2,51,'Pizza','Пицца','http://tmshop.com.tm/api/images/1657113627682_unnamed.jpg',1),(385,2,51,'Suşi','Суши','http://tmshop.com.tm/api/images/1657113651101_997e0743ed7404663903a6960e0ee5b2_300_300.jpeg',1),(386,2,51,'Garnirler','Гарнир','http://tmshop.com.tm/api/images/1657113690695_unnamed (1).png',1),(387,2,51,'Steýkler','Стейки','http://tmshop.com.tm/api/images/1657113723993_dallassteak_big.jpg',1),(388,2,51,'Alkagolsyz içgiler','Безалкогольные напитки','http://tmshop.com.tm/api/images/1657113759797_1627164709_2-kartinkin-com-p-bezalkogolnie-napitki-fon-krasivo-2.jpg',1),(389,2,51,'Kokteýler','Коктейли','http://tmshop.com.tm/api/images/1657113784770_proteinshakes.jpg',1),(390,2,51,'Limonatlar','Лимонад','http://tmshop.com.tm/api/images/1657113822125_limonad1.jpg',1),(391,2,51,'Kofe we çaý','Кофе и чай','http://tmshop.com.tm/api/images/1657113866473_coffe-300x300.jpg',1),(392,11,128,'Ofis üçin tehnikalar','Техники для офиса','http://tmshop.com.tm/api/images/1657178840544_canon_maxify_mb2750_3.jpg',1),(393,11,128,'Set enjamlary','Сетевое устройства','http://tmshop.com.tm/api/images/1657180019492_6270_big.jpg',1),(395,11,129,'Uly hojalyk tehniklary','Крупная бытовая техника','http://tmshop.com.tm/api/images/1657180943820_kartinki-bytovoj-tehniki-2-1024x768 (1).jpg',1),(396,11,129,'Öý üçin tehniklar','Техника для дома','http://tmshop.com.tm/api/images/1657181062472_601924.jpg',1),(397,11,129,'Nahar bişirmek','Приготовление блюд','http://tmshop.com.tm/api/images/1657181210802_627855.jpg',1),(398,11,129,'Içgileri taýýarlamak','Приготовление напитков','http://tmshop.com.tm/api/images/1657181267263_giga_x3_g2_alu_image_1.jpg',1),(400,11,129,'Dograýjy enjamlar','Измельчение продуктов','http://tmshop.com.tm/api/images/1657181844996_192688_statsionarniy_blender_russell_hobbs_24720_56m.jpg',1),(401,11,127,'Akylly sagatlar','Умные часы','http://tmshop.com.tm/api/images/1657185443011_apple_watch_series_2_42mm_stainless_steel_case_with_sport_band_1.jpg',1),(403,11,130,'Telewizorlar we wideotehniklar','Телевизоры и видеотехники','http://tmshop.com.tm/api/images/1657185683741_erisson_32lec2500_1.jpg',1),(405,11,130,'Oýun konsollary','Игровые приставки','http://tmshop.com.tm/api/images/1657185863873_screenshot_408.200x200 (2).png',1),(406,11,130,'Surat we wideo enjamlary','Фото- и видеотехника','http://tmshop.com.tm/api/images/1657186004577_38106b35988909c688ffbfdd4caf3f05.jpg',1),(407,11,130,'Howpsuzlyk we gorag','Безопасность и защита','http://tmshop.com.tm/api/images/1657186075536_1970492b_6747_11e8_88a8_74ea3a85ced2_80829952_02cb_11e9_a20a_74ea3a85ced2.jpeg',1),(408,11,130,'Elektronika üçin aksessuarlar','Аксессуары для электроники','http://tmshop.com.tm/api/images/1657186212608_229287_komplekt_aksessuarov_zoom_aph1n_dlya_rekordera_zoom_h1n_h1m.jpg',1),(409,4,113,'Çörek önümleri','Хлебные изделия','http://tmshop.com.tm/api/images/1657186474088_f9933f2.jpg',1),(410,4,113,'Un,klunariýa','Мука, ​​клюнария','http://tmshop.com.tm/api/images/1657186844248_privatelabel_trademaster_group_bakaleya_300.jpg',1),(411,4,113,'Ýarym taýýar we doňdurylan önümler','Полуфабрикаты и замороженные продукты','http://tmshop.com.tm/api/images/1657187468892_thumb300.jfif',1),(412,4,120,'Çüý önümleri','Производство гвоздей','http://tmshop.com.tm/api/images/1657187816842_876029.jpg',1),(413,11,129,'Gözellik üçin tehnikalar','Техника для красоты','http://tmshop.com.tm/api/images/1657188035265_remington-ac9096.png',1),(414,4,113,'Galla önümler we bakaleýa','Зерно и бакалея','http://tmshop.com.tm/api/images/1657188132682_ingrediente-lentejas-300x300.jpg',1),(416,4,120,'Armatur önümleri','Производство арматуры','http://tmshop.com.tm/api/images/1657188596309_medium.jfif',1),(417,4,113,'Et we şöhlat önümler','Мясные и колбасные изделия','http://tmshop.com.tm/api/images/1657189078709_Domashnyaya-kolbasa-300x300.jpg',1),(418,4,126,'Kir yuwujy serişdeler','Моющие средства','http://tmshop.com.tm/api/images/1657189516009_Ariel1.jpg',1),(420,4,126,'Gap-gaç ýuwujy serişdeler','Посудомоечные средства','http://tmshop.com.tm/api/images/1657189659930_48094319-1.jpg',1),(421,4,113,'Konditer önümler','Кондитерские изделия','http://tmshop.com.tm/api/images/1657189679844_KITCHEN-66757981.jpg',1),(422,4,126,'Arassаçylyk serişdeler','Уборка и чистящие средства','http://tmshop.com.tm/api/images/1657189867498_b2ap3_large_tem-spring-cleaning.jpg',1),(423,4,113,'Süýt önümler','Молочные продукты','http://tmshop.com.tm/api/images/1657190009229_molochnye-produkty_3a5d811ab71435d_800x600.jpg',1),(424,4,113,'Doňdurmalar','Мороженое','http://tmshop.com.tm/api/images/1657190603078_thumb300 (1).jfif',1),(425,4,113,'Çaý we kofe','Чай и кофе','http://tmshop.com.tm/api/images/1657190785043_Tamark_Classic_Tea-300x300.jpg',1),(426,4,113,'Konserwirlenen önümler','Консервы','http://tmshop.com.tm/api/images/1657190871626_5b974a2.jpg',1),(427,4,113,'Maýonez,üwmeç we sous','Майонез, кетчуп и соус','http://tmshop.com.tm/api/images/1657191002289_souses.jpg',1),(428,4,113,'Çipslar we suharikler','Чипсы и сухарики','http://tmshop.com.tm/api/images/1657191132707_unnamed.png',1),(429,4,115,'Alkagolsyz gazlandyrlan içgiler','Безалкогольные газированные напитки','http://tmshop.com.tm/api/images/1657191472255_x_1644222c.jpg',1),(430,4,115,'Sowuk çaýlar','Холодные чаи','http://tmshop.com.tm/api/images/1657191629311_KFR0pmxMhC43uxXlXGng.jpg',1),(432,4,115,'Miwe şireleri','Фруктовые соки','http://tmshop.com.tm/api/images/1657191728755_4128eb87916a4cf8ba534cb1b6592b4f.jpg',1),(433,4,115,'Miwe şerbetleri','Компоты','http://tmshop.com.tm/api/images/1657191844134_3-recepta-vkusnogo-vishnevogo-varenya-2-300x300.jpg',1),(434,4,115,'Arassa suw','Чистая вода','http://tmshop.com.tm/api/images/1657191942424_butylka-s-vodoj.jpg',1),(435,4,123,'Matalar','Ткани','http://tmshop.com.tm/api/images/1657192183928_raznovidnosti-sovremennyh-tkanej-800x600.jpg',1),(436,4,123,'Sapaklar we ýüplükler','Нитки и пряжа','http://tmshop.com.tm/api/images/1657192346263_yarn-2169648_1280.jpg',1),(437,4,123,'Polotensalar','Полотенца','http://tmshop.com.tm/api/images/1657192579715_1624927021468_bulletin.jfif',1),(438,4,118,'Halylar','ковры','http://tmshop.com.tm/api/images/1657193239586_79921963_58533956_9.jpg',1),(439,4,118,'Palaslar','Палас','http://tmshop.com.tm/api/images/1657193437094_156201.250x250.jpeg',1),(440,4,122,'Agaç gapylar','Деревянные двери','http://tmshop.com.tm/api/images/1657193638658__87-min.jpg',1),(441,4,122,'Agaç penjireler','Деревянные окна','http://tmshop.com.tm/api/images/1657193826321_original (2).jpg',1),(442,4,122,'Agaç pollar','Деревянные окна','http://tmshop.com.tm/api/images/1657193865412_doska-pola-66.jpg',1),(443,4,118,'Bezeg üçin halylar','Ковры для украшения','http://tmshop.com.tm/api/images/1657193886586_1576954185.jpg',1),(444,4,122,'Agaç stollar','Деревянные столы','http://tmshop.com.tm/api/images/1657193995424_ced5868d2b99fa3e37bc0ed330d936ed.jpg',1),(445,4,118,'Haly sumkalar','Ковровые сумки','http://tmshop.com.tm/api/images/1657194001368_d7625398-55f8-4b82-9e4c-984a2e475a72.jpg',1),(446,4,122,'Agaç stullar','Деревянные стулья','http://tmshop.com.tm/api/images/1657194099153_KWA-0603.jpg',1),(447,4,118,'Halyçalar','маленькие ковры','http://tmshop.com.tm/api/images/1657194110187_5d389ca2b7aa189637d7ae09896fc831.jpg',1),(448,4,118,'Namazlyklar','Намазлык','http://tmshop.com.tm/api/images/1657194371314_88a380e48a9b97885e12363b0a71108a.jpg',1),(449,4,123,'Wanna halatlar','Ванна халаты','http://tmshop.com.tm/api/images/1657194619023_-.jpg',1),(450,4,123,'Düşek örtükler','Постельное бельё','http://tmshop.com.tm/api/images/1657195012727_prost-1200x1200.330x300.jpeg',1),(451,4,132,'Gap-gaçlar','Посуды','http://tmshop.com.tm/api/images/1657628227435_pribory-300x300.png',1),(452,4,132,'Paketlar','Пакеты','http://tmshop.com.tm/api/images/1657628554654_пакеты-2-300x300.jpg',1),(453,13,133,'Ýüz üçin maskalar','Маски для лица','http://tmshop.com.tm/api/images/1657975015008_thumb300.jfif',1),(454,13,133,'Kremlar,gel we syworotkalar','Крем, гель и сыворотка','http://tmshop.com.tm/api/images/1657975265582_7b863a03b195d009207d94b21a926c70.jpg',1),(455,13,133,'Skrablar,pilinglar we ýüz ýuwmak serişdeler','Скрабы, пилинги и моющие средства','http://tmshop.com.tm/api/images/1657975771549_skrab_banna_1.jpg',1),(456,13,133,'Losýonlar we toniklar','Лосьоны и тоники','http://tmshop.com.tm/api/images/1657977724799_1hq.webp',1),(457,13,134,'Sabynlar','Мыло','http://tmshop.com.tm/api/images/1657978890436_700-nw.jpg',1),(458,13,134,'Duş üçin gel','Гель для души','http://tmshop.com.tm/api/images/1657979036576_a36989.jpg',1),(459,13,134,'Moçalka,gubka','Мочалки и губки','http://tmshop.com.tm/api/images/1657979225734_thumb300 (1).jfif',1),(460,13,134,'Hammam üçin köpürjik,duz we ýag','Пена, соль и масло для ванной','http://tmshop.com.tm/api/images/1657979367450_thumb300 (2).jfif',1),(461,13,134,'Şampunlar','Шампуни','http://tmshop.com.tm/api/images/1657979540687_10364733-1352902416-488934.jpg',1),(462,13,134,'Balzam,konditsionerler','бальзамы, кондиционеры','http://tmshop.com.tm/api/images/1658134760273_kondicioner_floralis_1.jpg',1),(463,13,134,'Saç boýaglar','Краска для волос','http://tmshop.com.tm/api/images/1658134888656_thumb300 (3).jfif',1),(464,13,136,'Zenanlar üçin atyrlar','Духи для женщин','http://tmshop.com.tm/api/images/1658135204326_995230.jpg',1),(465,13,136,'Erkekler üçin atyrlar','Духи для мужчин','http://tmshop.com.tm/api/images/1658135422306_93097.jpg',1),(466,13,136,'Dezodorantlar we antipesperantlar','Дезодоранты и антиперспиранты','http://tmshop.com.tm/api/images/1658135810033_20657_txCET_300x300.jpg',1),(467,13,137,'Makiýaž üçin praýmer we bazalar','Праймер и базы под макияж','http://tmshop.com.tm/api/images/1658136130694_thumb300 (4).jfif',1),(468,13,137,'Tonalka','Тоналка','http://tmshop.com.tm/api/images/1658136367078_38758.jpg',1),(469,13,137,'Kontur-konsiler','Контур','http://tmshop.com.tm/api/images/1658136473821_-.jpg',1),(470,13,137,'Korrektor','Корректор','http://tmshop.com.tm/api/images/1658136531500_market_YksTB76CUN3pp1o_tHgAWA_300x300.jpg',1),(471,13,137,'Pudra','Пудра','http://tmshop.com.tm/api/images/1658136608477_10991525-1411989746-519270.jpg',1),(472,13,137,'Rumýana','Румянa','http://tmshop.com.tm/api/images/1658136739516_thumb300 (5).jfif',1),(473,13,137,'Haýlaýterler','Хайлайтери','http://tmshop.com.tm/api/images/1658136924775_5590.400.jpg',1),(474,13,137,'Tenlar','Тени','http://tmshop.com.tm/api/images/1658137077226_s-l300.jpg',1),(475,13,137,'Podwodka we laýnerlar','Подводки и лайнеры','http://tmshop.com.tm/api/images/1658137222085_s-l300 (1).jpg',1),(476,13,137,'Tuşlar','Туши','http://tmshop.com.tm/api/images/1658137388161_fark-yaratan-4-maybelline-maskara-04.jpg',1),(477,13,137,'Galamlar','Карандаши','http://tmshop.com.tm/api/images/1658137519982_thumb300 (6).jfif',1),(478,13,137,'Pomada','помада','http://tmshop.com.tm/api/images/1658137616207_a8dec43.jpg',1),(479,13,137,'Makiýaž üçin esbaplar','Аксессуары для макияжа','http://tmshop.com.tm/api/images/1658137731144_22.jpg',1),(480,13,138,'Laklar','Лаки','http://tmshop.com.tm/api/images/1658138092992_130450.jpg',1),(481,13,138,'Bazalar we toplar','Базы  и топ','http://tmshop.com.tm/api/images/1658138286994_kodi-nabor-kauchukovaya-baza-i-top-rubber-base-top-12-ml-1.jpg',1),(482,13,138,'Lagy aýyrmak üçin serişdeler','Средства для снятия лака','http://tmshop.com.tm/api/images/1658143534905_severina_snyatie_biogelya_gelya_i_iskusstvennykh_nogtey_150_ml.jpg',1),(484,13,139,'Massažorlar','Массажер','http://tmshop.com.tm/api/images/1658144647354_- (1).jpg',1),(485,13,139,'Depilýatorlar','Депиляторы','http://tmshop.com.tm/api/images/1658144732609_braun_se_7569_2.jpg',1),(486,13,139,'Dyrnak guradyjy tehnikalar','Техника для сушка ногтей','http://tmshop.com.tm/api/images/1658144855790_Sun-LED-6-USB.jpg',1),(487,13,139,'Elektrobritwalar','Электробритвы','http://tmshop.com.tm/api/images/1658146123854_1443193957_887.jpg',1),(488,13,139,'Fenlar','Фен','http://tmshop.com.tm/api/images/1658146225501_3220.200x0.png',1),(489,13,139,'Saç üçin ütükler','Утюжок для волос','http://tmshop.com.tm/api/images/1658146332345_1ba3af4fd6b9351e1b6e6e0972a48cfa.jpg',1),(490,13,139,'Trimmerler','Триммеры','http://tmshop.com.tm/api/images/1658146424666_mpm_rs_4604_2.jpg',1),(491,14,141,'Erkekler üçin sowgatlar','Подарки для мужчин','http://tmshop.com.tm/api/images/1658150792731_scale_1200.webp',1),(492,14,141,'Zenanlar üçin sowgatlar','Подарки для женщин','http://tmshop.com.tm/api/images/1658151292643_давать-подарка-21725243.jpg',1),(493,14,141,'Çagalar üçin sowgatlar','Подарки для детей','http://tmshop.com.tm/api/images/1658151782172_iStock-184616564-e1484583268565-1030x685.jpg',1),(494,14,142,'Buket güller','Букет цветов','http://tmshop.com.tm/api/images/1658152158012_big_1.jpg',1),(495,14,142,'Sebet güller','Корзина цветов','http://tmshop.com.tm/api/images/1658152228981_medium.png',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_sizes`
--

DROP TABLE IF EXISTS `category_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `size_group_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=729 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_sizes`
--

LOCK TABLES `category_sizes` WRITE;
/*!40000 ALTER TABLE `category_sizes` DISABLE KEYS */;
INSERT INTO `category_sizes` VALUES (1,25,1),(2,12,2),(3,24,2),(4,25,2),(5,26,2),(6,24,3),(7,26,3),(8,24,4),(9,25,4),(10,26,4),(11,25,5),(12,24,5),(13,26,5),(14,27,6),(15,37,7),(16,27,8),(17,143,8),(18,139,8),(19,138,8),(20,135,8),(21,134,8),(22,133,8),(23,131,8),(24,132,8),(25,128,8),(26,129,8),(27,126,8),(28,140,8),(29,136,8),(30,137,8),(31,125,8),(32,124,8),(33,123,8),(34,122,8),(35,120,8),(36,118,8),(37,114,8),(38,117,8),(39,112,8),(40,111,8),(41,110,8),(42,109,8),(43,108,8),(44,107,8),(45,106,8),(46,105,8),(47,104,8),(48,103,8),(49,102,8),(50,101,8),(51,100,8),(52,99,8),(53,98,8),(54,97,8),(55,96,8),(56,94,8),(57,92,8),(58,91,8),(59,78,8),(60,76,8),(61,77,8),(62,74,8),(63,72,8),(64,70,8),(65,65,8),(66,62,8),(67,64,8),(68,61,8),(69,59,8),(70,58,8),(71,57,8),(72,56,8),(73,55,8),(74,56,9),(75,58,9),(76,65,9),(77,70,9),(78,72,9),(79,76,9),(80,99,9),(81,100,9),(82,103,9),(83,107,9),(84,108,9),(85,56,10),(86,58,10),(87,65,10),(88,70,10),(89,72,10),(90,76,10),(91,99,10),(92,100,10),(93,103,10),(94,107,10),(95,108,10),(96,56,11),(97,58,11),(98,97,11),(99,108,11),(100,59,12),(101,61,12),(102,98,12),(103,109,12),(104,133,12),(105,135,12),(106,59,13),(107,61,13),(108,98,13),(109,109,13),(110,135,13),(111,133,13),(112,92,14),(113,91,14),(114,106,14),(115,117,14),(116,91,15),(117,92,15),(118,106,15),(119,117,15),(120,79,16),(121,104,16),(122,115,16),(123,127,16),(124,141,16),(125,80,16),(126,91,17),(127,92,17),(128,117,17),(129,136,17),(130,106,17),(131,122,17),(132,56,18),(133,58,18),(134,97,18),(135,108,18),(136,141,19),(137,127,19),(138,115,19),(139,104,19),(140,79,19),(141,80,19),(142,58,20),(143,56,20),(144,97,20),(145,108,20),(146,27,21),(147,56,21),(148,55,21),(149,57,21),(150,58,21),(151,61,21),(152,59,21),(153,62,21),(154,64,21),(155,65,21),(156,70,21),(157,72,21),(158,74,21),(159,76,21),(160,77,21),(161,78,21),(162,83,21),(163,85,21),(164,91,21),(165,92,21),(166,96,21),(167,97,21),(168,98,21),(169,99,21),(170,100,21),(171,101,21),(172,102,21),(173,103,21),(174,105,21),(175,106,21),(176,107,21),(177,108,21),(178,109,21),(179,110,21),(180,111,21),(181,112,21),(182,114,21),(183,115,21),(184,116,21),(185,117,21),(186,118,21),(187,120,21),(188,122,21),(189,123,21),(190,124,21),(191,125,21),(192,126,21),(193,127,21),(194,128,21),(195,131,21),(196,129,21),(197,132,21),(198,133,21),(199,134,21),(200,135,21),(201,136,21),(202,137,21),(203,138,21),(204,139,21),(205,140,21),(206,141,21),(207,143,21),(208,144,21),(209,145,21),(210,27,22),(211,56,22),(212,55,22),(213,57,22),(214,58,22),(215,61,22),(216,59,22),(217,62,22),(218,64,22),(219,65,22),(220,70,22),(221,72,22),(222,74,22),(223,76,22),(224,77,22),(225,78,22),(226,83,22),(227,85,22),(228,91,22),(229,92,22),(230,96,22),(231,97,22),(232,98,22),(233,99,22),(234,100,22),(235,101,22),(236,102,22),(237,103,22),(238,105,22),(239,106,22),(240,107,22),(241,108,22),(242,109,22),(243,110,22),(244,111,22),(245,112,22),(246,114,22),(247,115,22),(248,116,22),(249,117,22),(250,118,22),(251,120,22),(252,122,22),(253,123,22),(254,124,22),(255,125,22),(256,126,22),(257,127,22),(258,128,22),(259,131,22),(260,129,22),(261,132,22),(262,133,22),(263,134,22),(264,135,22),(265,136,22),(266,137,22),(267,138,22),(268,139,22),(269,140,22),(270,141,22),(271,143,22),(272,144,22),(273,145,22),(274,87,23),(275,87,24),(276,82,25),(277,85,25),(278,83,25),(279,94,25),(280,105,25),(281,110,25),(282,129,25),(283,140,25),(284,27,26),(285,145,26),(286,144,26),(287,143,26),(288,140,26),(289,139,26),(290,138,26),(291,136,26),(292,137,26),(293,135,26),(294,134,26),(295,133,26),(296,132,26),(297,131,26),(298,129,26),(299,128,26),(300,126,26),(301,125,26),(302,124,26),(303,123,26),(304,122,26),(305,120,26),(306,118,26),(307,27,27),(308,145,27),(309,144,27),(310,143,27),(311,140,27),(312,139,27),(313,138,27),(314,136,27),(315,137,27),(316,135,27),(317,134,27),(318,133,27),(319,132,27),(320,131,27),(321,129,27),(322,128,27),(323,126,27),(324,125,27),(325,124,27),(326,123,27),(327,122,27),(328,120,27),(329,118,27),(330,55,28),(331,56,28),(332,57,28),(333,58,28),(334,59,28),(335,61,28),(336,62,28),(337,64,28),(338,65,28),(339,70,28),(340,72,28),(341,74,28),(342,76,28),(343,77,28),(344,78,28),(345,91,28),(346,92,28),(347,96,28),(348,97,28),(349,98,28),(350,99,28),(351,100,28),(352,101,28),(353,102,28),(354,103,28),(355,106,28),(356,107,28),(357,108,28),(358,109,28),(359,110,28),(360,111,28),(361,112,28),(362,114,28),(363,117,28),(364,55,29),(365,56,29),(366,57,29),(367,58,29),(368,59,29),(369,61,29),(370,62,29),(371,64,29),(372,65,29),(373,70,29),(374,72,29),(375,74,29),(376,76,29),(377,77,29),(378,78,29),(379,91,29),(380,92,29),(381,96,29),(382,97,29),(383,98,29),(384,99,29),(385,100,29),(386,101,29),(387,102,29),(388,103,29),(389,106,29),(390,107,29),(391,108,29),(392,109,29),(393,110,29),(394,111,29),(395,112,29),(396,114,29),(397,117,29),(398,102,30),(399,118,30),(400,120,30),(401,122,30),(402,124,30),(403,125,30),(404,128,30),(405,131,30),(406,132,30),(407,133,30),(408,134,30),(409,135,30),(410,138,30),(411,139,30),(412,143,30),(413,145,30),(414,102,31),(415,118,31),(416,120,31),(417,122,31),(418,124,31),(419,125,31),(420,128,31),(421,131,31),(422,132,31),(423,133,31),(424,134,31),(425,135,31),(426,138,31),(427,139,31),(428,143,31),(429,145,31),(430,79,32),(431,80,32),(432,104,32),(433,115,32),(434,56,33),(435,61,33),(436,62,33),(437,65,33),(438,148,33),(439,149,33),(440,134,34),(441,135,34),(442,136,34),(443,57,35),(444,58,35),(445,59,35),(446,64,35),(447,70,35),(448,72,35),(449,77,35),(450,78,35),(451,92,35),(452,55,36),(453,56,36),(454,61,36),(455,62,36),(456,65,36),(457,74,36),(458,76,36),(459,91,36),(460,107,37),(461,108,37),(462,109,37),(463,110,37),(464,111,37),(465,112,37),(466,114,37),(467,117,37),(468,96,38),(469,97,38),(470,98,38),(471,99,38),(472,100,38),(473,101,38),(474,102,38),(475,103,38),(476,106,38),(477,134,39),(478,135,39),(479,137,39),(480,138,39),(481,139,39),(482,140,39),(483,143,39),(484,144,39),(485,145,39),(486,136,39),(487,118,40),(488,120,40),(489,122,40),(490,123,40),(491,124,40),(492,125,40),(493,126,40),(494,128,40),(495,129,40),(496,131,40),(497,132,40),(498,133,40),(499,80,41),(500,79,42),(501,115,43),(502,104,44),(503,141,45),(504,127,46),(505,55,47),(506,58,47),(507,55,48),(508,56,48),(509,57,48),(510,58,48),(511,72,48),(512,55,49),(513,56,49),(514,61,49),(515,62,49),(516,65,49),(517,74,49),(518,76,49),(519,91,49),(520,57,49),(521,58,49),(522,59,49),(523,64,49),(524,70,49),(525,72,49),(526,77,49),(527,78,49),(528,92,49),(529,107,49),(530,108,49),(531,109,49),(532,110,49),(533,111,49),(534,112,49),(535,114,49),(536,117,49),(537,96,49),(538,97,49),(539,98,49),(540,99,49),(541,100,49),(542,101,49),(543,102,49),(544,103,49),(545,106,49),(546,79,50),(547,80,50),(548,115,50),(549,104,50),(550,55,51),(551,56,51),(552,61,51),(553,62,51),(554,65,51),(555,74,51),(556,76,51),(557,91,51),(558,57,51),(559,58,51),(560,59,51),(561,64,51),(562,70,51),(563,72,51),(564,77,51),(565,78,51),(566,92,51),(567,107,52),(568,108,52),(569,109,52),(570,111,52),(571,110,52),(572,112,52),(573,114,52),(574,117,52),(575,96,52),(576,97,52),(577,98,52),(578,99,52),(579,100,52),(580,101,52),(581,102,52),(582,103,52),(583,106,52),(584,55,53),(585,56,53),(586,61,53),(587,62,53),(588,65,53),(589,74,53),(590,76,53),(591,79,53),(592,83,53),(593,91,53),(594,55,54),(595,56,54),(596,61,54),(597,62,54),(598,65,54),(599,74,54),(600,76,54),(601,79,54),(602,83,54),(603,91,54),(604,57,54),(605,58,54),(606,59,54),(607,64,54),(608,72,54),(609,70,54),(610,77,54),(611,78,54),(612,80,54),(613,92,54),(614,107,54),(615,108,54),(616,109,54),(617,110,54),(618,111,54),(619,112,54),(620,115,54),(621,114,54),(622,116,54),(623,117,54),(624,55,55),(625,56,55),(626,61,55),(627,62,55),(628,65,55),(629,74,55),(630,76,55),(631,79,55),(632,83,55),(633,91,55),(634,57,55),(635,58,55),(636,59,55),(637,64,55),(638,72,55),(639,70,55),(640,77,55),(641,78,55),(642,80,55),(643,92,55),(644,107,55),(645,108,55),(646,109,55),(647,110,55),(648,111,55),(649,112,55),(650,115,55),(651,114,55),(652,116,55),(653,117,55),(654,96,55),(655,97,55),(656,99,55),(657,98,55),(658,100,55),(659,101,55),(660,102,55),(661,103,55),(662,104,55),(663,105,55),(664,106,55),(665,134,56),(666,135,56),(667,136,56),(668,137,56),(669,138,56),(670,139,56),(671,140,56),(672,141,56),(673,143,56),(674,144,56),(675,145,56),(676,118,56),(677,120,56),(678,122,56),(679,123,56),(680,125,56),(681,124,56),(682,126,56),(683,127,56),(684,128,56),(685,129,56),(686,131,56),(687,133,56),(688,132,56),(689,107,57),(690,108,57),(691,109,57),(692,110,57),(693,112,57),(694,111,57),(695,114,57),(696,117,57),(697,96,57),(698,97,57),(699,98,57),(700,99,57),(701,100,57),(702,101,57),(703,102,57),(704,103,57),(705,106,57),(706,87,58),(707,56,59),(708,74,59),(709,76,59),(710,58,59),(711,77,59),(712,59,59),(713,108,59),(714,112,59),(715,114,59),(716,97,59),(717,101,59),(718,103,59),(719,83,60),(720,85,60),(721,82,60),(722,116,60),(723,105,60),(724,82,61),(725,85,61),(726,83,61),(727,116,61),(728,105,61);
/*!40000 ALTER TABLE `category_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat_seller`
--

DROP TABLE IF EXISTS `chat_seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat_seller` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seller_id` int NOT NULL,
  `from_seller` tinyint(1) NOT NULL,
  `text` text,
  `photo` varchar(250) DEFAULT NULL,
  `file` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat_seller`
--

LOCK TABLES `chat_seller` WRITE;
/*!40000 ALTER TABLE `chat_seller` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection_items`
--

DROP TABLE IF EXISTS `collection_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `collection_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `collection_idk` (`collection_id`),
  CONSTRAINT `collection_idk` FOREIGN KEY (`collection_id`) REFERENCES `collections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_items`
--

LOCK TABLES `collection_items` WRITE;
/*!40000 ALTER TABLE `collection_items` DISABLE KEYS */;
INSERT INTO `collection_items` VALUES (1,1,45),(2,1,27);
/*!40000 ALTER TABLE `collection_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `collection_name` varchar(250) NOT NULL,
  `collection_nameRU` varchar(250) DEFAULT NULL,
  `shop_id` int NOT NULL,
  `collection_photo` varchar(250) DEFAULT NULL,
  `description` text,
  `descriptionRU` text,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `product_type_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collections`
--

LOCK TABLES `collections` WRITE;
/*!40000 ALTER TABLE `collections` DISABLE KEYS */;
INSERT INTO `collections` VALUES (1,'collection_name','collection_nameRU',1,'collection_photo/link','description','descriptionRU',1,1);
/*!40000 ALTER TABLE `collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(250) NOT NULL,
  `cod_web` varchar(250) NOT NULL,
  `cod_mobile` varchar(250) NOT NULL,
  `name_in_ru` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (3,'Gyzyl','#FF0000','#FF0000','Красный'),(5,'Ýaşyl','#02A916','#02A916','Зелёный'),(6,'Gara','#000000','#000000','Черный'),(7,'Sary','#FFF200','#FFF200','Желтый'),(9,'Ak','#E6E4E4','#E6E4E4','Белый'),(12,'Bardo','#891616','#891616','Бардовый'),(14,'Gök','#2B4EE7','#2B4EE7','Синий'),(15,'Mämişi','#FFA21F','#FFA21F','Оранжевый'),(16,'Gülgüne','#FF009D','#FF009D','Розовый'),(17,'Goňur','#774500','#774500','Коричневый'),(18,'Çal','#858380','#858380','Серый'),(20,'Mawy','#00D4FF','#00D4FF','Голубой'),(21,'Gara gök','#222099','#222099','Темно-синий'),(22,'Gara ýaşyl','#1B7709','#1B7709','Темно-зеленый'),(23,'Fiolet','#A61AA6','#A61AA6','Фиолетовый');
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esasy_sahypa_banner`
--

DROP TABLE IF EXISTS `esasy_sahypa_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esasy_sahypa_banner` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bolum_id` int unsigned NOT NULL,
  `shop_id` int unsigned DEFAULT NULL,
  `photo` text NOT NULL,
  `product_id` int unsigned DEFAULT NULL,
  `tertip_nomer` int NOT NULL,
  `route` varchar(255) NOT NULL,
  `ads_type_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esasy_sahypa_banner`
--

LOCK TABLES `esasy_sahypa_banner` WRITE;
/*!40000 ALTER TABLE `esasy_sahypa_banner` DISABLE KEYS */;
INSERT INTO `esasy_sahypa_banner` VALUES (14,1,NULL,'http://tmshop.com.tm/api/images/1656057015796_Cities_London.jpg',NULL,1,'nbcbh',8),(17,2,21,'http://tmshop.com.tm/api/images/1656233151140_zen.png',NULL,4,'jkk',9),(18,3,NULL,'http://tmshop.com.tm/api/images/1656233290372_hjjk.jpg',97,2,'21',5),(19,2,NULL,'http://tmshop.com.tm/api/images/1656233448271_stejk_na_skovorode.jpg',91,3,'nk',4),(22,2,8,'http://tmshop.com.tm/api/images/1656233527900_q85_crop-smart.png',NULL,5,'6+',3);
/*!40000 ALTER TABLE `esasy_sahypa_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `shop_id` int DEFAULT '0',
  `service_id` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_idkk` (`user_id`),
  CONSTRAINT `user_idkk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES (3,8,5,0),(124,2,25,0),(125,2,2,0),(135,3,25,0),(136,4,1,0),(137,9,12,0),(142,3,8,0),(143,3,14,0),(144,11,4,0),(145,11,25,0),(146,9,2,0),(165,6,26,0),(169,10,29,0);
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldaw_gullugy`
--

DROP TABLE IF EXISTS `goldaw_gullugy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goldaw_gullugy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `hat` text NOT NULL,
  `from_user` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldaw_gullugy`
--

LOCK TABLES `goldaw_gullugy` WRITE;
/*!40000 ALTER TABLE `goldaw_gullugy` DISABLE KEYS */;
/*!40000 ALTER TABLE `goldaw_gullugy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `katalog`
--

DROP TABLE IF EXISTS `katalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `katalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bolum_id` int NOT NULL,
  `katalog_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `katalog_nameRU` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `katalog_photo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `visible` tinyint(1) NOT NULL,
  `tertip_nomer` int NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `katalog`
--

LOCK TABLES `katalog` WRITE;
/*!40000 ALTER TABLE `katalog` DISABLE KEYS */;
INSERT INTO `katalog` VALUES (22,1,'IT-hyzmat','ИТ-сервис','http://tmshop.com.tm/api/images/1656657202227_anasayfa-ogretmen-kurumsal-yazilim-danismanin-dan-yazilim-dunyasina-yeni-giris-yapanlar-icin-kapsamli-danismalik-rehberlik-hizmeti.jpg',1,9999),(23,1,'Logistika','Логистика','http://tmshop.com.tm/api/images/1651756395155_air-freight-logistics-services-500x500.jpg',1,9999),(25,3,'Erkekler üçin','Мужчинам','http://tmshop.com.tm/api/images/1656594746631_istock_000046978234xlarge__large.jpg',1,9999),(27,3,'Zenanlar üçin','Женщинам','http://tmshop.com.tm/api/images/1656593999946_1-24.jpg',1,9999),(36,1,'Kompýuter serwis','Компютерный сервис','http://tmshop.com.tm/api/images/1656839955015_25578-0.jpg',1,9999),(39,2,'Kafe','Кафе','http://tmshop.com.tm/api/images/1653837813508_cafe-2081857_640-min.jpg',1,9999),(49,2,'Restoran','Ресторан','http://tmshop.com.tm/api/images/1653837641594_restoran.jpg',1,9999),(50,2,'Eltip berme','Доставка','http://tmshop.com.tm/api/images/1653845707969_2-43.jpg',1,9999),(51,2,'Tiz nahar','Фастфуд','http://tmshop.com.tm/api/images/1653845774807_fat.jpg',1,9999),(52,2,'Pub','Пуб','http://tmshop.com.tm/api/images/1653845875099_PUB.jpg',0,9999),(62,6,'Gapylar','Двери','http://tmshop.com.tm/api/images/1656587825486_new-kondor-madrid-1-3-1-800x800.jpg',1,9999),(63,6,'Penjireler','Окна','http://tmshop.com.tm/api/images/1656587864977_042_big.jpg',1,9999),(66,6,'Pol we pol örtükleri','Пол и напольные покрытия','http://tmshop.com.tm/api/images/1656758996254_416e6eae44e8757602b95cd3f7f0748c.jpeg',1,9999),(69,6,'Santehnika','Сантехника','http://tmshop.com.tm/api/images/1656588978498_imag1.jpg',1,9999),(72,3,'Ýetginjek oglanlar üçin','Для подростковых мальчиков','http://tmshop.com.tm/api/images/1656749039882_29-06422-005-800-1-300x300.jpg',1,9999),(73,1,'Gurluşyk işler','Строительные работы','http://tmshop.com.tm/api/images/1656595277793_wynagrodzenie-magazyniera-1559284882.jpg',1,9999),(74,3,'Ýetginjek gyzlar üçin','Для подросток девочек','http://tmshop.com.tm/api/images/1656597645899_rubashki-dlya-devochek-157.jpg',1,9999),(75,1,'Santehnika we elektrika','Сантехника и электрика','http://tmshop.com.tm/api/images/1656595714437_Habitlitation-Electrique-Greta-300x300.jpg',1,9999),(76,1,'Enjamlary abatlaýyş','Ремонт оборудования','http://tmshop.com.tm/api/images/1656595928277_18279.jpg',1,9999),(78,1,'Baýramçylyk we dabara','Праздники и церемонии','http://tmshop.com.tm/api/images/1656596675832_WhatsApp-Image-2017-07-08-at-23.16.34-1-1024x768.jpeg',1,9999),(80,1,'Sagat we açar','Часы и ключ','http://tmshop.com.tm/api/images/1656597530155_diy_watches2.jpg',1,9999),(81,1,'Tämizlik','Чистота','http://tmshop.com.tm/api/images/1656597823243_professionalnyj-klining-pomeshhenij-1.jpg',1,9999),(82,1,'Rieltor hyzmatlar','Риэлторские услуги','http://tmshop.com.tm/api/images/1656656916164_0207ee45936f236bac93c1fcde02c409.jpg',1,9999),(83,1,'Foto we wideo','Фото и видео','http://tmshop.com.tm/api/images/1656658606714_1606635041_43_616764_1606634478.jpg',1,9999),(85,1,'Terjime merkezler','Центры переводов','http://tmshop.com.tm/api/images/1656659161526_workprocess.jpg',1,9999),(86,1,'Awtoulag abatlaýyş','Ремонт машин','http://tmshop.com.tm/api/images/1656659657129_depositphotos-14041022-original-3.jpg',1,9999),(87,1,'Mahabat,poligrafiýa we neşirýat','Реклама, полиграфия и издательское дело','http://tmshop.com.tm/api/images/1656659914898_1647949274_30-kartinkin-net-p-tipografiya-kartinki-34.png',1,9999),(88,1,'Aýakgap abatlaýyş','Ремонт обуви','http://tmshop.com.tm/api/images/1656660109729_1621014209_8-phonoteka_org-p-fon-dlya-vizitki-obuv-9.jpg',1,9999),(89,1,'Gurnama işleri','Монтажные работы','http://tmshop.com.tm/api/images/1656660763843_ustanovka-dverej-so-zvukoizolyaciej_dveri-ecoshpon.jpg',1,9999),(90,3,'Oglan bäbek üçin','Для мальчик ребенка','http://tmshop.com.tm/api/images/1656674804029_59a6df92434ff-full.jpg',1,9999),(91,3,'Gyz bäbek üçin','Для девочка ребенка','http://tmshop.com.tm/api/images/1656674831016_ребёнок-39817760.jpg',1,9999),(92,1,'Atelýe','Ателье','http://tmshop.com.tm/api/images/1656741001536_top-10-chastyh-voprosov-o-tom-kak-nachat-shit.png',1,9999),(93,6,'Gurluşyk harytlar','Строительные материалы','http://tmshop.com.tm/api/images/1656756227811_img803833132_7834599500612146_m.jpg',1,9999),(94,6,'Kraskalar we emulsiýalar','Краски и эмульсии','http://tmshop.com.tm/api/images/1656760278614_799_original.jpg',1,9999),(95,6,'Ýyladyjy enjamlar','Отопительное оборудование','http://tmshop.com.tm/api/images/1656765212739_image_TK.png',1,9999),(96,6,'Elektrik önümler','Электротехническая продукция','http://tmshop.com.tm/api/images/1656766877818_press_r_68400184-B9DF-419B-A170-D64F3C1CBBE2.jpg',1,9999),(97,6,'Kafel we plitkalar','Кафели и плитка','http://tmshop.com.tm/api/images/1656829757377_06839889a696.jpg',1,9999),(98,6,'Elektro enjamlar','Электрооборудование','http://tmshop.com.tm/api/images/1656831318679_prodat_instrument--1024x768.jpg',1,9999),(99,6,'Diwar we potolok bezegleri','Настенные и потолочные украшения','http://tmshop.com.tm/api/images/1656832950778_178305.jpg',1,9999),(100,6,'Yşyklandyryş','Освещение','http://tmshop.com.tm/api/images/1656837699019_2816812.5ea4018aaff80.jpeg',1,9999),(101,6,'El gurallar','Ручные инструменты','http://tmshop.com.tm/api/images/1656843731110_43.png',1,9999),(102,6,'Suw üpjünçiligi we kanalizasiýa','Водоснабжение и канализация','http://tmshop.com.tm/api/images/1656846935154_1619024356_11-phonoteka_org-p-vodosnabzhenie-fon-13.jpg',1,9999),(103,7,'Ýatylýan otag üçin','Для спальни','http://tmshop.com.tm/api/images/1656917756918_8ea7f0bb-d93c-489d-83c1-e0a2cb1b2518.jpg',1,9999),(104,7,'Aşhana üçin','Для кухни','http://tmshop.com.tm/api/images/1656917792164_ps_27142079650_1380007650_a.jpg',1,9999),(105,7,'Myhman otag üçin','Для гостевой комнаты','http://tmshop.com.tm/api/images/1656918325366_transisional-c300x300.jpg',1,9999),(106,7,'Çaga otagy üçin','Для детской комнаты','http://tmshop.com.tm/api/images/1656919788411_655c380efdb615d056cbf4479755f6ca.jpg',1,9999),(107,7,'Ofis üçin','Для офиса','http://tmshop.com.tm/api/images/1656922493073_slim-antratsit_klen.jpg',1,9999),(109,7,'Balkon we howly üçin','Для балкона и двора','http://tmshop.com.tm/api/images/1656922632429_pottery-barn-patio-furniture.jpg',1,9999),(110,7,'Wanna we hajathana otagy üçin','Для ванных комнат и туалетов','http://tmshop.com.tm/api/images/1656925087509_vannaya-komnata-v-belo-golubyh-tonah-42-300x300.jpg',1,9999),(113,4,'Iýmit önümler','Продукты питания','http://tmshop.com.tm/api/images/1656931366575_5B0378825318BC14.jpg',1,9999),(115,4,'Alkagolsyz içgiler','Безалкогольные напитки','http://tmshop.com.tm/api/images/1656931575514_1627164709_2-kartinkin-com-p-bezalkogolnie-napitki-fon-krasivo-2.jpg',1,9999),(118,4,'Haly','Ковер','http://tmshop.com.tm/api/images/1656931786193_1556043962.jpg',1,9999),(120,4,'Demir önümler','Изделия из железа','http://tmshop.com.tm/api/images/1656932203846_chernyj_metalloprokat.jpg',1,9999),(122,4,'Agaç önümleri','Изделия из дерева','http://tmshop.com.tm/api/images/1656932841729_IMG_8378-1200x800.jpg',1,9999),(123,4,'Tekstil önümleri','Текстильные изделия','http://tmshop.com.tm/api/images/1656933048677_1571168910.jpg',1,9999),(126,4,'Hojalyk himiýa','Бытовая химия','http://tmshop.com.tm/api/images/1656934675830_1626352543_15-kartinkin-com-p-bitovaya-khimiya-fon-krasivo-16.jpg',1,9999),(127,11,'Smartfonlar we aksessuarlar','Смартфоны и аксессуары','http://tmshop.com.tm/api/images/1657109593349_belkin_f8j183_9.jpg',1,9999),(128,11,'Kompýuter tehnikalary','Компьютерные техники','http://tmshop.com.tm/api/images/1657112542342_full_cbohYFSU.jpg',1,9999),(129,11,'Hojalyk tehnikalary','Бытовая техника','http://tmshop.com.tm/api/images/1657180033718_i0v1ofs6uxhdspm7mdy5.jpg',1,9999),(130,11,'Elektronika','Электроника','http://tmshop.com.tm/api/images/1657185303551_2835317_1576919019.jpg',1,9999),(132,4,'Kagyz we plastik önümler','Бумажные и пластиковые изделия','http://tmshop.com.tm/api/images/1657628000782_nBkSUhL2hFUknMq3L76BrNOp2Z318Ji-mifGnuWR9mOBdDebBizCnTY8qdJf6ReJ58vU9meMMok3Ee2nhSR6ISeO9G1N_wjJ=Q9O7FHEriYiX3joCNZ6NFg.jpg',1,9999),(133,13,'Ýüz üçin ideg','Уход за лицом','http://tmshop.com.tm/api/images/1657974744358_kosmetika-s-retinolom-300x300.jpg',1,9999),(134,13,'Hammam we duş serişdeleri','Средства для ванной и душа','http://tmshop.com.tm/api/images/1657978707298_1aa3e06edf33ac948b19a17a76fc3069.jpg',1,9999),(136,13,'Parfumeriýa','Духи','http://tmshop.com.tm/api/images/1658135048510_f1498c76ae0e67b43e94a79a3591b28a-fit-400x400.jpg',1,9999),(137,13,'Dekoratiw kosmetikalar','Декоративная косметика','http://tmshop.com.tm/api/images/1658135959556_2222.jpg',1,9999),(138,13,'Manikýur we pedikýur','Маникюр и педикюр','http://tmshop.com.tm/api/images/1658137921693_Профессиональный_набор_для_шеллака.jpg',1,9999),(139,13,'Gözellik we saglyk üçin tehnikalar','Техники для красоты и здоровья','http://tmshop.com.tm/api/images/1658144507742_hairtools.jpg',1,9999),(141,14,'Sowgatlyklar','Подарки','http://tmshop.com.tm/api/images/1658150737959_depositphotos_9968262-stock-photo-colorful-gift-boxes-over-white.jpg',1,9999),(142,14,'Sowgatlyk güller','Подарочный цветок','http://tmshop.com.tm/api/images/1658152010856_5d77ff88abb17.jpg',1,9999);
/*!40000 ALTER TABLE `katalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konkurs`
--

DROP TABLE IF EXISTS `konkurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konkurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `private_konkurs` tinyint(1) NOT NULL DEFAULT '0',
  `description` text,
  `uslowiya` text,
  `surat` varchar(250) DEFAULT NULL,
  `min_users` int NOT NULL DEFAULT '10',
  `magazin_sany` int NOT NULL,
  `start_for_users` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konkurs`
--

LOCK TABLES `konkurs` WRITE;
/*!40000 ALTER TABLE `konkurs` DISABLE KEYS */;
/*!40000 ALTER TABLE `konkurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konkurs_gatnashyjylar`
--

DROP TABLE IF EXISTS `konkurs_gatnashyjylar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konkurs_gatnashyjylar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `konkurs_tertip_nomer` int NOT NULL,
  `konkurs_id` int NOT NULL,
  `user_id` int NOT NULL,
  `kod` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_ikk` (`user_id`),
  KEY `konkurs_idk` (`konkurs_id`),
  CONSTRAINT `konkurs_idk` FOREIGN KEY (`konkurs_id`) REFERENCES `konkurs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_ikk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konkurs_gatnashyjylar`
--

LOCK TABLES `konkurs_gatnashyjylar` WRITE;
/*!40000 ALTER TABLE `konkurs_gatnashyjylar` DISABLE KEYS */;
/*!40000 ALTER TABLE `konkurs_gatnashyjylar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konkurs_prize`
--

DROP TABLE IF EXISTS `konkurs_prize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konkurs_prize` (
  `id` int NOT NULL AUTO_INCREMENT,
  `konkurs_id` int NOT NULL,
  `tertip_nomer` int NOT NULL,
  `shop_id` int NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT ' ',
  `type_id` int NOT NULL,
  `photo` varchar(250) NOT NULL,
  `product_id` int NOT NULL DEFAULT '0',
  `bonus_id` int NOT NULL DEFAULT '0',
  `arzanladysh_id` int NOT NULL DEFAULT '0',
  `kupon_id` int NOT NULL DEFAULT '0',
  `promokod_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `konkurs_id` (`konkurs_id`),
  KEY `type_id` (`type_id`),
  KEY `shops_id` (`shop_id`),
  CONSTRAINT `konkurs_id` FOREIGN KEY (`konkurs_id`) REFERENCES `konkurs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `shops_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE,
  CONSTRAINT `shopss_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE,
  CONSTRAINT `type_id` FOREIGN KEY (`type_id`) REFERENCES `konkurs_type` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konkurs_prize`
--

LOCK TABLES `konkurs_prize` WRITE;
/*!40000 ALTER TABLE `konkurs_prize` DISABLE KEYS */;
/*!40000 ALTER TABLE `konkurs_prize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konkurs_shops`
--

DROP TABLE IF EXISTS `konkurs_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konkurs_shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `konkurs_id` int NOT NULL,
  `shop_id` int NOT NULL,
  `shop_code` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `konkurs_ik` (`konkurs_id`),
  KEY `shop_ids` (`shop_id`),
  CONSTRAINT `konkurs_ik` FOREIGN KEY (`konkurs_id`) REFERENCES `konkurs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `shop_ids` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konkurs_shops`
--

LOCK TABLES `konkurs_shops` WRITE;
/*!40000 ALTER TABLE `konkurs_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `konkurs_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konkurs_type`
--

DROP TABLE IF EXISTS `konkurs_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konkurs_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konkurs_type`
--

LOCK TABLES `konkurs_type` WRITE;
/*!40000 ALTER TABLE `konkurs_type` DISABLE KEYS */;
INSERT INTO `konkurs_type` VALUES (1,'haryt'),(2,'pul'),(3,'surat'),(4,'bonus'),(5,'arzanladysh'),(6,'kupon'),(7,'promokod');
/*!40000 ALTER TABLE `konkurs_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `konkurs_winners`
--

DROP TABLE IF EXISTS `konkurs_winners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `konkurs_winners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `konkurs_id` int NOT NULL,
  `prize_tertip_nomer` int NOT NULL,
  `user_id` int NOT NULL,
  `konkurs_prize_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `konkurss_id` (`konkurs_id`),
  CONSTRAINT `konkurss_id` FOREIGN KEY (`konkurs_id`) REFERENCES `konkurs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `konkurs_winners`
--

LOCK TABLES `konkurs_winners` WRITE;
/*!40000 ALTER TABLE `konkurs_winners` DISABLE KEYS */;
/*!40000 ALTER TABLE `konkurs_winners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kupon`
--

DROP TABLE IF EXISTS `kupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kupon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `count` int NOT NULL,
  `type` tinyint(1) NOT NULL,
  `prosent` int DEFAULT NULL,
  `pul` double DEFAULT '0',
  `ulanysh_duzguni` text NOT NULL,
  `doredilen_wagty` date NOT NULL,
  `srok` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shopsss_id` (`shop_id`),
  CONSTRAINT `shopsss_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kupon`
--

LOCK TABLES `kupon` WRITE;
/*!40000 ALTER TABLE `kupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `kupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kupon_user`
--

DROP TABLE IF EXISTS `kupon_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kupon_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kupon_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userk_key` (`user_id`),
  KEY `kupon_id` (`kupon_id`),
  CONSTRAINT `kupon_id` FOREIGN KEY (`kupon_id`) REFERENCES `kupon` (`id`) ON DELETE CASCADE,
  CONSTRAINT `userk_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kupon_user`
--

LOCK TABLES `kupon_user` WRITE;
/*!40000 ALTER TABLE `kupon_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `kupon_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lenta_like`
--

DROP TABLE IF EXISTS `lenta_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lenta_like` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_lenta_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lenta_like`
--

LOCK TABLES `lenta_like` WRITE;
/*!40000 ALTER TABLE `lenta_like` DISABLE KEYS */;
INSERT INTO `lenta_like` VALUES (6,82,6),(7,90,6),(8,81,6);
/*!40000 ALTER TABLE `lenta_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_products`
--

DROP TABLE IF EXISTS `like_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produt_key` (`product_id`),
  CONSTRAINT `produt_key` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_products`
--

LOCK TABLES `like_products` WRITE;
/*!40000 ALTER TABLE `like_products` DISABLE KEYS */;
INSERT INTO `like_products` VALUES (32,3,81),(78,3,83),(80,3,106),(82,4,100),(93,11,100),(102,10,160),(104,9,159),(105,10,181),(106,9,153),(107,10,153),(108,10,161),(109,10,184),(110,10,186),(111,10,188),(112,10,183),(113,10,176),(114,9,183),(115,9,190),(116,9,164),(117,10,191),(118,10,198),(119,6,158),(120,9,79);
/*!40000 ALTER TABLE `like_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_service_product`
--

DROP TABLE IF EXISTS `like_service_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_service_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_product_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_service_product`
--

LOCK TABLES `like_service_product` WRITE;
/*!40000 ALTER TABLE `like_service_product` DISABLE KEYS */;
INSERT INTO `like_service_product` VALUES (8,1,5),(11,49,3),(12,43,3),(13,45,3),(14,46,3),(15,48,3),(17,57,4),(18,45,9);
/*!40000 ALTER TABLE `like_service_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like_video`
--

DROP TABLE IF EXISTS `like_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like_video` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_video_id` int DEFAULT '0',
  `service_video_id` int DEFAULT '0',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like_video`
--

LOCK TABLES `like_video` WRITE;
/*!40000 ALTER TABLE `like_video` DISABLE KEYS */;
INSERT INTO `like_video` VALUES (1,3,0,5),(2,15,0,5),(20,21,0,10),(21,22,0,10),(25,21,0,9),(28,22,0,9),(29,24,0,9),(30,26,0,9),(31,17,0,9),(36,27,0,10),(38,21,0,5),(48,23,0,6),(87,24,0,6),(95,22,0,6),(97,21,0,6),(99,25,0,6);
/*!40000 ALTER TABLE `like_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ondurijiler`
--

DROP TABLE IF EXISTS `ondurijiler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ondurijiler` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ondurijiler`
--

LOCK TABLES `ondurijiler` WRITE;
/*!40000 ALTER TABLE `ondurijiler` DISABLE KEYS */;
/*!40000 ALTER TABLE `ondurijiler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_code` varchar(100) NOT NULL,
  `shop_id` int NOT NULL,
  `bolum_id` int NOT NULL,
  `katalog_id` int NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `brend_id` int NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `description` text,
  `descriptionRU` varchar(250) DEFAULT NULL,
  `price` double NOT NULL,
  `usd_price` double DEFAULT '0',
  `old_price` double DEFAULT '0',
  `bahasy_uygyan` tinyint(1) NOT NULL DEFAULT '0',
  `aksiya` tinyint(1) DEFAULT '0',
  `aksiya_text` text,
  `arzanladys` tinyint(1) DEFAULT '0',
  `garasarna` tinyint(1) DEFAULT '0',
  `garasarna_time` datetime DEFAULT NULL,
  `rating_sum` int DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `seen` int DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `colors_id` int NOT NULL,
  `razmer` tinyint(1) NOT NULL,
  `count` int DEFAULT '5',
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_tekst` text,
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `bonus` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_code` (`shop_id`),
  CONSTRAINT `product_code` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (79,'1653221635476',8,2,49,28,0,0,'Tort','','',90,0,0,0,0,NULL,1,0,NULL,NULL,4,NULL,NULL,1,0,0,1,'2022-05-29 20:14:53',1,0,NULL,0,1),(80,'1653221680510',8,2,49,28,0,0,'Barhatnyy tort','','',120,0,0,0,0,NULL,1,0,NULL,NULL,5,NULL,NULL,0,0,0,5,'2022-05-29 20:14:54',1,0,NULL,0,1),(81,'1653221830060',8,2,49,28,0,0,'Вишня в шоколаде Торт','','',85,0,0,0,0,NULL,1,0,NULL,NULL,4,NULL,NULL,1,0,0,5,'2022-05-29 20:14:55',1,0,NULL,0,1),(82,'1653221871181',8,2,49,28,0,0,'Gije gündiz torty','','',85,0,0,0,0,NULL,1,0,NULL,NULL,3,NULL,NULL,0,0,0,5,'2022-05-29 20:14:57',1,0,NULL,0,1),(83,'1653221949691',8,2,49,28,0,0,'Altyn açar','Firmeniy nahar','Фирменоое блюда ресторана',50,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,1,0,0,5,'2022-05-29 20:14:59',1,0,NULL,0,1),(84,'1653221999900',8,2,49,28,0,0,'Kotlet','Sygyr etinden kotlet','говяжьи котлеты ',50,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,5,'2022-05-29 20:15:02',1,0,NULL,0,1),(85,'1653222066863',8,2,49,28,0,0,'Gapyrga gowurdak','','Говяжьи ребра',55,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,5,'2022-05-29 20:15:04',1,0,NULL,0,1),(86,'1653222117542',8,2,49,30,0,0,'Jag jebap','','',90,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,5,'2022-05-29 20:15:05',1,0,NULL,0,1),(87,'1653222164530',8,2,49,30,0,0,'Kakmaç','','',65,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,5,'2022-05-29 20:15:06',1,0,NULL,0,1),(88,'1653222203670',8,2,49,30,0,0,'Towuk döşi','','',60,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'2022-05-29 20:15:07',1,0,NULL,0,1),(89,'1653222240148',8,2,49,30,0,0,'Куриное соте','','',50,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,5,'2022-05-29 20:15:09',1,0,NULL,0,1),(90,'1653222342780',8,2,49,30,0,0,'Steýk italýano','','Стейк по итальянски',90,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,5,'2022-05-29 20:15:10',1,0,NULL,0,1),(91,'1653222494615',8,2,49,30,0,0,'Steýk Șato','','',90,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'2022-05-29 20:15:12',1,0,NULL,0,1),(92,'1653222555602',8,2,49,30,0,0,'Jüýje','','',60,0,0,0,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,0,0,0,5,'2022-05-29 20:15:13',1,0,NULL,0,1),(99,'1656054764376',8,2,49,30,0,0,'kompyuter','ram 8','',750,0,1000,1,0,NULL,1,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,'2022-06-24 12:14:38',1,0,NULL,0,1),(100,'135153121',25,3,25,24,28,11,'koynek','asfdasfddsdasA','ЫАВВЫАВМ СЧ',500,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,2,5,1,5,'2022-06-24 13:29:52',1,0,NULL,0,1),(106,'1656061964821',25,3,25,24,28,0,'Koynek','renkli','renkli',99,0,300,1,0,NULL,1,0,NULL,NULL,2,NULL,NULL,1,0,0,10,'2022-06-24 14:13:03',0,0,NULL,0,1),(107,'1656062215034',25,3,25,24,0,0,'dhxbxbf','  bxbd','ncnc',12005,0,500,1,0,NULL,1,0,NULL,NULL,4,NULL,NULL,NULL,0,0,5,'2022-06-24 14:17:46',1,0,NULL,0,1),(109,'1656346293411',25,3,25,24,27,0,'Kgili köýnek','Turk bet haryty','',505,0,0,0,0,' ',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,'2022-06-27 21:11:33',0,0,NULL,0,1),(149,'1656927841569',25,3,25,55,0,0,'ghhjj','ffgggg','',1000,0,0,0,0,' ',0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,5,'2022-07-04 14:44:01',0,0,NULL,0,1),(153,'1657087413224',26,3,27,57,35,0,'Tomus koynek','Yumsak,yuka tomus koynek','',400,0,0,0,0,NULL,0,0,NULL,NULL,4,NULL,NULL,2,0,0,5,'2022-07-06 11:05:41',1,0,NULL,0,1),(158,'1657087763659',26,3,27,57,35,0,'Koynek','Rahat,yumsak koynek','',650,0,0,0,0,NULL,0,0,NULL,NULL,3,NULL,1,1,0,0,50,'2022-07-06 11:09:46',1,0,NULL,0,1),(159,'1657087882202',26,3,27,57,35,0,'Koynek','Gulli tomus koynek','',500,0,0,0,0,NULL,0,0,NULL,NULL,4,NULL,NULL,1,0,0,20,'2022-07-06 11:11:37',1,0,NULL,0,1),(160,'1657087954559',26,3,27,57,35,0,'Koynek','Gifyur tomus koynek','',480,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,0,60,'2022-07-06 11:12:56',1,0,NULL,0,1),(161,'1657088476152',26,3,27,57,35,0,'Tomus koynek','Gulli ak tomus koynek','',550,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,0,200,'2022-07-06 11:21:28',1,0,NULL,0,1),(162,'1657088732228',26,3,27,57,37,0,'Koynek','Milli koynek','',600,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,30,'2022-07-06 11:33:23',1,0,NULL,0,1),(163,'1657089014647',26,3,27,57,37,0,'Koynek','Koynek','',3000,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,10,'2022-07-06 11:33:16',1,0,NULL,0,1),(164,'1657089132083',26,3,27,57,37,0,'Koynek','Yasyl koynek','',2500,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,0,5,'2022-07-06 11:33:18',1,0,NULL,0,1),(165,'1657089182355',26,3,27,57,37,0,'Koynek','Ak gifyur halatly koynek','',4500,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,15,'2022-07-06 11:33:26',1,0,NULL,0,1),(167,'1657101994213',25,11,121,319,0,0,'aa','ss','jj',105,0,0,1,0,NULL,0,0,NULL,NULL,5,NULL,NULL,NULL,0,0,5,'2022-07-06 15:07:48',1,0,NULL,0,1),(174,'1657102025673',25,11,121,319,0,0,'koynek1','ss','jj',105,0,0,1,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,0,0,5,'2022-07-06 15:07:41',0,1,'nadogry',0,1),(176,'1657178784012',26,3,27,58,40,0,'Zenan kardigan','Orme yumsak zenan kardigan','',1000,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,0,0,100,'2022-07-08 11:17:33',1,0,NULL,0,1),(178,'1657610486050',26,3,27,58,40,0,'Zenan jempir','Yumsak zenan jempir','',600,0,0,0,0,NULL,0,0,NULL,NULL,4,NULL,NULL,NULL,0,0,200,'2022-07-12 13:00:20',1,0,NULL,0,1),(181,'1657695805653',26,3,27,58,41,12,'Zenan kurtka','Ýaşyl zenan kurtka','',1000,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,5,0,200,'2022-07-13 12:05:00',1,0,NULL,0,1),(183,'1657727760164',35,11,129,396,430,0,'Блендер Deerma','12345','12345',12,0,250,1,0,NULL,1,0,NULL,NULL,4,NULL,NULL,2,3,0,5,'2022-07-13 20:57:28',1,0,NULL,0,1),(184,'1657776185969',26,3,27,58,42,17,'Palto','Beź zenan palto','',2500,0,0,0,0,NULL,0,0,NULL,NULL,4,NULL,NULL,1,9,0,600,'2022-07-14 10:28:08',1,0,NULL,0,1),(186,'1657776801439',26,3,27,58,42,23,'Palto','Gonur zenan palto','',3000,0,0,0,0,NULL,0,0,NULL,NULL,5,NULL,NULL,1,17,0,100,'2022-07-14 10:34:34',1,0,NULL,0,1),(188,'1657777671894',26,3,27,80,82,12,'Zenan kowsi','Klasik zenan kowsi','',750,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,6,0,600,'2022-07-14 10:48:03',1,0,NULL,0,1),(189,'1657777793644',26,3,27,80,82,0,'Zenan kowsi','Klasik zenan kowsi','',500,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,3,0,100,'2022-07-14 10:50:03',1,0,NULL,0,1),(190,'1657779447376',35,11,127,336,0,0,'Haylou GT1 Pro','Bluetooth nauşnik Haylou GT1 Pro','Bluetooth наушники Haylou GT1 Pro',390,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,6,0,5,'2022-07-15 10:57:13',1,0,NULL,0,1),(191,'1657779811016',35,11,127,336,0,0,'Haylou GT3','Bluetooth nauşnigi Haylou GT3','Bluetooth наушники Haylou GT3',430,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,1,6,0,5,'2022-07-15 10:57:14',1,0,NULL,0,1),(192,'1657882916067',35,11,127,336,0,0,'Haylou GT6','Bluetooth nauşnigi Haylou GT6','Bluetooth наушники Haylou GT6',410,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,9,0,5,'2022-07-16 17:00:47',1,0,NULL,0,1),(193,'1657883340745',35,11,127,336,0,0,'Redmi Airdots 2','Bluetooth nauşnigi Redmi Airdots 2 (dublikat)','Bluetooth наушники Redmi Airdots 2 (дубликат)',200,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,6,0,5,'2022-07-16 17:00:50',1,0,NULL,0,1),(194,'1657883563816',35,11,127,336,0,0,'Mi Earbuds Basic 2','Bluetooth nauşnigi Mi Earbuds Basic 2 (dublikat)','Bluetooth наушники Mi Earbuds Basic 2 (дубликат)',200,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,6,0,5,'2022-07-16 17:00:52',1,0,NULL,0,1),(195,'1657883795011',35,11,127,336,0,0,'Haylou GT6','Bluetooth nauşnigi Haylou GT6','Bluetooth наушники Haylou GT6',410,0,0,0,0,NULL,0,0,NULL,NULL,4,NULL,NULL,NULL,6,0,5,'2022-07-16 17:00:54',1,0,NULL,0,1),(196,'1657884280368',35,11,129,413,372,0,'Xiaomi ShowSee A1-W','Saç uçin fen Xiaomi ShowSee A1-W ','Фен для волос Xiaomi ShowSee A1-W ',350,0,0,0,0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,9,0,5,'2022-07-16 17:00:55',1,0,NULL,0,1),(198,'1657884880979',35,11,129,396,322,0,'Xiaomi Lofans YD-012V','Prowodly / prowodsyz ütük Xiaomi Lofans YD-012V','Проводной / беспроводной утюг Xiaomi Lofans YD-012V',670,0,0,0,0,NULL,0,0,NULL,NULL,5,NULL,NULL,1,23,0,5,'2022-07-16 17:00:57',1,0,NULL,0,1),(199,'1657972543027',26,3,27,80,82,12,'Zenan basanozka','Tomus zenan basanozkasy','',335,0,0,1,0,' ',0,0,NULL,NULL,NULL,NULL,NULL,NULL,18,0,600,'2022-07-16 17:01:24',0,0,NULL,0,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_photo`
--

DROP TABLE IF EXISTS `product_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `shop_id` int NOT NULL,
  `photo` text NOT NULL,
  `esasy` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `product_keyk` (`product_id`),
  KEY `shpss_id` (`shop_id`),
  CONSTRAINT `shpss_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=243 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_photo`
--

LOCK TABLES `product_photo` WRITE;
/*!40000 ALTER TABLE `product_photo` DISABLE KEYS */;
INSERT INTO `product_photo` VALUES (45,0,8,'http://shop.com.tm:8080/uploads/productPhoto/1653220651927.jpg',1),(46,0,8,'http://shop.com.tm:8080/uploads/productPhoto/1653220670565.jpg',0),(47,0,8,'http://shop.com.tm:8080/uploads/productPhoto/1653220837310.jpg',1),(48,0,8,'http://shop.com.tm:8080/uploads/productPhoto/1653220850197.jpg',0),(49,0,8,'http://shop.com.tm:8080/uploads/productPhoto/1653221155136.jpg',1),(50,79,8,'http://shop.com.tm:8080/uploads/productPhoto/1653221445971.jpg',1),(51,80,8,'http://shop.com.tm:8080/uploads/productPhoto/1653221655912.jpg',1),(52,80,8,'http://shop.com.tm:8080/uploads/productPhoto/1653221667084.jpg',0),(53,81,8,'http://shop.com.tm:8080/uploads/productPhoto/1653221770877.jpg',1),(54,82,8,'http://shop.com.tm:8080/uploads/productPhoto/1653221852714.jpg',1),(55,83,8,'http://shop.com.tm:8080/uploads/productPhoto/1653221890744.jpg',1),(56,84,8,'http://shop.com.tm:8080/uploads/productPhoto/1653221966053.jpg',1),(57,85,8,'http://shop.com.tm:8080/uploads/productPhoto/1653222021233.jpg',1),(58,86,8,'http://shop.com.tm:8080/uploads/productPhoto/1653222111301.jpg',1),(59,87,8,'http://shop.com.tm:8080/uploads/productPhoto/1653222153468.jpg',1),(60,88,8,'http://shop.com.tm:8080/uploads/productPhoto/1653222187131.jpg',1),(61,89,8,'http://shop.com.tm:8080/uploads/productPhoto/1653222220306.jpg',1),(62,90,8,'http://shop.com.tm:8080/uploads/productPhoto/1653222260504.jpg',1),(63,91,8,'http://shop.com.tm:8080/uploads/productPhoto/1653222373313.jpg',1),(64,92,8,'http://shop.com.tm:8080/uploads/productPhoto/1653222514879.jpg',1),(69,99,8,'http://shop.com.tm:8080/uploads/productPhoto/1656054651758.jpg',1),(70,100,25,'http://tmshop.com.tm/api/images/1656057441287_1.jpg',1),(74,106,25,'http://shop.com.tm:8080/uploads/productPhoto/1656061860151.jpg',1),(75,106,25,'http://shop.com.tm:8080/uploads/productPhoto/1656061874889.jpg',0),(76,107,25,'http://shop.com.tm:8080/uploads/productPhoto/1656062157758.jpg',1),(77,107,25,'http://shop.com.tm:8080/uploads/productPhoto/1656062162534.jpg',0),(78,0,25,'http://shop.com.tm:8080/uploads/productPhoto/1656081736038.jpg',1),(80,109,25,'http://shop.com.tm:8080/uploads/productPhoto/1656346167510.jpg',1),(81,110,26,'http://shop.com.tm:8080/uploads/productPhoto/1656483817374.jpg',1),(83,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1656484200048.jpg',1),(84,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1656484265986.jpg',0),(85,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1656484310492.jpg',0),(86,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1656484337613.jpg',0),(87,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1656484358380.jpg',1),(90,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1656485218376.jpg',1),(91,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1656485242858.jpg',0),(120,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1656488945691.jpg',1),(133,147,25,'http://shop.com.tm:8080/uploads/productPhoto/1656589707575.jpg',1),(135,0,25,'http://shop.com.tm:8080/uploads/productPhoto/1656916195333.jpg',1),(136,0,25,'http://shop.com.tm:8080/uploads/productPhoto/1656916284881.jpg',1),(137,0,25,'http://shop.com.tm:8080/uploads/productPhoto/1656917081310.jpg',1),(138,149,25,'http://shop.com.tm:8080/uploads/productPhoto/1656927841288.jpg',1),(142,153,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087320311.jpg',1),(143,153,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087326968.jpg',0),(144,153,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087333429.jpg',0),(145,158,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087690950.jpg',1),(146,158,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087699835.jpg',0),(147,158,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087709663.jpg',0),(148,159,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087820904.jpg',1),(149,159,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087827797.jpg',0),(150,159,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087833353.jpg',0),(151,160,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087906999.jpg',1),(152,160,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087917571.jpg',0),(153,160,26,'http://shop.com.tm:8080/uploads/productPhoto/1657087923935.jpg',0),(154,161,26,'http://shop.com.tm:8080/uploads/productPhoto/1657088421630.jpg',1),(155,161,26,'http://shop.com.tm:8080/uploads/productPhoto/1657088436607.jpg',0),(156,161,26,'http://shop.com.tm:8080/uploads/productPhoto/1657088445552.jpg',0),(157,162,26,'http://shop.com.tm:8080/uploads/productPhoto/1657088632959.jpg',1),(158,162,26,'http://shop.com.tm:8080/uploads/productPhoto/1657088659761.jpg',0),(159,162,26,'http://shop.com.tm:8080/uploads/productPhoto/1657088696751.jpg',0),(160,163,26,'http://shop.com.tm:8080/uploads/productPhoto/1657088908840.jpg',1),(161,164,26,'http://shop.com.tm:8080/uploads/productPhoto/1657089110890.jpg',1),(162,165,26,'http://shop.com.tm:8080/uploads/productPhoto/1657089157176.jpg',1),(163,166,25,'http://shop.com.tm:8080/uploads/productPhoto/1657100647408.jpg',1),(164,166,25,'http://shop.com.tm:8080/uploads/productPhoto/1657100651908.jpg',0),(165,166,25,'http://shop.com.tm:8080/uploads/productPhoto/1657100656870.jpg',0),(166,167,25,'http://shop.com.tm:8080/uploads/productPhoto/1657101945610.jpg',1),(167,174,25,'http://shop.com.tm:8080/uploads/productPhoto/1657102024404.jpg',0),(168,176,26,'http://shop.com.tm:8080/uploads/productPhoto/1657178692079.jpg',1),(169,176,26,'http://shop.com.tm:8080/uploads/productPhoto/1657178706174.jpg',0),(170,176,26,'http://shop.com.tm:8080/uploads/productPhoto/1657178718524.jpg',0),(173,178,26,'http://shop.com.tm:8080/uploads/productPhoto/1657610408807.jpg',1),(174,178,26,'http://shop.com.tm:8080/uploads/productPhoto/1657610418479.jpg',0),(175,178,26,'http://shop.com.tm:8080/uploads/productPhoto/1657610430567.jpg',0),(176,179,26,'http://shop.com.tm:8080/uploads/productPhoto/1657636598831.jpg',1),(177,180,26,'http://shop.com.tm:8080/uploads/productPhoto/1657691861187.jpg',1),(178,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657692689569.jpg',1),(179,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657692699521.jpg',0),(180,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657692710790.jpg',0),(181,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657693162225.jpg',1),(182,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657693349212.jpg',1),(183,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657693373371.jpg',0),(184,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657693388406.jpg',0),(185,181,26,'http://shop.com.tm:8080/uploads/productPhoto/1657695687186.jpg',1),(186,181,26,'http://shop.com.tm:8080/uploads/productPhoto/1657695705728.jpg',0),(187,181,26,'http://shop.com.tm:8080/uploads/productPhoto/1657695722733.jpg',0),(188,181,26,'http://shop.com.tm:8080/uploads/productPhoto/1657695731319.jpg',0),(189,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657695976723.jpg',1),(190,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657695986865.jpg',0),(191,0,26,'http://shop.com.tm:8080/uploads/productPhoto/1657695996233.jpg',0),(192,183,35,'http://shop.com.tm:8080/uploads/productPhoto/1657727534178.jpg',1),(193,183,35,'http://shop.com.tm:8080/uploads/productPhoto/1657727555102.jpg',0),(194,184,26,'http://shop.com.tm:8080/uploads/productPhoto/1657776104220.jpg',1),(195,184,26,'http://shop.com.tm:8080/uploads/productPhoto/1657776114139.jpg',0),(196,184,26,'http://shop.com.tm:8080/uploads/productPhoto/1657776125889.jpg',0),(197,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657776573076.jpg',1),(198,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657776616583.jpg',0),(199,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657776631063.jpg',0),(200,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657776699525.jpg',1),(201,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657776710763.jpg',0),(202,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657776722002.jpg',1),(203,186,26,'http://shop.com.tm:8080/uploads/productPhoto/1657776729268.jpg',1),(204,186,26,'http://shop.com.tm:8080/uploads/productPhoto/1657776738899.jpg',0),(205,186,26,'http://shop.com.tm:8080/uploads/productPhoto/1657776748608.jpg',0),(206,188,26,'http://shop.com.tm:8080/uploads/productPhoto/1657777605686.jpg',1),(207,188,26,'http://shop.com.tm:8080/uploads/productPhoto/1657777612667.jpg',0),(208,188,26,'http://shop.com.tm:8080/uploads/productPhoto/1657777626404.jpg',0),(209,189,26,'http://shop.com.tm:8080/uploads/productPhoto/1657777763306.jpg',1),(210,189,26,'http://shop.com.tm:8080/uploads/productPhoto/1657777770940.jpg',0),(211,190,35,'http://shop.com.tm:8080/uploads/productPhoto/1657779089007.jpg',1),(212,190,35,'http://shop.com.tm:8080/uploads/productPhoto/1657779108099.jpg',0),(213,190,35,'http://shop.com.tm:8080/uploads/productPhoto/1657779121124.jpg',0),(214,191,35,'http://shop.com.tm:8080/uploads/productPhoto/1657779524509.jpg',1),(215,191,35,'http://shop.com.tm:8080/uploads/productPhoto/1657779540882.jpg',0),(216,191,35,'http://shop.com.tm:8080/uploads/productPhoto/1657779550565.jpg',0),(217,192,35,'http://shop.com.tm:8080/uploads/productPhoto/1657882705939.jpg',1),(218,192,35,'http://shop.com.tm:8080/uploads/productPhoto/1657882720518.jpg',0),(219,192,35,'http://shop.com.tm:8080/uploads/productPhoto/1657882894101.jpg',0),(220,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657882981200.jpg',1),(221,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883001917.jpg',0),(222,0,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883018496.jpg',0),(223,193,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883171751.jpg',1),(224,193,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883212408.jpg',1),(225,193,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883229798.jpg',0),(226,193,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883247910.jpg',0),(227,194,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883438639.jpg',1),(228,194,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883490581.jpg',0),(229,195,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883661878.jpg',1),(230,195,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883690197.jpg',0),(231,195,35,'http://shop.com.tm:8080/uploads/productPhoto/1657883737745.jpg',0),(232,196,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884165358.jpg',1),(233,196,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884176239.jpg',0),(234,196,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884189997.jpg',0),(235,197,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884355865.jpg',1),(236,197,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884371640.jpg',0),(237,197,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884394745.jpg',0),(238,198,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884785035.jpg',1),(239,198,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884817383.jpg',0),(240,198,35,'http://shop.com.tm:8080/uploads/productPhoto/1657884831273.jpg',0),(241,199,26,'http://shop.com.tm:8080/uploads/productPhoto/1657972461020.jpg',1),(242,199,26,'http://shop.com.tm:8080/uploads/productPhoto/1657972480414.jpg',0);
/*!40000 ALTER TABLE `product_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_type`
--

DROP TABLE IF EXISTS `products_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_type` (
  `id` int NOT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_type`
--

LOCK TABLES `products_type` WRITE;
/*!40000 ALTER TABLE `products_type` DISABLE KEYS */;
INSERT INTO `products_type` VALUES (0,'default'),(1,'service product'),(2,'restoran product'),(3,'fashion product');
/*!40000 ALTER TABLE `products_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promokod`
--

DROP TABLE IF EXISTS `promokod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promokod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `promo_kod` varchar(250) NOT NULL,
  `surat` varchar(250) NOT NULL,
  `pul_mukdary` double NOT NULL DEFAULT '0',
  `ulanysh_duzguni` text,
  `created_data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `count` int NOT NULL,
  `srok` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sho_id` (`shop_id`),
  CONSTRAINT `sho_id` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promokod`
--

LOCK TABLES `promokod` WRITE;
/*!40000 ALTER TABLE `promokod` DISABLE KEYS */;
INSERT INTO `promokod` VALUES (3,26,'jemka','',100,NULL,'2022-07-18 13:25:53',10,NULL),(4,26,'123','',50,NULL,'2022-07-18 13:30:14',10,NULL);
/*!40000 ALTER TABLE `promokod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promokod_user`
--

DROP TABLE IF EXISTS `promokod_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promokod_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promokod_id` int NOT NULL,
  `user_id` int NOT NULL,
  `used` tinyint(1) NOT NULL DEFAULT '0',
  `alan_senesi` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userp_key` (`user_id`),
  KEY `promokod_id` (`promokod_id`),
  CONSTRAINT `promokod_id` FOREIGN KEY (`promokod_id`) REFERENCES `promokod` (`id`) ON DELETE CASCADE,
  CONSTRAINT `userp_key` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promokod_user`
--

LOCK TABLES `promokod_user` WRITE;
/*!40000 ALTER TABLE `promokod_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `promokod_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_products`
--

DROP TABLE IF EXISTS `rating_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `rating_count` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_key` (`product_id`),
  CONSTRAINT `product_key` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_products`
--

LOCK TABLES `rating_products` WRITE;
/*!40000 ALTER TABLE `rating_products` DISABLE KEYS */;
INSERT INTO `rating_products` VALUES (4,90,3,4),(5,84,3,3),(11,79,2,4),(18,88,3,5),(19,100,4,4),(22,107,9,4),(23,100,9,4),(28,81,9,4),(30,80,3,5),(34,106,9,2),(36,79,9,4),(38,167,12,5),(39,159,9,4),(40,178,9,4),(41,153,9,4),(42,184,10,4),(43,186,10,5),(44,183,9,4),(45,158,10,3),(47,198,10,5),(48,195,9,4),(49,183,6,3),(50,82,6,3);
/*!40000 ALTER TABLE `rating_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_service_product`
--

DROP TABLE IF EXISTS `rating_service_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_service_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL DEFAULT '0',
  `rating_count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_service_product`
--

LOCK TABLES `rating_service_product` WRITE;
/*!40000 ALTER TABLE `rating_service_product` DISABLE KEYS */;
INSERT INTO `rating_service_product` VALUES (1,43,3,5);
/*!40000 ALTER TABLE `rating_service_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_service_shops`
--

DROP TABLE IF EXISTS `rating_service_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_service_shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sevice_shop_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating_count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_service_shops`
--

LOCK TABLES `rating_service_shops` WRITE;
/*!40000 ALTER TABLE `rating_service_shops` DISABLE KEYS */;
INSERT INTO `rating_service_shops` VALUES (1,12,3,5),(2,18,9,4),(3,13,9,4),(4,14,10,5),(5,25,9,1);
/*!40000 ALTER TABLE `rating_service_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating_shops`
--

DROP TABLE IF EXISTS `rating_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating_count` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating_shops`
--

LOCK TABLES `rating_shops` WRITE;
/*!40000 ALTER TABLE `rating_shops` DISABLE KEYS */;
INSERT INTO `rating_shops` VALUES (1,8,3,4),(2,2,3,3),(3,3,3,3),(4,25,4,5),(5,26,9,3),(6,35,9,3),(7,35,13,5),(8,1,9,4),(9,8,6,2);
/*!40000 ALTER TABLE `rating_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reklama_6shops`
--

DROP TABLE IF EXISTS `reklama_6shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reklama_6shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bolum_id` int NOT NULL,
  `katalog_id` int NOT NULL DEFAULT '0',
  `shop_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reklama_6shops`
--

LOCK TABLES `reklama_6shops` WRITE;
/*!40000 ALTER TABLE `reklama_6shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `reklama_6shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reklama_shops`
--

DROP TABLE IF EXISTS `reklama_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reklama_shops` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bolum_id` int unsigned DEFAULT NULL,
  `shop_id` int unsigned DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `service_shop_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reklama_shops`
--

LOCK TABLES `reklama_shops` WRITE;
/*!40000 ALTER TABLE `reklama_shops` DISABLE KEYS */;
INSERT INTO `reklama_shops` VALUES (4,3,3,0,'2022-04-02 09:50:31','2022-07-06 11:40:08',NULL),(5,2,8,1,'2022-05-27 10:53:03','2022-07-08 13:40:27',NULL),(7,3,26,0,'2022-05-28 10:37:01','2022-07-06 11:40:08',NULL),(8,3,32,0,'2022-06-26 11:26:37','2022-07-06 11:40:08',NULL),(9,3,11,0,'2022-06-26 11:40:31','2022-07-06 11:40:08',NULL),(10,3,29,0,'2022-06-26 11:40:31','2022-07-06 11:40:08',NULL),(11,3,9,0,'2022-06-26 11:40:31','2022-07-06 11:40:08',NULL),(12,7,26,0,'2022-07-02 12:24:23','2022-07-02 12:24:23',NULL),(13,6,30,0,'2022-07-06 11:20:13','2022-07-06 11:20:13',NULL),(16,1,8,0,'2022-07-14 13:18:47','2022-07-14 14:04:57',NULL),(17,1,NULL,0,'2022-07-14 13:46:52','2022-07-14 14:04:57',22),(18,1,NULL,0,'2022-07-14 14:04:57','2022-07-14 14:04:57',14);
/*!40000 ALTER TABLE `reklama_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restoran_catalog`
--

DROP TABLE IF EXISTS `restoran_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restoran_catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catalog_id` int NOT NULL,
  `restoran_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restoran_catalog`
--

LOCK TABLES `restoran_catalog` WRITE;
/*!40000 ALTER TABLE `restoran_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `restoran_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sargyt_produkt`
--

DROP TABLE IF EXISTS `sargyt_produkt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sargyt_produkt` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sargytlar_id` int NOT NULL,
  `product_id` int NOT NULL,
  `count` int NOT NULL,
  `sizes_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sargyt_produkt`
--

LOCK TABLES `sargyt_produkt` WRITE;
/*!40000 ALTER TABLE `sargyt_produkt` DISABLE KEYS */;
INSERT INTO `sargyt_produkt` VALUES (1,1,5,2,NULL),(2,1,6,2,2),(3,2,5,2,NULL),(4,2,6,2,2),(5,3,5,2,NULL),(6,3,6,2,2),(7,4,5,2,NULL),(8,4,6,2,2),(9,5,5,2,NULL),(10,5,6,2,2),(11,6,5,2,NULL),(12,6,6,2,2),(13,7,6,1,NULL),(14,8,6,1,NULL),(15,9,79,7,NULL),(16,9,80,1,NULL),(17,9,81,4,NULL),(18,10,5,2,NULL),(19,10,7,1,NULL),(20,10,8,1,NULL),(21,11,5,2,NULL),(22,11,7,1,NULL),(23,11,8,1,NULL),(24,12,5,2,NULL),(25,12,7,1,NULL),(26,12,8,1,NULL),(27,13,79,1,NULL),(28,13,80,1,NULL),(29,13,81,1,NULL),(30,14,89,10,NULL),(31,15,79,4,NULL),(32,15,80,7,NULL),(33,16,96,1,NULL),(34,16,97,1,NULL),(35,16,98,2,NULL),(36,17,5,2,NULL),(37,17,6,2,2),(38,18,5,3,NULL),(39,18,7,1,NULL),(40,18,8,4,NULL),(41,19,6,1,NULL),(42,20,5,1,NULL),(43,20,7,1,NULL),(44,20,8,1,NULL),(45,21,6,1,NULL),(46,22,6,1,NULL),(47,23,5,1,NULL),(48,23,7,1,NULL),(49,23,8,1,NULL),(50,24,5,1,NULL),(51,24,7,1,NULL),(52,24,8,1,NULL),(53,25,79,3,NULL),(54,26,27,3,2),(55,27,27,5,1),(56,28,27,4,1),(57,29,27,1,1),(58,30,27,1,4),(59,30,28,2,NULL),(60,31,96,3,NULL),(61,31,97,3,NULL),(62,32,27,2,1),(63,32,28,3,NULL),(64,33,96,3,NULL),(65,33,97,3,NULL),(66,34,28,1,NULL),(67,35,100,1,NULL),(68,35,101,1,NULL),(69,36,80,3,NULL),(70,36,82,3,NULL),(71,36,86,2,NULL),(72,36,88,1,NULL),(73,37,81,3,NULL),(74,37,83,2,NULL),(75,38,17,2,NULL),(76,39,16,2,NULL),(77,40,17,2,NULL),(78,41,6,5,NULL),(79,42,106,2,13),(80,43,80,3,NULL),(81,43,82,3,NULL),(82,43,86,2,NULL),(83,43,88,3,NULL),(84,44,100,1,NULL),(85,44,101,1,NULL),(86,45,147,1,NULL),(87,46,183,1,NULL),(88,47,82,1,NULL),(89,47,87,1,NULL),(90,47,89,1,NULL);
/*!40000 ALTER TABLE `sargyt_produkt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sargyt_status`
--

DROP TABLE IF EXISTS `sargyt_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sargyt_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `nameRU` text NOT NULL,
  `mean` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sargyt_status`
--

LOCK TABLES `sargyt_status` WRITE;
/*!40000 ALTER TABLE `sargyt_status` DISABLE KEYS */;
INSERT INTO `sargyt_status` VALUES (1,'Garaşylýar','',0),(2,'Tassyklandy','',0),(3,'Ugradyldy','',0),(5,'Inkär edildi','',0);
/*!40000 ALTER TABLE `sargyt_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sargytlar`
--

DROP TABLE IF EXISTS `sargytlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sargytlar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status_id` int NOT NULL DEFAULT '1',
  `user_adress_id` int NOT NULL,
  `dostawka` tinyint(1) NOT NULL DEFAULT '1',
  `toleg_gornushi` int NOT NULL,
  `bellik` text,
  `sargyt_kody` varchar(100) NOT NULL,
  `haryt_sany` int NOT NULL,
  `umumy_summa` double NOT NULL,
  `arzanladysh_summa` double DEFAULT NULL,
  `arzanladysh_kart` double DEFAULT NULL,
  `kupon` double DEFAULT NULL,
  `bonus_kart` double DEFAULT NULL,
  `promokod` double DEFAULT NULL,
  `dostawka_tolegi` double DEFAULT NULL,
  `jemi_summa` double NOT NULL,
  `bonus_id` int DEFAULT NULL,
  `kupon_id` int DEFAULT NULL,
  `arzanladysh_id` int DEFAULT NULL,
  `promokod_id` int DEFAULT NULL,
  `wagty` date NOT NULL,
  `used_from_bonus_bank` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sargytlar`
--

LOCK TABLES `sargytlar` WRITE;
/*!40000 ALTER TABLE `sargytlar` DISABLE KEYS */;
INSERT INTO `sargytlar` VALUES (1,1,8,2,1,1,1,'Bellik text','1654342088922',2,736.2,233,233,NULL,NULL,NULL,20,746,NULL,NULL,NULL,NULL,'2022-06-04',NULL),(2,1,8,1,1,1,1,'Bellik text','1654439659037',2,736.2,233,233,NULL,NULL,NULL,20,746,NULL,NULL,NULL,NULL,'2022-06-05',NULL),(3,1,8,1,1,1,1,'Bellik text','1654533592647',2,736.2,233,233,NULL,NULL,NULL,20,746,NULL,NULL,NULL,NULL,'2022-06-06',NULL),(4,1,8,1,1,1,1,'Bellik text','1654591885164',2,736.2,233,233,NULL,NULL,NULL,20,746,NULL,NULL,NULL,NULL,'2022-06-07',NULL),(5,1,8,1,1,1,1,'Bellik text','1654602258530',2,736.2,233,233,NULL,NULL,NULL,20,746,NULL,NULL,NULL,NULL,'2022-06-07',NULL),(6,1,8,1,1,1,1,'Bellik text','1654718358581',2,736.2,233,233,NULL,NULL,NULL,20,746,NULL,NULL,NULL,NULL,'2022-06-08',NULL),(7,1,3,1,18,1,1,'','1654719326620',4,22.3,0,0,NULL,NULL,NULL,0,22.3,NULL,NULL,NULL,NULL,'2022-06-08',0),(8,1,3,1,18,1,1,'','1654719414736',4,22.3,0,0,NULL,NULL,NULL,0,22.3,NULL,NULL,NULL,NULL,'2022-06-08',0),(9,8,3,1,18,1,1,'','1654798517286',4,1090,0,0,NULL,NULL,NULL,0,1090,NULL,NULL,NULL,NULL,'2022-06-09',0),(10,2,3,1,18,1,1,'fgh\nghj\nhjikllyrg\nhikk','1654799716817',4,566.9,0,0,NULL,NULL,NULL,0,566.9,NULL,NULL,NULL,NULL,'2022-06-09',0),(11,2,3,1,18,1,1,'fgh\nghj\nhjikllyrg\nhikk','1654799807856',4,566.9,0,0,NULL,NULL,NULL,0,566.9,NULL,NULL,NULL,NULL,'2022-06-09',0),(12,2,3,1,18,1,1,'fgh\nghj\nhjikllyrg\nhikk','1654799925642',4,566.9,0,0,NULL,NULL,NULL,0,566.9,NULL,NULL,NULL,NULL,'2022-06-09',0),(13,8,3,1,18,1,1,'','1654800285150',4,295,0,0,NULL,NULL,NULL,0,295,NULL,NULL,NULL,NULL,'2022-06-09',0),(14,8,3,1,18,1,1,'','1654802475613',4,500,0,0,NULL,NULL,NULL,0,500,NULL,NULL,NULL,NULL,'2022-06-09',0),(15,8,3,1,18,1,1,'','1654833485533',4,1200,0,0,NULL,NULL,NULL,0,1200,NULL,NULL,NULL,NULL,'2022-06-10',0),(16,5,3,1,18,1,1,'','1654834527450',4,1900,0,0,NULL,NULL,NULL,0,1900,NULL,NULL,NULL,NULL,'2022-06-10',0),(17,1,8,1,1,1,1,'Bellik text','1654855483991',2,736.2,233,233,NULL,NULL,NULL,20,746,NULL,NULL,NULL,NULL,'2022-06-10',NULL),(18,2,3,1,18,1,1,'','1654862335676',4,2089.2,0,0,NULL,NULL,NULL,0,2089.2,NULL,NULL,NULL,NULL,'2022-06-10',0),(19,1,3,1,18,1,1,'','1654864976846',4,22.3,0,0,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,'2022-06-10',0),(20,2,3,1,18,1,1,'','1654865204765',4,544.6,0,0,NULL,NULL,NULL,0,544.6,NULL,NULL,NULL,NULL,'2022-06-10',0),(21,1,3,1,18,1,1,'','1654868885296',4,22.3,0,0,NULL,NULL,NULL,0,-3.6999999999999993,NULL,NULL,NULL,NULL,'2022-06-10',0),(22,1,3,1,18,1,1,'','1654930087360',4,22.3,0,0,NULL,NULL,NULL,0,22.3,NULL,NULL,NULL,NULL,'2022-06-11',0),(23,2,3,1,18,1,1,'','1654930100793',4,544.6,0,0,NULL,NULL,NULL,0,544.6,NULL,NULL,NULL,NULL,'2022-06-11',0),(24,2,3,1,18,1,1,'Бет замечания\n','1654949075775',4,544.6,0,0,NULL,NULL,NULL,0,544.6,NULL,NULL,NULL,NULL,'2022-06-11',0),(25,8,4,1,19,1,1,'','1655035492653',4,270,0,0,NULL,NULL,NULL,0,270,NULL,NULL,NULL,NULL,'2022-06-12',0),(26,4,3,1,18,1,1,'','1655145436002',4,75,0,0,NULL,NULL,NULL,0,75,NULL,NULL,NULL,NULL,'2022-06-13',0),(27,4,3,1,18,1,1,'','1655149506662',4,125,0,0,NULL,NULL,NULL,0,125,NULL,NULL,NULL,NULL,'2022-06-13',0),(28,4,3,1,18,1,1,'','1655150998504',4,100,0,0,NULL,NULL,NULL,0,100,NULL,NULL,NULL,NULL,'2022-06-13',0),(29,4,3,1,18,1,1,'','1655151042604',4,25,0,0,NULL,NULL,NULL,0,25,NULL,NULL,NULL,NULL,'2022-06-13',0),(30,4,3,1,18,1,1,'','1655152058758',4,35,0,0,NULL,NULL,NULL,0,35,NULL,NULL,NULL,NULL,'2022-06-13',0),(31,5,3,1,18,1,1,'','1655565720978',4,3000,0,0,NULL,NULL,NULL,0,3000,NULL,NULL,NULL,NULL,'2022-06-18',0),(32,4,3,1,20,1,1,'dgjjj','1655729345895',4,65,0,0,NULL,NULL,NULL,0,65,NULL,NULL,NULL,NULL,'2022-06-20',0),(33,5,3,1,20,1,1,'ryuj','1655729456128',4,3000,0,0,NULL,NULL,NULL,0,3000,NULL,NULL,NULL,NULL,'2022-06-20',0),(34,4,4,1,12,1,1,'','1656152309712',4,5,0,0,NULL,NULL,NULL,0,5,NULL,NULL,NULL,NULL,'2022-06-25',0),(35,25,4,3,17,1,1,'chhhhj','1656156814306',4,1000,0,0,NULL,NULL,NULL,0,1000,NULL,NULL,NULL,NULL,'2022-06-25',0),(36,8,3,1,18,0,1,'','Alt36',4,855,0,0,NULL,NULL,NULL,0,855,NULL,NULL,NULL,NULL,'2022-06-25',0),(37,8,2,1,1,1,1,'calt getirin','Alt37',4,355,0,0,NULL,NULL,NULL,0,355,NULL,NULL,NULL,NULL,'2022-06-26',0),(38,1,4,1,10,1,0,'sargyt','BTC38',4,44.6,0,0,NULL,NULL,NULL,0,44.6,NULL,NULL,NULL,NULL,'2022-06-27',0),(39,2,4,1,10,1,0,'','Kam39',4,998,0,0,NULL,NULL,NULL,0,998,NULL,NULL,NULL,NULL,'2022-06-27',0),(40,1,4,1,10,1,1,'bolya','BTC40',4,44.6,0,0,NULL,NULL,NULL,0,44.6,NULL,NULL,NULL,NULL,'2022-06-27',0),(41,1,4,1,10,1,1,'','BTC41',4,111.5,0,0,NULL,NULL,NULL,0,111.5,NULL,NULL,NULL,NULL,'2022-06-27',0),(42,25,3,1,20,0,1,'','Ata42',4,18668,0,0,NULL,NULL,NULL,0,18668,NULL,NULL,NULL,NULL,'2022-06-27',0),(43,8,3,1,20,1,2,'','Alt43',4,975,0,0,NULL,NULL,NULL,0,975,NULL,NULL,NULL,NULL,'2022-06-28',0),(44,25,11,1,21,1,1,'','Ata44',4,1000,0,0,NULL,NULL,NULL,0,1000,NULL,NULL,NULL,NULL,'2022-06-29',0),(45,25,12,1,22,1,0,'','Ata45',4,500,0,0,NULL,NULL,NULL,0,500,NULL,NULL,NULL,NULL,'2022-06-30',0),(46,35,6,1,23,1,1,'jdjdj','MiM46',4,235,0,0,NULL,NULL,NULL,0,235,NULL,NULL,NULL,NULL,'2022-07-13',0),(47,8,6,1,24,1,1,'','Alt47',4,200,0,0,NULL,NULL,NULL,0,200,NULL,NULL,NULL,NULL,'2022-07-20',0);
/*!40000 ALTER TABLE `sargytlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saylanan`
--

DROP TABLE IF EXISTS `saylanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saylanan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `header_text` varchar(250) NOT NULL,
  `header_textRU` varchar(250) NOT NULL,
  `label_text` varchar(250) NOT NULL,
  `label_textRU` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `product_type_id` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saylanan`
--

LOCK TABLES `saylanan` WRITE;
/*!40000 ALTER TABLE `saylanan` DISABLE KEYS */;
INSERT INTO `saylanan` VALUES (1,'Header text','Header text RU','Label text','Label text RU','url/link',0),(2,'Arzanladysh','Скидки','Saylanan harytlar','топ продукты','http://shop.com.tm:8080/uploads/productPhoto/1655979439238.png',0),(3,'Restorano Saylanan','ru','Restorano Label text','Label text RU','http://tmshop.com.tm/api/images/1655988391038_sd.jpg',2),(4,'fashion','fashionru','label','labelru','http://shop.com.tm:8080/uploads/productPhoto/1655979439238.png',3);
/*!40000 ALTER TABLE `saylanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saylanan_items`
--

DROP TABLE IF EXISTS `saylanan_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saylanan_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saylanan_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `saylanan_id` (`saylanan_id`),
  KEY `prodct_key` (`product_id`),
  CONSTRAINT `prodct_key` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `saylanan_id` FOREIGN KEY (`saylanan_id`) REFERENCES `saylanan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saylanan_items`
--

LOCK TABLES `saylanan_items` WRITE;
/*!40000 ALTER TABLE `saylanan_items` DISABLE KEYS */;
INSERT INTO `saylanan_items` VALUES (1,1,82),(2,1,83),(3,1,85),(15,3,80),(16,3,81),(17,3,83),(18,3,84),(19,3,85),(20,3,86),(21,3,87),(22,3,88),(24,3,89);
/*!40000 ALTER TABLE `saylanan_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `type_shop` tinyint(1) NOT NULL DEFAULT '1',
  `shop_id` int NOT NULL,
  `service_shop_id` int NOT NULL DEFAULT '0',
  `Access` tinyint(1) NOT NULL DEFAULT '0',
  `kurs` tinyint(1) NOT NULL DEFAULT '0',
  `owner_name_familya` varchar(250) DEFAULT NULL,
  `owners_phone` varchar(20) NOT NULL,
  `jynsy` varchar(250) NOT NULL,
  `birthday` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (1,'jasur','jasur1',0,5,16,1,1,'Ashyrbayew Jasurbek','65431571','erkek','13-04-2022','mende ishleya oytyan'),(2,'login','password',1,1,0,1,1,'Guwanç Durdyýew','+993(8)64999090','MALE',NULL,NULL),(12,'pikir','pikir',0,0,14,1,0,'Sapar','+993(8)64999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(13,'tml','tml',0,0,15,1,0,'Jasur','+993(8)64999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(14,'gujurly','gujurly',0,0,13,0,0,'Gujyrly','+993(8)64999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(16,'altyn','achar',1,8,0,1,0,'Altyn açar','+99365431571','Male','19-05-2022','jasurbek1303@gmail.com'),(17,'magnit','password',1,2,0,1,0,'Guwanç Durdyýew','+993(8)64999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(18,'magnit','password',0,0,0,0,0,NULL,'+993(8)64999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(19,'login','password1',1,3,0,1,0,'Guwanç Durdyýew','+993(8)64999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(20,'guvanch','guvanch',0,0,0,0,0,'Guwanç Durdyýew','+993(8)64999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(21,'log','password',1,9,0,0,0,'Jasbek','+99364999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(23,'guvanch1','guvanch',0,0,0,0,0,'Guwanç Durdyýew','+993(8)64999090','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(26,'jas','jasur99',0,24,18,0,0,'jas','61856271','Erkek','Jun 17, 2022','jasurbek1303@gmail.com '),(27,'agvfbv','sdgnbv',0,0,0,0,0,'ssdd','61907121','Erkek',NULL,NULL),(28,'dash','fshshshsj',0,0,0,0,0,'jasbek','61856271','Erkek',NULL,'jasurbek1303@gmail.com '),(29,'gjjj','fghghhj',0,0,0,0,0,'ghhhh','61856271','Erkek',NULL,NULL),(30,'atash','atash',1,25,0,1,0,'Atash','65431571','Male','15-06-2022','jasurbek1303@gmail.com'),(31,'jemal','jemal98',1,26,0,1,0,'Jemal Sowbetowa','+99363012939','FEMALE','26.02.1998','sowbetow.j@gmail.com'),(32,'service','service',0,0,0,0,0,'Service','+99361856271','MALE','01.09.1999','guvanch.d.1999@gmail.com'),(33,'shop','jasurbek',0,0,0,0,0,'Jas Asher','63012939','Erkek','Jul 3, 2022','jasurbek1303@gmail.com'),(34,'taze','jasbek99',0,0,20,1,0,'jasbek','61856271','Erkek',NULL,NULL),(35,'aman','aman',1,27,0,1,1,'aman amanow','+99365656565','Male','24-07-1997','aman@gmail.çom'),(37,'Rahim','mi.rahim',1,35,0,1,0,'Rahim','64033084','Male','13-07-2022','rahim@gmail.çom'),(38,'love','123456',1,37,0,0,0,'gjjj hhhhj','65431571','Erkek',NULL,NULL);
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_banner`
--

DROP TABLE IF EXISTS `service_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_shop_id` int NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `modified` tinyint(1) DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text,
  `is_product` tinyint NOT NULL DEFAULT '0',
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_banner`
--

LOCK TABLES `service_banner` WRITE;
/*!40000 ALTER TABLE `service_banner` DISABLE KEYS */;
INSERT INTO `service_banner` VALUES (1,1,'http://shop.com.tm:8080/uploads/bannerShop/1647232852478.jpg',0,0,0,'',0,NULL),(3,1,'http://shop.com.tm:8080/uploads/bannerShop/1648216671159.png',0,0,0,'',0,0),(4,1,'http://shop.com.tm:8080/uploads/bannerShop/1657281758640.jpg',0,0,0,'',0,26),(5,3,'http://shop.com.tm:8080/uploads/bannerShop/1648237374460.png',0,0,0,'',0,0),(6,1,'http://shop.com.tm:8080/uploads/bannerShop/1648240031755.png',0,0,0,'',0,0),(7,1,'http://shop.com.tm:8080/uploads/bannerShop/1648240155055.png',0,0,0,'',0,0),(8,1,'http://shop.com.tm:8080/uploads/bannerShop/1648240904625.png',0,0,0,'',0,0),(9,3,'http://shop.com.tm:8080/uploads/bannerShop/1648241180624.png',0,0,0,'',0,0),(10,1,'http://shop.com.tm:8080/uploads/bannerShop/1648241255990.png',0,0,0,'',0,0),(11,2,'http://shop.com.tm:8080/uploads/bannerShop/1648241261646.png',0,0,0,'',0,0),(12,1,'http://shop.com.tm:8080/uploads/bannerShop/1648241264967.png',0,0,0,'',0,0),(13,1,'http://shop.com.tm:8080/uploads/bannerShop/1648241277846.png',0,0,0,'',0,0),(14,1,'http://shop.com.tm:8080/uploads/bannerShop/1648241281103.png',0,0,0,'',0,0),(15,1,'http://shop.com.tm:8080/uploads/bannerShop/1648241284070.png',0,0,0,'',0,0),(16,1,'http://shop.com.tm:8080/uploads/bannerShop/1648241288942.png',0,0,0,'',0,0),(17,1,'http://shop.com.tm:8080/uploads/bannerShop/1648241291242.png',0,0,0,'',0,0),(18,1,'http://shop.com.tm:8080/uploads/bannerShop/1648241296726.png',0,0,0,'',0,0),(19,1,'http://shop.com.tm:8080/uploads/bannerShop/1648243083846.png',0,0,0,'',0,0),(20,1,'http://shop.com.tm:8080/uploads/bannerShop/1648492339473.png',0,0,0,'',0,0),(21,1,'http://shop.com.tm:8080/uploads/bannerShop/1648492371071.png',0,0,0,'',0,0),(22,12,'http://shop.com.tm:8080/uploads/bannerShop/1651857488212.png',0,0,0,'',1,40),(23,12,'http://shop.com.tm:8080/uploads/bannerShop/1651857533072.png',0,0,0,'',0,0),(24,12,'http://shop.com.tm:8080/uploads/bannerShop/1651857608995.jpg',0,0,0,'',1,41),(26,14,'http://shop.com.tm:8080/uploads/bannerShop/1657283252988.jpg',0,0,0,'',0,26),(29,14,'http://shop.com.tm:8080/uploads/bannerShop/1657283384899.jpg',0,0,0,'',0,0),(31,14,'http://shop.com.tm:8080/uploads/bannerShop/1657610621651.jpg',0,0,0,'',0,0);
/*!40000 ALTER TABLE `service_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_catalog`
--

DROP TABLE IF EXISTS `service_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_catalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bolum_id` int NOT NULL,
  `katalog_id` int NOT NULL,
  `service_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_catalog`
--

LOCK TABLES `service_catalog` WRITE;
/*!40000 ALTER TABLE `service_catalog` DISABLE KEYS */;
INSERT INTO `service_catalog` VALUES (4,1,22,12),(9,1,23,14),(11,1,22,14),(12,1,36,19),(13,1,36,20),(14,1,23,21),(15,1,23,22),(16,1,36,23),(17,1,36,24),(18,1,73,25),(19,1,89,26),(20,1,86,26);
/*!40000 ALTER TABLE `service_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_product`
--

DROP TABLE IF EXISTS `service_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catalog_id` int NOT NULL,
  `service_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `nameRU` varchar(250) DEFAULT NULL,
  `description` text,
  `descriptionRU` text,
  `price` double DEFAULT NULL,
  `like_num` int DEFAULT NULL,
  `rate` int DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `seen` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_product`
--

LOCK TABLES `service_product` WRITE;
/*!40000 ALTER TABLE `service_product` DISABLE KEYS */;
INSERT INTO `service_product` VALUES (5,12,13,'Gujurly nesil','gujurly','bilim merkez','Beyany RU',1000,NULL,NULL,'2022-07-06 13:54:54',0,NULL,1,0,0),(6,12,13,'Dana','dana bilim','bilim merkez','Beyany RU',1000,NULL,NULL,'2022-04-06 09:59:27',0,NULL,0,0,0),(7,12,13,'Data','Дата','Maglumat','Информация',100,NULL,NULL,'2022-04-06 10:00:56',0,NULL,0,0,0),(8,12,13,'Alisa','Алиса','Yandeü','Яндекс Алиса',20000,NULL,NULL,'2022-04-06 10:01:59',0,NULL,0,0,0),(9,24,13,'Bildiriş','Афиша','Gujurly nesil kurslar','курсы Gujurly nesil',3000,NULL,NULL,'2022-04-26 13:03:47',0,NULL,0,0,0),(10,24,13,'Iňlis dili','Английский язык','Iňlis dili çagalar üçin kurslar','Английский для детей',2000,NULL,NULL,'2022-04-26 13:05:31',0,NULL,0,0,0),(11,24,13,'Bilim žurnaly','Журнал Знание','Bilimiňizi bilim bilen artdyryň','Журнал',30,NULL,NULL,'2022-04-26 13:07:03',0,NULL,0,0,0),(12,78,13,'Gujurly nesil açyk gapylar güni','День открытых дверей','Gujurly nesil okuw merkezinde  senede  açyk gapylar güni Hemmäňizi çagyrýarys','число  у нас день открытых дверей  Всех приглашаем',0,NULL,NULL,'2022-07-07 17:32:47',0,NULL,1,0,0),(13,22,14,'IoS Android programmalar','Мобилные приложение','Arzan bahadan IOS Android programmalar','Мобилные приложение для IOS Android',20000,NULL,NULL,'2022-07-07 17:32:46',1,'yalnysh',0,0,0),(14,22,14,'Web saýt','Веб сайты','Web saýt düzüp bermek hyzmaty','Сервис создание веб сайтов',10000,NULL,NULL,'2022-07-07 17:32:49',0,NULL,1,0,0),(15,22,14,'Galkan programmasy','програмное обеспечение Galkan','Haryt satmak üçin taýýyn GalkanFreş programmy','програмное обеспечение Galkan для продажи онлайн продуктов',15000,NULL,NULL,'2022-07-07 17:33:01',0,NULL,1,0,0),(16,22,14,'Mobile UI UX design','Мобилный UI UX дизайн','Owadan creative özboluşly mobile dizaýn döredip berýäs','Красивые креативные совремменые мобилные дизайны',5000,NULL,NULL,'2022-07-07 17:33:02',0,NULL,1,0,0),(17,22,14,'Web UI UX design','Веб UI UX дизайн','Web sahypanyň owadan creative özboluşly  dizaýn döredip berýäs','Красивые креативные совремменые веб дизайны',10000,NULL,NULL,'2022-07-12 16:09:56',0,NULL,1,0,0),(18,23,15,'Air cargo','Воздушное карго','Samalýot arkaly ýukleriňiz getirip berýäs','Ваше карго перевезут через самолёт',1000,NULL,NULL,'2022-04-26 13:41:31',0,NULL,0,0,0),(19,23,15,'SHip cargo','корабль груз','Gämi arkaly ýukleriňiz getirip berýäs','Ваше груз перевезут в корабле',2000,NULL,NULL,'2022-04-26 13:43:29',0,NULL,0,0,0),(20,23,15,'Train cargo','Поезд груз','Otly arkaly ýukleriňiz getirip berýäs','Ваше груз перевезут в поезде',1500,NULL,NULL,'2022-04-26 13:44:36',0,NULL,0,0,0),(22,22,14,'Service product Pikir 1','Сервис продукт Пикир 1','Description of service Pikir 1','Описание сервиса Пикир 1',0,NULL,NULL,'2022-07-07 18:02:18',0,NULL,0,0,0),(25,22,14,'kerim','Сервис продукт Пикир 4','Description of service Pikir ','Описание сервиса Пикир 4',0,NULL,NULL,'2022-07-07 17:33:10',0,NULL,0,0,0),(26,22,14,'Service product Pikir','Сервис продукт Пикир 5','Description of service Pikir 5','Описание сервиса Пикир 5',0,NULL,NULL,'2022-07-07 17:33:13',1,'yalnysh',0,0,0),(28,24,13,'Service product Gujurly Nesil 6','Сервис продукт Gujurly Nesil 6','Description of service Gujurly Nesil 6','Описание сервиса Gujurly Nesil 6',0,NULL,NULL,'2022-05-05 12:51:38',0,NULL,0,0,0),(29,24,13,'Service product Gujurly Nesil 5','Сервис продукт Gujurly Nesil 5','Description of service Gujurly Nesil 5','Описание сервиса Gujurly Nesil 5',0,NULL,NULL,'2022-05-05 12:51:56',0,NULL,0,0,0),(30,24,13,'Service product Gujurly Nesil 4','Сервис продукт Gujurly Nesil 4','Description of service Gujurly Nesil 4','Описание сервиса Gujurly Nesil 4',0,NULL,NULL,'2022-05-05 12:52:17',0,NULL,0,0,0),(31,24,13,'Service product Gujurly Nesil 3','Сервис продукт Gujurly Nesil 3','Description of service Gujurly Nesil 3','Описание сервиса Gujurly Nesil 3',0,NULL,NULL,'2022-05-05 12:52:32',0,NULL,0,0,0),(32,24,13,'Service product Gujurly Nesil 2','Сервис продукт Gujurly Nesil 2','Description of service Gujurly Nesil 2','Описание сервиса Gujurly Nesil 2',0,NULL,NULL,'2022-05-05 12:52:50',0,NULL,0,0,0),(33,24,13,'Service product Gujurly Nesil 2','Сервис продукт Gujurly Nesil 2','Description of service Gujurly Nesil 2','Описание сервиса Gujurly Nesil 2',0,NULL,NULL,'2022-05-05 12:53:07',0,NULL,0,0,0),(34,24,13,'Service product Gujurly Nesil 1','Сервис продукт Gujurly Nesil 1','Description of service Gujurly Nesil 1','Описание сервиса Gujurly Nesil 1',0,NULL,NULL,'2022-05-05 12:54:46',0,NULL,0,0,0),(35,23,15,'Service product TML 1','Сервис продукт TML 1','Description of service TML 1','Описание сервиса TML 1',0,NULL,NULL,'2022-05-05 12:55:42',0,NULL,0,0,0),(36,23,15,'Service product TML 2','Сервис продукт TML 2','Description of service TML 2','Описание сервиса TML 2',0,NULL,NULL,'2022-05-05 12:55:57',0,NULL,0,0,0),(37,23,15,'Service product TML 3','Сервис продукт TML 3','Description of service TML 3','Описание сервиса TML 3',0,NULL,NULL,'2022-05-05 12:56:11',0,NULL,0,0,0),(38,23,15,'Service product TML 4','Сервис продукт TML 4','Description of service TML 4','Описание сервиса TML 4',0,NULL,NULL,'2022-05-05 12:56:56',0,NULL,0,0,0),(39,23,15,'Service product TML 5','Сервис продукт TML 5','Description of service TML 5','Описание сервиса TML 5',0,NULL,NULL,'2022-05-05 12:57:09',0,NULL,0,0,0),(41,35,12,'Service product Btc 5','Сервис продукт Btc 5','Description of service Btc 5','Описание сервиса Btc 5',0,NULL,NULL,'2022-05-05 13:10:08',0,NULL,0,0,0),(43,35,12,'Service product Btc 5','Сервис продукт Btc 5','Description of service Btc 5','Описание сервиса Btc 5',0,1,5,'2022-05-05 13:10:19',0,NULL,1,0,0),(44,35,12,'Service product Btc 5','Сервис продукт Btc 5','Description of service Btc 5','Описание сервиса Btc 5',0,NULL,NULL,'2022-05-05 13:10:27',0,NULL,1,0,0),(45,35,12,'Service product Btc 3','Сервис продукт Btc 3','Description of service Btc 3','Описание сервиса Btc 3',0,2,NULL,'2022-05-05 13:10:42',0,NULL,1,0,0),(46,35,12,'Service product Btc 2','Сервис продукт Btc 2','Description of service Btc 2','Описание сервиса Btc 2',0,1,NULL,'2022-05-05 13:11:02',0,NULL,1,0,0),(48,35,12,'Service product Btc 1','Сервис продукт Btc 1','Description of service Btc 1','Описание сервиса Btc 1',0,1,NULL,'2022-05-07 09:46:20',0,NULL,1,0,0),(49,12,16,'gggh','ru','yyggtt',NULL,0,1,NULL,'2022-05-07 12:02:46',0,NULL,1,0,0),(53,23,12,'asdfsdf',NULL,'sdfasdfa',NULL,123,0,NULL,'2022-05-11 04:20:08',0,NULL,1,0,0),(54,23,12,'asdfsdf2345',NULL,'sdfasdfa',NULL,123,NULL,NULL,'2022-05-11 04:20:34',0,NULL,1,0,0),(55,23,12,'asdfsdf2345',NULL,'sdfasdfa',NULL,123,NULL,NULL,'2022-05-11 04:20:46',0,NULL,1,0,0),(56,23,12,'asdfsdf2345',NULL,'sdfasdfa',NULL,123,NULL,NULL,'2022-05-11 04:21:14',0,NULL,1,0,0),(57,23,13,'asdfasdgh',NULL,'asdfasdfasd',NULL,123,1,NULL,'2022-05-11 04:37:35',0,NULL,1,0,0),(58,29,12,'afsdf',NULL,'wdrfsa',NULL,123,NULL,NULL,'2022-05-11 04:40:50',0,NULL,1,0,0),(59,22,12,'taze',NULL,'asddsad',NULL,0,NULL,NULL,'2022-05-11 14:27:27',0,NULL,1,0,0),(60,22,14,'surat','A','haryt','rttt',0,NULL,NULL,'2022-06-23 10:19:47',0,NULL,0,0,0),(61,23,22,'Ak Ulag HK Ofice',NULL,'Kärhanamyz Türkmenistanyň çäginde şu aşakdaky hyzmatlary ýerine ýetirmek bilen meşgullanýar:\r\n\r\nTürkmenistanyň çäginde ulag we logistika hyzmatlary.\r\nGara ýol ulaglary arkaly ýükleri daşamak.\r\nDemir ýol ulaglary arkaly ýükleri daşamak.\r\nHowa ýollary arkaly ýükleri daşamak.\r\nDeňiz ýol ulaglary arkaly ýükleri daşamak.\r\nHalkara howply ýükleri daşamak.\r\nGümrük dellallyk işleri.',NULL,100,NULL,NULL,'2022-07-04 12:44:53',0,NULL,1,0,0),(62,23,14,'ттьлл','ттьлл','ооооло','олллл',66,NULL,NULL,'2022-07-12 08:04:42',0,NULL,0,0,0),(63,23,14,'бдд','бдд','лдд','тььб',0,NULL,NULL,'2022-07-12 08:08:58',0,NULL,0,0,0),(64,23,14,'ншгшлш','ншгшлш','оооооо','',0,NULL,NULL,'2022-07-12 08:11:39',0,NULL,0,0,0),(65,23,14,'ттто','ттто','ооол','ооо',0,NULL,NULL,'2022-07-12 09:04:22',0,NULL,0,0,0),(66,23,14,'hjjj','hjjj','hjj','hhj',0,NULL,NULL,'2022-07-12 09:20:20',0,NULL,0,0,0),(67,23,14,'jdhd','jdhd','nejshehe','млпдпд клклкл аьалаь',200,NULL,NULL,'2022-07-12 09:24:08',0,NULL,0,0,0),(68,23,14,'fffg','fffg','vvdr ffdd','алалаьсь',60000,NULL,NULL,'2022-07-12 09:25:15',0,NULL,0,0,0),(69,23,14,'rjrje','rjrje','hdhejd','плалаьв',8994949,NULL,NULL,'2022-07-12 09:25:51',0,NULL,0,0,0),(70,23,14,'rjdhd','rjdhd','jfjfnd','ататктк',656,NULL,NULL,'2022-07-12 09:26:24',0,NULL,0,0,0),(71,23,14,'dndhd','dndhd','hffbdfj','ffff',988,NULL,NULL,'2022-07-12 09:26:58',0,NULL,0,0,0),(72,23,14,'bdnsndnd','bdnsndnd','xjdjdnnd','',0,NULL,NULL,'2022-07-12 09:27:53',0,NULL,0,0,0),(73,23,14,'bdbdd','bdbdd','sbsbs d ','',0,NULL,NULL,'2022-07-12 09:28:55',0,NULL,0,0,0),(74,23,14,'xnnxnx','xnnxnx','dndbd d ejdjdj','',0,NULL,NULL,'2022-07-12 09:29:13',0,NULL,0,0,0),(75,23,14,'ddjd','ddjd','jdrjrjrj','',0,NULL,NULL,'2022-07-12 09:29:54',0,NULL,0,0,0),(76,23,14,'jeeje','jeeje','ehdbdhehehehe','',0,NULL,NULL,'2022-07-12 09:30:17',0,NULL,0,0,0),(77,23,14,'vdbssb','vdbssb','nddnndjd','',0,NULL,NULL,'2022-07-12 09:30:34',0,NULL,0,0,0),(78,23,14,'dnfngbfn','dnfngbfn','rhrjdjd','',0,NULL,NULL,'2022-07-12 09:31:38',0,NULL,0,0,0),(79,23,14,'dndndn','dndndn','nejeneje','',0,NULL,NULL,'2022-07-12 09:31:54',0,NULL,0,0,0),(80,23,14,'djdndj','djdndj','enenenenen','',0,NULL,NULL,'2022-07-12 09:32:06',0,NULL,0,0,0),(81,23,14,'djdjd','djdjd','nednndnd','',0,NULL,NULL,'2022-07-12 09:32:25',0,NULL,0,0,0),(82,23,14,'jxjxx','jxjxx','bxncndnd','',0,NULL,NULL,'2022-07-12 09:32:44',0,NULL,0,0,0),(83,23,14,'ucjf','ucjf','cjfnfn','',0,NULL,NULL,'2022-07-12 09:33:05',0,NULL,0,0,0),(84,23,14,'cncjcj','cncjcj','ndndhd','',0,NULL,NULL,'2022-07-12 09:33:20',0,NULL,0,0,0),(85,23,14,'mfdnnd','mfdnnd','hsjshs','',0,NULL,NULL,'2022-07-12 09:33:48',0,NULL,0,0,0),(86,23,14,'jccnfn','jccnfn','cnfnnf','',0,NULL,NULL,'2022-07-12 09:33:59',0,NULL,0,0,0),(87,23,14,'ndndnd','ndndnd','nsnsns','',0,NULL,NULL,'2022-07-12 09:34:31',0,NULL,0,0,0),(88,23,14,'dndndn','dndndn','wneneneb','',0,NULL,NULL,'2022-07-12 09:35:15',0,NULL,0,0,0),(89,23,14,'dkdjdj','dkdjdj','ehehen','',0,NULL,NULL,'2022-07-12 09:35:54',0,NULL,0,0,0);
/*!40000 ALTER TABLE `service_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_product_photo`
--

DROP TABLE IF EXISTS `service_product_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_product_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_product_id` int NOT NULL,
  `photo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `service_product_id` (`service_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_product_photo`
--

LOCK TABLES `service_product_photo` WRITE;
/*!40000 ALTER TABLE `service_product_photo` DISABLE KEYS */;
INSERT INTO `service_product_photo` VALUES (4,0,'http://shop.com.tm:8080/uploads/productPhoto/1648479061611.png'),(5,0,'http://shop.com.tm:8080/uploads/productPhoto/1648535001345.JPG'),(6,0,'http://shop.com.tm:8080/uploads/productPhoto/1648726621485.jpg'),(7,0,'http://shop.com.tm:8080/uploads/productPhoto/1648726627266.jpg'),(8,5,'http://shop.com.tm:8080/uploads/productPhoto/1649239087314.png'),(9,6,'http://shop.com.tm:8080/uploads/productPhoto/1649239161519.jpg'),(10,7,'http://shop.com.tm:8080/uploads/productPhoto/1649239204583.png'),(11,8,'http://shop.com.tm:8080/uploads/productPhoto/1649239282419.png'),(12,9,'http://shop.com.tm:8080/uploads/productPhoto/1650977995291.jpg'),(13,10,'http://shop.com.tm:8080/uploads/productPhoto/1650978256040.jpg'),(14,11,'http://shop.com.tm:8080/uploads/productPhoto/1650978359922.jpg'),(15,12,'http://shop.com.tm:8080/uploads/productPhoto/1650978445531.jpg'),(16,13,'http://shop.com.tm:8080/uploads/productPhoto/1650979265231.jpg'),(17,14,'http://shop.com.tm:8080/uploads/productPhoto/1650979474578.jpg'),(18,15,'http://shop.com.tm:8080/uploads/productPhoto/1650979637545.jpg'),(19,16,'http://shop.com.tm:8080/uploads/productPhoto/1650979776415.png'),(20,17,'http://shop.com.tm:8080/uploads/productPhoto/1650979927394.jpg'),(21,18,'http://shop.com.tm:8080/uploads/productPhoto/1650980380109.jpg'),(22,19,'http://shop.com.tm:8080/uploads/productPhoto/1650980504749.jpg'),(23,20,'http://shop.com.tm:8080/uploads/productPhoto/1650980632097.jpg'),(24,22,'http://shop.com.tm:8080/uploads/productPhoto/1651754069434.PNG'),(25,23,'http://shop.com.tm:8080/uploads/productPhoto/1651754128631.PNG'),(26,24,'http://shop.com.tm:8080/uploads/productPhoto/1651754135194.PNG'),(27,25,'http://shop.com.tm:8080/uploads/productPhoto/1651754307084.png'),(28,26,'http://shop.com.tm:8080/uploads/productPhoto/1651754321040.png'),(29,27,'http://shop.com.tm:8080/uploads/productPhoto/1651754331440.png'),(30,28,'http://shop.com.tm:8080/uploads/productPhoto/1651754344061.png'),(31,29,'http://shop.com.tm:8080/uploads/productPhoto/1651754360520.png'),(32,30,'http://shop.com.tm:8080/uploads/productPhoto/1651754371839.png'),(33,31,'http://shop.com.tm:8080/uploads/productPhoto/1651754386575.png'),(34,32,'http://shop.com.tm:8080/uploads/productPhoto/1651754395003.png'),(35,33,'http://shop.com.tm:8080/uploads/productPhoto/1651754413419.png'),(36,34,'http://shop.com.tm:8080/uploads/productPhoto/1651754425540.png'),(37,35,'http://shop.com.tm:8080/uploads/productPhoto/1651754530857.png'),(38,36,'http://shop.com.tm:8080/uploads/productPhoto/1651754547237.png'),(39,37,'http://shop.com.tm:8080/uploads/productPhoto/1651754568651.png'),(40,38,'http://shop.com.tm:8080/uploads/productPhoto/1651754599905.PNG'),(41,39,'http://shop.com.tm:8080/uploads/productPhoto/1651754612300.PNG'),(42,0,'http://shop.com.tm:8080/uploads/productPhoto/1651754624680.PNG'),(43,0,'http://shop.com.tm:8080/uploads/productPhoto/1651754632348.PNG'),(44,48,'http://shop.com.tm:8080/uploads/productPhoto/1651754644825.png'),(45,41,'http://shop.com.tm:8080/uploads/productPhoto/1651756139556.jpg'),(46,43,'http://shop.com.tm:8080/uploads/productPhoto/1651756148936.jpg'),(47,44,'http://shop.com.tm:8080/uploads/productPhoto/1651756153958.jpg'),(48,45,'http://shop.com.tm:8080/uploads/productPhoto/1651756160795.jpg'),(49,46,'http://shop.com.tm:8080/uploads/productPhoto/1651756169258.jpg'),(50,0,'http://shop.com.tm:8080/uploads/productPhoto/1651859234403.jpg'),(51,0,'http://shop.com.tm:8080/uploads/productPhoto/1651915968519.jpg'),(52,0,'http://shop.com.tm:8080/uploads/productPhoto/1651916069928.jpg'),(53,0,'http://shop.com.tm:8080/uploads/productPhoto/1651916376154.jpg'),(54,0,'http://shop.com.tm:8080/uploads/productPhoto/1651916377263.jpg'),(55,0,'http://shop.com.tm:8080/uploads/productPhoto/1651916414529.jpg'),(56,0,'http://shop.com.tm:8080/uploads/productPhoto/1651924026434.jpg'),(57,49,'http://shop.com.tm:8080/uploads/productPhoto/1651924965051.jpg'),(58,53,'http://tmshop.com.tm/api/images/1652242808063_geVgbdjEtMUtpOI1aMe9W2fc4YCPJmERhOqaVV81.jpg'),(59,54,'http://tmshop.com.tm/api/images/1652242834623_geVgbdjEtMUtpOI1aMe9W2fc4YCPJmERhOqaVV81.jpg'),(60,55,'http://tmshop.com.tm/api/images/1652242846414_geVgbdjEtMUtpOI1aMe9W2fc4YCPJmERhOqaVV81.jpg'),(61,56,'http://tmshop.com.tm/api/images/1652242874657_geVgbdjEtMUtpOI1aMe9W2fc4YCPJmERhOqaVV81.jpg'),(62,57,'http://tmshop.com.tm/api/images/1652243855082_Logistics.webp'),(63,58,'http://tmshop.com.tm/api/images/1652244050333_geVgbdjEtMUtpOI1aMe9W2fc4YCPJmERhOqaVV81.jpg'),(64,59,'http://tmshop.com.tm/api/images/1652279247395_logoo.png'),(66,60,'http://shop.com.tm:8080/uploads/productPhoto/1655979439238.png'),(69,61,'http://tmshop.com.tm/api/images/1656939123702_chernyj_metalloprokat.jpg'),(70,0,'http://shop.com.tm:8080/uploads/productPhoto/1657611766303.jpg'),(71,0,'http://shop.com.tm:8080/uploads/productPhoto/1657611770606.jpg'),(72,0,'http://shop.com.tm:8080/uploads/productPhoto/1657611915818.jpg'),(73,0,'http://shop.com.tm:8080/uploads/productPhoto/1657611937852.jpg'),(74,0,'http://shop.com.tm:8080/uploads/productPhoto/1657611938473.jpg'),(75,0,'http://shop.com.tm:8080/uploads/productPhoto/1657611938586.jpg'),(76,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612102035.jpg'),(77,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612107844.jpg'),(78,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612109576.jpg'),(79,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612110201.jpg'),(80,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612110845.jpg'),(81,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612116638.jpg'),(82,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612117267.jpg'),(83,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612174296.jpg'),(84,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612175020.jpg'),(85,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612175318.jpg'),(86,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612175483.jpg'),(87,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612175672.jpg'),(88,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612176279.jpg'),(89,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612177878.jpg'),(90,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612684895.jpg'),(91,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612688850.jpg'),(92,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612689064.jpg'),(93,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612689297.jpg'),(94,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612689454.jpg'),(95,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612689681.jpg'),(96,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612689908.jpg'),(97,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612690090.jpg'),(98,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612690211.jpg'),(99,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612690564.jpg'),(100,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612690697.jpg'),(101,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612696353.jpg'),(102,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612696496.jpg'),(103,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612696636.jpg'),(104,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612696841.jpg'),(105,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612697004.jpg'),(106,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612697177.jpg'),(107,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612721218.jpg'),(108,0,'http://shop.com.tm:8080/uploads/productPhoto/1657612721271.jpg'),(109,62,'http://shop.com.tm:8080/uploads/productPhoto/1657613081979.jpg'),(110,63,'http://shop.com.tm:8080/uploads/productPhoto/1657613338709.jpg'),(111,64,'http://shop.com.tm:8080/uploads/productPhoto/1657613498994.jpg'),(112,65,'http://shop.com.tm:8080/uploads/productPhoto/1657616662046.jpg'),(113,66,'http://shop.com.tm:8080/uploads/productPhoto/1657617620848.jpg'),(114,67,'http://shop.com.tm:8080/uploads/productPhoto/1657617848490.jpg'),(115,68,'http://shop.com.tm:8080/uploads/productPhoto/1657617915501.jpg'),(116,69,'http://shop.com.tm:8080/uploads/productPhoto/1657617951494.jpg'),(117,70,'http://shop.com.tm:8080/uploads/productPhoto/1657617984451.jpg'),(118,71,'http://shop.com.tm:8080/uploads/productPhoto/1657618018623.jpg'),(119,72,'http://shop.com.tm:8080/uploads/productPhoto/1657618073505.jpg'),(120,73,'http://shop.com.tm:8080/uploads/productPhoto/1657618135112.jpg'),(121,74,'http://shop.com.tm:8080/uploads/productPhoto/1657618153843.jpg'),(122,75,'http://shop.com.tm:8080/uploads/productPhoto/1657618194667.jpg'),(123,76,'http://shop.com.tm:8080/uploads/productPhoto/1657618217574.jpg'),(124,77,'http://shop.com.tm:8080/uploads/productPhoto/1657618234470.jpg'),(125,78,'http://shop.com.tm:8080/uploads/productPhoto/1657618298575.jpg'),(126,79,'http://shop.com.tm:8080/uploads/productPhoto/1657618314211.jpg'),(127,80,'http://shop.com.tm:8080/uploads/productPhoto/1657618326683.jpg'),(128,81,'http://shop.com.tm:8080/uploads/productPhoto/1657618345173.jpg'),(129,82,'http://shop.com.tm:8080/uploads/productPhoto/1657618364084.jpg'),(130,83,'http://shop.com.tm:8080/uploads/productPhoto/1657618385777.jpg'),(131,84,'http://shop.com.tm:8080/uploads/productPhoto/1657618400444.jpg'),(132,85,'http://shop.com.tm:8080/uploads/productPhoto/1657618428827.jpg'),(133,86,'http://shop.com.tm:8080/uploads/productPhoto/1657618439686.jpg'),(134,87,'http://shop.com.tm:8080/uploads/productPhoto/1657618471335.jpg'),(135,88,'http://shop.com.tm:8080/uploads/productPhoto/1657618515893.jpg'),(136,89,'http://shop.com.tm:8080/uploads/productPhoto/1657618554642.jpg');
/*!40000 ALTER TABLE `service_product_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_shop_top3_product`
--

DROP TABLE IF EXISTS `service_shop_top3_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_shop_top3_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_shop_id` int NOT NULL,
  `service_product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_shop_top3_product`
--

LOCK TABLES `service_shop_top3_product` WRITE;
/*!40000 ALTER TABLE `service_shop_top3_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `service_shop_top3_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_shops`
--

DROP TABLE IF EXISTS `service_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_shops_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `adress_id` int NOT NULL,
  `salgy` varchar(250) NOT NULL,
  `phonee` varchar(250) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `website` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `short_description` varchar(250) DEFAULT NULL,
  `kartdan_toleg` tinyint(1) DEFAULT (0),
  `descriptionRU` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_shops`
--

LOCK TABLES `service_shops` WRITE;
/*!40000 ALTER TABLE `service_shops` DISABLE KEYS */;
INSERT INTO `service_shops` VALUES (12,'BTCc service ady uytgedi',2,'','undefined','di@gmail.com','https://www.w3schools.com/sql/func_mysql_ceil.asp','http://shop.com.tm:8080/uploads/serviceShops/1651845789927.JPG','','2022-03-14 09:38:28','2022-05-23 16:28:05',1,0,NULL,0,NULL),(13,'Gujurly nesil',2,'','','','','http://shop.com.tm:8080/uploads/serviceShops/1649238885850.png','','2022-04-06 14:54:45','2022-04-12 08:09:43',1,0,NULL,0,NULL),(14,'Sapar',2,'','','di@gmail.com','https://www.w3schools.com/sql/func_mysql_ceil.asp','http://shop.com.tm:8080/uploads/serviceShops/1656414293435.jpg','','2022-04-26 17:33:51','2022-07-20 10:07:19',0,0,NULL,0,NULL),(16,'test service',1,'sda','65431571','jasurbek1303@gmail.com','sdf','http://tmshop.com.tm/api/images/1651852525610_ai-about-1.png','fththrteh','2022-05-06 20:55:25','2022-05-06 15:55:25',1,0,NULL,0,NULL),(21,'hgutvbhn',3,'aa','9365123456','dfdg@gamil.com','fgfgf.com','http://tmshop.com.tm/api/images/1656937991285_image.png','djfgfjnbf','2022-07-04 17:33:11','2022-07-04 12:33:11',1,0,NULL,0,NULL),(22,'Ak Ulag HK',3,'Asgabat saher (2127) G.Kulyyev koce 86','6181496','akulagtm.com','marketing-team@akulagtm.com','http://tmshop.com.tm/api/images/1656938169508_ak.png','Ak Ulag hususy kärhanasy Türkmenistanyň çäginde ilkinji gezek 06.11.2014 senesinde Türkmenistanyň Ykdysadyýet we Maliýe ministrligi tarapyndan №:15163045 belgiden hasaba alyndy.','2022-07-04 17:36:09','2022-07-04 12:36:09',1,0,NULL,0,NULL),(23,'Ak Yol Computers',3,'Aşgabat 8-nji mikroraýon, A. Nyýazow şaýoly, 36, \"Ak Ýol\" bazary, dükan №25','61 532099','akyolwebsite@gmail.com','www.akyol.com.tm','http://tmshop.com.tm/api/images/1657008191916_ak yol.jpg','Ak Yol Computers - kompýuter, sanly, durmuş we periferiýa enjamlaryny satýan ýöriteleşdirilen dükan. Dükanda diňe täze zatlar däl, eýsem köpçülik tarapyndan barlanan, öz-özüni maslahat berýän modeller hem bar. &quot;Siziň islegleriňiz - biziň işimiz&quot; - Ak Yol Computers dükanynyň şygary.','2022-07-05 13:03:11','2022-07-05 08:03:11',1,0,NULL,0,NULL),(24,'Bereket Kompýuter',3,'Aşgabat 30-njy mikroraýon, Magtymguly şaýoly, 64','63 540042','bereketkompyuter@gmail.com','www.magazin.bereket-tm.com','http://tmshop.com.tm/api/images/1657008565628_447_Fp9gOqV.jpg','Ýakyn platformasy - harytlary we hyzmatlary hödürleýän guramalaryň giňişleýin maglumatlaryna we olaryň hakyky myhmanlarynyň teswirlerine we bahalaryna esaslanyp, ulanyjylaryň öz göwnüne laýyk guramalary tapmaga kömek edýär.\r\n\r\nŞeýle hem, yzarlaýan ulanyjylarynyň teswirlerinden we guramalarynyň arzanladyşyklaryndan habardar edýär.','2022-07-05 13:09:25','2022-07-05 08:09:25',1,0,NULL,0,NULL),(25,'Ussat Inžener',3,'Aşgabat şäheri, 41, G.Kulyýew (2127)','751200','info@ussat.tm','ussat.com','http://tmshop.com.tm/api/images/1657009026866_db1294931e00378930343e6d37c19468.jpeg','Uzak ýyllaryň dowamynda Kärhanamyz Buýrujynyň öňündäki borçlaryny wagtynda we doly ýerine ýetirýändigini subut etdi, bu bolsa, adatça, uzak möhletli hyzmatdaşlyga alyp barýar.','2022-07-05 13:17:06','2022-07-05 08:17:06',1,0,NULL,0,NULL),(26,'aaaa',1,'a','+99365000000','aaa@gmail.com','aaa.com','http://tmshop.com.tm/api/images/1657105037705_Pikche3St0-1024x662.jpg','aaa','2022-07-06 15:57:17','2022-07-06 10:57:17',1,0,NULL,0,NULL);
/*!40000 ALTER TABLE `service_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_videos`
--

DROP TABLE IF EXISTS `service_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_videos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_shop_id` int NOT NULL,
  `video` varchar(250) NOT NULL,
  `fon_photo` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `nameRU` varchar(250) DEFAULT NULL,
  `descriptionRU` text,
  `like_count` int NOT NULL,
  `goren_sany` int DEFAULT NULL,
  `created_date` date NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_videos`
--

LOCK TABLES `service_videos` WRITE;
/*!40000 ALTER TABLE `service_videos` DISABLE KEYS */;
INSERT INTO `service_videos` VALUES (1,12,'uploads/videos/1651857039137.mp4','uploads/videoImages/1651857039139.jpg','Test uçin','Bu wideo test uçin goshulan','Dlýa testa','desçtiption for test',0,0,'2022-05-06',0,0,NULL),(2,12,'uploads/videos/1651857107343.mp4','uploads/videoImages/1651857107344.png','Komp','Bu wideo test uçin goshulan','Dlýa testa ru','desçtiption for test ru',0,0,'2022-05-06',0,0,NULL),(6,14,'uploads/videos/1657289057554.mp4','uploads/videoImages/1657289057498.jpg','ghhhh','hhhhh','hhhhh','hhhhh',0,0,'2022-07-08',0,0,NULL),(8,14,'uploads/videos/1657612348198.mp4','uploads/videoImages/1657612348158.jpg','ncnc','bfjdjd','мьаь аьал','клкл алклк алала',0,0,'2022-07-12',0,0,NULL);
/*!40000 ALTER TABLE `service_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_center_id` int DEFAULT NULL,
  `Restoran` tinyint(1) DEFAULT '0',
  `shop_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phones` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `address_id` int NOT NULL,
  `salgy` varchar(250) NOT NULL,
  `photo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_data` date NOT NULL,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `vip` tinyint(1) NOT NULL DEFAULT '0',
  `brend` tinyint(1) NOT NULL DEFAULT '0',
  `dostawka` tinyint(1) NOT NULL DEFAULT '1',
  `mugt_dostawka` tinyint(1) NOT NULL DEFAULT '0',
  `minimal_zakaz` int DEFAULT NULL,
  `dostawka_tolegi` int DEFAULT NULL,
  `gelip_almak` tinyint(1) NOT NULL DEFAULT '1',
  `kart_toleg` tinyint(1) NOT NULL DEFAULT '0',
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `modified` tinyint(1) NOT NULL DEFAULT '0',
  `descriptionRU` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shortDescription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shortDescriptionRU` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_name` (`shop_name`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (8,8,1,'Altyn açar','Altyn acar turkmenistanda meshgurlar restoranlarynyn biridir','+99365431571 +99361856271',1,'','http://tmshop.com.tm/api/images/1653220044340_readitstore-logo-1548316330.jpg','2022-05-22','2022-06-08 14:14:20','alty naçar@gmail.çom','http://altynachar.com.tm/',0,0,0,0,NULL,NULL,1,0,1,0,'','',''),(20,NULL,0,'hdhdhd','hshshjsn','65431571',5,'','http://shop.com.tm:8080/uploads/shop/1655823726342.jpg','2022-06-21','2022-06-21 15:02:06','jasurbek1303@gmail.com ','wjjw.com',0,0,1,1,0,0,1,1,0,0,'','hdhdh',''),(21,NULL,0,'SaZenan','','61907121 6100000',4,'','http://shop.com.tm:8080/uploads/shop/1655826172584.jpg','2022-06-21','2022-06-21 15:42:52','','',0,0,1,0,0,15,1,1,0,0,'','Zenanlar ucin',''),(22,NULL,0,'Defakto','','',6,'','http://shop.com.tm:8080/uploads/shop/1655907096439.jpg','2022-06-22','2022-06-22 14:11:36','jas13.developer@gmail.com',NULL,0,0,1,0,NULL,NULL,1,0,0,0,'','',''),(24,NULL,0,'Defakto22','','',6,'','http://shop.com.tm:8080/uploads/shop/1655972574033.jpg','2022-06-23','2022-07-06 10:53:45','jas13.developer@gmail.com',NULL,0,0,1,0,NULL,NULL,1,0,1,0,'','',''),(25,NULL,0,'Atash','','62456584',2,'','http://shop.com.tm:8080/uploads/shop/1658226937779.jpg','2022-06-24','2022-07-20 10:31:55','','https://ynamdar.com',1,0,1,0,NULL,15,1,0,1,0,'Atashyn dukany','ghkkk',''),(26,NULL,0,'Jemal','','63012939',1,'address','http://tmshop.com.tm/api/images/1657973185860_jemal.png','2022-06-27','2022-07-16 12:06:25','Sowbetow.j@gmail.com',NULL,1,0,1,0,NULL,NULL,1,0,1,0,'','Egin eşik dükany','Магазин одежды'),(27,NULL,0,'sdfsdf','sdfasfd','123123',3,'address','http://tmshop.com.tm/api/images/1656424216288_image_2022_06_27T16_04_11_552Z.png','2022-06-28','2022-07-06 10:53:43','123123','sdfsdfs',0,0,0,0,12312,12312,1,0,1,0,'asdfsda','sdasdfa','sadfsd'),(29,NULL,0,'Nur Ýüpek','«Nur ýüpek» matalar dükanynyň aksiýa çäresi degişli önümleriň hemmesi ýa-da bir bölegi satylanyndan soň, islendik wagtda tamamlanyp bilner.\r\n\r\nMüşderiler «Nur ýüpek» matalar dükanyndan gülýüpekleriň dürli görnüşlerinden öz isleglerine görä, bir reňkli, şeýle-de gülli görnüşlerini saýlap bilerler.\r\n\r\n«Nur ýüpek» matalar dükanynyň ähli matalary diňe önümleriniň ýokary hilliligine kepil geçýän ynamdar öndürijilerden – Türkiýeden we Hytaýdan getirilýär. Bu ýurtlarda öndürilen mata önümleri uzak wagtlap bir durkuny saklaýar we müşderileriň hemişelik hyrydaryna öwrülýär.','62572442',11,'address','http://tmshop.com.tm/api/images/1657106572822_2541122328.png','2022-07-06','2022-07-08 12:58:55','nuryupek@gmail.com','nuryupek.com',1,0,1,0,15,20,1,0,1,0,'Акция Магазина Легких Шелковых Тканей может быть завершена в любое время после продажи всех или части сопутствующих товаров.\r\n\r\nПокупатели могут выбрать в магазине легких шелковых тканей различные виды кружев, а также один цвет или цветочный узор.\r\n\r\nВсе ткани магазина шелковых тканей «Нур» импортируются только от надежных производителей, гарантирующих высокое качество своей продукции – из Турции и Китая. Тканевые изделия, произведенные в этих странах, уже давно находятся в постоянном движении и стали постоянным спросом покупателей.','Matalar dükanyndan ini 2,20 metr bolan on kişilik mata satyn alan müşderä sowgat hökmünde bir kişilik mata berler.','Десятиместное полотно шириной 2,20 метра из цеха тканей будет отдано цельнокроеное полотно в подарок покупателю.'),(30,NULL,0,'BEDEW','Gurlyşyk harytlary eliňiziň aýasynda....','+99362657222',10,'address','http://tmshop.com.tm/api/images/1657106232301_46450a88c06f269bae077fc40db3bce5.jfif','2022-07-06','2022-07-06 11:17:12','info@bedew.com.tm','Bedew.com.tm',0,0,1,0,10,20,0,0,1,0,'Строительные материалы у вас под рукой.','Gurlyşyk harytlary eliňiziň aýasynda....','Строительные материалы у вас под рукой.'),(32,NULL,0,'Gala Dokma toplum','Türkmenistanyň Gahrymany Atamyrat Nyýazow adyndaky dokma toplumy Türkmenistanda ilkinji gezek 21.08.1995 senesinde Türkmenistanyň Ykdysadyýet we Maliýe ministrligi tarapyndan ýapyk görnüşli paýdarlar jemgyýeti guramaçylyk-hukuk görnüşinde hasaba alyndy.','62472222',10,'address','http://tmshop.com.tm/api/images/1657107481319_Без названия.png','2022-07-06','2022-07-06 11:38:01','gala@gmail.com','gala.com',0,1,0,0,10,10,0,0,1,0,'Текстильный комбинат имени Героя Туркменистана Атамурата Ниязова впервые зарегистрирован в Туркменистане 21.08.1995 года Министерством экономики и финансов Туркменистана в форме акционерного общества закрытого типа.','TÜRKMENISTANYŇ DOKMA SENAGATY MINISTRLIGI','МИНИСТЕРСТВО ТЕКСТИЛЬНОЙ ПРОМЫШЛЕННОСТИ ТУРКМЕНИСТАНА'),(33,NULL,0,'safwerew','asdf','123',1,'address','http://tmshop.com.tm/api/images/1657202430065_image_2022_07_06T09_49_45_977Z.png','2022-07-07','2022-07-07 14:00:30',NULL,NULL,0,0,0,0,NULL,NULL,1,0,0,0,'','sadf',''),(34,NULL,1,'yeheth','','65431571',6,'address','http://tmshop.com.tm/api/images/1657214332730_FGFWc7pK4Cea2J7d.jpeg','2022-07-07','2022-07-07 17:18:52',NULL,NULL,0,0,0,0,NULL,NULL,1,0,0,0,'','rtyrtytry',''),(35,NULL,0,'Mi Market','','64033084',4,'address','http://tmshop.com.tm/api/images/1657729748423_1657724649842.jpg','2022-07-13','2022-07-13 16:29:08',NULL,NULL,1,0,1,0,15,20,1,0,1,0,'','Elektronika internet dükan',''),(36,NULL,0,'dukan','','65431571',4,'','http://shop.com.tm:8080/uploads/shop/1658215241317.jpg','2022-07-19','2022-07-19 07:20:41','','',0,0,1,0,0,20,0,0,0,0,'','dukan',''),(37,NULL,0,'dukana','','65431571',4,'','http://shop.com.tm:8080/uploads/shop/1658215308925.jpg','2022-07-19','2022-07-19 07:21:48','','',0,0,1,0,0,20,0,0,0,0,'','dukan','');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_banner`
--

DROP TABLE IF EXISTS `shop_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int DEFAULT '0',
  `photo` varchar(250) DEFAULT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `modified` tinyint(1) DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text,
  `is_product` tinyint NOT NULL DEFAULT '0',
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_banner`
--

LOCK TABLES `shop_banner` WRITE;
/*!40000 ALTER TABLE `shop_banner` DISABLE KEYS */;
INSERT INTO `shop_banner` VALUES (3,2,'http://shop.com.tm:8080/uploads/bannerShop/1652632263821.jpg',0,0,0,'',0,0),(4,2,'http://shop.com.tm:8080/uploads/bannerShop/1647405648520.jpg',0,0,0,'',0,27),(6,2,'http://shop.com.tm:8080/uploads/bannerShop/1647405667364.jpg',0,0,0,'',0,0),(82,2,'http://shop.com.tm:8080/uploads/bannerShop/1648833508108.jpg',0,0,0,'',0,0),(83,1,'http://shop.com.tm:8080/uploads/bannerShop/1652530886104.jpg',0,0,0,'',0,0),(93,1,'http://shop.com.tm:8080/uploads/bannerShop/1652702307212.jpg',0,0,0,'',1,30),(94,30,'http://shop.com.tm:8080/uploads/bannerShop/1656065898857.png',0,0,0,'',0,0),(95,30,'http://shop.com.tm:8080/uploads/bannerShop/1656066827249.jpg',0,0,0,'',0,0),(96,25,'http://shop.com.tm:8080/uploads/bannerShop/1656066851616.jpg',0,0,0,'',0,0),(103,25,'http://shop.com.tm:8080/uploads/bannerShop/1656137588571.jpg',0,0,0,'',1,101),(104,25,'http://shop.com.tm:8080/uploads/bannerShop/1656137597772.jpg',0,0,0,'',1,101),(105,25,'http://shop.com.tm:8080/uploads/bannerShop/1656137598062.jpg',0,0,0,'',1,101),(106,25,'http://shop.com.tm:8080/uploads/bannerShop/1656137598242.jpg',0,0,0,'',1,101),(107,25,'http://shop.com.tm:8080/uploads/bannerShop/1656137598496.jpg',0,0,0,'',1,101),(108,25,'http://shop.com.tm:8080/uploads/bannerShop/1656137598690.jpg',0,0,0,'',1,101),(110,26,'http://shop.com.tm:8080/uploads/bannerShop/1657277282934.jpg',0,0,0,'',0,0),(111,26,'http://shop.com.tm:8080/uploads/bannerShop/1657277326460.jpg',0,0,0,'',0,0),(112,26,'http://shop.com.tm:8080/uploads/bannerShop/1657277598640.jpg',0,0,0,'',0,0),(114,35,'http://shop.com.tm:8080/uploads/bannerShop/1657729016350.jpg',0,0,0,'',0,0),(115,35,'http://shop.com.tm:8080/uploads/bannerShop/1657729192035.jpg',0,0,0,'',0,0),(116,35,'http://shop.com.tm:8080/uploads/bannerShop/1657730509939.jpg',0,0,0,'',0,0);
/*!40000 ALTER TABLE `shop_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_bolum`
--

DROP TABLE IF EXISTS `shop_bolum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_bolum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bolum_id` int NOT NULL,
  `shop_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_bolum`
--

LOCK TABLES `shop_bolum` WRITE;
/*!40000 ALTER TABLE `shop_bolum` DISABLE KEYS */;
INSERT INTO `shop_bolum` VALUES (15,3,4),(22,1,2),(23,3,2),(24,1,5),(26,3,5),(27,1,12),(28,2,8),(30,7,1),(31,3,25),(32,3,26),(34,6,25),(36,3,11),(40,1,25),(41,11,25),(42,3,29),(43,6,30),(44,6,31),(45,3,32),(47,11,35),(48,3,36),(49,3,37);
/*!40000 ALTER TABLE `shop_bolum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `katalog_id` int NOT NULL,
  `category_id` int NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (1,2,20,20,NULL),(2,2,19,16,NULL),(3,2,12,18,NULL),(5,2,19,16,NULL),(6,2,19,16,NULL),(7,2,19,16,NULL),(9,2,19,16,NULL),(10,2,21,21,NULL),(17,1,21,22,NULL),(18,1,21,23,NULL),(19,2,21,23,NULL),(26,1,12,17,NULL),(28,1,13,15,NULL),(30,2,14,19,NULL),(31,1,16,12,NULL),(32,4,21,21,NULL),(33,4,25,24,NULL),(44,2,25,24,NULL),(45,2,25,25,NULL),(46,2,27,26,NULL),(47,1,25,24,NULL),(50,8,49,28,NULL),(51,8,49,30,NULL),(52,25,25,24,NULL),(53,25,27,26,NULL),(55,25,48,27,NULL),(56,25,25,25,NULL),(57,26,27,26,NULL),(58,26,53,41,NULL),(59,26,54,42,NULL),(60,25,25,55,NULL),(61,26,27,57,NULL),(64,25,72,107,NULL),(65,25,74,101,NULL),(66,25,90,138,NULL),(67,25,121,319,NULL),(68,26,27,58,NULL),(69,26,27,80,NULL),(70,26,27,92,NULL),(71,35,129,396,NULL),(72,35,127,336,NULL),(73,35,129,413,NULL),(74,25,27,58,NULL);
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_center`
--

DROP TABLE IF EXISTS `shop_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_center` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_center_name` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_general_ci NOT NULL,
  `address` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
  `photo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_center`
--

LOCK TABLES `shop_center` WRITE;
/*!40000 ALTER TABLE `shop_center` DISABLE KEYS */;
INSERT INTO `shop_center` VALUES (5,'ady','salgy','http://tmshop.com.tm/api/images/1649132896161_919-200x300.jpg'),(8,'Sowda Merkez','Salgylar we beylekiler','http://tmshop.com.tm/api/images/1651670420687_tux-linux-4k-2560x1080.jpg'),(9,'Sowda Merkez','Salgylar we beylekiler','http://tmshop.com.tm/api/images/1651670438831_tux-linux-4k-2560x1080.jpg'),(14,'Berkarar söwda we dynç-alyş merkerzi','10 ýyl abadançylyk köçesi','http://tmshop.com.tm/api/images/1657103127945_97eaef2s-960.jpg');
/*!40000 ALTER TABLE `shop_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_katalog`
--

DROP TABLE IF EXISTS `shop_katalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_katalog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `katalog_id` int NOT NULL,
  `shop_katalog_photo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_katalog`
--

LOCK TABLES `shop_katalog` WRITE;
/*!40000 ALTER TABLE `shop_katalog` DISABLE KEYS */;
INSERT INTO `shop_katalog` VALUES (1,2,20,NULL),(2,2,19,NULL),(4,2,21,NULL),(8,3,15,NULL),(9,3,16,NULL),(13,2,12,NULL),(15,3,13,NULL),(17,1,14,NULL),(19,1,12,NULL),(20,1,13,NULL),(24,1,16,NULL),(25,1,17,NULL),(26,4,21,NULL),(51,2,23,NULL),(52,2,24,NULL),(53,2,25,NULL),(54,2,27,NULL),(55,2,28,NULL),(56,5,29,NULL),(57,5,25,NULL),(58,1,25,'http://shop.com.tm:8080/uploads/katalogs/1651858887841.JPG'),(59,12,35,NULL),(64,8,49,'http://tmshop.com.tm/api/images/1653837641594_restoran.jpg'),(65,25,25,'http://tmshop.com.tm/api/images/1651067601579_11471dfe4d8fac37b764d3c010b22719.jpg'),(66,25,27,'http://tmshop.com.tm/api/images/1651067625753_bcb6e5decd0f7d7599a28ce4601841566f1b90b5_original.jpeg'),(68,25,48,'http://tmshop.com.tm/api/images/1653824470788_cute-cartoon-fashion-kids-couple-vector-13968723.jpg'),(69,26,27,'http://tmshop.com.tm/api/images/1651067625753_bcb6e5decd0f7d7599a28ce4601841566f1b90b5_original.jpeg'),(70,26,53,'http://tmshop.com.tm/api/images/1656488508682_sofa3.jpg'),(71,26,54,'http://tmshop.com.tm/api/images/1656491288262_kitchen.jpg'),(74,11,25,NULL),(79,25,72,'http://tmshop.com.tm/api/images/1656749039882_29-06422-005-800-1-300x300.jpg'),(80,25,74,'http://tmshop.com.tm/api/images/1656597645899_rubashki-dlya-devochek-157.jpg'),(81,25,90,'http://tmshop.com.tm/api/images/1656674804029_59a6df92434ff-full.jpg'),(83,25,121,'http://tmshop.com.tm/api/images/1656932428487_original.jpg'),(84,34,39,NULL),(85,35,129,'http://tmshop.com.tm/api/images/1657180033718_i0v1ofs6uxhdspm7mdy5.jpg'),(86,35,127,'http://tmshop.com.tm/api/images/1657109593349_belkin_f8j183_9.jpg');
/*!40000 ALTER TABLE `shop_katalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_lenta`
--

DROP TABLE IF EXISTS `shop_lenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_lenta` (
  `shop_id` int NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
  `surat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` date NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `modified` tinyint(1) NOT NULL DEFAULT '0',
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `esasy` tinyint(1) NOT NULL DEFAULT '0',
  `seen` int NOT NULL DEFAULT '0',
  `like_count` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_lenta`
--

LOCK TABLES `shop_lenta` WRITE;
/*!40000 ALTER TABLE `shop_lenta` DISABLE KEYS */;
INSERT INTO `shop_lenta` VALUES (6,'THis is updated lenta','http://shop.com.tm:8080/uploads/lenta/1651549161232.JPG',0,'2022-05-03 03:39:21','2022-05-29',0,1,1,'uytgan ady',0,0,0),(6,'sdfdsfsfd','http://shop.com.tm:8080/uploads/lenta/1651549249251.JPG',0,'2022-05-03 03:40:49','2022-05-03',1,1,2,NULL,0,0,0),(1,'süýji datly pizza,iýmeseň armanda galarsyň','http://shop.com.tm:8080/uploads/lenta/1653831035011.JPG',95,'2022-05-25 15:32:58','2022-05-29',0,1,15,'Pizza',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653492794622.jpg',0,'2022-05-25 15:33:14','2022-05-25',1,1,16,'1653492794747',0,0,0),(1,'süýji datly pizza,iýmeseň armanda galarsyň','http://shop.com.tm:8080/uploads/lenta/1653492816898.jpg',95,'2022-05-25 15:33:36','2022-05-27',0,1,17,'Pizza',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653492835295.jpg',0,'2022-05-25 15:33:55','2022-05-25',1,1,18,'1653492835315',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653492869782.jpg',0,'2022-05-25 15:34:29','2022-05-25',1,1,19,'1653492869803',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653492892635.jpg',0,'2022-05-25 15:34:52','2022-05-25',1,1,20,'1653492892660',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653492912838.jpg',0,'2022-05-25 15:35:12','2022-05-25',1,1,21,'1653492912853',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653492945331.jpg',0,'2022-05-25 15:35:45','2022-05-25',1,1,23,'1653492945356',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653492961938.webp',0,'2022-05-25 15:36:02','2022-05-25',1,1,24,'1653492962063',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653492981087.png',0,'2022-05-25 15:36:21','2022-05-25',1,1,25,'1653492981142',0,0,0),(1,'Kompyuter hyzmatary','http://shop.com.tm:8080/uploads/lenta/1653493009958.jpg',NULL,'2022-05-25 15:36:49','2022-05-29',0,1,27,'kompyuter',0,0,0),(1,'Weosiped satyn alyn','http://shop.com.tm:8080/uploads/lenta/1653493024781.jpg',NULL,'2022-05-25 15:37:04','2022-05-29',0,1,28,'Welik',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653493040771.png',0,'2022-05-25 15:37:20','2022-05-25',1,1,29,'1653493040830',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653493057253.png',0,'2022-05-25 15:37:37','2022-05-25',1,1,30,'1653493057262',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653493123109.png',0,'2022-05-25 15:38:43','2022-05-25',1,1,31,'1653493123161',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653493143199.jpg',0,'2022-05-25 15:39:03','2022-05-25',1,1,32,'1653493143219',0,0,0),(1,'description','http://shop.com.tm:8080/uploads/lenta/1653494038285.jpg',0,'2022-05-25 15:53:58','2022-05-25',1,1,33,'kowush',0,0,0),(1,'Doly beyany 1','http://shop.com.tm:8080/uploads/lenta/1653830308960.jpg',0,'2022-05-29 13:18:29','2022-05-29',1,1,35,'beyany 1',0,0,0),(1,'Aşyrbaýew','http://shop.com.tm:8080/uploads/lenta/1653830403592.jpg',0,'2022-05-29 13:20:03','2022-05-29',1,1,36,'Jasurbek',0,0,0),(1,'hjjjj','http://shop.com.tm:8080/uploads/lenta/1653830434277.jpg',0,'2022-05-29 13:20:34','2022-05-29',1,1,37,'hjhhh',0,0,0),(1,'salam','http://shop.com.tm:8080/uploads/lenta/1653830460544.jpg',0,'2022-05-29 13:21:00','2022-05-29',1,1,38,'giggle',0,0,0),(1,'you can also','http://shop.com.tm:8080/uploads/lenta/1653830477301.jpg',0,'2022-05-29 13:21:17','2022-05-29',1,1,39,'hjjhj',0,0,0),(1,'just to let you know','http://shop.com.tm:8080/uploads/lenta/1653830511515.jpg',0,'2022-05-29 13:21:51','2022-05-29',1,1,40,'hjjkkk',0,0,0),(1,'life like the game','http://shop.com.tm:8080/uploads/lenta/1653830595037.jpg',0,'2022-05-29 13:23:15','2022-05-29',1,1,41,'life',0,0,0),(1,'and keyboard','http://shop.com.tm:8080/uploads/lenta/1653830632042.jpg',0,'2022-05-29 13:23:52','2022-05-29',1,1,42,'artificial intelligence',0,0,0),(1,'Engineers create artificial intelligence','http://shop.com.tm:8080/uploads/lenta/1653830671169.jpg',0,'2022-05-29 13:24:31','2022-05-29',1,1,43,'Engineers',0,0,0),(1,'ai description','http://shop.com.tm:8080/uploads/lenta/1653830744907.jpg',0,'2022-05-29 13:25:44','2022-05-29',1,1,44,'artificial intelligence',0,0,0),(1,'repeat','http://shop.com.tm:8080/uploads/lenta/1653830790441.jpg',0,'2022-05-29 13:26:30','2022-05-29',1,1,45,'Programmers life',0,0,0),(1,'new batnik','http://shop.com.tm:8080/uploads/lenta/1653830824492.jpg',0,'2022-05-29 13:27:04','2022-05-29',1,1,46,'batnik',0,0,0),(1,'taze renk','http://shop.com.tm:8080/uploads/lenta/1653830858889.jpg',0,'2022-05-29 13:27:38','2022-05-29',1,1,47,'batnik 2',0,0,0),(1,'T-shirt','http://shop.com.tm:8080/uploads/lenta/1653850392273.jpg',0,'2022-05-29 18:53:12','2022-05-29',1,1,48,'Jasurs t-shirt',0,0,0),(25,'yyuu','http://shop.com.tm:8080/uploads/lenta/1656060384249.jpg',0,'2022-06-24 08:46:24','2022-06-24',1,1,69,'ggg',0,0,0),(25,'mashyn','http://shop.com.tm:8080/uploads/lenta/1656061544954.jpg',0,'2022-06-24 09:05:44','2022-06-24',1,1,70,'mashyn',0,0,0),(25,'gggg','http://shop.com.tm:8080/uploads/lenta/1656073182407.jpg',101,'2022-06-24 12:19:42','2022-06-24',1,1,71,'hhh',0,0,0),(25,'hbhhh','http://shop.com.tm:8080/uploads/lenta/1656074075952.jpg',102,'2022-06-24 12:34:36','2022-06-24',1,1,72,'iujjj',0,0,0),(25,'hhhj','http://shop.com.tm:8080/uploads/lenta/1656074382231.jpg',106,'2022-06-24 12:39:42','2022-06-24',1,1,73,'yhj',0,0,0),(1,'sdfdsfsfd','http://shop.com.tm:8080/uploads/lenta/1656074546301.JPG',0,'2022-06-24 12:42:26','2022-06-24',1,1,74,'name of lenta',0,0,0),(1,'sdfdsfsfd','http://shop.com.tm:8080/uploads/lenta/1656074575728.JPG',0,'2022-06-24 12:42:55','2022-06-24',1,1,75,'name of lenta',0,0,0),(25,'sdfdsfsfd','http://shop.com.tm:8080/uploads/lenta/1656074603711.jpg',0,'2022-06-24 12:43:23','2022-06-24',1,1,76,'name of lenta',0,0,0),(1,'sdfdsfsfd','http://shop.com.tm:8080/uploads/lenta/1656074953062.JPG',0,'2022-06-24 12:49:13','2022-06-24',0,1,77,'name of lenta',0,0,0),(1,'sdfdsfsfd','http://shop.com.tm:8080/uploads/lenta/1656074976152.JPG',0,'2022-06-24 12:49:36','2022-06-24',1,1,78,'name of lenta',0,0,0),(25,'hbh','http://shop.com.tm:8080/uploads/lenta/1656322419112.jpg',0,'2022-06-27 09:33:39','2022-06-27',0,1,79,'hhh',0,0,0),(26,'yyu','http://shop.com.tm:8080/uploads/lenta/1657268716816.jpg',158,'2022-07-08 08:25:16','2022-07-08',1,1,80,'ghh',0,0,0),(26,'Durli gornusli,islendik renkde amatly bahadan dowrebap zenan koynekleri','http://shop.com.tm:8080/uploads/lenta/1657271136998.jpg',0,'2022-07-08 09:05:37','2022-07-08',1,1,81,'Zenan koynekleri',0,0,1),(26,'Dowrebap zenan koynekleri','http://shop.com.tm:8080/uploads/lenta/1657609448166.jpg',0,'2022-07-12 07:04:08','2022-07-12',1,1,82,'Zenan koynek',0,0,1),(35,'Bluetooth naushnik','http://shop.com.tm:8080/uploads/lenta/1657728428260.jpg',0,'2022-07-13 16:07:08','2022-07-13',0,1,84,'Earbuds 2',0,0,0),(25,'jjjhh','http://shop.com.tm:8080/uploads/lenta/1657810596832.jpg',0,'2022-07-14 14:56:36','2022-07-14',0,1,86,'hhhhh',0,0,0),(25,'jjjhh','http://shop.com.tm:8080/uploads/lenta/1657810614713.jpg',0,'2022-07-14 14:56:54','2022-07-14',0,1,87,'hhhhh',0,0,0),(25,'jjjhh','http://shop.com.tm:8080/uploads/lenta/1657810675494.jpg',0,'2022-07-14 14:57:55','2022-07-14',0,1,88,'hhhhh',0,0,0),(25,'jjjhh','http://shop.com.tm:8080/uploads/lenta/1657810728932.jpg',0,'2022-07-14 14:58:48','2022-07-14',0,1,89,'hhhhh',0,0,0),(26,'djdjdjjdndkdkdkdjx','http://shop.com.tm:8080/uploads/lenta/1657972723695.jpg',0,'2022-07-16 11:58:43','2022-07-16',0,1,90,'Zenan egin-esikleri',0,0,1);
/*!40000 ALTER TABLE `shop_lenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_service_tokens`
--

DROP TABLE IF EXISTS `shop_service_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_service_tokens` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL DEFAULT '0',
  `service_shop_id` int NOT NULL DEFAULT '0',
  `isRestoran` tinyint(1) NOT NULL DEFAULT '0',
  `token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_service_tokens`
--

LOCK TABLES `shop_service_tokens` WRITE;
/*!40000 ALTER TABLE `shop_service_tokens` DISABLE KEYS */;
INSERT INTO `shop_service_tokens` VALUES (23,26,0,0,'dn7NI4V4QQa2L1g5t5QU9a:APA91bGqLdQ6h40q4SoiuX10xlNbwJHS_NxQL0hyP7pZcfhsEeUGp2Z0NAkJVXIpgADeYtoh3Mv0ORZSNJtY3rU02LbuxRjkWNAGfKXrNzbXK6-f7ZHzNi4l1cco2ETEJkEJdCQ9OXcs'),(30,26,0,0,'dn7NI4V4QQa2L1g5t5QU9a:APA91bGqLdQ6h40q4SoiuX10xlNbwJHS_NxQL0hyP7pZcfhsEeUGp2Z0NAkJVXIpgADeYtoh3Mv0ORZSNJtY3rU02LbuxRjkWNAGfKXrNzbXK6-f7ZHzNi4l1cco2ETEJkEJdCQ9OXcs'),(49,25,0,0,'e_I4ZaigSSSCTkiyfx6hcQ:APA91bFUat37fIgVEvbWECFXXXjJtIw8HrWpIroDx-ZmtCqCm6lhMwtZb2EQzuchr6Pnc_HNQitgZREP6VjZR4IoPaJH2x7lw_UHM0qmd9WGhCqbzcbJj4cQXVv8UugP85DhO3B6YMgO'),(82,26,0,0,'cmdIV2goRmGuTFIgUkYZkY:APA91bE8ISI-g8IL40QPVIlte5FkyrZ0CL93TugP-jmrIrvRNRkarGi_Q1LNxnjFG7bT0hdbmJxPUD_VYt6xnSPPtHNw-9LU0GAuYvf3SMBMG2B5MtknKuDP2-gopyfCZ5T7oef3t9Fo'),(87,35,0,0,'fbTnPet2Ro-ZI-usWfZcnB:APA91bHClLysb5Re-7-orJOg6A2-vRdLoRoq9bXqcBku_DZoAeWWnBaG39LR2sg1HX3977AfRz6DFi54FVXZguAgfMkx-6ZrodOxbPn3vsOLKrGDYq1fCmF5VOVk4vKpB1Be441KZXSI'),(93,26,0,0,'diFAkPS1QraWkTNHpCDMtE:APA91bGmk6m7_8x7X1M3n016oEOLPjpFO_SNYReTSnScPkbP5r7BmgX2IUgdDTMZ-XFkZAKSqAxSaf3ezTVXUGNmcj91ok42iLxEfiD0TdnWCDCLhLSvTq21ZOMgVG3TMnk0zKzE31Ws'),(97,26,0,0,'feyHKKO_QCyemRcNTjakAW:APA91bHNT6AVFzSc9wtXS8PEa1coYn8ZpDnZGZP1L9--Agdz87RwRXdm87dBqJQ1P46U1SC1xLwBwY2F53Z1AZGFLjGXnjS4AjlCWR4Grbqccr1ed1nxEKwFWD59ELgivhV9Wywi45on'),(100,25,0,0,'cf1u7jQFRU2jKSgmMRIcOC:APA91bHSiKt1SFqzyBfb_SZXM2UD_1q_yjmeAUXUtWtEg_PMyKj8fcpvRd95bn4_N37cCL2q_vBQOnA_QLzE9IM-2aXZ8tdNOEA0awb2InJcHtuH0QGJ90Bc2Fe_jgq-0eyrieLRm-kT'),(111,26,0,0,'erFkeNxgTei4mg4KytpZSz:APA91bFDQQLZGkm4ZWKq4nQ28T-AraFor9qVs_PETMPqV5RgTFbNSw4GROENZ959J6SSqhTpo0HGfxdcl-Cs1PAoT582MBG3-kp2hZICaTUHBqOo9zkWbzRYJKElBAeEqnnqOnW8BgYY'),(112,26,0,0,'cuvciv6dQ8-7LzJBmjvZ3L:APA91bHRxtveVmvUfgXcIaO5yqKgxQ5ljZmwpA0oWlsHb08cLkJmKpAlZ4uuq0Odn5Hgrqx3hwZgm36nJiF8vWf0cq8dOKLQKBMUYiSatWv_8lwytuR7IeXdGmD06AAhqz6-npCEM2wB'),(113,26,0,0,'e8qrU4ZZT426k0WBSqMOKo:APA91bEbzGQ2BbwhHCV2M5ujBqtdK4904nWvb0Nzl8MJvli8TqefE--e8Pl-UBee0HDOUOFuC9j9c3O4S75h-Y6nQC1rjpozW-Wuh_LOtdKzCg81k36JEETBYRB5VK4wTjPicaFhjM5J'),(114,26,0,0,'fERAYbrKQhmVhiP_Hf52bK:APA91bFOWItqZ-LXWbcBXxzjyKXjP9sYKFTqE154e1U-BcG96iFg1MJq9WolETCqfGyh7fP9or40q3GZEb2MNOH7lPnItPWUwjf3U3cFvVvhpfqpCdUroMAMfpL6FW2sNol72mUNP90W'),(115,37,0,0,'e8qrU4ZZT426k0WBSqMOKo:APA91bEbzGQ2BbwhHCV2M5ujBqtdK4904nWvb0Nzl8MJvli8TqefE--e8Pl-UBee0HDOUOFuC9j9c3O4S75h-Y6nQC1rjpozW-Wuh_LOtdKzCg81k36JEETBYRB5VK4wTjPicaFhjM5J'),(116,37,0,0,'e8qrU4ZZT426k0WBSqMOKo:APA91bEbzGQ2BbwhHCV2M5ujBqtdK4904nWvb0Nzl8MJvli8TqefE--e8Pl-UBee0HDOUOFuC9j9c3O4S75h-Y6nQC1rjpozW-Wuh_LOtdKzCg81k36JEETBYRB5VK4wTjPicaFhjM5J'),(117,26,0,0,'dSoZ2M2ZRDKAr8qq7H9PBH:APA91bF2X60-P6eTQlNuuTs0aPQ3BX4ZNBe5zVYDPXnKHhedIxdQ5kxT9SV_mML5ZqtxPFofs0aRtQM3JIdprmRXKyd1E8gD0HB-bvtBHORNFl8dBMV2TGxCLzYy2M-29US9U88zHuah'),(118,26,0,0,'e8qrU4ZZT426k0WBSqMOKo:APA91bEbzGQ2BbwhHCV2M5ujBqtdK4904nWvb0Nzl8MJvli8TqefE--e8Pl-UBee0HDOUOFuC9j9c3O4S75h-Y6nQC1rjpozW-Wuh_LOtdKzCg81k36JEETBYRB5VK4wTjPicaFhjM5J'),(119,26,0,0,'fGusR71CQ1iZ0kiKe0UlZH:APA91bH_cPCiDk9K7NLtIcbrzpBRrmCVCJNsy78sIPdS3gaC4jHjS0U_hedfWN06ZAOSe965643HLtHSlNTm9fS-aYwlEweCPKfUG-ys63C2mW4GErWa7k2yesKF_WiJEuI1ViWDNes7'),(120,25,0,0,'fOJEYnBzQPqyatP2HfzyB1:APA91bEk0L4mUmJRK3LfqLgGXEuXbQlkmXnJMRWr4KY80Bip30guwlYl6Vat_DkSQCIWD-B89mkVoFFWiJJhjRXN0c1n37-EyW3zUPuYpgTryqjHhT3q_BE8RIVYa3eRcUAuRxLKJtvE'),(121,25,0,0,'fvmtV31tRuyqXEEkiF4UCl:APA91bGAo7ET2kkTByuRp-Jv3i4S4x0p1mwo6e7Q8NfqXVFciWMHjlKAzOFvRODXfO_bO4rJ0Y8mO8mdc_nSb5z_1ck96FGuN-LzAEg5JgdlYxq0fl7vnD7sLdXyzTeYE1-YtJLAnQ0N');
/*!40000 ALTER TABLE `shop_service_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_subcategory`
--

DROP TABLE IF EXISTS `shop_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `katalog_id` int NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_id` int NOT NULL,
  `shop_subcategory_photo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_subcategory`
--

LOCK TABLES `shop_subcategory` WRITE;
/*!40000 ALTER TABLE `shop_subcategory` DISABLE KEYS */;
INSERT INTO `shop_subcategory` VALUES (1,2,20,20,12,NULL),(3,2,19,16,10,NULL),(4,2,19,16,7,NULL),(5,2,20,20,12,NULL),(6,2,19,16,9,NULL),(7,2,19,16,10,NULL),(8,2,19,16,8,NULL),(9,2,19,16,7,NULL),(21,1,21,21,22,NULL),(22,1,21,22,25,NULL),(24,1,21,22,26,NULL),(25,1,21,23,19,NULL),(29,3,21,22,26,NULL),(30,2,14,19,11,NULL),(31,4,21,21,20,NULL),(32,4,21,21,22,NULL),(33,4,25,24,27,NULL),(55,2,25,24,28,NULL),(56,2,25,24,27,NULL),(57,1,25,24,27,NULL),(59,25,25,24,28,NULL),(60,25,25,24,27,NULL),(61,25,25,55,109,NULL),(62,26,27,57,35,NULL),(63,26,27,57,37,NULL),(64,26,27,58,40,NULL),(65,26,27,80,82,NULL),(66,26,27,92,147,NULL),(67,26,27,92,148,NULL),(68,26,27,92,146,NULL),(69,26,27,58,41,NULL),(70,35,129,396,430,NULL),(71,26,27,58,42,NULL),(72,35,129,413,372,NULL),(73,35,129,396,322,NULL),(74,25,27,58,42,NULL);
/*!40000 ALTER TABLE `shop_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_top3_product`
--

DROP TABLE IF EXISTS `shop_top3_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_top3_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sph_k` (`shop_id`),
  KEY `productp_key` (`product_id`),
  CONSTRAINT `productp_key` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  CONSTRAINT `sph_k` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_top3_product`
--

LOCK TABLES `shop_top3_product` WRITE;
/*!40000 ALTER TABLE `shop_top3_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_top3_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_videos`
--

DROP TABLE IF EXISTS `shop_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_videos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `video` varchar(250) NOT NULL,
  `fon_photo` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `nameRU` varchar(250) NOT NULL,
  `descriptionRU` text NOT NULL,
  `like_count` int DEFAULT NULL,
  `goren_sany` int DEFAULT NULL,
  `created_date` date NOT NULL,
  `verify` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz` tinyint(1) NOT NULL DEFAULT '0',
  `otkaz_text` text,
  PRIMARY KEY (`id`),
  KEY `sh_k` (`shop_id`),
  CONSTRAINT `sh_k` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_videos`
--

LOCK TABLES `shop_videos` WRITE;
/*!40000 ALTER TABLE `shop_videos` DISABLE KEYS */;
INSERT INTO `shop_videos` VALUES (17,25,'uploads/videos/1656420760696.mp4','uploads/videoImages/1656420760661.jpg','uytgän ady','','rusça ady','budA RUSÇHA BEYAN',1,11,'2022-06-28',1,0,NULL),(18,25,'uploads/videos/1656421230414.mp4','uploads/videoImages/1656421230364.jpg','maska','ozyne gel','ghhh','gghh',0,0,'2022-06-28',0,0,NULL),(21,26,'uploads/videos/1657374786163.mp4','uploads/videoImages/1657374786093.jpg','Kofee','Kofee','Чёрное кофе с молоком','Вкусные',4,3,'2022-07-09',1,0,NULL),(22,26,'uploads/videos/1657375014014.mp4','uploads/videoImages/1657375013981.jpg','Kofe','','Кофе','',3,2,'2022-07-09',1,0,NULL),(23,26,'uploads/videos/1657375076851.mp4','uploads/videoImages/1657375076812.jpg','Ertirlik üçin kofe','','Кофе для завтрака','',1,7,'2022-07-09',1,0,NULL),(24,26,'uploads/videos/1657375121473.mp4','uploads/videoImages/1657375121418.jpg','Kapuçino','','Капучино','',2,11,'2022-07-09',1,0,NULL),(25,26,'uploads/videos/1657375224627.mp4','uploads/videoImages/1657375224586.jpg','Sowuk kofe','','Холодное кофе','',1,14,'2022-07-09',1,0,NULL),(26,26,'uploads/videos/1657375299217.mp4','uploads/videoImages/1657375299174.jpg','Ertiriñizi kofe bilen başlaň','','Начните утро с кофе','',1,16,'2022-07-09',1,0,NULL);
/*!40000 ALTER TABLE `shop_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `sizes_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (3,17,1),(4,17,2),(5,6,1),(6,6,2),(7,6,3),(8,27,1),(9,27,2),(10,27,3),(11,27,4),(12,6,1),(13,6,2),(14,6,3),(15,106,13),(16,107,13),(17,109,11),(18,109,12),(19,109,13),(20,110,12),(21,110,13),(22,112,12),(23,112,14),(24,114,10),(25,114,12),(26,114,14),(27,115,10),(28,115,14),(29,115,9),(30,116,10),(31,116,13),(32,117,14),(33,117,12),(34,117,10),(35,118,9),(36,118,14),(37,118,12),(38,119,14),(39,119,12),(40,120,12),(41,120,10),(42,121,12),(43,121,14),(44,122,12),(45,122,14),(46,122,9),(47,123,14),(48,123,13),(49,124,14),(50,124,10),(51,124,12),(52,125,12),(53,125,9),(54,126,12),(55,126,14),(56,127,14),(57,127,10),(58,128,14),(59,128,10),(60,128,12),(61,129,14),(62,129,10),(63,129,12),(64,179,378),(65,179,379),(66,179,380),(67,179,381),(68,179,382),(69,180,378),(70,180,379),(71,180,380),(72,180,381),(74,181,380),(76,181,379),(77,184,379),(78,184,382),(79,184,379),(80,184,381),(81,184,382),(82,186,380),(83,186,383),(84,186,381),(85,188,390),(86,188,392),(87,188,388),(88,189,390),(89,189,392),(90,189,388),(91,189,391),(92,189,389),(93,199,388),(94,199,390),(95,199,391);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size_group`
--

DROP TABLE IF EXISTS `size_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size_group`
--

LOCK TABLES `size_group` WRITE;
/*!40000 ALTER TABLE `size_group` DISABLE KEYS */;
INSERT INTO `size_group` VALUES (49,'Rim sanlar'),(50,'Aýakgap ölçeg'),(55,'Tertip sanlar'),(56,'Bäbek ölçeg'),(57,'Ýetginjek ýaş ölçeg'),(58,'Mata \"sm\" ölçeg'),(59,'Drop ölçeg'),(60,'Guşak ölçeg'),(61,'Ýüzük ölçeg');
/*!40000 ALTER TABLE `size_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sizes`
--

DROP TABLE IF EXISTS `sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sizes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `size_group_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=607 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sizes`
--

LOCK TABLES `sizes` WRITE;
/*!40000 ALTER TABLE `sizes` DISABLE KEYS */;
INSERT INTO `sizes` VALUES (378,'XS',49),(379,'S',49),(380,'M',49),(381,'L',49),(382,'XL',49),(383,'XXL',49),(384,'3XL',49),(385,'4XL',49),(386,'34',50),(387,'35',50),(388,'36',50),(389,'37',50),(390,'38',50),(391,'39',50),(392,'40',50),(393,'41',50),(394,'42',50),(395,'43',50),(396,'44',50),(398,'45',50),(400,'36',55),(401,'37',55),(402,'38',55),(403,'39',55),(404,'40',55),(405,'41',55),(406,'42',55),(407,'43',55),(408,'44',55),(409,'45',55),(410,'46',55),(411,'47',55),(412,'48',55),(413,'49',55),(414,'50',55),(415,'51',55),(416,'52',55),(417,'53',55),(418,'54',55),(419,'55',55),(420,'56',55),(421,'57',55),(422,'58',55),(423,'59',55),(424,'60',55),(425,'0-1 aý',56),(426,'0-3 aý',56),(427,'3-6 aý',56),(428,'6-9 aý',56),(429,'9-12 aý',56),(430,'12-18 aý',56),(431,'1-2 ýaş',56),(432,'1,5-2 ýaş',56),(433,'2-3 ýaş',56),(434,'3-4 ýaş',56),(435,'4-5 ýaş',56),(436,'5-6 ýaş',56),(437,'7 ýaş',57),(438,'8 ýaş',57),(439,'9 ýaş',57),(440,'10 ýaş',57),(441,'11 ýaş',57),(442,'12 ýaş',57),(443,'13 ýaş',57),(444,'14 ýaş',57),(445,'15 ýaş',57),(446,'16 ýaş',57),(447,'17 ýaş',57),(448,'18 ýaş',57),(449,'7-8 ýaş',57),(450,'8-9 ýaş',57),(451,'9-10 ýaş',57),(452,'10-11 ýaş',57),(453,'11-12 ýaş',57),(454,'12-13 ýaş',57),(455,'13-14 ýaş',57),(456,'14-15 ýaş',57),(457,'15-16 ýaş',57),(458,'16-17 ýaş',57),(459,'17-18 ýaş',57),(460,'10 sm',58),(461,'20 sm',58),(462,'30 sm',58),(463,'40 sm',58),(464,'50 sm',58),(465,'60 sm',58),(466,'70 sm',58),(467,'80 sm',58),(468,'90 sm',58),(469,'100 sm',58),(470,'110 sm',58),(471,'120 sm',58),(472,'130 sm',58),(473,'140 sm',58),(474,'150 sm',58),(475,'160 sm',58),(476,'170 sm',58),(477,'180 sm',58),(478,'190 sm',58),(479,'200 sm',58),(480,'210 sm',58),(481,'220 sm',58),(482,'230 sm',58),(483,'240 sm',58),(484,'250 sm',58),(485,'260 sm',58),(486,'270 sm',58),(487,'280 sm',58),(488,'290 sm',58),(489,'300 sm',58),(490,'XXS',49),(502,'23/27',59),(503,'23/30',59),(504,'23/32',59),(505,'24/26',59),(506,'24/28',59),(507,'24/30',59),(508,'24/32',59),(509,'24/34',59),(510,'24/36',59),(511,'25/26',59),(512,'25/28',59),(513,'25/30',59),(514,'25/32',59),(515,'25/34',59),(517,'26/28',59),(518,'26/30',59),(519,'26/32',59),(520,'26/34',59),(521,'26/36',59),(522,'27/28',59),(523,'27/30',59),(524,'27/32',59),(525,'27/34',59),(526,'27/36',59),(527,'28/30',59),(528,'28/32',59),(529,'28/34',59),(530,'28/36',59),(531,'28/38',59),(532,'29/30',59),(533,'29/32',59),(534,'29/34',59),(535,'29/36',59),(536,'29/38',59),(537,'30/32',59),(538,'30/34',59),(540,'30/36',59),(541,'30/38',59),(542,'30/40',59),(543,'31/32',59),(544,'31/34',59),(545,'31/36',59),(546,'31/38',59),(547,'32/34',59),(548,'32/36',59),(549,'32/38',59),(550,'32/40',59),(551,'44/4',59),(552,'46/4',59),(553,'48/4',59),(554,'50/4',59),(555,'52/4',59),(556,'54/4',59),(557,'56/4',59),(558,'58/4',59),(559,'60/4',59),(560,'62/4',59),(561,'44/6',59),(562,'46/6',59),(563,'48/6',59),(564,'50/6',59),(565,'52/6',59),(566,'54/6',59),(567,'56/6',59),(568,'58/6',59),(569,'60/6',59),(570,'62/6',59),(571,'80 sm',60),(572,'85 sm',60),(573,'90 sm',60),(574,'95 sm',60),(575,'100 sm',60),(576,'105 sm',60),(577,'110 sm',60),(578,'115 sm',60),(579,'120 sm',60),(580,'125 sm',60),(581,'130 sm',60),(582,'135 sm',60),(583,'140 sm',60),(584,'145 sm',60),(585,'150 sm',60),(586,'16',61),(587,'17',61),(588,'18',61),(589,'19',61),(590,'20',61),(591,'21',61),(592,'22',61),(593,'23',61),(594,'24',61),(595,'25',61),(596,'26',61),(597,'27',61),(598,'28',61),(599,'29',61),(600,'30',61),(601,'31',50),(602,'32',50),(603,'33',50),(605,'18-24 aý',56),(606,'24-36 aý',56);
/*!40000 ALTER TABLE `sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sms_apps`
--

DROP TABLE IF EXISTS `sms_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_apps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `device_name` text NOT NULL,
  `fcm_token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sms_apps`
--

LOCK TABLES `sms_apps` WRITE;
/*!40000 ALTER TABLE `sms_apps` DISABLE KEYS */;
INSERT INTO `sms_apps` VALUES (9,'farhad a3','fgSvYP5zRrK9hgTKwA4Bio:APA91bEOwgTN34cePsxvccI7Mr5N8ncSejtHuYOXQmMPZyTLlHoYkVF9y2caWwrzhEdK0doUmOwOeASwU4GdETJpzXZpLpKbnU1NlAmqGK4cS09TH1lWuyfC4jbhTFU5pvf0XP9FMiaB'),(10,'farhad a3','fgSvYP5zRrK9hgTKwA4Bio:APA91bEOwgTN34cePsxvccI7Mr5N8ncSejtHuYOXQmMPZyTLlHoYkVF9y2caWwrzhEdK0doUmOwOeASwU4GdETJpzXZpLpKbnU1NlAmqGK4cS09TH1lWuyfC4jbhTFU5pvf0XP9FMiaB'),(24,'hhhjj','fQvwrgb_RNWfqSNJKRGmfa:APA91bGMiBTo2Iuyych-iGK6o3nr2_MkGk7o-Thxl6JyXKmqtg-1LY7anAPbGz1T2ZVPIYhVKiFbl1s51GA5KqU348jQoChVzRn230I3xy2tQp3i6m_V8_2geId2k_s8JERTkPux_Rkg'),(25,'salam','fuMYK3NrRrm_Jg5heCbNVn:APA91bFhtfDjyC32uk0DlrsQQtiEtfK3hUnZZ-Z-F1CWOb7pXwHFfQSVKSSHLVI5otK1JH-XRVpFiHySLjzA2gvc_HAtxWN7u2mRPiBjOkvXGlpd4QvU7UTVOCgIYAFBa61jk-VIa7kp');
/*!40000 ALTER TABLE `sms_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bolum_id` int NOT NULL,
  `katalog_id` int NOT NULL,
  `category_id` int NOT NULL,
  `subcategory_name` varchar(100) NOT NULL,
  `subcategory_nameRU` varchar(250) NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (27,3,25,24,'Klassika nusgowy','Kлассический',1),(28,3,25,24,'Reňkli','Светной',1),(29,2,49,28,'Doňdurma','Мороженное',1),(30,2,49,30,'Manty','Manty',1),(31,2,49,28,'Tort','Торт',1),(33,2,49,30,'Şaşlik','Шашлик',1),(34,3,25,24,'Ak köýnekler','Белые рубашки',0),(35,3,27,57,'Gündelik köýnekler','Повседневные платья',1),(37,3,27,57,'Lybaslar','Платья',1),(40,3,27,58,'Kardiganlar,switerler we tolstowkalar','Кардиганы, свитера и толстовки',1),(41,3,27,58,'Kurtkalar','Куртки',1),(42,3,27,58,'Paltolar','Пальто',1),(45,3,27,58,'Penjekler','Пиджаки',1),(46,3,25,56,'Penjekler','Пиджаки',1),(48,3,25,56,'Paltolar','Пальто',1),(49,3,25,56,'Kurtkalar','Куртки',1),(50,3,27,58,'Ýeňsizler','Безрукавки',1),(51,3,25,56,'Plaşlar','Плащи',1),(52,3,27,58,'Plaşlar','Плащи',1),(53,3,25,56,'Kardiganlar','Кардиганы',1),(54,3,25,56,'Switerlar','Свитеры',1),(55,3,27,59,'Jinsy balaklar','Джинсы',1),(56,3,25,61,'Klassiki','Классический',1),(57,3,27,59,'Klassyk balaklar','Классические брюки',1),(58,3,25,61,'Ýarym klassiki','Пол классика',1),(59,3,27,59,'Kelte balaklar','Шорты',1),(60,3,25,61,'Jinsy','Джинсы',1),(61,3,25,61,'Kelte balaklar','Шорты',1),(62,3,27,59,'Geýim','Гейим',1),(64,3,25,62,'Sport kostýumlar','Спортивные костюмы',1),(65,3,25,62,'Sport kurtkalar','Спортивные куртки',1),(66,3,27,64,'Sport kostýumlar','Спортивные костюмы',1),(68,3,27,64,'Sport kurtkalar','Спортивные куртки',1),(69,3,25,62,'Sport balaklar','Спортивные штаны',1),(70,3,27,64,'Sport balaklar','Спортивные штаны',1),(71,3,25,62,'Futbolkalar we maýkalar','Футболки и майки',1),(73,3,25,62,'Sport geýimler','Спортивные одежды',1),(74,3,25,62,'Sport aksessuarlar','Спортивные аксессуары',1),(75,3,27,64,'Futbolkalar we maýkalar','Футболки и майки',1),(76,3,27,64,'Sport geýimler','Спортивные одежды',1),(77,3,27,64,'Sport aksessuarlar','Спортивные аксессуары',1),(78,3,27,78,'Uzyn ýubkalar','Длинные юбки',1),(79,3,27,78,'Gysga ýubkalar','Короткие юбки',1),(80,3,25,79,'Klassiki','Классический',1),(81,3,25,79,'Gündelik','Повседневная',1),(82,3,27,80,'Klassiki','Классический',1),(83,3,25,79,'Sport','Спортивный',1),(84,3,27,80,'Gündelik','Повседневная',1),(85,3,25,79,'Sandal we bosonoşkalar','Сандал и босоношки',1),(86,3,27,80,'Sport','Спортивный',1),(87,3,25,79,'Şypbyklar we slansilar','Шлепанцы и сланцы',1),(88,3,27,80,'Sandali we bosonoşkalar','Сандалии и босоножки',1),(90,3,27,80,'Şypbyklar we slansylar','Шлепанцы и сланцы',1),(91,3,27,80,'Ädikler','Сапоги',1),(92,3,25,79,'Ädikler','Сапоги',1),(93,3,27,80,'Tuflilar','Туфли',1),(94,3,27,82,'Ýüzükler','Кольца',1),(95,3,27,82,'Gulakhalkalar','Серьги',1),(96,3,27,82,'Komplektlar','Комплекты',1),(97,3,25,83,'Äýnekler','Очки',1),(98,3,25,83,'Sagatlar','Часы',1),(99,3,25,83,'Guşaklar','Ремни',1),(100,3,27,82,'Boýun üçin kolýe','Украшения на шею',1),(101,3,25,83,'Başgaplar','Головные уборы',1),(102,3,27,82,'Brasletlar','Браслеты',1),(103,3,27,82,'Sagatlar','Часы',1),(105,3,25,83,'Ellikler we şarflar','Перчатки и шарфы',1),(106,3,25,83,'Gapjyklar','Кошельки',1),(107,3,25,83,'Galstuklar','Галстуки',1),(108,3,25,83,'Beýlekiler','Другие',1),(109,3,25,55,'Klassiki köýnekler','Классические рубашки',1),(110,3,25,55,'Ýeňsiz köýnekler','Рубашки без рукавов',1),(111,3,25,55,'Köýnekler','Рубашки',1),(112,3,25,84,'Maýkalar','Майки',1),(114,3,25,84,'Pijamalar','Пижамы',1),(115,3,25,84,'Losinalar','Лосины',1),(116,3,25,84,'Joraplar','Носки',1),(117,3,25,84,'Türsükler','Трусики',1),(118,3,27,85,'Äýnekler','Очки',1),(119,3,27,85,'Sagatlar','Часы',1),(120,3,27,85,'Guşaklar','Ремни',1),(121,3,27,85,'Baş gaplar','Головные уборы',1),(122,3,27,85,'Sumkalar we rýukzaklar','Сумки и рюкзаки',1),(123,3,27,85,'Ellikler','Перчатки',1),(124,3,25,83,'Sumkalar we rýukzaklar','Сумки и рюкзаки',1),(125,3,27,85,'Gapjyklar','Кошельки',1),(126,3,27,85,'Saç aksessuarlar','Аксессуары для волос',1),(127,3,27,85,'Beýlekiler','Другие',1),(128,3,27,87,'Gülýüpekler','Гулюпек',1),(130,3,27,87,'Şifonlar','Шифоны',1),(131,3,27,87,'Ştapyllar','Штапл',1),(132,3,27,87,'Beýlekiler','Другие',1),(133,3,27,88,'El keşdeler','Ручной работы',1),(134,3,27,88,'Fason ýakalar','Модные вышивки',1),(135,3,27,88,'Nakitkalar','Накитки',1),(136,3,27,88,'Milli ýakalar','Национальные вышивки',1),(137,3,27,90,'Öýmeler','Ойме',1),(138,3,27,90,'Gyňaçlar','Гынач',1),(139,3,27,90,'Kiçi ýaglyklar','Маленькие платки',1),(140,3,27,90,'Şarflar','Шарфы',1),(141,3,25,91,'Maýkalar','Майки',1),(142,3,25,91,'Türsükler','Трусики',1),(143,3,25,91,'Pijamalar','Пижамы',1),(144,3,25,91,'Losinalar','Лосины',1),(145,3,25,91,'Joraplar','Носки',1),(146,3,27,92,'Türsükler','Трусы',1),(147,3,27,92,'Býuzgalter','Бюстгальтеры',1),(148,3,27,92,'Iç geýim toplumy','Комплект нижнего белья',1),(149,3,27,92,'Pijamalar','Пижамы',1),(150,3,27,92,'Gijelikler','Ночнушки',1),(151,3,27,92,'Lasinalar','Лосины',1),(152,3,27,92,'Joraplar,çulkiler we kolgotkalar','Носки, чулки и колготки',1),(153,3,27,94,'Sapaklar','Нитки',1),(154,3,27,94,'Iňňeler','Иглы',1),(155,3,27,94,'Ilikler','Пуговицы',1),(157,3,25,79,'Krossowkalar','Кроссовки',1),(158,3,27,94,'Syrma','Замок',1),(159,3,27,94,'Kurçoklar we knopkalar','Курчок и пуговицы',1),(160,3,27,94,'Köýnek aksessuarlar','Аксессуары для платья',1),(161,3,27,94,'Beýlekiler','Другие',1),(162,3,27,87,'Düz we gülli panbarhatlar','Плоские и цветочные панбархат',1),(163,3,74,97,'Jempirlar','Джемперы',1),(164,3,74,97,'Kurtkalar','Куртки',1),(165,3,74,97,'Paltolar','Пальто',1),(167,3,74,97,'Ýeňsizler','Безрукавки',1),(168,3,74,97,'Switerler we kardiganlar','Свитера и кардиганы',1),(169,3,74,98,'Jinsy','Джинсы',1),(170,3,74,98,'Gündelik balaklar','Повседневные брюки',1),(171,3,74,98,'Losinalar','Лосины',1),(172,3,74,98,'Kelte balaklar','Шорты',1),(173,3,74,99,'Sport balaklar','Спортивные брюки',1),(174,3,74,99,'Sport kostýumlar','Спортивные костюмы',1),(175,3,74,99,'Sport geýimler','Спортивная одежда',1),(176,3,74,99,'Beýlekiler','Другие',1),(177,3,74,104,'Krossowkalar','Кроссовки',1),(178,3,74,104,'Şypbyklar we slansylar','Тапочки и шлепанцы',1),(180,3,74,104,'Ädikler we botinkalar','Сапоги и ботинки',1),(181,3,74,104,'Gündelik aýakgap','Повседневная обувь',1),(182,3,74,104,'Sandali we bosonožkalar','Сандалии и босоножки',1),(183,3,74,105,'Saç aksessuarlar','Аксессуары для волос',1),(185,3,74,105,'Sumkalar','Сумки',1),(187,3,74,105,'Äýnekler','Очки',1),(188,3,74,105,'Başgaplar','Головные уборы',1),(189,3,74,105,'Beýlekiler','Другие',1),(190,3,74,106,'Pijamalar','Пижамы',1),(191,3,74,106,'Topiklar','Топики',1),(192,3,74,106,'Türsükler','Трусы',1),(193,3,74,106,'Jorap we kalgotkalar','Носки и колготки',1),(194,3,72,108,'Kurtkalar','Куртки',1),(195,3,72,108,'Paltolar','Пальто',1),(196,3,72,108,'Ýeňsizler','Безрукавки',1),(197,3,72,108,'Switerler','Свитера',1),(198,3,72,109,'Jinsy','Джинсы',1),(199,3,72,109,'Gündelik balak','Повседневные брюки',1),(200,3,72,109,'Kelte balak','Шорты',1),(201,3,72,110,'Sport balaklar','Спортивные штаны',1),(202,3,72,110,'Sport kostýumlar','Спортивные костюмы',1),(203,3,72,110,'Sport geýimler','Спортивная одежда',1),(204,3,72,110,'Beýlekiler','Другие',1),(205,3,72,115,'Krossowkalar','Кроссовки',1),(206,3,72,115,'Şypbyklar we slansylar','Тапочки и шлепанцы',1),(207,3,72,115,'Ädikler we botinkalar','Сапоги и ботинки',1),(208,3,72,115,'Bosonoşkalar','Босоножки',1),(209,3,72,116,'Guşaklar','Ремни',1),(210,3,72,116,'Ellikler we şarflar','Перчатки и шарфы',1),(211,3,74,116,'Ellikler we şarflar','Перчатки и шарфы',1),(212,3,72,116,'Sumkalar','Сумки',1),(213,3,72,116,'Sagatlar we brasletlar','Часы и браслеты',1),(214,3,74,116,'Sagatlar we brasletlar','Часы и браслеты',1),(215,3,72,116,'Äýnekler','Очки',1),(216,3,72,116,'Başgaplar','Головные уборы',1),(217,3,72,116,'Beýlekiler','Beýlekiler',1),(218,3,72,117,'Maýkalar','Майки',1),(219,3,72,117,'Pijamalar','Пижамы',1),(220,3,72,117,'Bokserlar','Боксеры',1),(221,3,72,117,'Joraplar','Носки',1),(222,3,91,127,'Panduf we pinetkalar','Пандуф и пинетки',1),(223,3,91,127,'Şypbyklar we slansylar','Сланцы и шлёпки',1),(224,3,91,127,'Gündelik aýakgaplar','Повседневная обувь',1),(225,3,91,127,'Botinkalar we ädikler','Ботинки и сапоги',1),(226,3,91,127,'Sandali we bosonoşkalar','Сандалии и босоножки',1),(227,3,91,127,'Krossowkalar','Кроссовки',1),(228,3,90,141,'Panduf we pinetkalar','Пандуф и пинетки',1),(229,3,90,141,'Şypbyklar we slansylar','Сланцы и шлёпки',1),(230,3,90,141,'Gündelik aýakgaplar','Повседневная обувь',1),(231,3,90,141,'Botinkalar we ädikler','Ботинки и сапоги',1),(232,3,90,141,'Sandali we bosonoşkalar','Сандалии и босоножки',1),(233,3,90,141,'Krossowkalar','Кроссовки',1),(234,6,93,172,'Sement','Цемент',1),(235,6,93,172,'Şpaklýowka','Шпаклёвка',1),(236,6,93,172,'Kafel kleý','Плиточный клей',1),(237,6,93,172,'Ak sement','Белый цемент',1),(238,6,93,172,'Gips','Штукатурка',1),(239,6,96,183,'Elektrik rozetkalar','Электрические розетки',1),(240,6,96,183,'TV RJ CAT rozetkalar','TV RJ CAT розетки',1),(241,6,96,184,'Içki paýlaýjy şitler','Внутренние распределительные шита',1),(242,6,96,184,'Daşky paýlaýjy şitler','Внешние распределительные шита',1),(243,6,97,189,'Diwar plitkalar','Настенная плитка',1),(244,6,97,189,'Pol plitkalar','Напольная плитка',1),(245,6,99,202,'Burç lepkalar','Угловая лепка',1),(246,6,99,202,'Potolok lepkalar','Потолочные лепки',1),(247,6,99,202,'Potolok plintusy','Потолочные плинтусы',1),(248,6,100,207,'Bezeg lampalar','Декоративные лампы',1),(249,6,100,207,'Lýustra üçin lampalar','Лампы для люстры',1),(250,7,103,233,'Iki tarapa açylýan şkaflar','Распашные шкафы',1),(251,7,103,233,'Geýim asylýan şkaflar','Гардеробные',1),(252,11,116,301,'Holodilnik','Холодильник',1),(253,11,116,301,'Gaz plita','Газовая плита',1),(254,11,116,301,'Kir ýuwujy maşyn','Стиральная машина',1),(255,11,116,301,'Doňduryjylar','Морозильники',1),(257,11,116,302,'Kofe gaýnadylýan we kofe maşynlar','Кофеварки и кофемашины',1),(258,11,116,302,'Multiwarkalar we nahar bişirmek üçin enjamlar','Мультиварки и кухонная утварь',1),(259,11,116,302,'Stol üçin plitalar','Настольные плиты',1),(260,11,116,302,'Mikserlar, blenderlar we bölekleýjiler','Миксеры, блендеры и измельчители',1),(261,11,116,302,'Elektrik çäýnekler','Электрические чайники',1),(262,11,116,302,'Mikrowolnowkalar we duhowkalar','Микроволновки и духовки',1),(263,11,116,302,'Et üweýjiler we aşhana kombaýnlar','Мясорубки и кухонные комбайны',1),(264,11,116,303,'Kondisionerlar we split-ulgamlar','Кондиционеры и сплит-системы',1),(265,11,116,303,'Howany nemlendirijiler we hoşboý ys berijiler','Увлажнители воздуха и аромадиффузоры',1),(266,11,116,303,'Howa arassalaýjylary','Очистители воздуха',1),(267,11,116,301,'Suw gyzdyryjylar','Водонагреватели',1),(268,11,116,305,'Ütükler we bugly ütükler','Утюги и отпариватели',1),(269,11,116,305,'Ütük üçin doska','Гладильная доска',1),(270,11,116,305,'Tozan sorujylar we aksessuarlar','Пылесосы и аксессуары',1),(271,11,116,305,'Elektrik gyzdyryjylar','Электронагреватель',1),(272,11,116,307,'Trinažorlar','Тренажёры',1),(273,11,116,307,'Tereziler','Напольные весы',1),(274,11,116,307,'Ploýkalar we saç ütikler','Щипцы, плойки и выпрямители для волос',1),(275,11,116,307,'Emilýatorlar','Эпиляторы',1),(276,11,127,335,'Samsung','Самсунг',1),(277,11,127,335,'Apple','Apple',1),(278,11,127,335,'Xiaomi','Xiaomi',1),(279,11,127,335,'Huawei','Huawei',1),(280,11,127,335,'Nokia','Nokia',1),(281,11,127,344,'Gorag aýnalary we plýonkalar','Защитные стёкла и плёнки',1),(282,11,127,344,'Zarýad berijiler','Зарядные устройства',1),(283,11,127,344,'Powerbanklar','Повербанки',1),(284,11,127,344,'Saklaýjylar','Держатели',1),(285,11,127,344,'Karta pamýatlar(SD)','Карты памяти(SD)',1),(286,11,128,362,'Noutbuklar','Ноутбуки',1),(287,11,128,362,'Sistema bloklar','Системные блоки',1),(288,11,128,382,'Klawiaturalar','Клавиатуры',1),(289,11,128,382,'Syçanlar','Мыши',1),(291,11,128,382,'Noutbuklar üçin sumkalar we çehollar','Сумки и чехлы для ноутбуков',1),(292,11,128,382,'Kompýuter üçin kolonkalar','Компьютерные колонки',1),(293,11,128,371,'Prossesorlar','Процессоры',1),(294,11,128,371,'Wideokartalar','Видеокарты',1),(295,11,128,371,'Enelik platalar','Материнские платы',1),(296,11,128,371,'Sowadyjy ulgamlar','Системы охлаждения',1),(297,11,128,371,'Gaty disklar, SSD','Жесткие диски, SSD',1),(298,11,128,392,'Printerlar','Принтеры',1),(299,11,128,375,'USB Fleşkalar','USB флэшки',1),(300,11,128,375,'Karta pamýatlar','Карты памяти',1),(301,11,128,375,'daşky HD disk (Trbaýt)','Внешние жесткие диски',1),(305,11,128,393,'Routerlar','Роутеры',1),(306,11,128,393,'3G-Modemlar','3G-Модемы',1),(307,11,128,392,'3D Printerlar','3D Принтеры',1),(308,11,128,392,'Akymly printerler','Струйные принтеры',1),(309,11,128,392,'Lazer printerler','Лазерные принтеры',1),(310,11,128,392,'Skanerlar','Сканеры',1),(311,11,128,392,'Laminatorlar','Ламинаторы',1),(312,11,129,395,'Kir ýuwujy maşynlar','Стиральные машины',1),(313,11,129,395,'Holodilniklar','Холодильники',1),(314,11,129,395,'Howa sorujylar','Вытяжки',1),(315,11,129,395,'Duhowkalar','Духовки',1),(316,11,129,395,'Gap-gaç ýuwýan maşynlar','Посудомоечные машины',1),(317,11,129,395,'Kondisionerler','Кондиционеры',1),(318,11,129,395,'Plitalar','Плиты',1),(319,11,129,395,'Boýlerlar','Бойлеры',1),(320,11,129,396,'Tozan sorujylar','Пылесосы',1),(321,11,129,396,'Howa nemlendirijiler','Увлажнители воздуха',1),(322,11,129,396,'Ütükler','Утюги',1),(324,11,129,397,'Mikrowolnowkalar','Микроволновые печи',1),(325,11,129,397,'Elektrik grillar','Электрические грили',1),(326,11,129,397,'Multiwarkalar','Мультиварки',1),(327,11,129,397,'Çörek bişirijiler','Хлебопечки',1),(328,11,129,397,'Wakuum bilen gaplaýjylar','Вакуумные упаковщики',1),(329,11,129,397,'Wafli we çörek bişirijiler','Вафельницы и мультипекари',1),(330,11,129,397,'Tosterlar','Тостеры',1),(333,11,129,398,'Kofe gaýnadýanlar we kofemaşynlar','Кофеварки и кофемашины',1),(334,11,129,398,'Kofe owradyjylar','Кофемолки',1),(335,11,129,398,'Elektrik çäýnekleri','Электрические чайники',1),(336,11,129,398,'Miwe sykyjylar','Соковыжималки',1),(337,11,129,398,'Termoslar','Термосы',1),(338,11,129,400,'Blenderlar','Блендеры',1),(339,11,129,400,'Aşhana kombaýnlar','Кухонные комбайны',1),(340,11,129,400,'Et üweýjiler','Мясорубки',1),(341,11,129,400,'Mikserlar','Миксеры',1),(342,11,130,403,'Telewizorlar','Телевизоры',1),(343,11,130,403,'Proýektorlar','Проекторы',1),(344,11,130,403,'Týunerlar','Тюнеры',1),(345,11,130,403,'Mediapleýerlar','Медиаплееры',1),(346,4,113,409,'Çörek','Хлеб',1),(347,11,130,406,'Kwadkopterler we dronlar','Квадрокоптеры и дроны',1),(348,4,113,409,'Bulka','Булка',1),(349,4,113,409,'Simit','Симит',1),(350,11,130,406,'Foto enjamlar','Фотоаппараты',1),(351,4,113,409,'Kraussan','Краусан',1),(352,11,130,406,'Surat studiýasy','Фотостудия',1),(353,11,130,406,'Wideo düşüriş enjamlary','Съёмочное оборудование',1),(354,11,130,408,'Kabeller we adapterler','Кабели и адаптеры',1),(355,11,130,408,'Batareýalar we akkumulýatorlar','Батареи и аккумуляторы',1),(356,11,130,407,'Duýduruş enjamlary','Сигнализации',1),(357,4,113,410,'Bugdaý uny','Пшеничная мука',1),(358,4,113,410,'Duz we spesiýalar','Соль и специи',1),(359,11,130,407,'Gözegçilik kamerasy','Камера наблюдения',1),(360,4,113,410,'Lawaş','лаваш',1),(361,4,113,410,'Makaron,wermişel,spagetti','Макароны, вермишель, спагетти',1),(362,11,130,408,'Kolonkalar','Колонки',1),(363,4,113,410,'Unaş','Лапша',1),(364,4,113,411,'Towuk','Курица',1),(365,4,113,411,'Börekler','Пельмени',1),(366,4,113,411,'Manty','манты',1),(367,4,113,411,'Bagyr','Печень',1),(368,4,113,411,'Lýaşka','Лаяшка',1),(369,11,129,413,'Saç aýyrmak üçin maşynlar','Машинки для стрижки волос',1),(370,11,129,413,'Trimmerlar','Триммеры',1),(371,11,129,413,'Elektrik britwalar','Электробритвы',1),(372,11,129,413,'Saç üçin fenlar','Фены для волос',1),(373,4,113,414,'Arpa','Ячмень',1),(374,11,129,413,'Emolýatorlar','Эпиляторы',1),(375,4,113,414,'Nohut','Горох',1),(376,11,129,413,'Saç düzedijiler','Выпрямители для волос',1),(377,4,113,414,'Mäş','Маш',1),(378,4,113,414,'Merjimek','Мерджимек',1),(379,11,129,413,'Elektrik egriji ütükler','Электрощипцы и плойки',1),(380,4,113,414,'Greçka','Гречка',1),(381,4,113,414,'Noýba','Фасоль',1),(382,4,113,414,'Tüwi','Рис',1),(383,4,113,414,'Mannyý ýarmasy','Манная',1),(384,4,113,417,'Sygyr eti','Говядина',1),(385,4,113,417,'Goýun eti','баранина',1),(386,4,113,417,'Towuk','Курица',1),(387,4,113,417,'Üwelen etler','Фарш',1),(388,4,113,417,'Indýuk','Индейка',1),(389,4,113,417,'Kakadylan şöhlat','Копченый',1),(390,4,113,417,'Gaýnadylan şöhlat','Вареный',1),(391,4,113,417,'Sosiska','Сосиска',1),(392,4,113,417,'Balyk','Рыбы',1),(393,4,113,421,'Süýjiler','Сладости',1),(394,4,113,421,'Kökeler','печенье',1),(395,4,113,421,'Keksler','Кексы',1),(396,4,113,421,'Tortlar','Торты',1),(397,4,113,421,'Şokoladlar','Шоколад',1),(398,4,113,421,'Marmeladlar','Мармелад',1),(399,4,113,421,'Waflilar','Вафли',1),(400,4,126,418,'Kir ýuwujy poroşoklar','Стиральные порошки',1),(401,4,126,418,'Geller, suwuklyklar','Жидкости и гели',1),(402,4,126,418,'Ýumşadyjylar','Смягчающие средства',1),(403,4,113,423,'Süýt','Молоко',1),(404,4,113,423,'Peýnir','Сыр',1),(405,4,126,418,'Tegmilleri aýyryjy, agardyjylar','Пятновыводитель, отбеливатель',1),(406,4,113,423,'Gaýmak','Сметана',1),(407,4,126,418,'Kapsulalar, tabletkalar','Капсулы, таблетки',1),(408,4,113,423,'Gatyk','Варенец',1),(409,4,126,418,'Suw ýumşadyjy, çökündiden goraýjylar','Умягчитель воды, защита от осадка',1),(410,4,113,423,'Tworog','Творог',1),(411,4,113,423,'Aýran','Айран',1),(412,4,126,420,'Gubkalar we skrebkalar','Губки и скребки',1),(413,4,113,423,'Ýogurt','Йогурт',1),(414,4,126,420,'gap-gaç ýuwujyy maşynlar üçin','Для посудомоечных машин',1),(415,4,113,423,'Mesge','Масло',1),(416,4,113,423,'Brynza','Брынза',1),(417,4,113,423,'Kefir','Кефир',1),(418,4,126,422,'Uniwersal serişdeler','Универсальные средства',1),(419,4,113,423,'Moloko','молоко',1),(420,4,126,422,'Hojalyk ellikleri','Хозяйственные перчатки',1),(421,4,126,422,'Hammam we hajathana üçin','Для ванной и туалета',1),(422,4,126,422,'Pol, haly, mebel üçin','Для пола, ковра, мебели',1),(423,4,126,422,'Aşhana üçin','Для кухни',1),(424,4,126,422,'Aýna ýuwujy serişdeler','Моющие средства для стекла',1),(425,4,126,422,'Hojalyk tehnikalaryň çökündisini arassalaýjylar','Бытовые очистители отложений',1),(426,4,126,422,'Ýörite arassalaýjy serişdeler','Специальные чистящие средства',1),(427,11,129,396,'Ýyladyjylar','Обогреватели',1),(428,4,132,451,'Kagyz gap-gaçlar','Бумажная посуда',1),(429,4,132,451,'Plastik gap-gaçlar','Пластиковая посуда',1),(430,11,129,396,'Beýlekiler','Другие',1),(431,4,113,421,'Lokumlar','Локум',1);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sup_adm`
--

DROP TABLE IF EXISTS `sup_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sup_adm` (
  `name` varchar(15) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sup_adm`
--

LOCK TABLES `sup_adm` WRITE;
/*!40000 ALTER TABLE `sup_adm` DISABLE KEYS */;
INSERT INTO `sup_adm` VALUES ('murad','$2b$10$TEEs1sbwCSgZgx1M4X/fvONuCjvAgnanes3oMf.Fd7/cpqp8xoLxe',0);
/*!40000 ALTER TABLE `sup_adm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_users`
--

DROP TABLE IF EXISTS `system_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(180) NOT NULL,
  `remember_me_token` varchar(255) DEFAULT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `full_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system_users_username_unique` (`username`),
  KEY `system_users_role_id_foreign` (`role_id`),
  CONSTRAINT `system_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `user_roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_users`
--

LOCK TABLES `system_users` WRITE;
/*!40000 ALTER TABLE `system_users` DISABLE KEYS */;
INSERT INTO `system_users` VALUES (2,'superadmin','$argon2id$v=19$t=3,m=4096,p=1$pgYx1nTwMMuAcjdq7ZXTSw$7tLBtFipWKMbn3BOua7J/Lqn0/VVhmwbbZiDbzZdRaw',NULL,1,'2022-04-02 06:15:14','2022-06-29 09:40:09','Jasurbek Ashyrbayev'),(4,'admin','$argon2id$v=19$t=3,m=4096,p=1$uTPA7Gex7V1o77/xxZrGgg$GtRfHFAv8Gt0ZOhqy+qA5BdcAKd3TRP0OoHKSXgDuBk',NULL,1,'2022-06-29 09:15:29','2022-06-29 09:15:29','superadmin developerov');
/*!40000 ALTER TABLE `system_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tazelik`
--

DROP TABLE IF EXISTS `tazelik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tazelik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `service_shop_id` int NOT NULL,
  `name_header` varchar(250) NOT NULL,
  `name_headerRU` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `nameRU` varchar(250) NOT NULL,
  `description_header` text NOT NULL,
  `description_headerRU` text NOT NULL,
  `description` text NOT NULL,
  `descriptionRU` text NOT NULL,
  `created_data` date NOT NULL,
  `gorulen_sany` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tazelik`
--

LOCK TABLES `tazelik` WRITE;
/*!40000 ALTER TABLE `tazelik` DISABLE KEYS */;
INSERT INTO `tazelik` VALUES (1,1,0,'name header','name headerRU','name','nameRU','description header','description headerRU','description','descriptionRU','2022-06-17',0);
/*!40000 ALTER TABLE `tazelik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tazelik_photo`
--

DROP TABLE IF EXISTS `tazelik_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tazelik_photo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tazelik_id` int NOT NULL,
  `photo` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tazelik_photo`
--

LOCK TABLES `tazelik_photo` WRITE;
/*!40000 ALTER TABLE `tazelik_photo` DISABLE KEYS */;
INSERT INTO `tazelik_photo` VALUES (3,1,'http://shop.com.tm:8080/uploads/productPhoto/1649942132770.jpg');
/*!40000 ALTER TABLE `tazelik_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teklipler`
--

DROP TABLE IF EXISTS `teklipler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teklipler` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `title` varchar(250) NOT NULL,
  `teklip` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teklipler`
--

LOCK TABLES `teklipler` WRITE;
/*!40000 ALTER TABLE `teklipler` DISABLE KEYS */;
/*!40000 ALTER TABLE `teklipler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teklipler_shop`
--

DROP TABLE IF EXISTS `teklipler_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teklipler_shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titul` varchar(250) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teklipler_shop`
--

LOCK TABLES `teklipler_shop` WRITE;
/*!40000 ALTER TABLE `teklipler_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `teklipler_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toleg_gornushi`
--

DROP TABLE IF EXISTS `toleg_gornushi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toleg_gornushi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toleg_gornushi`
--

LOCK TABLES `toleg_gornushi` WRITE;
/*!40000 ALTER TABLE `toleg_gornushi` DISABLE KEYS */;
INSERT INTO `toleg_gornushi` VALUES (1,'Nagt'),(2,'Bank kart');
/*!40000 ALTER TABLE `toleg_gornushi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_adress`
--

DROP TABLE IF EXISTS `user_adress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_adress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `adress_id` int NOT NULL,
  `adress_koche` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_adress`
--

LOCK TABLES `user_adress` WRITE;
/*!40000 ALTER TABLE `user_adress` DISABLE KEYS */;
INSERT INTO `user_adress` VALUES (1,2,'sdkjfbskjdfsdf','64555555',4,'Yunus emre koche'),(2,2,'sdkjfbskjdfsdf','64555555',4,'Yunus emre koche'),(3,2,'sdkjfbskjdfsdf','64555555',4,'Yungfygfjhgfjhgfjhgfjhgfjhgoche'),(7,4,'Jack Daniels','61112233',4,'grazhdan'),(10,4,'citation cj4','62216478',1,'taslama'),(12,4,'name surname','62216478',3,'ulisa 67 dom  5'),(13,4,'hahja haj a','62649453',2,',bjsk a'),(14,4,'cbnjk','62485632',2,'dbbvv'),(15,4,'ghjk gjj','65952652',2,'vhhjm'),(16,4,'xvbn','62216478',2,'cvbnn'),(17,4,'hjkgh','63903644',4,'ffhh'),(18,3,'Almaty kuryer 2','63903644',2,'gurbansoltan 2 jay 12'),(19,4,'ilya','62214548',2,'fighting'),(20,3,'good luck','62369852',7,'tuob hj 35'),(21,11,'jas','65431571',4,'ghjj'),(22,12,'hshehhshsh','65662326',11,'hs'),(23,6,'hdjjd','65431571',4,'nxndkd'),(24,6,'farhad','63903644',23,'frjt'),(25,6,'farhad','63903644',23,'frjt');
/*!40000 ALTER TABLE `user_adress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,'superAdmin','2022-04-02 06:15:05','2022-04-02 06:15:05'),(2,'moderator','2022-04-02 06:15:05','2022-04-02 06:15:05'),(3,'operator','2022-04-02 06:15:05','2022-04-02 06:15:05');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `adress_welayat_id` int NOT NULL,
  `jynsy` varchar(50) NOT NULL,
  `register_kod` varchar(250) NOT NULL,
  `tapawutlanan` tinyint(1) NOT NULL DEFAULT '0',
  `bloklanan` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Guvanc Durdyyev','64155314',1,'Erkek','dIogXizSQ6uyjWzJ59REeR:APA91bGNC0lRYFpGinI2n8nX_LXUYHCabI467KKAVCOtnKyq3YvIcYBims9uc4oWul6uYUvI-SXx-KtN84912533d8XRXlsYjDByfbqBvCzq2TXHweYkin_tbC5m-cjRF4bVQM8K-osd',0,0),(3,'farhad','63903644',1,'Erkek','dLPb4RaDQXmjqXhq8Qn3cd:APA91bHPyAGMvtP6IIMEINOU9M3wB6aZKUYIO6k4Tj0Nfv9v6DLosXO5Q913HATY-YGr6M5J32qzhvQHBv5uVWzhAz7-esGAV50t0E6HRnsgtCuc01DSUKwWNc9rB6dWx6UmrWGm6OrZ',0,0),(4,'ilya','62216478',11,'Erkek','exKB4q1bnkeNuBpd11Odl-:APA91bEcRlFsoj-rtGFc8lMUQk_dXi8PbDTwwZQVAFSCD7I5gkJMemDMqajPXWzEud-WcbjsfUdyQEOf-3WnNpofrrwSds-G16JXKdm91hX2V7WVK2BrKEk0f9KwPTYaJOObNjensNTH',0,0),(5,'jfgj','65431574',1,'Erkek','f8U2kjkvQW-Tl3JrJpW3A2:APA91bFOeeIijFyZIeGxu2Dv6j_eI5_CeRgC3lQ_SpX9qTd_iLrixx0-2xcHWJuUX2sIwrmcJ_TFFkM4gZhaJpnmhne7kas56FZIgIlBAux6EKOY0K5zNgFeC4biPhHy9YPFsarwsYVR',0,0),(6,'farhad','65431571',1,'Erkek','dmNkS_TGS4uEPEvGmD3HJn:APA91bFZ_JkOI7nNcHpMSOkX6z5ny0Hfk8-FcTf4Hnpy5bJqk3UZn_PZ-snyudYynXFoF4GH-0jA-rqa8yM1IsJv1fEGJefdrQzoCqNfCaSTKW8yH54jCM5dpvRyFZxxMVmmOOsgN4C1',0,0),(7,'Mustafa','61907121',1,'Erkek','fm6l1kejQ8OBEhZfo7hNZP:APA91bGkxSbAYwh3ENWKRxykACbgfwD_roVMTEbcL09XpQw7AT96qXV2w-5r7ZP-Vj3e8zpxEKAWm6W_9wIZv0x6LiCKiJDV0vBvw6CamVZD-XHDCTqbsMWbf_5g9HpnYoLBr-BquEB5',0,0),(8,'Durdyyew Guwanch','61220566',1,'Erkek','skhdfbjshdbfjshbdfjhbsjfdhbjsdhfbjshdf',0,0),(9,'Murad','65557121',1,'Erkek','el1TXyCgTc-moTqGr2gAH9:APA91bFTdTNI6sMXYOJlVrPWGk0fwT922zKq_YOPyEEexdegmNPCHF8NUr6nay9SWY7N9AZDDssJrL_LL3HZtywUQ2hu7uFtkYiz8FBFS-eRirPL0xp9eJ_9LohC8GiGOmlB-a_b1uOc',0,0),(10,'Jemal','63012939',1,'Ayal','cADdGDvIQCSbYBZQIbrgDI:APA91bGdCaVN1aTo-WbhJ3DdOAkRlnsdZQS-D1wHpo-QrwKz5YFDTcS5PKx44825ebbVstOpQRptXtfueP-OB_AUTgO4C3uYQN1fLsEFQSw1n3C6strsN04E8Ky3nyJZfZO66dZjiGNp',0,0),(11,'jaa','61856271',1,'Erkek','dmerYhNAR5S2XCV6EiwCMv:APA91bFs0h12aG8v_HUlAFuqz_3Ev7Aej2DmqW8H29OHeZ5TrngDb8AP_buHBOwWs8X0_Y5zJkTZqWd4-Lu8j6pXlmNJnpCczmDbr1sUWgiqc2PFqJOTg2grwihZXgJlYz72f1KYh-cP',0,0),(12,'Atash Amangediyev ','63656506',1,'Erkek','cG80DmwzTNmeOpx4aBMce0:APA91bExqnbdt8J0xlquG5VPlDCxhNru-3jUAPEmV0JIyGCKwuB7WovYwNhrBKPwwjdEPYRnnupykFI0Eie3Jk2aakMmftbGh7ghex9X-GhlnXfE5GYuMReyCrG2oGGGMjbJRkqZ7xF8',0,0),(13,'Rahim Kabulow','64033084',1,'Erkek','dLGnl2f0Rwaj8WllSqV9xB:APA91bFBI50Rx1Sb6VgDRNOiRR6Z7Rtx_zvTl-VXo420tAZUwuon01E6In5zYhADWmZGuBt1XyiRPsKo6EJcIHKh9ckWziwmKgAwKy1qua9UyDRIeSlMZI6mhTJPIwq1pTUtKYkt82c7',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verif`
--

DROP TABLE IF EXISTS `verif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verif` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tel` text,
  `code` text,
  `timee` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verif`
--

LOCK TABLES `verif` WRITE;
/*!40000 ALTER TABLE `verif` DISABLE KEYS */;
INSERT INTO `verif` VALUES (192,'65557121','34021',1658476078667);
/*!40000 ALTER TABLE `verif` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zurnal`
--

DROP TABLE IF EXISTS `zurnal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zurnal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `nameRU` varchar(250) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `shop_tm` tinyint(1) NOT NULL DEFAULT '0',
  `shop_id` int NOT NULL,
  `our_logo` varchar(250) NOT NULL,
  `our_name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zurnal`
--

LOCK TABLES `zurnal` WRITE;
/*!40000 ALTER TABLE `zurnal` DISABLE KEYS */;
/*!40000 ALTER TABLE `zurnal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zurnal_items`
--

DROP TABLE IF EXISTS `zurnal_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zurnal_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `zurnal_id` int NOT NULL,
  `name` varchar(250) NOT NULL,
  `nameRU` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `descriptionRU` text NOT NULL,
  `photo` varchar(250) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zurnal_id` (`zurnal_id`),
  CONSTRAINT `zurnal_id` FOREIGN KEY (`zurnal_id`) REFERENCES `zurnal` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zurnal_items`
--

LOCK TABLES `zurnal_items` WRITE;
/*!40000 ALTER TABLE `zurnal_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `zurnal_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-21 14:16:23
