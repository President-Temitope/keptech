-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 172.26.0.2    Database: kep
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2021-02-22 00:25:42','2021-02-22 00:25:42'),(2,NULL,1,'Category 2','category-2','2021-02-22 00:25:42','2021-02-22 00:25:42');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,NULL,1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,NULL,4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,NULL,6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(57,7,'title','text','Title',1,1,1,1,1,1,'{}',2),(58,7,'brief','rich_text_box','Brief',1,1,1,1,1,1,'{}',3),(59,7,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"option1\",\"options\":{\"APPLICATION CLOSED\":\"APPLICATION CLOSED\",\"SUBMIT RESUME\":\"SUBMIT RESUME\"}}',4),(60,7,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',5),(61,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(62,8,'id','text','Id',1,0,0,0,0,0,'{}',1),(63,8,'image','text','Image',0,1,1,1,1,1,'{}',2),(64,8,'title','text','Title',1,1,1,1,1,1,'{}',3),(65,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(66,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(67,9,'id','text','Id',1,0,0,0,0,0,'{}',1),(68,9,'icon','text','Icon',1,1,1,1,1,1,'{}',2),(69,9,'name','text','Name',1,1,1,1,1,1,'{}',3),(70,9,'desc','text','Desc',1,1,1,1,1,1,'{}',4),(71,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(72,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(73,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(74,10,'name','text','Name',1,1,1,1,1,1,'{}',2),(75,10,'position','text','Position',1,1,1,1,1,1,'{}',3),(76,10,'linkedin','text','Linkedin',1,1,1,1,1,1,'{}',4),(77,10,'brief','text','Brief',0,1,1,1,1,1,'{}',5),(78,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(79,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2021-02-22 00:25:07','2021-02-22 00:25:07'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-02-22 00:25:07','2021-02-22 00:25:07'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2021-02-22 00:25:07','2021-02-22 00:25:07'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2021-02-22 00:25:41','2021-02-22 00:25:41'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2021-02-22 00:25:42','2021-02-22 00:25:42'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2021-02-22 00:25:42','2021-02-22 00:25:42'),(7,'internships','internships','Internship','Internships','voyager-archive','App\\Internship',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-02-25 00:25:18','2021-02-25 00:25:18'),(8,'services','services','Service','Services','voyager-wand','App\\Service',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-02-25 00:27:49','2021-02-25 00:27:49'),(9,'solutions','solutions','Solution','Solutions','voyager-flashlight','App\\Solution',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-02-25 00:29:16','2021-02-25 00:29:16'),(10,'teams','teams','Team','Teams','voyager-users','App\\Team',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2021-02-25 00:31:53','2021-02-25 00:31:53');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internships`
--

DROP TABLE IF EXISTS `internships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internships` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('APPLICATION CLOSED','SUBMIT RESUME') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SUBMIT RESUME',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internships`
--

LOCK TABLES `internships` WRITE;
/*!40000 ALTER TABLE `internships` DISABLE KEYS */;
/*!40000 ALTER TABLE `internships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2021-02-22 00:25:07','2021-02-22 00:25:07','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2021-02-22 00:25:07','2021-02-25 00:33:19','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2021-02-22 00:25:07','2021-02-22 00:25:07','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2021-02-22 00:25:07','2021-02-22 00:25:07','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,12,'2021-02-22 00:25:07','2021-02-25 00:33:33',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-02-22 00:25:07','2021-02-25 00:33:19','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-02-22 00:25:07','2021-02-25 00:33:19','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2021-02-22 00:25:07','2021-02-25 00:33:19','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2021-02-22 00:25:07','2021-02-25 00:33:19','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,13,'2021-02-22 00:25:07','2021-02-25 00:33:33','voyager.settings.index',NULL),(11,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2021-02-22 00:25:08','2021-02-25 00:33:19','voyager.hooks',NULL),(12,1,'Categories','','_self','voyager-categories',NULL,NULL,7,'2021-02-22 00:25:41','2021-02-25 00:33:19','voyager.categories.index',NULL),(13,1,'Posts','','_self','voyager-news',NULL,NULL,5,'2021-02-22 00:25:42','2021-02-25 00:33:19','voyager.posts.index',NULL),(14,1,'Pages','','_self','voyager-file-text',NULL,NULL,6,'2021-02-22 00:25:42','2021-02-25 00:33:19','voyager.pages.index',NULL),(15,1,'Internships','','_self','voyager-archive',NULL,NULL,8,'2021-02-25 00:25:18','2021-02-25 00:33:19','voyager.internships.index',NULL),(16,1,'Services','','_self','voyager-wand',NULL,NULL,9,'2021-02-25 00:27:49','2021-02-25 00:33:24','voyager.services.index',NULL),(17,1,'Solutions','','_self','voyager-flashlight',NULL,NULL,10,'2021-02-25 00:29:16','2021-02-25 00:33:28','voyager.solutions.index',NULL),(18,1,'Teams','','_self','voyager-users',NULL,NULL,11,'2021-02-25 00:31:53','2021-02-25 00:33:33','voyager.teams.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2021-02-22 00:25:07','2021-02-22 00:25:07');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2016_01_01_000000_add_voyager_user_fields',1),(3,'2016_01_01_000000_create_data_types_table',1),(4,'2016_05_19_173453_create_menu_table',1),(5,'2016_10_21_190000_create_roles_table',1),(6,'2016_10_21_190000_create_settings_table',1),(7,'2016_11_30_135954_create_permission_table',1),(8,'2016_11_30_141208_create_permission_role_table',1),(9,'2016_12_26_201236_data_types__add__server_side',1),(10,'2017_01_13_000000_add_route_to_menu_items_table',1),(11,'2017_01_14_005015_create_translations_table',1),(12,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(13,'2017_03_06_000000_add_controller_to_data_types_table',1),(14,'2017_04_21_000000_add_order_to_data_rows_table',1),(15,'2017_07_05_210000_add_policyname_to_data_types_table',1),(16,'2017_08_05_000000_add_group_to_settings_table',1),(17,'2017_11_26_013050_add_user_role_relationship',1),(18,'2017_11_26_015000_create_user_roles_table',1),(19,'2018_03_11_000000_add_user_settings',1),(20,'2018_03_14_000000_add_details_to_data_types_table',1),(21,'2018_03_16_000000_make_settings_value_nullable',1),(22,'2019_08_19_000000_create_failed_jobs_table',1),(23,'2016_01_01_000000_create_pages_table',2),(24,'2016_01_01_000000_create_posts_table',2),(25,'2016_02_15_204651_create_categories_table',2),(26,'2017_04_11_000000_alter_post_nullable_fields_table',2),(27,'2021_02_24_224450_create_teams_table',3),(28,'2021_02_24_224507_create_services_table',3),(29,'2021_02_24_224800_create_solutions_table',3),(30,'2021_02_24_225015_create_internships_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2021-02-22 00:25:42','2021-02-22 00:25:42');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(2,1),(2,3),(3,1),(3,3),(4,1),(4,3),(5,1),(5,3),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(11,3),(12,1),(12,3),(13,1),(14,1),(15,1),(16,1),(16,3),(17,1),(17,3),(18,1),(18,3),(19,1),(19,3),(20,1),(20,3),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(26,3),(27,1),(27,3),(28,1),(28,3),(29,1),(29,3),(30,1),(30,3),(31,1),(31,3),(32,1),(32,3),(33,1),(33,3),(34,1),(34,3),(35,1),(35,3),(36,1),(36,3),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2021-02-22 00:25:07','2021-02-22 00:25:07'),(2,'browse_bread',NULL,'2021-02-22 00:25:07','2021-02-22 00:25:07'),(3,'browse_database',NULL,'2021-02-22 00:25:07','2021-02-22 00:25:07'),(4,'browse_media',NULL,'2021-02-22 00:25:07','2021-02-22 00:25:07'),(5,'browse_compass',NULL,'2021-02-22 00:25:07','2021-02-22 00:25:07'),(6,'browse_menus','menus','2021-02-22 00:25:07','2021-02-22 00:25:07'),(7,'read_menus','menus','2021-02-22 00:25:07','2021-02-22 00:25:07'),(8,'edit_menus','menus','2021-02-22 00:25:07','2021-02-22 00:25:07'),(9,'add_menus','menus','2021-02-22 00:25:07','2021-02-22 00:25:07'),(10,'delete_menus','menus','2021-02-22 00:25:07','2021-02-22 00:25:07'),(11,'browse_roles','roles','2021-02-22 00:25:07','2021-02-22 00:25:07'),(12,'read_roles','roles','2021-02-22 00:25:07','2021-02-22 00:25:07'),(13,'edit_roles','roles','2021-02-22 00:25:07','2021-02-22 00:25:07'),(14,'add_roles','roles','2021-02-22 00:25:07','2021-02-22 00:25:07'),(15,'delete_roles','roles','2021-02-22 00:25:07','2021-02-22 00:25:07'),(16,'browse_users','users','2021-02-22 00:25:07','2021-02-22 00:25:07'),(17,'read_users','users','2021-02-22 00:25:07','2021-02-22 00:25:07'),(18,'edit_users','users','2021-02-22 00:25:07','2021-02-22 00:25:07'),(19,'add_users','users','2021-02-22 00:25:07','2021-02-22 00:25:07'),(20,'delete_users','users','2021-02-22 00:25:07','2021-02-22 00:25:07'),(21,'browse_settings','settings','2021-02-22 00:25:07','2021-02-22 00:25:07'),(22,'read_settings','settings','2021-02-22 00:25:07','2021-02-22 00:25:07'),(23,'edit_settings','settings','2021-02-22 00:25:07','2021-02-22 00:25:07'),(24,'add_settings','settings','2021-02-22 00:25:07','2021-02-22 00:25:07'),(25,'delete_settings','settings','2021-02-22 00:25:07','2021-02-22 00:25:07'),(26,'browse_hooks',NULL,'2021-02-22 00:25:08','2021-02-22 00:25:08'),(27,'browse_categories','categories','2021-02-22 00:25:42','2021-02-22 00:25:42'),(28,'read_categories','categories','2021-02-22 00:25:42','2021-02-22 00:25:42'),(29,'edit_categories','categories','2021-02-22 00:25:42','2021-02-22 00:25:42'),(30,'add_categories','categories','2021-02-22 00:25:42','2021-02-22 00:25:42'),(31,'delete_categories','categories','2021-02-22 00:25:42','2021-02-22 00:25:42'),(32,'browse_posts','posts','2021-02-22 00:25:42','2021-02-22 00:25:42'),(33,'read_posts','posts','2021-02-22 00:25:42','2021-02-22 00:25:42'),(34,'edit_posts','posts','2021-02-22 00:25:42','2021-02-22 00:25:42'),(35,'add_posts','posts','2021-02-22 00:25:42','2021-02-22 00:25:42'),(36,'delete_posts','posts','2021-02-22 00:25:42','2021-02-22 00:25:42'),(37,'browse_pages','pages','2021-02-22 00:25:42','2021-02-22 00:25:42'),(38,'read_pages','pages','2021-02-22 00:25:42','2021-02-22 00:25:42'),(39,'edit_pages','pages','2021-02-22 00:25:42','2021-02-22 00:25:42'),(40,'add_pages','pages','2021-02-22 00:25:42','2021-02-22 00:25:42'),(41,'delete_pages','pages','2021-02-22 00:25:42','2021-02-22 00:25:42'),(42,'browse_internships','internships','2021-02-25 00:25:18','2021-02-25 00:25:18'),(43,'read_internships','internships','2021-02-25 00:25:18','2021-02-25 00:25:18'),(44,'edit_internships','internships','2021-02-25 00:25:18','2021-02-25 00:25:18'),(45,'add_internships','internships','2021-02-25 00:25:18','2021-02-25 00:25:18'),(46,'delete_internships','internships','2021-02-25 00:25:18','2021-02-25 00:25:18'),(47,'browse_services','services','2021-02-25 00:27:49','2021-02-25 00:27:49'),(48,'read_services','services','2021-02-25 00:27:49','2021-02-25 00:27:49'),(49,'edit_services','services','2021-02-25 00:27:49','2021-02-25 00:27:49'),(50,'add_services','services','2021-02-25 00:27:49','2021-02-25 00:27:49'),(51,'delete_services','services','2021-02-25 00:27:49','2021-02-25 00:27:49'),(52,'browse_solutions','solutions','2021-02-25 00:29:16','2021-02-25 00:29:16'),(53,'read_solutions','solutions','2021-02-25 00:29:16','2021-02-25 00:29:16'),(54,'edit_solutions','solutions','2021-02-25 00:29:16','2021-02-25 00:29:16'),(55,'add_solutions','solutions','2021-02-25 00:29:16','2021-02-25 00:29:16'),(56,'delete_solutions','solutions','2021-02-25 00:29:16','2021-02-25 00:29:16'),(57,'browse_teams','teams','2021-02-25 00:31:53','2021-02-25 00:31:53'),(58,'read_teams','teams','2021-02-25 00:31:53','2021-02-25 00:31:53'),(59,'edit_teams','teams','2021-02-25 00:31:53','2021-02-25 00:31:53'),(60,'add_teams','teams','2021-02-25 00:31:53','2021-02-25 00:31:53'),(61,'delete_teams','teams','2021-02-25 00:31:53','2021-02-25 00:31:53');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-02-22 00:25:42','2021-02-22 00:25:42'),(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-02-22 00:25:42','2021-02-22 00:25:42'),(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-02-22 00:25:42','2021-02-22 00:25:42'),(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2021-02-22 00:25:42','2021-02-22 00:25:42');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Super Administrator','2021-02-22 00:25:07','2021-02-24 22:38:27'),(2,'user','Normal User','2021-02-22 00:25:07','2021-02-22 00:25:07'),(3,'Administrator','Admin','2021-02-24 22:39:44','2021-02-24 22:39:44');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Kep Technologies Limited','','text',1,'Site'),(2,'site.description','Site Description','Empowered by Innovation','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),(6,'admin.title','Admin Title','Kep Technologies Limited','','text',1,'Admin'),(7,'admin.description','Admin Description','Empowered by Innovation','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),(11,'site.address','Address',NULL,NULL,'text',6,'Site'),(12,'site.instagram','Instagram',NULL,NULL,'text',7,'Site'),(13,'site.twitter','Twitter',NULL,NULL,'text',8,'Site'),(14,'site.facebook','Facebook',NULL,NULL,'text',9,'Site'),(15,'site.phone','Phone',NULL,NULL,'text',10,'Site'),(16,'site.email','Email',NULL,NULL,'text',11,'Site');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solutions`
--

DROP TABLE IF EXISTS `solutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solutions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solutions`
--

LOCK TABLES `solutions` WRITE;
/*!40000 ALTER TABLE `solutions` DISABLE KEYS */;
/*!40000 ALTER TABLE `solutions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2021-02-22 00:25:42','2021-02-22 00:25:42'),(2,'data_types','display_name_singular',6,'pt','Página','2021-02-22 00:25:42','2021-02-22 00:25:42'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2021-02-22 00:25:42','2021-02-22 00:25:42'),(4,'data_types','display_name_singular',4,'pt','Categoria','2021-02-22 00:25:42','2021-02-22 00:25:42'),(5,'data_types','display_name_singular',2,'pt','Menu','2021-02-22 00:25:42','2021-02-22 00:25:42'),(6,'data_types','display_name_singular',3,'pt','Função','2021-02-22 00:25:42','2021-02-22 00:25:42'),(7,'data_types','display_name_plural',5,'pt','Posts','2021-02-22 00:25:42','2021-02-22 00:25:42'),(8,'data_types','display_name_plural',6,'pt','Páginas','2021-02-22 00:25:42','2021-02-22 00:25:42'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2021-02-22 00:25:42','2021-02-22 00:25:42'),(10,'data_types','display_name_plural',4,'pt','Categorias','2021-02-22 00:25:42','2021-02-22 00:25:42'),(11,'data_types','display_name_plural',2,'pt','Menus','2021-02-22 00:25:42','2021-02-22 00:25:42'),(12,'data_types','display_name_plural',3,'pt','Funções','2021-02-22 00:25:42','2021-02-22 00:25:42'),(13,'categories','slug',1,'pt','categoria-1','2021-02-22 00:25:42','2021-02-22 00:25:42'),(14,'categories','name',1,'pt','Categoria 1','2021-02-22 00:25:42','2021-02-22 00:25:42'),(15,'categories','slug',2,'pt','categoria-2','2021-02-22 00:25:42','2021-02-22 00:25:42'),(16,'categories','name',2,'pt','Categoria 2','2021-02-22 00:25:42','2021-02-22 00:25:42'),(17,'pages','title',1,'pt','Olá Mundo','2021-02-22 00:25:42','2021-02-22 00:25:42'),(18,'pages','slug',1,'pt','ola-mundo','2021-02-22 00:25:42','2021-02-22 00:25:42'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2021-02-22 00:25:42','2021-02-22 00:25:42'),(20,'menu_items','title',1,'pt','Painel de Controle','2021-02-22 00:25:42','2021-02-22 00:25:42'),(21,'menu_items','title',2,'pt','Media','2021-02-22 00:25:42','2021-02-22 00:25:42'),(22,'menu_items','title',13,'pt','Publicações','2021-02-22 00:25:42','2021-02-22 00:25:42'),(23,'menu_items','title',3,'pt','Utilizadores','2021-02-22 00:25:42','2021-02-22 00:25:42'),(24,'menu_items','title',12,'pt','Categorias','2021-02-22 00:25:42','2021-02-22 00:25:42'),(25,'menu_items','title',14,'pt','Páginas','2021-02-22 00:25:42','2021-02-22 00:25:42'),(26,'menu_items','title',4,'pt','Funções','2021-02-22 00:25:42','2021-02-22 00:25:42'),(27,'menu_items','title',5,'pt','Ferramentas','2021-02-22 00:25:42','2021-02-22 00:25:42'),(28,'menu_items','title',6,'pt','Menus','2021-02-22 00:25:43','2021-02-22 00:25:43'),(29,'menu_items','title',7,'pt','Base de dados','2021-02-22 00:25:43','2021-02-22 00:25:43'),(30,'menu_items','title',10,'pt','Configurações','2021-02-22 00:25:43','2021-02-22 00:25:43');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/default.png',NULL,'$2y$10$LjwEe58S7jJc6h.pORSQ6eJgerlPAWBPpLx0kZ9AWNhl.nFp2OhmG','FK1My0C11FFAcsZ6fTIdWDpzvqO0IP6739FbrmZBlbMVkYCucVR6pPliKP9N',NULL,'2021-02-22 00:25:42','2021-02-22 00:25:42');
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

-- Dump completed on 2021-02-26 19:24:48
