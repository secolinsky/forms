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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add message',4,'add_message'),(11,'Can change message',4,'change_message'),(12,'Can delete message',4,'delete_message'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add site',7,'add_site'),(20,'Can change site',7,'change_site'),(21,'Can delete site',7,'delete_site'),(22,'Can add log entry',8,'add_logentry'),(23,'Can change log entry',8,'change_logentry'),(24,'Can delete log entry',8,'delete_logentry'),(25,'Can add survey',9,'add_survey'),(26,'Can change survey',9,'change_survey'),(27,'Can delete survey',9,'delete_survey'),(28,'Can add section',10,'add_section'),(29,'Can change section',10,'change_section'),(30,'Can delete section',10,'delete_section'),(31,'Can add question',11,'add_question'),(32,'Can change question',11,'change_question'),(33,'Can delete question',11,'delete_question');
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
INSERT INTO `auth_user` VALUES (1,'monty','','','monty@lenovo.com','sha1$4f3ad$1694211b611e6897af947bd4a2f993a30e6c5da2',1,1,1,'2011-06-16 17:20:52','2011-06-16 15:15:37');
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
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2011-06-16 15:21:04',1,9,'1','Oswestry Index',1,''),(2,'2011-06-16 15:23:10',1,9,'1','Oswestry Index',2,'Added question \"I can tolerate the pain I have without having to use pain killers\". Added question \"The pain is bad but I manage without taking pain killers\". Added question \"Pain killers give complete relief from pain\". Added question \"Pain killers give moderate relief from pain\". Added question \"Pain killers give very little relief from pain\". Added question \"Pain killers have no effect on the pain and I do not use them\".'),(3,'2011-06-16 15:25:13',1,9,'1','Oswestry Index',2,'Added question \"I can stand as long as I want without extra pain\". Added question \"I can stand as long as I want but it gives me extra pain\". Added question \"Pain prevents me from standing for more than 1 hour.\". Added question \"Pain prevents me from standing for more than 30 minutes\". Added question \"Pain prevents me from standing for more than 10 minutes\".'),(4,'2011-06-16 15:27:21',1,9,'1','Oswestry Index',2,'Added question \"Pain prevents me from standing at all\". Added question \"I can look after myself normally without causing extra pain\". Added question \"I can look after myself normally but it causes extra pain\". Added question \"It is painful to look after myself and I am slow and careful\". Added question \"I need some help but manage most of my personal care\". Added question \"I need help every day in most aspects of self care\". Added question \"I do not get dressed wash with difficulty and stay in bed\".'),(5,'2011-06-16 15:29:18',1,9,'1','Oswestry Index',2,'Added question \"Pain does not prevent me from sleeping well\". Added question \"I can sleep well only by using tablets\". Added question \"Even when I take tablets I have less than 6 hours sleep\". Added question \"Even when I take tablets I have less than 4 hours sleep\". Added question \"Even when I take tablets I have less than 2 hours of sleep\". Added question \"Pain prevents me from sleeping at all\".'),(6,'2011-06-16 15:31:13',1,9,'1','Oswestry Index',2,'Added question \"I can lift heavy weights without extra pain\". Added question \"I can lift heavy weights but it gives extra pain\". Added question \"Pain prevents me from lifting heavy weights off the floor but I can manage if they are conveniently positioned for example on a table\". Added question \"Pain prevents me from lifting heavy weights but I can manage light to medium weights if they are conveniently positioned\". Added question \"I can lift only very light weights\". Added question \"I cannot lift or carry anything at all\".'),(7,'2011-06-16 15:34:34',1,9,'1','Oswestry Index',2,'Added question \"My sex life is normal and causes no extra pain\". Added question \"My sex life is normal but causes some extra pain\". Added question \"My sex life is nearly normal but is very painful\". Added question \"My sex life is severely restricted by pain\". Added question \"My sex life is nearly absent because of pain\". Added question \"Pain prevents any sex life at all\". Added question \"Pain does not prevent me walking any distance\". Added question \"Pain prevents me walking more than 1 mile\". Added question \"Pain prevents me walking more than 0.5 miles\". Added question \"Pain prevents me walking more than 0.25 miles\". Added question \"I can only walk using a stick or crutches\". Added question \"I am in bed most of the time and have to crawl to the toilet\".'),(8,'2011-06-16 15:39:18',1,9,'1','Oswestry Index',2,'Added question \"My social life is normal and gives me no extra pain\". Added question \"My social life is normal but increases the degree of pain\". Added question \"Pain has no significant effect on my social life apart from limiting energetic interests such as dancing\". Added question \"Pain has restricted my social life and I do not go out as often\". Added question \"Pain has restricted my social life to my home\". Added question \"I have no social life because of pain\".'),(9,'2011-06-16 15:44:21',1,9,'1','Oswestry Index',2,'Added question \"I can sit in any chair as long as I like\". Added question \"I can only sit in my favorite chair as long as I like\". Added question \"Pain prevents me sitting more than 1 hour\". Added question \"Pain prevents me from sitting more than 0.5 hours\". Added question \"Pain prevents me from sitting more than 10 minutes\". Added question \"Pain prevents me from sitting at all\". Added question \"I can travel anywhere without extra pain\". Added question \"I can travel anywhere but it gives me extra pain\". Added question \"Pain is bad but I manage journeys over 2 hours\". Added question \"Pain restricts me to journeys of less than 1 hour\". Added question \"Pain restricts me to short necessary journeys under 30 minutes\". Added question \"Pain prevents me from traveling except to the doctor or hospital\".'),(10,'2011-06-16 15:52:36',1,9,'2','Neck Disability Index',1,''),(11,'2011-06-16 16:12:38',1,9,'2','Neck Disability Index',2,'No fields changed.'),(12,'2011-06-16 16:32:58',1,9,'2','Neck Disability Index',2,'Added question \"I have no pain at the moment\". Added question \"The pain is mild at the moment\". Added question \"The pain comes & goes & is moderate\". Added question \"The pain is moderate & does not vary much\". Added question \"The pain is severe but comes & goes\". Added question \"The pain is severe & does not vary much\".'),(13,'2011-06-16 16:34:37',1,9,'2','Neck Disability Index',2,'Added question \"I can concentrate fully when I want to with no difficulty\". Added question \"I can concentrate fully when I want to with slight difficulty\". Added question \"I have a fair degree of difficulty in concentrating when I want to\". Added question \"I have a lot of difficulty in concentrating when I want to\". Added question \"I have a great deal of difficulty in concentrating when I want to\". Added question \"I cannot concentrate at all\".'),(14,'2011-06-16 16:36:56',1,9,'2','Neck Disability Index',2,'Added question \"I can look after myself without causing extra pain\". Added question \"I can look after myself normally but it causes extra pain\". Added question \"It is painful to look after myself and I am slow & careful\". Added question \"I need some help but manage most of my personal care\". Added question \"I need help every day in most aspects of self-care\". Added question \"I do not get dressed; I wash with difficulty and stay in bed\".'),(15,'2011-06-16 16:42:11',1,9,'2','Neck Disability Index',2,'Changed section for question \"I have no pain at the moment\". Changed section for question \"The pain is mild at the moment\". Changed section for question \"The pain comes & goes & is moderate\". Changed section for question \"The pain is moderate & does not vary much\". Changed section for question \"The pain is severe but comes & goes\". Changed section for question \"The pain is severe & does not vary much\".'),(16,'2011-06-16 16:44:16',1,9,'2','Neck Disability Index',2,'Added question \"I can do as much work as I want to\". Added question \"I can only do my usual work but no more\". Added question \"I can don most of my usual work but no more\". Added question \"I cannot do my usual work\". Added question \"I can hardly do any work at all\". Added question \"I cannot do any work at all\".'),(17,'2011-06-16 16:47:26',1,9,'2','Neck Disability Index',2,'Added question \"I can lift heavy weights without extra pain\". Added question \"I can lift heavy weights, but it causes extra pain\". Added question \"Pain prevents me from lifing heavy weights off the floor, but I can if they are conveniently positioned, for example on a table\". Added question \"Pain prevents me from lifting heavy weights, but I can manage light to medium weights if they are conveniently positioned\". Added question \"I can only lift very light weights\". Added question \"I cannot lift or carry anything at all\".'),(18,'2011-06-16 17:25:40',1,9,'2','Neck Disability Index',2,'Added question \"I can drive my car without neck pain\". Added question \"I can drive my car as long as I want with slight pain in my neck\". Added question \"I can drive my car as long as I want with moderate pain in my neck\". Added question \"I cannot drive my car as long as I want because of moderate pain in my neck\". Added question \"I can hardly drive my car at all because of severe pain in my neck\". Added question \"I cannot drive my car at all\".'),(19,'2011-06-16 17:27:40',1,9,'2','Neck Disability Index',2,'Added question \"I can read as much as I want to with no pain in my neck\". Added question \"I can read as much as I want with slight pain in my neck\". Added question \"I can read as much as I want with moderate pain in my neck\". Added question \"I cannot read as much as I want because of moderate pain in my neck\". Added question \"I cannot read as much as I want because of severe pain in my neck\". Added question \"I can not read at all because of neck pain\".'),(20,'2011-06-16 17:29:48',1,9,'2','Neck Disability Index',2,'Added question \"I have no trouble sleeping\". Added question \"My sleep is slightly disturbed (less than 1 hour sleepless)\". Added question \"My sleep is mildly disturbed (1-2 hours sleepless)\". Added question \"My sleep is moderately disturbed (2-3 hours sleepless)\". Added question \"My sleep is greatly disturbed (3-5 hours sleepless)\". Added question \"My sleep is completely disturbed (5-7 hours sleepless)\".'),(21,'2011-06-16 17:31:42',1,9,'2','Neck Disability Index',2,'Added question \"I have no headaches at all\". Added question \"I have slight headaches that come infrequently\". Added question \"I have moderate headaches that come in-frequently\". Added question \"I have moderate headaches that come frequently\". Added question \" I have severe headaches that come frequently\". Added question \"I have headaches almost all the time\".'),(22,'2011-06-16 17:35:14',1,9,'2','Neck Disability Index',2,'Added question \"I am able to engage in all recreational activities with no pain in my neck at all\". Added question \"A am able to engage in all recreational activities with some pain in my neck\". Added question \"I am able to engage in most, but not all, recreational activities because of pain in my neck\". Added question \"I am able to engage in only a few of my usual recreational activities because of pain in my neck\". Added question \"I can hardly do any recreational activiites because of pain in my neck\". Added question \"I cannot do any recreational activities at all\".');
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'message','auth','message'),(5,'content type','contenttypes','contenttype'),(6,'session','sessions','session'),(7,'site','sites','site'),(8,'log entry','admin','logentry'),(9,'survey','survey','survey'),(10,'section','survey','section'),(11,'question','survey','question');
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
INSERT INTO `django_session` VALUES ('ff11cfe0759491cce7d739f276266fdf','N2ExMDk4Y2I2YWU5MTVjMmUwMGFiYWYxMWE3N2JmNTM5Yzc5MmY2NTqAAn1xAS4=\n','2011-06-30 17:35:49');
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
-- Table structure for table `survey_question`
--

DROP TABLE IF EXISTS `survey_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_id` int(11) NOT NULL,
  `survey_id` int(11) NOT NULL,
  `choice` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_question_c007bd5a` (`section_id`),
  KEY `survey_question_f84f75c4` (`survey_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_question`
--

LOCK TABLES `survey_question` WRITE;
/*!40000 ALTER TABLE `survey_question` DISABLE KEYS */;
INSERT INTO `survey_question` VALUES (1,1,1,'I can tolerate the pain I have without having to use pain killers'),(2,1,1,'The pain is bad but I manage without taking pain killers'),(3,1,1,'Pain killers give complete relief from pain'),(4,1,1,'Pain killers give moderate relief from pain'),(5,1,1,'Pain killers give very little relief from pain'),(6,1,1,'Pain killers have no effect on the pain and I do not use them'),(7,2,1,'I can stand as long as I want without extra pain'),(8,2,1,'I can stand as long as I want but it gives me extra pain'),(9,2,1,'Pain prevents me from standing for more than 1 hour.'),(10,2,1,'Pain prevents me from standing for more than 30 minutes'),(11,2,1,'Pain prevents me from standing for more than 10 minutes'),(12,2,1,'Pain prevents me from standing at all'),(13,3,1,'I can look after myself normally without causing extra pain'),(14,3,1,'I can look after myself normally but it causes extra pain'),(15,3,1,'It is painful to look after myself and I am slow and careful'),(16,3,1,'I need some help but manage most of my personal care'),(17,3,1,'I need help every day in most aspects of self care'),(18,3,1,'I do not get dressed wash with difficulty and stay in bed'),(19,4,1,'Pain does not prevent me from sleeping well'),(20,4,1,'I can sleep well only by using tablets'),(21,4,1,'Even when I take tablets I have less than 6 hours sleep'),(22,4,1,'Even when I take tablets I have less than 4 hours sleep'),(23,4,1,'Even when I take tablets I have less than 2 hours of sleep'),(24,4,1,'Pain prevents me from sleeping at all'),(25,5,1,'I can lift heavy weights without extra pain'),(26,5,1,'I can lift heavy weights but it gives extra pain'),(27,5,1,'Pain prevents me from lifting heavy weights off the floor but I can manage if they are conveniently positioned for example on a table'),(28,5,1,'Pain prevents me from lifting heavy weights but I can manage light to medium weights if they are conveniently positioned'),(29,5,1,'I can lift only very light weights'),(30,5,1,'I cannot lift or carry anything at all'),(31,6,1,'My sex life is normal and causes no extra pain'),(32,6,1,'My sex life is normal but causes some extra pain'),(33,6,1,'My sex life is nearly normal but is very painful'),(34,6,1,'My sex life is severely restricted by pain'),(35,6,1,'My sex life is nearly absent because of pain'),(36,6,1,'Pain prevents any sex life at all'),(37,7,1,'Pain does not prevent me walking any distance'),(38,7,1,'Pain prevents me walking more than 1 mile'),(39,7,1,'Pain prevents me walking more than 0.5 miles'),(40,7,1,'Pain prevents me walking more than 0.25 miles'),(41,7,1,'I can only walk using a stick or crutches'),(42,7,1,'I am in bed most of the time and have to crawl to the toilet'),(43,8,1,'My social life is normal and gives me no extra pain'),(44,8,1,'My social life is normal but increases the degree of pain'),(45,8,1,'Pain has no significant effect on my social life apart from limiting energetic interests such as dancing'),(46,8,1,'Pain has restricted my social life and I do not go out as often'),(47,8,1,'Pain has restricted my social life to my home'),(48,8,1,'I have no social life because of pain'),(49,9,1,'I can sit in any chair as long as I like'),(50,9,1,'I can only sit in my favorite chair as long as I like'),(51,9,1,'Pain prevents me sitting more than 1 hour'),(52,9,1,'Pain prevents me from sitting more than 0.5 hours'),(53,9,1,'Pain prevents me from sitting more than 10 minutes'),(54,9,1,'Pain prevents me from sitting at all'),(55,10,1,'I can travel anywhere without extra pain'),(56,10,1,'I can travel anywhere but it gives me extra pain'),(57,10,1,'Pain is bad but I manage journeys over 2 hours'),(58,10,1,'Pain restricts me to journeys of less than 1 hour'),(59,10,1,'Pain restricts me to short necessary journeys under 30 minutes'),(60,10,1,'Pain prevents me from traveling except to the doctor or hospital'),(61,11,2,'I have no pain at the moment'),(62,11,2,'The pain is mild at the moment'),(63,11,2,'The pain comes & goes & is moderate'),(64,11,2,'The pain is moderate & does not vary much'),(65,11,2,'The pain is severe but comes & goes'),(66,11,2,'The pain is severe & does not vary much'),(67,12,2,'I can concentrate fully when I want to with no difficulty'),(68,12,2,'I can concentrate fully when I want to with slight difficulty'),(69,12,2,'I have a fair degree of difficulty in concentrating when I want to'),(70,12,2,'I have a lot of difficulty in concentrating when I want to'),(71,12,2,'I have a great deal of difficulty in concentrating when I want to'),(72,12,2,'I cannot concentrate at all'),(73,13,2,'I can look after myself without causing extra pain'),(74,13,2,'I can look after myself normally but it causes extra pain'),(75,13,2,'It is painful to look after myself and I am slow & careful'),(76,13,2,'I need some help but manage most of my personal care'),(77,13,2,'I need help every day in most aspects of self-care'),(78,13,2,'I do not get dressed; I wash with difficulty and stay in bed'),(79,14,2,'I can do as much work as I want to'),(80,14,2,'I can only do my usual work but no more'),(81,14,2,'I can don most of my usual work but no more'),(82,14,2,'I cannot do my usual work'),(83,14,2,'I can hardly do any work at all'),(84,14,2,'I cannot do any work at all'),(85,15,2,'I can lift heavy weights without extra pain'),(86,15,2,'I can lift heavy weights, but it causes extra pain'),(87,15,2,'Pain prevents me from lifing heavy weights off the floor, but I can if they are conveniently positioned, for example on a table'),(88,15,2,'Pain prevents me from lifting heavy weights, but I can manage light to medium weights if they are conveniently positioned'),(89,15,2,'I can only lift very light weights'),(90,15,2,'I cannot lift or carry anything at all'),(91,16,2,'I can drive my car without neck pain'),(92,16,2,'I can drive my car as long as I want with slight pain in my neck'),(93,16,2,'I can drive my car as long as I want with moderate pain in my neck'),(94,16,2,'I cannot drive my car as long as I want because of moderate pain in my neck'),(95,16,2,'I can hardly drive my car at all because of severe pain in my neck'),(96,16,2,'I cannot drive my car at all'),(97,17,2,'I can read as much as I want to with no pain in my neck'),(98,17,2,'I can read as much as I want with slight pain in my neck'),(99,17,2,'I can read as much as I want with moderate pain in my neck'),(100,17,2,'I cannot read as much as I want because of moderate pain in my neck'),(101,17,2,'I cannot read as much as I want because of severe pain in my neck'),(102,17,2,'I can not read at all because of neck pain'),(103,18,2,'I have no trouble sleeping'),(104,18,2,'My sleep is slightly disturbed (less than 1 hour sleepless)'),(105,18,2,'My sleep is mildly disturbed (1-2 hours sleepless)'),(106,18,2,'My sleep is moderately disturbed (2-3 hours sleepless)'),(107,18,2,'My sleep is greatly disturbed (3-5 hours sleepless)'),(108,18,2,'My sleep is completely disturbed (5-7 hours sleepless)'),(109,19,2,'I have no headaches at all'),(110,19,2,'I have slight headaches that come infrequently'),(111,19,2,'I have moderate headaches that come in-frequently'),(112,19,2,'I have moderate headaches that come frequently'),(113,19,2,' I have severe headaches that come frequently'),(114,19,2,'I have headaches almost all the time'),(115,20,2,'I am able to engage in all recreational activities with no pain in my neck at all'),(116,20,2,'A am able to engage in all recreational activities with some pain in my neck'),(117,20,2,'I am able to engage in most, but not all, recreational activities because of pain in my neck'),(118,20,2,'I am able to engage in only a few of my usual recreational activities because of pain in my neck'),(119,20,2,'I can hardly do any recreational activiites because of pain in my neck'),(120,20,2,'I cannot do any recreational activities at all');
/*!40000 ALTER TABLE `survey_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_section`
--

DROP TABLE IF EXISTS `survey_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `survey_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `survey_section_f84f75c4` (`survey_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_section`
--

LOCK TABLES `survey_section` WRITE;
/*!40000 ALTER TABLE `survey_section` DISABLE KEYS */;
INSERT INTO `survey_section` VALUES (1,1,'Pain Intensity'),(2,1,'Standing (Remember, standing is NOT walking)'),(3,1,'Personal Care'),(4,1,'Sleeping'),(5,1,'Lifting'),(6,1,'Sex Life (by pain = for fear of causing pain)'),(7,1,'Walking (bad question)'),(8,1,'Social Life'),(9,1,'Sitting (\"Favorite chair\" includes a recliner)'),(10,1,'Traveling'),(11,2,'Pain Intensity'),(12,2,'Concentration'),(13,2,'Personal Care (Washing, Dressing etc.)'),(14,2,'Work'),(15,2,'Lifting'),(16,2,'Driving'),(17,2,'Reading'),(18,2,'Sleeping'),(19,2,'Headache'),(20,2,'Recreation');
/*!40000 ALTER TABLE `survey_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_survey`
--

DROP TABLE IF EXISTS `survey_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_survey`
--

LOCK TABLES `survey_survey` WRITE;
/*!40000 ALTER TABLE `survey_survey` DISABLE KEYS */;
INSERT INTO `survey_survey` VALUES (1,'Oswestry Index'),(2,'Neck Disability Index');
/*!40000 ALTER TABLE `survey_survey` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-06-16 15:36:47
