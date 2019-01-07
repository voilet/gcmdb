-- MySQL dump 10.13  Distrib 5.7.10, for osx10.11 (x86_64)
--
-- Host: localhost    Database: fun_devops_cmdb
-- ------------------------------------------------------
-- Server version	5.7.10

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
INSERT INTO `fun_user` VALUES (1,'2018-11-06 15:14:38','2019-01-03 09:09:27',NULL,'songxs','宋绪双','songxs@fun.tv','',1,1,1,1,'{\n    \"tree\": null\n}','fc1b39790fb3f2f8164abc8b4635b886','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJy6d7fEJSGtMRtrK2YuRe33WnpEPuZDEMECzAB8QcSmJ2vqLzAn7HRdXtTpuAyOuunaElrsf2V3q0BJG+exlNT8LnU1Hx/aizDLb1Tr7BggwxnhjNDs90AuIRPdNw0BVwR9q4HFsOjdotHvd42QZhJM+QVwrtuAA4/XXrpcdGTppxgSVsc56Tk9Uv9j6HNjWVWigB+1yW/Xfafwb5joaXWJ/pg8oEfGqd04OT0GCuTzxRKhx6sbjr5KtTSbm9IXKQ18YHXK4JLfvl2kDTduJzk4ccp0vHw4nhvkEDqeFPiumQT4Y7KgryLQ5HRHjFnPZYmh8cwiqd51Kyel6VmqOx voilet@voiletdeMacBook-Pro-2.local',1,1),(2,'2018-11-18 17:33:05','2019-01-01 22:34:41',NULL,'wanghd','王会东','wanghd@fun.tv','7014850EA5590776C2EFD2F58477DFC9D7D91F3A',1,1,1,1,'{}','205903bdf3fe0b17450b3a89cb862a4e','ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAv5sWS1xPkUEVdzeZ20Yyc36518fme7E7RYTQ1m0mcNcnERHsOIORlDT+DaUPkWYHbidOy79Hx3VgUH209UOQPeue0qq5pOwyhp7u0P54zw9iVY/zGopVIuxza5NNyrPQQq35sy/HTGdud0y5rxnl85VaBUkjChCbt7dVwhmwyw7W9Y0wRabB6XH3aDchTLVR5vIQazYDQOgxy8uhtiSYG7tJN86+jWOxZXtsfDmDzcsT4D/uxaWqAXvZVqUR4Ekky3uzLvmmW9ztTwsYHjX9CNAfsdF2lxthPCaqUTx72xTMj651PvHZqqKfv2QTiMP7HG5M+lzjN6tXUpDpWDiimQ== wanghd@funshion-100\n[root@DB-BACKUP-101 users]# cat wanghd/.ssh/authorized_keys\nssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQDNvf1l6MUL/VyK6raWfDWsrWmhDYbs6ajqw2JBjH/h/sEhXJtqSOtobc6fr6QOrLBL0mx+fugHUScCO8QjxuHGMu87k4Kk/7COTtvG0odXeIxdop2i3UEE6JT+ytL0b2NPlzL6yhDSAlLVfl60oJYxMLhPdf8lgvwxSJvusgfODw== wanghd@funshion',NULL,1),(3,'2018-11-18 17:36:19','2018-11-18 17:36:21',NULL,'guojy','郭江勇','guojy@fun.tv',NULL,NULL,0,1,1,'{}','c65f19d78fa30ecac6348ced2bb33690','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQC0W4MsiGsi+ZhRIr9ZQ+qjHJ7Dj8zSP1IDhyiyhgnb31DTGFmfhvmAWMMKVB8007GqPnuh+uK7IuDNwBUbutR+uO65FdIu4a8/pRmxsOK9/K4CfW9D149d1F+rdWIAJ4eoAU3HyJriZkfyA0ZPP4UwMgRhrH8GoRPE70yM9jkt3Q== guojy@funshion\nssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEApKxGvq2lLni+DibvDd4rSZMo1Jy/vClR8YR3ltsB0+mJi7CwDMdDWxndguX3J3WUp+4xftS9TI+avfOhq0Z8qvSE10rr65vmavph+bfjlBHDLJZqrICt2MUbGcQQmS5e0olEQlPVoGJ+/LVPyTwbUYa+A4wda4OgB6/tJZxAjU5VOUdEuOlsxnQCiZtqRkBwKGNMXfm4PIMI9/yxQrFUBpcbFzlzygcdZkbQRrz3Fz/7QfjHcBqoNZBXzcOlN53+rY972gRtw9lCUK+hl7EHJdfF++ZbZNxMyvKNwlgvTpmKRm+WqbfXpC3aLhq0O4VvlEU4JVsz1cXd3mUAKyMsIQ== guojy@funshion-100',NULL,1),(4,'2018-11-18 17:44:43','2018-11-18 17:44:45',NULL,'lvrn','吕荣男','lvrn@fun.tv',NULL,NULL,0,1,1,'{}','01388931b7650a07f6ad9c28c6ea299a','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCuj8aLD8CGDSHBZF1mOFZeUMJOjx4lv/NJ6nw0pk2M/Dg7/gfqvF4qa+RamkarKZcnyO6X2lLVX/R1JqR+tsmLuTtJq7nue15v3kM9vNC2Em4I3n7fA7hqQ6QyIwTdp+A9tV4yREyeRWWqpQsQ7VMfoySJyhsou1C6g9SqL7fk6Q== LVRONGNAN@FUNSHION',NULL,1),(5,'2018-11-19 08:36:04','2018-11-19 08:36:06',NULL,'shenym','沈永明','shenym@fun.tv',NULL,NULL,0,1,1,'{}','45e6f9dd01c7ef507dd2ed24ff4d45f9','ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA1F4ogLem30JoL27UVxYRkRVRKt0YMRhJ2Lcer38gkgG4coE09Bn8OqX8EMYww/boMULMwPNVLRIJR1puDWDCEQQWJM0d0PUHHDsSg6+eeR3raUDRk5DZLOYwoPVltqkNhiFMQE40v8j90X4kbIlhaIqQky8JDDADAgpKiBxK2MOX3GYr0ufUMANb2abL4DBucipqZz1q38PsLxp+qtl3VSfLfyx6fhwCAFHgBXv4RepYhLAtZrk0shf3dTCe3vF5xjwGSqlIhUG8BVgknXwkDwRKysW6SpChsmN+Ee1Y2TMdj5dFieBFaPG5hP8iy1TP1nrugwmaJ2TkRleJgZecyw== shenym@Switch_Login',NULL,1),(6,'2018-11-19 08:37:09','2018-11-19 08:37:10',NULL,'zhangzhang','张璋','zhangzhang@fun.tv',NULL,NULL,0,1,1,'{}','1e2f23c98c5f9261ef92680e274aabaf','ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQCnZR4eB5zWw6T7v6HUEIWJEKclVy2kLQKmfD92TtumcCRpqp8ud18qZd9i1jnYX9d3Yin0OM5LzzV+LPmAIWCkGiBxb7l+aqSYKlAJWp3ESX12wR5S8esmk9IwYkTGfxyhrFyvFaFL6D+VSiYLUcScrmctaexgCFmtIsisZvfY9Q== ZHANGZHANG@FUNSHION',NULL,0),(7,'2018-12-18 01:17:13','2018-12-18 01:25:24',NULL,'liwh','李文华','liwh@fun.tv','DA39A3EE5E6B4B0D3255BFEF95601890AFD80709',0,0,1,0,'{\n    \"tree\": null\n}','1506b43528910066c89a80a6e72fc5fc','ssh-dss AAAAB3NzaC1kc3MAAACBAKSCJR1epGyEB2hmcndOr87uYL4B0EBBo4Tq4ZCLq4K/wHrvwGFhE9nPvHGmiQ6E5DnByL/5eDa0PxLW1wLN/Rz58Lp4O45Gv2WFkrh1VfWR5cm9YnqW0v79INVSgCHydUoW937+4LCB5PwIJiZjgaIIQBi6hVicBMBdlvOs5FpxAAAAFQC7VDekaH85boV0J22TYNizFLgagwAAAIACZkdO4UonA+624Saf/FlnOHqKUyl8fPRExaf0W82h6GUymxeXgVWJkAH23t9G0bkQDn7MHY1m6RwvKjwCKeBSvGNASoEZF12ncSl3MWwJGBCqQCmzj9ga6Z8OwTwPZ9KSMZ8EzRRevG18gRRG4vm4dU7NcKuQiDK+BlZNnmUzhwAAAIBYTX/TUqC7lq1qPaOcWmVi5LpY+0wip4e2UaCPhZ4D09XkX1vLcM+SJh0iQHneXr4LsCv4ja95kofsSGxga3xIvhRHmR+rLVYmJRttdNchx32RLdbWVZlCJDSruLfn/UFCQNwC3noGHWOYfZsrBctM+NuiTwQbzdQ7oTN9aQmSXQ== LIWH@FUNSHION',3,0);
/*!40000 ALTER TABLE `fun_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-07  9:11:14
