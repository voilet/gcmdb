-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: 192.168.8.80    Database: fun_devops_cmdb
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `fun_adaptorinfo`
--

DROP TABLE IF EXISTS `fun_adaptorinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_adaptorinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  `num` int(2) DEFAULT NULL,
  `categoryadaptorinfo_id` int(4) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_adaptorinfo_id` (`id`),
  KEY `idx_fun_adaptorinfo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_adaptorinfo`
--

LOCK TABLES `fun_adaptorinfo` WRITE;
/*!40000 ALTER TABLE `fun_adaptorinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_adaptorinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_auth_token`
--

DROP TABLE IF EXISTS `fun_auth_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_auth_token` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `token_id` text NOT NULL,
  `expires` timestamp NULL DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_auth_token_id` (`id`),
  KEY `idx_fun_auth_token_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_auth_token`
--

LOCK TABLES `fun_auth_token` WRITE;
/*!40000 ALTER TABLE `fun_auth_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_auth_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_auth_token_log`
--

DROP TABLE IF EXISTS `fun_auth_token_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_auth_token_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `token_id` text NOT NULL,
  `url` text NOT NULL,
  `method` varchar(32) NOT NULL,
  `active_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_auth_token_log_id` (`id`),
  KEY `idx_fun_auth_token_log_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_auth_token_log`
--

LOCK TABLES `fun_auth_token_log` WRITE;
/*!40000 ALTER TABLE `fun_auth_token_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_auth_token_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_bay_in`
--

DROP TABLE IF EXISTS `fun_bay_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_bay_in` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `bay_name` varchar(64) NOT NULL,
  `height_id` int(10) unsigned DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `cabinet_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_bay_in_id` (`id`),
  KEY `idx_fun_bay_in_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_bay_in`
--

LOCK TABLES `fun_bay_in` WRITE;
/*!40000 ALTER TABLE `fun_bay_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_bay_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_bayheight`
--

DROP TABLE IF EXISTS `fun_bayheight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_bayheight` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_bayheight_id` (`id`),
  KEY `idx_fun_bayheight_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_bayheight`
--

LOCK TABLES `fun_bayheight` WRITE;
/*!40000 ALTER TABLE `fun_bayheight` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_bayheight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_cabinet`
--

DROP TABLE IF EXISTS `fun_cabinet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_cabinet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cabinet_name` varchar(64) NOT NULL,
  `capacity` int(10) unsigned DEFAULT NULL,
  `freecapacity` int(10) unsigned DEFAULT NULL,
  `cableport` int(10) unsigned DEFAULT NULL,
  `freeport` int(10) unsigned DEFAULT NULL,
  `power` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remarks` text,
  `idcid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_cabinet_id` (`id`),
  KEY `idx_fun_cabinet_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_cabinet`
--

LOCK TABLES `fun_cabinet` WRITE;
/*!40000 ALTER TABLE `fun_cabinet` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_cabinet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_cabinets`
--

DROP TABLE IF EXISTS `fun_cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_cabinets` (
  `idc_id` int(10) unsigned NOT NULL,
  `cabinet_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idc_id`,`cabinet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_cabinets`
--

LOCK TABLES `fun_cabinets` WRITE;
/*!40000 ALTER TABLE `fun_cabinets` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_carving`
--

DROP TABLE IF EXISTS `fun_carving`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_carving` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `project_id` int(10) unsigned DEFAULT NULL,
  `release` text,
  `release_args` varchar(255) DEFAULT NULL,
  `rollback` text,
  `rollback_args` varchar(255) DEFAULT NULL,
  `release_timeout` int(3) DEFAULT NULL,
  `rollback_timeout` int(3) DEFAULT NULL,
  `call_back_url` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_carving_id` (`id`),
  KEY `idx_fun_carving_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_carving`
--

LOCK TABLES `fun_carving` WRITE;
/*!40000 ALTER TABLE `fun_carving` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_carving` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_carving_hosts`
--

DROP TABLE IF EXISTS `fun_carving_hosts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_carving_hosts` (
  `carving_id` int(10) unsigned NOT NULL,
  `host_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`carving_id`,`host_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_carving_hosts`
--

LOCK TABLES `fun_carving_hosts` WRITE;
/*!40000 ALTER TABLE `fun_carving_hosts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_carving_hosts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_carving_releace`
--

DROP TABLE IF EXISTS `fun_carving_releace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_carving_releace` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `release_version` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `auto` tinyint(1) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `carving_id` int(10) unsigned DEFAULT NULL,
  `reset` tinyint(1) NOT NULL,
  `global` tinyint(1) NOT NULL,
  `swan_env_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_carving_releace_id` (`id`),
  KEY `idx_fun_carving_releace_deleted_at` (`deleted_at`),
  KEY `idx_fun_carving_releace_enable` (`enable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_carving_releace`
--

LOCK TABLES `fun_carving_releace` WRITE;
/*!40000 ALTER TABLE `fun_carving_releace` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_carving_releace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_carving_releace_log`
--

DROP TABLE IF EXISTS `fun_carving_releace_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_carving_releace_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(64) NOT NULL,
  `fqdn` varchar(64) NOT NULL,
  `pre_status` tinyint(1) NOT NULL,
  `post_status` tinyint(1) NOT NULL,
  `carving_releace_id` int(10) unsigned DEFAULT NULL,
  `log_msg` text NOT NULL,
  `remarks` text NOT NULL,
  `reset` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_carving_releace_log_deleted_at` (`deleted_at`),
  KEY `idx_fun_carving_releace_log_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_carving_releace_log`
--

LOCK TABLES `fun_carving_releace_log` WRITE;
/*!40000 ALTER TABLE `fun_carving_releace_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_carving_releace_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_carving_task`
--

DROP TABLE IF EXISTS `fun_carving_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_carving_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `release_shell` varchar(255) DEFAULT NULL,
  `reset_shell` text NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `carving_id` int(10) unsigned DEFAULT NULL,
  `bash_timeout` int(3) DEFAULT NULL,
  `task_type` tinyint(1) NOT NULL,
  `task_host` varchar(255) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_carving_task_id` (`id`),
  KEY `idx_fun_carving_task_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_carving_task`
--

LOCK TABLES `fun_carving_task` WRITE;
/*!40000 ALTER TABLE `fun_carving_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_carving_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_case`
--

DROP TABLE IF EXISTS `fun_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_case` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `case_id` varchar(64) NOT NULL,
  `application_id` int(10) unsigned DEFAULT NULL,
  `approved_status` tinyint(1) NOT NULL,
  `approve_user_group_id` int(10) unsigned DEFAULT NULL,
  `approve_content` text NOT NULL,
  `expect_time` timestamp NULL DEFAULT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `approved` timestamp NULL DEFAULT NULL,
  `close` timestamp NULL DEFAULT NULL,
  `grade` bigint(20) DEFAULT NULL,
  `content` text NOT NULL,
  `remarks` text NOT NULL,
  `case_user_id` int(10) unsigned DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_case_id` (`id`),
  KEY `idx_fun_case_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_case`
--

LOCK TABLES `fun_case` WRITE;
/*!40000 ALTER TABLE `fun_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_categoryadaptorinfo`
--

DROP TABLE IF EXISTS `fun_categoryadaptorinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_categoryadaptorinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_categoryadaptorinfo_id` (`id`),
  KEY `idx_fun_categoryadaptorinfo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_categoryadaptorinfo`
--

LOCK TABLES `fun_categoryadaptorinfo` WRITE;
/*!40000 ALTER TABLE `fun_categoryadaptorinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_categoryadaptorinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_categorycpuinfo`
--

DROP TABLE IF EXISTS `fun_categorycpuinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_categorycpuinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_categorycpuinfo_deleted_at` (`deleted_at`),
  KEY `idx_fun_categorycpuinfo_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_categorycpuinfo`
--

LOCK TABLES `fun_categorycpuinfo` WRITE;
/*!40000 ALTER TABLE `fun_categorycpuinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_categorycpuinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_categorydiskinfo`
--

DROP TABLE IF EXISTS `fun_categorydiskinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_categorydiskinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_categorydiskinfo_id` (`id`),
  KEY `idx_fun_categorydiskinfo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_categorydiskinfo`
--

LOCK TABLES `fun_categorydiskinfo` WRITE;
/*!40000 ALTER TABLE `fun_categorydiskinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_categorydiskinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_categorymeminfo`
--

DROP TABLE IF EXISTS `fun_categorymeminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_categorymeminfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_categorymeminfo_id` (`id`),
  KEY `idx_fun_categorymeminfo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_categorymeminfo`
--

LOCK TABLES `fun_categorymeminfo` WRITE;
/*!40000 ALTER TABLE `fun_categorymeminfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_categorymeminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_componentinfo`
--

DROP TABLE IF EXISTS `fun_componentinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_componentinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_componentinfo`
--

LOCK TABLES `fun_componentinfo` WRITE;
/*!40000 ALTER TABLE `fun_componentinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_componentinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_compose_plan`
--

DROP TABLE IF EXISTS `fun_compose_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_compose_plan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  `equipment_type_id` int(2) DEFAULT NULL,
  `cpuinfo_id` int(10) DEFAULT NULL,
  `meminfo_id` int(10) DEFAULT NULL,
  `diskinfo_id` int(10) DEFAULT NULL,
  `powerinfo_id` int(10) DEFAULT NULL,
  `adaptorinfo_id` int(10) DEFAULT NULL,
  `comment` text,
  PRIMARY KEY (`id`),
  KEY `idx_fun_compose_plan_id` (`id`),
  KEY `idx_fun_compose_plan_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_compose_plan`
--

LOCK TABLES `fun_compose_plan` WRITE;
/*!40000 ALTER TABLE `fun_compose_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_compose_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_cpuinfo`
--

DROP TABLE IF EXISTS `fun_cpuinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_cpuinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  `num` int(4) DEFAULT NULL,
  `mainfrequency` varchar(32) DEFAULT NULL,
  `cores` varchar(32) DEFAULT NULL,
  `categorycpuinfo_id` int(4) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_cpuinfo_id` (`id`),
  KEY `idx_fun_cpuinfo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_cpuinfo`
--

LOCK TABLES `fun_cpuinfo` WRITE;
/*!40000 ALTER TABLE `fun_cpuinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_cpuinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_diskinfo`
--

DROP TABLE IF EXISTS `fun_diskinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_diskinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  `num` int(6) DEFAULT NULL,
  `rpm` varchar(32) DEFAULT NULL,
  `volume` varchar(32) DEFAULT NULL,
  `categorydiskinfo_id` int(4) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_diskinfo_deleted_at` (`deleted_at`),
  KEY `idx_fun_diskinfo_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_diskinfo`
--

LOCK TABLES `fun_diskinfo` WRITE;
/*!40000 ALTER TABLE `fun_diskinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_diskinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_equipment_type`
--

DROP TABLE IF EXISTS `fun_equipment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_equipment_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_equipment_type_deleted_at` (`deleted_at`),
  KEY `idx_fun_equipment_type_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_equipment_type`
--

LOCK TABLES `fun_equipment_type` WRITE;
/*!40000 ALTER TABLE `fun_equipment_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_equipment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_fortress_audit`
--

DROP TABLE IF EXISTS `fun_fortress_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_fortress_audit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `username` varchar(64) NOT NULL,
  `session_id` varchar(64) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `login_time` varchar(64) NOT NULL,
  `cmd_record` varchar(128) NOT NULL,
  `directory` varchar(128) NOT NULL,
  `fortress_ip` varchar(16) NOT NULL,
  `client_ip` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_fortress_audit_id` (`id`),
  KEY `idx_fun_fortress_audit_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_fortress_audit`
--

LOCK TABLES `fun_fortress_audit` WRITE;
/*!40000 ALTER TABLE `fun_fortress_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_fortress_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_hardware_vendor`
--

DROP TABLE IF EXISTS `fun_hardware_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_hardware_vendor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_hardware_vendor_id` (`id`),
  KEY `idx_fun_hardware_vendor_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_hardware_vendor`
--

LOCK TABLES `fun_hardware_vendor` WRITE;
/*!40000 ALTER TABLE `fun_hardware_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_hardware_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host`
--

DROP TABLE IF EXISTS `fun_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `fqdn` varchar(64) NOT NULL,
  `serialnumber` varchar(32) DEFAULT NULL,
  `eth1` varchar(32) NOT NULL,
  `eth2` varchar(32) NOT NULL,
  `eth3` varchar(32) DEFAULT NULL,
  `eth4` varchar(32) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `guardblock` varchar(32) DEFAULT NULL,
  `start_guaratee` timestamp NULL DEFAULT NULL,
  `stop_guaratee` timestamp NULL DEFAULT NULL,
  `status` int(2) DEFAULT '2',
  `business_status` int(2) DEFAULT '10',
  `net_status` int(2) DEFAULT '12',
  `maintain_status` int(2) DEFAULT '13',
  `agent_survival` tinyint(1) NOT NULL,
  `remarks` text,
  `bond` varchar(32) DEFAULT NULL,
  `mac` varchar(20) DEFAULT NULL,
  `internal_ip` varchar(20) DEFAULT NULL,
  `manufacturer` varchar(64) DEFAULT NULL,
  `cpu_model` varchar(64) DEFAULT NULL,
  `cpuarch` varchar(20) DEFAULT NULL,
  `num_cpus` varchar(20) DEFAULT NULL,
  `osrelease` varchar(20) DEFAULT NULL,
  `disk` varchar(128) DEFAULT NULL,
  `memory` varchar(128) DEFAULT NULL,
  `assets_number` varchar(128) DEFAULT NULL,
  `switch_port` varchar(11) DEFAULT NULL,
  `service_code` varchar(32) DEFAULT NULL,
  `biosreleasedate` varchar(16) DEFAULT NULL,
  `biosversion` varchar(32) DEFAULT NULL,
  `agent_version` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_fqdn` (`fqdn`),
  KEY `idx_fun_host_serialnumber` (`serialnumber`),
  KEY `idx_fun_host_eth1` (`eth1`),
  KEY `idx_fun_host_agent_survival` (`agent_survival`),
  KEY `idx_fun_host_mac` (`mac`),
  KEY `idx_fun_host_internal_ip` (`internal_ip`),
  KEY `idx_fun_host_id` (`id`),
  KEY `idx_fun_host_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host`
--

LOCK TABLES `fun_host` WRITE;
/*!40000 ALTER TABLE `fun_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_compose_detail`
--

DROP TABLE IF EXISTS `fun_host_compose_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_compose_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `host_id` int(10) unsigned DEFAULT NULL,
  `compose_plan_id` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_compose_detail_id` (`id`),
  KEY `idx_fun_host_compose_detail_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_compose_detail`
--

LOCK TABLES `fun_host_compose_detail` WRITE;
/*!40000 ALTER TABLE `fun_host_compose_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_compose_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_detail`
--

DROP TABLE IF EXISTS `fun_host_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `host_id` int(10) unsigned DEFAULT NULL,
  `hardware_vendor_id` int(10) unsigned DEFAULT NULL,
  `equipment_type_id` int(10) unsigned DEFAULT NULL,
  `os_id` int(10) DEFAULT NULL,
  `os_version_id` int(10) DEFAULT NULL,
  `system_driver_env_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_detail_id` (`id`),
  KEY `idx_fun_host_detail_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_detail`
--

LOCK TABLES `fun_host_detail` WRITE;
/*!40000 ALTER TABLE `fun_host_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_idc_detail`
--

DROP TABLE IF EXISTS `fun_host_idc_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_idc_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `host_id` int(10) unsigned DEFAULT NULL,
  `idc_id` int(10) DEFAULT NULL,
  `cabinet_id` int(32) DEFAULT NULL,
  `bay_in_id` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_idc_detail_id` (`id`),
  KEY `idx_fun_host_idc_detail_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_idc_detail`
--

LOCK TABLES `fun_host_idc_detail` WRITE;
/*!40000 ALTER TABLE `fun_host_idc_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_idc_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_json_description`
--

DROP TABLE IF EXISTS `fun_host_json_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_json_description` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `subject` varchar(32) DEFAULT NULL,
  `description` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_json_description_deleted_at` (`deleted_at`),
  KEY `idx_fun_host_json_description_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_json_description`
--

LOCK TABLES `fun_host_json_description` WRITE;
/*!40000 ALTER TABLE `fun_host_json_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_json_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_manage_detail`
--

DROP TABLE IF EXISTS `fun_host_manage_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_manage_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `host_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_manage_detail_id` (`id`),
  KEY `idx_fun_host_manage_detail_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_manage_detail`
--

LOCK TABLES `fun_host_manage_detail` WRITE;
/*!40000 ALTER TABLE `fun_host_manage_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_manage_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_project`
--

DROP TABLE IF EXISTS `fun_host_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_project` (
  `host_project_detail_id` int(10) unsigned NOT NULL,
  `project_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`host_project_detail_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_project`
--

LOCK TABLES `fun_host_project` WRITE;
/*!40000 ALTER TABLE `fun_host_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_project_detail`
--

DROP TABLE IF EXISTS `fun_host_project_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_project_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `host_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_project_detail_deleted_at` (`deleted_at`),
  KEY `idx_fun_host_project_detail_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_project_detail`
--

LOCK TABLES `fun_host_project_detail` WRITE;
/*!40000 ALTER TABLE `fun_host_project_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_project_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_status`
--

DROP TABLE IF EXISTS `fun_host_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status_id` int(2) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_status_id` (`id`),
  KEY `idx_fun_host_status_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_status`
--

LOCK TABLES `fun_host_status` WRITE;
/*!40000 ALTER TABLE `fun_host_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_host_system_detail`
--

DROP TABLE IF EXISTS `fun_host_system_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_host_system_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `host_id` int(10) unsigned DEFAULT NULL,
  `system_driver_env_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_host_system_detail_id` (`id`),
  KEY `idx_fun_host_system_detail_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_host_system_detail`
--

LOCK TABLES `fun_host_system_detail` WRITE;
/*!40000 ALTER TABLE `fun_host_system_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_host_system_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_idc`
--

DROP TABLE IF EXISTS `fun_idc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_idc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `idc_name` varchar(64) NOT NULL,
  `band_width` varchar(128) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `ip_range` text NOT NULL,
  `addresses` text NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `providerids` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_idc_id` (`id`),
  KEY `idx_fun_idc_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_idc`
--

LOCK TABLES `fun_idc` WRITE;
/*!40000 ALTER TABLE `fun_idc` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_idc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_idc_provider_relation`
--

DROP TABLE IF EXISTS `fun_idc_provider_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_idc_provider_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `providerid` int(10) DEFAULT NULL,
  `idcid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_idc_provider_relation_id` (`id`),
  KEY `idx_fun_idc_provider_relation_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_idc_provider_relation`
--

LOCK TABLES `fun_idc_provider_relation` WRITE;
/*!40000 ALTER TABLE `fun_idc_provider_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_idc_provider_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_incident`
--

DROP TABLE IF EXISTS `fun_incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_incident` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `url` varchar(64) NOT NULL,
  `projectuser` varchar(64) NOT NULL,
  `handler` varchar(64) NOT NULL,
  `source_id` int(10) unsigned DEFAULT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `scan` timestamp NULL DEFAULT NULL,
  `close` timestamp NULL DEFAULT NULL,
  `mailcomment` text NOT NULL,
  `classical` tinyint(1) NOT NULL,
  `grade` bigint(20) DEFAULT NULL,
  `remarks` text NOT NULL,
  `notice_user` varchar(64) NOT NULL,
  `create_user_id` int(10) unsigned DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_incident_id` (`id`),
  KEY `idx_fun_incident_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_incident`
--

LOCK TABLES `fun_incident` WRITE;
/*!40000 ALTER TABLE `fun_incident` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_ippurpose`
--

DROP TABLE IF EXISTS `fun_ippurpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_ippurpose` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `iptitle` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_ippurpose_id` (`id`),
  KEY `idx_fun_ippurpose_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_ippurpose`
--

LOCK TABLES `fun_ippurpose` WRITE;
/*!40000 ALTER TABLE `fun_ippurpose` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_ippurpose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_ipresource`
--

DROP TABLE IF EXISTS `fun_ipresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_ipresource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(64) NOT NULL,
  `typeid` int(2) DEFAULT NULL,
  `purposeid` int(2) DEFAULT NULL,
  `mask` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remarks` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ipaddress` (`ipaddress`),
  KEY `idx_fun_ipresource_id` (`id`),
  KEY `idx_fun_ipresource_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_ipresource`
--

LOCK TABLES `fun_ipresource` WRITE;
/*!40000 ALTER TABLE `fun_ipresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_ipresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_ipstatus`
--

DROP TABLE IF EXISTS `fun_ipstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_ipstatus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ipstatus` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_ipstatus_id` (`id`),
  KEY `idx_fun_ipstatus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_ipstatus`
--

LOCK TABLES `fun_ipstatus` WRITE;
/*!40000 ALTER TABLE `fun_ipstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_ipstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_iptype`
--

DROP TABLE IF EXISTS `fun_iptype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_iptype` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `iptype` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_iptype_id` (`id`),
  KEY `idx_fun_iptype_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_iptype`
--

LOCK TABLES `fun_iptype` WRITE;
/*!40000 ALTER TABLE `fun_iptype` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_iptype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_jump_host`
--

DROP TABLE IF EXISTS `fun_jump_host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_jump_host` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `host_id` int(10) unsigned DEFAULT NULL,
  `auth_id` int(10) unsigned DEFAULT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_jump_host_id` (`id`),
  KEY `idx_fun_jump_host_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_jump_host`
--

LOCK TABLES `fun_jump_host` WRITE;
/*!40000 ALTER TABLE `fun_jump_host` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_jump_host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_meminfo`
--

DROP TABLE IF EXISTS `fun_meminfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_meminfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  `num` int(4) DEFAULT NULL,
  `mainfrequency` varchar(32) DEFAULT NULL,
  `categorymeminfo_id` int(4) DEFAULT NULL,
  `volume` varchar(32) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_meminfo_id` (`id`),
  KEY `idx_fun_meminfo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_meminfo`
--

LOCK TABLES `fun_meminfo` WRITE;
/*!40000 ALTER TABLE `fun_meminfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_meminfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_other`
--

DROP TABLE IF EXISTS `fun_other`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_other` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_other_id` (`id`),
  KEY `idx_fun_other_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_other`
--

LOCK TABLES `fun_other` WRITE;
/*!40000 ALTER TABLE `fun_other` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_other` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_other_group`
--

DROP TABLE IF EXISTS `fun_other_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_other_group` (
  `project_id` int(10) unsigned NOT NULL,
  `other_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`other_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_other_group`
--

LOCK TABLES `fun_other_group` WRITE;
/*!40000 ALTER TABLE `fun_other_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_other_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_powerinfo`
--

DROP TABLE IF EXISTS `fun_powerinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_powerinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  `num` int(6) DEFAULT NULL,
  `volume` varchar(32) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_powerinfo_id` (`id`),
  KEY `idx_fun_powerinfo_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_powerinfo`
--

LOCK TABLES `fun_powerinfo` WRITE;
/*!40000 ALTER TABLE `fun_powerinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_powerinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_project`
--

DROP TABLE IF EXISTS `fun_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_project` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `order` int(10) DEFAULT NULL,
  `code_url` text NOT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `all_path` varchar(64) NOT NULL,
  `domain` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_project_id` (`id`),
  KEY `idx_fun_project_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_project`
--

LOCK TABLES `fun_project` WRITE;
/*!40000 ALTER TABLE `fun_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_project_dev_user`
--

DROP TABLE IF EXISTS `fun_project_dev_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_project_dev_user` (
  `project_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_project_dev_user`
--

LOCK TABLES `fun_project_dev_user` WRITE;
/*!40000 ALTER TABLE `fun_project_dev_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_project_dev_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_project_group`
--

DROP TABLE IF EXISTS `fun_project_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_project_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `line_id` int(10) unsigned DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_project_group_id` (`id`),
  KEY `idx_fun_project_group_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_project_group`
--

LOCK TABLES `fun_project_group` WRITE;
/*!40000 ALTER TABLE `fun_project_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_project_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_project_line`
--

DROP TABLE IF EXISTS `fun_project_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_project_line` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `alias` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `order` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_project_line_id` (`id`),
  KEY `idx_fun_project_line_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_project_line`
--

LOCK TABLES `fun_project_line` WRITE;
/*!40000 ALTER TABLE `fun_project_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_project_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_project_operation`
--

DROP TABLE IF EXISTS `fun_project_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_project_operation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `operation` varchar(64) NOT NULL,
  `operater` varchar(64) NOT NULL,
  `operation_time` varchar(128) NOT NULL,
  `operation_projectid` int(10) unsigned DEFAULT NULL,
  `operation_groupid` int(10) unsigned DEFAULT NULL,
  `operation_lineid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_project_operation_id` (`id`),
  KEY `idx_fun_project_operation_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_project_operation`
--

LOCK TABLES `fun_project_operation` WRITE;
/*!40000 ALTER TABLE `fun_project_operation` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_project_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_project_ops_user`
--

DROP TABLE IF EXISTS `fun_project_ops_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_project_ops_user` (
  `project_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_project_ops_user`
--

LOCK TABLES `fun_project_ops_user` WRITE;
/*!40000 ALTER TABLE `fun_project_ops_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_project_ops_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_projects`
--

DROP TABLE IF EXISTS `fun_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_projects` (
  `project_group_id` int(10) unsigned NOT NULL,
  `project_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`project_group_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_projects`
--

LOCK TABLES `fun_projects` WRITE;
/*!40000 ALTER TABLE `fun_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_provider`
--

DROP TABLE IF EXISTS `fun_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_provider` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `provider_name` varchar(64) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `remarks` text NOT NULL,
  `comment` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_provider_id` (`id`),
  KEY `idx_fun_provider_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_provider`
--

LOCK TABLES `fun_provider` WRITE;
/*!40000 ALTER TABLE `fun_provider` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_providers`
--

DROP TABLE IF EXISTS `fun_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_providers` (
  `idc_id` int(10) unsigned NOT NULL,
  `provider_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idc_id`,`provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_providers`
--

LOCK TABLES `fun_providers` WRITE;
/*!40000 ALTER TABLE `fun_providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_safety`
--

DROP TABLE IF EXISTS `fun_safety`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_safety` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(64) NOT NULL,
  `tcp_port` text,
  `tcp_log` text,
  `tcp_count` int(6) DEFAULT NULL,
  `udp_port` text,
  `udp_log` text,
  `udp_count` int(6) DEFAULT NULL,
  `process` text,
  `process_count` int(6) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_safety_id` (`id`),
  KEY `idx_fun_safety_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_safety`
--

LOCK TABLES `fun_safety` WRITE;
/*!40000 ALTER TABLE `fun_safety` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_safety` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_safety_log`
--

DROP TABLE IF EXISTS `fun_safety_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_safety_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `ip` varchar(64) NOT NULL,
  `tcp` tinyint(1) NOT NULL,
  `ucp` tinyint(1) NOT NULL,
  `process` tinyint(1) NOT NULL,
  `log` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_safety_log_id` (`id`),
  KEY `idx_fun_safety_log_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_safety_log`
--

LOCK TABLES `fun_safety_log` WRITE;
/*!40000 ALTER TABLE `fun_safety_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_safety_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_source`
--

DROP TABLE IF EXISTS `fun_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_source_id` (`id`),
  KEY `idx_fun_source_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_source`
--

LOCK TABLES `fun_source` WRITE;
/*!40000 ALTER TABLE `fun_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_system_driver_env`
--

DROP TABLE IF EXISTS `fun_system_driver_env`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_system_driver_env` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_system_driver_env_id` (`id`),
  KEY `idx_fun_system_driver_env_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_system_driver_env`
--

LOCK TABLES `fun_system_driver_env` WRITE;
/*!40000 ALTER TABLE `fun_system_driver_env` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_system_driver_env` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_system_ldap_setting`
--

DROP TABLE IF EXISTS `fun_system_ldap_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_system_ldap_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `server` varchar(64) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `ldap_base` varchar(255) DEFAULT NULL,
  `ldap_base_dn` varchar(255) DEFAULT NULL,
  `bind_password` varchar(128) DEFAULT NULL,
  `use_ssl` tinyint(1) DEFAULT NULL,
  `skip_tls` tinyint(1) DEFAULT NULL,
  `insecure_skip_verify` tinyint(1) NOT NULL,
  `user_filter` varchar(128) DEFAULT NULL,
  `ldap_type` tinyint(1) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `remarks` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_system_ldap_setting_deleted_at` (`deleted_at`),
  KEY `idx_fun_system_ldap_setting_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_system_ldap_setting`
--

LOCK TABLES `fun_system_ldap_setting` WRITE;
/*!40000 ALTER TABLE `fun_system_ldap_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_system_ldap_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_system_os`
--

DROP TABLE IF EXISTS `fun_system_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_system_os` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_system_os_id` (`id`),
  KEY `idx_fun_system_os_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_system_os`
--

LOCK TABLES `fun_system_os` WRITE;
/*!40000 ALTER TABLE `fun_system_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_system_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_system_os_version`
--

DROP TABLE IF EXISTS `fun_system_os_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_system_os_version` (
  `system_os_id` int(10) unsigned NOT NULL,
  `system_driver_env_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`system_os_id`,`system_driver_env_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_system_os_version`
--

LOCK TABLES `fun_system_os_version` WRITE;
/*!40000 ALTER TABLE `fun_system_os_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_system_os_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user`
--

DROP TABLE IF EXISTS `fun_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `user_role_id` int(10) unsigned DEFAULT NULL,
  `leader` tinyint(1) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `is_super` tinyint(1) NOT NULL,
  `tree` text NOT NULL,
  `google_token` varchar(64) DEFAULT NULL,
  `ssh_pub` text NOT NULL,
  `ssh_group_id` int(10) unsigned DEFAULT NULL,
  `token_passwd` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `idx_fun_user_id` (`id`),
  KEY `idx_fun_user_deleted_at` (`deleted_at`),
  KEY `idx_fun_user_username` (`username`),
  KEY `idx_fun_user_enable` (`enable`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user`
--

LOCK TABLES `fun_user` WRITE;
/*!40000 ALTER TABLE `fun_user` DISABLE KEYS */;
INSERT INTO `fun_user` VALUES (1,'2018-11-06 15:14:38','2019-01-03 09:09:27',NULL,'songxs','宋绪双','songxs@fun.tv','7C4A8D09CA3762AF61E59520943DC26494F8941B',1,1,1,1,'{\n    \"tree\": null\n}','c65f19d78fa30ecac6348ced2bb33690','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJy6d7fEJSGtMRtrK2YuRe33WnpEPuZDEMECzAB8QcSmJ2vqLzAn7HRdXtTpuAyOuunaElrsf2V3q0BJG+exlNT8LnU1Hx/aizDLb1Tr7BggwxnhjNDs90AuIRPdNw0BVwR9q4HFsOjdotHvd42QZhJM+QVwrtuAA4/XXrpcdGTppxgSVsc56Tk9Uv9j6HNjWVWigB+1yW/Xfafwb5joaXWJ/pg8oEfGqd04OT0GCuTzxRKhx6sbjr5KtTSbm9IXKQ18YHXK4JLfvl2kDTduJzk4ccp0vHw4nhvkEDqeFPiumQT4Y7KgryLQ5HRHjFnPZYmh8cwiqd51Kyel6VmqOx voilet@voiletdeMacBook-Pro-2.local',1,1);
/*!40000 ALTER TABLE `fun_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user_auth_resource`
--

DROP TABLE IF EXISTS `fun_user_auth_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user_auth_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `auth_name` varchar(32) NOT NULL,
  `children_id` int(11) DEFAULT NULL,
  `rtype` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_for` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `auth_name` (`auth_name`),
  KEY `idx_fun_user_auth_resource_deleted_at` (`deleted_at`),
  KEY `idx_fun_user_auth_resource_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_auth_resource`
--

LOCK TABLES `fun_user_auth_resource` WRITE;
/*!40000 ALTER TABLE `fun_user_auth_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_user_auth_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user_auth_role`
--

DROP TABLE IF EXISTS `fun_user_auth_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user_auth_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  `user_nums` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_user_auth_role_id` (`id`),
  KEY `idx_fun_user_auth_role_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_auth_role`
--

LOCK TABLES `fun_user_auth_role` WRITE;
/*!40000 ALTER TABLE `fun_user_auth_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_user_auth_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user_group`
--

DROP TABLE IF EXISTS `fun_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `group_name` varchar(64) NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_user_group_id` (`id`),
  KEY `idx_fun_user_group_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_group`
--

LOCK TABLES `fun_user_group` WRITE;
/*!40000 ALTER TABLE `fun_user_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user_groups`
--

DROP TABLE IF EXISTS `fun_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`user_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_groups`
--

LOCK TABLES `fun_user_groups` WRITE;
/*!40000 ALTER TABLE `fun_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user_profile`
--

DROP TABLE IF EXISTS `fun_user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `wechat` varchar(32) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fun_user_profile_id` (`id`),
  KEY `idx_fun_user_profile_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_profile`
--

LOCK TABLES `fun_user_profile` WRITE;
/*!40000 ALTER TABLE `fun_user_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user_project`
--

DROP TABLE IF EXISTS `fun_user_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user_project` (
  `project_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_project`
--

LOCK TABLES `fun_user_project` WRITE;
/*!40000 ALTER TABLE `fun_user_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_user_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user_role_rel`
--

DROP TABLE IF EXISTS `fun_user_role_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user_role_rel` (
  `user_auth_role_id` int(10) unsigned NOT NULL,
  `user_auth_resource_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_auth_role_id`,`user_auth_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_role_rel`
--

LOCK TABLES `fun_user_role_rel` WRITE;
/*!40000 ALTER TABLE `fun_user_role_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_user_role_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fun_user_ssh_group`
--

DROP TABLE IF EXISTS `fun_user_ssh_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fun_user_ssh_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(32) NOT NULL,
  `rsa_key` text NOT NULL,
  `remarks` text NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `idx_fun_user_ssh_group_id` (`id`),
  KEY `idx_fun_user_ssh_group_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_ssh_group`
--

LOCK TABLES `fun_user_ssh_group` WRITE;
/*!40000 ALTER TABLE `fun_user_ssh_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `fun_user_ssh_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-07  9:06:55
