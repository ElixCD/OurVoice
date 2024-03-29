-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: OurVoice
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `factors`
--

DROP TABLE IF EXISTS `factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factors` (
  `idfactor` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  `users_iduser` int(11) NOT NULL,
  PRIMARY KEY (`idfactor`),
  KEY `fk_factor_users1_idx` (`users_iduser`),
  CONSTRAINT `fk_factor_users1` FOREIGN KEY (`users_iduser`) REFERENCES `users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factors`
--

LOCK TABLES `factors` WRITE;
/*!40000 ALTER TABLE `factors` DISABLE KEYS */;
INSERT INTO `factors` VALUES (1,'Si / No',1),(8,'Opciones',1),(9,'factor prueba',1),(10,'ch ch',1),(11,'yy',1);
/*!40000 ALTER TABLE `factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_access`
--

DROP TABLE IF EXISTS `module_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_access` (
  `idmodule_access` int(11) NOT NULL AUTO_INCREMENT,
  `roles_idrol` int(11) NOT NULL,
  `modules_idmodule` int(11) NOT NULL,
  `permissions_idpermission` int(11) NOT NULL,
  PRIMARY KEY (`idmodule_access`),
  KEY `fk_module_access_modules1_idx` (`modules_idmodule`),
  KEY `fk_module_access_permissions1_idx` (`permissions_idpermission`),
  KEY `fk_module_access_user_types1_idx` (`roles_idrol`) USING BTREE,
  CONSTRAINT `fk_module_access_modules1` FOREIGN KEY (`modules_idmodule`) REFERENCES `modules` (`idmodule`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_module_access_permissions1` FOREIGN KEY (`permissions_idpermission`) REFERENCES `permissions` (`idpermission`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_module_access_roles1` FOREIGN KEY (`roles_idrol`) REFERENCES `roles` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_access`
--

LOCK TABLES `module_access` WRITE;
/*!40000 ALTER TABLE `module_access` DISABLE KEYS */;
INSERT INTO `module_access` VALUES (1,1,1,3),(2,1,2,3),(3,1,3,3),(4,1,4,3),(5,2,1,3),(6,2,2,3),(7,2,3,3),(8,2,4,3),(9,3,4,3),(10,3,5,1),(11,3,6,1);
/*!40000 ALTER TABLE `module_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `idmodule` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idmodule`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
INSERT INTO `modules` VALUES (1,'factors'),(2,'surveys'),(3,'users'),(4,'account'),(5,'pendient'),(6,'solved');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `idpermission` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`idpermission`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'Read'),(2,'Write'),(3,'All');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `idquestion` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(45) NOT NULL,
  `mandatory` binary(1) NOT NULL,
  `factors_idfactor` int(11) NOT NULL,
  `surveys_idsurvey` int(11) NOT NULL,
  PRIMARY KEY (`idquestion`),
  KEY `fk_questions_factor1_idx` (`factors_idfactor`),
  KEY `fk_questions_survey1_idx` (`surveys_idsurvey`),
  CONSTRAINT `fk_questions_factor1` FOREIGN KEY (`factors_idfactor`) REFERENCES `factors` (`idfactor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questions_survey1` FOREIGN KEY (`surveys_idsurvey`) REFERENCES `surveys` (`idsurvey`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Question 1',0x31,1,1),(2,'Question 2',0x31,8,1),(4,'Mandatory Question',0x31,9,3),(7,'Question 1',0x31,1,4),(8,'sdfg',0x30,8,4);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responses` (
  `idresponse` int(11) NOT NULL AUTO_INCREMENT,
  `response` int(11) NOT NULL,
  `questions_idquestion` int(11) NOT NULL,
  PRIMARY KEY (`idresponse`),
  KEY `fk_response_questions1_idx` (`questions_idquestion`),
  CONSTRAINT `fk_response_questions1` FOREIGN KEY (`questions_idquestion`) REFERENCES `questions` (`idquestion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `idrol` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Super'),(2,'Admin'),(3,'User');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubrics`
--

DROP TABLE IF EXISTS `rubrics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubrics` (
  `idrubric` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  `value` int(11) NOT NULL,
  `factors_idfactor` int(11) NOT NULL,
  PRIMARY KEY (`idrubric`),
  KEY `fk_rubric_factor1_idx` (`factors_idfactor`),
  CONSTRAINT `fk_rubric_factor1` FOREIGN KEY (`factors_idfactor`) REFERENCES `factors` (`idfactor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubrics`
--

LOCK TABLES `rubrics` WRITE;
/*!40000 ALTER TABLE `rubrics` DISABLE KEYS */;
INSERT INTO `rubrics` VALUES (1,'Si',1,1),(2,'No',0,1),(3,'Opc 1',1,8),(4,'Opc 2',2,8),(5,'Opc 3',3,8),(6,'r12',1,9),(10,'r2',0,11);
/*!40000 ALTER TABLE `rubrics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `idsurvey` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `active` binary(1) NOT NULL,
  PRIMARY KEY (`idsurvey`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
INSERT INTO `surveys` VALUES (1,'Prueba 1',0x31),(2,'Prueba 2',0x31),(3,'encuesta para eliminar mas adelante',0x31),(4,'pa borrar otro',0x31);
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_relations`
--

DROP TABLE IF EXISTS `user_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_relations` (
  `iduser_relations` int(11) NOT NULL AUTO_INCREMENT,
  `users_iduser_admin` int(11) NOT NULL,
  `users_iduser_user` int(11) NOT NULL,
  PRIMARY KEY (`iduser_relations`),
  KEY `fk_user_relations_users1_idx` (`users_iduser_admin`),
  KEY `fk_user_relations_users2_idx` (`users_iduser_user`),
  CONSTRAINT `fk_user_relations_users_admin` FOREIGN KEY (`users_iduser_admin`) REFERENCES `users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_relations_users_user` FOREIGN KEY (`users_iduser_user`) REFERENCES `users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_relations`
--

LOCK TABLES `user_relations` WRITE;
/*!40000 ALTER TABLE `user_relations` DISABLE KEYS */;
INSERT INTO `user_relations` VALUES (1,1,2),(2,2,3),(3,2,14);
/*!40000 ALTER TABLE `user_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `iduser_rol` int(11) NOT NULL AUTO_INCREMENT,
  `users_iduser` int(11) NOT NULL,
  `roles_idrol` int(11) NOT NULL,
  PRIMARY KEY (`iduser_rol`),
  KEY `fk_user_rol_users1_idx` (`users_iduser`),
  KEY `fk_user_rol_roles1_idx` (`roles_idrol`),
  CONSTRAINT `fk_user_rol_roles1` FOREIGN KEY (`roles_idrol`) REFERENCES `roles` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_rol_users1` FOREIGN KEY (`users_iduser`) REFERENCES `users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1,1),(2,2,2),(5,3,3),(20,14,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_surveys`
--

DROP TABLE IF EXISTS `user_surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_surveys` (
  `iduser_survey` int(11) NOT NULL AUTO_INCREMENT,
  `users_iduser` int(11) NOT NULL,
  `surveys_idsurvey` int(11) NOT NULL,
  `propietary` binary(1) NOT NULL,
  `complete` binary(1) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `finish_date` datetime DEFAULT NULL,
  PRIMARY KEY (`iduser_survey`),
  KEY `fk_user_survey_users1_idx` (`users_iduser`),
  KEY `fk_user_survey_survey1_idx` (`surveys_idsurvey`),
  CONSTRAINT `fk_user_survey_survey1` FOREIGN KEY (`surveys_idsurvey`) REFERENCES `surveys` (`idsurvey`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_survey_users1` FOREIGN KEY (`users_iduser`) REFERENCES `users` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_surveys`
--

LOCK TABLES `user_surveys` WRITE;
/*!40000 ALTER TABLE `user_surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` binary(1) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `register_date` datetime NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'super@local.com','super','$2y$10$sR9bSd2p1AWtHu9FumE67O33yzucHJ.WHeyLYsBR1NStxF0gTmR1W',0x31,'2021-12-17 19:48:20','2021-06-11 09:27:09'),(2,'admin@local.com','admin','$2y$10$Uc2logJhqGF1LOG/FevQ9eLUbBJb23y9NdCEHvev.kMecdx.kuA2a',0x31,'2021-12-18 03:16:26','2021-06-11 09:27:09'),(3,'elix.cd@gmail.com','Elix Froyl├ín','$2y$10$bA61fQ7B4k26bVYIvRzC/O1S1kNNqFDCGpH8xsJAWtoc7PfY01IyK',0x31,'2021-12-17 19:19:14','2021-12-13 05:34:10'),(14,'elementorx@rocketmail.com','elementor','',0x31,NULL,'2021-12-16 19:53:56');
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

-- Dump completed on 2022-01-07 15:59:38
