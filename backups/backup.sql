-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: partkeepr
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CachedImage`
--

DROP TABLE IF EXISTS `CachedImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CachedImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `originalId` int(11) NOT NULL,
  `originalType` varchar(255) NOT NULL,
  `cacheFile` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CachedImage`
--

LOCK TABLES `CachedImage` WRITE;
/*!40000 ALTER TABLE `CachedImage` DISABLE KEYS */;
INSERT INTO `CachedImage` VALUES (1,4,'footprint','/usr/share/partkeepr/PartKeepr/data/images/cache/9d6f1277e00c37a90f68ecf820931d84.png'),(2,4,'iclogo','/usr/share/partkeepr/PartKeepr/data/images/cache/e9212d49e35b610dd0bd892312e01124.png'),(3,5,'iclogo','/usr/share/partkeepr/PartKeepr/data/images/cache/dc19afbc5efffffb7b08a598c6e44b43.png'),(4,6,'iclogo','/usr/share/partkeepr/PartKeepr/data/images/cache/46dc5b03da399ab04cdeaeb89cb06a38.png'),(5,29,'footprint','/usr/share/partkeepr/PartKeepr/data/images/cache/b91a5a493f28814f01d675487b65a30c.png'),(6,30,'footprint','/usr/share/partkeepr/PartKeepr/data/images/cache/3e9c78445fec76d921d51d7ac41e284e.png'),(7,0,'part','/usr/share/partkeepr/PartKeepr/data/images/cache/ffe63a81b541915f0ee3443f6213092c.png'),(8,0,'part','/usr/share/partkeepr/PartKeepr/data/images/cache/1662e9e76df828f55b45bd1091542044.png');
/*!40000 ALTER TABLE `CachedImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CronLogger`
--

DROP TABLE IF EXISTS `CronLogger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CronLogger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastRunDate` datetime NOT NULL,
  `cronjob` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CronLogger`
--

LOCK TABLES `CronLogger` WRITE;
/*!40000 ALTER TABLE `CronLogger` DISABLE KEYS */;
INSERT INTO `CronLogger` VALUES (1,'2012-10-18 00:00:02','CreateStatisticSnapshot.php'),(2,'2012-10-18 00:00:10','UpdatePartCacheData.php'),(3,'2012-10-18 00:01:05','UpdateTipsOfTheDay.php'),(4,'2012-10-18 00:01:03','CheckForUpdates.php');
/*!40000 ALTER TABLE `CronLogger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Distributor`
--

DROP TABLE IF EXISTS `Distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Distributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` longtext,
  `url` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2559D8A65E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Distributor`
--

LOCK TABLES `Distributor` WRITE;
/*!40000 ALTER TABLE `Distributor` DISABLE KEYS */;
INSERT INTO `Distributor` VALUES (1,'To be determined',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Seeed Studio','','www.SeeedStudio','','','',''),(3,'DFRobot',NULL,NULL,NULL,NULL,NULL,NULL),(4,'XCJ Member: Spencer',NULL,NULL,NULL,NULL,NULL,NULL),(5,'XCJ Member: Hao Jiang (Edward)','','','','','',''),(6,'Taobao','','','','','','just a single generic entry for Taobo - please add specific details (url) in description for the specific part!'),(7,'Beijing Lu','','','','','','just a single generic entry for all the shops around Beijing Lu, including the electronic market - please add specific details (url) in description for the specific part!'),(8,'Mouser (China)','','http://www.mouser.cn/','','','',''),(9,'Mouser (international)','','http://www.mouser.com/','','','',''),(10,'Farnel','','farnell.com','','','',''),(11,'element14','','element14.com','','','',''),(12,'iTeadStudio','','www.iTeadStudio.com','','','',''),(13,'Recycled - Scavenged - item','','','','','',''),(14,'Optional - use for optional parts in a project! Set price to 0.001 if you want teh supplier to appear in project report!','','','','','',''),(15,'Tmall.com','','','','','','just a single generic entry for Tmall - please add specific details (url) in description for the specific part!'),(16,'Xinchejian','','','','','','');
/*!40000 ALTER TABLE `Distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Footprint`
--

DROP TABLE IF EXISTS `Footprint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7CF324945E237E06` (`name`),
  KEY `IDX_7CF3249412469DE2` (`category_id`),
  CONSTRAINT `FK_7CF3249412469DE2` FOREIGN KEY (`category_id`) REFERENCES `FootprintCategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Footprint`
--

LOCK TABLES `Footprint` WRITE;
/*!40000 ALTER TABLE `Footprint` DISABLE KEYS */;
INSERT INTO `Footprint` VALUES (1,3,'CBGA-32','32-Lead Ceramic Ball Grid Array'),(2,4,'FCBGA-576','576-Ball Ball Grid Array, Thermally Enhanced'),(3,5,'PBGA-119','119-Ball Plastic Ball Grid Array'),(4,5,'PBGA-169','169-Ball Plastic Ball Grid Array'),(5,5,'PBGA-225','225-Ball Plastic a Ball Grid Array'),(6,5,'PBGA-260','260-Ball Plastic Ball Grid Array'),(7,5,'PBGA-297','297-Ball Plastic Ball Grid Array'),(8,5,'PBGA-304','304-Lead Plastic Ball Grid Array'),(9,5,'PBGA-316','316-Lead Plastic Ball Grid Array'),(10,5,'PBGA-324','324-Ball Plastic Ball Grid Array'),(11,5,'PBGA-385','385-Lead Ball Grid Array'),(12,5,'PBGA-400','400-Ball Plastic Ball Grid Array'),(13,5,'PBGA-484','484-Ball Plastic Ball Grid Array'),(14,5,'PBGA-625','625-Ball Plastic Ball Grid Array'),(15,5,'PBGA-676','676-Ball Plastic Ball Grid Array'),(16,5,'SBGA-256','256-Ball Ball Grid Array, Thermally Enhanced'),(17,5,'SBGA-304','304-Ball Ball Grid Array, Thermally Enhanced'),(18,5,'SBGA-432','432-Ball Ball Grid Array, Thermally Enhanced'),(19,7,'CerDIP-8','8-Lead Ceramic Dual In-Line Package'),(20,7,'CerDIP-14','14-Lead Ceramic Dual In-Line Package'),(21,7,'CerDIP-16','16-Lead Ceramic Dual In-Line Package'),(22,7,'CerDIP-18','18-Lead Ceramic Dual In-Line Package'),(23,7,'CerDIP-20','20-Lead Ceramic Dual In-Line Package'),(24,7,'CerDIP-24 Narrow','24-Lead Ceramic Dual In-Line Package - Narrow Body'),(25,7,'CerDIP-24 Wide','24-Lead Ceramic Dual In-Line Package - Wide Body'),(26,7,'CerDIP-28','28-Lead Ceramic Dual In-Line Package'),(27,7,'CerDIP-40','40-Lead Ceramic Dual In-Line Package'),(28,8,'PDIP-8','8-Lead Plastic Dual In-Line Package'),(29,8,'PDIP-14','14-Lead Plastic Dual In-Line Package'),(30,8,'PDIP-16','16-Lead Plastic Dual In-Line Package'),(31,8,'PDIP-18','18-Lead Plastic Dual In-Line Package'),(32,8,'PDIP-20','20-Lead Plastic Dual In-Line Package'),(33,8,'PDIP-24','24-Lead Plastic Dual In-Line Package'),(34,8,'PDIP-28 Narrow','28-Lead Plastic Dual In-Line Package, Narrow Body'),(35,8,'PDIP-28 Wide','28-Lead Plastic Dual In-Line Package, Wide Body'),(36,9,'SOIC-N-EP-8','8-Lead Standard Small Outline Package, with Expose Pad'),(37,12,'TO220',NULL),(38,12,'TO220-3',NULL),(39,12,'TO92-3',NULL),(40,9,'RM2,5',NULL),(41,9,'RM5',NULL),(42,9,'RM7,5',NULL),(43,9,'RM10',NULL),(44,9,'ohne',NULL),(45,12,'TO220-7',NULL),(46,12,'TO3-3',NULL),(47,12,'TO3-4',NULL),(48,8,'DIP8',NULL),(49,9,'DIP14',NULL),(50,9,'DIP16',NULL),(51,9,'DIP18',NULL),(52,9,'DIP20',NULL),(53,8,'DIP6',NULL),(54,12,'TO39',NULL),(55,12,'TO18',NULL),(56,12,'TO126',NULL),(57,9,'DIP28',NULL),(58,9,'SOP28',NULL),(59,9,'SOIC20',NULL),(60,9,'P-DSO-20',NULL),(61,9,'SOIC16',NULL),(62,9,'SOIC14',NULL),(63,9,'P-SOJ-20',NULL),(64,10,'SIP8',NULL),(65,10,'SIP9',NULL),(66,10,'SIP4',NULL),(67,10,'SIP10',NULL),(68,10,'SIP6',NULL),(69,10,'SIP11',NULL),(70,10,'SIP7',NULL),(71,8,'DIP10',NULL),(72,12,'TO-251AA ',NULL),(73,8,'DIP40',NULL),(74,10,'SIP5',NULL),(75,9,'F-124',NULL),(76,12,'TO225A',NULL),(77,9,'DIP24',NULL),(78,12,'TO-66',NULL),(79,8,'DIP48',NULL),(80,9,'To be determined',NULL),(82,10,'test - how to delete?','');
/*!40000 ALTER TABLE `Footprint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintAttachment`
--

DROP TABLE IF EXISTS `FootprintAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `footprint_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7B7388A151364C98` (`footprint_id`),
  CONSTRAINT `FK_7B7388A151364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintAttachment`
--

LOCK TABLES `FootprintAttachment` WRITE;
/*!40000 ALTER TABLE `FootprintAttachment` DISABLE KEYS */;
INSERT INTO `FootprintAttachment` VALUES (1,1,'FootprintAttachment','486e9daf-e307-4158-8e89-3fa5314b2004','6438543BG_32_3.pdf','application/pdf',347689,'Outline'),(2,2,'FootprintAttachment','8caa2eff-f02b-4287-9e16-05b8acdeb78f','3130038348142876336BP_576.pdf','application/pdf',95611,'Outline'),(3,3,'FootprintAttachment','a393eaac-dcda-427f-a0c8-9cbba8b9b5c4','41287574715699B_119.pdf','application/pdf',286724,'Outline'),(4,3,'FootprintAttachment','fbf4fcc0-1a61-44f8-8c42-4d83d061e58f','37136694b_119.pdf','application/pdf',29418,'Footprint'),(5,4,'FootprintAttachment','504fb356-f4fb-4854-93b4-b823713a270b','4508238598123917727B_169.pdf','application/pdf',107183,'Outline'),(6,4,'FootprintAttachment','a8cefe7e-8f5e-4d82-9771-5b7bdcfbd68c','42256861b_169.pdf','application/pdf',37896,'Footprint'),(7,5,'FootprintAttachment','0a6047ca-e617-4bb8-b48b-1937379aa757','B_225_2.pdf','application/pdf',360349,'Outline'),(8,5,'FootprintAttachment','f4368655-5666-4880-8f92-3df45b3a8659','B-225-2.pdf','application/pdf',55347,'Footprint'),(9,6,'FootprintAttachment','4c9fd031-dee6-4d05-879f-d24f94cd6aca','4532729474093B_260.pdf','application/pdf',335023,'Outline'),(10,6,'FootprintAttachment','d38ef5da-ec0d-4230-84bb-0f732411beaf','655582610b_260.pdf','application/pdf',52451,'Footprint'),(11,7,'FootprintAttachment','fd5e2b8a-875d-4429-b9b1-b700316e584d','251630103B_297.pdf','application/pdf',314914,'Outline'),(12,8,'FootprintAttachment','8b80f95b-45a9-48e9-9542-14cf2e688dee','3641645393185830319B_304.pdf','application/pdf',100379,'Outline'),(13,8,'FootprintAttachment','06e4ac21-160f-4122-915a-da712d64e3cb','174089929b_304.pdf','application/pdf',66027,'Footprint'),(14,9,'FootprintAttachment','ff849480-31a8-4be9-8414-cd39a7b32efc','61868185924959B_316.pdf','application/pdf',170418,'Outline'),(15,10,'FootprintAttachment','b08d544c-833e-451e-80ca-bdb4a11cdb4c','454473177139443477109483B_324.pdf','application/pdf',74786,'Outline'),(16,10,'FootprintAttachment','bdca3756-74c7-4db0-aa8f-a4e6c49b1bd2','17779623b_324.pdf','application/pdf',61419,'Footprint'),(17,11,'FootprintAttachment','16ae12c4-d014-462c-9076-e88f6d4e1cca','45557425288079B_385.pdf','application/pdf',48085,'Outline'),(18,11,'FootprintAttachment','0598a530-f767-4dfe-a06f-83ed5e18679c','804295803b_385.pdf','application/pdf',77955,'Footprint'),(19,12,'FootprintAttachment','0aef15e4-88f6-4549-9278-686eff6d4d76','349373926B_400.pdf','application/pdf',24060,'Outline'),(20,13,'FootprintAttachment','6398cc80-f952-4519-a86c-283b46110907','3235251121324624786157688555B484.pdf','application/pdf',85981,'Outline'),(21,14,'FootprintAttachment','dfa95183-34bb-4c36-99a5-d31cc182a85a','45005548173527848192875606315B625.pdf','application/pdf',68538,'Outline'),(22,15,'FootprintAttachment','00137c64-6539-44dc-8c6d-19eb33cc02e0','B_676.pdf','application/pdf',84075,'Outline'),(23,16,'FootprintAttachment','11c8b2b6-aedf-4ab9-80f0-2c75fb57b97b','287254833BP_256.pdf','application/pdf',67136,'Outline'),(24,17,'FootprintAttachment','42362478-3ad6-4efb-ac6f-4a9704dc3328','3733895948083BP_304.pdf','application/pdf',75832,'Outline'),(25,18,'FootprintAttachment','e2f872c9-8537-46a2-84b3-3e9cd88e2aa7','99289205BP_432.pdf','application/pdf',86345,'Outline'),(26,19,'FootprintAttachment','75a4ce7f-b780-4492-b126-b73767bd2ead','3925655241313314758Q_8.pdf','application/pdf',56121,'Outline'),(27,19,'FootprintAttachment','779992e7-7e3c-496a-9d92-a207c10fc67d','q-8.pdf','application/pdf',14039,'Footprint'),(28,20,'FootprintAttachment','2b167fd0-0355-4990-b579-dbd678e63e5d','393665681442905251546090Q_14.pdf','application/pdf',65110,'Outline'),(29,20,'FootprintAttachment','774265e4-072f-4a73-ab14-b9550cf516aa','39808055q_14.pdf','application/pdf',14973,'Footprint'),(30,21,'FootprintAttachment','4be37350-0c45-4173-b046-adbc37027ad5','54083157002221Q_16.pdf','application/pdf',74625,'Outline'),(31,22,'FootprintAttachment','f07237c4-0cdc-4cf6-9e4b-0721818821e8','3949539816247344490Q_18.pdf','application/pdf',50279,'Outline'),(32,22,'FootprintAttachment','648c9513-bbf9-42ff-ae80-d890b26a9f1d','292506864q_18.pdf','application/pdf',15444,'Footprint'),(33,23,'FootprintAttachment','3c34c1bf-e5b4-4bb8-b0d3-54fa7264b3a3','50516416473314Q_20.pdf','application/pdf',50074,'Outline'),(34,23,'FootprintAttachment','1c839052-515f-4231-82d3-4908370acf13','434715247d_20.pdf','application/pdf',15776,'Footprint'),(35,24,'FootprintAttachment','beb2da40-beff-4d26-9e54-2c91c4e903ff','Q_24_1.pdf','application/pdf',17598,'Outline'),(36,24,'FootprintAttachment','c1d6f42e-0225-4605-b8ae-53a351a79fff','274999619q_24.pdf','application/pdf',16494,'Footprint'),(37,25,'FootprintAttachment','8d7dcec0-2505-402a-85ad-31e5948a027a','Q_24_2.pdf','application/pdf',25670,'Outline'),(38,26,'FootprintAttachment','829d466e-0061-4436-a28b-abc52d9d7183','4045339666127361303Q_28_2.pdf','application/pdf',57774,'Outline'),(39,26,'FootprintAttachment','98fa3882-e560-4242-81de-6b39cf88828f','165461283q_28.pdf','application/pdf',16941,'Footprint'),(40,27,'FootprintAttachment','71e3b498-63f9-4794-abd4-40e35b2dff81','281170859Q_40.pdf','application/pdf',50687,'Outline'),(41,28,'FootprintAttachment','add58819-c465-4505-a721-5672cffc7e53','N_8.pdf','application/pdf',63994,'Outline'),(42,28,'FootprintAttachment','48f9ff60-7374-40f2-b092-56fcef66cf13','n-8.pdf','application/pdf',14052,'Footprint'),(43,29,'FootprintAttachment','199697aa-82c1-4971-b928-77b06207653d','N_14.pdf','application/pdf',539673,'Outline'),(44,29,'FootprintAttachment','e9323a17-3249-4f7d-885d-3d20f95e2016','n-14.pdf','application/pdf',14680,'Footprint'),(45,30,'FootprintAttachment','7e496eb5-54ed-4ee2-a52a-70b972ac1dd8','44768431550332N_16.pdf','application/pdf',63211,'Outline'),(46,30,'FootprintAttachment','9917e090-2da0-4292-b5da-0a7777a4399d','59616100n_16.pdf','application/pdf',15137,'Footprint'),(47,31,'FootprintAttachment','fe400cb0-f2dd-4bed-a45f-5409e1d340f3','44930452931834N_18.pdf','application/pdf',267947,'Outline'),(48,31,'FootprintAttachment','a121bdda-1ec3-409c-8998-3a2195c04ca5','158309702n_18.pdf','application/pdf',15308,'Footprint'),(49,32,'FootprintAttachment','046042ab-3983-49ae-8d6a-69a10aaa205f','50601349676519N_20.pdf','application/pdf',66369,'Outline'),(50,32,'FootprintAttachment','0ea4e9de-207e-4578-86f7-3925f04e51d1','1012961n_20.pdf','application/pdf',15689,'Footprint'),(51,33,'FootprintAttachment','b5e62267-74a3-42a7-b3a0-b7fa171c361b','50726455539629N_24_1.pdf','application/pdf',67539,'Outline'),(52,33,'FootprintAttachment','cbeb7a7e-d8db-44d5-b90b-f94b18110e0a','94593761n_24.pdf','application/pdf',16299,'Footprint'),(53,34,'FootprintAttachment','a3b572ba-bd46-4cbe-b1f6-aaf8a4fe0ba2','70961940N_28_1.pdf','application/pdf',73898,'Outline'),(54,35,'FootprintAttachment','ef45d376-834b-4d61-b13c-b56626b8f617','50849324123784N_28_2.pdf','application/pdf',59327,'Outline'),(55,35,'FootprintAttachment','87ef4473-7f6d-4c35-99bc-528dfe651ba5','197005836n_28.pdf','application/pdf',16961,'Footprint'),(56,36,'FootprintAttachment','662c01df-49cb-4122-8a96-ef74d0e622ac','RD_8_1.pdf','application/pdf',62483,'FOO');
/*!40000 ALTER TABLE `FootprintAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintCategory`
--

DROP TABLE IF EXISTS `FootprintCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` longtext,
  `categoryPath` longtext,
  PRIMARY KEY (`id`),
  KEY `IDX_C026BA6ADA439252` (`lft`),
  KEY `IDX_C026BA6AD5E02D69` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintCategory`
--

LOCK TABLES `FootprintCategory` WRITE;
/*!40000 ALTER TABLE `FootprintCategory` DISABLE KEYS */;
INSERT INTO `FootprintCategory` VALUES (1,1,24,'Root Category','',NULL),(2,2,9,'BGA',NULL,'Root Category ➤ BGA'),(3,3,4,'CBGA',NULL,'Root Category ➤ BGA ➤ CBGA'),(4,5,6,'FCBGA',NULL,'Root Category ➤ BGA ➤ FCBGA'),(5,7,8,'PBGA',NULL,'Root Category ➤ BGA ➤ PBGA'),(6,10,15,'DIP',NULL,'Root Category ➤ DIP'),(7,11,12,'CERDIP',NULL,'Root Category ➤ DIP ➤ CERDIP'),(8,13,14,'PDIP',NULL,'Root Category ➤ DIP ➤ PDIP'),(9,16,17,'all other footprints (still has Imported)','please leave lower case \"all ...\" so this gets ordered at the end!','Root Category ➤ all other footprints (still has Imported)'),(10,18,19,'SIP, SIL, DIL headers','','Root Category ➤ SIP, SIL, DIL headers'),(11,20,21,'SMD','','Root Category ➤ SMD'),(12,22,23,'all other Semiconductors','So if it is not a BGA, or DIP, or SMD then it goes here!\n\nPlease leave lower case \"all ...\" so this gets ordered at the end!','Root Category ➤ all other Semiconductors');
/*!40000 ALTER TABLE `FootprintCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FootprintImage`
--

DROP TABLE IF EXISTS `FootprintImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FootprintImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `footprint_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_3B22699151364C98` (`footprint_id`),
  CONSTRAINT `FK_3B22699151364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FootprintImage`
--

LOCK TABLES `FootprintImage` WRITE;
/*!40000 ALTER TABLE `FootprintImage` DISABLE KEYS */;
INSERT INTO `FootprintImage` VALUES (1,1,'footprint','9439bcd3-847a-4ff2-8e67-79f8cccf0023','CBGA-32.png','image/png',23365),(2,2,'footprint','0f23845f-7d72-494b-a949-70fc4235c4c1','FCBGA-576.png','image/png',47861),(3,3,'footprint','3f43e642-ec21-4cff-9a98-e0520a419198','PBGA-119.png','image/png',32537),(4,4,'footprint','76881c54-c1fd-4d99-80cd-ba7cfef7a2b5','PBGA-169.png','image/png',36699),(5,5,'footprint','1feba547-6931-4e91-aa88-44762d56ae59','PBGA-225.png','image/png',39366),(6,6,'footprint','e3091d4b-3525-4b6c-ab0f-9fb47c8d7cff','PBGA-260.png','image/png',61202),(7,7,'footprint','2863be6a-5554-4b5a-9d96-c8703f1a9813','PBGA-297.png','image/png',68013),(8,8,'footprint','18733563-363b-4984-afdf-e0307cefc5ae','PBGA-304.png','image/png',55833),(9,9,'footprint','2479abe4-71a6-463a-bc11-f8e629d32948','PBGA-316.png','image/png',55996),(10,10,'footprint','79fd476d-d977-4381-8d5a-0cc65c35de91','PBGA-324.png','image/png',44882),(11,11,'footprint','1d02f15e-e199-497b-b451-4ba653c273c1','PBGA-385.png','image/png',35146),(12,12,'footprint','9711ca83-82aa-4a41-ae9f-e6911cd6a995','PBGA-400.png','image/png',67933),(13,13,'footprint','b15507da-d76d-4e3b-a783-3a991ebf25f6','PBGA-484.png','image/png',49851),(14,14,'footprint','03c6de1b-27f3-43f3-b2c4-37cbec8c341a','PBGA-625.png','image/png',65307),(15,15,'footprint','28933d7a-022b-4ec7-ac48-2b5d4b7fa242','PBGA-676.png','image/png',54708),(16,16,'footprint','f21c52d1-15e0-49ec-a39a-9ee79cca2594','SBGA-256.png','image/png',48636),(17,17,'footprint','d1d29bb3-4982-442d-931c-4e08b065fc9c','SBGA-304.png','image/png',51944),(18,18,'footprint','2a7970c3-75b2-4ac1-b37b-6f9f4b6ca3cc','SBGA-432.png','image/png',63247),(19,19,'footprint','e64c4422-548a-46fa-a992-68a63206dc53','CERDIP-8.png','image/png',13544),(20,20,'footprint','5bbea4e9-a715-4d7c-b9f0-695a68bd48d6','CERDIP-14.png','image/png',14226),(21,21,'footprint','2f0d59ea-2f7c-4690-af8c-8e0a5f3411dd','CERDIP-16.png','image/png',14576),(22,22,'footprint','e4647113-cede-4d12-9bb6-ed45a3a58017','CERDIP-18.png','image/png',9831),(23,23,'footprint','ccacb70c-d66a-4a45-8b1b-0b6844b79114','CERDIP-20.png','image/png',10209),(24,24,'footprint','598439c3-5876-4cdb-a476-157fd053c11b','CERDIP-24-N.png','image/png',11582),(25,25,'footprint','37173a24-f938-4a27-811c-13df568bd1a3','CERDIP-24-W.png','image/png',12407),(26,26,'footprint','df5997e0-0915-4b58-8405-1730fb9bae40','CERDIP-28.png','image/png',12233),(27,27,'footprint','ba6a8366-2f93-44ee-a55a-5f06094b28f4','CERDIP-40.png','image/png',12421),(28,28,'footprint','0ac94108-7f7e-4e3b-aacd-92e2c142a322','PDIP-8.png','image/png',13537),(29,29,'footprint','294f7c85-9963-4889-a268-faeafb3cbb52','PDIP-14.png','image/png',13779),(30,30,'footprint','b5e40d0f-42a7-4242-902b-c524209874d5','PDIP-16.png','image/png',18305),(31,31,'footprint','5b54971f-6c11-4764-b9e0-305f3dd17cdc','PDIP-18.png','image/png',14893),(32,32,'footprint','536e3e43-f96e-4f0a-a82b-d3b52f8bf141','PDIP-20.png','image/png',14429),(33,33,'footprint','4eef1e35-5a75-4aab-a11d-59ee7b440cdc','PDIP-24.png','image/png',14647),(34,34,'footprint','31276da9-882b-4d5a-912e-1d67df0e25fa','PDIP-28-N.png','image/png',18703),(35,35,'footprint','d2631675-bdeb-4897-894c-ba1dcec2faf6','PDIP-28-W.png','image/png',15728);
/*!40000 ALTER TABLE `FootprintImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manufacturer`
--

DROP TABLE IF EXISTS `Manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` longtext,
  `url` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` longtext,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_253B3D245E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manufacturer`
--

LOCK TABLES `Manufacturer` WRITE;
/*!40000 ALTER TABLE `Manufacturer` DISABLE KEYS */;
INSERT INTO `Manufacturer` VALUES (1,'Integrated Circuit Designs',NULL,NULL,NULL,NULL,NULL,NULL),(2,'ACTEL',NULL,NULL,NULL,NULL,NULL,NULL),(3,'ALTINC',NULL,NULL,NULL,NULL,NULL,NULL),(4,'Aeroflex','','','','','',''),(5,'Agilent Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(6,'AKM Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(7,'Alesis Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(8,'ALi (Acer Laboratories Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Allayer Communications',NULL,NULL,NULL,NULL,NULL,NULL),(10,'Allegro Microsystems',NULL,NULL,NULL,NULL,NULL,NULL),(11,'Alliance Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(12,'Alpha Industries',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Alpha Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(14,'Altera',NULL,NULL,NULL,NULL,NULL,NULL),(15,'Advanced Micro Devices (AMD)',NULL,NULL,NULL,NULL,NULL,NULL),(16,'American Microsystems, Inc. (AMI)',NULL,NULL,NULL,NULL,NULL,NULL),(17,'Amic Technology',NULL,NULL,NULL,NULL,NULL,NULL),(18,'Amphus',NULL,NULL,NULL,NULL,NULL,NULL),(19,'Anachip Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(20,'ANADIGICs',NULL,NULL,NULL,NULL,NULL,NULL),(21,'Analog Devices',NULL,NULL,NULL,NULL,NULL,NULL),(22,'Analog Systems',NULL,NULL,NULL,NULL,NULL,NULL),(23,'Anchor Chips',NULL,NULL,NULL,NULL,NULL,NULL),(24,'Apex Microtechnology',NULL,NULL,NULL,NULL,NULL,NULL),(25,'ARK Logic',NULL,NULL,NULL,NULL,NULL,NULL),(26,'ASD',NULL,NULL,NULL,NULL,NULL,NULL),(27,'Astec Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(28,'ATC (Analog Technologie)',NULL,NULL,NULL,NULL,NULL,NULL),(29,'ATecoM',NULL,NULL,NULL,NULL,NULL,NULL),(30,'ATI Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(31,'Atmel',NULL,NULL,NULL,NULL,NULL,NULL),(32,'AT&T',NULL,NULL,NULL,NULL,NULL,NULL),(33,'AudioCodes',NULL,NULL,NULL,NULL,NULL,NULL),(34,'Aura Vision',NULL,NULL,NULL,NULL,NULL,NULL),(35,'Aureal',NULL,NULL,NULL,NULL,NULL,NULL),(36,'Austin Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(37,'Avance Logic',NULL,NULL,NULL,NULL,NULL,NULL),(38,'Bel Fuse',NULL,NULL,NULL,NULL,NULL,NULL),(39,'Benchmarq Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(40,'BI Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(41,'Bowmar/White',NULL,NULL,NULL,NULL,NULL,NULL),(42,'Brightflash',NULL,NULL,NULL,NULL,NULL,NULL),(43,'Broadcom',NULL,NULL,NULL,NULL,NULL,NULL),(44,'Brooktree(now Rockwell)',NULL,NULL,NULL,NULL,NULL,NULL),(45,'Burr Brown',NULL,NULL,NULL,NULL,NULL,NULL),(46,'California Micro Devices',NULL,NULL,NULL,NULL,NULL,NULL),(47,'Calogic',NULL,NULL,NULL,NULL,NULL,NULL),(48,'Catalyst Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(49,'Centon Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(50,'Ceramate Technical',NULL,NULL,NULL,NULL,NULL,NULL),(51,'Cherry Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(52,'Chipcon AS',NULL,NULL,NULL,NULL,NULL,NULL),(53,'Chips',NULL,NULL,NULL,NULL,NULL,NULL),(54,'Chrontel',NULL,NULL,NULL,NULL,NULL,NULL),(55,'Cirrus Logic',NULL,NULL,NULL,NULL,NULL,NULL),(56,'ComCore Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(57,'Conexant',NULL,NULL,NULL,NULL,NULL,NULL),(58,'Cosmo Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(59,'Chrystal',NULL,NULL,NULL,NULL,NULL,NULL),(60,'Cygnal',NULL,NULL,NULL,NULL,NULL,NULL),(61,'Cypress Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(62,'Cyrix Corporation',NULL,NULL,NULL,NULL,NULL,NULL),(63,'Daewoo Electronics Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(64,'Dallas Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(65,'Davicom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(66,'Data Delay Devices',NULL,NULL,NULL,NULL,NULL,NULL),(67,'Diamond Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(68,'DIOTEC',NULL,NULL,NULL,NULL,NULL,NULL),(69,'DTC Data Technology',NULL,NULL,NULL,NULL,NULL,NULL),(70,'DVDO',NULL,NULL,NULL,NULL,NULL,NULL),(71,'EG&G',NULL,NULL,NULL,NULL,NULL,NULL),(72,'Elan Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(73,'ELANTEC',NULL,NULL,NULL,NULL,NULL,NULL),(74,'Electronic Arrays',NULL,NULL,NULL,NULL,NULL,NULL),(75,'Elite Flash Storage Technology Inc. (EFST)',NULL,NULL,NULL,NULL,NULL,NULL),(76,'EM Microelectronik - Marin',NULL,NULL,NULL,NULL,NULL,NULL),(77,'Enhanced Memory Systems',NULL,NULL,NULL,NULL,NULL,NULL),(78,'Ensoniq Corp',NULL,NULL,NULL,NULL,NULL,NULL),(79,'EON Silicon Devices',NULL,NULL,NULL,NULL,NULL,NULL),(80,'Epson',NULL,NULL,NULL,NULL,NULL,NULL),(81,'Ericsson',NULL,NULL,NULL,NULL,NULL,NULL),(82,'ESS Technology',NULL,NULL,NULL,NULL,NULL,NULL),(83,'Electronic Technology',NULL,NULL,NULL,NULL,NULL,NULL),(84,'EXAR',NULL,NULL,NULL,NULL,NULL,NULL),(85,'Excel Semiconductor Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(86,'Fairschild',NULL,NULL,NULL,NULL,NULL,NULL),(87,'Freescale Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(88,'Fujitsu',NULL,NULL,NULL,NULL,NULL,NULL),(89,'Galileo Technology',NULL,NULL,NULL,NULL,NULL,NULL),(90,'Galvantech',NULL,NULL,NULL,NULL,NULL,NULL),(91,'GEC Plessey',NULL,NULL,NULL,NULL,NULL,NULL),(92,'Gennum',NULL,NULL,NULL,NULL,NULL,NULL),(93,'General Electric (Harris)',NULL,NULL,NULL,NULL,NULL,NULL),(94,'General Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(95,'G-Link Technology',NULL,NULL,NULL,NULL,NULL,NULL),(96,'Goal Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(97,'Goldstar',NULL,NULL,NULL,NULL,NULL,NULL),(98,'Gould',NULL,NULL,NULL,NULL,NULL,NULL),(99,'Greenwich Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(100,'General Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(101,'Harris Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(102,'VEB',NULL,NULL,NULL,NULL,NULL,NULL),(103,'Hitachi Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(104,'Holtek',NULL,NULL,NULL,NULL,NULL,NULL),(105,'Hewlett Packard',NULL,NULL,NULL,NULL,NULL,NULL),(106,'Hualon',NULL,NULL,NULL,NULL,NULL,NULL),(107,'Hynix Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(108,'Hyundai',NULL,NULL,NULL,NULL,NULL,NULL),(109,'IC Design',NULL,NULL,NULL,NULL,NULL,NULL),(110,'Integrated Circuit Systems (ICS)',NULL,NULL,NULL,NULL,NULL,NULL),(111,'IC - Haus',NULL,NULL,NULL,NULL,NULL,NULL),(112,'ICSI (Integrated Circuit Solution Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(113,'I-Cube',NULL,NULL,NULL,NULL,NULL,NULL),(114,'IC Works',NULL,NULL,NULL,NULL,NULL,NULL),(115,'Integrated Device Technology (IDT)',NULL,NULL,NULL,NULL,NULL,NULL),(116,'IGS Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(117,'IMPALA Linear',NULL,NULL,NULL,NULL,NULL,NULL),(118,'IMP',NULL,NULL,NULL,NULL,NULL,NULL),(119,'Infineon',NULL,NULL,NULL,NULL,NULL,NULL),(120,'INMOS',NULL,NULL,NULL,NULL,NULL,NULL),(121,'Intel',NULL,NULL,NULL,NULL,NULL,NULL),(122,'Intersil',NULL,NULL,NULL,NULL,NULL,NULL),(123,'International Rectifier',NULL,NULL,NULL,NULL,NULL,NULL),(124,'Information Storage Devices',NULL,NULL,NULL,NULL,NULL,NULL),(125,'ISSI (Integrated Silicon Solution, Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(126,'Integrated Technology Express',NULL,NULL,NULL,NULL,NULL,NULL),(127,'ITT Semiconductor (Micronas Intermetall)',NULL,NULL,NULL,NULL,NULL,NULL),(128,'IXYS',NULL,NULL,NULL,NULL,NULL,NULL),(129,'Korea Electronics (KEC)',NULL,NULL,NULL,NULL,NULL,NULL),(130,'Kota Microcircuits',NULL,NULL,NULL,NULL,NULL,NULL),(131,'Lattice Semiconductor Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(132,'Lansdale Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(133,'Level One Communications',NULL,NULL,NULL,NULL,NULL,NULL),(134,'LG Semicon (Lucky Goldstar Electronic Co.)',NULL,NULL,NULL,NULL,NULL,NULL),(135,'Linear Technology',NULL,NULL,NULL,NULL,NULL,NULL),(136,'Linfinity Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(137,'Lite-On',NULL,NULL,NULL,NULL,NULL,NULL),(138,'Lucent Technologies (AT&T Microelectronics)',NULL,NULL,NULL,NULL,NULL,NULL),(139,'Macronix International',NULL,NULL,NULL,NULL,NULL,NULL),(140,'Marvell Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(141,'Matsushita Panasonic',NULL,NULL,NULL,NULL,NULL,NULL),(142,'Maxim Dallas',NULL,NULL,NULL,NULL,NULL,NULL),(143,'Media Vision',NULL,NULL,NULL,NULL,NULL,NULL),(144,'Microchip (Arizona Michrochip Technology)',NULL,NULL,NULL,NULL,NULL,NULL),(145,'Matra MHS',NULL,NULL,NULL,NULL,NULL,NULL),(146,'Micrel Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(147,'Micronas',NULL,NULL,NULL,NULL,NULL,NULL),(148,'Micronix Integrated Systems',NULL,NULL,NULL,NULL,NULL,NULL),(149,'Micron Technology, Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(150,'Microsemi',NULL,NULL,NULL,NULL,NULL,NULL),(151,'Mini-Circuits',NULL,NULL,NULL,NULL,NULL,NULL),(152,'Mitel Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(153,'Mitsubishi Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(154,'Micro Linear',NULL,NULL,NULL,NULL,NULL,NULL),(155,'MMI (Monolithic Memories, Inc.)',NULL,NULL,NULL,NULL,NULL,NULL),(156,'Mosaic Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(157,'Mosel Vitelic',NULL,NULL,NULL,NULL,NULL,NULL),(158,'MOS Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(159,'Mostek',NULL,NULL,NULL,NULL,NULL,NULL),(160,'MoSys',NULL,NULL,NULL,NULL,NULL,NULL),(161,'Motorola',NULL,NULL,NULL,NULL,NULL,NULL),(162,'Microtune',NULL,NULL,NULL,NULL,NULL,NULL),(163,'M-Systems',NULL,NULL,NULL,NULL,NULL,NULL),(164,'Murata Manufacturing',NULL,NULL,NULL,NULL,NULL,NULL),(165,'MWave (IBM)',NULL,NULL,NULL,NULL,NULL,NULL),(166,'Myson Technology',NULL,NULL,NULL,NULL,NULL,NULL),(167,'NEC Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(168,'NexFlash Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(169,'New Japan Radio',NULL,NULL,NULL,NULL,NULL,NULL),(170,'National Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(171,'NVidia Corporation',NULL,NULL,NULL,NULL,NULL,NULL),(172,'Oak Technology',NULL,NULL,NULL,NULL,NULL,NULL),(173,'Oki Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(174,'Opti',NULL,NULL,NULL,NULL,NULL,NULL),(175,'Orbit Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(176,'Oren Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(177,'Performance Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(178,'Pericom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(179,'PhaseLink Laboratories',NULL,NULL,NULL,NULL,NULL,NULL),(180,'Philips Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(181,'PLX Technology',NULL,NULL,NULL,NULL,NULL,NULL),(182,'PMC- Sierra',NULL,NULL,NULL,NULL,NULL,NULL),(183,'Precision Monolithics',NULL,NULL,NULL,NULL,NULL,NULL),(184,'Princeton Technology',NULL,NULL,NULL,NULL,NULL,NULL),(185,'PowerSmart',NULL,NULL,NULL,NULL,NULL,NULL),(186,'QuickLogic',NULL,NULL,NULL,NULL,NULL,NULL),(187,'Qlogic',NULL,NULL,NULL,NULL,NULL,NULL),(188,'Quality Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(189,'Rabbit Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(190,'Ramtron International Co.',NULL,NULL,NULL,NULL,NULL,NULL),(191,'Raytheon Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(192,'RCA Solid State',NULL,NULL,NULL,NULL,NULL,NULL),(193,'Realtek Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(194,'Rectron',NULL,NULL,NULL,NULL,NULL,NULL),(195,'Rendition',NULL,NULL,NULL,NULL,NULL,NULL),(196,'Renesas Technology',NULL,NULL,NULL,NULL,NULL,NULL),(197,'Rockwell',NULL,NULL,NULL,NULL,NULL,NULL),(198,'Rohm Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(199,'S3',NULL,NULL,NULL,NULL,NULL,NULL),(200,'Sage',NULL,NULL,NULL,NULL,NULL,NULL),(201,'Saifun Semiconductors Ltd.',NULL,NULL,NULL,NULL,NULL,NULL),(202,'Sames',NULL,NULL,NULL,NULL,NULL,NULL),(203,'Samsung',NULL,NULL,NULL,NULL,NULL,NULL),(204,'Sanken',NULL,NULL,NULL,NULL,NULL,NULL),(205,'Sanyo',NULL,NULL,NULL,NULL,NULL,NULL),(206,'Scenix',NULL,NULL,NULL,NULL,NULL,NULL),(207,'Samsung Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(208,'SEEQ Technology',NULL,NULL,NULL,NULL,NULL,NULL),(209,'Seiko Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(210,'Semtech',NULL,NULL,NULL,NULL,NULL,NULL),(211,'SGS-Ates',NULL,NULL,NULL,NULL,NULL,NULL),(212,'SGS-Thomson Microelectonics ST-M)',NULL,NULL,NULL,NULL,NULL,NULL),(213,'Sharp Microelectronics (USA)',NULL,NULL,NULL,NULL,NULL,NULL),(214,'Shindengen',NULL,NULL,NULL,NULL,NULL,NULL),(215,'Siemens Microelectronics, Inc.',NULL,NULL,NULL,NULL,NULL,NULL),(216,'Sierra',NULL,NULL,NULL,NULL,NULL,NULL),(217,'Sigma Tel',NULL,NULL,NULL,NULL,NULL,NULL),(218,'Signetics',NULL,NULL,NULL,NULL,NULL,NULL),(219,'Silicon Laboratories',NULL,NULL,NULL,NULL,NULL,NULL),(220,'Silicon Magic',NULL,NULL,NULL,NULL,NULL,NULL),(221,'Simtec Corp.',NULL,NULL,NULL,NULL,NULL,NULL),(222,'Siliconix',NULL,NULL,NULL,NULL,NULL,NULL),(223,'Siliconians',NULL,NULL,NULL,NULL,NULL,NULL),(224,'Sipex',NULL,NULL,NULL,NULL,NULL,NULL),(225,'Silicon Integrated Systems',NULL,NULL,NULL,NULL,NULL,NULL),(226,'SMC',NULL,NULL,NULL,NULL,NULL,NULL),(227,'Standard Microsystems',NULL,NULL,NULL,NULL,NULL,NULL),(228,'Sony Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(229,'Space Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(230,'Spectek',NULL,NULL,NULL,NULL,NULL,NULL),(231,'Signal Processing Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(232,'Solid State Scientific',NULL,NULL,NULL,NULL,NULL,NULL),(233,'Silicon Storage Technology (SST)',NULL,NULL,NULL,NULL,NULL,NULL),(234,'STMicroelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(235,'SUMMIT Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(236,'Synergy Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(237,'Synertek',NULL,NULL,NULL,NULL,NULL,NULL),(238,'Taiwan Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(239,'TDK Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(240,'Teccor Electronics',NULL,NULL,NULL,NULL,NULL,NULL),(241,'TelCom Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(242,'Teledyne',NULL,NULL,NULL,NULL,NULL,NULL),(243,'Telefunken',NULL,NULL,NULL,NULL,NULL,NULL),(244,'Teltone',NULL,NULL,NULL,NULL,NULL,NULL),(245,'Thomson-CSF',NULL,NULL,NULL,NULL,NULL,NULL),(246,'Texas Instruments',NULL,NULL,NULL,NULL,NULL,NULL),(247,'Toko Amerika',NULL,NULL,NULL,NULL,NULL,NULL),(248,'Toshiba (US)',NULL,NULL,NULL,NULL,NULL,NULL),(249,'Trident',NULL,NULL,NULL,NULL,NULL,NULL),(250,'TriQuint Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(251,'Triscend',NULL,NULL,NULL,NULL,NULL,NULL),(252,'Tseng Labs',NULL,NULL,NULL,NULL,NULL,NULL),(253,'Tundra',NULL,NULL,NULL,NULL,NULL,NULL),(254,'Turbo IC',NULL,NULL,NULL,NULL,NULL,NULL),(255,'Ubicom',NULL,NULL,NULL,NULL,NULL,NULL),(256,'United Microelectronics Corp (UMC)',NULL,NULL,NULL,NULL,NULL,NULL),(257,'Unitrode',NULL,NULL,NULL,NULL,NULL,NULL),(258,'USAR Systems',NULL,NULL,NULL,NULL,NULL,NULL),(259,'United Technologies Microelectronics Center (UTMC)',NULL,NULL,NULL,NULL,NULL,NULL),(260,'Utron',NULL,NULL,NULL,NULL,NULL,NULL),(261,'V3 Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(262,'Vadem',NULL,NULL,NULL,NULL,NULL,NULL),(263,'Vanguard International Semiconductor',NULL,NULL,NULL,NULL,NULL,NULL),(264,'Vantis',NULL,NULL,NULL,NULL,NULL,NULL),(265,'Via Technologies',NULL,NULL,NULL,NULL,NULL,NULL),(266,'Virata',NULL,NULL,NULL,NULL,NULL,NULL),(267,'Vishay',NULL,NULL,NULL,NULL,NULL,NULL),(268,'Vision Tech',NULL,NULL,NULL,NULL,NULL,NULL),(269,'Vitelic',NULL,NULL,NULL,NULL,NULL,NULL),(270,'VLSI Technology',NULL,NULL,NULL,NULL,NULL,NULL),(271,'Volterra',NULL,NULL,NULL,NULL,NULL,NULL),(272,'VTC',NULL,NULL,NULL,NULL,NULL,NULL),(273,'Waferscale Integration (WSI)',NULL,NULL,NULL,NULL,NULL,NULL),(274,'Western Digital',NULL,NULL,NULL,NULL,NULL,NULL),(275,'Weitek',NULL,NULL,NULL,NULL,NULL,NULL),(276,'Winbond',NULL,NULL,NULL,NULL,NULL,NULL),(277,'Wofson Microelectronics',NULL,NULL,NULL,NULL,NULL,NULL),(278,'Xwmics',NULL,NULL,NULL,NULL,NULL,NULL),(279,'Xicor',NULL,NULL,NULL,NULL,NULL,NULL),(280,'Xilinx',NULL,NULL,NULL,NULL,NULL,NULL),(281,'Yamaha',NULL,NULL,NULL,NULL,NULL,NULL),(282,'Zetex Semiconductors',NULL,NULL,NULL,NULL,NULL,NULL),(283,'Zilog',NULL,NULL,NULL,NULL,NULL,NULL),(284,'ZMD (Zentrum Mikroelektronik Dresden)',NULL,NULL,NULL,NULL,NULL,NULL),(285,'Zoran',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ManufacturerICLogo`
--

DROP TABLE IF EXISTS `ManufacturerICLogo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ManufacturerICLogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3F1EF213A23B42D` (`manufacturer_id`),
  CONSTRAINT `FK_3F1EF213A23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `Manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ManufacturerICLogo`
--

LOCK TABLES `ManufacturerICLogo` WRITE;
/*!40000 ALTER TABLE `ManufacturerICLogo` DISABLE KEYS */;
INSERT INTO `ManufacturerICLogo` VALUES (1,1,'iclogo','8e44dd99-9782-4e89-a2a2-8133b4af6bc6','acer.png','image/png',2195),(2,2,'iclogo','d1ca9edd-6ab3-491d-a064-7add4994a26e','actel.png','image/png',5003),(3,3,'iclogo','eb50856a-7a66-430a-b898-f39d3950f871','advldev.png','image/png',1835),(4,4,'iclogo','400d0fec-f832-4b9d-ba26-f5192c250144','aeroflex1.png','image/png',9649),(5,4,'iclogo','1064f08d-4426-48cf-8022-f9d15a8588d8','aeroflex2.png','image/png',4562),(6,5,'iclogo','d4ae3d16-66ac-41df-a362-a66e5a1dcd5d','agilent.png','image/png',5264),(7,6,'iclogo','40607e90-afc4-42a0-aa56-43b2297c26fd','akm.png','image/png',2204),(8,7,'iclogo','47a820c1-20e9-48f5-97c8-de646687adc4','alesis.png','image/png',1475),(9,8,'iclogo','1cb3da90-8ca2-4963-8505-def6488d6f53','ali1.png','image/png',2462),(10,8,'iclogo','12614736-8aea-4637-aa30-f370d00b7e4a','ali2.png','image/png',1784),(11,9,'iclogo','12eab983-56e0-4bc0-82d7-d125c3f89292','allayer.png','image/png',1869),(12,10,'iclogo','1de3b145-4746-4501-af00-fe07204d8e4e','allegro.png','image/png',1475),(13,11,'iclogo','b523dd89-e4d9-415e-8b4e-6ec81318852e','alliance.png','image/png',1949),(14,12,'iclogo','9cd87b1a-246e-423a-95a8-d47524fd5a97','alphaind.png','image/png',1403),(15,13,'iclogo','4a1c3757-583b-456c-9034-0022ef74f943','alphamic.png','image/png',2989),(16,13,'iclogo','c5aa4188-d47d-4e9c-bb3b-6f8a62b30d1b','alpha.png','image/png',1534),(17,14,'iclogo','472e1366-afed-4bb1-aca9-6557bf0474aa','altera.png','image/png',4064),(18,15,'iclogo','035aea78-607f-40ce-a0f1-cd464716d6ff','amd.png','image/png',1709),(19,16,'iclogo','56b8dcb3-c229-495c-af9b-c73168b6ffbf','ami1.png','image/png',2399),(20,16,'iclogo','c283a356-cf1d-44cb-9827-4494133a9b40','ami2.png','image/png',1706),(21,17,'iclogo','dbbd0a1f-74f9-4f14-b547-1cd0e63bca5a','amic.png','image/png',2228),(22,18,'iclogo','f00e9924-56f0-413e-88b1-b2916a91e06a','ampus.png','image/png',6150),(23,19,'iclogo','ed052eb7-48c9-4f44-af61-3f45e8906971','anachip.png','image/png',3549),(24,20,'iclogo','44892920-70af-4e52-bdd0-dd05b654527a','anadigic.png','image/png',5147),(25,21,'iclogo','0183c7a2-d733-4152-a0aa-01075b07b335','analog1.png','image/png',1262),(26,21,'iclogo','bad8f69c-baa1-45be-b3d4-345d7546fde4','analog.png','image/png',1403),(27,22,'iclogo','fbf62556-bcca-45c5-be2d-72693d96d828','anasys.png','image/png',3309),(28,23,'iclogo','92e42526-a920-4262-a1db-c2ac59c557b1','anchorch.png','image/png',1475),(29,24,'iclogo','2a82e1ea-2d34-4a5f-adfe-4da04fe3635d','apex1.png','image/png',2627),(30,24,'iclogo','5b670dce-564a-4140-9597-e5950051758c','apex.png','image/png',3974),(31,25,'iclogo','f6911b5d-9c13-4db2-a1c4-2f6bb574fc53','ark.png','image/png',2089),(32,26,'iclogo','70aa05f5-d3ad-4c71-91d1-1bca9090ccba','asd.png','image/png',5024),(33,27,'iclogo','da08c721-0909-4619-b0a9-bffb37073c78','astec.png','image/png',3369),(34,28,'iclogo','a59f7326-b095-485e-b119-c6cde7f1f333','atc.png','image/png',8660),(35,29,'iclogo','3bf6139c-9d79-47fc-9488-641613013f4f','atecom.png','image/png',1709),(36,30,'iclogo','a22030b3-592c-40aa-ad07-66c0e7803ea4','ati.png','image/png',2630),(37,31,'iclogo','0b23b747-ef29-4ab3-8b2a-f14c26daa31a','atmel.png','image/png',2843),(38,32,'iclogo','59ae4b5f-5e28-4d27-a10d-a98ed1409d0e','att.png','image/png',2816),(39,33,'iclogo','e8a09981-807e-43ff-a46a-09e7665a347f','audiocod.png','image/png',2429),(40,34,'iclogo','38261c2a-8e20-48fb-a99f-c957fd9eee8a','auravis.png','image/png',2281),(41,35,'iclogo','8b52b84f-5c38-482c-ac5a-709e4023411a','aureal.png','image/png',2109),(42,36,'iclogo','8bfde7c7-5ab8-46ea-aec7-b3771de36417','austin.png','image/png',2464),(43,37,'iclogo','6470ed7d-1a8a-4ee1-bac8-54e2aa725958','averlog.png','image/png',1552),(44,38,'iclogo','42a7ed49-bef1-4b63-ab9a-2c0f2c1741f6','belfuse.png','image/png',2204),(45,39,'iclogo','2dc55b41-2d43-4ec2-816c-c109f13c7db4','benchmrq.png','image/png',1370),(46,40,'iclogo','23cdcb89-9a26-4fc3-b700-90fdf50c4274','bi.png','image/png',2008),(47,41,'iclogo','060f52ce-02ae-4596-a00d-3d4a627007c0','bowmar_white.png','image/png',4652),(48,42,'iclogo','198f835b-e623-4765-bb42-5c7e0f715b13','bright.png','image/png',6839),(49,43,'iclogo','3db3b5b8-2323-4d7a-8e7d-0261e1eb8f50','broadcom.png','image/png',6056),(50,44,'iclogo','5306411c-0c6a-4532-832e-e8dc8d2d4992','brooktre.png','image/png',1364),(51,45,'iclogo','d165c03c-9e30-4808-9fd8-aa96230b5779','burrbrwn.png','image/png',3563),(52,46,'iclogo','ce85b9d1-91b1-41bc-b832-9ef411834ebf','calmicro.png','image/png',2109),(53,47,'iclogo','4bb9b65a-2a34-4f1f-b448-6f24f6f2bb76','calogic.png','image/png',3367),(54,48,'iclogo','5d82187c-8197-4dd7-bc61-bdea4e33a08a','catalys1.png','image/png',1922),(55,48,'iclogo','21120630-ba04-4fa3-a2d1-c46b4e28f899','catalyst.png','image/png',2228),(56,49,'iclogo','9b0aef30-7927-4393-8fd0-1a15fd4f8c9e','ccube.png','image/png',1309),(57,50,'iclogo','10d6065b-43b5-41cc-9499-5997e29bc170','ceramate1.png','image/png',2917),(58,50,'iclogo','70e41600-df19-40f2-81b4-0eb77b35b70f','ceramate2.png','image/png',2917),(59,51,'iclogo','c3d63da7-279e-4fca-ad10-7f37d95bcc61','cherry.png','image/png',2507),(60,52,'iclogo','516a18c5-5c0f-4169-9c8c-506d5927cc78','chipcon1.png','image/png',8655),(61,52,'iclogo','c758a0f9-4702-4d5b-9313-4b37b720f56d','chipcon2.png','image/png',2923),(62,53,'iclogo','0b1becea-2c01-4619-8dd7-8248986a8abc','chips.png','image/png',2864),(63,54,'iclogo','f0a113e8-f11f-4030-8eb4-29a56c1d9190','chrontel.png','image/png',1476),(64,55,'iclogo','689a7e71-7ea0-44dc-b754-ec59e8c9ee09','cirrus.png','image/png',3218),(65,56,'iclogo','269cd146-e8a1-471b-89c8-c5aba02177fc','comcore.png','image/png',1709),(66,57,'iclogo','35916ad6-908f-4fb6-b544-bf75589871db','conexant.png','image/png',2051),(67,58,'iclogo','1a768e6b-e6e7-483a-8d4f-5c3a25cfb25d','cosmo.png','image/png',1709),(68,59,'iclogo','4c20aaaf-4dec-4df2-a905-56f4b7951093','crystal.png','image/png',3605),(69,60,'iclogo','d3fba12a-bef4-48da-815e-f3cf40bdd565','cygnal.png','image/png',2135),(70,61,'iclogo','20a8eeb9-30d4-4100-9729-0284ac27ff2f','cypres1.png','image/png',2504),(71,61,'iclogo','5c52133e-2484-4dda-a9ba-2cc2b576289a','cypress.png','image/png',4275),(72,62,'iclogo','80016402-83a0-408f-af36-8b91e438a16e','cyrix.png','image/png',2204),(73,63,'iclogo','6d406514-5bef-4a4a-a5d2-b6ddd2c37988','daewoo.png','image/png',1907),(74,64,'iclogo','532ea9ba-eb50-4536-926f-e57ac444b862','dallas1.png','image/png',1469),(75,64,'iclogo','0ba82961-dc1d-4490-b9c7-c150c3f8bee3','dallas2.png','image/png',1309),(76,64,'iclogo','6a2f4732-9d1c-4f1b-b11d-188ac7279f05','dallas3.png','image/png',1869),(77,65,'iclogo','54185e45-d4b1-45e0-b5db-cbd91c8f25e2','davicom.png','image/png',4589),(78,66,'iclogo','ba8d5a96-75eb-4051-86c9-49582539d450','ddd.png','image/png',3235),(79,67,'iclogo','1dbea578-c0dc-4cc6-ab89-2e6463d1fd5d','diamond.png','image/png',2504),(80,68,'iclogo','5f60687e-6803-4a27-9852-888ee06d05a5','diotec.png','image/png',1454),(81,69,'iclogo','bca9c03a-da36-4d15-969c-69d6af0b8370','dtc1.png','image/png',2513),(82,69,'iclogo','e19fb9ce-1e22-4656-8b75-684e471066af','dtc2.png','image/png',1670),(83,70,'iclogo','a2faee0f-a737-4399-90d7-a2dde2e9093a','dvdo.png','image/png',2357),(84,71,'iclogo','33c4b341-4f43-46a0-b670-d4b85cd45677','edi.png','image/png',2729),(85,72,'iclogo','14fac8f0-6a78-4ee7-8c98-7131969c55de','egg.png','image/png',1628),(86,73,'iclogo','26c7df6d-f803-4c2d-bc79-4895166aefd0','elan.png','image/png',13826),(87,73,'iclogo','653db25c-e74b-4d40-a3d4-1948f955d28b','elantec1.png','image/png',1400),(88,73,'iclogo','77103cf8-62fa-428e-811a-9bcdb61f9312','elantec.png','image/png',3274),(89,74,'iclogo','64235406-37fe-440f-87c0-7f3010c1b6c2','elec_arrays.png','image/png',5602),(90,75,'iclogo','bf8855bf-fcf7-40fc-b09d-7d1904e53079','elite[1].png','image/png',8285),(91,76,'iclogo','42ceecfa-8d8c-469e-adf4-5a28c325fd3b','emmicro.png','image/png',3599),(92,77,'iclogo','89028dc1-93cb-4eb4-909a-6b7cd76bd6ff','enhmemsy.png','image/png',1403),(93,78,'iclogo','8c0cf5e8-06de-43ba-9006-205f96b776d7','ensoniq.png','image/png',3557),(94,79,'iclogo','f001b4e8-f4b9-4618-9b20-483b2ee36402','eon.png','image/png',5393),(95,80,'iclogo','401c4cd8-454e-4aff-970f-9746f4fbdba0','epson1.png','image/png',2349),(96,80,'iclogo','9e84764d-691c-485c-a0fb-b3526dbb3ea6','epson2.png','image/png',2405),(97,81,'iclogo','20bb2ec1-5378-4505-a59b-168c64f21ce4','ericsson.png','image/png',4184),(98,82,'iclogo','ee408991-f671-47fd-87dc-c316e8d4af17','ess.png','image/png',3030),(99,83,'iclogo','cd8ee91f-6121-4754-b6c4-7f14d490ba1c','etc.png','image/png',2189),(100,84,'iclogo','448bf789-2707-4214-9305-407f1135189b','exar.png','image/png',2771),(101,85,'iclogo','dcfda06f-8bb7-41c7-85b9-ff90815f756b','excelsemi1.png','image/png',7632),(102,85,'iclogo','4ab6043f-f32e-4a89-8d89-40e54c640354','excelsemi2.png','image/png',2339),(103,85,'iclogo','32fe9cde-dc84-418a-8023-81c564a7cdaf','exel.png','image/png',2771),(104,86,'iclogo','9b0850c2-a49e-483e-96c4-879f86fa5d82','fairchil.png','image/png',1552),(105,87,'iclogo','4bfafd0d-d535-49b7-8915-4075aff44bf2','freescale.png','image/png',3840),(106,88,'iclogo','f7544b8c-4575-4e44-a6a7-f75e484ca831','fujielec.png','image/png',5048),(107,88,'iclogo','c006c391-1246-4e8c-bb11-215d6b00bc13','fujitsu2.png','image/png',1860),(108,89,'iclogo','ddbff0b7-188f-4bc2-a5e0-0abe0d110dfe','galileo.png','image/png',3779),(109,90,'iclogo','81f951c8-8d43-4c4b-bdb7-34639234c98c','galvant.png','image/png',2669),(110,91,'iclogo','323ba0bb-8c91-4204-b4a9-b39b4997ca1c','gecples.png','image/png',2312),(111,92,'iclogo','f817c7a5-b7fc-4812-b4a3-4c7826f53d31','gennum.png','image/png',2614),(112,93,'iclogo','37853f19-88d4-4afa-b27d-2a3d793796fe','ge.png','image/png',2321),(113,94,'iclogo','a393834d-b0b3-4e2a-a1d2-8fcb46209324','gi1.png','image/png',1385),(114,94,'iclogo','f019c4cd-ca47-4b47-a7f0-19af11b1be9e','gi.png','image/png',1691),(115,95,'iclogo','0d40c12b-3e16-43c1-9979-fa785c88bf54','glink.png','image/png',1706),(116,96,'iclogo','aa25951e-85ad-4c94-ab69-f725c1f09c98','goal1.png','image/png',9092),(117,96,'iclogo','52963fc9-2e1b-409c-aca8-db9343496761','goal2.png','image/png',9649),(118,97,'iclogo','a32a65fb-57a0-4f0c-a583-267fe11d3ce2','goldstar1.png','image/png',2923),(119,97,'iclogo','a5c9a855-20ee-41ef-968e-b382989814d8','goldstar2.png','image/png',11387),(120,98,'iclogo','1a4b5ba6-aae3-49be-845a-692cd2bcc461','gould.png','image/png',1549),(121,99,'iclogo','87ec36e8-aeb4-4bb1-bb2f-9f7911d77483','greenwich.png','image/png',9761),(122,100,'iclogo','bea7bd5e-3fdf-4446-8d34-e4fc81faed4c','gsemi.png','image/png',1704),(123,101,'iclogo','d60595ba-dfa9-4ce5-81e9-78ce135b78c1','harris1.png','image/png',1549),(124,101,'iclogo','ef806124-25a1-41dc-8550-ee6f00bb50c8','harris2.png','image/png',1874),(125,102,'iclogo','9d49a7c1-4f17-4955-a6e1-8c6a6fb7ac2b','hfo.png','image/png',1958),(126,103,'iclogo','9273ddb0-29a4-4bd5-9b92-6d534bbe84cf','hitachi.png','image/png',2611),(127,104,'iclogo','b5043f50-9ae9-4a63-9dad-0b25370101d9','holtek.png','image/png',2160),(128,105,'iclogo','d182c64f-c0e3-42e8-a448-339e7878799e','hp.png','image/png',2464),(129,106,'iclogo','cefb1b9f-2646-468c-8862-27161fcdf785','hualon.png','image/png',2864),(130,107,'iclogo','9a510230-9643-4170-a71c-9372e5127263','hynix.png','image/png',8444),(131,108,'iclogo','379b55c5-a264-42e0-a412-e428b0ef220e','hyundai2.png','image/png',2269),(132,109,'iclogo','473a4447-256f-4b9e-b43f-deda7d8c9199','icdesign.png','image/png',3014),(133,110,'iclogo','aecf5646-5f36-4ac4-bace-bb16d4cfdb0c','icd.png','image/png',1641),(134,110,'iclogo','ec2c5947-5366-457a-beea-1378557857f1','ics.png','image/png',2042),(135,111,'iclogo','0699e0f7-b617-4a22-9f0e-bacf747a6ff3','ichaus1.png','image/png',3370),(136,111,'iclogo','7c67dec3-e216-4426-a75d-363c1da614e3','ichaus.png','image/png',1552),(137,112,'iclogo','5132bb0e-99a5-472e-b1d4-16b0a249eaff','icsi.png','image/png',4049),(138,113,'iclogo','5befd182-5ba1-42de-9c1b-92e8a56fb5b2','icube.png','image/png',1629),(139,114,'iclogo','c0f5de69-55ab-412b-bdca-84de2c937d9a','icworks.png','image/png',1874),(140,115,'iclogo','16d3e84a-2c2f-4916-87a1-e2863bb3d47b','idt1.png','image/png',3995),(141,115,'iclogo','cedf3c75-d452-44fa-9c8d-c8f7265fff96','idt.png','image/png',1553),(142,116,'iclogo','bbc31a06-97df-4646-b08b-cc3610727353','igstech.png','image/png',3832),(143,117,'iclogo','3c161812-4d5f-4c30-8c2f-1625fad859f4','impala.png','image/png',1628),(144,118,'iclogo','5bd26a9e-d9c9-40cf-95d0-c5eadf81d370','imp.png','image/png',2175),(145,119,'iclogo','a5c1d81e-119a-4e84-b2f6-9c16b2c422e1','infineon.png','image/png',4511),(146,120,'iclogo','2a785a87-9818-430f-8f1d-2cc3e598cf77','inmos.png','image/png',3365),(147,121,'iclogo','dc60e8ab-2651-4a4d-8a2b-e01d73cfb85d','intel2.png','image/png',2010),(148,122,'iclogo','b532ce5f-7231-4ef4-9c14-c046deb3928d','intresil4.png','image/png',2614),(149,122,'iclogo','6d28f931-989e-45a4-92e4-24c6017cd019','intrsil1.png','image/png',1874),(150,122,'iclogo','17f9bd60-bc3c-4db1-a22b-65d74771c3d6','intrsil2.png','image/png',2520),(151,122,'iclogo','47ddfcb0-61b2-4eb1-98c4-2e435628288d','intrsil3.png','image/png',3295),(152,123,'iclogo','5902c186-fe91-459a-9dd9-8ea6ac6b322e','ir.png','image/png',2729),(153,124,'iclogo','3e061f5c-b86e-43a1-a4e9-e4aa628add6f','isd.png','image/png',2554),(154,125,'iclogo','7a2c4374-9748-4701-920e-658c1735930a','issi.png','image/png',3030),(155,126,'iclogo','05a24a1e-94fa-4131-ba79-b81080a9b1ed','ite.png','image/png',3302),(156,127,'iclogo','952dea34-af42-4f67-b780-e8cc399e0fd3','itt.png','image/png',2483),(157,128,'iclogo','070c1478-552d-4ee6-aa07-767540af67cf','ixys.png','image/png',3575),(158,129,'iclogo','9650d324-3f75-4d47-94b5-d8898b27890f','kec.png','image/png',2567),(159,130,'iclogo','f7512e41-8699-4b5f-ac0a-0a5b777484e4','kota.png','image/png',1552),(160,131,'iclogo','752aafdb-aa4b-4d33-b57f-f6774dc88be2','lattice1.png','image/png',1768),(161,131,'iclogo','8885360f-bdfc-49c7-9085-7c6b04a8a7a6','lattice2.png','image/png',1519),(162,131,'iclogo','cdd71a19-b391-4ead-bae5-d48e90dad5cf','lattice3.png','image/png',1216),(163,132,'iclogo','39fcbd64-9e05-4c7b-920d-6d2b3c1e2db1','lds1.png','image/png',2136),(164,132,'iclogo','d8edaf48-1d8b-42f0-a4ea-ae61720e9888','lds.png','image/png',1959),(165,133,'iclogo','51fa433c-8741-41ed-a7e5-5a66077c81e8','levone.png','image/png',4189),(166,134,'iclogo','0498cd92-e747-42b0-a3c8-5548cda50dd4','lgs1.png','image/png',2417),(167,134,'iclogo','0bdcaa46-f38a-4096-bc9b-bd35ca36523d','lgs.png','image/png',737),(168,135,'iclogo','4f681cbe-0b0d-42e4-9571-cad2ab24726c','linear.png','image/png',2486),(169,136,'iclogo','c840a0de-9135-4cc8-bb65-a13ff3f77942','linfin.png','image/png',4844),(170,137,'iclogo','0b97261e-7eb1-418a-a3cb-091c94fabc41','liteon.png','image/png',2388),(171,138,'iclogo','979f5617-7370-44e6-9a55-dc2942192852','lucent.png','image/png',1709),(172,139,'iclogo','5049fd0b-77fb-4e57-ac48-cff664341737','macronix.png','image/png',2324),(173,140,'iclogo','e964fd5c-7cb3-4457-b531-b8a072ff2df8','marvell.png','image/png',3131),(174,141,'iclogo','3b8f7e08-41e5-4f40-bb66-dff7b1a60bad','matsush1.png','image/png',1709),(175,141,'iclogo','2b30d763-3ec1-4d80-8c4b-4ff396aa4b40','matsushi.png','image/png',2029),(176,142,'iclogo','03a634ca-82f0-47cb-9efe-98a2b791a806','maxim.png','image/png',2690),(177,143,'iclogo','06c7032a-20a6-409c-b808-420347d00a52','mediavi1.png','image/png',2189),(178,143,'iclogo','8060cc17-3458-4a80-bf2d-bda611c47dcb','mediavi2.png','image/png',2487),(179,144,'iclogo','95236394-2567-40fb-b102-783506c57303','me.png','image/png',2411),(180,144,'iclogo','978fdaaa-ea4a-43a4-ba6f-8be61bcf21e1','microchp.png','image/png',2814),(181,145,'iclogo','6a77411c-74af-4fd2-8a39-da48524cddcc','mhs2.png','image/png',2036),(182,145,'iclogo','5909a9cb-9a41-4ca5-9c24-ec9c6f32f8ee','mhs.png','image/png',1870),(183,146,'iclogo','61a22bd3-2872-4f67-a056-6818d0a0ede4','micrel1.png','image/png',9695),(184,146,'iclogo','de7c6976-6d46-4be2-8bac-8575ca4d7c89','micrel2.png','image/png',9695),(185,147,'iclogo','331cdef2-e4b1-4655-ad5a-9da2dfbf0f18','micronas.png','image/png',1871),(186,148,'iclogo','5f7b6a40-5462-401c-9323-21bab6581a0d','micronix.png','image/png',1856),(187,149,'iclogo','928cea7e-902f-4ae7-aa6c-a0bce5cb134c','micron.png','image/png',1763),(188,150,'iclogo','038e7493-a8f5-42f3-a32e-10af64b9f141','microsemi1.png','image/png',3714),(189,150,'iclogo','edd40c51-89c9-498a-9e64-6b13abf8043d','microsemi2.png','image/png',11992),(190,151,'iclogo','7da63698-5dd3-4828-9907-9b19dd563e40','minicirc.png','image/png',1391),(191,152,'iclogo','cbd36cc2-475f-4d0c-9afb-53658166a0e8','mitel.png','image/png',2819),(192,153,'iclogo','1d244a50-209f-4024-9284-811f96dda260','mitsubis.png','image/png',2311),(193,154,'iclogo','3e10a33d-da45-46bd-9ef5-f17837d21d2b','mlinear.png','image/png',3377),(194,155,'iclogo','91f97cf1-02fb-4b48-91db-3b9fdf31eb9a','mmi.png','image/png',2692),(195,156,'iclogo','4333f56f-b52a-429d-b628-8d14e64c94fe','mosaic.png','image/png',2959),(196,157,'iclogo','500a97da-975b-4a69-b836-68a0b3b579f5','moselvit.png','image/png',2504),(197,158,'iclogo','5aa7462b-1cbc-46fe-ae86-ebe63937adca','mos.png','image/png',2857),(198,159,'iclogo','eb0d52a9-3ab6-4b8c-af3b-177e962cc4ef','mostek1.png','image/png',7502),(199,159,'iclogo','161cc633-d864-46a7-8b4c-e0d3c4873a42','mostek2.png','image/png',7502),(200,159,'iclogo','84b6288a-e990-4fc8-8608-a9d7e7528bdf','mostek3.png','image/png',2514),(201,160,'iclogo','3cd7ff81-91c9-439b-8011-92cadba3244c','mosys.png','image/png',2321),(202,161,'iclogo','f6d21d39-1cd7-41af-af19-91856dda35fa','motorol1.png','image/png',999),(203,161,'iclogo','972d3b61-e3c6-4a97-b3ec-0367c055921f','motorol2.png','image/png',2417),(204,162,'iclogo','cf724b59-7362-4341-a509-1c74d769d21d','mpd.png','image/png',2663),(205,163,'iclogo','f541223a-db58-426a-b319-5a99a152ed78','msystem.png','image/png',1670),(206,164,'iclogo','c3429fc9-c0ce-4ede-bf73-aa4ba1d78b4b','murata1.png','image/png',4874),(207,164,'iclogo','872b6b78-f2cb-4acf-8e9d-6e05349b2c01','murata.png','image/png',4777),(208,165,'iclogo','36b87341-de59-420f-8c72-5ba03fed5828','mwave.png','image/png',3370),(209,166,'iclogo','90d72767-730e-4208-9334-2bc3ab24878f','myson.png','image/png',1932),(210,167,'iclogo','80905249-9251-44d0-b8a9-48b48220f651','nec1.png','image/png',3166),(211,167,'iclogo','dacbcabe-adfc-4fed-8279-6f684c1b6593','nec2.png','image/png',3071),(212,168,'iclogo','3249a5cf-b9b5-45d5-b5ee-4d3fa641656a','nexflash.png','image/png',7789),(213,169,'iclogo','45dfe5d9-3867-4eec-bd14-f97f3cc527f5','njr.png','image/png',3419),(214,170,'iclogo','c78c1d61-65e5-4094-bca5-e9cb88ce1b6b','ns1.png','image/png',1959),(215,170,'iclogo','ea6f1eb8-595b-4a70-9d2f-bd299aa1ff60','ns2.png','image/png',1952),(216,171,'iclogo','2f07c39e-4ccb-4648-aef8-938cccbc8b6f','nvidia.png','image/png',1874),(217,172,'iclogo','123a1a89-3252-4b59-bc8a-fc52dc870650','oak.png','image/png',2614),(218,173,'iclogo','959ab1bf-897c-41ac-b7c6-2c94c07fd7c8','oki1.png','image/png',2267),(219,173,'iclogo','80c47bb4-37d0-460b-9d78-2cb8915c204b','oki.png','image/png',2546),(220,174,'iclogo','ee19639d-1b57-45b7-82d9-08457afba7d0','opti.png','image/png',1684),(221,175,'iclogo','3bfbd62d-67dd-4873-b7b3-bc926a992704','orbit.png','image/png',3347),(222,176,'iclogo','13e24f4e-00af-4640-aded-10586be8e2ab','oren.png','image/png',3497),(223,177,'iclogo','577d0e47-64c2-4f34-8e87-53126ef593a9','perform.png','image/png',3284),(224,178,'iclogo','5cd14fc7-4bac-4252-a7e2-e8e1761f6010','pericom.png','image/png',2311),(225,179,'iclogo','69b500d0-e3e5-435f-8e30-220e285604e2','phaslink.png','image/png',2669),(226,180,'iclogo','444d977b-e44e-47ee-9968-4a1c7bf2e6d0','philips.png','image/png',8690),(227,181,'iclogo','e0f29e0b-2a12-4fa8-aa6e-d7459c01232d','plx.png','image/png',4749),(228,182,'iclogo','baed36b0-b376-4101-9508-e69ec6998404','pmc.png','image/png',3497),(229,183,'iclogo','b0bf036d-124a-4bf8-9aaa-ae31c862a317','pmi.png','image/png',3807),(230,184,'iclogo','2b0b7c0a-b2a9-40a1-a6ab-a0961dc47029','ptc.png','image/png',2669),(231,185,'iclogo','822e5c52-7d63-456a-8fc4-595196fc032d','pwrsmart.png','image/png',1389),(232,186,'iclogo','f673c997-ab7c-4240-aefc-bc4015695fbc','qlogic.png','image/png',1709),(233,187,'iclogo','6d46fbf6-7c3c-45a0-a8dd-91cf639a9b3c','qualcomm.png','image/png',3326),(234,188,'iclogo','a9012dc8-c4c5-4a8f-81b1-2ffc4a1e4c62','quality.png','image/png',1309),(235,189,'iclogo','2f6842ff-50b5-454c-ba7a-deb725444917','rabbit.png','image/png',2857),(236,190,'iclogo','1f2ba1bc-f372-4a60-81d7-c443ba8b73f4','ramtron.png','image/png',1573),(237,191,'iclogo','5a2daf21-be7a-4be9-8510-412bb25d1e75','raytheon.png','image/png',4303),(238,192,'iclogo','522296a1-3896-461a-8ecf-f6c9ebfeaa13','rca.png','image/png',1860),(239,193,'iclogo','c7e34e6c-5d84-429c-995e-12104658ad47','realtek.png','image/png',2993),(240,194,'iclogo','c4218fb9-194f-4242-bfef-8e61a1edfed2','rectron.png','image/png',1691),(241,195,'iclogo','a957ec34-0655-4bb5-8bda-dc8e0c59b68d','rendit.png','image/png',1370),(242,196,'iclogo','36ab3677-dd47-4bb4-a79c-a075c47ce467','renesas.png','image/png',8761),(243,197,'iclogo','10ba1e58-1790-4284-8032-1cca373e3cc5','rockwell.png','image/png',1704),(244,198,'iclogo','7b45a8c1-98f3-49fa-914f-bafef4360aa6','rohm.png','image/png',2693),(245,199,'iclogo','e0d68505-5bd7-41ae-8c44-71baf21381a6','s3.png','image/png',2189),(246,200,'iclogo','bd9a331b-8f15-48ea-9de1-64e83453f9b7','sage.png','image/png',2735),(247,201,'iclogo','8a77d4f6-a1a5-45eb-b33c-23623a178195','saifun.png','image/png',19242),(248,202,'iclogo','90d1e842-4be5-460d-95d8-1ebb1c47405e','sames.png','image/png',2614),(249,203,'iclogo','317809ec-6cb1-4750-a997-7218c94a948e','samsung.png','image/png',1841),(250,204,'iclogo','b02dee4c-7809-4c1f-a2e6-82a2c71913c5','sanken1.png','image/png',2214),(251,204,'iclogo','27f6bd89-4346-4108-854c-368af671ff09','sanken.png','image/png',5309),(252,205,'iclogo','6552fb9c-00d1-4e8e-b678-c00ae5ba2a18','sanyo1.png','image/png',2228),(253,205,'iclogo','4a4b2d83-72de-409c-bb24-946ae4a2d200','sanyo.png','image/png',2455),(254,206,'iclogo','767007e7-8df8-442b-90d7-7663c49393ba','scenix.png','image/png',1869),(255,207,'iclogo','ae231ad2-dc03-4344-a418-1de6de230167','sec1.png','image/png',9392),(256,207,'iclogo','8546bf4e-b4cb-41cc-ae1e-cb842dad4605','sec.png','image/png',2051),(257,208,'iclogo','ea3b265d-16dd-416b-b2f9-b8ae22c07691','seeq.png','image/png',2903),(258,209,'iclogo','b4315fcd-971a-442c-a97f-04cd8875456b','seikoi.png','image/png',1709),(259,209,'iclogo','94230629-a3ff-4a3a-9e50-f4fb2a380b0c','semelab.png','image/png',1709),(260,210,'iclogo','b532b7a6-53e3-4a64-b651-ca49a7ce2096','semtech.png','image/png',1431),(261,211,'iclogo','53036270-c96b-427e-9dad-8051d67fc050','sgs1.png','image/png',2339),(262,212,'iclogo','37ec35f6-e4b9-4db6-bf43-243457c4efac','sgs2.png','image/png',1874),(263,213,'iclogo','97ee2ff2-fadd-4c70-bd3a-924c7cf1b6f3','sharp.png','image/png',2258),(264,214,'iclogo','bab67f22-7b50-42f2-8aaa-588d1b2369d1','shindgen.png','image/png',1629),(265,215,'iclogo','8b5548ce-7f61-4024-ae81-6cae8a9499a2','siemens1.png','image/png',1216),(266,215,'iclogo','3b5a28e8-6663-4ecf-bd3d-d957097c6df6','siemens2.png','image/png',2916),(267,216,'iclogo','3268771f-d89c-4bdd-813d-0e947b9fdf00','sierra.png','image/png',2321),(268,217,'iclogo','5b7989ea-c6d0-473e-8fb8-df431f4b9164','sigmatel.png','image/png',1790),(269,218,'iclogo','3903cfe0-6316-46fb-bafd-022631edf803','signetic.png','image/png',1519),(270,219,'iclogo','9bc1e768-3a0c-424c-ace7-91a4aafc36fa','siliconlabs.png','image/png',5540),(271,220,'iclogo','0ca6fbb7-06ae-4360-9e09-ead8c1092db0','siliconm.png','image/png',3817),(272,221,'iclogo','026d752c-c388-43df-9d9f-93b665729d1a','silicons.png','image/png',2320),(273,221,'iclogo','56c791ea-248c-4ac5-bfb5-d642bf18399e','simtek.png','image/png',1874),(274,222,'iclogo','b69c00ad-69ff-4e75-948a-28fb5ffaacd7','siliconx.png','image/png',2464),(275,223,'iclogo','4924f2f9-ef78-4796-a4cc-13812eb80567','silnans.png','image/png',1549),(276,224,'iclogo','28fddce0-474c-497d-806c-a91e60ea99b6','sipex.png','image/png',4029),(277,225,'iclogo','ce2f10d3-26ea-45f4-9438-edbb77f13531','sis.png','image/png',3608),(278,226,'iclogo','df719cab-f78b-4207-8d99-49a1fd19f9cf','smc1.png','image/png',1763),(279,227,'iclogo','21845084-484d-4eff-bc3c-369f1ed5583b','smsc1.png','image/png',1781),(280,227,'iclogo','ee20e2cc-edfb-4be5-98d9-2d3284e90e18','smsc.png','image/png',2117),(281,228,'iclogo','873ce02c-17b8-432b-b890-e3e7997529c2','sony.png','image/png',2476),(282,229,'iclogo','11dc538d-f6e9-446b-85a1-c288743a5a5d','space.png','image/png',3377),(283,230,'iclogo','4d9494e6-a053-4fdf-a87f-25b8aea4eac8','spectek.png','image/png',2228),(284,231,'iclogo','f0e0cf3d-e7ab-4929-8b7d-d739513ede82','spt.png','image/png',3419),(285,232,'iclogo','3ddc8bba-5dc0-4150-a231-ef8a98662eb4','sss.png','image/png',1871),(286,233,'iclogo','dad47849-f9a8-4108-836d-e607b06c1735','sst.png','image/png',3072),(287,234,'iclogo','341a6a4e-2b08-4c5e-bf55-f3b4baf9a3c5','st.png','image/png',1604),(288,235,'iclogo','885d2517-e4a5-4120-96dd-efffa87acbd0','summit.png','image/png',11440),(289,236,'iclogo','f3af6e09-f98c-469f-9af6-d2614705ddfc','synergy.png','image/png',1709),(290,237,'iclogo','5bb3ab01-9f5e-4e1e-aa61-140aad8ba1ef','synertek.png','image/png',1789),(291,238,'iclogo','a0d6a15d-2636-42ec-904c-05cd9938505b','taiwsemi.png','image/png',1475),(292,239,'iclogo','a30e989a-1fc8-4fbe-b811-6dd59889bf33','tdk.png','image/png',3687),(293,240,'iclogo','c7918a26-d430-421e-a800-e2e9bbc4c1bc','teccor.png','image/png',1869),(294,241,'iclogo','31685a20-a299-4a00-b8b1-3c29e950a5e1','telcom.png','image/png',2555),(295,242,'iclogo','70c217ef-60f7-4f00-b8a5-9f45bed4352e','teledyne.png','image/png',1904),(296,243,'iclogo','40ea9d62-a595-4dcf-83dd-b888dbf6cb45','telefunk.png','image/png',2715),(297,244,'iclogo','62d7646a-29ad-41a4-bb08-d1d6d29c838d','teltone.png','image/png',4303),(298,245,'iclogo','427aaf24-9c83-4e2b-8f1f-ac69b7d4cdc2','thomscsf.png','image/png',1874),(299,246,'iclogo','d904d57f-401c-4c92-a880-5fb04e25d7f7','ti1.png','image/png',1869),(300,246,'iclogo','cf43cb68-fc12-493d-8c86-24fd11ed2941','ti.png','image/png',1789),(301,247,'iclogo','58118d10-f73f-4472-b4ab-a3a80d983062','toko.png','image/png',1907),(302,248,'iclogo','6420066a-695e-45cb-ad1a-b0e876296768','toshiba1.png','image/png',1922),(303,248,'iclogo','85dddb12-3193-43f4-b667-2ace0f05c88a','toshiba2.png','image/png',1309),(304,248,'iclogo','3e8e97d6-9964-4a1e-a344-5a0041ab15a1','toshiba3.png','image/png',2269),(305,249,'iclogo','03143907-8913-42ba-a857-5d63d6f405aa','trident.png','image/png',1414),(306,250,'iclogo','3fc278d8-f490-4bf1-b066-b62579d8c54c','triquint.png','image/png',2294),(307,251,'iclogo','dd3657e4-28ca-44d8-9d46-177e777ae929','triscend.png','image/png',4521),(308,252,'iclogo','280c9b9d-61c5-4c66-b9ab-8c59e54f3503','tseng.png','image/png',1466),(309,253,'iclogo','83684707-7d2e-4784-abf5-5120322c4e42','tundra.png','image/png',1709),(310,254,'iclogo','f0174e93-76a6-4569-a756-f2a8cd4feefe','turbo_ic.png','image/png',7784),(311,255,'iclogo','322e6b0d-595d-43be-af13-d76eb8c4b4d6','ubicom.png','image/png',2047),(312,256,'iclogo','595ecd0e-120d-4b9b-9edd-c54242efb792','umc.png','image/png',3032),(313,257,'iclogo','7ab4f7cc-e7b1-4904-8acb-7b2a5780b714','unitrode.png','image/png',1309),(314,258,'iclogo','606989eb-e1bd-4dce-b8ab-be642022c522','usar1.png','image/png',2771),(315,258,'iclogo','5414ee89-69b7-4089-943d-e6c90755ae82','usar.png','image/png',2793),(316,259,'iclogo','7fb4702f-6d6f-4c81-8bb4-0a81a67ff058','utmc.png','image/png',2047),(317,260,'iclogo','be844022-943b-4b5a-a890-9ad7a81fa929','utron.png','image/png',2047),(318,261,'iclogo','3dbe5079-2e14-4aec-ad3d-611722fcf285','v3.png','image/png',3248),(319,262,'iclogo','3053bc49-ef0e-4083-a94e-1953ed91c43e','vadem.png','image/png',1874),(320,263,'iclogo','500831f1-8a37-4c77-9251-6fc58df98e24','vanguard.png','image/png',1454),(321,264,'iclogo','c12a2d67-9659-4003-b7c8-1e3b8dbb688a','vantis.png','image/png',1475),(322,265,'iclogo','14832fe9-d457-41e8-a286-e79b6b5f1c50','via.png','image/png',1922),(323,266,'iclogo','01795107-a4e5-4fa4-bfd4-c42ed9b81927','virata.png','image/png',3764),(324,267,'iclogo','ca5e89a9-5e02-4ba1-8f1b-568ef2e1b620','vishay.png','image/png',4410),(325,268,'iclogo','da6bad92-2a5d-47bd-af6c-bc0872b9ef15','vistech.png','image/png',1942),(326,269,'iclogo','f1876d99-6e95-4ba5-9234-bdb1bd85899b','vitelic.png','image/png',1691),(327,270,'iclogo','a91f0e39-7f3a-48d1-b90b-e122b33bf6b3','vlsi.png','image/png',1874),(328,271,'iclogo','531fb09c-ec33-470c-9cde-bb7cfc64e6f2','volterra.png','image/png',2029),(329,272,'iclogo','c4720343-409d-4ba9-ab37-e23b4ccfe96c','vtc.png','image/png',2223),(330,273,'iclogo','b6a7c8e8-d797-4aa3-8f98-8b1f6cf373c6','wafscale.png','image/png',2985),(331,274,'iclogo','1b664771-6ec5-4abb-8ead-5af2dd22cdd5','wdc1.png','image/png',1784),(332,274,'iclogo','9728b97d-4a1d-43e3-9b88-a5db7f1606d2','wdc2.png','image/png',1403),(333,275,'iclogo','53d4dace-1600-4499-bd20-d8d3eb865b89','weitek.png','image/png',1468),(334,276,'iclogo','6714aed2-7652-4780-b76a-86e38b15b12d','winbond.png','image/png',5402),(335,277,'iclogo','c3d0315b-49f2-4532-9eed-0bd01957150d','wolf.png','image/png',2343),(336,278,'iclogo','4a33e337-d043-4fde-ba2e-a0345ff238dc','xemics.png','image/png',2029),(337,279,'iclogo','fa81f2bf-c29c-4a2e-a552-4fb1bd4d1d07','xicor1.png','image/png',1259),(338,279,'iclogo','81bc1b0b-ee6b-4692-b4dc-3249a6401faf','xicor.png','image/png',3389),(339,280,'iclogo','4490746c-0a13-4b73-a750-00528c949aef','xilinx.png','image/png',4186),(340,281,'iclogo','fcb4c889-05ac-4398-a1d5-8e96eb05828f','yamaha.png','image/png',1779),(341,282,'iclogo','4baedb98-ce0f-409e-8f40-caac591c9378','zetex.png','image/png',1255),(342,283,'iclogo','c5796e30-03f7-4916-bfc5-332b54857afd','zilog1.png','image/png',1958),(343,283,'iclogo','3b6ca9e5-d4d6-4b0b-b9e7-094ae1730780','zilog2.png','image/png',2204),(344,283,'iclogo','50c89c0f-760c-4255-a70a-02fd89096070','zilog3.png','image/png',2614),(345,283,'iclogo','b93e2f72-ed43-4692-b866-b323f2945e78','zilog4.png','image/png',2405),(346,284,'iclogo','68e8122e-177c-4952-a0db-3218b3217839','zmda.png','image/png',3709),(347,285,'iclogo','eef086cc-1064-46e9-81e5-4657ddc5c2b4','zoran.png','image/png',2784);
/*!40000 ALTER TABLE `ManufacturerICLogo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Part`
--

DROP TABLE IF EXISTS `Part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `footprint_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `comment` longtext NOT NULL,
  `stockLevel` int(11) NOT NULL,
  `minStockLevel` int(11) NOT NULL,
  `averagePrice` decimal(13,4) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `needsReview` tinyint(1) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `internalPartNumber` varchar(255) DEFAULT NULL,
  `partUnit_id` int(11) DEFAULT NULL,
  `storageLocation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E93DDFF812469DE2` (`category_id`),
  KEY `IDX_E93DDFF851364C98` (`footprint_id`),
  KEY `IDX_E93DDFF8F7A36E87` (`partUnit_id`),
  KEY `IDX_E93DDFF873CD58AF` (`storageLocation_id`),
  CONSTRAINT `FK_E93DDFF812469DE2` FOREIGN KEY (`category_id`) REFERENCES `PartCategory` (`id`),
  CONSTRAINT `FK_E93DDFF851364C98` FOREIGN KEY (`footprint_id`) REFERENCES `Footprint` (`id`),
  CONSTRAINT `FK_E93DDFF873CD58AF` FOREIGN KEY (`storageLocation_id`) REFERENCES `StorageLocation` (`id`),
  CONSTRAINT `FK_E93DDFF8F7A36E87` FOREIGN KEY (`partUnit_id`) REFERENCES `PartUnit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Part`
--

LOCK TABLES `Part` WRITE;
/*!40000 ALTER TABLE `Part` DISABLE KEYS */;
INSERT INTO `Part` VALUES (1,213,80,'CPLD Xilinx xc9636 on PCB and headers suitable for breadboards',NULL,'',5,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(2,164,80,'USB programmer',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(3,164,80,'Ultrasonic sensors HC-SR04',NULL,'',9,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(4,215,80,'RC toy car',NULL,'http://item.taobao.com/item.htm?id=7905841099',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(5,223,80,'â€œBlue-packâ€ rechargeable battery pack (same as included with hobby cars) 400mAh, 6.0V, rechargeable',NULL,'http://item.taobao.com/item.htm?id=5257085554',6,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(6,164,80,'connectors for batteries (type compatible with battery pack)',NULL,'',8,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(7,140,80,'Inexpensive infrared e18-d80nk, 3-80cm',NULL,'',8,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(8,140,80,'Precise infrared distance ranging sensor Sharp IR GP2Y0A02',NULL,'',4,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(9,140,80,'Precise infrared distance ranging sensor Sharp IR sensor GP2Y0A02YK0F (20-150cm)',NULL,'',4,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(10,164,80,'Ultrasonic distance ranging sensor HC-SR04',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(11,212,80,'Arduino Duemilanove',NULL,'',3,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(12,212,80,'L298 Motor Shield',NULL,'http://item.taobao.com/item.htm?id=8350736618',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(13,164,80,'RF communication solution (for telemetry: low-bandwidth, medium-range or short-range with repeaters, low-power, inexpensive)',NULL,'http://www.nordicsemi.com/index.cfm?obj=product&act=display&pro=103',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(14,164,80,'USB PC dongle',NULL,'http://www.nordicsemi.com/index.cfm?obj=product&act=display&pro=102 http://item.taobao.com/item.htm?id=8869725924',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(15,140,80,'Bumper switch/whiskers',NULL,'http://www.lynxmotion.com/p-60-bumper-switch-assembly-kit.aspx http://www.impactlab.net/2006/10/08/designing-robots-with-whiskers/',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,133),(16,44,80,'8pF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(17,44,80,'15pF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(18,44,80,'10pF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(19,44,80,'33pF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(20,44,80,'47pF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(21,44,80,'68pF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(22,44,80,'100pF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(23,44,80,'470pF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(24,44,80,'302',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(25,44,80,'33nF',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(26,44,80,'104',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(27,44,80,'103',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(28,54,80,'47uF electrolytic',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(29,54,80,'100uF electrolytic',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,168),(30,26,80,'100',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,169),(31,26,80,'150',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,169),(32,26,80,'300',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:51',NULL,1,169),(33,26,80,'330',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(34,26,80,'560',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(35,26,80,'1K',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(36,26,80,'1.5K',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(37,26,80,'2.2K',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(38,26,80,'35K',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(39,26,80,'120K',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(40,26,80,'6.8K',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(41,26,80,'2.2M',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,169),(42,60,80,'2.7uH',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(43,60,80,'4.7uH',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(44,60,80,'10uH,',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(45,76,80,'Zener diode: 2.7V',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(46,76,80,'Zener diode: 3V',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(47,76,80,'Zener diode: 5V',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(48,74,80,'Diode: 1N4148',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(49,164,80,'Transistor 2N222A',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(50,164,80,'Transistor 2N3904 (NPN)',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(51,164,80,'Transistor 2N3906 (PNP)',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(52,164,80,'Transistor C1815',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(53,164,80,'Transistor 8550',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(54,164,80,'Transistor 8050',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(55,164,80,'Transistor A1015',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(56,164,80,'555 timers',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(57,214,80,'Electret Condenser Microphone',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(58,124,80,'NAND2 x4 74HC00 DIP',NULL,'http://au.alibaba.com/product/239198934-Condenser-Microphone-AMFO97A44NBAB.html',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(59,124,80,'NOR2 x4 74HC02 DIP',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(60,124,80,'INV x6 74HC04 DIP',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(61,124,80,'AND2 x4 74HC08 DIP',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(62,124,80,'ST x6 74HC14 DIP',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(63,124,80,'OR2 x4 74HC32 DIP',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(64,164,80,'XOR x4 74HC86 DIP',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(65,124,80,'3-8 dec 74HC138 DIP',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(66,124,80,'MUX4 74HC153 DIP',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(67,124,80,'4-16 Dec 74HC154 DIPThin',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(68,164,80,'Shift Reg 74HC165 DIP',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(69,124,80,'DFF 74HC174 DIP',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(70,124,80,'bin counter 74HC193 DIP',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(71,123,80,'BCD 7Seg 74LS247 DIP',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(72,126,80,'5V Regulator 7805 TO220','','',50,0,NULL,'',1,'2012-07-26 15:20:52','',1,45),(73,106,80,'7seg LED Common Anode 0.5è‹±å¯¸ 1ä½æ•° å…±é˜³çº¢è‰²LEDæ•°ç ç®¡ 0.5å¯¸',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(74,102,80,'8bar LED 10çº¿ LED å…‰æŸ±æ˜¾ç¤º DIP',NULL,'',25,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(75,54,80,'1u 50v ç”µè§£ç”µå®¹',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,44),(76,54,80,'10u 25v ç”µè§£ç”µå®¹',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,44),(77,54,80,'100u 16v ç”µè§£ç”µå®¹',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,44),(78,26,80,'200R ç”µé˜» 1/4W','','',1000,0,NULL,'',1,'2012-07-26 15:20:52','',1,98),(79,26,80,'1k ç”µé˜» 1/4W',NULL,'',1000,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,53),(80,26,80,'10k ç”µé˜» 1/4W',NULL,'',1000,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,53),(81,26,80,'100k ç”µé˜» 1/4W',NULL,'',1000,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,53),(82,38,80,'100k pot ç”µä½å™¨ ç²¾å¯†å¤šåœˆå¯è°ƒ',NULL,'',50,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,53),(83,164,80,'Variety of headers that fit on breaboard (2.54mm spacing)',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(84,164,80,'Contact strips',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(85,164,80,'Plastic offsets and motherboard mounting',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(86,164,80,'Screws with nuts',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(87,164,80,'Velcro strips',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(88,164,80,'Tie-wraps',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(89,217,80,'Servos! Big ones, small ones, silent (plastic gear and higher quality motors)',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(90,164,80,'Rotary solenoid',NULL,'http://www.ledex.com/rotary-solenoid/rotary-solenoid-comparison.html',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(91,164,80,'More of the wires in the starter kit, organized by length+color',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(92,164,80,'Alligator clips (particularly small ones)',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(93,140,80,'Hall effect sensors',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(94,140,80,'Accelerometers',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(95,140,80,'Gyroscopes',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(96,140,80,'Compass',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(97,161,80,'aluminium',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(98,164,80,'wood',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(99,214,80,'Workbench light',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(100,214,80,'Workbench helper hand',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:52',NULL,1,133),(101,214,80,'Caliper (Precision measurement instrument)',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:53',NULL,1,133),(102,164,80,'Scissors',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(103,214,80,'Label generator',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(104,164,80,'Sharpie fine point permanent markers',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(105,214,80,'fire extinguisher',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(106,164,80,'particulate masks',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(107,164,80,'safety glasses',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(108,164,80,'gloves',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(109,216,80,'Function Generator',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(110,214,80,'Oscilloscope',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(111,214,80,'Power Supplies',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(112,214,80,'Soldering stations and irons',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(113,214,80,'SMD Rework Station',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(114,214,80,'Drill Press',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(115,214,80,'Dremel',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(116,214,80,'Jigsaw',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(117,212,80,'Arduino UNO Starter Kit',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(118,215,80,'DIY Motors/Sensors Shield for Arduino','detailed part list is in \"Edit - Project\" view!','',2,0,NULL,'',1,'2012-07-26 15:20:56','',1,133),(119,215,80,'InsectBot DIY Kit',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(120,215,80,'DIY Kits from Mitch Altman',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(121,214,80,'Soldering irons',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(122,214,80,'SMD Rework Station',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(123,214,80,'Multimeters',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(124,214,80,'Tweezers',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(125,214,80,'Drill Press',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(126,214,80,'Dremel',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(127,214,80,'Jigsaw',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(128,214,80,'Mini-Mill',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(129,214,80,'Drill',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(130,214,80,'Lathe',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(131,214,80,'Hot glue gun',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(132,212,80,'Arduino Duemilanove',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(133,212,80,'Arduino Uno',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(134,210,80,'PandaBoard: Dual-core ARM Cortex-A9 computer','','',1,0,NULL,'IN USE - Paul -  the space web cams',1,'2012-07-26 15:20:56','',1,133),(135,212,80,'Nanode Ethernet-enabled Arduino',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(136,210,80,'5VT 1610 development boards',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(137,210,80,'Nexys3 Xilinx FPGA development board','','donated by Shyu Lee',1,0,NULL,'',1,'2012-07-26 15:20:56','',1,14),(138,214,80,'Element14 & Freescale XL Star Development Board',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:56',NULL,1,133),(139,210,80,'Mendel RepRap (3d printer)',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,133),(140,210,80,'Makerbot (3D-printer)',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,133),(141,214,80,'Tepra King Jim SR230C Label printer',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,133),(142,217,80,'microservo 9g SG90 TowerPro','poor quality','http://www.dfrobot.com/index.php?route=product/product&path=47_108&product_id=255',1,0,NULL,'',1,'2012-07-26 15:20:57','',1,134),(143,165,80,'Bus Pirate v3',NULL,'http://dangerousprototypes.com/docs/Bus_Pirate',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(144,165,80,'Bus Pirate PIC programming adapter [for developers]',NULL,'http://dangerousprototypes.com/docs/Bus_Pirate_PIC_programming_adapter',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(145,165,80,'Open Workbench Logic Sniffer',NULL,'http://dangerousprototypes.com/docs/Open_Bench_Logic_Sniffer',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(146,165,80,'Bus Blaster v2 JTAG debugger',NULL,'http://dangerousprototypes.com/docs/Bus_Blaster',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(147,218,80,'IR Toy','','http://dangerousprototypes.com/docs/USB_Infrared_Toy',1,0,NULL,'',1,'2012-07-26 15:20:57','',1,170),(148,165,80,'XC9572XL CPLD development board v1',NULL,'http://dangerousprototypes.com/docs/CPLD:_Complex_programmable_logic_devices',2,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(149,165,80,'315Mhz remote relay switch kits - 4 channels',NULL,'http://www.seeedstudio.com/depot/315mhz-remote-relay-switch-kits-2-channels-p-150.html?cPath=139',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(150,165,80,'USB Universal LCD backpack v1 IP Power',NULL,'http://dangerousprototypes.com/docs/USB_Universal_LCD_backpack',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(151,165,80,'Lipo Rider',NULL,'http://www.seeedstudio.com/depot/lipo-rider-p-710.html?cPath=155',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(152,165,80,'SD card shield for Arduino V2.1',NULL,'http://www.seeedstudio.com/depot/sd-card-shield-p-492.html?cPath=132_134',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(153,165,80,'LED 8',NULL,'http://www.soc-robotics.com/pdfs/LED8%20Technical%20Reference%20Manual.pdf',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(154,165,80,'Seeed - jyetech Capacitor testor',NULL,'http://www.jyetech.com/Products/CapMeter/e060.php',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(155,166,80,'2.54mm x 21mm male headers (very tall!)',NULL,'',100,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(156,165,80,'USnooBie',NULL,'http://www.frank-zhao.com/usnoobie/index.php',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(157,165,80,'IFC',NULL,'http://geoffg.net/fancontroller.html',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(158,165,80,'ECG',NULL,'http://www.siliconchip.com.au/cms/A_103787/article.html',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(159,165,80,'Timer',NULL,'http://www.siliconchip.com.au/cms/A_105013/article.html',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(160,165,80,'IR remote vol ctl',NULL,'http://www.siliconchip.com.au/cms/A_30559/article.html',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,68),(161,166,80,'SARduino328',NULL,'http://spaceagerobotics.com/blog/projects/sarduino/',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(162,166,80,'SARduino644',NULL,'http://spaceagerobotics.com/blog/projects/sarduino/',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(163,166,80,'IRToy PTH',NULL,'http://dangerousprototypes.com/docs/Infrared_Toy_through-hole_version',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(164,166,80,'FFC breakout 30 pin',NULL,'http://www.seeedstudio.com/depot/ffc-breakout-board-p-267.html?cPath=190',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(165,166,80,'FPC LCD breakout 0.5mm 60 pin',NULL,'http://www.seeedstudio.com/depot/lcd-ext-breakout-of-05mm-fpc-p-200.html?cPath=175_177',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(166,166,80,'xQFP breakout 0.8mm',NULL,'http://dangerousprototypes.com/docs/Dangerous_Proto_boards',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(167,166,80,'xQFP breakout 0.65mm',NULL,'http://dangerousprototypes.com/docs/Dangerous_Proto_boards',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(168,166,80,'xQFP breakout 0.5mm',NULL,'http://dangerousprototypes.com/docs/Dangerous_Proto_boards',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(169,167,80,'Atmel dragon & dragon rider',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(170,167,80,'molex floppy power cable',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(171,167,80,'motherboard with onboard video, with RAM & CPU, dont need case or power supply, 2 SATA ports, 1 PATA IDE port for CD/DVD',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(172,167,80,'SD cards or USB sticks - for Linux boot & psw mgt!',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(173,167,80,'ide or sata hard disks, esp laptop 1.8inch',NULL,'',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(174,165,80,'Omni purpose multi-segment TN LCD',NULL,'http://www.seeedstudio.com/depot/omni-purpose-multisegment-tn-lcd-p-1108.html?cPath=207',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(175,165,80,'Logic Sniffer 16-bit Input Buffer Wing',NULL,'http://www.seeedstudio.com/depot/logic-sniffer-16bit-input-buffer-wing-p-721.html?cPath=174',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(176,165,80,'Project Skeleton â€“ TFT Acrylic',NULL,'http://www.seeedstudio.com/depot/project-skeleton-%C3%82%E2%80%93-tft-acrylic-p-1073.html?cPath=178_184',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(177,165,80,'Project Skeleton â€“ TFT Wood',NULL,'http://www.seeedstudio.com/depot/project-skeleton-%C3%82%E2%80%93-tft-wood-p-1078.html?cPath=178_184',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(178,165,80,'Open logic sniffer probe cable',NULL,'http://www.seeedstudio.com/depot/open-logic-sniffer-probe-cable-p-619.html?cPath=178_180',2,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(179,165,80,'Grove - Chainable RGB LED',NULL,'http://www.seeedstudio.com/depot/grove-chainable-rgb-led-p-850.html?cPath=156_157',2,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(180,165,80,'Photo interrupter (OS25B10)',NULL,'http://www.seeedstudio.com/depot/photo-interrupter-os25b10-p-541.html?cPath=144_148',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(181,165,80,'Photo Reflective Sensor',NULL,'http://www.seeedstudio.com/depot/photo-reflective-sensor-p-543.html?cPath=144_148',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(182,165,80,'Grove - I2C Hub',NULL,'http://www.seeedstudio.com/depot/grove-i2c-hub-p-851.html?cPath=178_191',2,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(183,165,80,'Grove - RTC',NULL,'http://www.seeedstudio.com/depot/grove-rtc-p-758.html?cPath=144_152',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(184,165,80,'Renbotics Side Shield',NULL,'http://www.seeedstudio.com/depot/renbotics-side-shield-p-741.html?cPath=132_134',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(185,165,80,'SD card shield for Arduino V2.1',NULL,'http://www.seeedstudio.com/depot/sd-card-shield-p-492.html?cPath=109',1,0,NULL,NULL,1,'2012-07-26 15:20:57',NULL,1,166),(186,136,NULL,'XinCheJian roboracing bootstrap Shield printed PCB','','',0,0,NULL,'',1,'2012-07-30 20:44:20','',1,120),(187,121,NULL,'L293D h-Bridge Chip','','',0,0,NULL,'',1,'2012-07-30 20:46:20','',1,98),(188,13,NULL,'16pin DIP IC socket','','',0,0,NULL,'',1,'2012-07-30 20:48:37','',1,136),(191,220,NULL,'1838B or TSOP1838B or VS1838B','IR LED receiver','\n',0,0,NULL,'',0,'2012-08-13 10:25:30','',1,98),(193,120,23,'AtTiny2313-PU','','',0,0,NULL,'',0,'2012-08-13 15:15:14','',1,98),(194,120,26,'Atmega328-PU','common Arduino uP','',0,0,NULL,'',0,'2012-08-13 15:18:44','',1,26),(195,160,NULL,'Wheel','','wheel is bottle cap, tyre = ??',0,0,NULL,'',0,'2012-08-13 15:24:56','',1,98),(196,101,NULL,'LED 3mm Red','','',0,0,NULL,'',0,'2012-08-13 15:27:31','',1,98),(197,101,NULL,'LED 3mm Yellow','','',0,0,NULL,'',0,'2012-08-13 15:48:00','',1,98),(198,101,NULL,'LED 3mm Green','','',0,0,NULL,'',0,'2012-08-13 15:48:16','',1,98),(199,101,NULL,'LED 3mm Blue','','',0,0,NULL,'',0,'2012-08-13 15:48:33','',1,98),(200,136,NULL,'ALF Analog Line Follower PCB 2012-08','','',130,0,NULL,'',0,'2012-08-13 15:50:34','',1,139),(201,136,NULL,'SwarmRobots PCB 2012-08-09','','',0,0,NULL,'',0,'2012-08-13 15:51:16','',1,98),(202,13,NULL,'3x2 2.54mm Male Dual row header (DIL)','','cut from x 40x2 if required',0,0,NULL,'',0,'2012-08-13 15:59:33','',1,98),(203,13,NULL,'40x2 2.54mm Male Dual row  header (DIL)','','cut to smaller size if required',100,0,NULL,'',0,'2012-08-13 16:00:20','',1,26),(204,13,NULL,'40x1 2.54mm Male Single row  header (SIL)','','cut from x 40x2 if required',0,0,NULL,'',0,'2012-08-13 16:00:54','',1,26),(205,13,NULL,'8x1 2.54mm Male Single row  header (SIL)','','cut from 40x1 if required',0,0,NULL,'',0,'2012-08-13 16:03:19','',1,98),(206,13,NULL,'2x1 2.54mm Male Single row  header (SIL)','','cut from 40x1 if required',0,0,NULL,'',0,'2012-08-13 16:05:30','',1,98),(207,13,NULL,'40x1 2.54mm Female Single row socket (SIL)','','cut down if required (this will destroy one pin)',0,0,NULL,'',0,'2012-08-13 16:06:40','',1,26),(208,13,NULL,'40x1 2.54mm Stackable Female Single row socket (SIL)','Has 12mm male pins to enable stacking of PCBs or shields ','cut down if required (this will destroy one pin)',0,0,NULL,'',0,'2012-08-13 16:08:20','',1,26),(209,13,NULL,'8pin DIP IC socket','','',0,0,NULL,'',1,'2012-08-13 16:08:39','',1,136),(210,13,NULL,'14pin DIP IC socket','','',0,0,NULL,'',1,'2012-08-13 16:09:06','',1,136),(211,13,NULL,'18pin DIP IC socket','','',0,0,NULL,'',1,'2012-08-13 16:09:19','',1,136),(212,13,NULL,'20pin DIP IC socket','','',0,0,NULL,'',1,'2012-08-13 16:09:36','',1,136),(213,13,NULL,'28pin DIP IC socket','','',0,0,NULL,'',1,'2012-08-13 16:10:13','',1,136),(214,13,NULL,'6x1 2.54mm Male Single row  header (SIL)','','cut from 40x1 if required',0,0,NULL,'',0,'2012-08-13 16:18:24','',1,98),(215,3,NULL,'SPST PCB  mount','','',0,0,NULL,'',0,'2012-08-13 21:08:46','',1,98),(216,3,NULL,'SPST panel  mount','','',0,0,NULL,'',0,'2012-08-13 21:09:55','',1,129),(217,3,NULL,'DPST PCB  mount','','',0,0,NULL,'',0,'2012-08-13 21:10:09','',1,129),(218,3,NULL,'DPST panel  mount','','',0,0,NULL,'',0,'2012-08-13 21:11:02','',1,129),(219,126,39,'5V Regulator 78L05','low power','0.07 http://item.taobao.com/item.htm?spm=a2106.mdefault.1000384.d14&id=10396743063&cm_cat=0&scm=1029.0.1.1',0,0,NULL,'',1,'2012-08-13 21:24:16','',1,45),(220,13,NULL,'6x1 2.54mm Female Single row socket (SIL)','','cut down from 40x1 if required (this will destroy one pin)',0,0,NULL,'',0,'2012-08-13 21:51:24','',1,26),(221,13,NULL,'8x1 2.54mm Female Single row socket (SIL)','','cut down from 40x1 if required (this will destroy one pin)',0,0,NULL,'',0,'2012-08-13 21:52:02','',1,98),(222,13,NULL,'10x1 2.54mm Female Single row socket (SIL)','','cut down from 40x1 if required (this will destroy one pin)',0,0,NULL,'',0,'2012-08-13 21:52:19','',1,26),(223,13,NULL,'12x1 2.54mm Female Single row socket (SIL)','','cut down from 40x1 if required (this will destroy one pin)',0,0,NULL,'',0,'2012-08-13 21:52:34','',1,26),(224,136,NULL,'Breadboard','expand this entry with the different sizes on hand!','',0,0,NULL,'',0,'2012-08-13 21:57:02','',1,98),(225,143,NULL,'Motor J928','miniature with right angle gearbox','J910\n30mm*12mm*8mm，\nＤＣ4.5V--9V，\n\n4.5Y http://item.taobao.com/item.htm?spm=a230r.1.10.71&id=14772575386\n\nJo30 30mm*12mm*8mm，工作电压：ＤＣ4.5V--9V',10,0,0.3000,'',0,'2012-08-17 20:00:24','',1,98),(226,160,NULL,'Tyres','rubber band like material to give bottle cap wheels traction','',0,0,NULL,'',0,'2012-08-17 20:06:09','',1,98),(228,3,NULL,'DPDT PCB  mount','','0.18 KFC7*7 http://item.taobao.com/item.htm?spm=a2106.mdefault.1000384.d131&id=17866512418&cm_cat=0&scm=1029.0.1.1\n\n0.18 KFC8*8 http://item.taobao.com/item.htm?spm=a2106.mdefault.1000384.d133&id=13206510430&cm_cat=0&scm=1029.0.1.1',0,0,NULL,'',0,'2012-08-18 19:19:52','',1,129),(229,215,NULL,'Arduino Starter Kit','','',14,2,21.4286,'',0,'2012-08-23 16:50:10','',1,133),(230,151,NULL,'screw - tiny','','',0,0,NULL,'',0,'2012-08-23 19:51:11','',1,98),(231,163,NULL,'Hot melt glue','','',0,0,NULL,'',0,'2012-08-23 19:56:23','',1,98),(232,134,NULL,'Hookup wire','eg 13 x 0.12mm','create separate entries for all the different colours',0,0,NULL,'',0,'2012-08-25 15:20:10','',1,98),(233,134,NULL,'Rainbow Cable 16 Core','eg 13 x 0.12mm','',0,0,NULL,'',0,'2012-08-25 15:21:01','',1,129),(234,134,NULL,'Rainbow Cable 10 Core','eg 13 x 0.12mm','',0,0,NULL,'',0,'2012-08-25 15:21:30','',1,129),(235,134,NULL,'Rainbow Cable 6 Core','eg 13 x 0.12mm','',0,0,NULL,'',0,'2012-08-25 15:21:51','',1,129),(236,224,NULL,'Lithium 3.7V 500mAH','','',0,0,NULL,'',0,'2012-08-27 07:51:31','',1,129),(237,224,NULL,'USB lithium battery charger','','circuit & info http://blog.163.com/pvc_robot/blog/static/17527643220115610314177/',0,0,NULL,'',0,'2012-08-27 08:01:14','',1,98),(238,223,NULL,'Lithium 180mA 3.7V','','',0,0,NULL,'',0,'2012-08-27 08:10:27','',1,98),(241,226,NULL,'Cafe Latte Qilin','Cafe Latte 500ml','',0,5,5.0000,'',0,'2012-08-28 21:43:38','',1,66),(242,226,NULL,'Orange Juice','Orange Juice 450ml','',2,5,5.0000,'in stock',0,'2012-08-28 21:45:44','',1,66),(243,226,NULL,'Milk Tea','Milk Tea 500ml','',2,5,2.0000,'',0,'2012-08-28 21:47:13','',1,66),(244,226,NULL,'WLG','Wang Lao Ji 250ml','',4,1,5.0000,'',0,'2012-08-28 21:48:19','',1,122),(245,226,NULL,'Coke Zero','Coke Zero 330ml','',3,5,0.3846,'',0,'2012-08-28 21:48:59','',1,122),(246,226,NULL,'7up','7up 330ml','',5,5,1.0000,'',0,'2012-08-28 21:49:24','',1,122),(247,226,NULL,'wu long tea','Wu long tea 500ml','',0,5,NULL,'',0,'2012-08-28 21:51:06','',1,66),(248,226,NULL,'Fanta','Fanta 330ml','',0,5,NULL,'',0,'2012-08-28 21:54:01','',1,122),(249,226,NULL,'Coke ','Coke 330ml','',1,5,NULL,'',0,'2012-08-28 21:55:04','',1,122),(250,226,NULL,'Water','water 550ml','',0,5,NULL,'',0,'2012-08-28 21:56:44','',1,66),(251,226,NULL,'Beer Tsingdao','beer Tsingdao','',0,5,NULL,'',0,'2012-08-28 21:57:38','',1,66),(252,228,NULL,'ISP Programmer','','',0,0,NULL,'',0,'2012-08-31 20:59:35','',1,171),(253,226,NULL,'Ice tea','Ice tea 500ml','',0,5,NULL,'',0,'2012-09-01 13:57:37','',1,66),(254,226,NULL,'Cafe Latte Nestle','Cafe Latte 268ml','',0,5,NULL,'',0,'2012-09-01 13:59:21','',1,66),(255,226,NULL,'Cafe Latte Haya','Cafe Latte 250ml','',0,5,NULL,'',0,'2012-09-01 13:59:55','',1,66),(256,210,NULL,'Ping Pong ball launcher','','Lutz bought back from Campus party Germany September 2012',1,0,NULL,'',0,'2012-09-22 10:39:17','',1,171),(257,229,NULL,'PartKeeper server','','is actually on the bench near the door!',1,0,NULL,'',0,'2012-09-22 10:49:43','',1,157),(258,229,NULL,'Computer - michaels box','main computer for general use','',0,0,NULL,'',0,'2012-09-22 10:50:34','',1,172),(259,229,NULL,'computer','','still in a bag somewhere in machine room????',1,0,NULL,'',0,'2012-09-22 10:54:53','',1,157),(260,229,NULL,'laptop','in the arcade machine','not on this bench - but usually towards it!',1,0,NULL,'',0,'2012-09-22 10:56:10','',1,172),(261,210,NULL,'Game Arcade macine','','not on the desk, but usually located towards it....',1,0,NULL,'',0,'2012-09-22 10:59:25','',1,172),(262,210,NULL,'makeblock kit','','out on loan?? Rockets has ?????\n\nhttp://www.seeedstudio.com/depot/index.php?main_page=advanced_search_result&search_in_description=0&zenid=a4b382316557fbce02ce814ad11cebd4&keyword=makeb&x=0&y=0',2,0,NULL,'',0,'2012-09-22 11:01:13','',1,166),(264,210,NULL,'Grove toy kit','Lots of Grove sensors','donated by Seeed Studio.\n\ndid they donate two?\n\nSpencer has some/most of the bits - 2012-09-22',1,0,NULL,'',0,'2012-09-22 11:17:01','',1,166),(265,210,NULL,'Maksim community loan box','variety of Arduino sensors','',0,0,NULL,'',0,'2012-09-22 11:48:10','',1,1),(266,210,NULL,'DFRobot sensors','variety of sensors','donated/loaned by DFRobots????',1,0,NULL,'',0,'2012-09-22 11:49:19','',1,1),(267,210,NULL,'Flashforge Adventurer III 3D printer','','??on loan until the bigger model delivered?\n\ndonation by Flashforge  http://www.ff3dp.com/',1,0,NULL,'',0,'2012-09-22 15:21:12','',1,172);
/*!40000 ALTER TABLE `Part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartAttachment`
--

DROP TABLE IF EXISTS `PartAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `isImage` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_76D73D864CE34BEC` (`part_id`),
  CONSTRAINT `FK_76D73D864CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartAttachment`
--

LOCK TABLES `PartAttachment` WRITE;
/*!40000 ALTER TABLE `PartAttachment` DISABLE KEYS */;
INSERT INTO `PartAttachment` VALUES (1,219,'PartAttachment','571f60e7-0b6e-415c-a67f-c3006d13fdb7','571f60e7-0b6e-415c-a67f-c3006d13fdb7.pdf','application/pdf',244258,'',0),(2,237,'PartAttachment','6a042efa-433c-42b8-898b-02cefb991c5f','6a042efa-433c-42b8-898b-02cefb991c5f.jpeg','image/jpeg',47279,'',1);
/*!40000 ALTER TABLE `PartAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartCategory`
--

DROP TABLE IF EXISTS `PartCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` longtext,
  `categoryPath` longtext,
  PRIMARY KEY (`id`),
  KEY `IDX_131FB619DA439252` (`lft`),
  KEY `IDX_131FB619D5E02D69` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartCategory`
--

LOCK TABLES `PartCategory` WRITE;
/*!40000 ALTER TABLE `PartCategory` DISABLE KEYS */;
INSERT INTO `PartCategory` VALUES (1,1,456,'Root Category','','Root Category'),(2,2,41,'3 Electromechanical Components','','Root Category ➤ 3 Electromechanical Components'),(3,3,4,'1 Switch','','Root Category ➤ 3 Electromechanical Components ➤ 1 Switch'),(4,5,6,'2 Button','','Root Category ➤ 3 Electromechanical Components ➤ 2 Button'),(5,7,32,'3 Connector','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector'),(6,8,9,'1 Screws','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 1 Screws'),(7,10,11,'2 Soldering','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 2 Soldering'),(8,12,31,'3 Connectors','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors'),(9,13,14,'1 Coaxial','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 1 Coaxial'),(10,15,16,'2 Round','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 2 Round'),(11,17,18,'3 Rectangular','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 3 Rectangular'),(12,19,20,'4 Terminals','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 4 Terminals'),(13,21,22,'5 PCB Connectors','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 5 PCB Connectors'),(14,23,24,'6 Connector Accessories','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 6 Connector Accessories'),(15,25,28,'7 Plugs & Sockets','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 7 Plugs & Sockets'),(16,26,27,'1 IC Sockel','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 7 Plugs & Sockets ➤ 1 IC Sockel'),(17,29,30,'8 Banna plugs??','','Root Category ➤ 3 Electromechanical Components ➤ 3 Connector ➤ 3 Connectors ➤ 8 Banna plugs??'),(18,33,34,'4 Relay','','Root Category ➤ 3 Electromechanical Components ➤ 4 Relay'),(19,35,36,'5 SchÃ¼tze = German for??','','Root Category ➤ 3 Electromechanical Components ➤ 5 SchÃ¼tze = German for??'),(20,37,38,'7 Fuses & Accessories','','Root Category ➤ 3 Electromechanical Components ➤ 7 Fuses & Accessories'),(21,39,40,'6 Line motor protection switch','','Root Category ➤ 3 Electromechanical Components ➤ 6 Line motor protection switch'),(22,42,139,'2 Passive Components','','Root Category ➤ 2 Passive Components'),(23,43,82,'1 Resistors','','Root Category ➤ 2 Passive Components ➤ 1 Resistors'),(24,44,57,'1 Fixed Resistors','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 1 Fixed Resistors'),(25,45,46,'1 Carbon Film','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 1 Fixed Resistors ➤ 1 Carbon Film'),(26,47,48,'2 Metall film','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 1 Fixed Resistors ➤ 2 Metall film'),(27,49,50,'3 Shunt','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 1 Fixed Resistors ➤ 3 Shunt'),(28,51,52,'4 Heating elements','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 1 Fixed Resistors ➤ 4 Heating elements'),(29,53,54,'5 Photo resistors','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 1 Fixed Resistors ➤ 5 Photo resistors'),(30,55,56,'6 Wire resistors','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 1 Fixed Resistors ➤ 6 Wire resistors'),(31,58,65,'2 Non-linear Resistors','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 2 Non-linear Resistors'),(32,59,60,'2 PT100','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 2 Non-linear Resistors ➤ 2 PT100'),(33,61,62,'3 Thermistor NTC','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 2 Non-linear Resistors ➤ 3 Thermistor NTC'),(34,63,64,'1 Thermistor PTC','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 2 Non-linear Resistors ➤ 1 Thermistor PTC'),(35,66,67,'3 Varistors','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 3 Varistors'),(36,68,77,'4 Variable resistors','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 4 Variable resistors'),(37,69,70,'3 Slide Potentiometer','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 4 Variable resistors ➤ 3 Slide Potentiometer'),(38,71,74,'1 Potentiometer','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 4 Variable resistors ➤ 1 Potentiometer'),(39,72,73,'1 Accessories','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 4 Variable resistors ➤ 1 Potentiometer ➤ 1 Accessories'),(40,75,76,'2 Trimmer','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 4 Variable resistors ➤ 2 Trimmer'),(41,78,81,'5 Resistor networks','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 5 Resistor networks'),(42,79,80,'1 SMD','','Root Category ➤ 2 Passive Components ➤ 1 Resistors ➤ 5 Resistor networks ➤ 1 SMD'),(43,83,114,'2 Capacitors','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors'),(44,84,85,'1 Ceramic Capacitor','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 1 Ceramic Capacitor'),(45,86,97,'2 Plastic Film Capacitor','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 2 Plastic Film Capacitor'),(46,87,88,'1 Polyester MKT MKH','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 2 Plastic Film Capacitor ➤ 1 Polyester MKT MKH'),(47,89,90,'2 Polycarbonat MKM MKC ','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 2 Plastic Film Capacitor ➤ 2 Polycarbonat MKM MKC '),(48,91,92,'3 Cellulose acetate MKU MKL ','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 2 Plastic Film Capacitor ➤ 3 Cellulose acetate MKU MKL '),(49,93,94,'4 Polystyrene MKS MKY ','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 2 Plastic Film Capacitor ➤ 4 Polystyrene MKS MKY '),(50,95,96,'5 Polyproplene MKP ','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 2 Plastic Film Capacitor ➤ 5 Polyproplene MKP '),(51,98,99,'3 Gold-Cap ','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 3 Gold-Cap '),(52,100,101,'4 Styroflex capacitors','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 4 Styroflex capacitors'),(53,102,109,'5 Electrolytic capacitors','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 5 Electrolytic capacitors'),(54,103,104,'1 Aluminium-Electrolytic','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 5 Electrolytic capacitors ➤ 1 Aluminium-Electrolytic'),(55,105,106,'2 Tantalum Electrolytic','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 5 Electrolytic capacitors ➤ 2 Tantalum Electrolytic'),(56,107,108,'3 Bipolar Electrolytic','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 5 Electrolytic capacitors ➤ 3 Bipolar Electrolytic'),(57,110,111,'6 Mica capacitors','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 6 Mica capacitors'),(58,112,113,'7 Variable Capacitors','','Root Category ➤ 2 Passive Components ➤ 2 Capacitors ➤ 7 Variable Capacitors'),(59,115,126,'3 Inductors','','Root Category ➤ 2 Passive Components ➤ 3 Inductors'),(60,116,117,'1 Inductors','','Root Category ➤ 2 Passive Components ➤ 3 Inductors ➤ 1 Inductors'),(61,118,119,'2 Coils','','Root Category ➤ 2 Passive Components ➤ 3 Inductors ➤ 2 Coils'),(62,120,121,'3 Drossel=Throttle, adj coils','','Root Category ➤ 2 Passive Components ➤ 3 Inductors ➤ 3 Drossel=Throttle, adj coils'),(63,122,123,'4 Transformers Transformatoren','','Root Category ➤ 2 Passive Components ➤ 3 Inductors ➤ 4 Transformers Transformatoren'),(64,124,125,'5 Transformers Ãœbertrager','','Root Category ➤ 2 Passive Components ➤ 3 Inductors ➤ 5 Transformers Ãœbertrager'),(65,127,138,'4 Other Passive devices','','Root Category ➤ 2 Passive Components ➤ 4 Other Passive devices'),(66,128,129,'1 Bulbs','','Root Category ➤ 2 Passive Components ➤ 4 Other Passive devices ➤ 1 Bulbs'),(67,130,131,'2 Memristor','','Root Category ➤ 2 Passive Components ➤ 4 Other Passive devices ➤ 2 Memristor'),(68,132,137,'3 Flux compensator???','','Root Category ➤ 2 Passive Components ➤ 4 Other Passive devices ➤ 3 Flux compensator???'),(69,133,134,'1 unter 88 Meilen / Stunde??','','Root Category ➤ 2 Passive Components ➤ 4 Other Passive devices ➤ 3 Flux compensator??? ➤ 1 unter 88 Meilen / Stunde??'),(70,135,136,'2 Ã¼ber 88 Meilen / Stunde??','','Root Category ➤ 2 Passive Components ➤ 4 Other Passive devices ➤ 3 Flux compensator??? ➤ 2 Ã¼ber 88 Meilen / Stunde??'),(71,140,259,'1 Active Components','','Root Category ➤ 1 Active Components'),(72,141,178,'1 Semiconductor','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor'),(73,142,153,'1 Diodes','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 1 Diodes'),(74,143,144,'1 Universal diodes','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 1 Diodes ➤ 1 Universal diodes'),(75,145,146,'2 Rectifiers','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 1 Diodes ➤ 2 Rectifiers'),(76,147,148,'3 Zener Diodes','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 1 Diodes ➤ 3 Zener Diodes'),(77,149,150,'4 Schottky Diodes','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 1 Diodes ➤ 4 Schottky Diodes'),(78,151,152,'5 Capacitance diodes','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 1 Diodes ➤ 5 Capacitance diodes'),(79,154,167,'2 Transistors','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 2 Transistors'),(80,155,156,'1 NPN','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 2 Transistors ➤ 1 NPN'),(81,157,158,'2 PNP','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 2 Transistors ➤ 2 PNP'),(82,159,160,'3 Darlington-Transistor ','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 2 Transistors ➤ 3 Darlington-Transistor '),(83,161,162,'4 JFET','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 2 Transistors ➤ 4 JFET'),(84,163,164,'5 Metal Oxide FET MOSFET','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 2 Transistors ➤ 5 Metal Oxide FET MOSFET'),(85,165,166,'6 Power MOSFET','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 2 Transistors ➤ 6 Power MOSFET'),(86,168,169,'3 Thyristors','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 3 Thyristors'),(87,170,171,'4 Diacs','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 4 Diacs'),(88,172,173,'5 Triacs','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 5 Triacs'),(89,174,175,'6 Piezo','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 6 Piezo'),(90,176,177,'7 Bridge Rectifier','','Root Category ➤ 1 Active Components ➤ 1 Semiconductor ➤ 7 Bridge Rectifier'),(91,179,182,'5 Tubes','','Root Category ➤ 1 Active Components ➤ 5 Tubes'),(92,180,181,'1 Nixie Tubes','','Root Category ➤ 1 Active Components ➤ 5 Tubes ➤ 1 Nixie Tubes'),(93,183,194,'4 Energy sources','','Root Category ➤ 1 Active Components ➤ 4 Energy sources'),(94,184,185,'1 Batteries','','Root Category ➤ 1 Active Components ➤ 4 Energy sources ➤ 1 Batteries'),(95,186,187,'2 Rechargeable batteries','','Root Category ➤ 1 Active Components ➤ 4 Energy sources ➤ 2 Rechargeable batteries'),(96,188,189,'3 Solar cells','','Root Category ➤ 1 Active Components ➤ 4 Energy sources ➤ 3 Solar cells'),(97,190,191,'4 # Peltier-Element ','','Root Category ➤ 1 Active Components ➤ 4 Energy sources ➤ 4 # Peltier-Element '),(98,192,193,'5 Generator','','Root Category ➤ 1 Active Components ➤ 4 Energy sources ➤ 5 Generator'),(99,195,232,'3 Optoelectronic devices','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices'),(100,196,197,'1 Laser diodes','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 1 Laser diodes'),(101,198,211,'2 LEDs','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 2 LEDs'),(102,199,200,'1 Universal','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 2 LEDs ➤ 1 Universal'),(103,201,202,'2 RGB','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 2 LEDs ➤ 2 RGB'),(104,203,204,'3 High Power','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 2 LEDs ➤ 3 High Power'),(105,205,206,'4 LED Array ','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 2 LEDs ➤ 4 LED Array '),(106,207,208,'5 7-Segment ','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 2 LEDs ➤ 5 7-Segment '),(107,209,210,'6 Accessories ','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 2 LEDs ➤ 6 Accessories '),(108,212,213,'4 LCDs','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 4 LCDs'),(109,214,215,'5 Photocells','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 5 Photocells'),(110,216,225,'6 Photo Semiconductors','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 6 Photo Semiconductors'),(111,217,218,'1 Photo diodes','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 6 Photo Semiconductors ➤ 1 Photo diodes'),(112,219,220,'2 Photo transistors','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 6 Photo Semiconductors ➤ 2 Photo transistors'),(113,221,222,'3 Solid-state-Relays','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 6 Photo Semiconductors ➤ 3 Solid-state-Relays'),(114,223,224,'4 CCD & CMOS-Sensors','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 6 Photo Semiconductors ➤ 4 CCD & CMOS-Sensors'),(115,226,227,'7 Lamps','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 7 Lamps'),(116,228,229,'8 Fibre Optics','','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 8 Fibre Optics'),(117,233,258,'2 Integrated Circuits ICs','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs'),(118,234,235,'1 ROM','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 1 ROM'),(119,236,237,'2 RAM','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 2 RAM'),(120,238,239,'3 Microprocessor','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 3 Microprocessor'),(121,240,241,'4 Analog ICs ','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 4 Analog ICs '),(122,242,247,'5 Logic gates','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 5 Logic gates'),(123,243,244,'1 TTL','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 5 Logic gates ➤ 1 TTL'),(124,245,246,'2 CMOS','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 5 Logic gates ➤ 2 CMOS'),(125,248,249,'6 Operational amplifiers','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 6 Operational amplifiers'),(126,250,251,'7 Voltage Regulator','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 7 Voltage Regulator'),(127,252,253,'8 Optocoupler','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 8 Optocoupler'),(128,254,255,'9 Digital to Analog convertors','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ 9 Digital to Analog convertors'),(129,256,257,'A GAL PAL FPGA','','Root Category ➤ 1 Active Components ➤ 2 Integrated Circuits ICs ➤ A GAL PAL FPGA'),(130,260,273,'5 Wire and PCB','','Root Category ➤ 5 Wire and PCB'),(131,261,262,'1 Line','','Root Category ➤ 5 Wire and PCB ➤ 1 Line'),(132,263,264,'2 Coaxial','','Root Category ➤ 5 Wire and PCB ➤ 2 Coaxial'),(133,265,266,'3 Ribbon','','Root Category ➤ 5 Wire and PCB ➤ 3 Ribbon'),(134,267,268,'4 Stranded wire','','Root Category ➤ 5 Wire and PCB ➤ 4 Stranded wire'),(135,269,270,'5 Wire (solid?)','','Root Category ➤ 5 Wire and PCB ➤ 5 Wire (solid?)'),(136,271,272,'6 PCB','','Root Category ➤ 5 Wire and PCB ➤ 6 PCB'),(137,274,279,'4 Vibrating devices','','Root Category ➤ 4 Vibrating devices'),(138,275,276,'1 Quartz Crystals','','Root Category ➤ 4 Vibrating devices ➤ 1 Quartz Crystals'),(139,277,278,'2 Quartz Oscillators','','Root Category ➤ 4 Vibrating devices ➤ 2 Quartz Oscillators'),(140,280,283,'7 Sensors','','Root Category ➤ 7 Sensors'),(141,281,282,'1 Microphones','','Root Category ➤ 7 Sensors ➤ 1 Microphones'),(142,284,297,'6 Actuators','','Root Category ➤ 6 Actuators'),(143,285,286,'1 Electric Motors','','Root Category ➤ 6 Actuators ➤ 1 Electric Motors'),(144,287,288,'3 Stepper Motors','','Root Category ➤ 6 Actuators ➤ 3 Stepper Motors'),(145,289,290,'4 Solenoids','','Root Category ➤ 6 Actuators ➤ 4 Solenoids'),(146,291,292,'5 Speakers','','Root Category ➤ 6 Actuators ➤ 5 Speakers'),(147,293,294,'6 Fans','','Root Category ➤ 6 Actuators ➤ 6 Fans'),(148,298,307,'8 Modules & Systems','','Root Category ➤ 8 Modules & Systems'),(149,299,300,'1 Switching Power Supplies','','Root Category ➤ 8 Modules & Systems ➤ 1 Switching Power Supplies'),(150,308,329,'9 Mechanical','','Root Category ➤ 9 Mechanical'),(151,309,310,'1 Screws','','Root Category ➤ 9 Mechanical ➤ 1 Screws'),(152,311,312,'2 Nuts','','Root Category ➤ 9 Mechanical ➤ 2 Nuts'),(153,313,314,'3 Washers','','Root Category ➤ 9 Mechanical ➤ 3 Washers'),(154,315,316,'5 Enclosures','','Root Category ➤ 9 Mechanical ➤ 5 Enclosures'),(155,317,318,'6 Cooling technology','','Root Category ➤ 9 Mechanical ➤ 6 Cooling technology'),(156,319,320,'4 Spacers','','Root Category ➤ 9 Mechanical ➤ 4 Spacers'),(157,321,322,'7 Nails','','Root Category ➤ 9 Mechanical ➤ 7 Nails'),(158,323,324,'8 Springs','','Root Category ➤ 9 Mechanical ➤ 8 Springs'),(159,325,326,'9 Anchors','','Root Category ➤ 9 Mechanical ➤ 9 Anchors'),(160,327,328,'A General','','Root Category ➤ 9 Mechanical ➤ A General'),(161,330,337,'A Supplies - consumables','','Root Category ➤ A Supplies - consumables'),(162,331,332,'1 Shrink tubing','','Root Category ➤ A Supplies - consumables ➤ 1 Shrink tubing'),(163,333,334,'2 Bonding technology','','Root Category ➤ A Supplies - consumables ➤ 2 Bonding technology'),(164,338,339,'To be determined','','Root Category ➤ To be determined'),(165,340,341,'Member items: Loan','','Root Category ➤ Member items: Loan'),(166,342,343,'Member items: Swap','','Root Category ➤ Member items: Swap'),(167,344,345,'Member items: Wanted','','Root Category ➤ Member items: Wanted'),(168,346,347,'Member items: For sale','','Root Category ➤ Member items: For sale'),(169,348,429,'Member Lockers & Blue boxes','Track locker & box use. Optionally list by who, if member wishes to advertise this!','Root Category ➤ Member Lockers & Blue boxes'),(170,349,350,'r1c1 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r1c1 allocated to: ?'),(171,351,352,'r1c2 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r1c2 allocated to: ?'),(172,353,354,'r1c3 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r1c3 allocated to: ?'),(173,355,356,'r1c4 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r1c4 allocated to: ?'),(174,357,358,'r1c5 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r1c5 allocated to: ?'),(175,359,360,'r1c6 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r1c6 allocated to: ?'),(176,361,362,'r1c7 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r1c7 allocated to: ?'),(177,363,364,'r1c8 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r1c8 allocated to: ?'),(178,365,366,'r2c1 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r2c1 allocated to: ?'),(179,367,368,'r2c2 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r2c2 allocated to: ?'),(180,369,370,'r2c3 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r2c3 allocated to: ?'),(181,371,372,'r2c4 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r2c4 allocated to: ?'),(182,373,374,'r2c5 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r2c5 allocated to: ?'),(183,375,376,'r2c6 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r2c6 allocated to: ?'),(184,377,378,'r2c7 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r2c7 allocated to: ?'),(185,379,380,'r2c8 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r2c8 allocated to: ?'),(186,381,382,'r3c1 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r3c1 allocated to: ?'),(187,383,384,'r3c2 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r3c2 allocated to: ?'),(188,385,386,'r3c3 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r3c3 allocated to: ?'),(189,387,388,'r3c4 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r3c4 allocated to: ?'),(190,389,390,'r3c5 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r3c5 allocated to: ?'),(191,391,392,'r3c6 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r3c6 allocated to: ?'),(192,393,394,'r3c7 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r3c7 allocated to: ?'),(193,395,396,'r3c8 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r3c8 allocated to: ?'),(194,397,398,'r4c1 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r4c1 allocated to: ?'),(195,399,400,'r4c2 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r4c2 allocated to: ?'),(196,401,402,'r4c3 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r4c3 allocated to: ?'),(197,403,404,'r4c4 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r4c4 allocated to: ?'),(198,405,406,'r4c5 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r4c5 allocated to: ?'),(199,407,408,'r4c6 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r4c6 allocated to: ?'),(200,409,410,'r4c7 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r4c7 allocated to: ?'),(201,411,412,'r4c8 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r4c8 allocated to: ?'),(202,413,414,'r5c1 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r5c1 allocated to: ?'),(203,415,416,'r5c2 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r5c2 allocated to: ?'),(204,417,418,'r5c3 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r5c3 allocated to: ?'),(205,419,420,'r5c4 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r5c4 allocated to: ?'),(206,421,422,'r5c5 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r5c5 allocated to: ?'),(207,423,424,'r5c6 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r5c6 allocated to: ?'),(208,425,426,'r5c7 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r5c7 allocated to: ?'),(209,427,428,'r5c8 allocated to: ?','','Root Category ➤ Member Lockers & Blue boxes ➤ r5c8 allocated to: ?'),(210,430,431,'>>Projects-toys-dongsi','in the space for use! \n\nIndividual parts for a project are managed via in edit-project menu!','Root Category ➤ >>Projects-toys-dongsi'),(211,432,433,'# Unused space to use!','Storage space not currently in use!\n\nTo \'use\' a storage location, Set part(s) location to one of these empty locations AND delete from the location from THIS list.\n\n.. and vice versa to add new empty storage spaces!','Root Category ➤ # Unused space to use!'),(212,301,302,'Arduino & shields','','Root Category ➤ 8 Modules & Systems ➤ Arduino & shields'),(213,303,304,'CPLD & FPGA','','Root Category ➤ 8 Modules & Systems ➤ CPLD & FPGA'),(214,434,435,'Tools','','Root Category ➤ Tools'),(215,436,437,'Kits: for sale','','Root Category ➤ Kits: for sale'),(216,438,439,'Test gear','','Root Category ➤ Test gear'),(217,295,296,'2 Servos','','Root Category ➤ 6 Actuators ➤ 2 Servos'),(218,440,441,'z LOST - please find','','Root Category ➤ z LOST - please find'),(219,442,443,'Member items: Wanted group buying','Organise group buying discounts here','Root Category ➤ Member items: Wanted group buying'),(220,230,231,'3 IR LEDs','InfraRed LED','Root Category ➤ 1 Active Components ➤ 3 Optoelectronic devices ➤ 3 IR LEDs'),(221,444,449,'B Batteries and Chargers','','Root Category ➤ B Batteries and Chargers'),(223,445,446,'Batteries','','Root Category ➤ B Batteries and Chargers ➤ Batteries'),(224,447,448,'Chargers','','Root Category ➤ B Batteries and Chargers ➤ Chargers'),(225,450,451,'XCJ Books','','Root Category ➤ XCJ Books'),(226,452,453,'XCJ Drinks','','Root Category ➤ XCJ Drinks'),(227,335,336,'3D supplies','','Root Category ➤ A Supplies - consumables ➤ 3D supplies'),(228,305,306,'Programmers','','Root Category ➤ 8 Modules & Systems ➤ Programmers'),(229,454,455,'XCJ Computers & devices','so everyone knows there is more than one computer and what all the network etc devices are!','Root Category ➤ XCJ Computers & devices');
/*!40000 ALTER TABLE `PartCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartDistributor`
--

DROP TABLE IF EXISTS `PartDistributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartDistributor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `distributor_id` int(11) DEFAULT NULL,
  `orderNumber` varchar(255) DEFAULT NULL,
  `packagingUnit` int(11) NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_FBA293844CE34BEC` (`part_id`),
  KEY `IDX_FBA293842D863A58` (`distributor_id`),
  CONSTRAINT `FK_FBA293842D863A58` FOREIGN KEY (`distributor_id`) REFERENCES `Distributor` (`id`),
  CONSTRAINT `FK_FBA293844CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartDistributor`
--

LOCK TABLES `PartDistributor` WRITE;
/*!40000 ALTER TABLE `PartDistributor` DISABLE KEYS */;
INSERT INTO `PartDistributor` VALUES (1,1,4,'',1,NULL,NULL),(2,2,4,'',1,NULL,NULL),(3,3,4,'',1,NULL,NULL),(4,4,4,'',1,NULL,NULL),(5,5,4,'',1,NULL,NULL),(6,6,4,'',1,NULL,NULL),(7,7,4,'',1,NULL,NULL),(8,8,4,'',1,NULL,NULL),(9,9,4,'',1,NULL,NULL),(10,10,4,'',1,NULL,NULL),(11,11,4,'',1,NULL,NULL),(12,12,4,'',1,NULL,NULL),(13,13,4,'',1,NULL,NULL),(14,14,4,'',1,NULL,NULL),(15,15,4,'',1,NULL,NULL),(16,16,4,'',1,NULL,NULL),(17,17,4,'',1,NULL,NULL),(18,18,4,'',1,NULL,NULL),(19,19,4,'',1,NULL,NULL),(20,20,4,'',1,NULL,NULL),(21,21,4,'',1,NULL,NULL),(22,22,4,'',1,NULL,NULL),(23,23,4,'',1,NULL,NULL),(24,24,4,'',1,NULL,NULL),(25,25,4,'',1,NULL,NULL),(26,26,4,'',1,NULL,NULL),(27,27,4,'',1,NULL,NULL),(28,28,4,'',1,NULL,NULL),(29,29,4,'',1,NULL,NULL),(30,30,4,'',1,NULL,NULL),(31,31,4,'',1,NULL,NULL),(32,32,4,'',1,NULL,NULL),(33,33,4,'',1,NULL,NULL),(34,34,4,'',1,NULL,NULL),(35,35,4,'',1,NULL,NULL),(36,36,4,'',1,NULL,NULL),(37,37,4,'',1,NULL,NULL),(38,38,4,'',1,NULL,NULL),(39,39,4,'',1,NULL,NULL),(40,40,4,'',1,NULL,NULL),(41,41,4,'',1,NULL,NULL),(42,42,4,'',1,NULL,NULL),(43,43,4,'',1,NULL,NULL),(44,44,4,'',1,NULL,NULL),(45,45,4,'',1,NULL,NULL),(46,46,4,'',1,NULL,NULL),(47,47,4,'',1,NULL,NULL),(48,48,4,'',1,NULL,NULL),(49,49,4,'',1,NULL,NULL),(50,50,4,'',1,NULL,NULL),(51,51,4,'',1,NULL,NULL),(52,52,4,'',1,NULL,NULL),(53,53,4,'',1,NULL,NULL),(54,54,4,'',1,NULL,NULL),(55,55,4,'',1,NULL,NULL),(56,56,4,'',1,NULL,NULL),(57,57,4,'',1,NULL,NULL),(58,58,4,'',1,NULL,NULL),(59,59,4,'',1,NULL,NULL),(60,60,4,'',1,NULL,NULL),(61,61,4,'',1,NULL,NULL),(62,62,4,'',1,NULL,NULL),(63,63,4,'',1,NULL,NULL),(64,64,4,'',1,NULL,NULL),(65,65,4,'',1,NULL,NULL),(66,66,4,'',1,NULL,NULL),(67,67,4,'',1,NULL,NULL),(68,68,4,'',1,NULL,NULL),(69,69,4,'',1,NULL,NULL),(70,70,4,'',1,NULL,NULL),(71,71,4,'',1,NULL,NULL),(72,72,4,'',1,0.0000,''),(73,73,4,'',1,NULL,NULL),(74,74,4,'',1,NULL,NULL),(75,75,4,'',1,NULL,NULL),(76,76,4,'',1,NULL,NULL),(77,77,4,'',1,NULL,NULL),(78,78,6,'',1,0.0100,''),(79,79,4,'',1,NULL,NULL),(80,80,4,'',1,NULL,NULL),(81,81,4,'',1,NULL,NULL),(82,82,4,'',1,NULL,NULL),(83,83,4,'',1,NULL,NULL),(84,84,4,'',1,NULL,NULL),(85,85,4,'',1,NULL,NULL),(86,86,4,'',1,NULL,NULL),(87,87,4,'',1,NULL,NULL),(88,88,4,'',1,NULL,NULL),(89,89,4,'',1,NULL,NULL),(90,90,4,'',1,NULL,NULL),(91,91,4,'',1,NULL,NULL),(92,92,4,'',1,NULL,NULL),(93,93,4,'',1,NULL,NULL),(94,94,4,'',1,NULL,NULL),(95,95,4,'',1,NULL,NULL),(96,96,4,'',1,NULL,NULL),(97,97,4,'',1,NULL,NULL),(98,98,4,'',1,NULL,NULL),(99,99,4,'',1,NULL,NULL),(100,100,4,'',1,NULL,NULL),(101,101,4,'',1,NULL,NULL),(102,102,4,'',1,NULL,NULL),(103,103,4,'',1,NULL,NULL),(104,104,4,'',1,NULL,NULL),(105,105,4,'',1,NULL,NULL),(106,106,4,'',1,NULL,NULL),(107,107,4,'',1,NULL,NULL),(108,108,4,'',1,NULL,NULL),(109,109,4,'',1,NULL,NULL),(110,110,4,'',1,NULL,NULL),(111,111,4,'',1,NULL,NULL),(112,112,4,'',1,NULL,NULL),(113,113,4,'',1,NULL,NULL),(114,114,4,'',1,NULL,NULL),(115,115,4,'',1,NULL,NULL),(116,116,4,'',1,NULL,NULL),(117,117,4,'',1,NULL,NULL),(118,118,4,'',1,50.0000,''),(119,119,4,'',1,NULL,NULL),(120,120,4,'',1,NULL,NULL),(121,121,4,'',1,NULL,NULL),(122,122,4,'',1,NULL,NULL),(123,123,4,'',1,NULL,NULL),(124,124,4,'',1,NULL,NULL),(125,125,4,'',1,NULL,NULL),(126,126,4,'',1,NULL,NULL),(127,127,4,'',1,NULL,NULL),(128,128,4,'',1,NULL,NULL),(129,129,4,'',1,NULL,NULL),(130,130,4,'',1,NULL,NULL),(131,131,4,'',1,NULL,NULL),(132,132,4,'',1,NULL,NULL),(133,133,4,'',1,NULL,NULL),(134,134,4,'',1,0.0000,''),(135,135,4,'',1,NULL,NULL),(136,136,4,'',1,NULL,NULL),(137,137,4,'',1,0.0000,''),(138,138,4,'',1,NULL,NULL),(139,139,4,'',1,NULL,NULL),(140,140,4,'',1,NULL,NULL),(141,141,4,'',1,NULL,NULL),(142,142,4,'',1,0.0000,''),(143,143,4,'',1,NULL,NULL),(144,144,4,'',1,NULL,NULL),(145,145,4,'',1,NULL,NULL),(146,146,4,'',1,NULL,NULL),(147,147,4,'',1,0.0000,''),(148,148,4,'',1,NULL,NULL),(149,149,4,'',1,NULL,NULL),(150,150,4,'',1,NULL,NULL),(151,151,4,'',1,NULL,NULL),(152,152,4,'',1,NULL,NULL),(153,153,4,'',1,NULL,NULL),(154,154,4,'',1,NULL,NULL),(155,155,4,'',1,NULL,NULL),(156,156,4,'',1,NULL,NULL),(157,157,4,'',1,NULL,NULL),(158,158,4,'',1,NULL,NULL),(159,159,4,'',1,NULL,NULL),(160,160,4,'',1,NULL,NULL),(161,161,4,'',1,NULL,NULL),(162,162,4,'',1,NULL,NULL),(163,163,4,'',1,NULL,NULL),(164,164,4,'',1,NULL,NULL),(165,165,4,'',1,NULL,NULL),(166,166,4,'',1,NULL,NULL),(167,167,4,'',1,NULL,NULL),(168,168,4,'',1,NULL,NULL),(169,169,4,'',1,NULL,NULL),(170,170,4,'',1,NULL,NULL),(171,171,4,'',1,NULL,NULL),(172,172,4,'',1,NULL,NULL),(173,173,1,'',1,NULL,NULL),(174,174,4,'',1,NULL,NULL),(175,175,4,'',1,NULL,NULL),(176,176,4,'',1,NULL,NULL),(177,177,4,'',1,NULL,NULL),(178,178,4,'',1,NULL,NULL),(179,179,4,'',1,NULL,NULL),(180,180,4,'',1,NULL,NULL),(181,181,4,'',1,NULL,NULL),(182,182,4,'',1,NULL,NULL),(183,183,4,'',1,NULL,NULL),(184,184,4,'',1,NULL,NULL),(185,185,4,'',1,NULL,NULL),(186,186,5,'',1,10.0000,''),(187,187,6,'http://item.taobao.com/item.htm?spm=a230r.1.10.63&id=14698384627',1,2.8000,''),(188,195,13,'',1,0.0100,''),(190,225,6,'3.5Y http://item.taobao.com/item.htm?spm=a230r.1.10.163&id=13758597818',1,3.0000,''),(191,226,13,'',1,0.0100,''),(192,191,6,'http://item.taobao.com/item.htm?spm=a230r.1.10.19&id=14691731276',1,0.4500,''),(193,219,6,'',1,0.0700,''),(194,228,6,'',1,0.1800,''),(195,193,9,'',1,18.0000,''),(196,206,14,'',1,0.0100,''),(197,215,14,'',1,0.0100,''),(198,199,14,'',1,0.0100,''),(199,196,14,'',1,0.0100,''),(200,231,6,'http://item.taobao.com/item.htm?spm=a230r.1.10.38&id=9604073433',1,0.0300,''),(201,226,15,'http://detail.tmall.com/item.htm?spm=a1z09.5.0.44&id=4672240418',4,0.7500,''),(202,236,6,'http://item.taobao.com/item.htm?id=2724918913',1,10.0000,''),(203,236,6,'http://item.taobao.com/item.htm?spm=a1z10.3.17.22&id=10651070573&',1,2.0000,''),(204,238,6,'http://item.taobao.com/item.htm?spm=a1z10.3.17.50&id=10651345659&',1,8.0000,''),(205,201,6,'http://store.taobao.com/shop/view_shop.htm?spm=a1z09.2.9.32&user_number_id=117902299',1,10.0000,''),(206,237,6,'http://item.taobao.com/item.htm?spm=a1z10.3.17.22&id=10651070573&',1,2.0000,''),(207,230,13,'',1,0.0100,''),(208,220,6,'',1,0.0000,''),(209,220,14,'',1,0.0100,''),(210,221,14,'',1,0.0100,''),(211,232,13,'',1,0.0100,''),(212,198,13,'',1,0.0100,''),(213,197,13,'',1,0.0100,''),(214,202,6,'',1,0.1000,''),(215,229,16,'',1,300.0000,''),(216,252,6,'http://item.taobao.com/item.htm?spm=a230r.1.10.9&id=5906065954',1,14.0000,''),(217,212,14,'',1,0.0100,''),(218,210,14,'',1,0.0100,'');
/*!40000 ALTER TABLE `PartDistributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartImage`
--

DROP TABLE IF EXISTS `PartImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A180A76E4CE34BEC` (`part_id`),
  CONSTRAINT `FK_A180A76E4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartImage`
--

LOCK TABLES `PartImage` WRITE;
/*!40000 ALTER TABLE `PartImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartKeeprUser`
--

DROP TABLE IF EXISTS `PartKeeprUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartKeeprUser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_7572D706F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartKeeprUser`
--

LOCK TABLES `PartKeeprUser` WRITE;
/*!40000 ALTER TABLE `PartKeeprUser` DISABLE KEYS */;
INSERT INTO `PartKeeprUser` VALUES (1,'admin','e230bb3a39ee61e6d944b9c18a837b19',1),(2,'spanner','b9444f561ef3d5ff8693d810d32eb82f',0),(3,'minlin','254298c157d9e16b115a0a7c364d9679',0),(4,'leoyan','353112c0f258aa8cce2da7d2d4a22eea',0);
/*!40000 ALTER TABLE `PartKeeprUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartManufacturer`
--

DROP TABLE IF EXISTS `PartManufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `partNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F085878B4CE34BEC` (`part_id`),
  KEY `IDX_F085878BA23B42D` (`manufacturer_id`),
  CONSTRAINT `FK_F085878B4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_F085878BA23B42D` FOREIGN KEY (`manufacturer_id`) REFERENCES `Manufacturer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartManufacturer`
--

LOCK TABLES `PartManufacturer` WRITE;
/*!40000 ALTER TABLE `PartManufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartManufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartParameter`
--

DROP TABLE IF EXISTS `PartParameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartParameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `value` double NOT NULL,
  `rawValue` double NOT NULL,
  `siPrefix_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A28A98594CE34BEC` (`part_id`),
  KEY `IDX_A28A9859F8BD700D` (`unit_id`),
  KEY `IDX_A28A985919187357` (`siPrefix_id`),
  CONSTRAINT `FK_A28A985919187357` FOREIGN KEY (`siPrefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_A28A98594CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_A28A9859F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `Unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartParameter`
--

LOCK TABLES `PartParameter` WRITE;
/*!40000 ALTER TABLE `PartParameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `PartParameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PartUnit`
--

DROP TABLE IF EXISTS `PartUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PartUnit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `shortName` varchar(255) NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PartUnit`
--

LOCK TABLES `PartUnit` WRITE;
/*!40000 ALTER TABLE `PartUnit` DISABLE KEYS */;
INSERT INTO `PartUnit` VALUES (1,'Pieces','pcs',1);
/*!40000 ALTER TABLE `PartUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Project`
--

DROP TABLE IF EXISTS `Project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E00EE972A76ED395` (`user_id`),
  CONSTRAINT `FK_E00EE972A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Project`
--

LOCK TABLES `Project` WRITE;
/*!40000 ALTER TABLE `Project` DISABLE KEYS */;
INSERT INTO `Project` VALUES (1,NULL,'MotorShield','Motor Shield is commonly used for roboracing or controlling up to two independent motors of various sizes with a separate power supply. Designed in the summer of 2011 by theNelson at XinCheJian after holding a Eagle CAD workshop, these went for production'),(2,NULL,'Swarm Robot moving PCB (version 2012-08-09)','The moving PCB sent for manufacture on 2012-08-09. PART LIST IS NOT YET COMPLETE!!! - eg add motors, wheels, tyres, battery, '),(3,NULL,'Swarm Robot IR Shield - prototype 1','Initial prototype is receive only - it works well to help find the ball or goal!\n\n***add breadboard, headers, MATCHING datasheets'),(4,NULL,'Swarm Robot IR Receive only Shield - matches moving PCB version 2012-08-09','Has 4 IR receiver LEDs, can do IR follow/avoid.'),(5,NULL,'Swarm Robot IR Receive & Transmit Shield - matches moving PCB version 2012-08-09','Has 4 IR receiver LEDs and one IR transmit LED. Can do IR follow, object detection, possible future IR communications & distance measurement.');
/*!40000 ALTER TABLE `Project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectAttachment`
--

DROP TABLE IF EXISTS `ProjectAttachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectAttachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_44010C5B166D1F9C` (`project_id`),
  CONSTRAINT `FK_44010C5B166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectAttachment`
--

LOCK TABLES `ProjectAttachment` WRITE;
/*!40000 ALTER TABLE `ProjectAttachment` DISABLE KEYS */;
INSERT INTO `ProjectAttachment` VALUES (3,3,'ProjectAttachment','f31a2136-64c0-4a72-97b6-1b490f954681','IR_Shield.pdf','application/pdf',11650,''),(7,1,'ProjectAttachment','e137d478-5c59-49b6-a807-8e8e5b3c17a4','Roboshield-original.jpg','image/jpeg',36607,''),(8,2,'ProjectAttachment','97cda374-2762-41ba-883a-915213accd08','swarmrobot.pdf','application/pdf',33046,''),(9,2,'ProjectAttachment','43a212bd-8157-4a16-a006-d282f97fb2bf','Soccer_bot_V1_v2.jpg','image/jpeg',156576,''),(14,2,'ProjectAttachment','e5c1a20e-d807-4226-85f3-cf62d9ce16e1','Swarm_Motor_PCB_flashing[1].jpg','image/jpeg',48490,'');
/*!40000 ALTER TABLE `ProjectAttachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectPart`
--

DROP TABLE IF EXISTS `ProjectPart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectPart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B0B193364CE34BEC` (`part_id`),
  KEY `IDX_B0B19336166D1F9C` (`project_id`),
  CONSTRAINT `FK_B0B19336166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `Project` (`id`),
  CONSTRAINT `FK_B0B193364CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectPart`
--

LOCK TABLES `ProjectPart` WRITE;
/*!40000 ALTER TABLE `ProjectPart` DISABLE KEYS */;
INSERT INTO `ProjectPart` VALUES (8,26,1,5,''),(9,77,1,2,''),(10,77,1,1,''),(11,186,1,1,''),(12,80,1,1,''),(13,187,1,1,''),(14,188,1,1,''),(19,191,3,4,''),(20,196,3,4,'Optional - just for end user imapct/use! Good to use different colours!'),(21,31,3,4,'used with the optional LEDs'),(22,193,2,1,''),(23,187,2,1,''),(63,196,2,2,'*OPTIONAL (Front skid can be replaced with bent wire) 1xPWR_LED1   LED, 1xUsed as Front wheel/skid'),(65,202,2,1,'*OPTIONAL ICSP1      CONN_3X2'),(66,206,2,1,'*OPTIONAL - can all be wired directly. M1, M2, PWR_IN1'),(67,221,2,2,'*OPTIONAL can wire directly'),(68,215,2,1,'*OPTIONAL - can just plug battery in/out! PWR_SWITCH1 SWITCH_INV'),(69,78,2,3,'*OPTIONAL R1, 2, 3'),(70,199,2,1,'*Optional Rx'),(71,197,2,1,'*Optional Tx'),(76,222,3,2,'** REVIEW, not sure if 10x1, or 8+2x1, or 6+2+2x1'),(77,31,3,1,''),(78,195,2,2,''),(79,201,2,1,'*OPTIONAL - can use breadboard or deadbug wiring!'),(82,225,2,2,''),(89,230,2,2,'to attach wheels to motors'),(90,231,2,1,'1/20th of a stick?  to attach motors and???'),(93,232,2,1,'*OPTIONAL about 100mm for motors and maybe for battery, or use two strands of Rainbow cable'),(97,210,2,2,'*Optional, can also use rubber bands, glue etc'),(98,238,2,1,''),(101,237,2,1,'*Optional - Do not need 1 for every SwarmBot'),(154,191,4,4,''),(155,224,4,1,''),(156,205,4,2,''),(157,232,4,1,'about 100-200mm, more if LEDs used'),(158,199,4,1,'*OPTIONAL - just flashy/showy/debug!'),(159,198,4,1,'*OPTIONAL - just flashy/showy/debug!'),(160,196,4,1,'*OPTIONAL - just flashy/showy/debug!'),(161,197,4,1,'*OPTIONAL - just flashy/showy/debug!'),(162,31,4,4,'*OPTIONAL - use 1 for each LED'),(163,252,2,1,''),(166,210,2,1,''),(167,212,2,1,'');
/*!40000 ALTER TABLE `ProjectPart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Session`
--

DROP TABLE IF EXISTS `Session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sessionid` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1FF9EC48A76ED395` (`user_id`),
  CONSTRAINT `FK_1FF9EC48A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Session`
--

LOCK TABLES `Session` WRITE;
/*!40000 ALTER TABLE `Session` DISABLE KEYS */;
INSERT INTO `Session` VALUES (2,2,'s2h2i2261qek1q2ks369qsvfo2'),(4,3,'m7je09j1vrv88nsp9sf2fd1df0'),(5,1,'uvah4pofdl84t5djq8o32uurd1'),(6,4,'imj34clcecb1hpv5g86m7aj3r1');
/*!40000 ALTER TABLE `Session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiPrefix`
--

DROP TABLE IF EXISTS `SiPrefix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiPrefix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(255) NOT NULL,
  `symbol` varchar(2) NOT NULL,
  `power` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiPrefix`
--

LOCK TABLES `SiPrefix` WRITE;
/*!40000 ALTER TABLE `SiPrefix` DISABLE KEYS */;
INSERT INTO `SiPrefix` VALUES (1,'yotta','Y',24),(2,'zetta','Z',21),(3,'exa','E',18),(4,'peta','P',15),(5,'tera','T',12),(6,'giga','G',9),(7,'mega','M',6),(8,'kilo','k',3),(9,'hecto','h',2),(10,'deca','da',1),(11,'-','',0),(12,'deci','d',-1),(13,'centi','c',-2),(14,'milli','m',-3),(15,'micro','μ',-6),(16,'nano','n',-9),(17,'pico','p',-12),(18,'femto','f',-15),(19,'atto','a',-18),(20,'zepto','z',-21),(21,'yocto','y',-24);
/*!40000 ALTER TABLE `SiPrefix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatisticSnapshot`
--

DROP TABLE IF EXISTS `StatisticSnapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatisticSnapshot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateTime` datetime NOT NULL,
  `parts` int(11) NOT NULL,
  `categories` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatisticSnapshot`
--

LOCK TABLES `StatisticSnapshot` WRITE;
/*!40000 ALTER TABLE `StatisticSnapshot` DISABLE KEYS */;
INSERT INTO `StatisticSnapshot` VALUES (1,'2012-08-11 00:00:01',188,218),(2,'2012-08-11 12:00:02',189,218),(3,'2012-08-12 00:00:02',189,218),(4,'2012-08-12 12:00:01',189,218),(5,'2012-08-13 00:00:01',189,218),(6,'2012-08-13 12:00:01',189,220),(7,'2012-08-14 00:00:02',221,220),(8,'2012-08-14 12:00:02',221,220),(9,'2012-08-15 00:00:02',221,220),(10,'2012-08-15 12:00:02',221,220),(11,'2012-08-16 00:00:01',221,220),(12,'2012-08-16 12:00:01',221,220),(13,'2012-08-17 00:00:01',221,220),(14,'2012-08-17 12:00:02',221,220),(15,'2012-08-18 00:00:01',223,220),(16,'2012-08-18 12:00:02',223,220),(17,'2012-08-19 00:00:02',224,220),(18,'2012-08-19 12:00:01',224,220),(19,'2012-08-21 00:00:01',224,220),(20,'2012-08-21 12:00:01',224,220),(21,'2012-08-22 00:00:01',224,220),(22,'2012-08-22 12:00:01',224,220),(23,'2012-08-23 00:00:01',224,220),(24,'2012-08-23 12:00:01',224,220),(25,'2012-08-24 00:00:01',227,220),(26,'2012-08-24 12:00:02',227,220),(27,'2012-08-25 00:00:01',227,220),(28,'2012-08-25 12:00:01',227,220),(29,'2012-08-26 00:00:01',231,220),(30,'2012-08-26 12:00:01',231,220),(31,'2012-08-27 00:00:01',231,220),(32,'2012-08-27 12:00:01',234,223),(33,'2012-08-28 00:00:01',234,223),(34,'2012-08-28 12:00:01',234,223),(35,'2012-08-29 00:00:01',245,226),(36,'2012-08-29 12:00:01',245,226),(37,'2012-08-30 00:00:01',245,226),(38,'2012-08-30 12:00:01',245,226),(39,'2012-08-31 00:00:01',245,226),(40,'2012-08-31 12:00:01',245,226),(41,'2012-09-01 00:00:01',246,227),(42,'2012-09-01 12:00:01',246,227),(43,'2012-09-02 00:00:01',249,227),(44,'2012-09-02 12:00:01',249,227),(45,'2012-09-03 00:00:01',249,227),(46,'2012-09-03 12:00:01',249,227),(47,'2012-09-04 00:00:01',249,227),(48,'2012-09-04 12:00:01',249,227),(49,'2012-09-05 00:00:01',249,227),(50,'2012-09-05 12:00:01',249,227),(51,'2012-09-06 00:00:01',249,227),(52,'2012-09-06 12:00:02',249,227),(53,'2012-09-07 00:00:01',249,227),(54,'2012-09-07 12:00:02',249,227),(55,'2012-09-08 00:00:01',249,227),(56,'2012-09-08 12:00:01',249,227),(57,'2012-09-09 00:00:01',249,227),(58,'2012-09-09 12:00:01',249,227),(59,'2012-09-10 00:00:01',249,227),(60,'2012-09-10 12:00:01',249,227),(61,'2012-09-11 00:00:01',249,227),(62,'2012-09-11 12:00:02',249,227),(63,'2012-09-12 00:00:02',249,227),(64,'2012-09-12 12:00:01',249,227),(65,'2012-09-13 00:00:02',249,227),(66,'2012-09-13 12:00:01',249,227),(67,'2012-09-14 00:00:01',249,227),(68,'2012-09-14 12:00:02',249,227),(69,'2012-09-15 00:00:01',249,227),(70,'2012-09-15 12:00:02',249,227),(71,'2012-09-16 00:00:01',249,227),(72,'2012-09-16 12:00:01',249,227),(73,'2012-09-17 00:00:01',249,227),(74,'2012-09-17 12:00:01',249,227),(75,'2012-09-18 00:00:01',249,227),(76,'2012-09-18 12:00:01',249,227),(77,'2012-09-19 00:00:01',249,227),(78,'2012-09-20 00:00:02',249,227),(79,'2012-09-20 12:00:02',249,227),(80,'2012-09-21 00:00:02',249,227),(81,'2012-09-21 12:00:02',249,227),(82,'2012-09-22 00:00:01',249,227),(83,'2012-09-22 12:00:02',259,228),(84,'2012-09-23 00:00:01',260,228),(85,'2012-09-23 12:00:01',260,228),(86,'2012-09-24 00:00:01',260,228),(87,'2012-09-24 12:00:01',260,228),(88,'2012-09-25 00:00:01',260,228),(89,'2012-09-25 12:00:02',260,228),(90,'2012-09-26 00:00:01',260,228),(91,'2012-09-26 12:00:02',260,228),(92,'2012-09-27 00:00:01',260,228),(93,'2012-09-27 12:00:02',260,228),(94,'2012-09-28 00:00:01',260,228),(95,'2012-09-28 12:00:01',260,228),(96,'2012-09-29 00:00:01',260,228),(97,'2012-09-29 12:00:01',260,228),(98,'2012-09-30 00:00:01',260,228),(99,'2012-09-30 12:00:01',260,228),(100,'2012-10-02 00:00:01',260,228),(101,'2012-10-02 12:00:02',260,228),(102,'2012-10-03 00:00:01',260,228),(103,'2012-10-03 12:00:02',260,228),(104,'2012-10-04 00:00:01',260,228),(105,'2012-10-04 12:00:02',260,228),(106,'2012-10-05 00:00:02',260,228),(107,'2012-10-05 12:00:01',260,228),(108,'2012-10-06 00:00:01',260,228),(109,'2012-10-06 12:00:01',260,228),(110,'2012-10-07 00:00:01',260,228),(111,'2012-10-07 12:00:01',260,228),(112,'2012-10-08 00:00:01',260,228),(113,'2012-10-08 12:00:02',260,228),(114,'2012-10-09 00:00:01',260,228),(115,'2012-10-09 12:00:01',260,228),(116,'2012-10-10 00:00:01',260,228),(117,'2012-10-10 12:00:02',260,228),(118,'2012-10-11 00:00:01',260,228),(119,'2012-10-11 12:00:02',260,228),(120,'2012-10-12 00:00:01',260,228),(121,'2012-10-12 12:00:02',260,228),(122,'2012-10-13 00:00:01',260,228),(123,'2012-10-13 12:00:02',260,228),(124,'2012-10-14 00:00:02',260,228),(125,'2012-10-14 12:00:02',260,228),(126,'2012-10-15 00:00:01',260,228),(127,'2012-10-15 12:00:01',260,228),(128,'2012-10-16 00:00:01',260,228),(129,'2012-10-16 12:00:02',260,228),(130,'2012-10-17 00:00:01',260,228),(131,'2012-10-17 12:00:01',260,228),(132,'2012-10-18 00:00:01',260,228);
/*!40000 ALTER TABLE `StatisticSnapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatisticSnapshotUnit`
--

DROP TABLE IF EXISTS `StatisticSnapshotUnit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatisticSnapshotUnit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockLevel` int(11) NOT NULL,
  `statisticSnapshot_id` int(11) DEFAULT NULL,
  `partUnit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_368BD669A16DD05F` (`statisticSnapshot_id`),
  KEY `IDX_368BD669F7A36E87` (`partUnit_id`),
  CONSTRAINT `FK_368BD669A16DD05F` FOREIGN KEY (`statisticSnapshot_id`) REFERENCES `StatisticSnapshot` (`id`),
  CONSTRAINT `FK_368BD669F7A36E87` FOREIGN KEY (`partUnit_id`) REFERENCES `PartUnit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatisticSnapshotUnit`
--

LOCK TABLES `StatisticSnapshotUnit` WRITE;
/*!40000 ALTER TABLE `StatisticSnapshotUnit` DISABLE KEYS */;
INSERT INTO `StatisticSnapshotUnit` VALUES (1,4943,1,1),(2,5128,2,1),(3,5128,3,1),(4,5128,4,1),(5,5128,5,1),(6,5128,6,1),(7,5358,7,1),(8,5358,8,1),(9,5358,9,1),(10,5358,10,1),(11,5358,11,1),(12,5358,12,1),(13,5358,13,1),(14,5358,14,1),(15,5368,15,1),(16,5368,16,1),(17,5368,17,1),(18,5368,18,1),(19,5368,19,1),(20,5368,20,1),(21,5368,21,1),(22,5368,22,1),(23,5368,23,1),(24,5368,24,1),(25,5382,25,1),(26,5382,26,1),(27,5382,27,1),(28,5382,28,1),(29,5382,29,1),(30,5382,30,1),(31,5382,31,1),(32,5382,32,1),(33,5382,33,1),(34,5382,34,1),(35,5408,35,1),(36,5408,36,1),(37,5408,37,1),(38,5408,38,1),(39,5408,39,1),(40,5408,40,1),(41,5408,41,1),(42,5408,42,1),(43,5534,43,1),(44,5534,44,1),(45,5534,45,1),(46,5534,46,1),(47,5534,47,1),(48,5534,48,1),(49,5534,49,1),(50,5534,50,1),(51,5534,51,1),(52,5534,52,1),(53,5534,53,1),(54,5534,54,1),(55,5534,55,1),(56,5534,56,1),(57,5534,57,1),(58,5534,58,1),(59,5534,59,1),(60,5534,60,1),(61,5534,61,1),(62,5534,62,1),(63,5534,63,1),(64,5534,64,1),(65,5534,65,1),(66,5534,66,1),(67,5534,67,1),(68,5534,68,1),(69,5534,69,1),(70,5534,70,1),(71,5534,71,1),(72,5534,72,1),(73,5534,73,1),(74,5534,74,1),(75,5534,75,1),(76,5534,76,1),(77,5534,77,1),(78,5534,78,1),(79,5534,79,1),(80,5534,80,1),(81,5534,81,1),(82,5534,82,1),(83,5543,83,1),(84,5544,84,1),(85,5544,85,1),(86,5544,86,1),(87,5544,87,1),(88,5544,88,1),(89,5544,89,1),(90,5544,90,1),(91,5544,91,1),(92,5544,92,1),(93,5544,93,1),(94,5544,94,1),(95,5544,95,1),(96,5544,96,1),(97,5544,97,1),(98,5544,98,1),(99,5544,99,1),(100,5409,100,1),(101,5409,101,1),(102,5409,102,1),(103,5409,103,1),(104,5409,104,1),(105,5409,105,1),(106,5409,106,1),(107,5409,107,1),(108,5409,108,1),(109,5409,109,1),(110,5409,110,1),(111,5409,111,1),(112,5409,112,1),(113,5409,113,1),(114,5409,114,1),(115,5409,115,1),(116,5409,116,1),(117,5409,117,1),(118,5409,118,1),(119,5409,119,1),(120,5409,120,1),(121,5409,121,1),(122,5409,122,1),(123,5409,123,1),(124,5409,124,1),(125,5409,125,1),(126,5409,126,1),(127,5409,127,1),(128,5409,128,1),(129,5409,129,1),(130,5409,130,1),(131,5409,131,1),(132,5409,132,1);
/*!40000 ALTER TABLE `StatisticSnapshotUnit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StockEntry`
--

DROP TABLE IF EXISTS `StockEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StockEntry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stockLevel` int(11) NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `dateTime` datetime NOT NULL,
  `correction` tinyint(1) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E182997B4CE34BEC` (`part_id`),
  KEY `IDX_E182997BA76ED395` (`user_id`),
  CONSTRAINT `FK_E182997B4CE34BEC` FOREIGN KEY (`part_id`) REFERENCES `Part` (`id`),
  CONSTRAINT `FK_E182997BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StockEntry`
--

LOCK TABLES `StockEntry` WRITE;
/*!40000 ALTER TABLE `StockEntry` DISABLE KEYS */;
INSERT INTO `StockEntry` VALUES (1,1,NULL,5,NULL,'2012-07-26 15:20:51',0,NULL),(2,2,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(3,3,NULL,9,NULL,'2012-07-26 15:20:51',0,NULL),(4,4,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(5,5,NULL,6,NULL,'2012-07-26 15:20:51',0,NULL),(6,6,NULL,8,NULL,'2012-07-26 15:20:51',0,NULL),(7,7,NULL,8,NULL,'2012-07-26 15:20:51',0,NULL),(8,8,NULL,4,NULL,'2012-07-26 15:20:51',0,NULL),(9,9,NULL,4,NULL,'2012-07-26 15:20:51',0,NULL),(10,10,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(11,11,NULL,3,NULL,'2012-07-26 15:20:51',0,NULL),(12,12,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(13,13,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(14,14,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(15,15,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(16,16,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(17,17,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(18,18,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(19,19,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(20,20,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(21,21,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(22,22,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(23,23,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(24,24,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(25,25,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(26,26,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(27,27,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(28,28,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(29,29,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(30,30,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(31,31,NULL,1,NULL,'2012-07-26 15:20:51',0,NULL),(32,32,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(33,33,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(34,34,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(35,35,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(36,36,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(37,37,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(38,38,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(39,39,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(40,40,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(41,41,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(42,42,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(43,43,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(44,44,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(45,45,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(46,46,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(47,47,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(48,48,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(49,49,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(50,50,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(51,51,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(52,52,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(53,53,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(54,54,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(55,55,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(56,56,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(57,57,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(58,58,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(59,59,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(60,60,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(61,61,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(62,62,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(63,63,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(64,64,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(65,65,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(66,66,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(67,67,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(68,68,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(69,69,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(70,70,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(71,71,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(72,72,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(73,73,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(74,74,NULL,25,NULL,'2012-07-26 15:20:52',0,NULL),(75,75,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(76,76,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(77,77,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(78,78,NULL,1000,NULL,'2012-07-26 15:20:52',0,NULL),(79,79,NULL,1000,NULL,'2012-07-26 15:20:52',0,NULL),(80,80,NULL,1000,NULL,'2012-07-26 15:20:52',0,NULL),(81,81,NULL,1000,NULL,'2012-07-26 15:20:52',0,NULL),(82,82,NULL,50,NULL,'2012-07-26 15:20:52',0,NULL),(83,83,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(84,84,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(85,85,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(86,86,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(87,87,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(88,88,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(89,89,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(90,90,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(91,91,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(92,92,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(93,93,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(94,94,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(95,95,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(96,96,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(97,97,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(98,98,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(99,99,NULL,1,NULL,'2012-07-26 15:20:52',0,NULL),(100,100,NULL,1,NULL,'2012-07-26 15:20:53',0,NULL),(101,101,NULL,1,NULL,'2012-07-26 15:20:53',0,NULL),(102,102,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(103,103,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(104,104,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(105,105,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(106,106,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(107,107,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(108,108,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(109,109,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(110,110,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(111,111,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(112,112,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(113,113,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(114,114,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(115,115,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(116,116,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(117,117,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(118,118,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(119,119,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(120,120,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(121,121,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(122,122,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(123,123,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(124,124,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(125,125,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(126,126,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(127,127,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(128,128,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(129,129,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(130,130,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(131,131,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(132,132,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(133,133,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(134,134,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(135,135,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(136,136,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(137,137,NULL,1,NULL,'2012-07-26 15:20:56',0,NULL),(138,138,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(139,139,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(140,140,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(141,141,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(142,142,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(143,143,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(144,144,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(145,145,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(146,146,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(147,147,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(148,148,NULL,2,NULL,'2012-07-26 15:20:57',0,NULL),(149,149,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(150,150,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(151,151,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(152,152,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(153,153,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(154,154,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(155,155,NULL,100,NULL,'2012-07-26 15:20:57',0,NULL),(156,156,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(157,157,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(158,158,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(159,159,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(160,160,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(161,161,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(162,162,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(163,163,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(164,164,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(165,165,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(166,166,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(167,167,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(168,168,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(169,169,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(170,170,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(171,171,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(172,172,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(173,173,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(174,174,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(175,175,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(176,176,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(177,177,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(178,178,NULL,2,NULL,'2012-07-26 15:20:57',0,NULL),(179,179,NULL,2,NULL,'2012-07-26 15:20:57',0,NULL),(180,180,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(181,181,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(182,182,NULL,2,NULL,'2012-07-26 15:20:57',0,NULL),(183,183,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(184,184,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(185,185,NULL,1,NULL,'2012-07-26 15:20:57',0,NULL),(186,119,1,0,NULL,'2012-07-31 09:12:17',0,NULL),(187,118,1,1,NULL,'2012-07-31 09:12:45',0,NULL),(188,200,2,130,NULL,'2012-08-13 15:50:34',0,NULL),(189,203,2,100,NULL,'2012-08-13 16:00:20',0,NULL),(190,225,2,10,0.3000,'2012-08-17 20:00:24',0,NULL),(191,229,3,14,21.4286,'2012-08-23 16:50:10',0,NULL),(194,241,3,1,5.0000,'2012-08-28 21:43:38',0,NULL),(195,242,1,11,5.0000,'2012-08-28 21:45:44',0,NULL),(196,243,3,4,5.0000,'2012-08-28 21:47:13',0,NULL),(197,244,3,6,5.0000,'2012-08-28 21:48:19',0,NULL),(198,245,3,1,5.0000,'2012-08-28 21:48:59',0,NULL),(199,246,1,3,5.0000,'2012-08-28 21:49:24',0,NULL),(200,251,3,24,NULL,'2012-09-01 13:54:29',0,NULL),(201,246,3,12,NULL,'2012-09-01 13:54:42',0,NULL),(202,249,3,12,NULL,'2012-09-01 13:54:56',0,NULL),(203,245,3,11,NULL,'2012-09-01 13:55:00',0,NULL),(204,245,3,1,NULL,'2012-09-01 13:55:04',0,NULL),(205,249,3,0,NULL,'2012-09-01 13:55:08',0,NULL),(206,249,3,0,NULL,'2012-09-01 13:55:26',0,NULL),(207,245,3,0,NULL,'2012-09-01 13:55:28',0,NULL),(208,248,3,0,NULL,'2012-09-01 13:55:31',0,NULL),(209,245,3,0,NULL,'2012-09-01 13:55:33',0,NULL),(210,251,3,0,NULL,'2012-09-01 13:55:52',0,NULL),(211,245,3,0,NULL,'2012-09-01 13:55:57',0,NULL),(212,248,3,12,NULL,'2012-09-01 13:56:01',0,NULL),(213,243,3,6,NULL,'2012-09-01 13:56:12',0,NULL),(214,250,3,12,NULL,'2012-09-01 13:56:17',0,NULL),(215,247,3,12,NULL,'2012-09-01 13:56:28',0,NULL),(216,253,3,6,NULL,'2012-09-01 13:58:03',0,NULL),(217,253,3,0,NULL,'2012-09-01 13:58:08',0,NULL),(218,253,3,6,NULL,'2012-09-01 13:58:11',0,NULL),(219,254,3,6,NULL,'2012-09-01 13:59:29',0,NULL),(220,255,3,6,NULL,'2012-09-01 14:00:04',0,NULL),(221,256,2,1,NULL,'2012-09-22 10:39:17',0,NULL),(222,257,2,1,NULL,'2012-09-22 10:49:43',0,NULL),(223,259,2,1,NULL,'2012-09-22 10:54:53',0,NULL),(224,260,2,1,NULL,'2012-09-22 10:56:10',0,NULL),(225,261,2,1,NULL,'2012-09-22 10:59:25',0,NULL),(226,262,2,2,NULL,'2012-09-22 11:01:13',0,NULL),(228,264,2,1,NULL,'2012-09-22 11:17:01',0,NULL),(229,266,2,1,NULL,'2012-09-22 11:49:19',0,NULL),(230,267,2,1,NULL,'2012-09-22 15:21:12',0,NULL),(231,250,1,-12,NULL,'2012-10-01 18:20:24',0,NULL),(232,244,1,-2,NULL,'2012-10-01 18:20:31',0,NULL),(233,247,1,0,NULL,'2012-10-01 18:20:43',0,NULL),(234,242,1,-9,NULL,'2012-10-01 18:20:46',0,NULL),(235,244,1,0,NULL,'2012-10-01 18:20:50',0,NULL),(236,243,1,-8,NULL,'2012-10-01 18:20:53',0,NULL),(237,253,1,-12,NULL,'2012-10-01 18:20:58',0,NULL),(238,248,1,-2,NULL,'2012-10-01 18:21:02',0,NULL),(239,248,1,-10,NULL,'2012-10-01 18:21:07',0,NULL),(240,245,1,-10,NULL,'2012-10-01 18:21:13',0,NULL),(241,249,1,-11,NULL,'2012-10-01 18:21:17',0,NULL),(242,241,1,-1,NULL,'2012-10-01 18:21:20',0,NULL),(243,254,1,-6,NULL,'2012-10-01 18:21:23',0,NULL),(244,255,1,-6,NULL,'2012-10-01 18:21:26',0,NULL),(245,251,1,-24,NULL,'2012-10-01 18:21:30',0,NULL),(246,246,1,-10,NULL,'2012-10-01 18:21:36',0,NULL),(247,247,1,-12,NULL,'2012-10-01 18:21:39',0,NULL);
/*!40000 ALTER TABLE `StockEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorageLocation`
--

DROP TABLE IF EXISTS `StorageLocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorageLocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_2C59071C5E237E06` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorageLocation`
--

LOCK TABLES `StorageLocation` WRITE;
/*!40000 ALTER TABLE `StorageLocation` DISABLE KEYS */;
INSERT INTO `StorageLocation` VALUES (163,'Bench - Soldering1'),(164,'Bench - Soldering2'),(165,'Bench - Soldering3'),(172,'Bench-Desk-Computer - in Good to China area near windows'),(129,'Big Shelves-r1c1'),(130,'Big Shelves-r1c2'),(131,'Big Shelves-r1c3'),(132,'Big Shelves-r1c4'),(133,'Big Shelves-r2c1'),(134,'Big Shelves-r2c2'),(135,'Big Shelves-r2c3'),(136,'Big Shelves-r2c4'),(137,'Big Shelves-r3c1'),(138,'Big Shelves-r3c2'),(139,'Big Shelves-r3c3'),(140,'Big Shelves-r3c4'),(141,'Big Shelves-r4c1'),(142,'Big Shelves-r4c2'),(143,'Big Shelves-r4c3'),(144,'Big Shelves-r4c4'),(145,'Big Shelves-r5c1'),(146,'Big Shelves-r5c2'),(147,'Big Shelves-r5c3'),(148,'Big Shelves-r5c4'),(149,'BlueRack1-r1c1'),(150,'BlueRack1-r2c1'),(151,'BlueRack1-r3c1'),(152,'BlueRack1-r4c1'),(153,'BlueRack2-r1c1'),(154,'BlueRack2-r2c1'),(155,'BlueRack2-r3c1'),(156,'BlueRack2-r4c1'),(167,'Capacitor Box1'),(168,'Capacitor Box2'),(166,'External - not in XCJ!'),(162,'Kitchen'),(1,'Locker1-r1c1'),(2,'Locker1-r1c2'),(3,'Locker1-r1c3'),(4,'Locker1-r1c4'),(5,'Locker1-r1c5'),(6,'Locker2-r1c1'),(7,'Locker2-r1c2'),(8,'Locker2-r1c3'),(9,'Locker2-r2c1'),(10,'Locker2-r2c2'),(11,'Locker2-r2c3'),(12,'Locker2-r3c1'),(13,'Locker2-r3c2'),(14,'Locker2-r3c3'),(15,'Locker2-r4c1'),(16,'Locker2-r4c2'),(17,'Locker2-r4c3'),(18,'Locker2-r5c1'),(19,'Locker2-r5c2'),(20,'Locker2-r5c3'),(21,'Locker2-r6c1'),(22,'Locker2-r6c2'),(23,'Locker2-r6c3'),(24,'Locker3-r1c1'),(25,'Locker3-r2c1'),(26,'Locker3-r3c1'),(27,'Locker3-r4c1'),(28,'Locker3-r5c1'),(29,'Lockers Entrance-r1c1'),(30,'Lockers Entrance-r1c2'),(31,'Lockers Entrance-r1c3'),(32,'Lockers Entrance-r1c4'),(33,'Lockers Entrance-r1c5'),(34,'Lockers Entrance-r1c6'),(35,'Lockers Entrance-r1c7'),(36,'Lockers Entrance-r1c8'),(37,'Lockers Entrance-r2c1'),(38,'Lockers Entrance-r2c2'),(39,'Lockers Entrance-r2c3'),(40,'Lockers Entrance-r2c4'),(41,'Lockers Entrance-r2c5'),(42,'Lockers Entrance-r2c6'),(43,'Lockers Entrance-r2c7'),(44,'Lockers Entrance-r2c8'),(45,'Lockers Entrance-r3c1 Component boxes'),(46,'Lockers Entrance-r3c2'),(47,'Lockers Entrance-r3c3'),(48,'Lockers Entrance-r3c4'),(49,'Lockers Entrance-r3c5'),(50,'Lockers Entrance-r3c6'),(51,'Lockers Entrance-r3c7 Edward'),(52,'Lockers Entrance-r3c8'),(53,'Lockers Entrance-r4c1'),(54,'Lockers Entrance-r4c2'),(55,'Lockers Entrance-r4c3'),(56,'Lockers Entrance-r4c4'),(57,'Lockers Entrance-r4c5'),(58,'Lockers Entrance-r4c6'),(59,'Lockers Entrance-r4c7'),(60,'Lockers Entrance-r4c8'),(61,'Lockers Entrance-r5c1'),(62,'Lockers Entrance-r5c2'),(63,'Lockers Entrance-r5c3'),(64,'Lockers Entrance-r5c4'),(65,'Lockers Entrance-r5c5'),(66,'Lockers Entrance-r5c6'),(67,'Lockers Entrance-r5c7'),(68,'Lockers Entrance-r5c8'),(170,'Lost items :('),(157,'Machine Room Blue Rack2-r1c1'),(158,'Machine Room Blue Rack2-r2c1'),(159,'Machine Room Blue Rack2-r3c1'),(160,'Machine Room Blue Rack2-r4c1'),(161,'Machine Room Blue Rack2-r5c1'),(171,'Not yet Allocated - To Be Determined TBD'),(69,'Project Shelves-r1c1'),(78,'Project Shelves-r1c10'),(79,'Project Shelves-r1c11'),(80,'Project Shelves-r1c12'),(70,'Project Shelves-r1c2'),(71,'Project Shelves-r1c3'),(72,'Project Shelves-r1c4'),(73,'Project Shelves-r1c5'),(74,'Project Shelves-r1c6'),(75,'Project Shelves-r1c7'),(76,'Project Shelves-r1c8'),(77,'Project Shelves-r1c9'),(81,'Project Shelves-r2c1'),(90,'Project Shelves-r2c10'),(91,'Project Shelves-r2c11'),(92,'Project Shelves-r2c12'),(82,'Project Shelves-r2c2'),(83,'Project Shelves-r2c3'),(84,'Project Shelves-r2c4'),(85,'Project Shelves-r2c5'),(86,'Project Shelves-r2c6'),(87,'Project Shelves-r2c7'),(88,'Project Shelves-r2c8'),(89,'Project Shelves-r2c9'),(93,'Project Shelves-r3c1'),(102,'Project Shelves-r3c10'),(103,'Project Shelves-r3c11'),(104,'Project Shelves-r3c12'),(94,'Project Shelves-r3c2'),(95,'Project Shelves-r3c3'),(96,'Project Shelves-r3c4'),(97,'Project Shelves-r3c5'),(98,'Project Shelves-r3c6-SwarmRobots'),(99,'Project Shelves-r3c7'),(100,'Project Shelves-r3c8'),(101,'Project Shelves-r3c9'),(105,'Project Shelves-r4c1'),(114,'Project Shelves-r4c10'),(115,'Project Shelves-r4c11'),(116,'Project Shelves-r4c12'),(106,'Project Shelves-r4c2'),(107,'Project Shelves-r4c3'),(108,'Project Shelves-r4c4'),(109,'Project Shelves-r4c5'),(110,'Project Shelves-r4c6'),(111,'Project Shelves-r4c7'),(112,'Project Shelves-r4c8'),(113,'Project Shelves-r4c9'),(117,'Project Shelves-r5c1'),(126,'Project Shelves-r5c10'),(127,'Project Shelves-r5c11'),(128,'Project Shelves-r5c12'),(118,'Project Shelves-r5c2'),(119,'Project Shelves-r5c3'),(120,'Project Shelves-r5c4'),(121,'Project Shelves-r5c5'),(122,'Project Shelves-r5c6'),(123,'Project Shelves-r5c7'),(124,'Project Shelves-r5c8'),(125,'Project Shelves-r5c9'),(169,'ResistorWallRack1');
/*!40000 ALTER TABLE `StorageLocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorageLocationImage`
--

DROP TABLE IF EXISTS `StorageLocationImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorageLocationImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `storageLocation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_666717F073CD58AF` (`storageLocation_id`),
  CONSTRAINT `FK_666717F073CD58AF` FOREIGN KEY (`storageLocation_id`) REFERENCES `StorageLocation` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorageLocationImage`
--

LOCK TABLES `StorageLocationImage` WRITE;
/*!40000 ALTER TABLE `StorageLocationImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `StorageLocationImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemNotice`
--

DROP TABLE IF EXISTS `SystemNotice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemNotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `acknowledged` tinyint(1) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemNotice`
--

LOCK TABLES `SystemNotice` WRITE;
/*!40000 ALTER TABLE `SystemNotice` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemNotice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TempImage`
--

DROP TABLE IF EXISTS `TempImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TempImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TempImage`
--

LOCK TABLES `TempImage` WRITE;
/*!40000 ALTER TABLE `TempImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `TempImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TempUploadedFile`
--

DROP TABLE IF EXISTS `TempUploadedFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TempUploadedFile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `mimetype` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TempUploadedFile`
--

LOCK TABLES `TempUploadedFile` WRITE;
/*!40000 ALTER TABLE `TempUploadedFile` DISABLE KEYS */;
INSERT INTO `TempUploadedFile` VALUES (1,'Temporary','2938c2f7-d19f-4c08-9366-74974bcaed46','Parts List.txt','text/plain',2873),(2,'Temporary','7a9a63ab-3d0c-4b64-8c3f-ecf0b201fd6a','Roboshield-original.jpg','text/html',17040),(3,'Temporary','ddb83cd9-f729-43b6-9339-bd8b8f2670e3','Roboshield-original.jpg','image/jpeg',36607),(4,'Temporary','b99c0358-01b7-4955-ac40-a52a58dddcdf','swarmrobot.pdf','application/pdf',33046),(5,'Temporary','ccd3f4b3-6b9e-475f-bd0d-2d5d29b796cd','IR_Shield.pdf','application/pdf',11650),(6,'Temporary','1ba4c429-2dc2-42dd-bf78-0295f86be69e','swarmrobot.pdf','application/pdf',33046),(7,'Temporary','f93ae753-09e0-455d-89b2-f0adce55736f','Soccer_bot_V1_v2.jpg','image/jpeg',156576),(8,'Temporary','e54a3b62-7daa-4350-a7ed-db6a4ba342b1','Roboshield-original.jpg','image/jpeg',36607),(9,'Temporary','6d639b52-173c-436e-b644-631ca012cacb','LM78L05.pdf','application/pdf',244258),(10,'Temporary','8f99230c-81b7-416b-aee3-49b00675e388','Swarm_Motor_PCB_flashing[1].jpg','image/jpeg',48490),(11,'Temporary','dd542ee3-7fd9-4868-8b18-cd52218e934a','USB battery charger circuit.jpg','image/jpeg',47279),(12,'Temporary','8c49b7d3-ee69-42c1-a159-098557905b43','undefined.csv','text/plain',6491),(13,'Temporary','edc8bc50-1780-49e1-bf8b-23514954138e','undefined.txt','text/plain',6621),(14,'Temporary','986051a0-4280-4139-b1a0-d189b6537558','undefined.csv','text/plain',2798),(15,'Temporary','f4204305-00fe-4f18-b6e3-146ca3384f7d','undefined.csv','text/plain',6059);
/*!40000 ALTER TABLE `TempUploadedFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipOfTheDay`
--

DROP TABLE IF EXISTS `TipOfTheDay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipOfTheDay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipOfTheDay`
--

LOCK TABLES `TipOfTheDay` WRITE;
/*!40000 ALTER TABLE `TipOfTheDay` DISABLE KEYS */;
INSERT INTO `TipOfTheDay` VALUES (316,'Context Menu'),(317,'Grid Configuration'),(318,'Move Categories'),(319,'Move Parts'),(320,'Quickly closing obsolete tabs');
/*!40000 ALTER TABLE `TipOfTheDay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TipOfTheDayHistory`
--

DROP TABLE IF EXISTS `TipOfTheDayHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TipOfTheDayHistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_3177BC2A76ED395` (`user_id`),
  CONSTRAINT `FK_3177BC2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TipOfTheDayHistory`
--

LOCK TABLES `TipOfTheDayHistory` WRITE;
/*!40000 ALTER TABLE `TipOfTheDayHistory` DISABLE KEYS */;
INSERT INTO `TipOfTheDayHistory` VALUES (1,1,'Context Menu'),(2,1,'Grid Configuration'),(3,1,'Move Categories'),(4,1,'Move Parts'),(5,1,'Quickly closing obsolete tabs'),(10,2,'Context Menu'),(11,2,'Grid Configuration'),(12,2,'Move Categories'),(13,3,'Context Menu'),(14,2,'Move Parts'),(15,2,'Quickly closing obsolete tabs'),(16,4,'Context Menu');
/*!40000 ALTER TABLE `TipOfTheDayHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Unit`
--

DROP TABLE IF EXISTS `Unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unit`
--

LOCK TABLES `Unit` WRITE;
/*!40000 ALTER TABLE `Unit` DISABLE KEYS */;
INSERT INTO `Unit` VALUES (1,'Meter','m'),(2,'Gram','g'),(3,'Second','s'),(4,'Kelvin','K'),(5,'Mol','mol'),(6,'Candela','cd'),(7,'Ampere','A'),(8,'Ohm','Ω'),(9,'Volt','V'),(10,'Hertz','Hz'),(11,'Newton','N'),(12,'Pascal','Pa'),(13,'Joule','J'),(14,'Watt','W'),(15,'Coulomb','C'),(16,'Farad','F'),(17,'Siemens','S'),(18,'Weber','Wb'),(19,'Tesla','T'),(20,'Henry','H'),(21,'Celsius','°C'),(22,'Lumen','lm'),(23,'Lux','lx'),(24,'Becquerel','Bq'),(25,'Gray','Gy'),(26,'Sievert','Sv'),(27,'Katal','kat'),(28,'Ampere Hour','Ah');
/*!40000 ALTER TABLE `Unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UnitSiPrefixes`
--

DROP TABLE IF EXISTS `UnitSiPrefixes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UnitSiPrefixes` (
  `unit_id` int(11) NOT NULL,
  `siprefix_id` int(11) NOT NULL,
  PRIMARY KEY (`unit_id`,`siprefix_id`),
  KEY `IDX_72356740F8BD700D` (`unit_id`),
  KEY `IDX_723567409BE9F1F4` (`siprefix_id`),
  CONSTRAINT `FK_723567409BE9F1F4` FOREIGN KEY (`siprefix_id`) REFERENCES `SiPrefix` (`id`),
  CONSTRAINT `FK_72356740F8BD700D` FOREIGN KEY (`unit_id`) REFERENCES `Unit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UnitSiPrefixes`
--

LOCK TABLES `UnitSiPrefixes` WRITE;
/*!40000 ALTER TABLE `UnitSiPrefixes` DISABLE KEYS */;
INSERT INTO `UnitSiPrefixes` VALUES (1,8),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(2,8),(2,11),(2,14),(3,11),(3,14),(4,11),(5,11),(6,14),(7,8),(7,11),(7,14),(7,15),(7,16),(7,17),(8,5),(8,6),(8,7),(8,8),(8,11),(8,14),(9,8),(9,11),(9,14),(10,5),(10,6),(10,7),(10,8),(10,11),(11,8),(11,11),(12,8),(12,11),(12,14),(13,7),(13,8),(13,11),(13,14),(14,6),(14,7),(14,8),(14,11),(14,14),(14,15),(15,8),(15,11),(16,11),(16,14),(16,15),(16,16),(16,17),(17,11),(17,14),(18,11),(19,11),(20,11),(20,14),(20,15),(21,11),(22,11),(23,11),(24,11),(25,11),(26,11),(26,14),(26,15),(27,11),(28,8),(28,11),(28,14);
/*!40000 ALTER TABLE `UnitSiPrefixes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserPreference`
--

DROP TABLE IF EXISTS `UserPreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserPreference` (
  `user_id` int(11) NOT NULL,
  `preferenceKey` varchar(255) NOT NULL,
  `preferenceValue` longtext NOT NULL,
  PRIMARY KEY (`preferenceKey`,`user_id`),
  KEY `IDX_922CE7A2A76ED395` (`user_id`),
  CONSTRAINT `FK_922CE7A2A76ED395` FOREIGN KEY (`user_id`) REFERENCES `PartKeeprUser` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserPreference`
--

LOCK TABLES `UserPreference` WRITE;
/*!40000 ALTER TABLE `UserPreference` DISABLE KEYS */;
INSERT INTO `UserPreference` VALUES (1,'partkeepr.categorytree.showdescriptions','b:1;'),(2,'partkeepr.categorytree.showdescriptions','b:1;'),(3,'partkeepr.categorytree.showdescriptions','b:1;'),(1,'partkeepr.formatting.currency.symbol','s:1:\"Y\";'),(2,'partkeepr.formatting.currency.symbol','s:1:\"Y\";'),(1,'partkeepr.inline-stock-change.confirm','b:0;'),(2,'partkeepr.inline-stock-change.confirm','b:1;'),(3,'partkeepr.inline-stock-change.confirm','b:0;'),(1,'partkeepr.tipoftheday.showtips','b:1;'),(2,'partkeepr.tipoftheday.showtips','b:1;'),(3,'partkeepr.tipoftheday.showtips','b:1;'),(4,'partkeepr.tipoftheday.showtips','b:1;');
/*!40000 ALTER TABLE `UserPreference` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-18  3:00:01
