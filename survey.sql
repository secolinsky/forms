-- MySQL dump 10.13  Distrib 5.1.54, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: survey
-- ------------------------------------------------------
-- Server version	5.1.54-1ubuntu4

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_message`
--

DROP TABLE IF EXISTS `auth_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_message`
--

LOCK TABLES `auth_message` WRITE;
/*!40000 ALTER TABLE `auth_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add section',9,'add_section'),(26,'Can change section',9,'change_section'),(27,'Can delete section',9,'delete_section'),(28,'Can add choice',10,'add_choice'),(29,'Can change choice',10,'change_choice'),(30,'Can delete choice',10,'delete_choice');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'monty','','','monty@lenovo.com','sha1$6113d$aec24de0abdc96c9ba167ac30cff008407a7fc16',1,1,1,'2011-06-14 21:37:49','2011-06-13 23:26:08');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2011-06-14 17:33:29',1,9,'1','Practice',1,''),(2,'2011-06-14 17:33:53',1,9,'1','Practice',2,'Added choice \"Option 4\". Added choice \"Option5\". Added choice \"Option 6\". Added choice \"option 7 \". Added choice \"option 8\".'),(3,'2011-06-14 17:34:16',1,9,'2','Practice 1',1,''),(4,'2011-06-14 21:14:39',1,9,'2','Pain Intensity',2,'Changed title. Added choice \"Pain killers have no effect on the pain and I do not use them.\". Changed choice for choice \"I can tolerate the pain I have without having to use pain killers\". Changed choice for choice \"The pain is bad but I manage without taking pain killers.\". Changed choice for choice \"Pain killers give complete relief from pain \". Changed choice for choice \"Pain killers give moderate relief from pain\". Changed choice for choice \"Pain killers give very little relief from pain.\".'),(5,'2011-06-14 21:15:09',1,9,'2','Pain Intensity',2,'No fields changed.'),(6,'2011-06-14 21:17:01',1,9,'1','Standing (Remember, standing is NOT walking.)',2,'Changed title. Changed choice for choice \"I can stand as long as I want without extra pain.\". Changed choice for choice \"I can stand as long as I want but it gives me extra pain. \". Changed choice for choice \"Pain prevents me from standing for more than 1 hour.\". Changed choice for choice \"Pain prevents me from standing for more than 30 minutes.\". Changed choice for choice \"Pain prevents me from standing for more than 10 minutes.\". Changed choice for choice \"Pain prevents me from standing at all.\". Deleted choice \"option 7 \". Deleted choice \"option 8\".'),(7,'2011-06-14 21:18:49',1,9,'3','Personal Care ',1,''),(8,'2011-06-14 21:19:51',1,9,'4','Sleeping',1,''),(9,'2011-06-14 21:20:18',1,9,'4','Sleeping',2,'Added choice \"Pain prevents me from sleeping at all.\".'),(10,'2011-06-14 21:21:39',1,9,'5','Lifting',1,''),(11,'2011-06-14 21:21:47',1,9,'5','Lifting',2,'No fields changed.'),(12,'2011-06-14 21:22:57',1,9,'6','Sex Life (by pain = for fear of causing pain)',1,''),(13,'2011-06-14 21:24:23',1,9,'7','Walking (bad question)',1,''),(14,'2011-06-14 21:25:12',1,9,'8','Social Life',1,''),(15,'2011-06-14 21:25:41',1,9,'8','Social Life',2,'Added choice \"I have no social life because of pain\".'),(16,'2011-06-14 21:26:47',1,9,'9','Sitting (\"Favorite chair\" includes a recliner.)',1,''),(17,'2011-06-14 21:27:57',1,9,'10','Traveling',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'section','survey','section'),(10,'choice','survey','choice');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3bd5e711f32f8e0d140c5286fa1460ed','N2ExMDk4Y2I2YWU5MTVjMmUwMGFiYWYxMWE3N2JmNTM5Yzc5MmY2NTqAAn1xAS4=\n','2011-06-28 21:37:53');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_choice`
--

DROP TABLE IF EXISTS `survey_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `choice` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_choice_c007bd5a` (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_choice`
--

LOCK TABLES `survey_choice` WRITE;
/*!40000 ALTER TABLE `survey_choice` DISABLE KEYS */;
INSERT INTO `survey_choice` VALUES (1,1,'I can stand as long as I want without extra pain.'),(2,1,'I can stand as long as I want but it gives me extra pain. '),(3,1,'Pain prevents me from standing for more than 1 hour.'),(4,1,'Pain prevents me from standing for more than 30 minutes.'),(5,1,'Pain prevents me from standing for more than 10 minutes.'),(6,1,'Pain prevents me from standing at all.'),(15,3,'I can look after myself normally without causing extra pain.'),(9,2,'I can tolerate the pain I have without having to use pain killers'),(10,2,'The pain is bad but I manage without taking pain killers.'),(11,2,'Pain killers give complete relief from pain '),(12,2,'Pain killers give moderate relief from pain'),(13,2,'Pain killers give very little relief from pain.'),(14,2,'Pain killers have no effect on the pain and I do not use them.'),(16,3,'I can look after myself normally but it causes extra pain.'),(17,3,'It is painful to look after myself and I am slow and careful.'),(18,3,'I need some help but manage most of my personal care'),(19,3,'I need help every day in most aspects of self care.'),(20,3,'I do not get dressed wash with difficulty and stay in bed'),(21,4,'Pain does not prevent me from sleeping well'),(22,4,'I can sleep well only by using tablets'),(23,4,'Even when I take tablets I have less than 6 hours sleep'),(24,4,'Even when I take tablets I have less than 4 hours sleep'),(25,4,'Even when I take tablets I have less than 2 hours of sleep'),(26,4,'Pain prevents me from sleeping at all.'),(27,5,'I can lift heavy weights without extra pain'),(28,5,'I can lift heavy weights but it gives extra pain'),(29,5,'Pain prevents me from lifting heavy weights off the floor but I can manage if they are conveniently positioned for example on a table'),(30,5,'Pain prevents me from lifting heavy weights but I can manage light to medium weights if they are conveniently positioned'),(31,5,'I can lift only very light weights'),(32,5,'I cannot lift or carry anything at all'),(33,6,'My sex life is normal and causes no extra pain'),(34,6,'My sex life is normal but causes some extra pain'),(35,6,'My sex life is nearly normal but is very painful'),(36,6,'My sex life is severely restricted by pain'),(37,6,'My sex life is nearly absent because of pain'),(38,6,'Pain prevents any sex life at all'),(39,7,'Pain does not prevent me walking any distance'),(40,7,'Pain prevents me walking more than 1 mile'),(41,7,'Pain prevents me walking more than 0.5 miles.'),(42,7,'Pain prevents me walking more than 0.25 miles'),(43,7,'I can only walk using a stick or crutches'),(44,7,'I am in bed most of the time and have to crawl to the toilet'),(45,8,'My social life is normal and gives me no extra pain'),(46,8,'My social life is normal but increases the degree of pain'),(47,8,'Pain has no significant effect on my social life apart from limiting energetic interests such as dancing'),(48,8,'Pain has restricted my social life and I do not go out as often'),(49,8,'Pain has restricted my social life to my home'),(50,8,'I have no social life because of pain'),(51,9,'I can sit in any chair as long as I like'),(52,9,'I can only sit in my favorite chair as long as I like'),(53,9,'Pain prevents me sitting more than 1 hour'),(54,9,'Pain prevents me from sitting more than 0.5 hours'),(55,9,'Pain prevents me from sitting more than 10 minutes'),(56,9,'Pain prevents me from sitting at all'),(57,10,'I can travel anywhere without extra pain'),(58,10,'I can travel anywhere but it gives me extra pain'),(59,10,'Pain is bad but I manage journeys over 2 hours'),(60,10,'Pain restricts me to journeys of less than 1 hour'),(61,10,'Pain restricts me to short necessary journeys under 30 minutes'),(62,10,'Pain prevents me from traveling except to the doctor or hospital');
/*!40000 ALTER TABLE `survey_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_section`
--

DROP TABLE IF EXISTS `survey_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_section`
--

LOCK TABLES `survey_section` WRITE;
/*!40000 ALTER TABLE `survey_section` DISABLE KEYS */;
INSERT INTO `survey_section` VALUES (1,'Standing (Remember, standing is NOT walking.)'),(2,'Pain Intensity'),(3,'Personal Care '),(4,'Sleeping'),(5,'Lifting'),(6,'Sex Life (by pain = for fear of causing pain)'),(7,'Walking (bad question)'),(8,'Social Life'),(9,'Sitting (\"Favorite chair\" includes a recliner.)'),(10,'Traveling');
/*!40000 ALTER TABLE `survey_section` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-06-15 18:22:24
