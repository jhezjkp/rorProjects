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
INSERT INTO `boards` VALUES (1,'测试','2013-03-13 03:35:04','2013-03-13 03:35:04',11),(2,'小说版','2013-03-13 04:09:47','2013-03-13 04:09:47',1),(3,'abc','2013-03-13 09:04:04','2013-03-13 09:04:04',2);
/*!40000 ALTER TABLE `boards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) NOT NULL,
  `data_content_type` varchar(255) DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
INSERT INTO `ckeditor_assets` VALUES (1,'002.jpg','image/jpeg',257895,1,'User','Ckeditor::Picture',1200,800,'2013-03-14 03:04:57','2013-03-14 03:04:57'),(2,'baracktocat.jpg','image/jpeg',107276,1,'User','Ckeditor::Picture',896,896,'2013-03-14 03:05:39','2013-03-14 03:05:39');
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
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
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `board_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'公告','这是一个公告111','2013-03-13 03:51:17','2013-03-13 12:57:27',1,1),(2,'工行去年现代服务业贷款劲增41%','近年来，中国工商银行将支持现代服务业发展作为推进经济结构优化升级的重要着力点，持续加大金融支持力度。据统计，截至2012年末工行对现代服务业提供的贷款余额已超过1.1万亿，较年初大幅增长了41%，是国内对现代服务业贷款支持力度最大的商业银行。其中，工行还将现代服务业中的中小企业作为重点支持对象，在工行提供信贷支持的4.83万户现代服务业企业中，中小企业占89%，贷款余额的占比则达到78%。','2013-03-13 03:51:50','2013-03-13 03:51:50',1,1),(7,'重生之官路商途','更俗','2013-03-13 04:13:31','2013-03-13 04:13:31',2,1),(10,'测试','You have a few options:  Install bundler to a global gemset. rvm gemset use global && gem install bundler If you have Homebrew installed, just do brew install ruby and avoid rvm altogether. (There\'s also rbenv and ry as alternatives to rvm, but I just use','2013-03-13 06:14:41','2013-03-13 06:14:59',1,1),(11,'qq----','tencent','2013-03-13 08:25:33','2013-03-13 10:20:45',1,2),(12,'微信','有次搜微信附近人，发现一个叫紫薇的，打招呼后不理我，再加一次内附留言：紫薇，是我，我是尔康！对方果断加上了，非让我带她去找她的皇阿玛！！我吓尿了！！ http://is.gd/bTl9uo ','2013-03-13 10:26:31','2013-03-13 10:26:31',1,1),(13,'自行车','我们北方学校在大雪中挣扎的自行车。颤抖吧。。南方的孩子们','2013-03-13 10:27:27','2013-03-13 10:27:27',1,1),(14,'波多野结衣','me-me*練いったん終わって、只今監面に来てます★＼(^o^)／終わったら皆と合流する( ^ω^ ) また夜はちょっと練習(*^^*)♪','2013-03-13 10:28:16','2013-03-13 12:56:05',1,1),(15,'Pow User\'s Manual','<h3 style=\"font-size: 32px; color: rgb(0, 0, 0); font-family: \'Helvetica Neue\', Helvetica, sans-serif; line-height: 27px; background-color: rgb(224, 224, 216);\">Pow prevails over the forces of evil.</h3>\r\n\r\n<p style=\"margin-top: 40px; color: rgb(0, 0, 0); font-family: \'Helvetica Neue\', Helvetica, sans-serif; font-size: 18px; line-height: 27px; background-color: rgb(224, 224, 216);\"><strong>Convention trumps configuration.</strong>&nbsp;Don&rsquo;t let tedious configuration get in the way of building great apps. With Pow, there are no preference panes to install. No Apache configuration files to update. And Pow eliminates the need to edit&nbsp;<code style=\"font-size: 14px; line-height: normal; font-family: Monaco, \'Courier New\', \'DejaVu Sans Mono\', \'Bitstream Vera Sans Mono\', monospace; background-color: rgb(217, 234, 235); padding: 3px; border-top-left-radius: 5px; border-top-right-radius: 5px; border-bottom-right-radius: 5px; border-bottom-left-radius: 5px; border: 1px solid rgb(210, 210, 202);\">/etc/hosts</code>. To get a Rack app running, just type a single command.</p>\r\n','2013-03-13 12:27:23','2013-03-14 03:00:37',1,1),(16,'image','<p>image test</p>\r\n\r\n<p>ok</p>\r\n','2013-03-13 13:32:54','2013-03-14 03:16:36',1,1),(17,'devise','This README is also available in a friendly navigable format.\r\n\r\nDevise is a flexible authentication solution for Rails based on Warden. It:\r\n\r\nIs Rack based;\r\nIs a complete MVC solution based on Rails engines;\r\nAllows you to have multiple roles (or models/scopes) signed in at the same time;\r\nIs based on a modularity concept: use just what you really need.\r\nIt\'s composed of 11 modules:\r\n\r\nDatabase Authenticatable: encrypts and stores a password in the database to validate the authenticity of a user while signing in. The authentication can be done both through POST requests or HTTP Basic Authentication.\r\nToken Authenticatable: signs in a user based on an authentication token (also known as \"single access token\"). The token can be given both through query string or HTTP Basic Authentication.\r\nOmniauthable: adds Omniauth (https://github.com/intridea/omniauth) support;\r\nConfirmable: sends emails with confirmation instructions and verifies whether an account is already confirmed during sign in.\r\nRecoverable: resets the user password and sends reset instructions.\r\nRegisterable: handles signing up users through a registration process, also allowing them to edit and destroy their account.\r\nRememberable: manages generating and clearing a token for remembering the user from a saved cookie.\r\nTrackable: tracks sign in count, timestamps and IP address.\r\nTimeoutable: expires sessions that have no activity in a specified period of time.\r\nValidatable: provides validations of email and password. It\'s optional and can be customized, so you\'re able to define your own validations.\r\nLockable: locks an account after a specified number of failed sign-in attempts. Can unlock via email or after a specified time period.','2013-03-14 02:17:05','2013-03-14 02:17:05',3,1),(18,'LG 发布为 Optimus G Pro 打造的眼球跟踪识别技术，旗下其它机型稍后提供','<div style=\"margin: 0px; padding: 0px; list-style: none; color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255); text-align: center;\"><img data-src-height=\"411\" data-src-width=\"619\" src=\"http://oimageb4.ydstatic.com/image?keyfrom=reader&amp;w=500&amp;url=http%3A%2F%2Fwww.blogcdn.com%2Fwww.engadget.com%2Fmedia%2F2013%2F03%2Foptimus-g-pro-1363211267.jpg\" style=\"border: none;\" /></div>\r\n\r\n<p><span style=\"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\">之前我们已经听说 Samsung 将为</span><a href=\"http://cn.engadget.com/tag/GalaxySIV/\" style=\"text-decoration: none; color: rgb(30, 80, 162); outline: none; font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\" target=\"_blank\">&nbsp;Galaxy S IV</a><span style=\"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\">&nbsp;推出眼球跟踪</span><a href=\"http://cn.engadget.com/2013/03/04/nyt-samsung-galaxy-s-iv-will-tout-eye-based-scrolling/\" style=\"text-decoration: none; color: rgb(30, 80, 162); outline: none; font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\" target=\"_blank\">滚动技术</a><span style=\"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\">，现在看来 LG 不甘落后，在今天率先发布了为</span><a href=\"http://cn.engadget.com/tag/OptimusGPro/\" style=\"text-decoration: none; color: rgb(30, 80, 162); outline: none; font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\" target=\"_blank\">&nbsp;Optimus G Pro</a><span style=\"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\">&nbsp;打造的眼球跟踪识别技术。这项技术将会在下个月推送给韩国本土的用户，其中最主要的一项功能就是 Smart Video 。这个功能允许手机的前置相机捕捉用户的眼球，当用户视线离开手机屏幕，影片播放就会暂停，如果视线重新回到手机屏幕中，影片会继续播放。另外，其提供的 Value Pack 超级包更新还会加入一个 Dual Camera 双相机功能，就是利用手机的前后两个相机拍摄画中画的照片，具体效果如何还有待软件出来才能知晓。</span><br style=\"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\" />\r\n<span style=\"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size: 14px; line-height: 22px; background-color: rgb(247, 252, 255);\">除此之外，用户升级完 Value Pack 超级包之后，还可以定制主页键的 LED 色彩，和不同的联系人、邮件、未读信息等实现绑定；增强 QRemote 功能，可以和 LG 智能电视配合充当遥控器；可以在视频录制的时候随时暂停和恢复录制、短信中加入了彩色表情符号功能。官方宣称 LG 其它机型也会得到此项更新，但是没有具体说明时间，目前来看也仅限定韩国，其它地区的话恐怕要多加时日来等待。</span></p>\r\n','2013-03-14 02:54:47','2013-03-14 02:54:47',1,1),(19,'test','<p>update</p>\r\n\r\n<p><img alt=\"pic\" src=\"/ckeditor_assets/pictures/1/content_002.jpg\" style=\"width: 800px; height: 533px;\" /></p>\r\n\r\n<p><img alt=\"github_cat\" src=\"/ckeditor_assets/pictures/2/content_baracktocat.jpg\" style=\"width: 800px; height: 800px;\" /></p>\r\n','2013-03-14 03:01:31','2013-03-14 03:05:58',1,1),(20,'11111111111111111111','<p>22222222222222222222222</p>\r\n\r\n<p>不错</p>\r\n','2013-03-14 03:17:00','2013-03-14 03:20:32',3,1);
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
INSERT INTO `schema_migrations` VALUES ('20130312133323'),('20130312133347'),('20130312141927'),('20130313054935'),('20130313063736'),('20130313072606'),('20130313103629'),('20130313131425'),('20130313134940'),('20130314104626'),('20130314104627');
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
INSERT INTO `users` VALUES (1,'jhezjkp@163.com','$2a$10$SVxVl2ZQTyIGWamBHytN5OZvqUTf.2ZOapoWPpKGM9s7yol1exLaK',NULL,NULL,NULL,6,'2013-03-14 07:18:14','2013-03-14 03:40:07','140.207.0.214','140.207.0.214','2013-03-13 06:04:30','2013-03-14 07:18:14',1),(2,'jkp3389@qq.com','$2a$10$bwLgbM5pxgxtMgz9jEs7q.1w1/umFqLj/nkfA/xXsTXyFT6f/f5zC',NULL,NULL,NULL,3,'2013-03-14 10:13:46','2013-03-14 07:15:18','140.207.0.214','140.207.0.214','2013-03-13 08:25:24','2013-03-14 10:13:46',0);
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

-- Dump completed on 2013-03-14 19:34:43
