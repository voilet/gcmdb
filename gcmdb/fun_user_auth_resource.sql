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
  `rtype` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_for` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `children_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `auth_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `idx_fun_user_auth_resource_deleted_at` (`deleted_at`),
  KEY `idx_fun_user_auth_resource_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fun_user_auth_resource`
--

LOCK TABLES `fun_user_auth_resource` WRITE;
/*!40000 ALTER TABLE `fun_user_auth_resource` DISABLE KEYS */;
INSERT INTO `fun_user_auth_resource` VALUES (1,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'硬件管理',0,'','',100,NULL,0,NULL,''),(2,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'套餐管理',0,'','',100,NULL,0,NULL,''),(3,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'权限管理',0,'','',100,NULL,0,NULL,''),(4,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'发布管理',0,'','',100,NULL,0,NULL,''),(5,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'故障管理',0,'','',100,NULL,0,NULL,''),(6,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'堡垒机',0,'','',100,NULL,0,NULL,''),(7,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'机房管理',0,'','',100,NULL,0,NULL,''),(8,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'产品线',0,'','',100,NULL,0,NULL,''),(9,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'项目组',0,'','',100,NULL,0,NULL,''),(10,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'项目',0,'','',100,NULL,0,NULL,''),(11,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'角色管理',0,'','',100,NULL,0,NULL,''),(12,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'搜索主机',1,'','HardwareDevicesControllerQuery.QueryHostAll',100,NULL,1,NULL,''),(13,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'主机列表',1,'','HardwareDevicesControllerQuery.QueryHostSearch',100,NULL,1,NULL,''),(14,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加资源',1,'','HardwareDevicesControllerCreate.AddHardwareDevicesControll',100,NULL,1,NULL,''),(15,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改资源',1,'','HardwareDevicesModify.ModifyDevicesControll',100,NULL,1,NULL,''),(16,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'查询主机密码',1,'','HardwareDevicesControllerQueryPassword.QueryPasswordControll',100,NULL,1,NULL,''),(17,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改主机密码',1,'','HardwareDevicesControllerModify.ModifyPasswordControll',100,NULL,1,NULL,''),(18,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除资源',1,'','HardwareDevicesControllerCreate.DeleteDevicesControll',100,NULL,1,NULL,''),(19,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改主机项目',1,'','HardwareDevicesControllerCreate.UpdateHostProject',100,NULL,1,NULL,''),(20,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'分配权限',1,'','AuthManageController.CreateAuthRoleResource',100,NULL,3,NULL,''),(21,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'查询权限',1,'','AuthResourceController.QueryResourceByRoleId',100,NULL,3,NULL,''),(22,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'用户列表',1,'','UserController.GetUserInfoList',100,NULL,11,NULL,''),(23,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'查询角色',1,'','AuthManageController.QueryAuthRole',100,NULL,11,NULL,''),(24,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加角色',1,'','AuthManageController.CreateAuthRole',100,NULL,11,NULL,''),(25,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改角色',1,'','AuthManageController.ModifyRole',100,NULL,11,NULL,''),(26,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除角色',1,'','AuthManageController.DeleteRole',100,NULL,11,NULL,''),(27,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加机房',1,'','IdclistControllerCreate.AddIdcControll',100,NULL,7,NULL,''),(28,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改机房',1,'','IdclistControllerModify.ModifyIdcControll',100,NULL,7,NULL,''),(29,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除机房',1,'','IdclistControllerDelete.DeleteIdcControll',100,NULL,7,NULL,''),(30,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'查询机房',1,'','IdclistControllerQuery.QueryIdcAllControll',100,NULL,7,NULL,''),(31,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加机柜',1,'','IdcCabinetControllerCreate.AddCabinetControll',100,NULL,7,NULL,''),(32,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改机柜',1,'','IdcCabinetControllerModify.ModifyCabinetControll',100,NULL,7,NULL,''),(33,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除机柜',1,'','IdcCabinetControllerDelete.DeleteCabinetControll',100,NULL,7,NULL,''),(34,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'机柜列表',1,'','IdcCabinetControllerQuery.QueryCabinetAll',100,NULL,7,NULL,''),(35,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'运营商列表',1,'','IdcProviderControllerQuery.QueryallProviderControll',100,NULL,7,NULL,''),(36,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加运营商',1,'','IdcProviderControllerCreate.AddProviderControll',100,NULL,7,NULL,''),(37,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改运营商',1,'','IdcProviderControllerModify.ModifyProviderControll',100,NULL,7,NULL,''),(38,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除运营商',1,'','IdcProviderControllerDelete.DeleteProviderControll',100,NULL,7,NULL,''),(39,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加套餐',1,'','HardwareDevicePlanControllerCreate.AddComponentsPlanControll',100,NULL,2,NULL,''),(40,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改套餐',1,'','HardwareDevicePlanControllerModify.ModifyComponentPlanControll',100,NULL,2,NULL,''),(41,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除套餐',1,'','HardwareDevicePlanControllerDelete.DeleteinfoControll',100,NULL,2,NULL,''),(42,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'套餐查询',1,'','HardwareDevicePlanControllerQuery.QueryComponentsAllControll',100,NULL,2,NULL,''),(43,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加组合套餐',1,'','HardwareDevicePlanControllerCreate.AddPlanControll',100,NULL,2,NULL,''),(44,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改组合套餐',1,'','HardwareDevicePlanControllerModify.ModifyPlanControll',100,NULL,2,NULL,''),(45,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除组合套餐',1,'','HardwareDevicePlanControllerDelete.DeletePlanControll',100,NULL,2,NULL,''),(46,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'套餐列表',1,'','HardwareDevicePlanControllerQuery.QueryComposeInfoControll',100,NULL,2,NULL,''),(47,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'查询产品线',1,'','ProjectLineController.QueryProjectLineControll',100,NULL,8,NULL,''),(48,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加产品线',1,'','ProjectLineController.AddProjectLine',100,NULL,8,NULL,''),(49,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改产品线',1,'','ProjectLineController.ModifyProjectLine',100,NULL,8,NULL,''),(50,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除产品线',1,'','ProjectLineController.DeleteProjectLine',100,NULL,8,NULL,''),(51,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加项目组',1,'','ProjectGroupController.AddProjectGroup',100,NULL,9,NULL,''),(52,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'查询项目组',1,'','ProjectGroupController.QueryProjectGroupALL',100,NULL,9,NULL,''),(53,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改项目组',1,'','ProjectGroupController.ModifyProjectGroup',100,NULL,9,NULL,''),(54,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除项目组',1,'','ProjectGroupController.DeleteProjectGroup',100,NULL,9,NULL,''),(55,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'项目列表',1,'','ProjectController.QueryAllProject',100,NULL,10,NULL,''),(56,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加项目',1,'','ProjectController.AddProject',100,NULL,10,NULL,''),(57,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改项目',1,'','ProjectController.ModifyProject',100,NULL,10,NULL,''),(58,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除项目',1,'','ProjectController.DeleteProject',100,NULL,10,NULL,''),(59,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加发布项',1,'','CarvingControllerCreate.AddCarving',100,NULL,4,NULL,''),(60,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改发布项',1,'','CarvingControllerModify.ModifyCarving',100,NULL,4,NULL,''),(61,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除发布项',1,'','CarvingControllerDelete.DeleteCarvingId',100,NULL,4,NULL,''),(62,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加发布项主机',1,'','CarvingControllerCreate.AddCarvingHost',100,NULL,4,NULL,''),(63,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加版本',1,'','CarvingControllerCreate.CreateCarvingVersion',100,NULL,4,NULL,''),(64,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改版本',1,'','CarvingControllerModify.ModifyVersion',100,NULL,4,NULL,''),(65,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除版本',1,'','CarvingControllerDelete.DeleteVersionId',100,NULL,4,NULL,''),(66,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加任务',1,'','CarvingTaskControllerCreate.CreateTask',100,NULL,4,NULL,''),(67,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改任务',1,'','CarvingTaskControllerModify.ModifyTask',100,NULL,4,NULL,''),(68,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除任务',1,'','CarvingTaskControllerDelete.DeleteTaskId',100,NULL,4,NULL,''),(69,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'查询发布任务',1,'','CarvingTaskControllerQuery.QueryTaskReleaseId',100,NULL,4,NULL,''),(70,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'查询回退任务',1,'','CarvingTaskControllerQuery.QueryTaskRestId',100,NULL,4,NULL,''),(71,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'代码发布',1,'','CarvingRpcController.ReleaseActiveId',100,NULL,4,NULL,''),(72,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'添加堡垒机用户组',1,'','JumpControllerCreate.CreateUserSshGroup',100,NULL,6,NULL,''),(73,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'修改堡垒机用户组',1,'','JumpControllerModify.ModifyUserSshGroup',100,NULL,6,NULL,''),(74,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'删除堡垒机用户组',1,'','FortressControllerDelete.DeleteFortressGroupId',100,NULL,6,NULL,''),(75,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'堡垒机授权',1,'','FortressControllerModify.ModifyUserSshGroupBat',100,NULL,6,NULL,''),(76,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'堡垒机更新权限',1,'','FortressControllerDelete.DeleteUserSshHost',100,NULL,6,NULL,''),(77,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'堡垒机当前用户',1,'','FortressControllerDelete.DeleteUserSshHost',100,NULL,6,NULL,''),(78,'2019-01-09 09:17:20','2019-01-09 09:17:20',NULL,'审计日志',1,'','FortressControllerQuery.AuditLoginList',100,NULL,6,NULL,'');
/*!40000 ALTER TABLE `fun_user_auth_resource` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-09 17:35:54
