-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: visual_db
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `ad_spaces`
--

DROP TABLE IF EXISTS `ad_spaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ad_spaces` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `ad_space` text,
  `ad_code_728` text,
  `ad_code_468` text,
  `ad_code_300` text,
  `ad_code_250` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ad_spaces`
--

LOCK TABLES `ad_spaces` WRITE;
/*!40000 ALTER TABLE `ad_spaces` DISABLE KEYS */;
INSERT INTO `ad_spaces` VALUES (1,'index_1',NULL,NULL,NULL,NULL),(2,'index_2',NULL,NULL,NULL,NULL),(3,'products',NULL,NULL,NULL,NULL),(4,'products_sidebar',NULL,NULL,NULL,NULL),(5,'product',NULL,NULL,NULL,NULL),(6,'product_sidebar',NULL,NULL,NULL,NULL),(7,'profile',NULL,NULL,NULL,NULL),(8,'profile_sidebar',NULL,NULL,NULL,NULL),(9,'blog_1',NULL,NULL,NULL,NULL),(10,'blog_2',NULL,NULL,NULL,NULL),(11,'blog_post_details',NULL,NULL,NULL,NULL),(12,'blog_post_details_sidebar',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ad_spaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank_transfers`
--

DROP TABLE IF EXISTS `bank_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank_transfers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` bigint(20) DEFAULT NULL,
  `payment_note` varchar(500) DEFAULT NULL,
  `receipt_path` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `ip_address` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank_transfers`
--

LOCK TABLES `bank_transfers` WRITE;
/*!40000 ALTER TABLE `bank_transfers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_transfers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` tinyint(4) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `category_order` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_comments`
--

DROP TABLE IF EXISTS `blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_comments`
--

LOCK TABLES `blog_comments` WRITE;
/*!40000 ALTER TABLE `blog_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_posts`
--

DROP TABLE IF EXISTS `blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` tinyint(4) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `content` longtext,
  `keywords` varchar(500) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `image_default` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_posts`
--

LOCK TABLES `blog_posts` WRITE;
/*!40000 ALTER TABLE `blog_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_tags`
--

DROP TABLE IF EXISTS `blog_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `tag_slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_tags`
--

LOCK TABLES `blog_tags` WRITE;
/*!40000 ALTER TABLE `blog_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `title_meta_tag` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `category_order` mediumint(9) DEFAULT '0',
  `homepage_order` mediumint(9) DEFAULT '5',
  `visibility` tinyint(1) DEFAULT '1',
  `show_on_homepage` tinyint(1) DEFAULT '0',
  `storage` varchar(20) DEFAULT 'local',
  `image_1` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `show_image_on_navigation` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_lang`
--

DROP TABLE IF EXISTS `categories_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `lang_id` tinyint(4) DEFAULT '1',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_lang`
--

LOCK TABLES `categories_lang` WRITE;
/*!40000 ALTER TABLE `categories_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` mediumint(9) NOT NULL,
  `state_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47953 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Eshkashem',1,1),(2,'Fayzabad',1,1),(3,'Jurm',1,1),(4,'Khandud',1,1),(5,'Qal eh-ye Panjeh',1,1),(6,'Bala Morghab',1,2),(7,'Qal eh-ye Naw',1,2),(8,'Andarab',1,3),(9,'Baghlan',1,3),(10,'Dahaneh-ye Ghawri',1,3),(11,'Nahrin',1,3),(12,'Pol-e Khumri',1,3),(13,'Balkh',1,4),(14,'Dawlatabad',1,4),(15,'Mazar-e Sharif',1,4),(16,'Qarchi Gak',1,4),(17,'Shulgara',1,4),(18,'Tash Gozar',1,4),(19,'Bamiyan',1,5),(20,'Panjab',1,5),(21,'Qil Qal eh',1,5),(22,'Anar Darreh',1,6),(23,'Farah',1,6),(24,'Shindand',1,6),(25,'Andkhvoy',1,7),(26,'Darzi Ab',1,7),(27,'Dawlatabad',1,7),(28,'Maymanah',1,7),(29,'Chaghcharan',1,8),(30,'Shahrak',1,8),(31,'Taywarah',1,8),(32,'Ghazni',1,9),(33,'Awbeh',1,10),(34,'Eslam Qal eh',1,10),(35,'Ghurian',1,10),(36,'Herat',1,10),(37,'Karukh',1,10),(38,'Kuhestan',1,10),(39,'Kushk',1,10),(40,'Qarabagh',1,10),(41,'Tawraghudi',1,10),(42,'Tir Pol',1,10),(43,'Zendejan',1,10),(44,'Baghran',1,11),(45,'Darwishan',1,11),(46,'Deh Shu',1,11),(47,'Gereshk',1,11),(48,'Lashkar Gah',1,11),(49,'Sangin',1,11),(50,'Aqchah',1,12),(51,'Qarqin',1,12),(52,'Sang-e Charak',1,12),(53,'Shibarghan',1,12),(54,'Baghrami',1,13),(55,'Kabul',1,13),(56,'Mir Bachchekut',1,13),(57,'Paghman',1,13),(58,'Qarabagh',1,13),(59,'Sarawbi',1,13),(60,'Mahmud-e Raqi',1,14),(61,'Taghab',1,14),(62,'Khawst',1,15),(63,'Asadabad',1,16),(64,'Asmar',1,16),(65,'Mehtar Lam',1,17),(66,'Azraw',1,18),(67,'Baraki Barak',1,18),(68,'Pol-e Alam',1,18),(69,'Achin',1,19),(70,'Batsawul',1,19),(71,'Hugyani',1,19),(72,'Jalalabad',1,19),(73,'Nader Shah Kawt',1,19),(74,'Chahar Burjak',1,20),(75,'Chakhansur',1,20),(76,'Khash',1,20),(77,'Mirabad',1,20),(78,'Rudbar',1,20),(79,'Zaranj',1,20),(80,'Nuristan',1,21),(81,'Orgun',1,22),(82,'Zareh Sharan',1,22),(83,'Zarghun Shahr',1,22),(84,'Ali Khayl',1,23),(85,'Ghardez',1,23),(86,'Charikar',1,24),(87,'Jabal-os-Saraj',1,24),(88,'Qandahar',1,25),(89,'Dasht-e Archa',1,26),(90,'Emam Saheb',1,26),(91,'Hazart Imam',1,26),(92,'Khanabad',1,26),(93,'Qal eh-ye Zal',1,26),(94,'Qunduz',1,26),(95,'Aybak',1,27),(96,'Kholm',1,27),(97,'Chah Ab',1,29),(98,'Eshkamesh',1,29),(99,'Farkhar',1,29),(100,'Khwajeh Ghar',1,29),(101,'Rostaq',1,29),(102,'Taloqan',1,29),(103,'Yangi Qal eh',1,29),(104,'Deh Rawud',1,30),(105,'Gaz Ab',1,30),(106,'Tarin Kawt',1,30),(107,'Uruzgan',1,30),(108,'Gardan Diwal',1,31),(109,'Maydanshahr',1,31),(110,'Qalat-e Ghilzay',1,32),(111,'Berat',3,33),(112,'Polican',3,33),(113,'Ure Vajgurore',3,33),(114,'Bulqize',3,34),(115,'Delvine',3,35),(116,'Bilisht',3,36),(117,'Maqellare',3,37),(118,'Peshkopi',3,37),(119,'Durres',3,38),(120,'Shijak',3,38),(121,'Cerrik',3,39),(122,'Elbasan',3,39),(123,'Kerrabe',3,39),(124,'Fier',3,40),(125,'Patos',3,40),(126,'Roskovec',3,40),(127,'Gjirokaster',3,41),(128,'Libohove',3,41),(129,'Gramsh',3,42),(130,'Krume',3,43),(131,'Kavaje',3,44),(132,'Erseke',3,45),(133,'Leskovik',3,45),(134,'Korce',3,46),(135,'Maliq',3,46),(136,'Fushe-Kruje',3,47),(137,'Kruje',3,47),(138,'Mamurras',3,47),(139,'Milot',3,47),(140,'Kucove',3,48),(141,'Kukes',3,49),(142,'Lac',3,50),(143,'Lezhe',3,51),(144,'Shengjin',3,51),(145,'Librazhd',3,52),(146,'Perrenjas',3,52),(147,'Lushnje',3,53),(148,'Rrogozhine',3,53),(149,'Ballsh',3,54),(150,'Burrel',3,56),(151,'Klos',3,56),(152,'Kraste',3,56),(153,'Ulze',3,56),(154,'Kurbnesh',3,57),(155,'Rreshen',3,57),(156,'Rubik',3,57),(157,'Peqin',3,58),(158,'Kelcyre',3,59),(159,'Permet',3,59),(160,'Pogradec',3,60),(161,'Fierze',3,61),(162,'Fushe-Arrez',3,61),(163,'Puke',3,61),(164,'Konispol',3,62),(165,'Sarande',3,62),(166,'Shkoder',3,63),(167,'Corovode',3,64),(168,'Memaliaj',3,65),(169,'Tepelene',3,65),(170,'Kamze',3,66),(171,'Paskuqan',3,66),(172,'Tirane',3,66),(173,'Vore',3,66),(174,'Bajram Curri',3,67),(175,'Himare',3,68),(176,'Orikum',3,68),(177,'Selenice',3,68),(178,'Vlore',3,68),(179,'Adrar',4,71),(180,'Awlaf',4,71),(181,'Rijan',4,71),(182,'Timimun',4,71),(183,'Hydra',4,72),(184,'Kouba',4,72),(185,'Annabah',4,73),(186,'Birrahhal',4,73),(187,'Saraydih',4,73),(188,'Sidi Amar',4,73),(189,'al-Buni',4,73),(190,'al-Hajar',4,73),(191,'Abadlah',4,74),(192,'Bani Wanif',4,74),(193,'Bashshar',4,74),(194,'Qanadsan',4,74),(195,'Taghit',4,74),(196,'Aris',4,75),(197,'Ayn Tutah',4,75),(198,'Barikah',4,75),(199,'Batnah',4,75),(200,'Marwanah',4,75),(201,'Naghaus',4,75),(202,'Ras-al-Ayun',4,75),(203,'Tazult',4,75),(204,'Ayt Rizin',4,76),(205,'Akbu',4,76),(206,'Amizur',4,76),(207,'Barbasha',4,76),(208,'Bijayah',4,76),(209,'Farrawn',4,76),(210,'Ighram',4,76),(211,'Sadduk',4,76),(212,'Shamini',4,76),(213,'Sidi Aysh',4,76),(214,'Taskaryut',4,76),(215,'Tazmalt',4,76),(216,'Timazrit',4,76),(217,'Uz-al-Laqin',4,76),(218,'al-Qasr',4,76),(219,'Awlad Jallal',4,77),(220,'Biskrah',4,77),(221,'Sidi Khalid',4,77),(222,'Sidi Ukbah',4,77),(223,'Tulja',4,77),(224,'Um ash',4,77),(225,'Zaribat-al-Wad',4,77),(226,'Awlad Salam',4,78),(227,'Awlad Yaysh',4,78),(228,'Bani Khalil',4,78),(229,'Bani Marad',4,78),(230,'Bani Tamu',4,78),(231,'Blidah',4,78),(232,'Bu Arfa',4,78),(233,'Bufarik',4,78),(234,'Buinan',4,78),(235,'Buqara',4,78),(236,'Maftah',4,78),(237,'Muzayah',4,78),(238,'Shabli',4,78),(239,'Shari ah',4,78),(240,'Shiffa',4,78),(241,'Sidi Mussa',4,78),(242,'Suma',4,78),(243,'Wadi al-Allagh',4,78),(244,'al-Afrun',4,78),(245,'al-Arba a',4,78),(246,'Ayn Bissim',4,79),(247,'Aghbalu',4,79),(248,'Bi r Ghabalu',4,79),(249,'Buirah',4,79),(250,'Lakhdariyah',4,79),(251,'Shurfa',4,79),(252,'Sur-al-Ghuzlan',4,79),(253,'Ayn Tayah',4,80),(254,'Awlad Haddaj',4,80),(255,'Awlad Mussa',4,80),(256,'Bani Amran',4,80),(257,'Budwawu',4,80),(258,'Budwawu al-Bahri',4,80),(259,'Bumardas',4,80),(260,'Burj Minayal',4,80),(261,'Dalis',4,80),(262,'Hammadi',4,80),(263,'Issar',4,80),(264,'Khamis-al-Khashnah',4,80),(265,'Nasiriyah',4,80),(266,'Raghayah',4,80),(267,'Sa abat',4,80),(268,'Tinyah',4,80),(269,'al-Arba a Tash',4,80),(270,'ar-Ruwibah',4,80),(271,'Ammi Mussa',4,82),(272,'Ghalizan',4,82),(273,'Jidiwiyah',4,82),(274,'Mazunah',4,82),(275,'Sidi Muhammad Ban Ali',4,82),(276,'Wadi Rahiyu',4,82),(277,'Zammurah',4,82),(278,'Biryan',4,83),(279,'Bu Nura',4,83),(280,'Ghardaia',4,83),(281,'Ghardayah',4,83),(282,'Matlili',4,83),(283,'al-Ghuli ah',4,83),(284,'al-Qararah',4,83),(285,'Ilizi',4,84),(286,'Amir Abd-al-Qadar',4,85),(287,'Jijili',4,85),(288,'Shifka',4,85),(289,'Tahar',4,85),(290,'al-Miliyah',4,85),(291,'Ayn Wissarah',4,86),(292,'Ayn-al-Ibil',4,86),(293,'Birin',4,86),(294,'Dar Shiyukh',4,86),(295,'Hassi Bahbah',4,86),(296,'Jilfah',4,86),(297,'Mis ad',4,86),(298,'Sharif',4,86),(299,'al-Idrisiyah',4,86),(300,'Khanshalah',4,87),(301,'Sharshar',4,87),(302,'Tawziyanat',4,87),(303,'al-Mahmal',4,87),(304,'Ayn-al-Hajal',4,88),(305,'Ayn-al-Milh',4,88),(306,'Bu Sa adah',4,88),(307,'Hammam Dhala a',4,88),(308,'Ma adid',4,88),(309,'Maghra',4,88),(310,'Masilah',4,88),(311,'Sidi Aysa',4,88),(312,'Wanugha',4,88),(313,'Ayn Bu Sif',4,89),(314,'Birwaghiyah',4,89),(315,'Midyah',4,89),(316,'Qasr-al-Bukhari',4,89),(317,'Shillalah',4,89),(318,'Tablat',4,89),(319,'Farjiwah',4,90),(320,'Milah',4,90),(321,'Qararam Quqa',4,90),(322,'Ruwashad',4,90),(323,'Salghum-al-Ayd',4,90),(324,'Sidi Maruf',4,90),(325,'Sidi Marwan',4,90),(326,'Tajananah',4,90),(327,'Talighmah',4,90),(328,'Wadi Athmaniyah',4,90),(329,'Bu Khanifiyah',4,91),(330,'Muaskar',4,91),(331,'Muhammadiyah',4,91),(332,'Siq',4,91),(333,'Tighinnif',4,91),(334,'Wadi al-Abtal',4,91),(335,'Zahana',4,91),(336,'Ayn Tadalas',4,92),(337,'Hassi Mamash',4,92),(338,'Mazaghran',4,92),(339,'Mustaghanam',4,92),(340,'Sidi Ali',4,92),(341,'Ayn Safra',4,93),(342,'Mishriyah',4,93),(343,'Naama',4,93),(344,'Oran',4,94),(345,'Ouargla',4,95),(346,'Ayn Bardah',4,96),(347,'Bumahra Ahmad',4,96),(348,'Hamman Awlad \'Ali',4,96),(349,'Qalmah',4,96),(350,'Wadi Zinati',4,96),(351,'\'Ayn Abid',4,97),(352,'\'Ayn Samara',4,97),(353,'Didush Murad',4,97),(354,'Hamma Bu Ziyan',4,97),(355,'Qustantinah',4,97),(356,'Zighut Yusuf',4,97),(357,'al-Khurub',4,97),(358,'\'Azzabah',4,98),(359,'Amjaz Adshish',4,98),(360,'Fil Fila',4,98),(361,'Karkira',4,98),(362,'Ramadan Jamal',4,98),(363,'Sakikdah',4,98),(364,'Shataybih',4,98),(365,'Tamalus',4,98),(366,'al-Harush',4,98),(367,'al-Qull',4,98),(368,'\'Ayn \'Azl',4,99),(369,'\'Ayn Arnat',4,99),(370,'\'Ayn Taqrut',4,99),(371,'\'Ayn Wilman',4,99),(372,'\'Ayn-al-Khabira',4,99),(373,'Bouira',4,99),(374,'Buq\'ah',4,99),(375,'Salah Bay',4,99),(376,'Satif',4,99),(377,'Setif',4,99),(378,'Ziyama Mansuriyah',4,99),(379,'al-\'Ulmah',4,99),(380,'\'Ayn-al-Hajar',4,100),(381,'Sayda\'',4,100),(382,'\'Ayn Qazzan',4,103),(383,'\'Ayn Salah',4,103),(384,'Tamanghasat',4,103),(385,'\'Ayn Binyan',4,104),(386,'Bu Isma\'il',4,104),(387,'Bu Midfar\'ah',4,104),(388,'Damus',4,104),(389,'Duwirah',4,104),(390,'Hajut',4,104),(391,'Hammam Righa',4,104),(392,'Sawlah',4,104),(393,'Shiragha',4,104),(394,'Shirshall',4,104),(395,'Sidi Farj',4,104),(396,'Stawali',4,104),(397,'Tibazah',4,104),(398,'Ziralda',4,104),(399,'al-Qull\'ah',4,104),(400,'Bi\'r-al-\'Itir',4,105),(401,'Hammamat',4,105),(402,'Mursut',4,105),(403,'Shariyah',4,105),(404,'Tibissah',4,105),(405,'Winzah',4,105),(406,'al-\'Awaynat',4,105),(407,'Awlad Mimun',4,106),(408,'Bani Mastar',4,106),(409,'Bani Sikran',4,106),(410,'Ghazawat',4,106),(411,'Hannayah',4,106),(412,'Maghniyah',4,106),(413,'Nidruma',4,106),(414,'Ramsh',4,106),(415,'Sabra',4,106),(416,'Shatwan',4,106),(417,'Sibdu',4,106),(418,'Sidi \'Abdallah',4,106),(419,'Tilimsan',4,106),(420,'al-Mansurah',4,106),(421,'Tinduf',4,107),(422,'Thaniyat-al-Had',4,108),(423,'Tisamsilt',4,108),(424,'\'Ayn Dhahab',4,109),(425,'Firindah',4,109),(426,'Mahdiyah',4,109),(427,'Mashra\'a Asfa',4,109),(428,'Qasr Shillalah',4,109),(429,'Rahuyah',4,109),(430,'Sughar',4,109),(431,'Takhamarat',4,109),(432,'Tiyarat',4,109),(433,'\'Ayn Bayda',4,111),(434,'\'Ayn Fakrun',4,111),(435,'\'Ayn Kirshah',4,111),(436,'\'Ayn Malilah',4,111),(437,'Bi\'r Shuhada',4,111),(438,'Miskyanah',4,111),(439,'Shamurah',4,111),(440,'Umm-al-Bawaghi',4,111),(441,'\'Ayn Biya',4,112),(442,'\'Ayn-at-Turk',4,112),(443,'Arzu',4,112),(444,'Bi\'r-al-Jir',4,112),(445,'Butlilis',4,112),(446,'Hassi Bu Nif',4,112),(447,'Mars-al-Kabir',4,112),(448,'Qadayal',4,112),(449,'Sidi ash-Shami',4,112),(450,'Wadi Thalatha',4,112),(451,'Wahran',4,112),(452,'al-Ansur',4,112),(453,'as-Saniyah',4,112),(454,'Hassi Mas\'ud',4,113),(455,'Nazla',4,113),(456,'Ruwisiyat',4,113),(457,'Tabisbast',4,113),(458,'Tamalhat',4,113),(459,'Tamasin',4,113),(460,'Tayabat-al-Janubiyah',4,113),(461,'Tughghurt',4,113),(462,'Warqla',4,113),(463,'al-Hajirah',4,113),(464,'Aflu',4,117),(465,'Hassi al-Raml',4,117),(466,'al-Aghwat',4,117),(467,'Brizyanah',4,118),(468,'al-Abyad Sidi Shaykh',4,118),(469,'al-Bayadh',4,118),(470,'Bab Azwar',4,119),(471,'Baraki',4,119),(472,'Bir Murad Rais',4,119),(473,'Birkhadam',4,119),(474,'Burj-al-Kiffan',4,119),(475,'Dar-al-Bayda',4,119),(476,'al-Jaza\'ir',4,119),(477,'Bayadha',4,120),(478,'Dabilah',4,120),(479,'Hassan \'Abd-al-Karim',4,120),(480,'Hassi Halifa',4,120),(481,'Jama\'a',4,120),(482,'Maqran',4,120),(483,'Qamar',4,120),(484,'Raqiba',4,120),(485,'Rubbah',4,120),(486,'Sidi Amran',4,120),(487,'al-Mighair',4,120),(488,'al-Wad',4,120),(489,'\'Ayn Maran',4,121),(490,'Abu al-Hassan',4,121),(491,'Bani Hawa',4,121),(492,'Bu Qadir',4,121),(493,'Sidi Ukaskah',4,121),(494,'Tanas',4,121),(495,'Wadi Sali',4,121),(496,'Wadi al-Fiddah',4,121),(497,'ash-Shalif',4,121),(498,'ash-Shattiyah',4,121),(499,'Ban Mahdi',4,122),(500,'Bani Amar',4,122),(501,'Basbas',4,122),(502,'Dariyan',4,122),(503,'Saba\'ita Muk',4,122),(504,'al-Qal\'ah',4,122),(505,'at-Tarif',4,122),(506,'Afono',5,123),(507,'Alao',5,123),(508,'Alofau',5,123),(509,'Amouli',5,123),(510,'Aoa',5,123),(511,'Atu\'u',5,123),(512,'Aua',5,123),(513,'Aunu\'u',5,123),(514,'Faga\'alu',5,123),(515,'Faga\'itua',5,123),(516,'Fagasa',5,123),(517,'Fagatogo',5,123),(518,'Lauli\'i',5,123),(519,'Leloaloa',5,123),(520,'Nu\'uuli',5,123),(521,'Pago Pago',5,123),(522,'Tula',5,123),(523,'Utulei',5,123),(524,'Vatia',5,123),(525,'Ofu',5,124),(526,'Aoloau',5,126),(527,'Faleniu',5,126),(528,'Futiga',5,126),(529,'Ili\'ili',5,126),(530,'Leone',5,126),(531,'Malaeimi',5,126),(532,'Malaeloa-Aitulagi',5,126),(533,'Malaeloa-Ituau',5,126),(534,'Mapusagafou',5,126),(535,'Mesepa',5,126),(536,'Pava\'ia\'i',5,126),(537,'Tafuna',5,126),(538,'Taputimu',5,126),(539,'Vailoatai',5,126),(540,'Vaitogi',5,126),(541,'Canillo',6,128),(542,'Encamp',6,129),(543,'Ordino',6,132),(544,'Caxito',7,134),(545,'Benguela',7,135),(546,'Lobito',7,135),(547,'Camacupa',7,136),(548,'Catabola',7,136),(549,'Catumbela',7,136),(550,'Chissamba',7,136),(551,'Kuito',7,136),(552,'Cabinda',7,137),(553,'Ondjiva',7,138),(554,'Caala',7,139),(555,'Catchiungo',7,139),(556,'Huambo',7,139),(557,'Longonjo',7,139),(558,'Caconda',7,140),(559,'Caluquembe',7,140),(560,'Lubango',7,140),(561,'Menongue',7,141),(562,'Luanda',7,144),(563,'Malanje',7,147),(564,'Cazaje',7,148),(565,'Leua',7,148),(566,'Luau',7,148),(567,'Luena',7,148),(568,'Lumeje',7,148),(569,'Namibe',7,149),(570,'Camabatela',7,150),(571,'Uige',7,150),(572,'M\'banza-Kongo',7,151),(573,'N\'zeto',7,151),(574,'Soyo',7,151),(575,'Codrington',10,160),(576,'Catamarca',11,168),(577,'Presidencia Roque Saenz Pena',11,169),(578,'Resistencia',11,169),(579,'Comodoro Rivadavia',11,170),(580,'Puerto Madryn',11,170),(581,'Rawson',11,170),(582,'Trelew',11,170),(583,'Alta Gracia',11,171),(584,'Bell Ville',11,171),(585,'Cordoba',11,171),(586,'Rio Cuarto',11,171),(587,'Rio Tercero',11,171),(588,'San Francisco',11,171),(589,'Villa Carlos Paz',11,171),(590,'Villa Maria',11,171),(591,'Corrientes',11,172),(592,'Goya',11,172),(593,'Mercedes',11,172),(594,'San Lorenzo',11,172),(595,'Formosa',11,175),(596,'Jujuy',11,176),(597,'Libertador General San Martin',11,176),(598,'San Pedro',11,176),(599,'Godoy Cruz',11,179),(600,'Lujan',11,179),(601,'Mendoza',11,179),(602,'Rivadavia',11,179),(603,'San Martin',11,179),(604,'San Rafael',11,179),(605,'Eldorado',11,180),(606,'Obera',11,180),(607,'Posadas',11,180),(608,'Cutral Co',11,181),(609,'Neuquen',11,181),(610,'Salta',11,183),(611,'San Ramon de la Nueva Oran',11,183),(612,'Tartagal',11,183),(613,'Tucuman',11,190),(614,'Ashtarak',12,191),(615,'Talin',12,191),(616,'Ararat',12,192),(617,'Artashat',12,192),(618,'Armavir',12,193),(619,'Vagharshapat',12,193),(620,'Gavar',12,194),(621,'Martuni',12,194),(622,'Sevan',12,194),(623,'Vardenis',12,194),(624,'Abovyan',12,195),(625,'Arzni',12,195),(626,'Charentsavan',12,195),(627,'Hrazdan',12,195),(628,'Akhtala',12,196),(629,'Alaverdi',12,196),(630,'Spitak',12,196),(631,'Stepanavan',12,196),(632,'Tashir',12,196),(633,'Vanadzor',12,196),(634,'Artik',12,197),(635,'Gyumri',12,197),(636,'Stepanakert',12,198),(637,'Angeghakot',12,199),(638,'Goris',12,199),(639,'Kajaran',12,199),(640,'Kapan',12,199),(641,'Meghri',12,199),(642,'Sisian',12,199),(643,'Dilijan',12,200),(644,'Ijevan',12,200),(645,'Yerevan',12,202),(646,'Aruba',13,203),(647,'Glenfield',14,204),(648,'Henderson',14,204),(649,'Milford',14,204),(650,'Balgowlah',14,206),(651,'Balmain',14,207),(652,'Bankstown',14,208),(653,'Camberwell',14,211),(654,'Caulfield',14,214),(655,'Chatswood',14,215),(656,'Cheltenham',14,216),(657,'Cherrybrook',14,217),(658,'Clayton',14,218),(659,'Collingwood',14,219),(660,'Hawthorn',14,221),(661,'Jannnali',14,222),(662,'Knoxfield',14,223),(663,'Melbourne',14,224),(664,'South Oakleigh',14,224),(665,'Cottesole',14,227),(666,'Darch',14,227),(667,'Mullaloo',14,227),(668,'Noranda',14,227),(669,'Osborne Park',14,227),(670,'Willetton',14,227),(671,'Acacia Ridge',14,228),(672,'Aitkenvale',14,228),(673,'Alderley',14,228),(674,'Alexander Hills',14,228),(675,'Archerfield',14,228),(676,'Ashmore',14,228),(677,'Atherton',14,228),(678,'Ayr',14,228),(679,'Beachmere',14,228),(680,'Beenleigh',14,228),(681,'Beerwah',14,228),(682,'Bell',14,228),(683,'Belmont',14,228),(684,'Biloela',14,228),(685,'Birkdale',14,228),(686,'Blackwater',14,228),(687,'Bongaree',14,228),(688,'Bonogin',14,228),(689,'Boonah',14,228),(690,'Bowen',14,228),(691,'Brendale',14,228),(692,'Brisbane',14,228),(693,'Buddina',14,228),(694,'Buderim',14,228),(695,'Bundaberg',14,228),(696,'Bundall',14,228),(697,'Burleigh Heads',14,228),(698,'Burpengary',14,228),(699,'Cabaland',14,228),(700,'Caboolture',14,228),(701,'Cairns',14,228),(702,'Cairns Northern Beaches',14,228),(703,'Caloundra',14,228),(704,'Capalaba',14,228),(705,'Charters Towers',14,228),(706,'Childers',14,228),(707,'Cleveland',14,228),(708,'Coolum Beach',14,228),(709,'Coopers Plain',14,228),(710,'Dalby',14,228),(711,'Deception Bay',14,228),(712,'Eagle Farm',14,228),(713,'Eagleby',14,228),(714,'Emerald',14,228),(715,'Emundi',14,228),(716,'Forest Lake',14,228),(717,'Gatton',14,228),(718,'Gladstone',14,228),(719,'Gold Coast',14,228),(720,'Gowrie Junction',14,228),(721,'Gympie',14,228),(722,'Helensvale',14,228),(723,'Hervey Bay',14,228),(724,'Ingham',14,228),(725,'Innisfail',14,228),(726,'Ipswich',14,228),(727,'Jindalee',14,228),(728,'Julatten',14,228),(729,'Kawana Waters',14,228),(730,'Kingaroy',14,228),(731,'Lawnton',14,228),(732,'Loganholme',14,228),(733,'Mackay',14,228),(734,'Mareeba',14,228),(735,'Maroochydore',14,228),(736,'Maroochydore-Mooloolaba',14,228),(737,'Maryborough',14,228),(738,'Miami',14,228),(739,'Milton',14,228),(740,'Molendinar',14,228),(741,'Moranbah',14,228),(742,'Morayfield',14,228),(743,'Mossman',14,228),(744,'Mount Glorious',14,228),(745,'Mount Isa',14,228),(746,'Murarrie',14,228),(747,'Nairand Kay',14,228),(748,'Nambour',14,228),(749,'Nerang',14,228),(750,'Nobby Beach',14,228),(751,'Noosa Heads',14,228),(752,'Noosaville',14,228),(753,'Paddington',14,228),(754,'Port Douglas',14,228),(755,'Robina',14,228),(756,'Rockhampton',14,228),(757,'Rocklea',14,228),(758,'Roma',14,228),(759,'Rubyvale',14,228),(760,'Sanctuary Cove',14,228),(761,'Slade Point',14,228),(762,'Southport',14,228),(763,'Suburb',14,228),(764,'Sunshine Coast',14,228),(765,'Tewantin-Noosa',14,228),(766,'The Summit',14,228),(767,'Toowong',14,228),(768,'Toowoomba',14,228),(769,'Townsville',14,228),(770,'Victoria Point',14,228),(771,'Warwick',14,228),(772,'Willawong',14,228),(773,'Yatala',14,228),(774,'Yeppoon',14,228),(775,'Zillmere',14,228),(776,'Bridgewater-Gagebrook',14,230),(777,'Burnie',14,230),(778,'Burnie-Devonport',14,230),(779,'Glenorchy',14,230),(780,'Hobart',14,230),(781,'Kingston-Blackmans Bay',14,230),(782,'Launceston',14,230),(783,'New Norfolk',14,230),(784,'Rowella',14,230),(785,'Sheffield',14,230),(786,'Ulverstone',14,230),(787,'Templestowe',14,231),(788,'Albion',14,232),(789,'Ararat',14,232),(790,'Avenel',14,232),(791,'Avondale Heights',14,232),(792,'Baccus Marsh',14,232),(793,'Bairnsdale',14,232),(794,'Ballarat',14,232),(795,'Balwyn',14,232),(796,'Batman',14,232),(797,'Bayswater',14,232),(798,'Belmont',14,232),(799,'Benalla',14,232),(800,'Bendigo',14,232),(801,'Bentleigh East',14,232),(802,'Berwick',14,232),(803,'Blackburn',14,232),(804,'Blue Mountains',14,232),(805,'Boonah',14,232),(806,'Boronia',14,232),(807,'Box Hill',14,232),(808,'Brighton East',14,232),(809,'Bundoora',14,232),(810,'Campbellfield',14,232),(811,'Carlton South',14,232),(812,'Caroline Springs',14,232),(813,'Castle Hill',14,232),(814,'Castlemaine',14,232),(815,'Caulfield',14,232),(816,'Cheltenham',14,232),(817,'Chester',14,232),(818,'Clayton South',14,232),(819,'Clifton Springs',14,232),(820,'Coburg',14,232),(821,'Colac',14,232),(822,'Collingwood',14,232),(823,'Craigieburn',14,232),(824,'Cranbourne',14,232),(825,'Crib Point',14,232),(826,'Dandenong',14,232),(827,'Devon Meadows',14,232),(828,'Diamond Creek',14,232),(829,'Doncaster East',14,232),(830,'Doncester',14,232),(831,'Donvale',14,232),(832,'Echuca-Moama',14,232),(833,'Elsternwick',14,232),(834,'Eltham',14,232),(835,'Fairfield',14,232),(836,'Fitzroy',14,232),(837,'Frnakston',14,232),(838,'Geelong',14,232),(839,'Glen Waverley',14,232),(840,'Glenorchy',14,232),(841,'Hallam',14,232),(842,'Hamilton',14,232),(843,'Hastings',14,232),(844,'Healesville',14,232),(845,'Horsham',14,232),(846,'Hughesdale',14,232),(847,'Ivanhoe',14,232),(848,'Keilor',14,232),(849,'Kensington',14,232),(850,'Kerang',14,232),(851,'Kilmore',14,232),(852,'Kilsyth',14,232),(853,'Kyabram',14,232),(854,'Lakes Entrance',14,232),(855,'Lalor',14,232),(856,'Lara',14,232),(857,'Laverton North',14,232),(858,'Leopold',14,232),(859,'Lower Templestowe',14,232),(860,'Maidstone',14,232),(861,'Malvern',14,232),(862,'Maryborough',14,232),(863,'Melbourne',14,232),(864,'Melton',14,232),(865,'Middle Park',14,232),(866,'Mildura',14,232),(867,'Mitcham',14,232),(868,'Moe-Yallourn',14,232),(869,'Moorabbin',14,232),(870,'Mordialloc',14,232),(871,'Morwell',14,232),(872,'Mulgrave',14,232),(873,'Murrumbeena',14,232),(874,'Neerim South',14,232),(875,'Noble Park North',14,232),(876,'Notting Hill',14,232),(877,'Oak Park',14,232),(878,'Ocean Grove-Barwon Heads',14,232),(879,'Olinda',14,232),(880,'Pakenham',14,232),(881,'Park Orchards',14,232),(882,'Port Melbourne',14,232),(883,'Portland',14,232),(884,'Prahran',14,232),(885,'Preston',14,232),(886,'Pritbourne',14,232),(887,'Queenscliff',14,232),(888,'Reservoir',14,232),(889,'Ringwood',14,232),(890,'Rowville',14,232),(891,'Sale',14,232),(892,'Sandringham',14,232),(893,'Scoresby',14,232),(894,'Sebastopol',14,232),(895,'Seymour',14,232),(896,'Shepparton-Mooroopna',14,232),(897,'Somerville',14,232),(898,'South Yarra',14,232),(899,'Southbank',14,232),(900,'St. Albans',14,232),(901,'St. Kilda East',14,232),(902,'Stawell',14,232),(903,'Sunbury',14,232),(904,'Sunshine West',14,232),(905,'Swan Hill',14,232),(906,'Tatura',14,232),(907,'Thomastown',14,232),(908,'Thornbury',14,232),(909,'Tongala',14,232),(910,'Torquay',14,232),(911,'Traralgon',14,232),(912,'Tullamarine',14,232),(913,'Vermont',14,232),(914,'Wangaratta',14,232),(915,'Wantirna',14,232),(916,'Warragul',14,232),(917,'Warrnambool',14,232),(918,'Welshpool',14,232),(919,'Wendouree',14,232),(920,'Wonthaggi',14,232),(921,'Woodend',14,232),(922,'Yarrawonga-Mulwala',14,232),(923,'Yea',14,232),(924,'Wheeler',14,235),(925,'Eisenstadt',15,239),(926,'GroBpetersdorf',15,239),(927,'Jennersdorf',15,239),(928,'Kemeten',15,239),(929,'Mattersburg',15,239),(930,'Neudorfl',15,239),(931,'Neusiedl am See',15,239),(932,'Oberwart',15,239),(933,'Pinkafeld',15,239),(934,'Rust',15,239),(935,'Maria Rain',15,240),(936,'Poggersdorf',15,240),(937,'Althofen',15,241),(938,'Arnoldstein',15,241),(939,'Bad Sankt Leonhard',15,241),(940,'Bleiburg',15,241),(941,'Ebenthal',15,241),(942,'Eberndorf',15,241),(943,'Feldkirchen',15,241),(944,'Ferlach',15,241),(945,'Finkenstein',15,241),(946,'Friesach',15,241),(947,'Hermagor',15,241),(948,'Klagenfurt',15,241),(949,'Lohnsburg',15,241),(950,'Moosburg',15,241),(951,'Paternion',15,241),(952,'Radentheim',15,241),(953,'Sankt Andra',15,241),(954,'Sankt Jakob',15,241),(955,'Sankt Veit',15,241),(956,'Seeboden',15,241),(957,'Spittal',15,241),(958,'Velden am Worthersee',15,241),(959,'Villach',15,241),(960,'Volkermarkt',15,241),(961,'Wernberg',15,241),(962,'Wolfsberg',15,241),(963,'Amstetten',15,244),(964,'Bad Voslau',15,244),(965,'Baden',15,244),(966,'Berndorf',15,244),(967,'Boheimkirchen',15,244),(968,'Bruck an der Leitha',15,244),(969,'Brunn',15,244),(970,'Deutsch-Wagram',15,244),(971,'Ebreichsdorf',15,244),(972,'Eggendorf',15,244),(973,'Fischamend',15,244),(974,'Gablitz',15,244),(975,'Ganserndorf',15,244),(976,'Gerasdorf',15,244),(977,'Gloggnitz',15,244),(978,'Gmund',15,244),(979,'Greifenstein',15,244),(980,'GroB-Enzersdorf',15,244),(981,'GroB-Gerungs',15,244),(982,'Guntramsdorf',15,244),(983,'Haag',15,244),(984,'Hainburg',15,244),(985,'Heidenreichstein',15,244),(986,'Herzogenburg',15,244),(987,'Himberg',15,244),(988,'Hollabrunn',15,244),(989,'Horn',15,244),(990,'Klosterneuburg',15,244),(991,'Korneuburg',15,244),(992,'Kottingbrunn',15,244),(993,'Krems',15,244),(994,'Laa',15,244),(995,'Langenlois',15,244),(996,'Langenzersdorf',15,244),(997,'Leobendorf',15,244),(998,'Leopoldsdorf',15,244),(999,'Lilienfeld',15,244),(1000,'Loipersdorf',15,244),(1001,'Maria Enzersdorf',15,244),(1002,'Melk',15,244),(1003,'Mistelbach',15,244),(1004,'Modling',15,244),(1005,'Neulengbach',15,244),(1006,'Neunkirchen',15,244),(1007,'Niederleis',15,244),(1008,'Ober-Grabendorf',15,244),(1009,'Perchtoldsdorf',15,244),(1010,'Pernitz',15,244),(1011,'Pottendorf',15,244),(1012,'Poysdorf',15,244),(1013,'Pressbaum',15,244),(1014,'Purgstall',15,244),(1015,'Purkersdorf',15,244),(1016,'Reichenau',15,244),(1017,'Retz',15,244),(1018,'Sankt Andra-Wordern',15,244),(1019,'Sankt Peter in der Au',15,244),(1020,'Sankt Polten',15,244),(1021,'Sankt Valentin',15,244),(1022,'Scheibbs',15,244),(1023,'Schrems',15,244),(1024,'Schwechat',15,244),(1025,'Seitenstetten',15,244),(1026,'Sollenau',15,244),(1027,'Stockerau',15,244),(1028,'Strasshof',15,244),(1029,'Ternitz',15,244),(1030,'Traiskirchen',15,244),(1031,'Traismauer',15,244),(1032,'Tulln',15,244),(1033,'Vosendorf',15,244),(1034,'Waidhofen',15,244),(1035,'Wiener Neudorf',15,244),(1036,'Wiener Neustadt',15,244),(1037,'Wieselburg',15,244),(1038,'Wilhelmsburg',15,244),(1039,'Wolkersdorf',15,244),(1040,'Ybbs',15,244),(1041,'Ybbsitz',15,244),(1042,'Zistersdorf',15,244),(1043,'Zwettl',15,244),(1044,'Alkoven',15,245),(1045,'Altheim',15,245),(1046,'Altmunster',15,245),(1047,'Andorf',15,245),(1048,'Ansfelden',15,245),(1049,'Asten',15,245),(1050,'Attnang-Puchheim',15,245),(1051,'Aurolzmunster',15,245),(1052,'Bad Goisern',15,245),(1053,'Bad Hall',15,245),(1054,'Bad Ischl',15,245),(1055,'Braunau',15,245),(1056,'Breitenfurt',15,245),(1057,'Ebensee',15,245),(1058,'Eferding',15,245),(1059,'Engerwitzdorf',15,245),(1060,'Enns',15,245),(1061,'Feldkirchen an der Donau',15,245),(1062,'Frankenburg',15,245),(1063,'Freistadt',15,245),(1064,'Gallneukirchen',15,245),(1065,'Garsten',15,245),(1066,'Gmunden',15,245),(1067,'Gramastetten',15,245),(1068,'Grieskirchen',15,245),(1069,'Gunskirchen',15,245),(1070,'Horsching',15,245),(1071,'Kirchdorf an der Krems',15,245),(1072,'Kremsmunster',15,245),(1073,'Krenglbach',15,245),(1074,'Laakirchen',15,245),(1075,'Lenzing',15,245),(1076,'Leonding',15,245),(1077,'Linz',15,245),(1078,'Loibichl',15,245),(1079,'Marchtrenk',15,245),(1080,'Mattighofen',15,245),(1081,'Mauthausen',15,245),(1082,'Micheldorf',15,245),(1083,'Neuhofen an der Krems',15,245),(1084,'Ohlsdorf',15,245),(1085,'Ottensheim',15,245),(1086,'Pasching',15,245),(1087,'Perg',15,245),(1088,'Pettenbach',15,245),(1089,'Pram',15,245),(1090,'Pregarten',15,245),(1091,'Puchenau',15,245),(1092,'Regau',15,245),(1093,'Ried',15,245),(1094,'Rohrbach in Oberosterreich',15,245),(1095,'Rutzenmoos',15,245),(1096,'Sankt Florian',15,245),(1097,'Sankt Georgen',15,245),(1098,'Sankt Marien',15,245),(1099,'Scharding',15,245),(1100,'Scharnstein',15,245),(1101,'Schwertberg',15,245),(1102,'Seewalchen',15,245),(1103,'Sierning',15,245),(1104,'Stadl-Paura',15,245),(1105,'Steyr',15,245),(1106,'Steyregg',15,245),(1107,'Steyrermuhl',15,245),(1108,'Thalheim',15,245),(1109,'Timelkam',15,245),(1110,'Traun',15,245),(1111,'Vocklabruck',15,245),(1112,'Vocklamarkt',15,245),(1113,'Vorchdorf',15,245),(1114,'Wels',15,245),(1115,'Wilhering',15,245),(1116,'Abtenau',15,246),(1117,'Anif',15,246),(1118,'Bad Gastein',15,246),(1119,'Bad Hofgastein',15,246),(1120,'Bergheim',15,246),(1121,'Bischofshofen',15,246),(1122,'Bruck an der GroBglocknerstraB',15,246),(1123,'Burmoos',15,246),(1124,'Elsbethen',15,246),(1125,'Eugendorf',15,246),(1126,'Forstau',15,246),(1127,'Grodig',15,246),(1128,'Hallein',15,246),(1129,'Hallwang',15,246),(1130,'Henndorf',15,246),(1131,'Kuchl',15,246),(1132,'Mayrhofen',15,246),(1133,'Mittersill',15,246),(1134,'Neumarkt',15,246),(1135,'Oberndorf',15,246),(1136,'Obertrum am See',15,246),(1137,'Piesendorf',15,246),(1138,'Puch',15,246),(1139,'Radstadt',15,246),(1140,'Saalfelden',15,246),(1141,'Salzburg',15,246),(1142,'Sankt Johann im Pongau',15,246),(1143,'Seekirchen',15,246),(1144,'Sieghartskirchen',15,246),(1145,'StraBwalchen',15,246),(1146,'Strobl',15,246),(1147,'Tamsweg',15,246),(1148,'Thalgau',15,246),(1149,'Wals-Siezenheim',15,246),(1150,'Wolfgangsee',15,246),(1151,'Zell am See',15,246),(1152,'Albersdorf',15,247),(1153,'Bad Aussee',15,248),(1154,'Barnbach',15,248),(1155,'Bruck an der Mur',15,248),(1156,'Deutschlandsberg',15,248),(1157,'Eisenerz',15,248),(1158,'Feldbach',15,248),(1159,'Feldkirchen bei Graz',15,248),(1160,'Fohnsdorf',15,248),(1161,'Frohnleiten',15,248),(1162,'Furstenfeld',15,248),(1163,'Gleisdorf',15,248),(1164,'Gratkorn',15,248),(1165,'Graz',15,248),(1166,'Hartberg',15,248),(1167,'Judenburg',15,248),(1168,'Judendorf-StraBengel',15,248),(1169,'Kapfenberg',15,248),(1170,'Karlsdorf',15,248),(1171,'Kindberg',15,248),(1172,'Knittelfeld',15,248),(1173,'Koflach',15,248),(1174,'Krieglach',15,248),(1175,'Lannach',15,248),(1176,'Leibnitz',15,248),(1177,'Leoben',15,248),(1178,'Liezen',15,248),(1179,'Murzzuschlag',15,248),(1180,'Rottenmann',15,248),(1181,'Schladming',15,248),(1182,'Seiersberg',15,248),(1183,'Spielberg',15,248),(1184,'Trofaiach',15,248),(1185,'Voitsberg',15,248),(1186,'Wagna',15,248),(1187,'Weiz',15,248),(1188,'Zeltweg',15,248),(1189,'Deutschfeistritz',15,249),(1190,'Liezen',15,249),(1191,'Sankt Bartholoma',15,249),(1192,'Absam',15,250),(1193,'Axams',15,250),(1194,'Ebbs',15,250),(1195,'Fugen',15,250),(1196,'Hall',15,250),(1197,'Haselgehr',15,250),(1198,'Hopfgarten',15,250),(1199,'Imst',15,250),(1200,'Innsbruck',15,250),(1201,'Jenbach',15,250),(1202,'Kirchberg',15,250),(1203,'Kirchbichl',15,250),(1204,'Kitzbuhel',15,250),(1205,'Kramsach',15,250),(1206,'Kufstein',15,250),(1207,'Landeck',15,250),(1208,'Lienz',15,250),(1209,'Matrei',15,250),(1210,'Neustift im Stubaital',15,250),(1211,'Reutte',15,250),(1212,'Rum',15,250),(1213,'Sankt Johann in Tirol',15,250),(1214,'Scheffau',15,250),(1215,'Schwaz',15,250),(1216,'St. Johann Am Walde',15,250),(1217,'Telfs',15,250),(1218,'Vols',15,250),(1219,'Vomp',15,250),(1220,'Wattens',15,250),(1221,'Worgl',15,250),(1222,'Zirl',15,250),(1223,'Altach',15,252),(1224,'Bludenz',15,252),(1225,'Bregenz',15,252),(1226,'Chassieu',15,252),(1227,'Dietmannsried',15,252),(1228,'Dornbirn',15,252),(1229,'Feldkirch',15,252),(1230,'Frastanz',15,252),(1231,'Gotzis',15,252),(1232,'Hard',15,252),(1233,'Hochst',15,252),(1234,'Hohenems',15,252),(1235,'Horbranz',15,252),(1236,'Hufingen',15,252),(1237,'Lauterach',15,252),(1238,'Lochau',15,252),(1239,'Lustenau',15,252),(1240,'Mittelberg',15,252),(1241,'Nenzing',15,252),(1242,'Nuziders',15,252),(1243,'Rankweil',15,252),(1244,'Schruns',15,252),(1245,'Thuringen',15,252),(1246,'Wolfurt',15,252),(1247,'Vienna',15,253),(1248,'Wien',15,253),(1249,'Alat',16,254),(1250,'Artyom',16,254),(1251,'Baki',16,254),(1252,'Bakixanov',16,254),(1253,'Balaxani',16,254),(1254,'Bilacari',16,254),(1255,'Bilqax',16,254),(1256,'Bina',16,254),(1257,'Buzovna',16,254),(1258,'Haci Zeynalabdin',16,254),(1259,'Hovsan',16,254),(1260,'Lokbatan',16,254),(1261,'Mastaga',16,254),(1262,'Puta',16,254),(1263,'Qarasuxur',16,254),(1264,'Qobustan',16,254),(1265,'Rasulzada',16,254),(1266,'Sabuncu',16,254),(1267,'Sanqacal',16,254),(1268,'Sumqayit',16,254),(1269,'Suraxani',16,254),(1270,'Xirdalan',16,254),(1271,'Zirya',16,254),(1272,'Daskasan',16,256),(1273,'Ganca',16,256),(1274,'Xanlar',16,256),(1275,'Ganja',16,257),(1276,'Cabrayil',16,258),(1277,'Kalbacar',16,258),(1278,'Lacin',16,258),(1279,'Astara',16,259),(1280,'Goytapa',16,259),(1281,'Lankaran',16,259),(1282,'Masalli',16,259),(1283,'Neftcala',16,259),(1284,'Agcabadi',16,260),(1285,'Agdam',16,260),(1286,'Barda',16,260),(1287,'Mingacevir',16,260),(1288,'Tartar',16,260),(1289,'Yevlax',16,260),(1290,'Ali Bayramli',16,261),(1291,'Bilasuvar',16,261),(1292,'Calilabad',16,261),(1293,'Qarasu',16,261),(1294,'Qazimammad',16,261),(1295,'Saatli',16,261),(1296,'Sabirabad',16,261),(1297,'Salyan',16,261),(1298,'Susa',16,262),(1299,'Xankandi',16,262),(1300,'Xocavand',16,262),(1301,'Culfa',16,263),(1302,'Naxcivan',16,263),(1303,'Ordubad',16,263),(1304,'Sadarak',16,263),(1305,'Sarur',16,263),(1306,'Beylaqan',16,264),(1307,'Fuzuli',16,264),(1308,'Imisli',16,264),(1309,'Agstafa',16,265),(1310,'Gadabay',16,265),(1311,'Kovlar',16,265),(1312,'Qaracamirli',16,265),(1313,'Qazax',16,265),(1314,'Samkir',16,265),(1315,'Tovuz',16,265),(1316,'Amircan',16,266),(1317,'Balakan',16,266),(1318,'Katex',16,266),(1319,'Oguz',16,266),(1320,'Qabala',16,266),(1321,'Qax',16,266),(1322,'Saki',16,266),(1323,'Zaqatala',16,266),(1324,'Agdas',16,267),(1325,'Agsu',16,267),(1326,'Goycay',16,267),(1327,'Ismayilli',16,267),(1328,'Kurdamir',16,267),(1329,'Samaxi',16,267),(1330,'Ucar',16,267),(1331,'Zardab',16,267),(1332,'Davaci',16,268),(1333,'Quba',16,268),(1334,'Qusar',16,268),(1335,'Siyazan',16,268),(1336,'Xacmaz',16,268),(1337,'Xudat',16,268),(1338,'\'Isa',18,269),(1339,'Badiyah',18,270),(1340,'Hidd',18,271),(1341,'Mahama',18,273),(1342,'Manama',18,274),(1343,'Sitrah',18,275),(1344,'al-Manamah',18,276),(1345,'al-Muharraq',18,277),(1346,'ar-Rifa\'a',18,278),(1347,'Bandarban',19,280),(1348,'Barguna',19,281),(1349,'Barisal',19,282),(1350,'Gaurnadi',19,282),(1351,'Mehendiganj',19,282),(1352,'Nalchiti',19,282),(1353,'Bhola',19,283),(1354,'Burhanuddin',19,283),(1355,'Char Fasson',19,283),(1356,'Lalmohan',19,283),(1357,'Adamighi',19,284),(1358,'Bogora',19,284),(1359,'Sherpur',19,284),(1360,'Chandpur',19,286),(1361,'Hajiganj',19,286),(1362,'Boalkhali',19,287),(1363,'Chattagam',19,287),(1364,'Fatikchhari',19,287),(1365,'Lohagara',19,287),(1366,'Patiya',19,287),(1367,'Rangunia',19,287),(1368,'Raozan',19,287),(1369,'Sandip',19,287),(1370,'Satkaniya',19,287),(1371,'Alamdanga',19,289),(1372,'Chuadanga',19,289),(1373,'Damurhuda',19,289),(1374,'Dhaka',19,290),(1375,'Dhamrai',19,290),(1376,'Dohar',19,290),(1377,'Bochanganj',19,291),(1378,'Dinajpur',19,291),(1379,'Fulbari',19,291),(1380,'Parbatipur',19,291),(1381,'Bhanga',19,292),(1382,'Char Bhadrasan',19,292),(1383,'Faridpur',19,292),(1384,'Chhagalnaiya',19,293),(1385,'Feni',19,293),(1386,'Gaybanda',19,294),(1387,'Gazipur',19,295),(1388,'Tungi',19,295),(1389,'Gopalganj',19,296),(1390,'Tungi Para',19,296),(1391,'Baniachang',19,297),(1392,'Habiganj',19,297),(1393,'Jamalpur',19,299),(1394,'Sarishabari',19,299),(1395,'Abhaynagar',19,300),(1396,'Jessor',19,300),(1397,'Jhikargachha',19,300),(1398,'Keshabpur',19,300),(1399,'Jhalakati',19,301),(1400,'Jhanaydah',19,302),(1401,'Kaliganj',19,302),(1402,'Kotchandpur',19,302),(1403,'Shailkupa',19,302),(1404,'Khagrachari',19,303),(1405,'Manikchhari',19,303),(1406,'Ramgarh',19,303),(1407,'Khulna',19,304),(1408,'Phultala',19,304),(1409,'Bajitpur',19,305),(1410,'Bhairab Bazar',19,305),(1411,'Itna',19,305),(1412,'Kishorganj',19,305),(1413,'Komilla',19,307),(1414,'Laksham',19,307),(1415,'Chilmari',19,308),(1416,'Kurigram',19,308),(1417,'Nageshwari',19,308),(1418,'Ulipur',19,308),(1419,'Bheramara',19,309),(1420,'Kushtiya',19,309),(1421,'Lakshmipur',19,310),(1422,'Ramganj',19,310),(1423,'Ramgati',19,310),(1424,'Raypur',19,310),(1425,'Madaripur',19,312),(1426,'Magura',19,313),(1427,'Bhaluka',19,314),(1428,'Fulbaria',19,314),(1429,'Gafargaon',19,314),(1430,'Ishwarganj',19,314),(1431,'Maimansingh',19,314),(1432,'Muktagachha',19,314),(1433,'Trishal',19,314),(1434,'Manikganj',19,315),(1435,'Meherpur',19,317),(1436,'Munshiganj',19,318),(1437,'Kalia',19,319),(1438,'Naral',19,319),(1439,'Narayanganj',19,320),(1440,'Rupganj',19,320),(1441,'Narsingdi',19,321),(1442,'Roypura',19,321),(1443,'Gurudaspur',19,322),(1444,'Nator',19,322),(1445,'Naugaon',19,323),(1446,'Gomastapur',19,324),(1447,'Nawabganj',19,324),(1448,'Shibganj',19,324),(1449,'Netrakona',19,325),(1450,'Domar',19,326),(1451,'Nilphamari',19,326),(1452,'Sa\'idpur',19,326),(1453,'Begamganj',19,327),(1454,'Noakhali',19,327),(1455,'Senbagh',19,327),(1456,'Bera',19,328),(1457,'Bhangura',19,328),(1458,'Ishurdi',19,328),(1459,'Pabna',19,328),(1460,'Panchagarh',19,329),(1461,'Patuakhali',19,330),(1462,'Bhandaria',19,331),(1463,'Mathbaria',19,331),(1464,'Nesarabad',19,331),(1465,'Pirojpur',19,331),(1466,'Pangsha',19,332),(1467,'Rajbari',19,332),(1468,'Rajshahi',19,333),(1469,'Kaptai',19,334),(1470,'Rangamati',19,334),(1471,'Badarganj',19,335),(1472,'Kaunia',19,335),(1473,'Rangpur',19,335),(1474,'Satkhira',19,336),(1475,'Palang',19,337),(1476,'Nalitabari',19,338),(1477,'Sherpur',19,338),(1478,'Silhat',19,339),(1479,'Shahjadpur',19,340),(1480,'Sirajganj',19,340),(1481,'Chhatak',19,341),(1482,'Sunamganj',19,341),(1483,'Gopalpur',19,342),(1484,'Mirzapur',19,342),(1485,'Sakhipur',19,342),(1486,'Tangayal',19,342),(1487,'Pirganj',19,343),(1488,'Thakurgaon',19,343),(1489,'Baranavichy',21,355),(1490,'Bjaroza',21,355),(1491,'Bjeloozersk',21,355),(1492,'Brest',21,355),(1493,'David-Haradok',21,355),(1494,'Drahichyn',21,355),(1495,'Hancavichy',21,355),(1496,'Ivacevichy',21,355),(1497,'Ivanava',21,355),(1498,'Kamjenec',21,355),(1499,'Kobryn',21,355),(1500,'Kosava',21,355),(1501,'Ljahavichy',21,355),(1502,'Luninjec',21,355),(1503,'Malaryta',21,355),(1504,'Mikashevichy',21,355),(1505,'Pinsk',21,355),(1506,'Pruzhany',21,355),(1507,'Stolin',21,355),(1508,'Vysokoje',21,355),(1509,'Zhabinka',21,355),(1510,'Buda Kosheljovo',21,356),(1511,'Chechersk',21,356),(1512,'Dobrush',21,356),(1513,'Hojniki',21,356),(1514,'Homjel\'',21,356),(1515,'Jel\'sk',21,356),(1516,'Kalinkavichy',21,356),(1517,'Kascjukovka',21,356),(1518,'Mazyr',21,356),(1519,'Narovlja',21,356),(1520,'Pjetrykav',21,356),(1521,'Rahachow',21,356),(1522,'Rechyca',21,356),(1523,'Svetlahorsk',21,356),(1524,'Vasilevichy',21,356),(1525,'Vjetka',21,356),(1526,'Zhlobin',21,356),(1527,'Zhytkavichy',21,356),(1528,'Ashmjany',21,357),(1529,'Berjozovka',21,357),(1530,'Hrodna',21,357),(1531,'Lida',21,357),(1532,'Masty',21,357),(1533,'Navahrudak',21,357),(1534,'Shchuchyn',21,357),(1535,'Skidel\'',21,357),(1536,'Slonim',21,357),(1537,'Smarhon\'',21,357),(1538,'Vawkavysk',21,357),(1539,'Asipovichy',21,358),(1540,'Babrujsk',21,358),(1541,'Byhau',21,358),(1542,'Chausy',21,358),(1543,'Cherikov',21,358),(1544,'Horki',21,358),(1545,'Kascjukovichy',21,358),(1546,'Klimavichy',21,358),(1547,'Krychaw',21,358),(1548,'Mahiljow',21,358),(1549,'Mstislav',21,358),(1550,'Shklov',21,358),(1551,'Slaeuharad',21,358),(1552,'Minsk',21,360),(1553,'Petrikov',21,362),(1554,'Baran\'',21,363),(1555,'Braslav',21,363),(1556,'Chashniki',21,363),(1557,'Disna',21,363),(1558,'Dokshicy',21,363),(1559,'Dubrovna',21,363),(1560,'Haradok',21,363),(1561,'Hlybokaje',21,363),(1562,'Ljepjel\'',21,363),(1563,'Mjory',21,363),(1564,'Navapolack',21,363),(1565,'Novalukoml\'',21,363),(1566,'Orsha',21,363),(1567,'Pastavy',21,363),(1568,'Polack',21,363),(1569,'Polotsk',21,363),(1570,'Senno',21,363),(1571,'Talachyn',21,363),(1572,'Verhnjadzvimsk',21,363),(1573,'Vicebsk',21,363),(1574,'Aartselaar',22,364),(1575,'Antwerpen',22,364),(1576,'Arendonk',22,364),(1577,'Baarle-Hertog',22,364),(1578,'Balen',22,364),(1579,'Beerse',22,364),(1580,'Berlaar',22,364),(1581,'Boechout',22,364),(1582,'Bonheiden',22,364),(1583,'Boom',22,364),(1584,'Bornem',22,364),(1585,'Borsbeek',22,364),(1586,'Brasschaat',22,364),(1587,'Brecht',22,364),(1588,'Dessel',22,364),(1589,'Deurne',22,364),(1590,'Duffel',22,364),(1591,'Edegem',22,364),(1592,'Ekeren',22,364),(1593,'Essen',22,364),(1594,'Geel',22,364),(1595,'Geluvele',22,364),(1596,'Grobbendonk',22,364),(1597,'Heist-op-den-Berg',22,364),(1598,'Hemiksem',22,364),(1599,'Herentals',22,364),(1600,'Herenthout',22,364),(1601,'Herselt',22,364),(1602,'Hoogstraten',22,364),(1603,'Hove',22,364),(1604,'Hulshout',22,364),(1605,'Kalmpthout',22,364),(1606,'Kalmthout',22,364),(1607,'Kapellen',22,364),(1608,'Kasterlee',22,364),(1609,'Kontich',22,364),(1610,'Laakdal',22,364),(1611,'Lier',22,364),(1612,'Lille',22,364),(1613,'Lint',22,364),(1614,'Malle',22,364),(1615,'Mechelen',22,364),(1616,'Meerhout',22,364),(1617,'Merksplas',22,364),(1618,'Mol',22,364),(1619,'Mortsel',22,364),(1620,'Niel',22,364),(1621,'Nijlen',22,364),(1622,'Olen',22,364),(1623,'Oud-Turnhout',22,364),(1624,'Putte',22,364),(1625,'Puurs',22,364),(1626,'Ranst',22,364),(1627,'Ravels',22,364),(1628,'Retie',22,364),(1629,'Rijkevorsel',22,364),(1630,'Robrechts',22,364),(1631,'Rumst',22,364),(1632,'Schelle',22,364),(1633,'Schilde',22,364),(1634,'Schoten',22,364),(1635,'Sint-Amands',22,364),(1636,'Sint-Katelijne-Waver',22,364),(1637,'Stabroek',22,364),(1638,'Turnhout',22,364),(1639,'Vorselaar',22,364),(1640,'Vosselaar',22,364),(1641,'Westerlo',22,364),(1642,'Wijnegem',22,364),(1643,'Willebroek',22,364),(1644,'Wilrijk',22,364),(1645,'Wommelgem',22,364),(1646,'Wuustwezel',22,364),(1647,'Zandhoven',22,364),(1648,'Zoersel',22,364),(1649,'Zwijndrecht',22,364),(1650,'Berchem',22,365),(1651,'Alsemberg',22,366),(1652,'Asse Zellik',22,366),(1653,'Brussels',22,366),(1654,'Bruxelles',22,366),(1655,'Diegem',22,366),(1656,'Alsemberg',22,367),(1657,'Asse Zellik',22,367),(1658,'Brussels',22,367),(1659,'Bruxelles',22,367),(1660,'Diegem',22,367),(1661,'Brussel',22,368),(1662,'Aiseau-Presles',22,370),(1663,'Anderlues',22,370),(1664,'Antoing',22,370),(1665,'Ath',22,370),(1666,'Beaumont',22,370),(1667,'Beloeil',22,370),(1668,'Bernissart',22,370),(1669,'Binche',22,370),(1670,'Boussu',22,370),(1671,'Braine-le-Comte',22,370),(1672,'Brugelette',22,370),(1673,'Brunehaut',22,370),(1674,'Celles',22,370),(1675,'Chapelle-lez-Herlaimont',22,370),(1676,'Charleroi',22,370),(1677,'Chatelet',22,370),(1678,'Chievres',22,370),(1679,'Chimay',22,370),(1680,'Colfontaine',22,370),(1681,'Comines-Warneton',22,370),(1682,'Courcelles',22,370),(1683,'Dour',22,370),(1684,'Ecaussinnes',22,370),(1685,'Ellezelles',22,370),(1686,'Enghien',22,370),(1687,'Erquelinnes',22,370),(1688,'Estaimpuis',22,370),(1689,'Estinnes',22,370),(1690,'Farciennes',22,370),(1691,'Fleurus',22,370),(1692,'Flobecq',22,370),(1693,'Fontaine-l\'Eveque',22,370),(1694,'Frameries',22,370),(1695,'Frasnes-lez-Anvaing',22,370),(1696,'Froidchapelle',22,370),(1697,'Gerpinnes',22,370),(1698,'Haine-Saint-Pierre',22,370),(1699,'Ham-sur-Heure-Nalinnes',22,370),(1700,'Hensies',22,370),(1701,'Honnelles',22,370),(1702,'Jurbise',22,370),(1703,'La Louviere',22,370),(1704,'Le Roeulx',22,370),(1705,'Lens',22,370),(1706,'Les Bons Villers',22,370),(1707,'Lessines',22,370),(1708,'Leuze-en-Hainaut',22,370),(1709,'Lobbes',22,370),(1710,'Manage',22,370),(1711,'Merbes-le-Chateau',22,370),(1712,'Momignies',22,370),(1713,'Mons',22,370),(1714,'Mont-de-l\'Enclus',22,370),(1715,'Montigny-le-Tilleul',22,370),(1716,'Morlanwelz',22,370),(1717,'Mouscron',22,370),(1718,'Pecq',22,370),(1719,'Peruwelz',22,370),(1720,'Pont-a-Celles',22,370),(1721,'Quaregnon',22,370),(1722,'Quevy',22,370),(1723,'Quievrain',22,370),(1724,'Rumes',22,370),(1725,'Saint-Ghislain',22,370),(1726,'Seneffe',22,370),(1727,'Silly',22,370),(1728,'Sivry-Rance',22,370),(1729,'Soignies',22,370),(1730,'Thuin',22,370),(1731,'Tournai',22,370),(1732,'Amay',22,371),(1733,'Amel',22,371),(1734,'Angleur',22,371),(1735,'Ans',22,371),(1736,'Anthisnes',22,371),(1737,'Aubel',22,371),(1738,'Awans',22,371),(1739,'Aywaille',22,371),(1740,'Baelen',22,371),(1741,'Bassenge',22,371),(1742,'Berloz',22,371),(1743,'Beyne-Heusay',22,371),(1744,'Blegny',22,371),(1745,'Braives',22,371),(1746,'Bullingen',22,371),(1747,'Burdinne',22,371),(1748,'Burg-Reuland',22,371),(1749,'Butgenbach',22,371),(1750,'Chaudfontaine',22,371),(1751,'Clavier',22,371),(1752,'Comblain-au-Pont',22,371),(1753,'Crisnee',22,371),(1754,'Dalhem',22,371),(1755,'Dison',22,371),(1756,'Donceel',22,371),(1757,'Engis',22,371),(1758,'Esneux',22,371),(1759,'Eupen',22,371),(1760,'Faimes',22,371),(1761,'Ferrieres',22,371),(1762,'Fexhe-le-Haut-Clocher',22,371),(1763,'Flemalle',22,371),(1764,'Fleron',22,371),(1765,'Geer',22,371),(1766,'Grace-Hollogne',22,371),(1767,'Hamoir',22,371),(1768,'Hannut',22,371),(1769,'Heron',22,371),(1770,'Herstal',22,371),(1771,'Herve',22,371),(1772,'Huy',22,371),(1773,'Jalhay',22,371),(1774,'Juprelle',22,371),(1775,'Kelmis',22,371),(1776,'Liege',22,371),(1777,'Lierneux',22,371),(1778,'Limbourg',22,371),(1779,'Lincent',22,371),(1780,'Lontzen',22,371),(1781,'Malmedy',22,371),(1782,'Marchin',22,371),(1783,'Modave',22,371),(1784,'Montzen',22,371),(1785,'Nandrin',22,371),(1786,'Neupre',22,371),(1787,'Olne',22,371),(1788,'Oreye',22,371),(1789,'Ouffet',22,371),(1790,'Oupeye',22,371),(1791,'Pepinster',22,371),(1792,'Plombieres',22,371),(1793,'Racour',22,371),(1794,'Raeren',22,371),(1795,'Remicourt',22,371),(1796,'Saint-Georges-sur-Meuse',22,371),(1797,'Saint-Nicolas',22,371),(1798,'Sankt Vith',22,371),(1799,'Seraing',22,371),(1800,'Soumagne',22,371),(1801,'Spa',22,371),(1802,'Sprimont',22,371),(1803,'Stavelot',22,371),(1804,'Stoumont',22,371),(1805,'Theux',22,371),(1806,'Thimister-Clermont',22,371),(1807,'Tinlot',22,371),(1808,'Trois-Ponts',22,371),(1809,'Trooz',22,371),(1810,'Verlaine',22,371),(1811,'Verviers',22,371),(1812,'Villers-le-Bouillet',22,371),(1813,'Vise',22,371),(1814,'Waimes',22,371),(1815,'Wanze',22,371),(1816,'Waremme',22,371),(1817,'Wasseiges',22,371),(1818,'Welkenraedt',22,371),(1819,'Alken',22,372),(1820,'As',22,372),(1821,'Beringen',22,372),(1822,'Bilzen',22,372),(1823,'Bocholt',22,372),(1824,'Borgloon',22,372),(1825,'Bree',22,372),(1826,'Diepenbeek',22,372),(1827,'Dilsen-Stokkem',22,372),(1828,'Genk',22,372),(1829,'Gingelom',22,372),(1830,'Halen',22,372),(1831,'Ham',22,372),(1832,'Hamont-Achel',22,372),(1833,'Hasselt',22,372),(1834,'Hechtel-Eksel',22,372),(1835,'Heers',22,372),(1836,'Herk-de-Stad',22,372),(1837,'Herstappe',22,372),(1838,'Heusden-Zolder',22,372),(1839,'Hoeselt',22,372),(1840,'Houthalen-Helchteren',22,372),(1841,'Kinrooi',22,372),(1842,'Kortessem',22,372),(1843,'Kuringen',22,372),(1844,'Lanaken',22,372),(1845,'Leopoldsburg',22,372),(1846,'Lommel',22,372),(1847,'Lummen',22,372),(1848,'Maaseik',22,372),(1849,'Maasmechelen',22,372),(1850,'Meeuwen-Gruitrode',22,372),(1851,'Neerpelt',22,372),(1852,'Nieuwerkerken',22,372),(1853,'Opglabbeek',22,372),(1854,'Overpelt',22,372),(1855,'Peer',22,372),(1856,'Riemst',22,372),(1857,'Sint-Truiden',22,372),(1858,'Tessenderlo',22,372),(1859,'Tongeren',22,372),(1860,'Voeren',22,372),(1861,'Wellen',22,372),(1862,'Zonhoven',22,372),(1863,'Zutendaal',22,372),(1864,'Arlon',22,373),(1865,'Attert',22,373),(1866,'Aubange',22,373),(1867,'Bastogne',22,373),(1868,'Bertogne',22,373),(1869,'Bertrix',22,373),(1870,'Bouillon',22,373),(47926,'Table Rock',233,3884),(47927,'Taylor',233,3884),(47928,'Ten Sleep',233,3884),(47929,'Teton Village',233,3884),(47930,'Thayne',233,3884),(47931,'The Buttes',233,3884),(47932,'Thermopolis',233,3884),(47933,'Torrington',233,3884),(47934,'Turnerville',233,3884),(47935,'Upton',233,3884),(47936,'Van Tassell',233,3884),(47937,'Veteran',233,3884),(47938,'Vista West',233,3884),(47939,'Wamsutter',233,3884),(47940,'Warren Afb',233,3884),(47941,'Washakie Ten',233,3884),(47942,'Washam',233,3884),(47943,'West River',233,3884),(47944,'Westview Circle',233,3884),(47945,'Wheatland',233,3884),(47946,'Wilson',233,3884),(47947,'Winchester',233,3884),(47948,'Woods Landing-jelm',233,3884),(47949,'Worland',233,3884),(47950,'Wright',233,3884),(47951,'Yoder',233,3884),(47952,'Y-o Ranch',233,3884);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` varchar(5000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversation_messages`
--

DROP TABLE IF EXISTS `conversation_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversation_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `message` varchar(10000) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation_messages`
--

LOCK TABLES `conversation_messages` WRITE;
/*!40000 ALTER TABLE `conversation_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversation_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `subject` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan'),(2,'Aland Islands'),(3,'Albania'),(4,'Algeria'),(5,'American Samoa'),(6,'Andorra'),(7,'Angola'),(8,'Anguilla'),(9,'Antarctica'),(10,'Antigua And Barbuda'),(11,'Argentina'),(12,'Armenia'),(13,'Aruba'),(14,'Australia'),(15,'Austria'),(16,'Azerbaijan'),(17,'Bahamas The'),(18,'Bahrain'),(19,'Bangladesh'),(20,'Barbados'),(21,'Belarus'),(22,'Belgium'),(23,'Belize'),(24,'Benin'),(25,'Bermuda'),(26,'Bhutan'),(27,'Bolivia'),(28,'Bosnia and Herzegovina'),(29,'Botswana'),(30,'Bouvet Island'),(31,'Brazil'),(32,'British Indian Ocean Territory'),(33,'Brunei'),(34,'Bulgaria'),(35,'Burkina Faso'),(36,'Burundi'),(37,'Cambodia'),(38,'Cameroon'),(39,'Canada'),(40,'Cape Verde'),(41,'Cayman Islands'),(42,'Central African Republic'),(43,'Chad'),(44,'Chile'),(45,'China'),(46,'Christmas Island'),(47,'Cocos (Keeling) Islands'),(48,'Colombia'),(49,'Comoros'),(50,'Congo'),(51,'Congo The Democratic Republic Of The'),(52,'Cook Islands'),(53,'Costa Rica'),(54,'Cote D\'Ivoire (Ivory Coast)'),(55,'Croatia (Hrvatska)'),(56,'Cuba'),(57,'Cyprus'),(58,'Czech Republic'),(59,'Denmark'),(60,'Djibouti'),(61,'Dominica'),(62,'Dominican Republic'),(63,'East Timor'),(64,'Ecuador'),(65,'Egypt'),(66,'El Salvador'),(67,'Equatorial Guinea'),(68,'Eritrea'),(69,'Estonia'),(70,'Ethiopia'),(71,'Falkland Islands'),(72,'Faroe Islands'),(73,'Fiji Islands'),(74,'Finland'),(75,'France'),(76,'French Guiana'),(77,'French Polynesia'),(78,'French Southern Territories'),(79,'Gabon'),(80,'Gambia The'),(81,'Georgia'),(82,'Germany'),(83,'Ghana'),(84,'Gibraltar'),(85,'Greece'),(86,'Greenland'),(87,'Grenada'),(88,'Guadeloupe'),(89,'Guam'),(90,'Guatemala'),(91,'Guernsey and Alderney'),(92,'Guinea'),(93,'Guinea-Bissau'),(94,'Guyana'),(95,'Haiti'),(96,'Heard and McDonald Islands'),(97,'Honduras'),(98,'Hong Kong S.A.R.'),(99,'Hungary'),(100,'Iceland'),(101,'India'),(102,'Indonesia'),(103,'Iran'),(104,'Iraq'),(105,'Ireland'),(106,'Israel'),(107,'Italy'),(108,'Jamaica'),(109,'Japan'),(110,'Jersey'),(111,'Jordan'),(112,'Kazakhstan'),(113,'Kenya'),(114,'Kiribati'),(115,'Korea North\n'),(116,'Korea South'),(117,'Kuwait'),(118,'Kyrgyzstan'),(119,'Laos'),(120,'Latvia'),(121,'Lebanon'),(122,'Lesotho'),(123,'Liberia'),(124,'Libya'),(125,'Liechtenstein'),(126,'Lithuania'),(127,'Luxembourg'),(128,'Macau S.A.R.'),(129,'Macedonia'),(130,'Madagascar'),(131,'Malawi'),(132,'Malaysia'),(133,'Maldives'),(134,'Mali'),(135,'Malta'),(136,'Man (Isle of)'),(137,'Marshall Islands'),(138,'Martinique'),(139,'Mauritania'),(140,'Mauritius'),(141,'Mayotte'),(142,'Mexico'),(143,'Micronesia'),(144,'Moldova'),(145,'Monaco'),(146,'Mongolia'),(147,'Montenegro'),(148,'Montserrat'),(149,'Morocco'),(150,'Mozambique'),(151,'Myanmar'),(152,'Namibia'),(153,'Nauru'),(154,'Nepal'),(155,'Netherlands Antilles'),(156,'Netherlands The'),(157,'New Caledonia'),(158,'New Zealand'),(159,'Nicaragua'),(160,'Niger'),(161,'Nigeria'),(162,'Niue'),(163,'Norfolk Island'),(164,'Northern Mariana Islands'),(165,'Norway'),(166,'Oman'),(167,'Pakistan'),(168,'Palau'),(169,'Palestinian Territory Occupied'),(170,'Panama'),(171,'Papua new Guinea'),(172,'Paraguay'),(173,'Peru'),(174,'Philippines'),(175,'Pitcairn Island'),(176,'Poland'),(177,'Portugal'),(178,'Puerto Rico'),(179,'Qatar'),(180,'Reunion'),(181,'Romania'),(182,'Russia'),(183,'Rwanda'),(184,'Saint Helena'),(185,'Saint Kitts And Nevis'),(186,'Saint Lucia'),(187,'Saint Pierre and Miquelon'),(188,'Saint Vincent And The Grenadines'),(189,'Saint-Barthelemy'),(190,'Saint-Martin (French part)'),(191,'Samoa'),(192,'San Marino'),(193,'Sao Tome and Principe'),(194,'Saudi Arabia'),(195,'Senegal'),(196,'Serbia'),(197,'Seychelles'),(198,'Sierra Leone'),(199,'Singapore'),(200,'Slovakia'),(201,'Slovenia'),(202,'Solomon Islands'),(203,'Somalia'),(204,'South Africa'),(205,'South Georgia'),(206,'South Sudan'),(207,'Spain'),(208,'Sri Lanka'),(209,'Sudan'),(210,'Suriname'),(211,'Svalbard And Jan Mayen Islands'),(212,'Swaziland'),(213,'Sweden'),(214,'Switzerland'),(215,'Syria'),(216,'Taiwan'),(217,'Tajikistan'),(218,'Tanzania'),(219,'Thailand'),(220,'Togo'),(221,'Tokelau'),(222,'Tonga'),(223,'Trinidad And Tobago'),(224,'Tunisia'),(225,'Turkey'),(226,'Turkmenistan'),(227,'Turks And Caicos Islands'),(228,'Tuvalu'),(229,'Uganda'),(230,'Ukraine'),(231,'United Arab Emirates'),(232,'United Kingdom'),(233,'United States'),(234,'United States Minor Outlying Islands'),(235,'Uruguay'),(236,'Uzbekistan'),(237,'Vanuatu'),(238,'Vatican City State (Holy See)'),(239,'Venezuela'),(240,'Vietnam'),(241,'Virgin Islands (British)'),(242,'Virgin Islands (US)'),(243,'Wallis And Futuna Islands'),(244,'Western Sahara'),(245,'Yemen'),(246,'Zambia'),(247,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(10) DEFAULT NULL,
  `hex` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','US Dollar','$','&#36;'),(2,'EUR','Euro','€','&#8364;'),(3,'CAD','Canada Dollar','$','&#36;'),(4,'AED','UAE Dirham','د.إ','&#1583;.&#1573;'),(5,'AFN','Afghanistan Afghani','Af','&#65;&#102;'),(6,'ALL','Albania Lek','Lek','&#76;&#101;&#107;'),(7,'AMD','Armenian Dram','AMD','AMD'),(8,'ANG','Netherlands Antilles Guilder','ƒ','&#402;'),(9,'AOA','Kwanza','Kz','&#75;&#122;'),(10,'ARS','Argentina Peso','$','&#36;'),(11,'AUD','Australia Dollar','$','&#36;'),(12,'AWG','Aruba Guilder','ƒ','&#402;'),(13,'AZN','Azerbaijan New Manat','ман','&#1084;&#1072;&#1085;'),(14,'BAM','Bosnia and Herzegovina Convertible Marka','KM','&#75;&#77;'),(15,'BBD','Barbados Dollar','$','&#36;'),(16,'BDT','Bangladeshi taka','৳','&#2547;'),(17,'BGN','Bulgaria Lev','лв','&#1083;&#1074;'),(18,'BHD','Bahraini Dinar','.د.ب','.&#1583;.&#1576;'),(19,'BIF','Burundi Franc','FBu','&#70;&#66;&#117;'),(20,'BMD','Bermuda Dollar','$','&#36;'),(21,'BND','Brunei Darussalam Dollar','$','&#36;'),(22,'BOB','Bolivia Boliviano','$b','&#36;&#98;'),(23,'BRL','Brazil Real','R$','&#82;&#36;'),(24,'BSD','Bahamas Dollar','$','&#36;'),(25,'BTN','Ngultrum','Nu.','&#78;&#117;&#46;'),(26,'BWP','Botswana Pula','P','&#80;'),(27,'BYR','Belarus Ruble','p.','&#112;&#46;'),(28,'BZD','Belize Dollar','BZ$','&#66;&#90;&#36;'),(29,'CDF','Congolese Franc','FC','&#70;&#67;'),(30,'CHF','Switzerland Franc','CHF','&#67;&#72;&#70;'),(31,'CLF','Unidad de Fomento','CLF','CLF'),(32,'CLP','Chile Peso','$','&#36;'),(33,'CNY','China Yuan Renminbi','¥','&#165;'),(34,'COP','Colombia Peso','$','&#36;'),(35,'CRC','Costa Rica Colon','₡','&#8353;'),(36,'CUP','Cuba Peso','CUP','CUP'),(37,'CVE','Cabo Verde Escudo','$','&#36;'),(38,'CZK','Czech Republic Koruna','Kč','&#75;&#269;'),(39,'DJF','Djibouti Franc','Fdj','&#70;&#100;&#106;'),(40,'DKK','Denmark Krone','kr','&#107;&#114;'),(41,'DOP','Dominican Republic Peso','RD$','&#82;&#68;&#36;'),(42,'DZD','Algerian Dinar','دج','&#1583;&#1580;'),(43,'EGP','Egypt Pound','£','&#163;'),(44,'ETB','Ethiopian Birr','Br','&#66;&#114;'),(45,'FJD','Fiji Dollar','$','&#36;'),(46,'FKP','Falkland Islands (Malvinas) Pound','£','&#163;'),(47,'GBP','United Kingdom Pound','£','&#163;'),(48,'GEL','Lari','ლ','&#4314;'),(49,'GHS','Ghana Cedi','¢','&#162;'),(50,'GIP','Gibraltar Pound','£','&#163;'),(51,'GMD','Dalasi','D','&#68;'),(52,'GNF','Guinea Franc','FG','&#70;&#71;'),(53,'GTQ','Guatemala Quetzal','Q','&#81;'),(54,'GYD','Guyana Dollar','$','&#36;'),(55,'HKD','Hong Kong Dollar','$','&#36;'),(56,'HNL','Honduras Lempira','L','&#76;'),(57,'HRK','Croatia Kuna','kn','&#107;&#110;'),(58,'HTG','Gourde','G','&#71;'),(59,'HUF','Hungary Forint','Ft','&#70;&#116;'),(60,'IDR','Indonesia Rupiah','Rp','&#82;&#112;'),(61,'ILS','Israel Shekel','₪','&#8362;'),(62,'INR','India Rupee','₹','&#8377;'),(63,'IQD','Iraqi Dinar','ع.د','&#1593;.&#1583;'),(64,'IRR','Iran Rial','﷼','&#65020;'),(65,'ISK','Iceland Krona','kr','&#107;&#114;'),(66,'JEP','Jersey Pound','£','&#163;'),(67,'JMD','Jamaica Dollar','J$','&#74;&#36;'),(68,'JOD','Jordanian Dinar','JD','&#74;&#68;'),(69,'JPY','Japan Yen','¥','&#165;'),(70,'KES','Kenyan Shilling','KSh','&#75;&#83;&#104;'),(71,'KGS','Kyrgyzstan Som','лв','&#1083;&#1074;'),(72,'KHR','Cambodia Riel','៛','&#6107;'),(73,'KMF','Comoro Franc','CF','&#67;&#70;'),(74,'KPW','Korea (North) Won','₩','&#8361;'),(75,'KRW','Korea (South) Won','₩','&#8361;'),(76,'KWD','Kuwaiti Dinar','د.ك','&#1583;.&#1603;'),(77,'KYD','Cayman Islands Dollar','$','&#36;'),(78,'KZT','Kazakhstan Tenge','лв','&#1083;&#1074;'),(79,'LAK','Laos Kip','₭','&#8365;'),(80,'LBP','Lebanon Pound','£','&#163;'),(81,'LKR','Sri Lanka Rupee','₨','&#8360;'),(82,'LRD','Liberia Dollar','$','&#36;'),(83,'LSL','Loti','L','&#76;'),(84,'LTL','Lithuania Litas','Lt','&#76;&#116;'),(85,'LVL','Latvia Lat','Ls','&#76;&#115;'),(86,'LYD','Libyan Dinar','ل.د','&#1604;.&#1583;'),(87,'MAD','Moroccan Dirham','د.م.','&#1583;.&#1605;.'),(88,'MDL','Moldovan Leu','L','&#76;'),(89,'MGA','Malagasy Ariary','Ar','&#65;&#114;'),(90,'MKD','Macedonia Denar','ден','&#1076;&#1077;&#1085;'),(91,'MMK','Kyat','K','&#75;'),(92,'MNT','Mongolia Tughrik','₮','&#8366;'),(93,'MOP','Pataca','MOP$','&#77;&#79;&#80;&#36;'),(94,'MRO','Mauritanian Ouguiya','UM','&#85;&#77;'),(95,'MUR','Mauritius Rupee','₨','&#8360;'),(96,'MVR','Rufiyaa','.ރ','.&#1923;'),(97,'MWK','Kwacha','MK','&#77;&#75;'),(98,'MXN','Mexico Peso','$','&#36;'),(99,'MYR','Malaysia Ringgit','RM','&#82;&#77;'),(100,'MZN','Mozambique Metical','MT','&#77;&#84;'),(101,'NAD','Namibia Dollar','$','&#36;'),(102,'NGN','Nigeria Naira','₦','&#8358;'),(103,'NIO','Nicaragua Cordoba','C$','&#67;&#36;'),(104,'NOK','Norway Krone','kr','&#107;&#114;'),(105,'NPR','Nepal Rupee','₨','&#8360;'),(106,'NZD','New Zealand Dollar','$','&#36;'),(107,'OMR','Oman Rial','﷼','&#65020;'),(108,'PAB','Panama Balboa','B/.','&#66;&#47;&#46;'),(109,'PEN','Peru Nuevo Sol','S/.','&#83;&#47;&#46;'),(110,'PGK','Kina','K','&#75;'),(111,'PHP','Philippines Peso','₱','&#8369;'),(112,'PKR','Pakistan Rupee','₨','&#8360;'),(113,'PLN','Poland Zloty','zł','&#122;&#322;'),(114,'PYG','Paraguay Guarani','Gs','&#71;&#115;'),(115,'QAR','Qatar Riyal','﷼','&#65020;'),(116,'RON','Romania New Leu','lei','&#108;&#101;&#105;'),(117,'RSD','Serbia Dinar','Дин.','&#1044;&#1080;&#1085;&#46;'),(118,'RUB','Russia Ruble','руб','&#1088;&#1091;&#1073;'),(119,'RWF','Rwanda Franc','ر.س','&#1585;.&#1587;'),(120,'SAR','Saudi Arabia Riyal','﷼','&#65020;'),(121,'SBD','Solomon Islands Dollar','$','&#36;'),(122,'SCR','Seychelles Rupee','₨','&#8360;'),(123,'SDG','Sudanese Pound','£','&#163;'),(124,'SEK','Sweden Krona','kr','&#107;&#114;'),(125,'SGD','Singapore Dollar','$','&#36;'),(126,'SHP','Saint Helena Pound','£','&#163;'),(127,'SLL','Leone','Le','&#76;&#101;'),(128,'SOS','Somalia Shilling','S','&#83;'),(129,'SRD','Suriname Dollar','$','&#36;'),(130,'STD','São Tomé and Príncipe Dobra','Db','&#68;&#98;'),(131,'SVC','Salvadoran Colón','$','&#36;'),(132,'SYP','Syrian Pound','£','&#163;'),(133,'SZL','Swazi Lilangeni','L','&#76;'),(134,'THB','Thai Baht','฿','&#3647;'),(135,'TJS','Tajikistani Somoni','TJS','&#84;&#74;&#83;'),(136,'TMT','Turkmenistani Manat','m','&#109;'),(137,'TND','Tunisian Dinar','د.ت','&#1583;.&#1578;'),(138,'TOP','Tongan Pa’anga','T$','&#84;&#36;'),(139,'TRY','Turkish Lira','₺','&#8378'),(140,'TTD','Trinidad and Tobago Dollar','$','&#36;'),(141,'TWD','New Taiwan Dollar','NT$','&#78;&#84;&#36;'),(142,'TZS','Tanzanian Shilling','TZS','TZS'),(143,'UAH','Ukrainian Hryvnia','₴','&#8372;'),(144,'UGX','Ugandan Shilling','USh','&#85;&#83;&#104;'),(145,'UYU','Uruguayan Peso','$U','&#36;&#85;'),(146,'UZS','Uzbekistani Som','лв','&#1083;&#1074;'),(147,'VEF','Venezuelan Bolivar','Bs','&#66;&#115;'),(148,'VND','Vietnamese Dong','₫','&#8363;'),(149,'VUV','Vanuatu Vatu','VT','&#86;&#84;'),(150,'WST','Samoan Tālā','WS$','&#87;&#83;&#36;'),(151,'XAF','Central African CFA Franc','FCFA','&#70;&#67;&#70;&#65;'),(152,'XCD','East Caribbean Dollar','$','&#36;'),(153,'XOF','West African CFA Franc','XOF','XOF'),(154,'XPF','CFP Franc','F','&#70;'),(155,'YER','Yemeni Rial','﷼','&#65020;'),(156,'ZAR','South African Rand','R','&#82;'),(157,'ZMK','Zambian Kwacha','ZK','&#90;&#75;'),(158,'ZWL','Zimbabwean Dollar','Z$','&#90;&#36;');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_type` varchar(20) DEFAULT NULL,
  `row_width` varchar(20) DEFAULT 'half',
  `is_required` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `field_order` int(11) DEFAULT '1',
  `is_product_filter` tinyint(1) DEFAULT '0',
  `product_filter_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_category`
--

DROP TABLE IF EXISTS `custom_fields_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_category`
--

LOCK TABLES `custom_fields_category` WRITE;
/*!40000 ALTER TABLE `custom_fields_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_lang`
--

DROP TABLE IF EXISTS `custom_fields_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT NULL,
  `lang_id` tinyint(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_lang`
--

LOCK TABLES `custom_fields_lang` WRITE;
/*!40000 ALTER TABLE `custom_fields_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_options`
--

DROP TABLE IF EXISTS `custom_fields_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` tinyint(4) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `field_option` varchar(500) DEFAULT NULL,
  `common_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_options`
--

LOCK TABLES `custom_fields_options` WRITE;
/*!40000 ALTER TABLE `custom_fields_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields_product`
--

DROP TABLE IF EXISTS `custom_fields_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_filter_key` varchar(255) DEFAULT NULL,
  `field_value` varchar(1000) DEFAULT NULL,
  `selected_option_common_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields_product`
--

LOCK TABLES `custom_fields_product` WRITE;
/*!40000 ALTER TABLE `custom_fields_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_files`
--

DROP TABLE IF EXISTS `digital_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digital_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_files`
--

LOCK TABLES `digital_files` WRITE;
/*!40000 ALTER TABLE `digital_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_sales`
--

DROP TABLE IF EXISTS `digital_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `digital_sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_title` varchar(500) DEFAULT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `license_key` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(100) NOT NULL,
  `currency` varchar(20) NOT NULL DEFAULT 'USD',
  `price` bigint(20) NOT NULL,
  `purchase_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_sales`
--

LOCK TABLES `digital_sales` WRITE;
/*!40000 ALTER TABLE `digital_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earnings`
--

DROP TABLE IF EXISTS `earnings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `commission_rate` tinyint(4) DEFAULT NULL,
  `shipping_cost` bigint(20) DEFAULT NULL,
  `earned_amount` bigint(20) DEFAULT NULL,
  `currency` varchar(20) DEFAULT 'USD',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earnings`
--

LOCK TABLES `earnings` WRITE;
/*!40000 ALTER TABLE `earnings` DISABLE KEYS */;
/*!40000 ALTER TABLE `earnings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followers`
--

DROP TABLE IF EXISTS `followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `following_id` int(11) DEFAULT NULL,
  `follower_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followers`
--

LOCK TABLES `followers` WRITE;
/*!40000 ALTER TABLE `followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_settings`
--

DROP TABLE IF EXISTS `form_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_conditions` tinyint(1) DEFAULT '1',
  `product_conditions_required` tinyint(1) DEFAULT '1',
  `quantity` tinyint(1) DEFAULT '1',
  `price` tinyint(1) DEFAULT '1',
  `price_required` tinyint(1) DEFAULT '1',
  `quantity_required` tinyint(1) DEFAULT '1',
  `variations` tinyint(1) DEFAULT '1',
  `shipping` tinyint(1) DEFAULT '1',
  `shipping_required` tinyint(1) DEFAULT '1',
  `product_location` tinyint(1) DEFAULT '1',
  `product_location_required` tinyint(1) DEFAULT '1',
  `physical_demo_url` tinyint(1) DEFAULT '0',
  `physical_video_preview` tinyint(1) DEFAULT '1',
  `physical_audio_preview` tinyint(1) DEFAULT '1',
  `digital_demo_url` tinyint(1) DEFAULT '1',
  `digital_video_preview` tinyint(1) DEFAULT '1',
  `digital_audio_preview` tinyint(1) DEFAULT '1',
  `external_link` tinyint(1) NOT NULL DEFAULT '1',
  `sitemap_frequency` varchar(30) DEFAULT 'monthly',
  `sitemap_last_modification` varchar(30) DEFAULT 'server_response',
  `sitemap_priority` varchar(30) DEFAULT 'automatically',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_settings`
--

LOCK TABLES `form_settings` WRITE;
/*!40000 ALTER TABLE `form_settings` DISABLE KEYS */;
INSERT INTO `form_settings` VALUES (1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'monthly','server_response','automatically');
/*!40000 ALTER TABLE `form_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `general_settings`
--

DROP TABLE IF EXISTS `general_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `physical_products_system` tinyint(1) DEFAULT '1',
  `digital_products_system` tinyint(1) DEFAULT '1',
  `marketplace_system` tinyint(1) DEFAULT '1',
  `classified_ads_system` tinyint(1) DEFAULT '1',
  `bidding_system` tinyint(1) DEFAULT '1',
  `multi_vendor_system` tinyint(1) DEFAULT '1',
  `site_lang` tinyint(4) DEFAULT '1',
  `timezone` varchar(100) DEFAULT 'America/New_York',
  `application_name` varchar(255) DEFAULT NULL,
  `selected_navigation` tinyint(4) DEFAULT '1',
  `menu_limit` tinyint(4) DEFAULT '9',
  `recaptcha_site_key` varchar(500) DEFAULT NULL,
  `recaptcha_secret_key` varchar(500) DEFAULT NULL,
  `recaptcha_lang` varchar(30) DEFAULT NULL,
  `head_code` text,
  `mail_library` varchar(50) DEFAULT 'swift',
  `mail_protocol` varchar(20) DEFAULT 'smtp',
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(20) DEFAULT NULL,
  `mail_username` varchar(255) DEFAULT NULL,
  `mail_password` varchar(255) DEFAULT NULL,
  `mail_title` varchar(255) DEFAULT NULL,
  `email_verification` tinyint(1) DEFAULT '0',
  `facebook_app_id` varchar(500) DEFAULT NULL,
  `facebook_app_secret` varchar(500) DEFAULT NULL,
  `google_client_id` varchar(500) DEFAULT NULL,
  `google_client_secret` varchar(500) DEFAULT NULL,
  `google_analytics` text,
  `default_product_location` int(11) DEFAULT '0',
  `promoted_products` tinyint(1) DEFAULT '1',
  `multilingual_system` tinyint(1) DEFAULT '1',
  `product_comments` tinyint(1) DEFAULT '1',
  `product_reviews` tinyint(1) DEFAULT '1',
  `user_reviews` tinyint(1) DEFAULT '1',
  `blog_comments` tinyint(1) DEFAULT '1',
  `index_slider` tinyint(1) DEFAULT '1',
  `index_categories` tinyint(1) DEFAULT '1',
  `index_promoted_products` tinyint(1) DEFAULT '1',
  `index_promoted_products_count` tinyint(1) DEFAULT '8',
  `index_latest_products` tinyint(1) DEFAULT '1',
  `index_latest_products_count` tinyint(1) DEFAULT '4',
  `index_blog_slider` tinyint(1) DEFAULT '1',
  `product_link_structure` varchar(20) DEFAULT 'slug-id',
  `mds_key` varchar(500) DEFAULT NULL,
  `purchase_code` varchar(500) DEFAULT NULL,
  `site_color` varchar(100) DEFAULT 'default',
  `logo` varchar(255) DEFAULT NULL,
  `logo_email` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `watermark_image_large` varchar(255) DEFAULT NULL,
  `watermark_image_mid` varchar(255) DEFAULT NULL,
  `watermark_image_small` varchar(255) DEFAULT NULL,
  `watermark_vrt_alignment` varchar(20) DEFAULT 'middle',
  `watermark_hor_alignment` varchar(20) DEFAULT 'center',
  `watermark_product_images` tinyint(1) DEFAULT '0',
  `watermark_blog_images` tinyint(1) DEFAULT '0',
  `watermark_thumbnail_images` tinyint(1) DEFAULT '0',
  `facebook_comment` text,
  `facebook_comment_status` tinyint(1) DEFAULT '0',
  `cache_system` tinyint(1) DEFAULT '0',
  `refresh_cache_database_changes` tinyint(1) DEFAULT '0',
  `cache_refresh_time` int(11) DEFAULT '1800',
  `rss_system` tinyint(1) DEFAULT '1',
  `approve_before_publishing` tinyint(1) DEFAULT '1',
  `commission_rate` tinyint(4) DEFAULT '0',
  `send_email_new_product` tinyint(1) DEFAULT '0',
  `send_email_buyer_purchase` tinyint(1) DEFAULT '0',
  `send_email_contact_messages` tinyint(1) DEFAULT '0',
  `send_email_order_shipped` tinyint(1) DEFAULT '0',
  `send_email_shop_opening_request` tinyint(1) DEFAULT '0',
  `send_email_bidding_system` tinyint(1) DEFAULT '0',
  `mail_options_account` varchar(100) DEFAULT NULL,
  `vendor_verification_system` tinyint(1) DEFAULT '1',
  `guest_checkout` tinyint(1) DEFAULT '0',
  `maintenance_mode_title` varchar(500) DEFAULT NULL,
  `maintenance_mode_description` varchar(2000) DEFAULT NULL,
  `maintenance_mode_status` tinyint(1) DEFAULT '0',
  `max_file_size_image` bigint(20) DEFAULT '10485760',
  `max_file_size_video` bigint(20) DEFAULT '31457280',
  `max_file_size_audio` bigint(20) DEFAULT '10485760',
  `google_adsense_code` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `general_settings`
--

LOCK TABLES `general_settings` WRITE;
/*!40000 ALTER TABLE `general_settings` DISABLE KEYS */;
INSERT INTO `general_settings` VALUES (1,1,1,1,1,1,1,1,'America/New_York','Modesy',1,8,'','','en','','','','','','','','',0,'','','','',NULL,0,1,1,1,1,1,1,1,1,1,8,1,12,1,'slug-id','','','default',NULL,NULL,NULL,NULL,NULL,NULL,'middle','center',0,0,0,'',0,0,0,1800,1,1,10,0,0,0,0,0,0,'',1,0,'Coming Soon','Our website is under construction. We\'ll be here soon with our new awesome site.',0,10485760,10485760,10485760,NULL);
/*!40000 ALTER TABLE `general_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `image_default` varchar(255) DEFAULT NULL,
  `image_big` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `is_main` tinyint(1) DEFAULT '0',
  `storage` varchar(20) DEFAULT 'local',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images_file_manager`
--

DROP TABLE IF EXISTS `images_file_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images_file_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_path` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images_file_manager`
--

LOCK TABLES `images_file_manager` WRITE;
/*!40000 ALTER TABLE `images_file_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `images_file_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `short_form` varchar(20) NOT NULL,
  `language_code` varchar(20) NOT NULL,
  `folder_name` varchar(255) NOT NULL,
  `text_direction` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language_order` tinyint(4) NOT NULL DEFAULT '1',
  `ckeditor_lang` varchar(10) DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en-US','default','ltr',1,1,'en');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `media_type` varchar(20) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `storage` varchar(20) DEFAULT 'local',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `buyer_type` varchar(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT 'physical',
  `product_title` varchar(500) DEFAULT NULL,
  `product_slug` varchar(500) DEFAULT NULL,
  `product_unit_price` bigint(20) DEFAULT NULL,
  `product_quantity` tinyint(4) DEFAULT NULL,
  `product_currency` varchar(20) DEFAULT NULL,
  `product_shipping_cost` bigint(20) DEFAULT NULL,
  `product_total_price` bigint(20) DEFAULT NULL,
  `commission_rate` tinyint(4) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  `is_approved` tinyint(1) DEFAULT '0',
  `shipping_tracking_number` varchar(255) DEFAULT NULL,
  `shipping_tracking_url` varchar(500) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_products`
--

LOCK TABLES `order_products` WRITE;
/*!40000 ALTER TABLE `order_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_shipping`
--

DROP TABLE IF EXISTS `order_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_shipping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone_number` varchar(255) DEFAULT NULL,
  `shipping_address_1` varchar(255) DEFAULT NULL,
  `shipping_address_2` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(255) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zip_code` varchar(20) DEFAULT NULL,
  `billing_first_name` varchar(255) DEFAULT NULL,
  `billing_last_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone_number` varchar(255) DEFAULT NULL,
  `billing_address_1` varchar(255) DEFAULT NULL,
  `billing_address_2` varchar(255) DEFAULT NULL,
  `billing_country` varchar(255) DEFAULT NULL,
  `billing_state` varchar(255) DEFAULT NULL,
  `billing_city` varchar(255) DEFAULT NULL,
  `billing_zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_shipping`
--

LOCK TABLES `order_shipping` WRITE;
/*!40000 ALTER TABLE `order_shipping` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` bigint(20) DEFAULT NULL,
  `buyer_id` int(11) NOT NULL,
  `buyer_type` varchar(20) DEFAULT NULL,
  `price_subtotal` varchar(50) DEFAULT NULL,
  `price_shipping` varchar(50) DEFAULT NULL,
  `price_total` varchar(50) DEFAULT NULL,
  `price_currency` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) DEFAULT '1',
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `page_content` text,
  `page_order` int(11) DEFAULT '1',
  `visibility` tinyint(1) DEFAULT '1',
  `title_active` tinyint(1) DEFAULT '1',
  `location` varchar(50) DEFAULT 'information',
  `link` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,'Terms & Conditions','terms-conditions','Terms & Conditions','Terms, Conditions',NULL,1,1,1,'information',NULL,'2019-08-16 08:28:17');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `default_product_currency` varchar(30) DEFAULT 'USD',
  `allow_all_currencies_for_classied` tinyint(1) DEFAULT '1',
  `promoted_products_payment_currency` varchar(30) DEFAULT 'USD',
  `currency_format` varchar(30) DEFAULT 'us',
  `currency_symbol_format` varchar(30) DEFAULT 'left',
  `paypal_enabled` tinyint(1) DEFAULT '0',
  `paypal_mode` varchar(30) DEFAULT 'live',
  `paypal_client_id` varchar(500) DEFAULT NULL,
  `paypal_secret_key` varchar(500) DEFAULT NULL,
  `stripe_enabled` tinyint(1) DEFAULT '0',
  `stripe_publishable_key` varchar(500) DEFAULT NULL,
  `stripe_secret_key` varchar(500) DEFAULT NULL,
  `paystack_enabled` tinyint(1) DEFAULT '0',
  `paystack_secret_key` varchar(500) DEFAULT NULL,
  `paystack_public_key` varchar(500) DEFAULT NULL,
  `razorpay_enabled` tinyint(1) DEFAULT '0',
  `razorpay_key_id` varchar(500) DEFAULT NULL,
  `razorpay_key_secret` varchar(500) DEFAULT NULL,
  `pagseguro_enabled` tinyint(1) DEFAULT '0',
  `pagseguro_mode` varchar(20) DEFAULT 'production',
  `pagseguro_email` varchar(255) DEFAULT NULL,
  `pagseguro_token` varchar(500) DEFAULT NULL,
  `iyzico_enabled` tinyint(1) DEFAULT '0',
  `iyzico_mode` varchar(30) DEFAULT 'live',
  `iyzico_api_key` varchar(500) DEFAULT NULL,
  `iyzico_secret_key` varchar(500) DEFAULT NULL,
  `bank_transfer_enabled` tinyint(1) DEFAULT '0',
  `bank_transfer_accounts` text,
  `cash_on_delivery_enabled` tinyint(1) DEFAULT '1',
  `price_per_day` bigint(20) DEFAULT '1',
  `price_per_month` bigint(20) DEFAULT '3',
  `free_product_promotion` tinyint(1) DEFAULT '0',
  `payout_paypal_enabled` tinyint(1) DEFAULT '1',
  `payout_iban_enabled` tinyint(1) DEFAULT '1',
  `payout_swift_enabled` tinyint(1) DEFAULT '1',
  `min_payout_paypal` bigint(20) DEFAULT '5000',
  `min_payout_iban` bigint(20) DEFAULT '5000',
  `min_payout_swift` bigint(20) DEFAULT '50000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
INSERT INTO `payment_settings` VALUES (1,'USD',1,'USD','us','left',0,'sandbox',NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,0,'production',NULL,NULL,0,'sandbox',NULL,NULL,1,NULL,1,10,100,0,1,1,1,5000,5000,50000);
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_id` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `payment_amount` varchar(50) DEFAULT NULL,
  `payer_email` varchar(100) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `purchased_plan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payouts`
--

DROP TABLE IF EXISTS `payouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payout_method` varchar(100) DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payouts`
--

LOCK TABLES `payouts` WRITE;
/*!40000 ALTER TABLE `payouts` DISABLE KEYS */;
/*!40000 ALTER TABLE `payouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_license_keys`
--

DROP TABLE IF EXISTS `product_license_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_license_keys` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `license_key` varchar(500) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_license_keys`
--

LOCK TABLES `product_license_keys` WRITE;
/*!40000 ALTER TABLE `product_license_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_license_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_options`
--

DROP TABLE IF EXISTS `product_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` varchar(100) DEFAULT NULL,
  `option_label` varchar(255) DEFAULT NULL,
  `option_key` varchar(255) DEFAULT NULL,
  `lang_id` tinyint(4) DEFAULT NULL,
  `option_type` varchar(20) NOT NULL,
  `shipping_cost` tinyint(1) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_options`
--

LOCK TABLES `product_options` WRITE;
/*!40000 ALTER TABLE `product_options` DISABLE KEYS */;
INSERT INTO `product_options` VALUES (1,'5d18a5c262c660-27877500-5650333s','Free Shipping','free_shipping',1,'shipping',0,1),(2,'5d18a66435b360-13657409-3311870s','Shipping Included','shipping_included',1,'shipping',0,1),(3,'5d18a6939d6926-77793064-9296191s','Buyer Pays','shipping_buyer_pays',1,'shipping',1,1),(4,'5d18d92a94fdd9-48421309-8629379c','New with Tags','new_with_tags',1,'product_condition',0,1),(5,'5d18d9e45b3432-30246950-5352384c','New','new',1,'product_condition',0,1),(6,'5d18d95938c285-41489303-3045988c','Very Good','very_good',1,'product_condition',0,1),(7,'5d18d967902440-79424298-1563691c','Good','good',1,'product_condition',0,1),(8,'5d18d975a867c4-28077944-7723098c','Satisfactory','satisfactory',1,'product_condition',0,1),(9,'5d18d9a6e16c23-46528035-2884541c','Used','used',1,'product_condition',0,1);
/*!40000 ALTER TABLE `product_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variations`
--

DROP TABLE IF EXISTS `product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_variations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id` varchar(100) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `lang_id` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `variation_type` varchar(50) DEFAULT NULL,
  `insert_type` varchar(10) DEFAULT 'new',
  `visible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations`
--

LOCK TABLES `product_variations` WRITE;
/*!40000 ALTER TABLE `product_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variations_options`
--

DROP TABLE IF EXISTS `product_variations_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_variations_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variation_common_id` varchar(100) DEFAULT NULL,
  `option_common_id` varchar(100) DEFAULT NULL,
  `option_text` varchar(255) DEFAULT NULL,
  `lang_id` tinyint(4) DEFAULT NULL,
  `available_in_stock` tinyint(1) DEFAULT NULL,
  `option_index` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variations_options`
--

LOCK TABLES `product_variations_options` WRITE;
/*!40000 ALTER TABLE `product_variations_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_variations_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `product_type` varchar(20) DEFAULT 'physical',
  `listing_type` varchar(20) DEFAULT 'sell_on_site',
  `category_id` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `description` text,
  `product_condition` varchar(100) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `zip_code` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_promoted` tinyint(1) DEFAULT '0',
  `promote_start_date` timestamp NULL DEFAULT NULL,
  `promote_end_date` timestamp NULL DEFAULT NULL,
  `promote_plan` varchar(100) DEFAULT NULL,
  `promote_day` int(11) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `rating` varchar(50) DEFAULT '0',
  `hit` int(11) DEFAULT '0',
  `demo_url` varchar(1000) DEFAULT NULL,
  `external_link` varchar(1000) DEFAULT NULL,
  `files_included` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT '1',
  `shipping_time` varchar(100) DEFAULT '2_3_business_days',
  `shipping_cost_type` varchar(100) DEFAULT NULL,
  `shipping_cost` bigint(20) DEFAULT '0',
  `is_sold` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `is_draft` tinyint(1) DEFAULT '0',
  `is_free_product` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promoted_transactions`
--

DROP TABLE IF EXISTS `promoted_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promoted_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `payment_amount` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `purchased_plan` varchar(255) DEFAULT NULL,
  `day_count` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promoted_transactions`
--

LOCK TABLES `promoted_transactions` WRITE;
/*!40000 ALTER TABLE `promoted_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `promoted_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quote_requests`
--

DROP TABLE IF EXISTS `quote_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quote_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `product_title` varchar(500) DEFAULT NULL,
  `product_quantity` mediumint(9) DEFAULT '1',
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `price_offered` bigint(20) DEFAULT NULL,
  `price_currency` varchar(20) DEFAULT NULL,
  `shipping_cost` bigint(20) DEFAULT NULL,
  `is_buyer_deleted` tinyint(1) DEFAULT '0',
  `is_seller_deleted` tinyint(1) DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quote_requests`
--

LOCK TABLES `quote_requests` WRITE;
/*!40000 ALTER TABLE `quote_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `quote_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` int(11) DEFAULT '1',
  `site_title` varchar(255) DEFAULT NULL,
  `homepage_title` varchar(255) DEFAULT 'Home',
  `site_description` varchar(500) DEFAULT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `about_footer` varchar(1000) DEFAULT NULL,
  `contact_text` text,
  `contact_address` varchar(500) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `copyright` varchar(500) DEFAULT NULL,
  `cookies_warning` tinyint(1) DEFAULT '0',
  `cookies_warning_text` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,1,'Modesy - Marketplace - Classified Ads Script','Index','Modesy Index Page','index, home, modesy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Copyright © 2019 Modesy - All Rights Reserved.',0,'<p>This site uses cookies. By continuing to browse the site, you are agreeing to our use of cookies.</p>\r\n','2019-08-16 08:33:20');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_id` tinyint(4) DEFAULT '1',
  `image` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `link` text,
  `item_order` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slider`
--

LOCK TABLES `slider` WRITE;
/*!40000 ALTER TABLE `slider` DISABLE KEYS */;
/*!40000 ALTER TABLE `slider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `country_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4029 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Badakhshan',1),(2,'Badgis',1),(3,'Baglan',1),(4,'Balkh',1),(5,'Bamiyan',1),(6,'Farah',1),(7,'Faryab',1),(8,'Gawr',1),(9,'Gazni',1),(10,'Herat',1),(11,'Hilmand',1),(12,'Jawzjan',1),(13,'Kabul',1),(14,'Kapisa',1),(15,'Khawst',1),(16,'Kunar',1),(17,'Lagman',1),(18,'Lawghar',1),(19,'Nangarhar',1),(20,'Nimruz',1),(21,'Nuristan',1),(22,'Paktika',1),(23,'Paktiya',1),(24,'Parwan',1),(25,'Qandahar',1),(26,'Qunduz',1),(27,'Samangan',1),(28,'Sar-e Pul',1),(29,'Takhar',1),(30,'Uruzgan',1),(31,'Wardag',1),(32,'Zabul',1),(33,'Berat',3),(34,'Bulqize',3),(35,'Delvine',3),(36,'Devoll',3),(37,'Dibre',3),(38,'Durres',3),(39,'Elbasan',3),(40,'Fier',3),(41,'Gjirokaster',3),(42,'Gramsh',3),(43,'Has',3),(44,'Kavaje',3),(45,'Kolonje',3),(46,'Korce',3),(47,'Kruje',3),(48,'Kucove',3),(49,'Kukes',3),(50,'Kurbin',3),(51,'Lezhe',3),(52,'Librazhd',3),(53,'Lushnje',3),(54,'Mallakaster',3),(55,'Malsi e Madhe',3),(56,'Mat',3),(57,'Mirdite',3),(58,'Peqin',3),(59,'Permet',3),(60,'Pogradec',3),(61,'Puke',3),(62,'Sarande',3),(63,'Shkoder',3),(64,'Skrapar',3),(65,'Tepelene',3),(66,'Tirane',3),(67,'Tropoje',3),(68,'Vlore',3),(69,'\\\'Ayn Daflah',4),(70,'\\\'Ayn Tamushanat',4),(71,'Adrar',4),(72,'Algiers',4),(73,'Annabah',4),(74,'Bashshar',4),(75,'Batnah',4),(76,'Bijayah',4),(77,'Biskrah',4),(78,'Blidah',4),(79,'Buirah',4),(80,'Bumardas',4),(81,'Burj Bu Arririj',4),(82,'Ghalizan',4),(83,'Ghardayah',4),(84,'Ilizi',4),(85,'Jijili',4),(86,'Jilfah',4),(87,'Khanshalah',4),(88,'Masilah',4),(89,'Midyah',4),(90,'Milah',4),(91,'Muaskar',4),(92,'Mustaghanam',4),(93,'Naama',4),(94,'Oran',4),(95,'Ouargla',4),(96,'Qalmah',4),(97,'Qustantinah',4),(98,'Sakikdah',4),(99,'Satif',4),(100,'Sayda\\\'',4),(101,'Sidi ban-al-\\\'Abbas',4),(102,'Suq Ahras',4),(103,'Tamanghasat',4),(104,'Tibazah',4),(105,'Tibissah',4),(106,'Tilimsan',4),(107,'Tinduf',4),(108,'Tisamsilt',4),(109,'Tiyarat',4),(110,'Tizi Wazu',4),(111,'Umm-al-Bawaghi',4),(112,'Wahran',4),(113,'Warqla',4),(114,'Wilaya d Alger',4),(115,'Wilaya de Bejaia',4),(116,'Wilaya de Constantine',4),(117,'al-Aghwat',4),(118,'al-Bayadh',4),(119,'al-Jaza\\\'ir',4),(120,'al-Wad',4),(121,'ash-Shalif',4),(122,'at-Tarif',4),(123,'Eastern',5),(124,'Manu\\\'a',5),(125,'Swains Island',5),(126,'Western',5),(127,'Andorra la Vella',6),(128,'Canillo',6),(129,'Encamp',6),(130,'La Massana',6),(131,'Les Escaldes',6),(132,'Ordino',6),(133,'Sant Julia de Loria',6),(134,'Bengo',7),(135,'Benguela',7),(136,'Bie',7),(137,'Cabinda',7),(138,'Cunene',7),(139,'Huambo',7),(140,'Huila',7),(141,'Kuando-Kubango',7),(142,'Kwanza Norte',7),(143,'Kwanza Sul',7),(144,'Luanda',7),(145,'Lunda Norte',7),(146,'Lunda Sul',7),(147,'Malanje',7),(148,'Moxico',7),(149,'Namibe',7),(150,'Uige',7),(151,'Zaire',7),(152,'Other Provinces',8),(153,'Sector claimed by Argentina/Ch',9),(154,'Sector claimed by Argentina/UK',9),(155,'Sector claimed by Australia',9),(156,'Sector claimed by France',9),(157,'Sector claimed by New Zealand',9),(158,'Sector claimed by Norway',9),(159,'Unclaimed Sector',9),(160,'Barbuda',10),(161,'Saint George',10),(162,'Saint John',10),(163,'Saint Mary',10),(164,'Saint Paul',10),(165,'Saint Peter',10),(166,'Saint Philip',10),(167,'Buenos Aires',11),(168,'Catamarca',11),(169,'Chaco',11),(170,'Chubut',11),(171,'Cordoba',11),(172,'Corrientes',11),(173,'Distrito Federal',11),(174,'Entre Rios',11),(175,'Formosa',11),(176,'Jujuy',11),(177,'La Pampa',11),(178,'La Rioja',11),(179,'Mendoza',11),(180,'Misiones',11),(181,'Neuquen',11),(182,'Rio Negro',11),(183,'Salta',11),(184,'San Juan',11),(185,'San Luis',11),(186,'Santa Cruz',11),(187,'Santa Fe',11),(188,'Santiago del Estero',11),(189,'Tierra del Fuego',11),(190,'Tucuman',11),(191,'Aragatsotn',12),(192,'Ararat',12),(193,'Armavir',12),(194,'Gegharkunik',12),(195,'Kotaik',12),(196,'Lori',12),(197,'Shirak',12),(198,'Stepanakert',12),(199,'Syunik',12),(200,'Tavush',12),(201,'Vayots Dzor',12),(202,'Yerevan',12),(203,'Aruba',13),(204,'Auckland',14),(205,'Australian Capital Territory',14),(206,'Balgowlah',14),(207,'Balmain',14),(208,'Bankstown',14),(209,'Baulkham Hills',14),(210,'Bonnet Bay',14),(211,'Camberwell',14),(212,'Carole Park',14),(213,'Castle Hill',14),(214,'Caulfield',14),(215,'Chatswood',14),(216,'Cheltenham',14),(217,'Cherrybrook',14),(218,'Clayton',14),(219,'Collingwood',14),(220,'Frenchs Forest',14),(221,'Hawthorn',14),(222,'Jannnali',14),(223,'Knoxfield',14),(224,'Melbourne',14),(225,'New South Wales',14),(226,'Northern Territory',14),(227,'Perth',14),(228,'Queensland',14),(229,'South Australia',14),(230,'Tasmania',14),(231,'Templestowe',14),(232,'Victoria',14),(233,'Werribee south',14),(234,'Western Australia',14),(235,'Wheeler',14),(236,'Bundesland Salzburg',15),(237,'Bundesland Steiermark',15),(238,'Bundesland Tirol',15),(239,'Burgenland',15),(240,'Carinthia',15),(241,'Karnten',15),(242,'Liezen',15),(243,'Lower Austria',15),(244,'Niederosterreich',15),(245,'Oberosterreich',15),(246,'Salzburg',15),(247,'Schleswig-Holstein',15),(248,'Steiermark',15),(249,'Styria',15),(250,'Tirol',15),(251,'Upper Austria',15),(252,'Vorarlberg',15),(253,'Wien',15),(254,'Abseron',16),(255,'Baki Sahari',16),(256,'Ganca',16),(257,'Ganja',16),(258,'Kalbacar',16),(259,'Lankaran',16),(260,'Mil-Qarabax',16),(261,'Mugan-Salyan',16),(262,'Nagorni-Qarabax',16),(263,'Naxcivan',16),(264,'Priaraks',16),(265,'Qazax',16),(266,'Saki',16),(267,'Sirvan',16),(268,'Xacmaz',16),(269,'\\\'Isa',18),(270,'Badiyah',18),(271,'Hidd',18),(272,'Jidd Hafs',18),(273,'Mahama',18),(274,'Manama',18),(275,'Sitrah',18),(276,'al-Manamah',18),(277,'al-Muharraq',18),(278,'ar-Rifa\\\'a',18),(279,'Bagar Hat',19),(280,'Bandarban',19),(281,'Barguna',19),(282,'Barisal',19),(283,'Bhola',19),(284,'Bogora',19),(285,'Brahman Bariya',19),(286,'Chandpur',19),(287,'Chattagam',19),(288,'Chittagong Division',19),(289,'Chuadanga',19),(290,'Dhaka',19),(291,'Dinajpur',19),(292,'Faridpur',19),(293,'Feni',19),(294,'Gaybanda',19),(295,'Gazipur',19),(296,'Gopalganj',19),(297,'Habiganj',19),(298,'Jaipur Hat',19),(299,'Jamalpur',19),(300,'Jessor',19),(301,'Jhalakati',19),(302,'Jhanaydah',19),(303,'Khagrachhari',19),(304,'Khulna',19),(305,'Kishorganj',19),(306,'Koks Bazar',19),(307,'Komilla',19),(308,'Kurigram',19),(309,'Kushtiya',19),(310,'Lakshmipur',19),(311,'Lalmanir Hat',19),(312,'Madaripur',19),(313,'Magura',19),(314,'Maimansingh',19),(315,'Manikganj',19),(316,'Maulvi Bazar',19),(317,'Meherpur',19),(318,'Munshiganj',19),(319,'Naral',19),(320,'Narayanganj',19),(321,'Narsingdi',19),(322,'Nator',19),(323,'Naugaon',19),(324,'Nawabganj',19),(325,'Netrakona',19),(326,'Nilphamari',19),(327,'Noakhali',19),(328,'Pabna',19),(329,'Panchagarh',19),(330,'Patuakhali',19),(331,'Pirojpur',19),(332,'Rajbari',19),(333,'Rajshahi',19),(334,'Rangamati',19),(335,'Rangpur',19),(336,'Satkhira',19),(337,'Shariatpur',19),(338,'Sherpur',19),(339,'Silhat',19),(340,'Sirajganj',19),(341,'Sunamganj',19),(342,'Tangayal',19),(343,'Thakurgaon',19),(344,'Christ Church',20),(345,'Saint Andrew',20),(346,'Saint George',20),(347,'Saint James',20),(348,'Saint John',20),(349,'Saint Joseph',20),(350,'Saint Lucy',20),(351,'Saint Michael',20),(352,'Saint Peter',20),(353,'Saint Philip',20),(354,'Saint Thomas',20),(355,'Brest',21),(356,'Homjel\\\'',21),(357,'Hrodna',21),(358,'Mahiljow',21),(359,'Mahilyowskaya Voblasts',21),(360,'Minsk',21),(361,'Minskaja Voblasts\\\'',21),(362,'Petrik',21),(363,'Vicebsk',21),(364,'Antwerpen',22),(365,'Berchem',22),(366,'Brabant',22),(367,'Brabant Wallon',22),(368,'Brussel',22),(369,'East Flanders',22),(370,'Hainaut',22),(371,'Liege',22),(372,'Limburg',22),(373,'Luxembourg',22),(374,'Namur',22),(375,'Ontario',22),(376,'Oost-Vlaanderen',22),(377,'Provincie Brabant',22),(378,'Vlaams-Brabant',22),(379,'Wallonne',22),(380,'West-Vlaanderen',22),(381,'Belize',23),(382,'Cayo',23),(383,'Corozal',23),(384,'Orange Walk',23),(385,'Stann Creek',23),(386,'Toledo',23),(387,'Alibori',24),(388,'Atacora',24),(389,'Atlantique',24),(390,'Borgou',24),(391,'Collines',24),(392,'Couffo',24),(393,'Donga',24),(394,'Littoral',24),(395,'Mono',24),(396,'Oueme',24),(397,'Plateau',24),(398,'Zou',24),(399,'Hamilton',25),(400,'Saint George',25),(401,'Bumthang',26),(402,'Chhukha',26),(403,'Chirang',26),(404,'Daga',26),(405,'Geylegphug',26),(406,'Ha',26),(407,'Lhuntshi',26),(408,'Mongar',26),(409,'Pemagatsel',26),(410,'Punakha',26),(411,'Rinpung',26),(412,'Samchi',26),(413,'Samdrup Jongkhar',26),(414,'Shemgang',26),(415,'Tashigang',26),(416,'Timphu',26),(417,'Tongsa',26),(418,'Wangdiphodrang',26),(419,'Beni',27),(420,'Chuquisaca',27),(421,'Cochabamba',27),(422,'La Paz',27),(423,'Oruro',27),(424,'Pando',27),(425,'Potosi',27),(426,'Santa Cruz',27),(427,'Tarija',27),(428,'Federacija Bosna i Hercegovina',28),(429,'Republika Srpska',28),(430,'Central Bobonong',29),(431,'Central Boteti',29),(432,'Central Mahalapye',29),(433,'Central Serowe-Palapye',29),(434,'Central Tutume',29),(435,'Chobe',29),(436,'Francistown',29),(437,'Gaborone',29),(438,'Ghanzi',29),(439,'Jwaneng',29),(440,'Kgalagadi North',29),(441,'Kgalagadi South',29),(442,'Kgatleng',29),(443,'Kweneng',29),(444,'Lobatse',29),(445,'Ngamiland',29),(446,'Ngwaketse',29),(447,'North East',29),(448,'Okavango',29),(449,'Orapa',29),(450,'Selibe Phikwe',29),(451,'South East',29),(452,'Sowa',29),(453,'Bouvet Island',30),(454,'Acre',31),(455,'Alagoas',31),(456,'Amapa',31),(457,'Amazonas',31),(458,'Bahia',31),(459,'Ceara',31),(460,'Distrito Federal',31),(461,'Espirito Santo',31),(462,'Estado de Sao Paulo',31),(463,'Goias',31),(464,'Maranhao',31),(465,'Mato Grosso',31),(466,'Mato Grosso do Sul',31),(467,'Minas Gerais',31),(468,'Para',31),(469,'Paraiba',31),(470,'Parana',31),(471,'Pernambuco',31),(472,'Piaui',31),(473,'Rio Grande do Norte',31),(474,'Rio Grande do Sul',31),(475,'Rio de Janeiro',31),(476,'Rondonia',31),(477,'Roraima',31),(478,'Santa Catarina',31),(479,'Sao Paulo',31),(480,'Sergipe',31),(481,'Tocantins',31),(482,'British Indian Ocean Territory',32),(483,'Blagoevgrad',34),(484,'Burgas',34),(485,'Dobrich',34),(486,'Gabrovo',34),(487,'Haskovo',34),(488,'Jambol',34),(489,'Kardzhali',34),(490,'Kjustendil',34),(491,'Lovech',34),(492,'Montana',34),(493,'Oblast Sofiya-Grad',34),(494,'Pazardzhik',34),(495,'Pernik',34),(496,'Pleven',34),(497,'Plovdiv',34),(498,'Razgrad',34),(499,'Ruse',34),(500,'Shumen',34),(501,'Silistra',34),(502,'Sliven',34),(503,'Smoljan',34),(504,'Sofija grad',34),(505,'Sofijska oblast',34),(506,'Stara Zagora',34),(507,'Targovishte',34),(508,'Varna',34),(509,'Veliko Tarnovo',34),(510,'Vidin',34),(511,'Vraca',34),(512,'Yablaniza',34),(513,'Bale',35),(514,'Bam',35),(515,'Bazega',35),(516,'Bougouriba',35),(517,'Boulgou',35),(518,'Boulkiemde',35),(519,'Comoe',35),(520,'Ganzourgou',35),(521,'Gnagna',35),(522,'Gourma',35),(523,'Houet',35),(524,'Ioba',35),(525,'Kadiogo',35),(526,'Kenedougou',35),(527,'Komandjari',35),(528,'Kompienga',35),(529,'Kossi',35),(530,'Kouritenga',35),(531,'Kourweogo',35),(532,'Leraba',35),(533,'Mouhoun',35),(534,'Nahouri',35),(535,'Namentenga',35),(536,'Noumbiel',35),(537,'Oubritenga',35),(538,'Oudalan',35),(539,'Passore',35),(540,'Poni',35),(541,'Sanguie',35),(542,'Sanmatenga',35),(543,'Seno',35),(544,'Sissili',35),(545,'Soum',35),(546,'Sourou',35),(547,'Tapoa',35),(548,'Tuy',35),(549,'Yatenga',35),(550,'Zondoma',35),(551,'Zoundweogo',35),(552,'Bubanza',36),(553,'Bujumbura',36),(554,'Bururi',36),(555,'Cankuzo',36),(556,'Cibitoke',36),(557,'Gitega',36),(558,'Karuzi',36),(559,'Kayanza',36),(560,'Kirundo',36),(561,'Makamba',36),(562,'Muramvya',36),(563,'Muyinga',36),(564,'Ngozi',36),(565,'Rutana',36),(566,'Ruyigi',36),(567,'Banteay Mean Chey',37),(568,'Bat Dambang',37),(569,'Kampong Cham',37),(570,'Kampong Chhnang',37),(571,'Kampong Spoeu',37),(572,'Kampong Thum',37),(573,'Kampot',37),(574,'Kandal',37),(575,'Kaoh Kong',37),(576,'Kracheh',37),(577,'Krong Kaeb',37),(578,'Krong Pailin',37),(579,'Krong Preah Sihanouk',37),(580,'Mondol Kiri',37),(581,'Otdar Mean Chey',37),(582,'Phnum Penh',37),(583,'Pousat',37),(584,'Preah Vihear',37),(585,'Prey Veaeng',37),(586,'Rotanak Kiri',37),(587,'Siem Reab',37),(588,'Stueng Traeng',37),(589,'Svay Rieng',37),(590,'Takaev',37),(591,'Adamaoua',38),(592,'Centre',38),(593,'Est',38),(594,'Littoral',38),(595,'Nord',38),(596,'Nord Extreme',38),(597,'Nordouest',38),(598,'Ouest',38),(599,'Sud',38),(600,'Sudouest',38),(601,'Alberta',39),(602,'British Columbia',39),(603,'Manitoba',39),(604,'New Brunswick',39),(605,'Newfoundland and Labrador',39),(606,'Northwest Territories',39),(607,'Nova Scotia',39),(608,'Nunavut',39),(609,'Ontario',39),(610,'Prince Edward Island',39),(611,'Quebec',39),(612,'Saskatchewan',39),(613,'Yukon',39),(614,'Boavista',40),(615,'Brava',40),(616,'Fogo',40),(617,'Maio',40),(618,'Sal',40),(619,'Santo Antao',40),(620,'Sao Nicolau',40),(621,'Sao Tiago',40),(622,'Sao Vicente',40),(623,'Grand Cayman',41),(624,'Bamingui-Bangoran',42),(625,'Bangui',42),(626,'Basse-Kotto',42),(627,'Haut-Mbomou',42),(628,'Haute-Kotto',42),(629,'Kemo',42),(630,'Lobaye',42),(631,'Mambere-Kadei',42),(632,'Mbomou',42),(633,'Nana-Gribizi',42),(634,'Nana-Mambere',42),(635,'Ombella Mpoko',42),(636,'Ouaka',42),(637,'Ouham',42),(638,'Ouham-Pende',42),(639,'Sangha-Mbaere',42),(640,'Vakaga',42),(641,'Batha',43),(642,'Biltine',43),(643,'Bourkou-Ennedi-Tibesti',43),(644,'Chari-Baguirmi',43),(645,'Guera',43),(646,'Kanem',43),(647,'Lac',43),(648,'Logone Occidental',43),(649,'Logone Oriental',43),(650,'Mayo-Kebbi',43),(651,'Moyen-Chari',43),(652,'Ouaddai',43),(653,'Salamat',43),(654,'Tandjile',43),(655,'Aisen',44),(656,'Antofagasta',44),(657,'Araucania',44),(658,'Atacama',44),(659,'Bio Bio',44),(660,'Coquimbo',44),(661,'Libertador General Bernardo O\\\'',44),(662,'Los Lagos',44),(663,'Magellanes',44),(664,'Maule',44),(665,'Metropolitana',44),(666,'Metropolitana de Santiago',44),(667,'Tarapaca',44),(668,'Valparaiso',44),(669,'Anhui',45),(670,'Anhui Province',45),(671,'Anhui Sheng',45),(672,'Aomen',45),(673,'Beijing',45),(674,'Beijing Shi',45),(675,'Chongqing',45),(676,'Fujian',45),(677,'Fujian Sheng',45),(678,'Gansu',45),(679,'Guangdong',45),(680,'Guangdong Sheng',45),(681,'Guangxi',45),(682,'Guizhou',45),(683,'Hainan',45),(684,'Hebei',45),(685,'Heilongjiang',45),(686,'Henan',45),(687,'Hubei',45),(688,'Hunan',45),(689,'Jiangsu',45),(690,'Jiangsu Sheng',45),(691,'Jiangxi',45),(692,'Jilin',45),(693,'Liaoning',45),(694,'Liaoning Sheng',45),(695,'Nei Monggol',45),(696,'Ningxia Hui',45),(697,'Qinghai',45),(698,'Shaanxi',45),(699,'Shandong',45),(700,'Shandong Sheng',45),(701,'Shanghai',45),(702,'Shanxi',45),(703,'Sichuan',45),(704,'Tianjin',45),(705,'Xianggang',45),(706,'Xinjiang',45),(707,'Xizang',45),(708,'Yunnan',45),(709,'Zhejiang',45),(710,'Zhejiang Sheng',45),(711,'Christmas Island',46),(712,'Cocos (Keeling) Islands',47),(713,'Amazonas',48),(714,'Antioquia',48),(715,'Arauca',48),(716,'Atlantico',48),(717,'Bogota',48),(718,'Bolivar',48),(719,'Boyaca',48),(720,'Caldas',48),(721,'Caqueta',48),(722,'Casanare',48),(723,'Cauca',48),(724,'Cesar',48),(725,'Choco',48),(726,'Cordoba',48),(727,'Cundinamarca',48),(728,'Guainia',48),(729,'Guaviare',48),(730,'Huila',48),(731,'La Guajira',48),(732,'Magdalena',48),(733,'Meta',48),(734,'Narino',48),(735,'Norte de Santander',48),(736,'Putumayo',48),(737,'Quindio',48),(738,'Risaralda',48),(739,'San Andres y Providencia',48),(740,'Santander',48),(741,'Sucre',48),(742,'Tolima',48),(743,'Valle del Cauca',48),(744,'Vaupes',48),(745,'Vichada',48),(746,'Mwali',49),(747,'Njazidja',49),(748,'Nzwani',49),(749,'Bouenza',50),(750,'Brazzaville',50),(751,'Cuvette',50),(752,'Kouilou',50),(753,'Lekoumou',50),(754,'Likouala',50),(755,'Niari',50),(756,'Plateaux',50),(757,'Pool',50),(758,'Sangha',50),(759,'Aitutaki',52),(760,'Atiu',52),(761,'Mangaia',52),(762,'Manihiki',52),(763,'Mauke',52),(764,'Mitiaro',52),(765,'Nassau',52),(766,'Pukapuka',52),(767,'Rakahanga',52),(768,'Rarotonga',52),(769,'Tongareva',52),(770,'Alajuela',53),(771,'Cartago',53),(772,'Guanacaste',53),(773,'Heredia',53),(774,'Limon',53),(775,'Puntarenas',53),(776,'San Jose',53),(777,'Camaguey',56),(778,'Ciego de Avila',56),(779,'Cienfuegos',56),(780,'Ciudad de la Habana',56),(781,'Granma',56),(782,'Guantanamo',56),(783,'Habana',56),(784,'Holguin',56),(785,'Isla de la Juventud',56),(786,'La Habana',56),(787,'Las Tunas',56),(788,'Matanzas',56),(789,'Pinar del Rio',56),(790,'Sancti Spiritus',56),(791,'Santiago de Cuba',56),(792,'Villa Clara',56),(793,'Government controlled area',57),(794,'Limassol',57),(795,'Nicosia District',57),(796,'Paphos',57),(797,'Turkish controlled area',57),(798,'Central Bohemian',58),(799,'Frycovice',58),(800,'Jihocesky Kraj',58),(801,'Jihochesky',58),(802,'Jihomoravsky',58),(803,'Karlovarsky',58),(804,'Klecany',58),(805,'Kralovehradecky',58),(806,'Liberecky',58),(807,'Lipov',58),(808,'Moravskoslezsky',58),(809,'Olomoucky',58),(810,'Olomoucky Kraj',58),(811,'Pardubicky',58),(812,'Plzensky',58),(813,'Praha',58),(814,'Rajhrad',58),(815,'Smirice',58),(816,'South Moravian',58),(817,'Straz nad Nisou',58),(818,'Stredochesky',58),(819,'Unicov',58),(820,'Ustecky',58),(821,'Valletta',58),(822,'Velesin',58),(823,'Vysochina',58),(824,'Zlinsky',58),(825,'Arhus',59),(826,'Bornholm',59),(827,'Frederiksborg',59),(828,'Fyn',59),(829,'Hovedstaden',59),(830,'Kobenhavn',59),(831,'Kobenhavns Amt',59),(832,'Kobenhavns Kommune',59),(833,'Nordjylland',59),(834,'Ribe',59),(835,'Ringkobing',59),(836,'Roervig',59),(837,'Roskilde',59),(838,'Roslev',59),(839,'Sjaelland',59),(840,'Soeborg',59),(841,'Sonderjylland',59),(842,'Storstrom',59),(843,'Syddanmark',59),(844,'Toelloese',59),(845,'Vejle',59),(846,'Vestsjalland',59),(847,'Viborg',59),(848,'\\\'Ali Sabih',60),(849,'Dikhil',60),(850,'Jibuti',60),(851,'Tajurah',60),(852,'Ubuk',60),(853,'Saint Andrew',61),(854,'Saint David',61),(855,'Saint George',61),(856,'Saint John',61),(857,'Saint Joseph',61),(858,'Saint Luke',61),(859,'Saint Mark',61),(860,'Saint Patrick',61),(861,'Saint Paul',61),(862,'Saint Peter',61),(863,'Azua',62),(864,'Bahoruco',62),(865,'Barahona',62),(866,'Dajabon',62),(867,'Distrito Nacional',62),(868,'Duarte',62),(869,'El Seybo',62),(870,'Elias Pina',62),(871,'Espaillat',62),(872,'Hato Mayor',62),(873,'Independencia',62),(874,'La Altagracia',62),(875,'La Romana',62),(876,'La Vega',62),(877,'Maria Trinidad Sanchez',62),(878,'Monsenor Nouel',62),(879,'Monte Cristi',62),(880,'Monte Plata',62),(881,'Pedernales',62),(882,'Peravia',62),(883,'Puerto Plata',62),(884,'Salcedo',62),(885,'Samana',62),(886,'San Cristobal',62),(887,'San Juan',62),(888,'San Pedro de Macoris',62),(889,'Sanchez Ramirez',62),(890,'Santiago',62),(891,'Santiago Rodriguez',62),(892,'Valverde',62),(893,'Aileu',63),(894,'Ainaro',63),(895,'Ambeno',63),(896,'Baucau',63),(897,'Bobonaro',63),(898,'Cova Lima',63),(899,'Dili',63),(900,'Ermera',63),(901,'Lautem',63),(902,'Liquica',63),(903,'Manatuto',63),(904,'Manufahi',63),(905,'Viqueque',63),(906,'Azuay',64),(907,'Bolivar',64),(908,'Canar',64),(909,'Carchi',64),(910,'Chimborazo',64),(911,'Cotopaxi',64),(912,'El Oro',64),(913,'Esmeraldas',64),(914,'Galapagos',64),(915,'Guayas',64),(916,'Imbabura',64),(917,'Loja',64),(918,'Los Rios',64),(919,'Manabi',64),(920,'Morona Santiago',64),(921,'Napo',64),(922,'Orellana',64),(923,'Pastaza',64),(924,'Pichincha',64),(925,'Sucumbios',64),(926,'Tungurahua',64),(927,'Zamora Chinchipe',64),(928,'Aswan',65),(929,'Asyut',65),(930,'Bani Suwayf',65),(931,'Bur Sa\\\'id',65),(932,'Cairo',65),(933,'Dumyat',65),(934,'Kafr-ash-Shaykh',65),(935,'Matruh',65),(936,'Muhafazat ad Daqahliyah',65),(937,'Muhafazat al Fayyum',65),(938,'Muhafazat al Gharbiyah',65),(939,'Muhafazat al Iskandariyah',65),(940,'Muhafazat al Qahirah',65),(941,'Qina',65),(942,'Sawhaj',65),(943,'Sina al-Janubiyah',65),(944,'Sina ash-Shamaliyah',65),(945,'ad-Daqahliyah',65),(946,'al-Bahr-al-Ahmar',65),(947,'al-Buhayrah',65),(948,'al-Fayyum',65),(949,'al-Gharbiyah',65),(950,'al-Iskandariyah',65),(951,'al-Ismailiyah',65),(952,'al-Jizah',65),(953,'al-Minufiyah',65),(954,'al-Minya',65),(955,'al-Qahira',65),(956,'al-Qalyubiyah',65),(957,'al-Uqsur',65),(958,'al-Wadi al-Jadid',65),(959,'as-Suways',65),(960,'ash-Sharqiyah',65),(961,'Ahuachapan',66),(962,'Cabanas',66),(963,'Chalatenango',66),(964,'Cuscatlan',66),(965,'La Libertad',66),(966,'La Paz',66),(967,'La Union',66),(968,'Morazan',66),(969,'San Miguel',66),(970,'San Salvador',66),(971,'San Vicente',66),(972,'Santa Ana',66),(973,'Sonsonate',66),(974,'Usulutan',66),(975,'Annobon',67),(976,'Bioko Norte',67),(977,'Bioko Sur',67),(978,'Centro Sur',67),(979,'Kie-Ntem',67),(980,'Litoral',67),(981,'Wele-Nzas',67),(982,'Anseba',68),(983,'Debub',68),(984,'Debub-Keih-Bahri',68),(985,'Gash-Barka',68),(986,'Maekel',68),(987,'Semien-Keih-Bahri',68),(988,'Harju',69),(989,'Hiiu',69),(990,'Ida-Viru',69),(991,'Jarva',69),(992,'Jogeva',69),(993,'Laane',69),(994,'Laane-Viru',69),(995,'Parnu',69),(996,'Polva',69),(997,'Rapla',69),(998,'Saare',69),(999,'Tartu',69),(1000,'Valga',69),(1001,'Viljandi',69),(1002,'Voru',69),(1003,'Addis Abeba',70),(1004,'Afar',70),(1005,'Amhara',70),(1006,'Benishangul',70),(1007,'Diredawa',70),(1008,'Gambella',70),(1009,'Harar',70),(1010,'Jigjiga',70),(1011,'Mekele',70),(1012,'Oromia',70),(1013,'Somali',70),(1014,'Southern',70),(1015,'Tigray',70),(1016,'Falkland Islands',71),(1017,'South Georgia',71),(1018,'Klaksvik',72),(1019,'Nor ara Eysturoy',72),(1020,'Nor oy',72),(1021,'Sandoy',72),(1022,'Streymoy',72),(1023,'Su uroy',72),(1024,'Sy ra Eysturoy',72),(1025,'Torshavn',72),(1026,'Vaga',72),(1027,'Central',73),(1028,'Eastern',73),(1029,'Northern',73),(1030,'South Pacific',73),(1031,'Western',73),(1032,'Ahvenanmaa',74),(1033,'Etela-Karjala',74),(1034,'Etela-Pohjanmaa',74),(1035,'Etela-Savo',74),(1036,'Etela-Suomen Laani',74),(1037,'Ita-Suomen Laani',74),(1038,'Ita-Uusimaa',74),(1039,'Kainuu',74),(1040,'Kanta-Hame',74),(1041,'Keski-Pohjanmaa',74),(1042,'Keski-Suomi',74),(1043,'Kymenlaakso',74),(1044,'Lansi-Suomen Laani',74),(1045,'Lappi',74),(1046,'Northern Savonia',74),(1047,'Ostrobothnia',74),(1048,'Oulun Laani',74),(1049,'Paijat-Hame',74),(1050,'Pirkanmaa',74),(1051,'Pohjanmaa',74),(1052,'Pohjois-Karjala',74),(1053,'Pohjois-Pohjanmaa',74),(1054,'Pohjois-Savo',74),(1055,'Saarijarvi',74),(1056,'Satakunta',74),(1057,'Southern Savonia',74),(1058,'Tavastia Proper',74),(1059,'Uleaborgs Lan',74),(1060,'Uusimaa',74),(1061,'Varsinais-Suomi',74),(1062,'Ain',75),(1063,'Aisne',75),(1064,'Albi Le Sequestre',75),(1065,'Allier',75),(1066,'Alpes-Cote dAzur',75),(1067,'Alpes-Maritimes',75),(1068,'Alpes-de-Haute-Provence',75),(1069,'Alsace',75),(1070,'Aquitaine',75),(1071,'Ardeche',75),(1072,'Ardennes',75),(1073,'Ariege',75),(1074,'Aube',75),(1075,'Aude',75),(1076,'Auvergne',75),(1077,'Aveyron',75),(1078,'Bas-Rhin',75),(1079,'Basse-Normandie',75),(1080,'Bouches-du-Rhone',75),(1081,'Bourgogne',75),(1082,'Bretagne',75),(1083,'Brittany',75),(1084,'Burgundy',75),(1085,'Calvados',75),(1086,'Cantal',75),(1087,'Cedex',75),(1088,'Centre',75),(1089,'Charente',75),(1090,'Charente-Maritime',75),(1091,'Cher',75),(1092,'Correze',75),(1093,'Corse-du-Sud',75),(1094,'Cote-d\\\'Or',75),(1095,'Cotes-d\\\'Armor',75),(1096,'Creuse',75),(1097,'Crolles',75),(1098,'Deux-Sevres',75),(1099,'Dordogne',75),(1100,'Doubs',75),(1101,'Drome',75),(1102,'Essonne',75),(1103,'Eure',75),(1104,'Eure-et-Loir',75),(1105,'Feucherolles',75),(1106,'Finistere',75),(1107,'Franche-Comte',75),(1108,'Gard',75),(1109,'Gers',75),(1110,'Gironde',75),(1111,'Haut-Rhin',75),(1112,'Haute-Corse',75),(1113,'Haute-Garonne',75),(1114,'Haute-Loire',75),(1115,'Haute-Marne',75),(1116,'Haute-Saone',75),(1117,'Haute-Savoie',75),(1118,'Haute-Vienne',75),(1119,'Hautes-Alpes',75),(1120,'Hautes-Pyrenees',75),(1121,'Hauts-de-Seine',75),(1122,'Herault',75),(1123,'Ile-de-France',75),(1124,'Ille-et-Vilaine',75),(1125,'Indre',75),(1126,'Indre-et-Loire',75),(1127,'Isere',75),(1128,'Jura',75),(1129,'Klagenfurt',75),(1130,'Landes',75),(1131,'Languedoc-Roussillon',75),(1132,'Larcay',75),(1133,'Le Castellet',75),(1134,'Le Creusot',75),(1135,'Limousin',75),(1136,'Loir-et-Cher',75),(1137,'Loire',75),(1138,'Loire-Atlantique',75),(1139,'Loiret',75),(1140,'Lorraine',75),(1141,'Lot',75),(1142,'Lot-et-Garonne',75),(1143,'Lower Normandy',75),(1144,'Lozere',75),(1145,'Maine-et-Loire',75),(1146,'Manche',75),(1147,'Marne',75),(1148,'Mayenne',75),(1149,'Meurthe-et-Moselle',75),(1150,'Meuse',75),(1151,'Midi-Pyrenees',75),(1152,'Morbihan',75),(1153,'Moselle',75),(1154,'Nievre',75),(1155,'Nord',75),(1156,'Nord-Pas-de-Calais',75),(1157,'Oise',75),(1158,'Orne',75),(1159,'Paris',75),(1160,'Pas-de-Calais',75),(1161,'Pays de la Loire',75),(1162,'Pays-de-la-Loire',75),(1163,'Picardy',75),(1164,'Puy-de-Dome',75),(1165,'Pyrenees-Atlantiques',75),(1166,'Pyrenees-Orientales',75),(1167,'Quelmes',75),(1168,'Rhone',75),(1169,'Rhone-Alpes',75),(1170,'Saint Ouen',75),(1171,'Saint Viatre',75),(1172,'Saone-et-Loire',75),(1173,'Sarthe',75),(1174,'Savoie',75),(1175,'Seine-Maritime',75),(1176,'Seine-Saint-Denis',75),(1177,'Seine-et-Marne',75),(1178,'Somme',75),(1179,'Sophia Antipolis',75),(1180,'Souvans',75),(1181,'Tarn',75),(1182,'Tarn-et-Garonne',75),(1183,'Territoire de Belfort',75),(1184,'Treignac',75),(1185,'Upper Normandy',75),(1186,'Val-d\\\'Oise',75),(1187,'Val-de-Marne',75),(1188,'Var',75),(1189,'Vaucluse',75),(1190,'Vellise',75),(1191,'Vendee',75),(1192,'Vienne',75),(1193,'Vosges',75),(1194,'Yonne',75),(1195,'Yvelines',75),(1196,'Cayenne',76),(1197,'Saint-Laurent-du-Maroni',76),(1198,'Iles du Vent',77),(1199,'Iles sous le Vent',77),(1200,'Marquesas',77),(1201,'Tuamotu',77),(1202,'Tubuai',77),(1203,'Amsterdam',78),(1204,'Crozet Islands',78),(1205,'Kerguelen',78),(1206,'Estuaire',79),(1207,'Haut-Ogooue',79),(1208,'Moyen-Ogooue',79),(1209,'Ngounie',79),(1210,'Nyanga',79),(1211,'Ogooue-Ivindo',79),(1212,'Ogooue-Lolo',79),(1213,'Ogooue-Maritime',79),(1214,'Woleu-Ntem',79),(1215,'Banjul',80),(1216,'Basse',80),(1217,'Brikama',80),(1218,'Janjanbureh',80),(1219,'Kanifing',80),(1220,'Kerewan',80),(1221,'Kuntaur',80),(1222,'Mansakonko',80),(1223,'Abhasia',81),(1224,'Ajaria',81),(1225,'Guria',81),(1226,'Imereti',81),(1227,'Kaheti',81),(1228,'Kvemo Kartli',81),(1229,'Mcheta-Mtianeti',81),(1230,'Racha',81),(1231,'Samagrelo-Zemo Svaneti',81),(1232,'Samche-Zhavaheti',81),(1233,'Shida Kartli',81),(1234,'Tbilisi',81),(1235,'Auvergne',82),(1236,'Baden-Wurttemberg',82),(1237,'Bavaria',82),(1238,'Bayern',82),(1239,'Beilstein Wurtt',82),(1240,'Berlin',82),(1241,'Brandenburg',82),(1242,'Bremen',82),(1243,'Dreisbach',82),(1244,'Freistaat Bayern',82),(1245,'Hamburg',82),(1246,'Hannover',82),(1247,'Heroldstatt',82),(1248,'Hessen',82),(1249,'Kortenberg',82),(1250,'Laasdorf',82),(1251,'Land Baden-Wurttemberg',82),(1252,'Land Bayern',82),(1253,'Land Brandenburg',82),(1254,'Land Hessen',82),(1255,'Land Mecklenburg-Vorpommern',82),(1256,'Land Nordrhein-Westfalen',82),(1257,'Land Rheinland-Pfalz',82),(1258,'Land Sachsen',82),(1259,'Land Sachsen-Anhalt',82),(1260,'Land Thuringen',82),(1261,'Lower Saxony',82),(1262,'Mecklenburg-Vorpommern',82),(1263,'Mulfingen',82),(1264,'Munich',82),(1265,'Neubeuern',82),(1266,'Niedersachsen',82),(1267,'Noord-Holland',82),(1268,'Nordrhein-Westfalen',82),(1269,'North Rhine-Westphalia',82),(1270,'Osterode',82),(1271,'Rheinland-Pfalz',82),(1272,'Rhineland-Palatinate',82),(1273,'Saarland',82),(1274,'Sachsen',82),(1275,'Sachsen-Anhalt',82),(1276,'Saxony',82),(1277,'Schleswig-Holstein',82),(1278,'Thuringia',82),(1279,'Webling',82),(1280,'Weinstrabe',82),(1281,'schlobborn',82),(1282,'Ashanti',83),(1283,'Brong-Ahafo',83),(1284,'Central',83),(1285,'Eastern',83),(1286,'Greater Accra',83),(1287,'Northern',83),(1288,'Upper East',83),(1289,'Upper West',83),(1290,'Volta',83),(1291,'Western',83),(1292,'Gibraltar',84),(1293,'Acharnes',85),(1294,'Ahaia',85),(1295,'Aitolia kai Akarnania',85),(1296,'Argolis',85),(1297,'Arkadia',85),(1298,'Arta',85),(1299,'Attica',85),(1300,'Attiki',85),(1301,'Ayion Oros',85),(1302,'Crete',85),(1303,'Dodekanisos',85),(1304,'Drama',85),(1305,'Evia',85),(1306,'Evritania',85),(1307,'Evros',85),(1308,'Evvoia',85),(1309,'Florina',85),(1310,'Fokis',85),(1311,'Fthiotis',85),(1312,'Grevena',85),(1313,'Halandri',85),(1314,'Halkidiki',85),(1315,'Hania',85),(1316,'Heraklion',85),(1317,'Hios',85),(1318,'Ilia',85),(1319,'Imathia',85),(1320,'Ioannina',85),(1321,'Iraklion',85),(1322,'Karditsa',85),(1323,'Kastoria',85),(1324,'Kavala',85),(1325,'Kefallinia',85),(1326,'Kerkira',85),(1327,'Kiklades',85),(1328,'Kilkis',85),(1329,'Korinthia',85),(1330,'Kozani',85),(1331,'Lakonia',85),(1332,'Larisa',85),(1333,'Lasithi',85),(1334,'Lesvos',85),(1335,'Levkas',85),(1336,'Magnisia',85),(1337,'Messinia',85),(1338,'Nomos Attikis',85),(1339,'Nomos Zakynthou',85),(1340,'Pella',85),(1341,'Pieria',85),(1342,'Piraios',85),(1343,'Preveza',85),(1344,'Rethimni',85),(1345,'Rodopi',85),(1346,'Samos',85),(1347,'Serrai',85),(1348,'Thesprotia',85),(1349,'Thessaloniki',85),(1350,'Trikala',85),(1351,'Voiotia',85),(1352,'West Greece',85),(1353,'Xanthi',85),(1354,'Zakinthos',85),(1355,'Aasiaat',86),(1356,'Ammassalik',86),(1357,'Illoqqortoormiut',86),(1358,'Ilulissat',86),(1359,'Ivittuut',86),(1360,'Kangaatsiaq',86),(1361,'Maniitsoq',86),(1362,'Nanortalik',86),(1363,'Narsaq',86),(1364,'Nuuk',86),(1365,'Paamiut',86),(1366,'Qaanaaq',86),(1367,'Qaqortoq',86),(1368,'Qasigiannguit',86),(1369,'Qeqertarsuaq',86),(1370,'Sisimiut',86),(1371,'Udenfor kommunal inddeling',86),(1372,'Upernavik',86),(1373,'Uummannaq',86),(1374,'Carriacou-Petite Martinique',87),(1375,'Saint Andrew',87),(1376,'Saint Davids',87),(1377,'Saint George\\\'s',87),(1378,'Saint John',87),(1379,'Saint Mark',87),(1380,'Saint Patrick',87),(1381,'Basse-Terre',88),(1382,'Grande-Terre',88),(1383,'Iles des Saintes',88),(1384,'La Desirade',88),(1385,'Marie-Galante',88),(1386,'Saint Barthelemy',88),(1387,'Saint Martin',88),(1388,'Agana Heights',89),(1389,'Agat',89),(1390,'Barrigada',89),(1391,'Chalan-Pago-Ordot',89),(1392,'Dededo',89),(1393,'Hagatna',89),(1394,'Inarajan',89),(1395,'Mangilao',89),(1396,'Merizo',89),(1397,'Mongmong-Toto-Maite',89),(1398,'Santa Rita',89),(1399,'Sinajana',89),(1400,'Talofofo',89),(1401,'Tamuning',89),(1402,'Yigo',89),(1403,'Yona',89),(1404,'Alta Verapaz',90),(1405,'Baja Verapaz',90),(1406,'Chimaltenango',90),(1407,'Chiquimula',90),(1408,'El Progreso',90),(1409,'Escuintla',90),(1410,'Guatemala',90),(1411,'Huehuetenango',90),(1412,'Izabal',90),(1413,'Jalapa',90),(1414,'Jutiapa',90),(1415,'Peten',90),(1416,'Quezaltenango',90),(1417,'Quiche',90),(1418,'Retalhuleu',90),(1419,'Sacatepequez',90),(1420,'San Marcos',90),(1421,'Santa Rosa',90),(1422,'Solola',90),(1423,'Suchitepequez',90),(1424,'Totonicapan',90),(1425,'Zacapa',90),(1426,'Alderney',91),(1427,'Castel',91),(1428,'Forest',91),(1429,'Saint Andrew',91),(1430,'Saint Martin',91),(1431,'Saint Peter Port',91),(1432,'Saint Pierre du Bois',91),(1433,'Saint Sampson',91),(1434,'Saint Saviour',91),(1435,'Sark',91),(1436,'Torteval',91),(1437,'Vale',91),(1438,'Beyla',92),(1439,'Boffa',92),(1440,'Boke',92),(1441,'Conakry',92),(1442,'Coyah',92),(1443,'Dabola',92),(1444,'Dalaba',92),(1445,'Dinguiraye',92),(1446,'Faranah',92),(1447,'Forecariah',92),(1448,'Fria',92),(1449,'Gaoual',92),(1450,'Gueckedou',92),(1451,'Kankan',92),(1452,'Kerouane',92),(1453,'Kindia',92),(1454,'Kissidougou',92),(1455,'Koubia',92),(1456,'Koundara',92),(1457,'Kouroussa',92),(1458,'Labe',92),(1459,'Lola',92),(1460,'Macenta',92),(1461,'Mali',92),(1462,'Mamou',92),(1463,'Mandiana',92),(1464,'Nzerekore',92),(1465,'Pita',92),(1466,'Siguiri',92),(1467,'Telimele',92),(1468,'Tougue',92),(1469,'Yomou',92),(1470,'Bafata',93),(1471,'Bissau',93),(1472,'Bolama',93),(1473,'Cacheu',93),(1474,'Gabu',93),(1475,'Oio',93),(1476,'Quinara',93),(1477,'Tombali',93),(1478,'Barima-Waini',94),(1479,'Cuyuni-Mazaruni',94),(1480,'Demerara-Mahaica',94),(1481,'East Berbice-Corentyne',94),(1482,'Essequibo Islands-West Demerar',94),(1483,'Mahaica-Berbice',94),(1484,'Pomeroon-Supenaam',94),(1485,'Potaro-Siparuni',94),(1486,'Upper Demerara-Berbice',94),(1487,'Upper Takutu-Upper Essequibo',94),(1488,'Artibonite',95),(1489,'Centre',95),(1490,'Grand\\\'Anse',95),(1491,'Nord',95),(1492,'Nord-Est',95),(1493,'Nord-Ouest',95),(1494,'Ouest',95),(1495,'Sud',95),(1496,'Sud-Est',95),(1497,'Heard and McDonald Islands',96),(1498,'Atlantida',97),(1499,'Choluteca',97),(1500,'Colon',97),(1501,'Comayagua',97),(1502,'Copan',97),(1503,'Cortes',97),(1504,'Distrito Central',97),(1505,'El Paraiso',97),(1506,'Francisco Morazan',97),(1507,'Gracias a Dios',97),(1508,'Intibuca',97),(1509,'Islas de la Bahia',97),(1510,'La Paz',97),(1511,'Lempira',97),(1512,'Ocotepeque',97),(1513,'Olancho',97),(1514,'Santa Barbara',97),(1515,'Valle',97),(1516,'Yoro',97),(1517,'Hong Kong',98),(1518,'Bacs-Kiskun',99),(1519,'Baranya',99),(1520,'Bekes',99),(1521,'Borsod-Abauj-Zemplen',99),(1522,'Budapest',99),(1523,'Csongrad',99),(1524,'Fejer',99),(1525,'Gyor-Moson-Sopron',99),(1526,'Hajdu-Bihar',99),(1527,'Heves',99),(1528,'Jasz-Nagykun-Szolnok',99),(1529,'Komarom-Esztergom',99),(1530,'Nograd',99),(1531,'Pest',99),(1532,'Somogy',99),(1533,'Szabolcs-Szatmar-Bereg',99),(1534,'Tolna',99),(1535,'Vas',99),(1536,'Veszprem',99),(1537,'Zala',99),(1538,'Austurland',100),(1539,'Gullbringusysla',100),(1540,'Hofu borgarsva i',100),(1541,'Nor urland eystra',100),(1542,'Nor urland vestra',100),(1543,'Su urland',100),(1544,'Su urnes',100),(1545,'Vestfir ir',100),(1546,'Vesturland',100),(1547,'Andaman and Nicobar Islands',101),(1548,'Andhra Pradesh',101),(1549,'Arunachal Pradesh',101),(1550,'Assam',101),(1551,'Bihar',101),(1552,'Chandigarh',101),(1553,'Chhattisgarh',101),(1554,'Dadra and Nagar Haveli',101),(1555,'Daman and Diu',101),(1556,'Delhi',101),(1557,'Goa',101),(1558,'Gujarat',101),(1559,'Haryana',101),(1560,'Himachal Pradesh',101),(1561,'Jammu and Kashmir',101),(1562,'Jharkhand',101),(1563,'Karnataka',101),(1564,'Kenmore',101),(1565,'Kerala',101),(1566,'Lakshadweep',101),(1567,'Madhya Pradesh',101),(1568,'Maharashtra',101),(1569,'Manipur',101),(1570,'Meghalaya',101),(1571,'Mizoram',101),(1572,'Nagaland',101),(1573,'Narora',101),(1574,'Natwar',101),(1575,'Odisha',101),(1576,'Paschim Medinipur',101),(1577,'Pondicherry',101),(1578,'Punjab',101),(1579,'Rajasthan',101),(1580,'Sikkim',101),(1581,'Tamil Nadu',101),(1582,'Telangana',101),(1583,'Tripura',101),(1584,'Uttar Pradesh',101),(1585,'Uttarakhand',101),(1586,'Vaishali',101),(1587,'West Bengal',101),(1588,'Aceh',102),(1589,'Bali',102),(1590,'Bangka-Belitung',102),(1591,'Banten',102),(1592,'Bengkulu',102),(1593,'Gandaria',102),(1594,'Gorontalo',102),(1595,'Jakarta',102),(1596,'Jambi',102),(1597,'Jawa Barat',102),(1598,'Jawa Tengah',102),(1599,'Jawa Timur',102),(1600,'Kalimantan Barat',102),(1601,'Kalimantan Selatan',102),(1602,'Kalimantan Tengah',102),(1603,'Kalimantan Timur',102),(1604,'Kendal',102),(1605,'Lampung',102),(1606,'Maluku',102),(1607,'Maluku Utara',102),(1608,'Nusa Tenggara Barat',102),(1609,'Nusa Tenggara Timur',102),(1610,'Papua',102),(1611,'Riau',102),(1612,'Riau Kepulauan',102),(1613,'Solo',102),(1614,'Sulawesi Selatan',102),(1615,'Sulawesi Tengah',102),(1616,'Sulawesi Tenggara',102),(1617,'Sulawesi Utara',102),(1618,'Sumatera Barat',102),(1619,'Sumatera Selatan',102),(1620,'Sumatera Utara',102),(1621,'Yogyakarta',102),(1622,'Ardabil',103),(1623,'Azarbayjan-e Bakhtari',103),(1624,'Azarbayjan-e Khavari',103),(1625,'Bushehr',103),(1626,'Chahar Mahal-e Bakhtiari',103),(1627,'Esfahan',103),(1628,'Fars',103),(1629,'Gilan',103),(1630,'Golestan',103),(1631,'Hamadan',103),(1632,'Hormozgan',103),(1633,'Ilam',103),(1634,'Kerman',103),(1635,'Kermanshah',103),(1636,'Khorasan',103),(1637,'Khuzestan',103),(1638,'Kohgiluyeh-e Boyerahmad',103),(1639,'Kordestan',103),(1640,'Lorestan',103),(1641,'Markazi',103),(1642,'Mazandaran',103),(1643,'Ostan-e Esfahan',103),(1644,'Qazvin',103),(1645,'Qom',103),(1646,'Semnan',103),(1647,'Sistan-e Baluchestan',103),(1648,'Tehran',103),(1649,'Yazd',103),(1650,'Zanjan',103),(1651,'Babil',104),(1652,'Baghdad',104),(1653,'Dahuk',104),(1654,'Dhi Qar',104),(1655,'Diyala',104),(1656,'Erbil',104),(1657,'Irbil',104),(1658,'Karbala',104),(1659,'Kurdistan',104),(1660,'Maysan',104),(1661,'Ninawa',104),(1662,'Salah-ad-Din',104),(1663,'Wasit',104),(1664,'al-Anbar',104),(1665,'al-Basrah',104),(1666,'al-Muthanna',104),(1667,'al-Qadisiyah',104),(1668,'an-Najaf',104),(1669,'as-Sulaymaniyah',104),(1670,'at-Ta\\\'mim',104),(1671,'Armagh',105),(1672,'Carlow',105),(1673,'Cavan',105),(1674,'Clare',105),(1675,'Cork',105),(1676,'Donegal',105),(1677,'Dublin',105),(1678,'Galway',105),(1679,'Kerry',105),(1680,'Kildare',105),(1681,'Kilkenny',105),(1682,'Laois',105),(1683,'Leinster',105),(1684,'Leitrim',105),(1685,'Limerick',105),(1686,'Loch Garman',105),(1687,'Longford',105),(1688,'Louth',105),(1689,'Mayo',105),(1690,'Meath',105),(1691,'Monaghan',105),(1692,'Offaly',105),(1693,'Roscommon',105),(1694,'Sligo',105),(1695,'Tipperary North Riding',105),(1696,'Tipperary South Riding',105),(1697,'Ulster',105),(1698,'Waterford',105),(1699,'Westmeath',105),(1700,'Wexford',105),(1701,'Wicklow',105),(1702,'Beit Hanania',106),(1703,'Ben Gurion Airport',106),(1704,'Bethlehem',106),(1705,'Caesarea',106),(1706,'Centre',106),(1707,'Gaza',106),(1708,'Hadaron',106),(1709,'Haifa District',106),(1710,'Hamerkaz',106),(1711,'Hazafon',106),(1712,'Hebron',106),(1713,'Jaffa',106),(1714,'Jerusalem',106),(1715,'Khefa',106),(1716,'Kiryat Yam',106),(1717,'Lower Galilee',106),(1718,'Qalqilya',106),(1719,'Talme Elazar',106),(1720,'Tel Aviv',106),(1721,'Tsafon',106),(1722,'Umm El Fahem',106),(1723,'Yerushalayim',106),(1724,'Abruzzi',107),(1725,'Abruzzo',107),(1726,'Agrigento',107),(1727,'Alessandria',107),(1728,'Ancona',107),(1729,'Arezzo',107),(1730,'Ascoli Piceno',107),(1731,'Asti',107),(1732,'Avellino',107),(1733,'Bari',107),(1734,'Basilicata',107),(1735,'Belluno',107),(1736,'Benevento',107),(1737,'Bergamo',107),(1738,'Biella',107),(1739,'Bologna',107),(1740,'Bolzano',107),(1741,'Brescia',107),(1742,'Brindisi',107),(1743,'Calabria',107),(1744,'Campania',107),(1745,'Cartoceto',107),(1746,'Caserta',107),(1747,'Catania',107),(1748,'Chieti',107),(1749,'Como',107),(1750,'Cosenza',107),(1751,'Cremona',107),(1752,'Cuneo',107),(1753,'Emilia-Romagna',107),(1754,'Ferrara',107),(1755,'Firenze',107),(1756,'Florence',107),(1757,'Forli-Cesena ',107),(1758,'Friuli-Venezia Giulia',107),(1759,'Frosinone',107),(1760,'Genoa',107),(1761,'Gorizia',107),(1762,'L\\\'Aquila',107),(1763,'Lazio',107),(1764,'Lecce',107),(1765,'Lecco',107),(1766,'Lecco Province',107),(1767,'Liguria',107),(1768,'Lodi',107),(1769,'Lombardia',107),(1770,'Lombardy',107),(1771,'Macerata',107),(1772,'Mantova',107),(1773,'Marche',107),(1774,'Messina',107),(1775,'Milan',107),(1776,'Modena',107),(1777,'Molise',107),(1778,'Molteno',107),(1779,'Montenegro',107),(1780,'Monza and Brianza',107),(1781,'Naples',107),(1782,'Novara',107),(1783,'Padova',107),(1784,'Parma',107),(1785,'Pavia',107),(1786,'Perugia',107),(1787,'Pesaro-Urbino',107),(1788,'Piacenza',107),(1789,'Piedmont',107),(1790,'Piemonte',107),(1791,'Pisa',107),(1792,'Pordenone',107),(1793,'Potenza',107),(1794,'Puglia',107),(1795,'Reggio Emilia',107),(1796,'Rimini',107),(1797,'Roma',107),(1798,'Salerno',107),(1799,'Sardegna',107),(1800,'Sassari',107),(1801,'Savona',107),(1802,'Sicilia',107),(1803,'Siena',107),(1804,'Sondrio',107),(1805,'South Tyrol',107),(1806,'Taranto',107),(1807,'Teramo',107),(1808,'Torino',107),(1809,'Toscana',107),(1810,'Trapani',107),(1811,'Trentino-Alto Adige',107),(1812,'Trento',107),(1813,'Treviso',107),(1814,'Udine',107),(1815,'Umbria',107),(1816,'Valle d\\\'Aosta',107),(1817,'Varese',107),(1818,'Veneto',107),(1819,'Venezia',107),(1820,'Verbano-Cusio-Ossola',107),(1821,'Vercelli',107),(1822,'Verona',107),(1823,'Vicenza',107),(1824,'Viterbo',107),(1825,'Buxoro Viloyati',108),(1826,'Clarendon',108),(1827,'Hanover',108),(1828,'Kingston',108),(1829,'Manchester',108),(1830,'Portland',108),(1831,'Saint Andrews',108),(1832,'Saint Ann',108),(1833,'Saint Catherine',108),(1834,'Saint Elizabeth',108),(1835,'Saint James',108),(1836,'Saint Mary',108),(1837,'Saint Thomas',108),(1838,'Trelawney',108),(1839,'Westmoreland',108),(1840,'Aichi',109),(1841,'Akita',109),(1842,'Aomori',109),(1843,'Chiba',109),(1844,'Ehime',109),(1845,'Fukui',109),(1846,'Fukuoka',109),(1847,'Fukushima',109),(1848,'Gifu',109),(1849,'Gumma',109),(1850,'Hiroshima',109),(1851,'Hokkaido',109),(1852,'Hyogo',109),(1853,'Ibaraki',109),(1854,'Ishikawa',109),(1855,'Iwate',109),(1856,'Kagawa',109),(1857,'Kagoshima',109),(1858,'Kanagawa',109),(1859,'Kanto',109),(1860,'Kochi',109),(1861,'Kumamoto',109),(1862,'Kyoto',109),(1863,'Mie',109),(1864,'Miyagi',109),(1865,'Miyazaki',109),(1866,'Nagano',109),(1867,'Nagasaki',109),(1868,'Nara',109),(1869,'Niigata',109),(1870,'Oita',109),(1871,'Okayama',109),(1872,'Okinawa',109),(1873,'Osaka',109),(1874,'Saga',109),(1875,'Saitama',109),(1876,'Shiga',109),(1877,'Shimane',109),(1878,'Shizuoka',109),(1879,'Tochigi',109),(1880,'Tokushima',109),(1881,'Tokyo',109),(1882,'Tottori',109),(1883,'Toyama',109),(1884,'Wakayama',109),(1885,'Yamagata',109),(1886,'Yamaguchi',109),(1887,'Yamanashi',109),(1888,'Grouville',110),(1889,'Saint Brelade',110),(1890,'Saint Clement',110),(1891,'Saint Helier',110),(1892,'Saint John',110),(1893,'Saint Lawrence',110),(1894,'Saint Martin',110),(1895,'Saint Mary',110),(1896,'Saint Peter',110),(1897,'Saint Saviour',110),(1898,'Trinity',110),(1899,'\\\'Ajlun',111),(1900,'Amman',111),(1901,'Irbid',111),(1902,'Jarash',111),(1903,'Ma\\\'an',111),(1904,'Madaba',111),(1905,'al-\\\'Aqabah',111),(1906,'al-Balqa\\\'',111),(1907,'al-Karak',111),(1908,'al-Mafraq',111),(1909,'at-Tafilah',111),(1910,'az-Zarqa\\\'',111),(1911,'Akmecet',112),(1912,'Akmola',112),(1913,'Aktobe',112),(1914,'Almati',112),(1915,'Atirau',112),(1916,'Batis Kazakstan',112),(1917,'Burlinsky Region',112),(1918,'Karagandi',112),(1919,'Kostanay',112),(1920,'Mankistau',112),(1921,'Ontustik Kazakstan',112),(1922,'Pavlodar',112),(1923,'Sigis Kazakstan',112),(1924,'Soltustik Kazakstan',112),(1925,'Taraz',112),(1926,'Central',113),(1927,'Coast',113),(1928,'Eastern',113),(1929,'Nairobi',113),(1930,'North Eastern',113),(1931,'Nyanza',113),(1932,'Rift Valley',113),(1933,'Western',113),(1934,'Abaiang',114),(1935,'Abemana',114),(1936,'Aranuka',114),(1937,'Arorae',114),(1938,'Banaba',114),(1939,'Beru',114),(1940,'Butaritari',114),(1941,'Kiritimati',114),(1942,'Kuria',114),(1943,'Maiana',114),(1944,'Makin',114),(1945,'Marakei',114),(1946,'Nikunau',114),(1947,'Nonouti',114),(1948,'Onotoa',114),(1949,'Phoenix Islands',114),(1950,'Tabiteuea North',114),(1951,'Tabiteuea South',114),(1952,'Tabuaeran',114),(1953,'Tamana',114),(1954,'Tarawa North',114),(1955,'Tarawa South',114),(1956,'Teraina',114),(1957,'Busan',116),(1958,'Cheju',116),(1959,'Chollabuk',116),(1960,'Chollanam',116),(1961,'Chungbuk',116),(1962,'Chungcheongbuk',116),(1963,'Chungcheongnam',116),(1964,'Chungnam',116),(1965,'Daegu',116),(1966,'Gangwon-do',116),(1967,'Goyang-si',116),(1968,'Gyeonggi-do',116),(1969,'Gyeongsang ',116),(1970,'Gyeongsangnam-do',116),(1971,'Incheon',116),(1972,'Jeju-Si',116),(1973,'Jeonbuk',116),(1974,'Kangweon',116),(1975,'Kwangju',116),(1976,'Kyeonggi',116),(1977,'Kyeongsangbuk',116),(1978,'Kyeongsangnam',116),(1979,'Kyonggi-do',116),(1980,'Kyungbuk-Do',116),(1981,'Kyunggi-Do',116),(1982,'Pusan',116),(1983,'Seoul',116),(1984,'Sudogwon',116),(1985,'Taegu',116),(1986,'Taejeon',116),(1987,'Taejon-gwangyoksi',116),(1988,'Ulsan',116),(1989,'Wonju',116),(1990,'gwangyoksi',116),(1991,'Al Asimah',117),(1992,'Hawalli',117),(1993,'Mishref',117),(1994,'Qadesiya',117),(1995,'Safat',117),(1996,'Salmiya',117),(1997,'al-Ahmadi',117),(1998,'al-Farwaniyah',117),(1999,'al-Jahra',117),(2000,'al-Kuwayt',117),(2001,'Batken',118),(2002,'Bishkek',118),(2003,'Chui',118),(2004,'Issyk-Kul',118),(2005,'Jalal-Abad',118),(2006,'Naryn',118),(2007,'Osh',118),(2008,'Talas',118),(2009,'Attopu',119),(2010,'Bokeo',119),(2011,'Bolikhamsay',119),(2012,'Champasak',119),(2013,'Houaphanh',119),(2014,'Khammouane',119),(2015,'Luang Nam Tha',119),(2016,'Luang Prabang',119),(2017,'Oudomxay',119),(2018,'Phongsaly',119),(2019,'Saravan',119),(2020,'Savannakhet',119),(2021,'Sekong',119),(2022,'Viangchan Prefecture',119),(2023,'Viangchan Province',119),(2024,'Xaignabury',119),(2025,'Xiang Khuang',119),(2026,'Aizkraukles',120),(2027,'Aluksnes',120),(2028,'Balvu',120),(2029,'Bauskas',120),(2030,'Cesu',120),(2031,'Daugavpils',120),(2032,'Daugavpils City',120),(2033,'Dobeles',120),(2034,'Gulbenes',120),(2035,'Jekabspils',120),(2036,'Jelgava',120),(2037,'Jelgavas',120),(2038,'Jurmala City',120),(2039,'Kraslavas',120),(2040,'Kuldigas',120),(2041,'Liepaja',120),(2042,'Liepajas',120),(2043,'Limbazhu',120),(2044,'Ludzas',120),(2045,'Madonas',120),(2046,'Ogres',120),(2047,'Preilu',120),(2048,'Rezekne',120),(2049,'Rezeknes',120),(2050,'Riga',120),(2051,'Rigas',120),(2052,'Saldus',120),(2053,'Talsu',120),(2054,'Tukuma',120),(2055,'Valkas',120),(2056,'Valmieras',120),(2057,'Ventspils',120),(2058,'Ventspils City',120),(2059,'Beirut',121),(2060,'Jabal Lubnan',121),(2061,'Mohafazat Liban-Nord',121),(2062,'Mohafazat Mont-Liban',121),(2063,'Sidon',121),(2064,'al-Biqa',121),(2065,'al-Janub',121),(2066,'an-Nabatiyah',121),(2067,'ash-Shamal',121),(2068,'Berea',122),(2069,'Butha-Buthe',122),(2070,'Leribe',122),(2071,'Mafeteng',122),(2072,'Maseru',122),(2073,'Mohale\\\'s Hoek',122),(2074,'Mokhotlong',122),(2075,'Qacha\\\'s Nek',122),(2076,'Quthing',122),(2077,'Thaba-Tseka',122),(2078,'Bomi',123),(2079,'Bong',123),(2080,'Grand Bassa',123),(2081,'Grand Cape Mount',123),(2082,'Grand Gedeh',123),(2083,'Loffa',123),(2084,'Margibi',123),(2085,'Maryland and Grand Kru',123),(2086,'Montserrado',123),(2087,'Nimba',123),(2088,'Rivercess',123),(2089,'Sinoe',123),(2090,'Ajdabiya',124),(2091,'Banghazi',124),(2092,'Darnah',124),(2093,'Ghadamis',124),(2094,'Gharyan',124),(2095,'Misratah',124),(2096,'Murzuq',124),(2097,'Sabha',124),(2098,'Sawfajjin',124),(2099,'Surt',124),(2100,'Tarabulus',124),(2101,'Tarhunah',124),(2102,'Tripolitania',124),(2103,'Tubruq',124),(2104,'Yafran',124),(2105,'Zlitan',124),(2106,'al-\\\'Aziziyah',124),(2107,'al-Fatih',124),(2108,'al-Jabal al Akhdar',124),(2109,'al-Jufrah',124),(2110,'al-Khums',124),(2111,'al-Kufrah',124),(2112,'an-Nuqat al-Khams',124),(2113,'ash-Shati\\\'',124),(2114,'az-Zawiyah',124),(2115,'Balzers',125),(2116,'Eschen',125),(2117,'Gamprin',125),(2118,'Mauren',125),(2119,'Planken',125),(2120,'Ruggell',125),(2121,'Schaan',125),(2122,'Schellenberg',125),(2123,'Triesen',125),(2124,'Triesenberg',125),(2125,'Vaduz',125),(2126,'Alytaus',126),(2127,'Anyksciai',126),(2128,'Kauno',126),(2129,'Klaipedos',126),(2130,'Marijampoles',126),(2131,'Panevezhio',126),(2132,'Panevezys',126),(2133,'Shiauliu',126),(2134,'Taurages',126),(2135,'Telshiu',126),(2136,'Telsiai',126),(2137,'Utenos',126),(2138,'Vilniaus',126),(2139,'Capellen',127),(2140,'Clervaux',127),(2141,'Diekirch',127),(2142,'Echternach',127),(2143,'Esch-sur-Alzette',127),(2144,'Grevenmacher',127),(2145,'Luxembourg',127),(2146,'Mersch',127),(2147,'Redange',127),(2148,'Remich',127),(2149,'Vianden',127),(2150,'Wiltz',127),(2151,'Macau',128),(2152,'Berovo',129),(2153,'Bitola',129),(2154,'Brod',129),(2155,'Debar',129),(2156,'Delchevo',129),(2157,'Demir Hisar',129),(2158,'Gevgelija',129),(2159,'Gostivar',129),(2160,'Kavadarci',129),(2161,'Kichevo',129),(2162,'Kochani',129),(2163,'Kratovo',129),(2164,'Kriva Palanka',129),(2165,'Krushevo',129),(2166,'Kumanovo',129),(2167,'Negotino',129),(2168,'Ohrid',129),(2169,'Prilep',129),(2170,'Probishtip',129),(2171,'Radovish',129),(2172,'Resen',129),(2173,'Shtip',129),(2174,'Skopje',129),(2175,'Struga',129),(2176,'Strumica',129),(2177,'Sveti Nikole',129),(2178,'Tetovo',129),(2179,'Valandovo',129),(2180,'Veles',129),(2181,'Vinica',129),(2182,'Antananarivo',130),(2183,'Antsiranana',130),(2184,'Fianarantsoa',130),(2185,'Mahajanga',130),(2186,'Toamasina',130),(2187,'Toliary',130),(2188,'Balaka',131),(2189,'Blantyre City',131),(2190,'Chikwawa',131),(2191,'Chiradzulu',131),(2192,'Chitipa',131),(2193,'Dedza',131),(2194,'Dowa',131),(2195,'Karonga',131),(2196,'Kasungu',131),(2197,'Lilongwe City',131),(2198,'Machinga',131),(2199,'Mangochi',131),(2200,'Mchinji',131),(2201,'Mulanje',131),(2202,'Mwanza',131),(2203,'Mzimba',131),(2204,'Mzuzu City',131),(2205,'Nkhata Bay',131),(2206,'Nkhotakota',131),(2207,'Nsanje',131),(2208,'Ntcheu',131),(2209,'Ntchisi',131),(2210,'Phalombe',131),(2211,'Rumphi',131),(2212,'Salima',131),(2213,'Thyolo',131),(2214,'Zomba Municipality',131),(2215,'Johor',132),(2216,'Kedah',132),(2217,'Kelantan',132),(2218,'Kuala Lumpur',132),(2219,'Labuan',132),(2220,'Melaka',132),(2221,'Negeri Johor',132),(2222,'Negeri Sembilan',132),(2223,'Pahang',132),(2224,'Penang',132),(2225,'Perak',132),(2226,'Perlis',132),(2227,'Pulau Pinang',132),(2228,'Sabah',132),(2229,'Sarawak',132),(2230,'Selangor',132),(2231,'Sembilan',132),(2232,'Terengganu',132),(2233,'Alif Alif',133),(2234,'Alif Dhaal',133),(2235,'Baa',133),(2236,'Dhaal',133),(2237,'Faaf',133),(2238,'Gaaf Alif',133),(2239,'Gaaf Dhaal',133),(2240,'Ghaviyani',133),(2241,'Haa Alif',133),(2242,'Haa Dhaal',133),(2243,'Kaaf',133),(2244,'Laam',133),(2245,'Lhaviyani',133),(2246,'Male',133),(2247,'Miim',133),(2248,'Nuun',133),(2249,'Raa',133),(2250,'Shaviyani',133),(2251,'Siin',133),(2252,'Thaa',133),(2253,'Vaav',133),(2254,'Bamako',134),(2255,'Gao',134),(2256,'Kayes',134),(2257,'Kidal',134),(2258,'Koulikoro',134),(2259,'Mopti',134),(2260,'Segou',134),(2261,'Sikasso',134),(2262,'Tombouctou',134),(2263,'Gozo and Comino',135),(2264,'Inner Harbour',135),(2265,'Northern',135),(2266,'Outer Harbour',135),(2267,'South Eastern',135),(2268,'Valletta',135),(2269,'Western',135),(2270,'Castletown',136),(2271,'Douglas',136),(2272,'Laxey',136),(2273,'Onchan',136),(2274,'Peel',136),(2275,'Port Erin',136),(2276,'Port Saint Mary',136),(2277,'Ramsey',136),(2278,'Ailinlaplap',137),(2279,'Ailuk',137),(2280,'Arno',137),(2281,'Aur',137),(2282,'Bikini',137),(2283,'Ebon',137),(2284,'Enewetak',137),(2285,'Jabat',137),(2286,'Jaluit',137),(2287,'Kili',137),(2288,'Kwajalein',137),(2289,'Lae',137),(2290,'Lib',137),(2291,'Likiep',137),(2292,'Majuro',137),(2293,'Maloelap',137),(2294,'Mejit',137),(2295,'Mili',137),(2296,'Namorik',137),(2297,'Namu',137),(2298,'Rongelap',137),(2299,'Ujae',137),(2300,'Utrik',137),(2301,'Wotho',137),(2302,'Wotje',137),(2303,'Fort-de-France',138),(2304,'La Trinite',138),(2305,'Le Marin',138),(2306,'Saint-Pierre',138),(2307,'Adrar',139),(2308,'Assaba',139),(2309,'Brakna',139),(2310,'Dhakhlat Nawadibu',139),(2311,'Hudh-al-Gharbi',139),(2312,'Hudh-ash-Sharqi',139),(2313,'Inshiri',139),(2314,'Nawakshut',139),(2315,'Qidimagha',139),(2316,'Qurqul',139),(2317,'Taqant',139),(2318,'Tiris Zammur',139),(2319,'Trarza',139),(2320,'Black River',140),(2321,'Eau Coulee',140),(2322,'Flacq',140),(2323,'Floreal',140),(2324,'Grand Port',140),(2325,'Moka',140),(2326,'Pamplempousses',140),(2327,'Plaines Wilhelm',140),(2328,'Port Louis',140),(2329,'Riviere du Rempart',140),(2330,'Rodrigues',140),(2331,'Rose Hill',140),(2332,'Savanne',140),(2333,'Mayotte',141),(2334,'Pamanzi',141),(2335,'Aguascalientes',142),(2336,'Baja California',142),(2337,'Baja California Sur',142),(2338,'Campeche',142),(2339,'Chiapas',142),(2340,'Chihuahua',142),(2341,'Coahuila',142),(2342,'Colima',142),(2343,'Distrito Federal',142),(2344,'Durango',142),(2345,'Estado de Mexico',142),(2346,'Guanajuato',142),(2347,'Guerrero',142),(2348,'Hidalgo',142),(2349,'Jalisco',142),(2350,'Mexico',142),(2351,'Michoacan',142),(2352,'Morelos',142),(2353,'Nayarit',142),(2354,'Nuevo Leon',142),(2355,'Oaxaca',142),(2356,'Puebla',142),(2357,'Queretaro',142),(2358,'Quintana Roo',142),(2359,'San Luis Potosi',142),(2360,'Sinaloa',142),(2361,'Sonora',142),(2362,'Tabasco',142),(2363,'Tamaulipas',142),(2364,'Tlaxcala',142),(2365,'Veracruz',142),(2366,'Yucatan',142),(2367,'Zacatecas',142),(2368,'Chuuk',143),(2369,'Kusaie',143),(2370,'Pohnpei',143),(2371,'Yap',143),(2372,'Balti',144),(2373,'Cahul',144),(2374,'Chisinau',144),(2375,'Chisinau Oras',144),(2376,'Edinet',144),(2377,'Gagauzia',144),(2378,'Lapusna',144),(2379,'Orhei',144),(2380,'Soroca',144),(2381,'Taraclia',144),(2382,'Tighina',144),(2383,'Transnistria',144),(2384,'Ungheni',144),(2385,'Fontvieille',145),(2386,'La Condamine',145),(2387,'Monaco-Ville',145),(2388,'Monte Carlo',145),(2389,'Arhangaj',146),(2390,'Bajan-Olgij',146),(2391,'Bajanhongor',146),(2392,'Bulgan',146),(2393,'Darhan-Uul',146),(2394,'Dornod',146),(2395,'Dornogovi',146),(2396,'Dundgovi',146),(2397,'Govi-Altaj',146),(2398,'Govisumber',146),(2399,'Hentij',146),(2400,'Hovd',146),(2401,'Hovsgol',146),(2402,'Omnogovi',146),(2403,'Orhon',146),(2404,'Ovorhangaj',146),(2405,'Selenge',146),(2406,'Suhbaatar',146),(2407,'Tov',146),(2408,'Ulaanbaatar',146),(2409,'Uvs',146),(2410,'Zavhan',146),(2411,'Montserrat',148),(2412,'Agadir',149),(2413,'Casablanca',149),(2414,'Chaouia-Ouardigha',149),(2415,'Doukkala-Abda',149),(2416,'Fes-Boulemane',149),(2417,'Gharb-Chrarda-Beni Hssen',149),(2418,'Guelmim',149),(2419,'Kenitra',149),(2420,'Marrakech-Tensift-Al Haouz',149),(2421,'Meknes-Tafilalet',149),(2422,'Oriental',149),(2423,'Oujda',149),(2424,'Province de Tanger',149),(2425,'Rabat-Sale-Zammour-Zaer',149),(2426,'Sala Al Jadida',149),(2427,'Settat',149),(2428,'Souss Massa-Draa',149),(2429,'Tadla-Azilal',149),(2430,'Tangier-Tetouan',149),(2431,'Taza-Al Hoceima-Taounate',149),(2432,'Wilaya de Casablanca',149),(2433,'Wilaya de Rabat-Sale',149),(2434,'Cabo Delgado',150),(2435,'Gaza',150),(2436,'Inhambane',150),(2437,'Manica',150),(2438,'Maputo',150),(2439,'Maputo Provincia',150),(2440,'Nampula',150),(2441,'Niassa',150),(2442,'Sofala',150),(2443,'Tete',150),(2444,'Zambezia',150),(2445,'Ayeyarwady',151),(2446,'Bago',151),(2447,'Chin',151),(2448,'Kachin',151),(2449,'Kayah',151),(2450,'Kayin',151),(2451,'Magway',151),(2452,'Mandalay',151),(2453,'Mon',151),(2454,'Nay Pyi Taw',151),(2455,'Rakhine',151),(2456,'Sagaing',151),(2457,'Shan',151),(2458,'Tanintharyi',151),(2459,'Yangon',151),(2460,'Caprivi',152),(2461,'Erongo',152),(2462,'Hardap',152),(2463,'Karas',152),(2464,'Kavango',152),(2465,'Khomas',152),(2466,'Kunene',152),(2467,'Ohangwena',152),(2468,'Omaheke',152),(2469,'Omusati',152),(2470,'Oshana',152),(2471,'Oshikoto',152),(2472,'Otjozondjupa',152),(2473,'Yaren',153),(2474,'Bagmati',154),(2475,'Bheri',154),(2476,'Dhawalagiri',154),(2477,'Gandaki',154),(2478,'Janakpur',154),(2479,'Karnali',154),(2480,'Koshi',154),(2481,'Lumbini',154),(2482,'Mahakali',154),(2483,'Mechi',154),(2484,'Narayani',154),(2485,'Rapti',154),(2486,'Sagarmatha',154),(2487,'Seti',154),(2488,'Bonaire',155),(2489,'Curacao',155),(2490,'Saba',155),(2491,'Sint Eustatius',155),(2492,'Sint Maarten',155),(2493,'Amsterdam',156),(2494,'Benelux',156),(2495,'Drenthe',156),(2496,'Flevoland',156),(2497,'Friesland',156),(2498,'Gelderland',156),(2499,'Groningen',156),(2500,'Limburg',156),(2501,'Noord-Brabant',156),(2502,'Noord-Holland',156),(2503,'Overijssel',156),(2504,'South Holland',156),(2505,'Utrecht',156),(2506,'Zeeland',156),(2507,'Zuid-Holland',156),(2508,'Iles',157),(2509,'Nord',157),(2510,'Sud',157),(2511,'Area Outside Region',158),(2512,'Auckland',158),(2513,'Bay of Plenty',158),(2514,'Canterbury',158),(2515,'Christchurch',158),(2516,'Gisborne',158),(2517,'Hawke\\\'s Bay',158),(2518,'Manawatu-Wanganui',158),(2519,'Marlborough',158),(2520,'Nelson',158),(2521,'Northland',158),(2522,'Otago',158),(2523,'Rodney',158),(2524,'Southland',158),(2525,'Taranaki',158),(2526,'Tasman',158),(2527,'Waikato',158),(2528,'Wellington',158),(2529,'West Coast',158),(2530,'Atlantico Norte',159),(2531,'Atlantico Sur',159),(2532,'Boaco',159),(2533,'Carazo',159),(2534,'Chinandega',159),(2535,'Chontales',159),(2536,'Esteli',159),(2537,'Granada',159),(2538,'Jinotega',159),(2539,'Leon',159),(2540,'Madriz',159),(2541,'Managua',159),(2542,'Masaya',159),(2543,'Matagalpa',159),(2544,'Nueva Segovia',159),(2545,'Rio San Juan',159),(2546,'Rivas',159),(2547,'Agadez',160),(2548,'Diffa',160),(2549,'Dosso',160),(2550,'Maradi',160),(2551,'Niamey',160),(2552,'Tahoua',160),(2553,'Tillabery',160),(2554,'Zinder',160),(2555,'Abia',161),(2556,'Abuja Federal Capital Territor',161),(2557,'Adamawa',161),(2558,'Akwa Ibom',161),(2559,'Anambra',161),(2560,'Bauchi',161),(2561,'Bayelsa',161),(2562,'Benue',161),(2563,'Borno',161),(2564,'Cross River',161),(2565,'Delta',161),(2566,'Ebonyi',161),(2567,'Edo',161),(2568,'Ekiti',161),(2569,'Enugu',161),(2570,'Gombe',161),(2571,'Imo',161),(2572,'Jigawa',161),(2573,'Kaduna',161),(2574,'Kano',161),(2575,'Katsina',161),(2576,'Kebbi',161),(2577,'Kogi',161),(2578,'Kwara',161),(2579,'Lagos',161),(2580,'Nassarawa',161),(2581,'Niger',161),(2582,'Ogun',161),(2583,'Ondo',161),(2584,'Osun',161),(2585,'Oyo',161),(2586,'Plateau',161),(2587,'Rivers',161),(2588,'Sokoto',161),(2589,'Taraba',161),(2590,'Yobe',161),(2591,'Zamfara',161),(2592,'Niue',162),(2593,'Norfolk Island',163),(2594,'Northern Islands',164),(2595,'Rota',164),(2596,'Saipan',164),(2597,'Tinian',164),(2598,'Akershus',165),(2599,'Aust Agder',165),(2600,'Bergen',165),(2601,'Buskerud',165),(2602,'Finnmark',165),(2603,'Hedmark',165),(2604,'Hordaland',165),(2605,'Moere og Romsdal',165),(2606,'Nord Trondelag',165),(2607,'Nordland',165),(2608,'Oestfold',165),(2609,'Oppland',165),(2610,'Oslo',165),(2611,'Rogaland',165),(2612,'Soer Troendelag',165),(2613,'Sogn og Fjordane',165),(2614,'Stavern',165),(2615,'Sykkylven',165),(2616,'Telemark',165),(2617,'Troms',165),(2618,'Vest Agder',165),(2619,'Vestfold',165),(2620,'ÃƒÂƒÃ†Â’ÃƒÂ‚Ã‹Âœstfold',165),(2621,'Al Buraimi',166),(2622,'Dhufar',166),(2623,'Masqat',166),(2624,'Musandam',166),(2625,'Rusayl',166),(2626,'Wadi Kabir',166),(2627,'ad-Dakhiliyah',166),(2628,'adh-Dhahirah',166),(2629,'al-Batinah',166),(2630,'ash-Sharqiyah',166),(2631,'Baluchistan',167),(2632,'Federal Capital Area',167),(2633,'Federally administered Tribal ',167),(2634,'North-West Frontier',167),(2635,'Northern Areas',167),(2636,'Punjab',167),(2637,'Sind',167),(2638,'Aimeliik',168),(2639,'Airai',168),(2640,'Angaur',168),(2641,'Hatobohei',168),(2642,'Kayangel',168),(2643,'Koror',168),(2644,'Melekeok',168),(2645,'Ngaraard',168),(2646,'Ngardmau',168),(2647,'Ngaremlengui',168),(2648,'Ngatpang',168),(2649,'Ngchesar',168),(2650,'Ngerchelong',168),(2651,'Ngiwal',168),(2652,'Peleliu',168),(2653,'Sonsorol',168),(2654,'Ariha',169),(2655,'Bayt Lahm',169),(2656,'Bethlehem',169),(2657,'Dayr-al-Balah',169),(2658,'Ghazzah',169),(2659,'Ghazzah ash-Shamaliyah',169),(2660,'Janin',169),(2661,'Khan Yunis',169),(2662,'Nabulus',169),(2663,'Qalqilyah',169),(2664,'Rafah',169),(2665,'Ram Allah wal-Birah',169),(2666,'Salfit',169),(2667,'Tubas',169),(2668,'Tulkarm',169),(2669,'al-Khalil',169),(2670,'al-Quds',169),(2671,'Bocas del Toro',170),(2672,'Chiriqui',170),(2673,'Cocle',170),(2674,'Colon',170),(2675,'Darien',170),(2676,'Embera',170),(2677,'Herrera',170),(2678,'Kuna Yala',170),(2679,'Los Santos',170),(2680,'Ngobe Bugle',170),(2681,'Panama',170),(2682,'Veraguas',170),(2683,'East New Britain',171),(2684,'East Sepik',171),(2685,'Eastern Highlands',171),(2686,'Enga',171),(2687,'Fly River',171),(2688,'Gulf',171),(2689,'Madang',171),(2690,'Manus',171),(2691,'Milne Bay',171),(2692,'Morobe',171),(2693,'National Capital District',171),(2694,'New Ireland',171),(2695,'North Solomons',171),(2696,'Oro',171),(2697,'Sandaun',171),(2698,'Simbu',171),(2699,'Southern Highlands',171),(2700,'West New Britain',171),(2701,'Western Highlands',171),(2702,'Alto Paraguay',172),(2703,'Alto Parana',172),(2704,'Amambay',172),(2705,'Asuncion',172),(2706,'Boqueron',172),(2707,'Caaguazu',172),(2708,'Caazapa',172),(2709,'Canendiyu',172),(2710,'Central',172),(2711,'Concepcion',172),(2712,'Cordillera',172),(2713,'Guaira',172),(2714,'Itapua',172),(2715,'Misiones',172),(2716,'Neembucu',172),(2717,'Paraguari',172),(2718,'Presidente Hayes',172),(2719,'San Pedro',172),(2720,'Amazonas',173),(2721,'Ancash',173),(2722,'Apurimac',173),(2723,'Arequipa',173),(2724,'Ayacucho',173),(2725,'Cajamarca',173),(2726,'Cusco',173),(2727,'Huancavelica',173),(2728,'Huanuco',173),(2729,'Ica',173),(2730,'Junin',173),(2731,'La Libertad',173),(2732,'Lambayeque',173),(2733,'Lima y Callao',173),(2734,'Loreto',173),(2735,'Madre de Dios',173),(2736,'Moquegua',173),(2737,'Pasco',173),(2738,'Piura',173),(2739,'Puno',173),(2740,'San Martin',173),(2741,'Tacna',173),(2742,'Tumbes',173),(2743,'Ucayali',173),(2744,'Batangas',174),(2745,'Bicol',174),(2746,'Bulacan',174),(2747,'Cagayan',174),(2748,'Caraga',174),(2749,'Central Luzon',174),(2750,'Central Mindanao',174),(2751,'Central Visayas',174),(2752,'Cordillera',174),(2753,'Davao',174),(2754,'Eastern Visayas',174),(2755,'Greater Metropolitan Area',174),(2756,'Ilocos',174),(2757,'Laguna',174),(2758,'Luzon',174),(2759,'Mactan',174),(2760,'Metropolitan Manila Area',174),(2761,'Muslim Mindanao',174),(2762,'Northern Mindanao',174),(2763,'Southern Mindanao',174),(2764,'Southern Tagalog',174),(2765,'Western Mindanao',174),(2766,'Western Visayas',174),(2767,'Pitcairn Island',175),(2768,'Biale Blota',176),(2769,'Dobroszyce',176),(2770,'Dolnoslaskie',176),(2771,'Dziekanow Lesny',176),(2772,'Hopowo',176),(2773,'Kartuzy',176),(2774,'Koscian',176),(2775,'Krakow',176),(2776,'Kujawsko-Pomorskie',176),(2777,'Lodzkie',176),(2778,'Lubelskie',176),(2779,'Lubuskie',176),(2780,'Malomice',176),(2781,'Malopolskie',176),(2782,'Mazowieckie',176),(2783,'Mirkow',176),(2784,'Opolskie',176),(2785,'Ostrowiec',176),(2786,'Podkarpackie',176),(2787,'Podlaskie',176),(2788,'Polska',176),(2789,'Pomorskie',176),(2790,'Poznan',176),(2791,'Pruszkow',176),(2792,'Rymanowska',176),(2793,'Rzeszow',176),(2794,'Slaskie',176),(2795,'Stare Pole',176),(2796,'Swietokrzyskie',176),(2797,'Warminsko-Mazurskie',176),(2798,'Warsaw',176),(2799,'Wejherowo',176),(2800,'Wielkopolskie',176),(2801,'Wroclaw',176),(2802,'Zachodnio-Pomorskie',176),(2803,'Zukowo',176),(2804,'Abrantes',177),(2805,'Acores',177),(2806,'Alentejo',177),(2807,'Algarve',177),(2808,'Braga',177),(2809,'Centro',177),(2810,'Distrito de Leiria',177),(2811,'Distrito de Viana do Castelo',177),(2812,'Distrito de Vila Real',177),(2813,'Distrito do Porto',177),(2814,'Lisboa e Vale do Tejo',177),(2815,'Madeira',177),(2816,'Norte',177),(2817,'Paivas',177),(2818,'Arecibo',178),(2819,'Bayamon',178),(2820,'Carolina',178),(2821,'Florida',178),(2822,'Guayama',178),(2823,'Humacao',178),(2824,'Mayaguez-Aguadilla',178),(2825,'Ponce',178),(2826,'Salinas',178),(2827,'San Juan',178),(2828,'Doha',179),(2829,'Jarian-al-Batnah',179),(2830,'Umm Salal',179),(2831,'ad-Dawhah',179),(2832,'al-Ghuwayriyah',179),(2833,'al-Jumayliyah',179),(2834,'al-Khawr',179),(2835,'al-Wakrah',179),(2836,'ar-Rayyan',179),(2837,'ash-Shamal',179),(2838,'Saint-Benoit',180),(2839,'Saint-Denis',180),(2840,'Saint-Paul',180),(2841,'Saint-Pierre',180),(2842,'Alba',181),(2843,'Arad',181),(2844,'Arges',181),(2845,'Bacau',181),(2846,'Bihor',181),(2847,'Bistrita-Nasaud',181),(2848,'Botosani',181),(2849,'Braila',181),(2850,'Brasov',181),(2851,'Bucuresti',181),(2852,'Buzau',181),(2853,'Calarasi',181),(2854,'Caras-Severin',181),(2855,'Cluj',181),(2856,'Constanta',181),(2857,'Covasna',181),(2858,'Dambovita',181),(2859,'Dolj',181),(2860,'Galati',181),(2861,'Giurgiu',181),(2862,'Gorj',181),(2863,'Harghita',181),(2864,'Hunedoara',181),(2865,'Ialomita',181),(2866,'Iasi',181),(2867,'Ilfov',181),(2868,'Maramures',181),(2869,'Mehedinti',181),(2870,'Mures',181),(2871,'Neamt',181),(2872,'Olt',181),(2873,'Prahova',181),(2874,'Salaj',181),(2875,'Satu Mare',181),(2876,'Sibiu',181),(2877,'Sondelor',181),(2878,'Suceava',181),(2879,'Teleorman',181),(2880,'Timis',181),(2881,'Tulcea',181),(2882,'Valcea',181),(2883,'Vaslui',181),(2884,'Vrancea',181),(2885,'Adygeja',182),(2886,'Aga',182),(2887,'Alanija',182),(2888,'Altaj',182),(2889,'Amur',182),(2890,'Arhangelsk',182),(2891,'Astrahan',182),(2892,'Bashkortostan',182),(2893,'Belgorod',182),(2894,'Brjansk',182),(2895,'Burjatija',182),(2896,'Chechenija',182),(2897,'Cheljabinsk',182),(2898,'Chita',182),(2899,'Chukotka',182),(2900,'Chuvashija',182),(2901,'Dagestan',182),(2902,'Evenkija',182),(2903,'Gorno-Altaj',182),(2904,'Habarovsk',182),(2905,'Hakasija',182),(2906,'Hanty-Mansija',182),(2907,'Ingusetija',182),(2908,'Irkutsk',182),(2909,'Ivanovo',182),(2910,'Jamalo-Nenets',182),(2911,'Jaroslavl',182),(2912,'Jevrej',182),(2913,'Kabardino-Balkarija',182),(2914,'Kaliningrad',182),(2915,'Kalmykija',182),(2916,'Kaluga',182),(2917,'Kamchatka',182),(2918,'Karachaj-Cherkessija',182),(2919,'Karelija',182),(2920,'Kemerovo',182),(2921,'Khabarovskiy Kray',182),(2922,'Kirov',182),(2923,'Komi',182),(2924,'Komi-Permjakija',182),(2925,'Korjakija',182),(2926,'Kostroma',182),(2927,'Krasnodar',182),(2928,'Krasnojarsk',182),(2929,'Krasnoyarskiy Kray',182),(2930,'Kurgan',182),(2931,'Kursk',182),(2932,'Leningrad',182),(2933,'Lipeck',182),(2934,'Magadan',182),(2935,'Marij El',182),(2936,'Mordovija',182),(2937,'Moscow',182),(2938,'Moskovskaja Oblast',182),(2939,'Moskovskaya Oblast',182),(2940,'Moskva',182),(2941,'Murmansk',182),(2942,'Nenets',182),(2943,'Nizhnij Novgorod',182),(2944,'Novgorod',182),(2945,'Novokusnezk',182),(2946,'Novosibirsk',182),(2947,'Omsk',182),(2948,'Orenburg',182),(2949,'Orjol',182),(2950,'Penza',182),(2951,'Perm',182),(2952,'Primorje',182),(2953,'Pskov',182),(2954,'Pskovskaya Oblast',182),(2955,'Rjazan',182),(2956,'Rostov',182),(2957,'Saha',182),(2958,'Sahalin',182),(2959,'Samara',182),(2960,'Samarskaya',182),(2961,'Sankt-Peterburg',182),(2962,'Saratov',182),(2963,'Smolensk',182),(2964,'Stavropol',182),(2965,'Sverdlovsk',182),(2966,'Tajmyrija',182),(2967,'Tambov',182),(2968,'Tatarstan',182),(2969,'Tjumen',182),(2970,'Tomsk',182),(2971,'Tula',182),(2972,'Tver',182),(2973,'Tyva',182),(2974,'Udmurtija',182),(2975,'Uljanovsk',182),(2976,'Ulyanovskaya Oblast',182),(2977,'Ust-Orda',182),(2978,'Vladimir',182),(2979,'Volgograd',182),(2980,'Vologda',182),(2981,'Voronezh',182),(2982,'Butare',183),(2983,'Byumba',183),(2984,'Cyangugu',183),(2985,'Gikongoro',183),(2986,'Gisenyi',183),(2987,'Gitarama',183),(2988,'Kibungo',183),(2989,'Kibuye',183),(2990,'Kigali-ngali',183),(2991,'Ruhengeri',183),(2992,'Ascension',184),(2993,'Gough Island',184),(2994,'Saint Helena',184),(2995,'Tristan da Cunha',184),(2996,'Christ Church Nichola Town',185),(2997,'Saint Anne Sandy Point',185),(2998,'Saint George Basseterre',185),(2999,'Saint George Gingerland',185),(3000,'Saint James Windward',185),(3001,'Saint John Capesterre',185),(3002,'Saint John Figtree',185),(3003,'Saint Mary Cayon',185),(3004,'Saint Paul Capesterre',185),(3005,'Saint Paul Charlestown',185),(3006,'Saint Peter Basseterre',185),(3007,'Saint Thomas Lowland',185),(3008,'Saint Thomas Middle Island',185),(3009,'Trinity Palmetto Point',185),(3010,'Anse-la-Raye',186),(3011,'Canaries',186),(3012,'Castries',186),(3013,'Choiseul',186),(3014,'Dennery',186),(3015,'Gros Inlet',186),(3016,'Laborie',186),(3017,'Micoud',186),(3018,'Soufriere',186),(3019,'Vieux Fort',186),(3020,'Miquelon-Langlade',187),(3021,'Saint-Pierre',187),(3022,'Charlotte',188),(3023,'Grenadines',188),(3024,'Saint Andrew',188),(3025,'Saint David',188),(3026,'Saint George',188),(3027,'Saint Patrick',188),(3028,'A\\\'ana',191),(3029,'Aiga-i-le-Tai',191),(3030,'Atua',191),(3031,'Fa\\\'asaleleaga',191),(3032,'Gaga\\\'emauga',191),(3033,'Gagaifomauga',191),(3034,'Palauli',191),(3035,'Satupa\\\'itea',191),(3036,'Tuamasaga',191),(3037,'Va\\\'a-o-Fonoti',191),(3038,'Vaisigano',191),(3039,'Acquaviva',192),(3040,'Borgo Maggiore',192),(3041,'Chiesanuova',192),(3042,'Domagnano',192),(3043,'Faetano',192),(3044,'Fiorentino',192),(3045,'Montegiardino',192),(3046,'San Marino',192),(3047,'Serravalle',192),(3048,'Agua Grande',193),(3049,'Cantagalo',193),(3050,'Lemba',193),(3051,'Lobata',193),(3052,'Me-Zochi',193),(3053,'Pague',193),(3054,'Al Khobar',194),(3055,'Aseer',194),(3056,'Ash Sharqiyah',194),(3057,'Asir',194),(3058,'Central Province',194),(3059,'Eastern Province',194),(3060,'Ha\\\'il',194),(3061,'Jawf',194),(3062,'Jizan',194),(3063,'Makkah',194),(3064,'Najran',194),(3065,'Qasim',194),(3066,'Tabuk',194),(3067,'Western Province',194),(3068,'al-Bahah',194),(3069,'al-Hudud-ash-Shamaliyah',194),(3070,'al-Madinah',194),(3071,'ar-Riyad',194),(3072,'Dakar',195),(3073,'Diourbel',195),(3074,'Fatick',195),(3075,'Kaolack',195),(3076,'Kolda',195),(3077,'Louga',195),(3078,'Saint-Louis',195),(3079,'Tambacounda',195),(3080,'Thies',195),(3081,'Ziguinchor',195),(3082,'Central Serbia',196),(3083,'Kosovo and Metohija',196),(3084,'Vojvodina',196),(3085,'Anse Boileau',197),(3086,'Anse Royale',197),(3087,'Cascade',197),(3088,'Takamaka',197),(3089,'Victoria',197),(3090,'Eastern',198),(3091,'Northern',198),(3092,'Southern',198),(3093,'Western',198),(3094,'Singapore',199),(3095,'Banskobystricky',200),(3096,'Bratislavsky',200),(3097,'Kosicky',200),(3098,'Nitriansky',200),(3099,'Presovsky',200),(3100,'Trenciansky',200),(3101,'Trnavsky',200),(3102,'Zilinsky',200),(3103,'Benedikt',201),(3104,'Gorenjska',201),(3105,'Gorishka',201),(3106,'Jugovzhodna Slovenija',201),(3107,'Koroshka',201),(3108,'Notranjsko-krashka',201),(3109,'Obalno-krashka',201),(3110,'Obcina Domzale',201),(3111,'Obcina Vitanje',201),(3112,'Osrednjeslovenska',201),(3113,'Podravska',201),(3114,'Pomurska',201),(3115,'Savinjska',201),(3116,'Slovenian Littoral',201),(3117,'Spodnjeposavska',201),(3118,'Zasavska',201),(3119,'Central',202),(3120,'Choiseul',202),(3121,'Guadalcanal',202),(3122,'Isabel',202),(3123,'Makira and Ulawa',202),(3124,'Malaita',202),(3125,'Rennell and Bellona',202),(3126,'Temotu',202),(3127,'Western',202),(3128,'Awdal',203),(3129,'Bakol',203),(3130,'Banadir',203),(3131,'Bari',203),(3132,'Bay',203),(3133,'Galgudug',203),(3134,'Gedo',203),(3135,'Hiran',203),(3136,'Jubbada Hose',203),(3137,'Jubbadha Dexe',203),(3138,'Mudug',203),(3139,'Nugal',203),(3140,'Sanag',203),(3141,'Shabellaha Dhexe',203),(3142,'Shabellaha Hose',203),(3143,'Togdher',203),(3144,'Woqoyi Galbed',203),(3145,'Eastern Cape',204),(3146,'Free State',204),(3147,'Gauteng',204),(3148,'Kempton Park',204),(3149,'Kramerville',204),(3150,'KwaZulu Natal',204),(3151,'Limpopo',204),(3152,'Mpumalanga',204),(3153,'North West',204),(3154,'Northern Cape',204),(3155,'Parow',204),(3156,'Table View',204),(3157,'Umtentweni',204),(3158,'Western Cape',204),(3159,'South Georgia',205),(3160,'Central Equatoria',206),(3161,'A Coruna',207),(3162,'Alacant',207),(3163,'Alava',207),(3164,'Albacete',207),(3165,'Almeria',207),(3166,'Andalucia',207),(3167,'Asturias',207),(3168,'Avila',207),(3169,'Badajoz',207),(3170,'Balears',207),(3171,'Barcelona',207),(3172,'Bertamirans',207),(3173,'Biscay',207),(3174,'Burgos',207),(3175,'Caceres',207),(3176,'Cadiz',207),(3177,'Cantabria',207),(3178,'Castello',207),(3179,'Catalunya',207),(3180,'Ceuta',207),(3181,'Ciudad Real',207),(3182,'Comunidad Autonoma de Canarias',207),(3183,'Comunidad Autonoma de Cataluna',207),(3184,'Comunidad Autonoma de Galicia',207),(3185,'Comunidad Autonoma de las Isla',207),(3186,'Comunidad Autonoma del Princip',207),(3187,'Comunidad Valenciana',207),(3188,'Cordoba',207),(3189,'Cuenca',207),(3190,'Gipuzkoa',207),(3191,'Girona',207),(3192,'Granada',207),(3193,'Guadalajara',207),(3194,'Guipuzcoa',207),(3195,'Huelva',207),(3196,'Huesca',207),(3197,'Jaen',207),(3198,'La Rioja',207),(3199,'Las Palmas',207),(3200,'Leon',207),(3201,'Lerida',207),(3202,'Lleida',207),(3203,'Lugo',207),(3204,'Madrid',207),(3205,'Malaga',207),(3206,'Melilla',207),(3207,'Murcia',207),(3208,'Navarra',207),(3209,'Ourense',207),(3210,'Pais Vasco',207),(3211,'Palencia',207),(3212,'Pontevedra',207),(3213,'Salamanca',207),(3214,'Santa Cruz de Tenerife',207),(3215,'Segovia',207),(3216,'Sevilla',207),(3217,'Soria',207),(3218,'Tarragona',207),(3219,'Tenerife',207),(3220,'Teruel',207),(3221,'Toledo',207),(3222,'Valencia',207),(3223,'Valladolid',207),(3224,'Vizcaya',207),(3225,'Zamora',207),(3226,'Zaragoza',207),(3227,'Amparai',208),(3228,'Anuradhapuraya',208),(3229,'Badulla',208),(3230,'Boralesgamuwa',208),(3231,'Colombo',208),(3232,'Galla',208),(3233,'Gampaha',208),(3234,'Hambantota',208),(3235,'Kalatura',208),(3236,'Kegalla',208),(3237,'Kilinochchi',208),(3238,'Kurunegala',208),(3239,'Madakalpuwa',208),(3240,'Maha Nuwara',208),(3241,'Malwana',208),(3242,'Mannarama',208),(3243,'Matale',208),(3244,'Matara',208),(3245,'Monaragala',208),(3246,'Mullaitivu',208),(3247,'North Eastern Province',208),(3248,'North Western Province',208),(3249,'Nuwara Eliya',208),(3250,'Polonnaruwa',208),(3251,'Puttalama',208),(3252,'Ratnapuraya',208),(3253,'Southern Province',208),(3254,'Tirikunamalaya',208),(3255,'Tuscany',208),(3256,'Vavuniyawa',208),(3257,'Western Province',208),(3258,'Yapanaya',208),(3259,'kadawatha',208),(3260,'A\\\'ali-an-Nil',209),(3261,'Bahr-al-Jabal',209),(3262,'Central Equatoria',209),(3263,'Gharb Bahr-al-Ghazal',209),(3264,'Gharb Darfur',209),(3265,'Gharb Kurdufan',209),(3266,'Gharb-al-Istiwa\\\'iyah',209),(3267,'Janub Darfur',209),(3268,'Janub Kurdufan',209),(3269,'Junqali',209),(3270,'Kassala',209),(3271,'Nahr-an-Nil',209),(3272,'Shamal Bahr-al-Ghazal',209),(3273,'Shamal Darfur',209),(3274,'Shamal Kurdufan',209),(3275,'Sharq-al-Istiwa\\\'iyah',209),(3276,'Sinnar',209),(3277,'Warab',209),(3278,'Wilayat al Khartum',209),(3279,'al-Bahr-al-Ahmar',209),(3280,'al-Buhayrat',209),(3281,'al-Jazirah',209),(3282,'al-Khartum',209),(3283,'al-Qadarif',209),(3284,'al-Wahdah',209),(3285,'an-Nil-al-Abyad',209),(3286,'an-Nil-al-Azraq',209),(3287,'ash-Shamaliyah',209),(3288,'Brokopondo',210),(3289,'Commewijne',210),(3290,'Coronie',210),(3291,'Marowijne',210),(3292,'Nickerie',210),(3293,'Para',210),(3294,'Paramaribo',210),(3295,'Saramacca',210),(3296,'Wanica',210),(3297,'Svalbard',211),(3298,'Hhohho',212),(3299,'Lubombo',212),(3300,'Manzini',212),(3301,'Shiselweni',212),(3302,'Alvsborgs Lan',213),(3303,'Angermanland',213),(3304,'Blekinge',213),(3305,'Bohuslan',213),(3306,'Dalarna',213),(3307,'Gavleborg',213),(3308,'Gaza',213),(3309,'Gotland',213),(3310,'Halland',213),(3311,'Jamtland',213),(3312,'Jonkoping',213),(3313,'Kalmar',213),(3314,'Kristianstads',213),(3315,'Kronoberg',213),(3316,'Norrbotten',213),(3317,'Orebro',213),(3318,'Ostergotland',213),(3319,'Saltsjo-Boo',213),(3320,'Skane',213),(3321,'Smaland',213),(3322,'Sodermanland',213),(3323,'Stockholm',213),(3324,'Uppsala',213),(3325,'Varmland',213),(3326,'Vasterbotten',213),(3327,'Vastergotland',213),(3328,'Vasternorrland',213),(3329,'Vastmanland',213),(3330,'Vastra Gotaland',213),(3331,'Aargau',214),(3332,'Appenzell Inner-Rhoden',214),(3333,'Appenzell-Ausser Rhoden',214),(3334,'Basel-Landschaft',214),(3335,'Basel-Stadt',214),(3336,'Bern',214),(3337,'Canton Ticino',214),(3338,'Fribourg',214),(3339,'Geneve',214),(3340,'Glarus',214),(3341,'Graubunden',214),(3342,'Heerbrugg',214),(3343,'Jura',214),(3344,'Kanton Aargau',214),(3345,'Luzern',214),(3346,'Morbio Inferiore',214),(3347,'Muhen',214),(3348,'Neuchatel',214),(3349,'Nidwalden',214),(3350,'Obwalden',214),(3351,'Sankt Gallen',214),(3352,'Schaffhausen',214),(3353,'Schwyz',214),(3354,'Solothurn',214),(3355,'Thurgau',214),(3356,'Ticino',214),(3357,'Uri',214),(3358,'Valais',214),(3359,'Vaud',214),(3360,'Vauffelin',214),(3361,'Zug',214),(3362,'Zurich',214),(3363,'Aleppo',215),(3364,'Dar\\\'a',215),(3365,'Dayr-az-Zawr',215),(3366,'Dimashq',215),(3367,'Halab',215),(3368,'Hamah',215),(3369,'Hims',215),(3370,'Idlib',215),(3371,'Madinat Dimashq',215),(3372,'Tartus',215),(3373,'al-Hasakah',215),(3374,'al-Ladhiqiyah',215),(3375,'al-Qunaytirah',215),(3376,'ar-Raqqah',215),(3377,'as-Suwayda',215),(3378,'Changhwa',216),(3379,'Chiayi Hsien',216),(3380,'Chiayi Shih',216),(3381,'Eastern Taipei',216),(3382,'Hsinchu Hsien',216),(3383,'Hsinchu Shih',216),(3384,'Hualien',216),(3385,'Ilan',216),(3386,'Kaohsiung Hsien',216),(3387,'Kaohsiung Shih',216),(3388,'Keelung Shih',216),(3389,'Kinmen',216),(3390,'Miaoli',216),(3391,'Nantou',216),(3392,'Northern Taiwan',216),(3393,'Penghu',216),(3394,'Pingtung',216),(3395,'Taichung',216),(3396,'Taichung Hsien',216),(3397,'Taichung Shih',216),(3398,'Tainan Hsien',216),(3399,'Tainan Shih',216),(3400,'Taipei Hsien',216),(3401,'Taipei Shih / Taipei Hsien',216),(3402,'Taitung',216),(3403,'Taoyuan',216),(3404,'Yilan',216),(3405,'Yun-Lin Hsien',216),(3406,'Yunlin',216),(3407,'Dushanbe',217),(3408,'Gorno-Badakhshan',217),(3409,'Karotegin',217),(3410,'Khatlon',217),(3411,'Sughd',217),(3412,'Arusha',218),(3413,'Dar es Salaam',218),(3414,'Dodoma',218),(3415,'Iringa',218),(3416,'Kagera',218),(3417,'Kigoma',218),(3418,'Kilimanjaro',218),(3419,'Lindi',218),(3420,'Mara',218),(3421,'Mbeya',218),(3422,'Morogoro',218),(3423,'Mtwara',218),(3424,'Mwanza',218),(3425,'Pwani',218),(3426,'Rukwa',218),(3427,'Ruvuma',218),(3428,'Shinyanga',218),(3429,'Singida',218),(3430,'Tabora',218),(3431,'Tanga',218),(3432,'Zanzibar and Pemba',218),(3433,'Amnat Charoen',219),(3434,'Ang Thong',219),(3435,'Bangkok',219),(3436,'Buri Ram',219),(3437,'Chachoengsao',219),(3438,'Chai Nat',219),(3439,'Chaiyaphum',219),(3440,'Changwat Chaiyaphum',219),(3441,'Chanthaburi',219),(3442,'Chiang Mai',219),(3443,'Chiang Rai',219),(3444,'Chon Buri',219),(3445,'Chumphon',219),(3446,'Kalasin',219),(3447,'Kamphaeng Phet',219),(3448,'Kanchanaburi',219),(3449,'Khon Kaen',219),(3450,'Krabi',219),(3451,'Krung Thep',219),(3452,'Lampang',219),(3453,'Lamphun',219),(3454,'Loei',219),(3455,'Lop Buri',219),(3456,'Mae Hong Son',219),(3457,'Maha Sarakham',219),(3458,'Mukdahan',219),(3459,'Nakhon Nayok',219),(3460,'Nakhon Pathom',219),(3461,'Nakhon Phanom',219),(3462,'Nakhon Ratchasima',219),(3463,'Nakhon Sawan',219),(3464,'Nakhon Si Thammarat',219),(3465,'Nan',219),(3466,'Narathiwat',219),(3467,'Nong Bua Lam Phu',219),(3468,'Nong Khai',219),(3469,'Nonthaburi',219),(3470,'Pathum Thani',219),(3471,'Pattani',219),(3472,'Phangnga',219),(3473,'Phatthalung',219),(3474,'Phayao',219),(3475,'Phetchabun',219),(3476,'Phetchaburi',219),(3477,'Phichit',219),(3478,'Phitsanulok',219),(3479,'Phra Nakhon Si Ayutthaya',219),(3480,'Phrae',219),(3481,'Phuket',219),(3482,'Prachin Buri',219),(3483,'Prachuap Khiri Khan',219),(3484,'Ranong',219),(3485,'Ratchaburi',219),(3486,'Rayong',219),(3487,'Roi Et',219),(3488,'Sa Kaeo',219),(3489,'Sakon Nakhon',219),(3490,'Samut Prakan',219),(3491,'Samut Sakhon',219),(3492,'Samut Songkhran',219),(3493,'Saraburi',219),(3494,'Satun',219),(3495,'Si Sa Ket',219),(3496,'Sing Buri',219),(3497,'Songkhla',219),(3498,'Sukhothai',219),(3499,'Suphan Buri',219),(3500,'Surat Thani',219),(3501,'Surin',219),(3502,'Tak',219),(3503,'Trang',219),(3504,'Trat',219),(3505,'Ubon Ratchathani',219),(3506,'Udon Thani',219),(3507,'Uthai Thani',219),(3508,'Uttaradit',219),(3509,'Yala',219),(3510,'Yasothon',219),(3511,'Centre',220),(3512,'Kara',220),(3513,'Maritime',220),(3514,'Plateaux',220),(3515,'Savanes',220),(3516,'Atafu',221),(3517,'Fakaofo',221),(3518,'Nukunonu',221),(3519,'Eua',222),(3520,'Ha\\\'apai',222),(3521,'Niuas',222),(3522,'Tongatapu',222),(3523,'Vava\\\'u',222),(3524,'Arima-Tunapuna-Piarco',223),(3525,'Caroni',223),(3526,'Chaguanas',223),(3527,'Couva-Tabaquite-Talparo',223),(3528,'Diego Martin',223),(3529,'Glencoe',223),(3530,'Penal Debe',223),(3531,'Point Fortin',223),(3532,'Port of Spain',223),(3533,'Princes Town',223),(3534,'Saint George',223),(3535,'San Fernando',223),(3536,'San Juan',223),(3537,'Sangre Grande',223),(3538,'Siparia',223),(3539,'Tobago',223),(3540,'Aryanah',224),(3541,'Bajah',224),(3542,'Bin \\\'Arus',224),(3543,'Binzart',224),(3544,'Gouvernorat de Ariana',224),(3545,'Gouvernorat de Nabeul',224),(3546,'Gouvernorat de Sousse',224),(3547,'Hammamet Yasmine',224),(3548,'Jundubah',224),(3549,'Madaniyin',224),(3550,'Manubah',224),(3551,'Monastir',224),(3552,'Nabul',224),(3553,'Qabis',224),(3554,'Qafsah',224),(3555,'Qibili',224),(3556,'Safaqis',224),(3557,'Sfax',224),(3558,'Sidi Bu Zayd',224),(3559,'Silyanah',224),(3560,'Susah',224),(3561,'Tatawin',224),(3562,'Tawzar',224),(3563,'Tunis',224),(3564,'Zaghwan',224),(3565,'al-Kaf',224),(3566,'al-Mahdiyah',224),(3567,'al-Munastir',224),(3568,'al-Qasrayn',224),(3569,'al-Qayrawan',224),(3570,'Adana',225),(3571,'Adiyaman',225),(3572,'Afyon',225),(3573,'Agri',225),(3574,'Aksaray',225),(3575,'Amasya',225),(3576,'Ankara',225),(3577,'Antalya',225),(3578,'Ardahan',225),(3579,'Artvin',225),(3580,'Aydin',225),(3581,'Balikesir',225),(3582,'Bartin',225),(3583,'Batman',225),(3584,'Bayburt',225),(3585,'Bilecik',225),(3586,'Bingol',225),(3587,'Bitlis',225),(3588,'Bolu',225),(3589,'Burdur',225),(3590,'Bursa',225),(3591,'Canakkale',225),(3592,'Cankiri',225),(3593,'Corum',225),(3594,'Denizli',225),(3595,'Diyarbakir',225),(3596,'Duzce',225),(3597,'Edirne',225),(3598,'Elazig',225),(3599,'Erzincan',225),(3600,'Erzurum',225),(3601,'Eskisehir',225),(3602,'Gaziantep',225),(3603,'Giresun',225),(3604,'Gumushane',225),(3605,'Hakkari',225),(3606,'Hatay',225),(3607,'Icel',225),(3608,'Igdir',225),(3609,'Isparta',225),(3610,'Istanbul',225),(3611,'Izmir',225),(3612,'Kahramanmaras',225),(3613,'Karabuk',225),(3614,'Karaman',225),(3615,'Kars',225),(3616,'Karsiyaka',225),(3617,'Kastamonu',225),(3618,'Kayseri',225),(3619,'Kilis',225),(3620,'Kirikkale',225),(3621,'Kirklareli',225),(3622,'Kirsehir',225),(3623,'Kocaeli',225),(3624,'Konya',225),(3625,'Kutahya',225),(3626,'Lefkosa',225),(3627,'Malatya',225),(3628,'Manisa',225),(3629,'Mardin',225),(3630,'Mugla',225),(3631,'Mus',225),(3632,'Nevsehir',225),(3633,'Nigde',225),(3634,'Ordu',225),(3635,'Osmaniye',225),(3636,'Rize',225),(3637,'Sakarya',225),(3638,'Samsun',225),(3639,'Sanliurfa',225),(3640,'Siirt',225),(3641,'Sinop',225),(3642,'Sirnak',225),(3643,'Sivas',225),(3644,'Tekirdag',225),(3645,'Tokat',225),(3646,'Trabzon',225),(3647,'Tunceli',225),(3648,'Usak',225),(3649,'Van',225),(3650,'Yalova',225),(3651,'Yozgat',225),(3652,'Zonguldak',225),(3653,'Ahal',226),(3654,'Asgabat',226),(3655,'Balkan',226),(3656,'Dasoguz',226),(3657,'Lebap',226),(3658,'Mari',226),(3659,'Grand Turk',227),(3660,'South Caicos and East Caicos',227),(3661,'Funafuti',228),(3662,'Nanumanga',228),(3663,'Nanumea',228),(3664,'Niutao',228),(3665,'Nui',228),(3666,'Nukufetau',228),(3667,'Nukulaelae',228),(3668,'Vaitupu',228),(3669,'Central',229),(3670,'Eastern',229),(3671,'Northern',229),(3672,'Western',229),(3673,'Cherkas\\\'ka',230),(3674,'Chernihivs\\\'ka',230),(3675,'Chernivets\\\'ka',230),(3676,'Crimea',230),(3677,'Dnipropetrovska',230),(3678,'Donets\\\'ka',230),(3679,'Ivano-Frankivs\\\'ka',230),(3680,'Kharkiv',230),(3681,'Kharkov',230),(3682,'Khersonska',230),(3683,'Khmel\\\'nyts\\\'ka',230),(3684,'Kirovohrad',230),(3685,'Krym',230),(3686,'Kyyiv',230),(3687,'Kyyivs\\\'ka',230),(3688,'L\\\'vivs\\\'ka',230),(3689,'Luhans\\\'ka',230),(3690,'Mykolayivs\\\'ka',230),(3691,'Odes\\\'ka',230),(3692,'Odessa',230),(3693,'Poltavs\\\'ka',230),(3694,'Rivnens\\\'ka',230),(3695,'Sevastopol\\\'',230),(3696,'Sums\\\'ka',230),(3697,'Ternopil\\\'s\\\'ka',230),(3698,'Volyns\\\'ka',230),(3699,'Vynnyts\\\'ka',230),(3700,'Zakarpats\\\'ka',230),(3701,'Zaporizhia',230),(3702,'Zhytomyrs\\\'ka',230),(3703,'Abu Zabi',231),(3704,'Ajman',231),(3705,'Dubai',231),(3706,'Ras al-Khaymah',231),(3707,'Sharjah',231),(3708,'Sharjha',231),(3709,'Umm al Qaywayn',231),(3710,'al-Fujayrah',231),(3711,'ash-Shariqah',231),(3712,'Aberdeen',232),(3713,'Aberdeenshire',232),(3714,'Argyll',232),(3715,'Armagh',232),(3716,'Bedfordshire',232),(3717,'Belfast',232),(3718,'Berkshire',232),(3719,'Birmingham',232),(3720,'Brechin',232),(3721,'Bridgnorth',232),(3722,'Bristol',232),(3723,'Buckinghamshire',232),(3724,'Cambridge',232),(3725,'Cambridgeshire',232),(3726,'Channel Islands',232),(3727,'Cheshire',232),(3728,'Cleveland',232),(3729,'Co Fermanagh',232),(3730,'Conwy',232),(3731,'Cornwall',232),(3732,'Coventry',232),(3733,'Craven Arms',232),(3734,'Cumbria',232),(3735,'Denbighshire',232),(3736,'Derby',232),(3737,'Derbyshire',232),(3738,'Devon',232),(3739,'Dial Code Dungannon',232),(3740,'Didcot',232),(3741,'Dorset',232),(3742,'Dunbartonshire',232),(3743,'Durham',232),(3744,'East Dunbartonshire',232),(3745,'East Lothian',232),(3746,'East Midlands',232),(3747,'East Sussex',232),(3748,'East Yorkshire',232),(3749,'England',232),(3750,'Essex',232),(3751,'Fermanagh',232),(3752,'Fife',232),(3753,'Flintshire',232),(3754,'Fulham',232),(3755,'Gainsborough',232),(3756,'Glocestershire',232),(3757,'Gwent',232),(3758,'Hampshire',232),(3759,'Hants',232),(3760,'Herefordshire',232),(3761,'Hertfordshire',232),(3762,'Ireland',232),(3763,'Isle Of Man',232),(3764,'Isle of Wight',232),(3765,'Kenford',232),(3766,'Kent',232),(3767,'Kilmarnock',232),(3768,'Lanarkshire',232),(3769,'Lancashire',232),(3770,'Leicestershire',232),(3771,'Lincolnshire',232),(3772,'Llanymynech',232),(3773,'London',232),(3774,'Ludlow',232),(3775,'Manchester',232),(3776,'Mayfair',232),(3777,'Merseyside',232),(3778,'Mid Glamorgan',232),(3779,'Middlesex',232),(3780,'Mildenhall',232),(3781,'Monmouthshire',232),(3782,'Newton Stewart',232),(3783,'Norfolk',232),(3784,'North Humberside',232),(3785,'North Yorkshire',232),(3786,'Northamptonshire',232),(3787,'Northants',232),(3788,'Northern Ireland',232),(3789,'Northumberland',232),(3790,'Nottinghamshire',232),(3791,'Oxford',232),(3792,'Powys',232),(3793,'Roos-shire',232),(3794,'SUSSEX',232),(3795,'Sark',232),(3796,'Scotland',232),(3797,'Scottish Borders',232),(3798,'Shropshire',232),(3799,'Somerset',232),(3800,'South Glamorgan',232),(3801,'South Wales',232),(3802,'South Yorkshire',232),(3803,'Southwell',232),(3804,'Staffordshire',232),(3805,'Strabane',232),(3806,'Suffolk',232),(3807,'Surrey',232),(3808,'Twickenham',232),(3809,'Tyne and Wear',232),(3810,'Tyrone',232),(3811,'Utah',232),(3812,'Wales',232),(3813,'Warwickshire',232),(3814,'West Lothian',232),(3815,'West Midlands',232),(3816,'West Sussex',232),(3817,'West Yorkshire',232),(3818,'Whissendine',232),(3819,'Wiltshire',232),(3820,'Wokingham',232),(3821,'Worcestershire',232),(3822,'Wrexham',232),(3823,'Wurttemberg',232),(3824,'Yorkshire',232),(3825,'Alabama',233),(3826,'Alaska',233),(3827,'Arizona',233),(3828,'Arkansas',233),(3829,'Byram',233),(3830,'California',233),(3831,'Cokato',233),(3832,'Colorado',233),(3833,'Connecticut',233),(3834,'Delaware',233),(3835,'District of Columbia',233),(3836,'Florida',233),(3837,'Georgia',233),(3838,'Hawaii',233),(3839,'Idaho',233),(3840,'Illinois',233),(3841,'Indiana',233),(3842,'Iowa',233),(3843,'Kansas',233),(3844,'Kentucky',233),(3845,'Louisiana',233),(3846,'Lowa',233),(3847,'Maine',233),(3848,'Maryland',233),(3849,'Massachusetts',233),(3850,'Medfield',233),(3851,'Michigan',233),(3852,'Minnesota',233),(3853,'Mississippi',233),(3854,'Missouri',233),(3855,'Montana',233),(3856,'Nebraska',233),(3857,'Nevada',233),(3858,'New Hampshire',233),(3859,'New Jersey',233),(3860,'New Jersy',233),(3861,'New Mexico',233),(3862,'New York',233),(3863,'North Carolina',233),(3864,'North Dakota',233),(3865,'Ohio',233),(3866,'Oklahoma',233),(3867,'Ontario',233),(3868,'Oregon',233),(3869,'Pennsylvania',233),(3870,'Ramey',233),(3871,'Rhode Island',233),(3872,'South Carolina',233),(3873,'South Dakota',233),(3874,'Sublimity',233),(3875,'Tennessee',233),(3876,'Texas',233),(3877,'Trimble',233),(3878,'Utah',233),(3879,'Vermont',233),(3880,'Virginia',233),(3881,'Washington',233),(3882,'West Virginia',233),(3883,'Wisconsin',233),(3884,'Wyoming',233),(3885,'United States Minor Outlying I',234),(3886,'Artigas',235),(3887,'Canelones',235),(3888,'Cerro Largo',235),(3889,'Colonia',235),(3890,'Durazno',235),(3891,'FLorida',235),(3892,'Flores',235),(3893,'Lavalleja',235),(3894,'Maldonado',235),(3895,'Montevideo',235),(3896,'Paysandu',235),(3897,'Rio Negro',235),(3898,'Rivera',235),(3899,'Rocha',235),(3900,'Salto',235),(3901,'San Jose',235),(3902,'Soriano',235),(3903,'Tacuarembo',235),(3904,'Treinta y Tres',235),(3905,'Andijon',236),(3906,'Buhoro',236),(3907,'Buxoro Viloyati',236),(3908,'Cizah',236),(3909,'Fargona',236),(3910,'Horazm',236),(3911,'Kaskadar',236),(3912,'Korakalpogiston',236),(3913,'Namangan',236),(3914,'Navoi',236),(3915,'Samarkand',236),(3916,'Sirdare',236),(3917,'Surhondar',236),(3918,'Toskent',236),(3919,'Malampa',237),(3920,'Penama',237),(3921,'Sanma',237),(3922,'Shefa',237),(3923,'Tafea',237),(3924,'Torba',237),(3925,'Vatican City State (Holy See)',238),(3926,'Amazonas',239),(3927,'Anzoategui',239),(3928,'Apure',239),(3929,'Aragua',239),(3930,'Barinas',239),(3931,'Bolivar',239),(3932,'Carabobo',239),(3933,'Cojedes',239),(3934,'Delta Amacuro',239),(3935,'Distrito Federal',239),(3936,'Falcon',239),(3937,'Guarico',239),(3938,'Lara',239),(3939,'Merida',239),(3940,'Miranda',239),(3941,'Monagas',239),(3942,'Nueva Esparta',239),(3943,'Portuguesa',239),(3944,'Sucre',239),(3945,'Tachira',239),(3946,'Trujillo',239),(3947,'Vargas',239),(3948,'Yaracuy',239),(3949,'Zulia',239),(3950,'Bac Giang',240),(3951,'Binh Dinh',240),(3952,'Binh Duong',240),(3953,'Da Nang',240),(3954,'Dong Bang Song Cuu Long',240),(3955,'Dong Bang Song Hong',240),(3956,'Dong Nai',240),(3957,'Dong Nam Bo',240),(3958,'Duyen Hai Mien Trung',240),(3959,'Hanoi',240),(3960,'Hung Yen',240),(3961,'Khu Bon Cu',240),(3962,'Long An',240),(3963,'Mien Nui Va Trung Du',240),(3964,'Thai Nguyen',240),(3965,'Thanh Pho Ho Chi Minh',240),(3966,'Thu Do Ha Noi',240),(3967,'Tinh Can Tho',240),(3968,'Tinh Da Nang',240),(3969,'Tinh Gia Lai',240),(3970,'Anegada',241),(3971,'Jost van Dyke',241),(3972,'Tortola',241),(3973,'Saint Croix',242),(3974,'Saint John',242),(3975,'Saint Thomas',242),(3976,'Alo',243),(3977,'Singave',243),(3978,'Wallis',243),(3979,'Bu Jaydur',244),(3980,'Wad-adh-Dhahab',244),(3981,'al-\\\'Ayun',244),(3982,'as-Samarah',244),(3983,'\\\'Adan',245),(3984,'Abyan',245),(3985,'Dhamar',245),(3986,'Hadramaut',245),(3987,'Hajjah',245),(3988,'Hudaydah',245),(3989,'Ibb',245),(3990,'Lahij',245),(3991,'Ma\\\'rib',245),(3992,'Madinat San\\\'a',245),(3993,'Sa\\\'dah',245),(3994,'Sana',245),(3995,'Shabwah',245),(3996,'Ta\\\'izz',245),(3997,'al-Bayda',245),(3998,'al-Hudaydah',245),(3999,'al-Jawf',245),(4000,'al-Mahrah',245),(4001,'al-Mahwit',245),(4002,'Central',246),(4003,'Copperbelt',246),(4004,'Eastern',246),(4005,'Luapala',246),(4006,'Lusaka',246),(4007,'North-Western',246),(4008,'Northern',246),(4009,'Southern',246),(4010,'Western',246),(4011,'Bulawayo',247),(4012,'Harare',247),(4013,'Manicaland',247),(4014,'Mashonaland Central',247),(4015,'Mashonaland East',247),(4016,'Mashonaland West',247),(4017,'Masvingo',247),(4018,'Matabeleland North',247),(4019,'Matabeleland South',247),(4020,'Midlands',247),(4021,'American Samoa',233),(4022,'Federated States Of Micronesia',233),(4023,'Guam',233),(4024,'Marshall Islands',233),(4025,'Northern Mariana Islands',233),(4026,'Palau',233),(4027,'Puerto Rico',233),(4028,'Virgin Islands',233);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_settings`
--

DROP TABLE IF EXISTS `storage_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage` varchar(255) DEFAULT 'local',
  `aws_key` varchar(255) DEFAULT NULL,
  `aws_secret` varchar(255) DEFAULT NULL,
  `aws_bucket` varchar(255) DEFAULT NULL,
  `aws_region` varchar(255) DEFAULT 'us-west-2',
  `aws_base_url` varchar(1000) DEFAULT 'https://s3.amazonaws.com/',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_settings`
--

LOCK TABLES `storage_settings` WRITE;
/*!40000 ALTER TABLE `storage_settings` DISABLE KEYS */;
INSERT INTO `storage_settings` VALUES (1,'local',NULL,NULL,NULL,'us-west-2','https://s3.amazonaws.com/');
/*!40000 ALTER TABLE `storage_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscribers`
--

DROP TABLE IF EXISTS `subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscribers`
--

LOCK TABLES `subscribers` WRITE;
/*!40000 ALTER TABLE `subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_id` varchar(100) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(30) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `payment_amount` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payout_accounts`
--

DROP TABLE IF EXISTS `user_payout_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payout_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payout_paypal_email` varchar(255) DEFAULT NULL,
  `iban_full_name` varchar(255) DEFAULT NULL,
  `iban_country_id` varchar(20) DEFAULT NULL,
  `iban_bank_name` varchar(255) DEFAULT NULL,
  `iban_number` varchar(500) DEFAULT NULL,
  `swift_full_name` varchar(255) DEFAULT NULL,
  `swift_address` varchar(500) DEFAULT NULL,
  `swift_state` varchar(255) DEFAULT NULL,
  `swift_city` varchar(255) DEFAULT NULL,
  `swift_postcode` varchar(100) DEFAULT NULL,
  `swift_country_id` varchar(20) DEFAULT NULL,
  `swift_bank_account_holder_name` varchar(255) DEFAULT NULL,
  `swift_iban` varchar(255) DEFAULT NULL,
  `swift_code` varchar(255) DEFAULT NULL,
  `swift_bank_name` varchar(255) DEFAULT NULL,
  `swift_bank_branch_city` varchar(255) DEFAULT NULL,
  `swift_bank_branch_country_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payout_accounts`
--

LOCK TABLES `user_payout_accounts` WRITE;
/*!40000 ALTER TABLE `user_payout_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_payout_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reviews`
--

DROP TABLE IF EXISTS `user_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` varchar(10000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reviews`
--

LOCK TABLES `user_reviews` WRITE;
/*!40000 ALTER TABLE `user_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT 'name@domain.com',
  `email_status` tinyint(1) DEFAULT '0',
  `token` varchar(500) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'member',
  `balance` bigint(20) DEFAULT '0',
  `number_of_sales` int(11) DEFAULT '0',
  `user_type` varchar(20) DEFAULT 'registered',
  `facebook_id` varchar(255) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  `shop_name` varchar(255) DEFAULT NULL,
  `about_me` varchar(5000) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `zip_code` varchar(50) DEFAULT NULL,
  `show_email` tinyint(1) DEFAULT '0',
  `show_phone` tinyint(1) DEFAULT '0',
  `show_location` tinyint(1) DEFAULT '0',
  `facebook_url` varchar(500) DEFAULT NULL,
  `twitter_url` varchar(500) DEFAULT NULL,
  `instagram_url` varchar(500) DEFAULT NULL,
  `pinterest_url` varchar(500) DEFAULT NULL,
  `linkedin_url` varchar(500) DEFAULT NULL,
  `vk_url` varchar(500) DEFAULT NULL,
  `youtube_url` varchar(500) DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `show_rss_feeds` tinyint(1) DEFAULT '0',
  `send_email_new_message` tinyint(1) DEFAULT '0',
  `shipping_first_name` varchar(255) DEFAULT NULL,
  `shipping_last_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(100) DEFAULT NULL,
  `shipping_phone_number` varchar(100) DEFAULT NULL,
  `shipping_address_1` varchar(500) DEFAULT NULL,
  `shipping_address_2` varchar(500) DEFAULT NULL,
  `shipping_country_id` varchar(20) DEFAULT NULL,
  `shipping_state` varchar(255) DEFAULT NULL,
  `shipping_city` varchar(255) DEFAULT NULL,
  `shipping_zip_code` varchar(50) DEFAULT NULL,
  `is_active_shop_request` tinyint(1) DEFAULT '0',
  `send_email_when_item_sold` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test','test','test@test.com',1,'5db05b1b0e51a8-87774543-76831259','$2a$08$ERs2O9LiE1Rj4qO5hQEKquIceIVrewjDsp4FX857lXlswnp97hNh2','member',0,0,'registered',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-23 07:00:56',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2019-10-23 06:52:27'),(2,'Cili','cili','visualexperiencecom@gmail.com',1,'5db05d4924dc70-48917027-53054554','$2a$08$BE3pMDopaNdYu/e6zWLfsu7Z5VzXnbg0jguvdLHMhXsRx7ZrK8Nwa','admin',0,0,'registered',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-10-23 07:03:40',0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2019-10-23 07:01:45');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23 17:04:33
