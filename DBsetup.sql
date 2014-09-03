CREATE DATABASE  IF NOT EXISTS `personalinfo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `personalinfo`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: personalinfo
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `Age` varchar(45) NOT NULL,
  `Profile` text,
  `LastName` varchar(45) NOT NULL,
  `NickName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Used to keep my Personal information.  Such as name, age, profile';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
INSERT INTO `information` VALUES (1,'Christopher','33','','Janda','Chris');
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `idrank` int(11) NOT NULL AUTO_INCREMENT,
  `Rank` varchar(45) NOT NULL,
  PRIMARY KEY (`idrank`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES (1,'Limited Knowledge'),(2,'Some Knowledge'),(3,'Knowledgable'),(4,'Very Knowledgable'),(5,'Expert');
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_rank`
--

DROP TABLE IF EXISTS `skill_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_rank` (
  `skill_rank_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `skill_id` int(11) DEFAULT NULL,
  `rank_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`skill_rank_id`),
  KEY `user_id_idx` (`user_id`),
  KEY `skill_id_idx` (`skill_id`),
  KEY `rank_id_idx` (`rank_id`),
  CONSTRAINT `rank_id` FOREIGN KEY (`rank_id`) REFERENCES `rank` (`idrank`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `skill_id` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`idSkills`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `information` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_rank`
--

LOCK TABLES `skill_rank` WRITE;
/*!40000 ALTER TABLE `skill_rank` DISABLE KEYS */;
INSERT INTO `skill_rank` VALUES (2,1,1,4),(3,1,2,5),(4,1,3,4),(5,1,4,4),(6,1,5,3),(7,1,6,4),(8,1,7,3),(9,1,8,3),(10,1,9,4),(11,1,10,3),(12,1,11,3),(13,1,12,3),(14,1,13,4),(15,1,14,3),(16,1,15,3),(17,1,16,3),(18,1,17,2),(19,1,18,2),(20,1,19,4),(21,1,20,2),(22,1,21,5),(23,1,22,4),(24,1,23,5),(25,1,24,5),(26,1,25,4),(27,1,26,4),(28,1,27,4),(29,1,28,3),(30,1,29,4);
/*!40000 ALTER TABLE `skill_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skillgroup`
--

DROP TABLE IF EXISTS `skillgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skillgroup` (
  `idSkillGroup` int(11) NOT NULL AUTO_INCREMENT,
  `SkillGroup` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSkillGroup`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skillgroup`
--

LOCK TABLES `skillgroup` WRITE;
/*!40000 ALTER TABLE `skillgroup` DISABLE KEYS */;
INSERT INTO `skillgroup` VALUES (1,'Database'),(2,'Programming'),(3,'Networking'),(4,'Social'),(5,'General Computer');
/*!40000 ALTER TABLE `skillgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `idSkills` int(11) NOT NULL AUTO_INCREMENT,
  `Skill` varchar(45) NOT NULL,
  `SkillGroup` int(11) NOT NULL,
  PRIMARY KEY (`idSkills`),
  KEY `SkillGroup_idx` (`SkillGroup`),
  CONSTRAINT `SkillGroup` FOREIGN KEY (`SkillGroup`) REFERENCES `skillgroup` (`idSkillGroup`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Java',2),(2,'PHP',2),(3,'CodeIgniter',2),(4,'jQuery',2),(5,'jQuery UI',2),(6,'JavaScript',2),(7,'VB.NET',2),(8,'VBScript',2),(9,'MVC Architecture',2),(10,'NetBeans',2),(11,'Eclipse',2),(12,'Aptana',2),(13,'SQL Queries',1),(14,'SQL Joins',1),(15,'T-SQL',1),(16,'T-SQL Stored Procedures',1),(17,'SQL Server Management Studio',1),(18,'Microsoft SQL Server',1),(19,'Apache',3),(20,'Tomcat',3),(21,'Team Leadership',4),(22,'Management',4),(23,'Customer Service',4),(24,'Scrum',4),(25,'AJAX',2),(26,'Windows XP',5),(27,'Windows 7',5),(28,'Microsoft Office 2013',5),(29,'Command Prompt',5);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_skills`
--

DROP TABLE IF EXISTS `user_skills`;
/*!50001 DROP VIEW IF EXISTS `user_skills`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `user_skills` (
  `ID` tinyint NOT NULL,
  `FirstName` tinyint NOT NULL,
  `Age` tinyint NOT NULL,
  `LastName` tinyint NOT NULL,
  `NickName` tinyint NOT NULL,
  `rank_id` tinyint NOT NULL,
  `skill_id` tinyint NOT NULL,
  `SkillGroup` tinyint NOT NULL,
  `idSkillGroup` tinyint NOT NULL,
  `Skill` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `user_skills`
--

/*!50001 DROP TABLE IF EXISTS `user_skills`*/;
/*!50001 DROP VIEW IF EXISTS `user_skills`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `user_skills` AS select `user`.`ID` AS `ID`,`user`.`FirstName` AS `FirstName`,`user`.`Age` AS `Age`,`user`.`LastName` AS `LastName`,`user`.`NickName` AS `NickName`,`rank`.`rank_id` AS `rank_id`,`rank`.`skill_id` AS `skill_id`,`g`.`SkillGroup` AS `SkillGroup`,`g`.`idSkillGroup` AS `idSkillGroup`,`skills`.`Skill` AS `Skill` from (((`information` `user` join `skill_rank` `rank` on((`user`.`ID` = `rank`.`user_id`))) join `skills` on((`rank`.`skill_id` = `skills`.`idSkills`))) join `skillgroup` `g` on((`skills`.`SkillGroup` = `g`.`idSkillGroup`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-02 19:40:51
