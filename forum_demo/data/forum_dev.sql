-- MySQL dump 10.13  Distrib 5.1.66, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: forum_dev
-- ------------------------------------------------------
-- Server version	5.1.66-0+squeeze1

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
-- Table structure for table `boards`
--

DROP TABLE IF EXISTS `boards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `posts_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boards`
--

LOCK TABLES `boards` WRITE;
/*!40000 ALTER TABLE `boards` DISABLE KEYS */;
INSERT INTO `boards` VALUES (1,'测试','2013-03-13 03:35:04','2013-03-13 03:35:04',7),(2,'小说版','2013-03-13 04:09:47','2013-03-13 04:09:47',1),(3,'abc','2013-03-13 09:04:04','2013-03-13 09:04:04',0);
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `board_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'公告','这是一个公告','2013-03-13 03:51:17','2013-03-13 03:51:17',1,1),(2,'工行去年现代服务业贷款劲增41%','近年来，中国工商银行将支持现代服务业发展作为推进经济结构优化升级的重要着力点，持续加大金融支持力度。据统计，截至2012年末工行对现代服务业提供的贷款余额已超过1.1万亿，较年初大幅增长了41%，是国内对现代服务业贷款支持力度最大的商业银行。其中，工行还将现代服务业中的中小企业作为重点支持对象，在工行提供信贷支持的4.83万户现代服务业企业中，中小企业占89%，贷款余额的占比则达到78%。','2013-03-13 03:51:50','2013-03-13 03:51:50',1,1),(7,'重生之官路商途','更俗','2013-03-13 04:13:31','2013-03-13 04:13:31',2,1),(10,'测试','You have a few options:  Install bundler to a global gemset. rvm gemset use global && gem install bundler If you have Homebrew installed, just do brew install ruby and avoid rvm altogether. (There\'s also rbenv and ry as alternatives to rvm, but I just use','2013-03-13 06:14:41','2013-03-13 06:14:59',1,1),(11,'qq----','tencent','2013-03-13 08:25:33','2013-03-13 10:20:45',1,2),(12,'微信','有次搜微信附近人，发现一个叫紫薇的，打招呼后不理我，再加一次内附留言：紫薇，是我，我是尔康！对方果断加上了，非让我带她去找她的皇阿玛！！我吓尿了！！ http://is.gd/bTl9uo ','2013-03-13 10:26:31','2013-03-13 10:26:31',1,1),(13,'自行车','我们北方学校在大雪中挣扎的自行车。颤抖吧。。南方的孩子们','2013-03-13 10:27:27','2013-03-13 10:27:27',1,1),(14,'波多','me-me*練いったん終わって、只今監面に来てます★＼(^o^)／終わったら皆と合流する( ^ω^ ) また夜はちょっと練習(*^^*)♪','2013-03-13 10:28:16','2013-03-13 10:28:16',1,1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130312133323'),('20130312133347'),('20130312141927'),('20130313054935'),('20130313063736'),('20130313072606'),('20130313103629');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jhezjkp@163.com','$2a$10$SVxVl2ZQTyIGWamBHytN5OZvqUTf.2ZOapoWPpKGM9s7yol1exLaK',NULL,NULL,NULL,3,'2013-03-13 08:33:51','2013-03-13 06:12:58','140.207.0.214','140.207.0.214','2013-03-13 06:04:30','2013-03-13 08:33:51',1),(2,'jkp3389@qq.com','$2a$10$bwLgbM5pxgxtMgz9jEs7q.1w1/umFqLj/nkfA/xXsTXyFT6f/f5zC',NULL,NULL,NULL,1,'2013-03-13 08:25:24','2013-03-13 08:25:24','140.207.0.214','140.207.0.214','2013-03-13 08:25:24','2013-03-13 08:25:24',0);
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

-- Dump completed on 2013-03-13 20:13:56
