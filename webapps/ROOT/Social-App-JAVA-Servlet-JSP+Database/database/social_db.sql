-- MySQL dump 10.10
--
-- Host: localhost    Database: social_db
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `chat_id` int(11) NOT NULL auto_increment,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `chat_time` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`chat_id`),
  KEY `fk_from_user` (`from_user`),
  KEY `fk_to_user` (`to_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--


/*!40000 ALTER TABLE `message` DISABLE KEYS */;
LOCK TABLES `message` WRITE;
INSERT INTO `message` VALUES (170,13,14,'Miss you kaluuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu','2019-12-29 08:49:48'),(171,14,13,'Miss you kk','2019-12-29 08:50:46'),(172,13,14,'love you tooooo.','2019-12-29 08:51:56'),(173,13,14,'hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii','2019-12-29 08:52:51'),(174,13,16,'Miss you kaluuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu','2019-12-30 06:35:58'),(175,13,13,'hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii','2019-12-30 06:38:13'),(176,13,13,'love you tooooo.','2019-12-30 06:38:48'),(177,13,13,'James Gosling','2019-12-30 06:39:28'),(178,15,16,'hiiii','2020-01-26 17:23:32');
UNLOCK TABLES;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `post_id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `body` varchar(500) NOT NULL,
  `post_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`post_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--


/*!40000 ALTER TABLE `post` DISABLE KEYS */;
LOCK TABLES `post` WRITE;
INSERT INTO `post` VALUES (1,17,'<p>hiii</p>','2020-01-26 17:25:15');
UNLOCK TABLES;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL auto_increment,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(150) default 'image/user.png',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--


/*!40000 ALTER TABLE `user` DISABLE KEYS */;
LOCK TABLES `user` WRITE;
INSERT INTO `user` VALUES (15,'Sagar','Kharmale','java@1991','sagarkharmale@gmail.com','image/user.png'),(16,'Arun','Pandit','java@1991','arunpandit@gmail.com','image/user.png'),(17,'Kishor','Kadam','java@1991','kadamk33@gmail.com','image/user.png');
UNLOCK TABLES;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

