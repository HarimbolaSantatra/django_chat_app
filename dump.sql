-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: django_chat
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Current Database: `django_chat`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django_chat` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `django_chat`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add group',1,'add_group'),(2,'Can change group',1,'change_group'),(3,'Can delete group',1,'delete_group'),(4,'Can view group',1,'view_group'),(5,'Can add user',2,'add_user'),(6,'Can change user',2,'change_user'),(7,'Can delete user',2,'delete_user'),(8,'Can view user',2,'view_user'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session'),(33,'Can add chat user',9,'add_chatuser'),(34,'Can change chat user',9,'change_chatuser'),(35,'Can delete chat user',9,'delete_chatuser'),(36,'Can view chat user',9,'view_chatuser'),(37,'Can add discussion group',1,'add_discussiongroup'),(38,'Can change discussion group',1,'change_discussiongroup'),(39,'Can delete discussion group',1,'delete_discussiongroup'),(40,'Can view discussion group',1,'view_discussiongroup'),(41,'Can add room',10,'add_room'),(42,'Can change room',10,'change_room'),(43,'Can delete room',10,'delete_room'),(44,'Can view room',10,'view_room'),(45,'Can add chat',11,'add_chat'),(46,'Can change chat',11,'change_chat'),(47,'Can delete chat',11,'delete_chat'),(48,'Can view chat',11,'view_chat');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$bbqZT30THYr52t9puCX490$nO0pUCv/xRgip68STvGWf5o2GET0VBIKH8n/oeTukQI=','2023-03-23 18:03:01.236967',1,'santatra','','','',1,1,'2023-03-10 12:02:18.000000'),(4,'pbkdf2_sha256$390000$Gavj0iar0XpN1LrrhbUCY5$cY08fDyT16Fpp2covTBR+Ni8dUyd5HcbEGKsQNdjz40=','2023-03-14 11:09:20.626157',1,'root','','','root@gmail.com',1,1,'2023-03-11 15:46:36.697752');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-03-11 15:47:15.736761','1','santatra',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',6,4),(2,'2023-03-11 15:48:03.503367','1','Chat object (1)',1,'[{\"added\": {}}]',11,4),(3,'2023-03-11 15:48:16.619385','2','Chat object (2)',1,'[{\"added\": {}}]',11,4),(4,'2023-03-14 15:07:24.371355','3','Room object (3)',1,'[{\"added\": {}}]',10,1),(5,'2023-03-23 18:03:09.162757','70','Chat object (70)',3,'',11,1),(6,'2023-03-23 18:03:09.350690','69','Chat object (69)',3,'',11,1),(7,'2023-03-23 18:03:09.575105','68','Chat object (68)',3,'',11,1),(8,'2023-03-23 18:03:09.659162','67','Chat object (67)',3,'',11,1),(9,'2023-03-23 18:03:09.759317','66','Chat object (66)',3,'',11,1),(10,'2023-03-23 18:03:09.887080','65','Chat object (65)',3,'',11,1),(11,'2023-03-23 18:03:09.987296','64','Chat object (64)',3,'',11,1),(12,'2023-03-23 18:03:10.070603','63','Chat object (63)',3,'',11,1),(13,'2023-03-23 18:03:10.187903','62','Chat object (62)',3,'',11,1),(14,'2023-03-23 18:03:10.281837','61','Chat object (61)',3,'',11,1),(15,'2023-03-23 18:03:10.377486','60','Chat object (60)',3,'',11,1),(16,'2023-03-23 18:03:10.466451','59','Chat object (59)',3,'',11,1),(17,'2023-03-23 18:03:10.559663','58','Chat object (58)',3,'',11,1),(18,'2023-03-23 18:03:10.659437','57','Chat object (57)',3,'',11,1),(19,'2023-03-23 18:03:10.759286','56','Chat object (56)',3,'',11,1),(20,'2023-03-23 18:03:10.859341','55','Chat object (55)',3,'',11,1),(21,'2023-03-23 18:03:10.970495','54','Chat object (54)',3,'',11,1),(22,'2023-03-23 18:03:11.070417','53','Chat object (53)',3,'',11,1),(23,'2023-03-23 18:03:11.168294','52','Chat object (52)',3,'',11,1),(24,'2023-03-23 18:03:11.268583','51','Chat object (51)',3,'',11,1),(25,'2023-03-23 18:03:11.348263','50','Chat object (50)',3,'',11,1),(26,'2023-03-23 18:03:11.435768','49','Chat object (49)',3,'',11,1),(27,'2023-03-23 18:03:11.536062','48','Chat object (48)',3,'',11,1),(28,'2023-03-23 18:03:11.636475','47','Chat object (47)',3,'',11,1),(29,'2023-03-23 18:03:11.736960','46','Chat object (46)',3,'',11,1),(30,'2023-03-23 18:03:11.837186','45','Chat object (45)',3,'',11,1),(31,'2023-03-23 18:03:11.937468','44','Chat object (44)',3,'',11,1),(32,'2023-03-23 18:03:12.049559','43','Chat object (43)',3,'',11,1),(33,'2023-03-23 18:03:12.159694','42','Chat object (42)',3,'',11,1),(34,'2023-03-23 18:03:12.249922','41','Chat object (41)',3,'',11,1),(35,'2023-03-23 18:03:12.359756','40','Chat object (40)',3,'',11,1),(36,'2023-03-23 18:03:12.450730','39','Chat object (39)',3,'',11,1),(37,'2023-03-23 18:03:12.559773','38','Chat object (38)',3,'',11,1),(38,'2023-03-23 18:03:12.659778','37','Chat object (37)',3,'',11,1),(39,'2023-03-23 18:03:12.759837','36','Chat object (36)',3,'',11,1),(40,'2023-03-23 18:03:12.859902','35','Chat object (35)',3,'',11,1),(41,'2023-03-23 18:03:12.959804','34','Chat object (34)',3,'',11,1),(42,'2023-03-23 18:03:13.059766','33','Chat object (33)',3,'',11,1),(43,'2023-03-23 18:03:13.159777','32','Chat object (32)',3,'',11,1),(44,'2023-03-23 18:03:13.259867','31','Chat object (31)',3,'',11,1),(45,'2023-03-23 18:03:13.359920','30','Chat object (30)',3,'',11,1),(46,'2023-03-23 18:03:13.459868','29','Chat object (29)',3,'',11,1),(47,'2023-03-23 18:03:13.570924','28','Chat object (28)',3,'',11,1),(48,'2023-03-23 18:03:13.693292','27','Chat object (27)',3,'',11,1),(49,'2023-03-23 18:03:13.788942','26','Chat object (26)',3,'',11,1),(50,'2023-03-23 18:03:13.878222','25','Chat object (25)',3,'',11,1),(51,'2023-03-23 18:03:13.959825','24','Chat object (24)',3,'',11,1),(52,'2023-03-23 18:03:14.045381','23','Chat object (23)',3,'',11,1),(53,'2023-03-23 18:03:14.145594','22','Chat object (22)',3,'',11,1),(54,'2023-03-23 18:03:14.245834','21','Chat object (21)',3,'',11,1),(55,'2023-03-23 18:03:14.346012','20','Chat object (20)',3,'',11,1),(56,'2023-03-23 18:03:14.446330','19','Chat object (19)',3,'',11,1),(57,'2023-03-23 18:03:14.546568','18','Chat object (18)',3,'',11,1),(58,'2023-03-23 18:03:14.671040','17','Chat object (17)',3,'',11,1),(59,'2023-03-23 18:03:14.770973','16','Chat object (16)',3,'',11,1),(60,'2023-03-23 18:03:14.859999','15','Chat object (15)',3,'',11,1),(61,'2023-03-23 18:03:14.936738','14','Chat object (14)',3,'',11,1),(62,'2023-03-23 18:03:15.014647','13','Chat object (13)',3,'',11,1),(63,'2023-03-23 18:03:15.103912','12','Chat object (12)',3,'',11,1),(64,'2023-03-23 18:03:15.192952','11','Chat object (11)',3,'',11,1),(65,'2023-03-23 18:03:15.259954','10','Chat object (10)',3,'',11,1),(66,'2023-03-23 18:03:15.393530','9','Chat object (9)',3,'',11,1),(67,'2023-03-23 18:03:15.482643','8','Chat object (8)',3,'',11,1),(68,'2023-03-23 18:03:15.571163','7','Chat object (7)',3,'',11,1),(69,'2023-03-23 18:03:15.671170','6','Chat object (6)',3,'',11,1),(70,'2023-03-23 18:03:15.782263','5','Chat object (5)',3,'',11,1),(71,'2023-03-23 18:03:15.883801','4','Chat object (4)',3,'',11,1),(72,'2023-03-23 18:03:15.971156','3','Chat object (3)',3,'',11,1),(73,'2023-03-23 18:03:16.071161','2','Chat object (2)',3,'',11,1),(74,'2023-03-23 18:03:16.170856','1','Chat object (1)',3,'',11,1),(75,'2023-03-23 18:03:36.233144','3','mamy',3,'',6,1),(76,'2023-03-23 18:03:36.451587','2','nicolas',3,'',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(7,'contenttypes','contenttype'),(11,'main_app','chat'),(9,'main_app','chatuser'),(1,'main_app','discussiongroup'),(10,'main_app','room'),(2,'main_app','user'),(8,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-03-10 11:52:14.443926'),(2,'auth','0001_initial','2023-03-10 11:52:32.683230'),(3,'admin','0001_initial','2023-03-10 11:52:36.604079'),(4,'admin','0002_logentry_remove_auto_add','2023-03-10 11:52:36.724754'),(5,'admin','0003_logentry_add_action_flag_choices','2023-03-10 11:52:36.859775'),(6,'contenttypes','0002_remove_content_type_name','2023-03-10 11:52:38.643121'),(7,'auth','0002_alter_permission_name_max_length','2023-03-10 11:52:40.797694'),(8,'auth','0003_alter_user_email_max_length','2023-03-10 11:52:41.542050'),(9,'auth','0004_alter_user_username_opts','2023-03-10 11:52:41.737686'),(10,'auth','0005_alter_user_last_login_null','2023-03-10 11:52:43.549301'),(11,'auth','0006_require_contenttypes_0002','2023-03-10 11:52:43.720934'),(12,'auth','0007_alter_validators_add_error_messages','2023-03-10 11:52:43.842891'),(13,'auth','0008_alter_user_username_max_length','2023-03-10 11:52:47.212678'),(14,'auth','0009_alter_user_last_name_max_length','2023-03-10 11:52:49.262257'),(15,'auth','0010_alter_group_name_max_length','2023-03-10 11:52:49.759420'),(16,'auth','0011_update_proxy_permissions','2023-03-10 11:52:49.892325'),(17,'auth','0012_alter_user_first_name_max_length','2023-03-10 11:52:51.748236'),(18,'login','0001_initial','2023-03-10 11:52:53.935246'),(19,'login','0002_delete_group_delete_user','2023-03-10 11:52:56.181960'),(20,'main_app','0001_initial','2023-03-10 11:52:58.288640'),(21,'sessions','0001_initial','2023-03-10 11:52:59.749773'),(22,'main_app','0002_chatuser_delete_user_rename_group_discussiongroup_and_more','2023-03-10 12:28:45.124587'),(23,'main_app','0003_chat_room_delete_chatuser_delete_discussiongroup_and_more','2023-03-11 12:31:46.521919'),(24,'main_app','0004_alter_room_id','2023-03-11 12:34:59.211412'),(25,'main_app','0005_remove_room_users','2023-03-11 12:53:50.148805'),(26,'main_app','0006_chat_message_room_description_room_name','2023-03-11 15:14:27.347046');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('bkhts2hhccprxjbssmyfdu70w98cq6ij','.eJxVjDsOwyAQRO-ydYSMMTakTJ8zoGVZYueDJcBVlLsHS2485bw384WtcE74YbhCwVSxZoQLONzq7HbmltCQPHce6cVpB-GJ6bEKWlPNixe7Ig5axH0N_L4d7ulgxjK3tRmi1tJ6GVEq7iwxGvTsqTNSRz2SIRmtVxynCVVPo50UB8OBhrFvgd8fedJAFQ:1paupa:vqCcgYRTYePSTqMyaiSRsheKSfWRiHkOKUTq1h_oHY0','2023-03-25 08:43:58.657104'),('t5eb8sow50fnto5pj9h56giyola5we99','.eJxVzMEOwiAQBNB_4WwIrJSCR-9-Q7O7UKlWSEp7Mv67Jeml13kz8xVbjUvGTxQ3kScuM1ZxEQNuaxoaDVPYBc4ZIb9jbhBemJ9FcsnrMpFsFXlolY8S4nw_uqeDhDXt61FbMkYrA32POjrrOsBOkzNkHZK35LBTyobA7BktX0ErIPAOPcFoxO8P7N8-mw:1paewp:PfudEZIoRBXDWHaBwiEQoZEwj6vuxMbRaMhOA3EsbUs','2023-03-24 15:46:23.998133');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_chat`
--

DROP TABLE IF EXISTS `main_app_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_chat` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `room_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `message` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_app_chat_user_id_4cb7f3c6_fk_auth_user_id` (`user_id`),
  KEY `main_app_chat_room_id_ef91e316_fk` (`room_id`),
  CONSTRAINT `main_app_chat_room_id_ef91e316_fk` FOREIGN KEY (`room_id`) REFERENCES `main_app_room` (`id`),
  CONSTRAINT `main_app_chat_user_id_4cb7f3c6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_chat`
--

LOCK TABLES `main_app_chat` WRITE;
/*!40000 ALTER TABLE `main_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_app_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_app_room`
--

DROP TABLE IF EXISTS `main_app_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_app_room` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_app_room`
--

LOCK TABLES `main_app_room` WRITE;
/*!40000 ALTER TABLE `main_app_room` DISABLE KEYS */;
INSERT INTO `main_app_room` VALUES (1,'Main lobby','lobby'),(2,'room for test purposes','test'),(3,'Official formal room','formal');
/*!40000 ALTER TABLE `main_app_room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-23 18:11:28
