CREATE DATABASE  IF NOT EXISTS `BANVETAUTRUCTUYEN` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `BANVETAUTRUCTUYEN`;
-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: BANVETAUTRUCTUYEN
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `conditions` json DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (40,'plugin::upload.read',NULL,'{}','[]','2022-12-18 16:55:00.138000','2022-12-18 16:55:00.138000',NULL,NULL),(41,'plugin::upload.assets.create',NULL,'{}','[]','2022-12-18 16:55:00.143000','2022-12-18 16:55:00.143000',NULL,NULL),(42,'plugin::upload.assets.update',NULL,'{}','[]','2022-12-18 16:55:00.148000','2022-12-18 16:55:00.148000',NULL,NULL),(43,'plugin::upload.assets.download',NULL,'{}','[]','2022-12-18 16:55:00.153000','2022-12-18 16:55:00.153000',NULL,NULL),(44,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-12-18 16:55:00.158000','2022-12-18 16:55:00.158000',NULL,NULL),(77,'plugin::upload.read',NULL,'{}','[\"admin::is-creator\"]','2022-12-18 16:55:00.354000','2022-12-18 16:55:00.354000',NULL,NULL),(78,'plugin::upload.assets.create',NULL,'{}','[]','2022-12-18 16:55:00.359000','2022-12-18 16:55:00.359000',NULL,NULL),(79,'plugin::upload.assets.update',NULL,'{}','[\"admin::is-creator\"]','2022-12-18 16:55:00.365000','2022-12-18 16:55:00.365000',NULL,NULL),(80,'plugin::upload.assets.download',NULL,'{}','[]','2022-12-18 16:55:00.371000','2022-12-18 16:55:00.371000',NULL,NULL),(81,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-12-18 16:55:00.376000','2022-12-18 16:55:00.376000',NULL,NULL),(121,'plugin::content-manager.single-types.configure-view',NULL,'{}','[]','2022-12-18 16:55:00.643000','2022-12-18 16:55:00.643000',NULL,NULL),(122,'plugin::content-manager.collection-types.configure-view',NULL,'{}','[]','2022-12-18 16:55:00.648000','2022-12-18 16:55:00.648000',NULL,NULL),(123,'plugin::content-manager.components.configure-layout',NULL,'{}','[]','2022-12-18 16:55:00.654000','2022-12-18 16:55:00.654000',NULL,NULL),(124,'plugin::content-type-builder.read',NULL,'{}','[]','2022-12-18 16:55:00.667000','2022-12-18 16:55:00.667000',NULL,NULL),(125,'plugin::email.settings.read',NULL,'{}','[]','2022-12-18 16:55:00.673000','2022-12-18 16:55:00.673000',NULL,NULL),(126,'plugin::upload.read',NULL,'{}','[]','2022-12-18 16:55:00.679000','2022-12-18 16:55:00.679000',NULL,NULL),(127,'plugin::upload.assets.create',NULL,'{}','[]','2022-12-18 16:55:00.684000','2022-12-18 16:55:00.684000',NULL,NULL),(128,'plugin::upload.assets.update',NULL,'{}','[]','2022-12-18 16:55:00.690000','2022-12-18 16:55:00.690000',NULL,NULL),(129,'plugin::upload.assets.download',NULL,'{}','[]','2022-12-18 16:55:00.695000','2022-12-18 16:55:00.695000',NULL,NULL),(130,'plugin::upload.assets.copy-link',NULL,'{}','[]','2022-12-18 16:55:00.701000','2022-12-18 16:55:00.701000',NULL,NULL),(131,'plugin::upload.settings.read',NULL,'{}','[]','2022-12-18 16:55:00.706000','2022-12-18 16:55:00.706000',NULL,NULL),(132,'plugin::i18n.locale.create',NULL,'{}','[]','2022-12-18 16:55:00.712000','2022-12-18 16:55:00.712000',NULL,NULL),(133,'plugin::i18n.locale.read',NULL,'{}','[]','2022-12-18 16:55:00.717000','2022-12-18 16:55:00.717000',NULL,NULL),(134,'plugin::i18n.locale.update',NULL,'{}','[]','2022-12-18 16:55:00.723000','2022-12-18 16:55:00.723000',NULL,NULL),(135,'plugin::i18n.locale.delete',NULL,'{}','[]','2022-12-18 16:55:00.728000','2022-12-18 16:55:00.728000',NULL,NULL),(136,'admin::marketplace.read',NULL,'{}','[]','2022-12-18 16:55:00.734000','2022-12-18 16:55:00.734000',NULL,NULL),(137,'admin::marketplace.plugins.install',NULL,'{}','[]','2022-12-18 16:55:00.740000','2022-12-18 16:55:00.740000',NULL,NULL),(138,'admin::marketplace.plugins.uninstall',NULL,'{}','[]','2022-12-18 16:55:00.745000','2022-12-18 16:55:00.745000',NULL,NULL),(139,'admin::webhooks.create',NULL,'{}','[]','2022-12-18 16:55:00.751000','2022-12-18 16:55:00.751000',NULL,NULL),(140,'admin::webhooks.read',NULL,'{}','[]','2022-12-18 16:55:00.758000','2022-12-18 16:55:00.758000',NULL,NULL),(141,'admin::webhooks.update',NULL,'{}','[]','2022-12-18 16:55:00.764000','2022-12-18 16:55:00.764000',NULL,NULL),(142,'admin::webhooks.delete',NULL,'{}','[]','2022-12-18 16:55:00.769000','2022-12-18 16:55:00.769000',NULL,NULL),(143,'admin::users.create',NULL,'{}','[]','2022-12-18 16:55:00.775000','2022-12-18 16:55:00.775000',NULL,NULL),(144,'admin::users.read',NULL,'{}','[]','2022-12-18 16:55:00.781000','2022-12-18 16:55:00.781000',NULL,NULL),(145,'admin::users.update',NULL,'{}','[]','2022-12-18 16:55:00.786000','2022-12-18 16:55:00.786000',NULL,NULL),(146,'admin::users.delete',NULL,'{}','[]','2022-12-18 16:55:00.792000','2022-12-18 16:55:00.792000',NULL,NULL),(147,'admin::roles.create',NULL,'{}','[]','2022-12-18 16:55:00.798000','2022-12-18 16:55:00.798000',NULL,NULL),(148,'admin::roles.read',NULL,'{}','[]','2022-12-18 16:55:00.803000','2022-12-18 16:55:00.803000',NULL,NULL),(149,'admin::roles.update',NULL,'{}','[]','2022-12-18 16:55:00.809000','2022-12-18 16:55:00.809000',NULL,NULL),(150,'admin::roles.delete',NULL,'{}','[]','2022-12-18 16:55:00.814000','2022-12-18 16:55:00.814000',NULL,NULL),(151,'admin::api-tokens.access',NULL,'{}','[]','2022-12-18 16:55:00.820000','2022-12-18 16:55:00.820000',NULL,NULL),(152,'admin::api-tokens.create',NULL,'{}','[]','2022-12-18 16:55:00.826000','2022-12-18 16:55:00.826000',NULL,NULL),(153,'admin::api-tokens.read',NULL,'{}','[]','2022-12-18 16:55:00.831000','2022-12-18 16:55:00.831000',NULL,NULL),(154,'admin::api-tokens.update',NULL,'{}','[]','2022-12-18 16:55:00.837000','2022-12-18 16:55:00.837000',NULL,NULL),(155,'admin::api-tokens.regenerate',NULL,'{}','[]','2022-12-18 16:55:00.843000','2022-12-18 16:55:00.843000',NULL,NULL),(156,'admin::api-tokens.delete',NULL,'{}','[]','2022-12-18 16:55:00.852000','2022-12-18 16:55:00.852000',NULL,NULL),(157,'admin::project-settings.update',NULL,'{}','[]','2022-12-18 16:55:00.858000','2022-12-18 16:55:00.858000',NULL,NULL),(158,'admin::project-settings.read',NULL,'{}','[]','2022-12-18 16:55:00.863000','2022-12-18 16:55:00.863000',NULL,NULL),(171,'plugin::content-manager.explorer.create','plugin::chartbrew.chartbrew','{\"fields\": [\"host\", \"token\"]}','[]','2022-12-18 17:05:42.146000','2022-12-18 17:05:42.146000',NULL,NULL),(172,'plugin::content-manager.explorer.read','plugin::chartbrew.chartbrew','{\"fields\": [\"host\", \"token\"]}','[]','2022-12-18 17:05:42.154000','2022-12-18 17:05:42.154000',NULL,NULL),(173,'plugin::content-manager.explorer.update','plugin::chartbrew.chartbrew','{\"fields\": [\"host\", \"token\"]}','[]','2022-12-18 17:05:42.161000','2022-12-18 17:05:42.161000',NULL,NULL),(174,'plugin::content-manager.explorer.delete','plugin::chartbrew.chartbrew','{}','[]','2022-12-18 17:05:42.167000','2022-12-18 17:05:42.167000',NULL,NULL),(259,'plugin::content-manager.explorer.create','plugin::tiny-train.ga','{\"fields\": [\"MaGA\", \"TenGa\", \"CuLy\", \"DiaChi\"]}','[]','2022-12-19 16:07:28.815000','2022-12-19 16:07:28.815000',NULL,NULL),(260,'plugin::content-manager.explorer.create','plugin::tiny-train.ghe','{\"fields\": [\"MaGHE\", \"LoaiGhe\", \"DienGiai\"]}','[]','2022-12-19 16:07:28.819000','2022-12-19 16:07:28.819000',NULL,NULL),(262,'plugin::content-manager.explorer.create','plugin::tiny-train.khachhang','{\"fields\": [\"MaKH\", \"CCCD\", \"HoDem\", \"Ten\", \"SDT\", \"NgaySinh\", \"DoiTuong\"]}','[]','2022-12-19 16:07:28.829000','2022-12-19 16:07:28.829000',NULL,NULL),(263,'plugin::content-manager.explorer.create','plugin::tiny-train.khuyenmai','{\"fields\": [\"MaKM\", \"TenKM\", \"TiLeGiam\", \"NgayHetHan\"]}','[]','2022-12-19 16:07:28.833000','2022-12-19 16:07:28.833000',NULL,NULL),(264,'plugin::content-manager.explorer.create','plugin::tiny-train.tau','{\"fields\": [\"MaTAU\", \"TenTau\"]}','[]','2022-12-19 16:07:28.837000','2022-12-19 16:07:28.837000',NULL,NULL),(269,'plugin::content-manager.explorer.read','plugin::tiny-train.ga','{\"fields\": [\"MaGA\", \"TenGa\", \"CuLy\", \"DiaChi\"]}','[]','2022-12-19 16:07:28.860000','2022-12-19 16:07:28.860000',NULL,NULL),(270,'plugin::content-manager.explorer.read','plugin::tiny-train.ghe','{\"fields\": [\"MaGHE\", \"LoaiGhe\", \"DienGiai\"]}','[]','2022-12-19 16:07:28.864000','2022-12-19 16:07:28.864000',NULL,NULL),(272,'plugin::content-manager.explorer.read','plugin::tiny-train.khachhang','{\"fields\": [\"MaKH\", \"CCCD\", \"HoDem\", \"Ten\", \"SDT\", \"NgaySinh\", \"DoiTuong\"]}','[]','2022-12-19 16:07:28.874000','2022-12-19 16:07:28.874000',NULL,NULL),(273,'plugin::content-manager.explorer.read','plugin::tiny-train.khuyenmai','{\"fields\": [\"MaKM\", \"TenKM\", \"TiLeGiam\", \"NgayHetHan\"]}','[]','2022-12-19 16:07:28.878000','2022-12-19 16:07:28.878000',NULL,NULL),(274,'plugin::content-manager.explorer.read','plugin::tiny-train.tau','{\"fields\": [\"MaTAU\", \"TenTau\"]}','[]','2022-12-19 16:07:28.883000','2022-12-19 16:07:28.883000',NULL,NULL),(279,'plugin::content-manager.explorer.update','plugin::tiny-train.ga','{\"fields\": [\"MaGA\", \"TenGa\", \"CuLy\", \"DiaChi\"]}','[]','2022-12-19 16:07:28.907000','2022-12-19 16:07:28.907000',NULL,NULL),(280,'plugin::content-manager.explorer.update','plugin::tiny-train.ghe','{\"fields\": [\"MaGHE\", \"LoaiGhe\", \"DienGiai\"]}','[]','2022-12-19 16:07:28.913000','2022-12-19 16:07:28.913000',NULL,NULL),(282,'plugin::content-manager.explorer.update','plugin::tiny-train.khachhang','{\"fields\": [\"MaKH\", \"CCCD\", \"HoDem\", \"Ten\", \"SDT\", \"NgaySinh\", \"DoiTuong\"]}','[]','2022-12-19 16:07:28.923000','2022-12-19 16:07:28.923000',NULL,NULL),(283,'plugin::content-manager.explorer.update','plugin::tiny-train.khuyenmai','{\"fields\": [\"MaKM\", \"TenKM\", \"TiLeGiam\", \"NgayHetHan\"]}','[]','2022-12-19 16:07:28.928000','2022-12-19 16:07:28.928000',NULL,NULL),(284,'plugin::content-manager.explorer.update','plugin::tiny-train.tau','{\"fields\": [\"MaTAU\", \"TenTau\"]}','[]','2022-12-19 16:07:28.932000','2022-12-19 16:07:28.932000',NULL,NULL),(288,'plugin::content-manager.explorer.delete','plugin::tiny-train.cthoadon','{}','[]','2022-12-19 16:07:28.952000','2022-12-19 16:07:28.952000',NULL,NULL),(289,'plugin::content-manager.explorer.delete','plugin::tiny-train.ga','{}','[]','2022-12-19 16:07:28.957000','2022-12-19 16:07:28.957000',NULL,NULL),(290,'plugin::content-manager.explorer.delete','plugin::tiny-train.ghe','{}','[]','2022-12-19 16:07:28.961000','2022-12-19 16:07:28.961000',NULL,NULL),(291,'plugin::content-manager.explorer.delete','plugin::tiny-train.hoadon','{}','[]','2022-12-19 16:07:28.965000','2022-12-19 16:07:28.965000',NULL,NULL),(292,'plugin::content-manager.explorer.delete','plugin::tiny-train.khachhang','{}','[]','2022-12-19 16:07:28.969000','2022-12-19 16:07:28.969000',NULL,NULL),(293,'plugin::content-manager.explorer.delete','plugin::tiny-train.khuyenmai','{}','[]','2022-12-19 16:07:28.973000','2022-12-19 16:07:28.973000',NULL,NULL),(294,'plugin::content-manager.explorer.delete','plugin::tiny-train.tau','{}','[]','2022-12-19 16:07:28.977000','2022-12-19 16:07:28.977000',NULL,NULL),(295,'plugin::content-manager.explorer.delete','plugin::tiny-train.toa','{}','[]','2022-12-19 16:07:28.981000','2022-12-19 16:07:28.981000',NULL,NULL),(296,'plugin::content-manager.explorer.delete','plugin::tiny-train.toatau','{}','[]','2022-12-19 16:07:28.986000','2022-12-19 16:07:28.986000',NULL,NULL),(301,'plugin::content-manager.explorer.delete','plugin::tiny-train.chuyendi','{}','[]','2022-12-19 16:10:12.901000','2022-12-19 16:10:12.901000',NULL,NULL),(341,'plugin::content-manager.explorer.create','plugin::tiny-train.toa','{\"fields\": [\"MaTOA\", \"SoLuongGhe\", \"LoaiToa\"]}','[]','2022-12-23 10:03:08.232000','2022-12-23 10:03:08.232000',NULL,NULL),(345,'plugin::content-manager.explorer.read','plugin::tiny-train.toa','{\"fields\": [\"MaTOA\", \"SoLuongGhe\", \"LoaiToa\"]}','[]','2022-12-23 10:03:08.277000','2022-12-23 10:03:08.277000',NULL,NULL),(349,'plugin::content-manager.explorer.update','plugin::tiny-train.toa','{\"fields\": [\"MaTOA\", \"SoLuongGhe\", \"LoaiToa\"]}','[]','2022-12-23 10:03:08.339000','2022-12-23 10:03:08.339000',NULL,NULL),(351,'plugin::content-manager.explorer.delete','plugin::tiny-train.phieudatve','{}','[]','2022-12-23 10:03:08.369000','2022-12-23 10:03:08.369000',NULL,NULL),(358,'plugin::content-manager.explorer.create','plugin::tiny-train.chuyendi','{\"fields\": [\"MACHUYENDI\", \"MaTAU\", \"NgayDi\", \"NgayDen\", \"GioDi\", \"GioDen\", \"GaDi\", \"GaDen\"]}','[]','2022-12-23 10:32:49.365000','2022-12-23 10:32:49.365000',NULL,NULL),(359,'plugin::content-manager.explorer.read','plugin::tiny-train.chuyendi','{\"fields\": [\"MACHUYENDI\", \"MaTAU\", \"NgayDi\", \"NgayDen\", \"GioDi\", \"GioDen\", \"GaDi\", \"GaDen\"]}','[]','2022-12-23 10:32:49.375000','2022-12-23 10:32:49.375000',NULL,NULL),(360,'plugin::content-manager.explorer.update','plugin::tiny-train.chuyendi','{\"fields\": [\"MACHUYENDI\", \"MaTAU\", \"NgayDi\", \"NgayDen\", \"GioDi\", \"GioDen\", \"GaDi\", \"GaDen\"]}','[]','2022-12-23 10:32:49.383000','2022-12-23 10:32:49.383000',NULL,NULL),(367,'plugin::content-manager.explorer.create','plugin::tiny-train.toatau','{\"fields\": [\"MaTOA\", \"MaTAU\", \"MaGHE\", \"SoThuTu\", \"Gia\"]}','[]','2022-12-23 11:14:29.370000','2022-12-23 11:14:29.370000',NULL,NULL),(368,'plugin::content-manager.explorer.read','plugin::tiny-train.toatau','{\"fields\": [\"MaTOA\", \"MaTAU\", \"MaGHE\", \"SoThuTu\", \"Gia\"]}','[]','2022-12-23 11:14:29.385000','2022-12-23 11:14:29.385000',NULL,NULL),(369,'plugin::content-manager.explorer.update','plugin::tiny-train.toatau','{\"fields\": [\"MaTOA\", \"MaTAU\", \"MaGHE\", \"SoThuTu\", \"Gia\"]}','[]','2022-12-23 11:14:29.397000','2022-12-23 11:14:29.397000',NULL,NULL),(376,'plugin::content-manager.explorer.create','plugin::tiny-train.hoadon','{\"fields\": [\"MaNV\", \"TongTien\", \"NgayThanhToan\", \"MaHD\"]}','[]','2022-12-23 20:01:41.970000','2022-12-23 20:01:41.970000',NULL,NULL),(377,'plugin::content-manager.explorer.read','plugin::tiny-train.hoadon','{\"fields\": [\"MaNV\", \"TongTien\", \"NgayThanhToan\", \"MaHD\"]}','[]','2022-12-23 20:01:41.978000','2022-12-23 20:01:41.978000',NULL,NULL),(378,'plugin::content-manager.explorer.update','plugin::tiny-train.hoadon','{\"fields\": [\"MaNV\", \"TongTien\", \"NgayThanhToan\", \"MaHD\"]}','[]','2022-12-23 20:01:41.986000','2022-12-23 20:01:41.986000',NULL,NULL),(382,'plugin::content-manager.explorer.create','plugin::tiny-train.cthoadon','{\"fields\": [\"MaHD\", \"MaPDV\"]}','[]','2022-12-23 20:05:15.255000','2022-12-23 20:05:15.255000',NULL,NULL),(383,'plugin::content-manager.explorer.read','plugin::tiny-train.cthoadon','{\"fields\": [\"MaHD\", \"MaPDV\"]}','[]','2022-12-23 20:05:15.267000','2022-12-23 20:05:15.267000',NULL,NULL),(384,'plugin::content-manager.explorer.update','plugin::tiny-train.cthoadon','{\"fields\": [\"MaHD\", \"MaPDV\"]}','[]','2022-12-23 20:05:15.276000','2022-12-23 20:05:15.276000',NULL,NULL),(391,'plugin::content-manager.explorer.create','plugin::tiny-train.phieudatve','{\"fields\": [\"MaPDV\", \"MaCHUYENDI\", \"MaTOA\", \"MaKM\", \"TienPhaiTra\", \"DonGia\", \"PhuPhi\", \"BaoHiem\", \"TrangThai\", \"MaKH\", \"SoThuTuGhe\"]}','[]','2022-12-25 21:44:28.785000','2022-12-25 21:44:28.785000',NULL,NULL),(392,'plugin::content-manager.explorer.read','plugin::tiny-train.phieudatve','{\"fields\": [\"MaPDV\", \"MaCHUYENDI\", \"MaTOA\", \"MaKM\", \"TienPhaiTra\", \"DonGia\", \"PhuPhi\", \"BaoHiem\", \"TrangThai\", \"MaKH\", \"SoThuTuGhe\"]}','[]','2022-12-25 21:44:28.792000','2022-12-25 21:44:28.792000',NULL,NULL),(393,'plugin::content-manager.explorer.update','plugin::tiny-train.phieudatve','{\"fields\": [\"MaPDV\", \"MaCHUYENDI\", \"MaTOA\", \"MaKM\", \"TienPhaiTra\", \"DonGia\", \"PhuPhi\", \"BaoHiem\", \"TrangThai\", \"MaKH\", \"SoThuTuGhe\"]}','[]','2022-12-25 21:44:28.798000','2022-12-25 21:44:28.798000',NULL,NULL);
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions_role_links`
--

DROP TABLE IF EXISTS `admin_permissions_role_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_permissions_role_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  KEY `admin_permissions_role_links_fk` (`permission_id`),
  KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`),
  CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=394 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions_role_links`
--

LOCK TABLES `admin_permissions_role_links` WRITE;
/*!40000 ALTER TABLE `admin_permissions_role_links` DISABLE KEYS */;
INSERT INTO `admin_permissions_role_links` VALUES (40,40,2,40),(41,41,2,41),(42,42,2,42),(43,43,2,43),(44,44,2,44),(77,77,3,33),(78,78,3,34),(79,79,3,35),(80,80,3,36),(81,81,3,37),(121,121,1,40),(122,122,1,41),(123,123,1,42),(124,124,1,43),(125,125,1,44),(126,126,1,45),(127,127,1,46),(128,128,1,47),(129,129,1,48),(130,130,1,49),(131,131,1,50),(132,132,1,51),(133,133,1,52),(134,134,1,53),(135,135,1,54),(136,136,1,55),(137,137,1,56),(138,138,1,57),(139,139,1,58),(140,140,1,59),(141,141,1,60),(142,142,1,61),(143,143,1,62),(144,144,1,63),(145,145,1,64),(146,146,1,65),(147,147,1,66),(148,148,1,67),(149,149,1,68),(150,150,1,69),(151,151,1,70),(152,152,1,71),(153,153,1,72),(154,154,1,73),(155,155,1,74),(156,156,1,75),(157,157,1,76),(158,158,1,77),(171,171,1,78),(172,172,1,79),(173,173,1,80),(174,174,1,81),(259,259,1,83),(260,260,1,84),(262,262,1,86),(263,263,1,87),(264,264,1,88),(269,269,1,93),(270,270,1,94),(272,272,1,96),(273,273,1,97),(274,274,1,98),(279,279,1,103),(280,280,1,104),(282,282,1,106),(283,283,1,107),(284,284,1,108),(288,288,1,112),(289,289,1,113),(290,290,1,114),(291,291,1,115),(292,292,1,116),(293,293,1,117),(294,294,1,118),(295,295,1,119),(296,296,1,120),(301,301,1,125),(341,341,1,143),(345,345,1,147),(349,349,1,151),(351,351,1,153),(358,358,1,160),(359,359,1,161),(360,360,1,162),(367,367,1,169),(368,368,1,170),(369,369,1,171),(376,376,1,178),(377,377,1,179),(378,378,1,180),(382,382,1,184),(383,383,1,185),(384,384,1,186),(391,391,1,187),(392,392,1,188),(393,393,1,189);
/*!40000 ALTER TABLE `admin_permissions_role_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  KEY `admin_roles_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2022-12-18 16:54:59.876000','2022-12-18 16:54:59.876000',NULL,NULL),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2022-12-18 16:54:59.885000','2022-12-18 16:54:59.885000',NULL,NULL),(3,'Author','strapi-author','Authors can manage the content they have created.','2022-12-18 16:54:59.891000','2022-12-18 16:54:59.891000',NULL,NULL);
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_users_created_by_id_fk` (`created_by_id`),
  KEY `admin_users_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Dang','Nguyen',NULL,'hada.nguyen309@gmail.com','$2a$10$HlbJW.v3dHCGJybL3X9YBet1ZCIbK4SrhBGgS02zUjqLVfLlZ/ZEC',NULL,NULL,1,0,'vi','2022-12-18 16:55:15.621000','2022-12-26 09:47:22.257000',NULL,NULL),(2,'Trương Minh','Toàn',NULL,'abc123@gmail.com',NULL,NULL,'17425cdd801f3cb1d527d8249bf3ae444c607f7d',0,0,NULL,'2022-12-26 09:48:25.151000','2022-12-26 09:48:25.151000',NULL,NULL);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users_roles_links`
--

DROP TABLE IF EXISTS `admin_users_roles_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users_roles_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned DEFAULT NULL,
  `role_id` int unsigned DEFAULT NULL,
  `role_order` int unsigned DEFAULT NULL,
  `user_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  KEY `admin_users_roles_links_fk` (`user_id`),
  KEY `admin_users_roles_links_inv_fk` (`role_id`),
  KEY `admin_users_roles_links_order_fk` (`role_order`),
  KEY `admin_users_roles_links_order_inv_fk` (`user_order`),
  CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users_roles_links`
--

LOCK TABLES `admin_users_roles_links` WRITE;
/*!40000 ALTER TABLE `admin_users_roles_links` DISABLE KEYS */;
INSERT INTO `admin_users_roles_links` VALUES (1,1,1,1,1),(2,2,2,1,1);
/*!40000 ALTER TABLE `admin_users_roles_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chartbrews`
--

DROP TABLE IF EXISTS `chartbrews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chartbrews` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chartbrews_created_by_id_fk` (`created_by_id`),
  KEY `chartbrews_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `chartbrews_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `chartbrews_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chartbrews`
--

LOCK TABLES `chartbrews` WRITE;
/*!40000 ALTER TABLE `chartbrews` DISABLE KEYS */;
/*!40000 ALTER TABLE `chartbrews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuyendis`
--

DROP TABLE IF EXISTS `chuyendis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuyendis` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `machuyendi` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `ngay_di` date DEFAULT NULL,
  `ngay_den` date DEFAULT NULL,
  `gio_di` time(3) DEFAULT NULL,
  `gio_den` time(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chuyendis_created_by_id_fk` (`created_by_id`),
  KEY `chuyendis_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `chuyendis_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `chuyendis_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyendis`
--

LOCK TABLES `chuyendis` WRITE;
/*!40000 ALTER TABLE `chuyendis` DISABLE KEYS */;
INSERT INTO `chuyendis` VALUES (1,1,'2022-12-19 17:43:16.475000','2022-12-23 10:40:12.747000',1,1,'2022-12-22','2022-12-23','00:00:00.000','12:00:00.000'),(2,2,'2022-12-19 17:43:43.114000','2022-12-23 10:40:52.966000',1,1,'2022-12-22','2022-12-23','03:00:00.000','06:00:00.000'),(3,3,'2022-12-25 16:54:35.843000','2022-12-25 16:54:35.843000',1,1,'2022-12-27','2022-12-28','00:00:00.000','12:00:00.000'),(4,4,'2022-12-25 16:55:14.222000','2022-12-25 16:55:14.222000',1,1,'2022-12-27','2022-12-28','02:00:00.000','14:00:00.000');
/*!40000 ALTER TABLE `chuyendis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuyendis_ga_den_links`
--

DROP TABLE IF EXISTS `chuyendis_ga_den_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuyendis_ga_den_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `chuyendi_id` int unsigned DEFAULT NULL,
  `ga_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chuyendis_ga_den_links_unique` (`chuyendi_id`,`ga_id`),
  KEY `chuyendis_ga_den_links_fk` (`chuyendi_id`),
  KEY `chuyendis_ga_den_links_inv_fk` (`ga_id`),
  CONSTRAINT `chuyendis_ga_den_links_fk` FOREIGN KEY (`chuyendi_id`) REFERENCES `chuyendis` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chuyendis_ga_den_links_inv_fk` FOREIGN KEY (`ga_id`) REFERENCES `gas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyendis_ga_den_links`
--

LOCK TABLES `chuyendis_ga_den_links` WRITE;
/*!40000 ALTER TABLE `chuyendis_ga_den_links` DISABLE KEYS */;
INSERT INTO `chuyendis_ga_den_links` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2);
/*!40000 ALTER TABLE `chuyendis_ga_den_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuyendis_ga_di_links`
--

DROP TABLE IF EXISTS `chuyendis_ga_di_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuyendis_ga_di_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `chuyendi_id` int unsigned DEFAULT NULL,
  `ga_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chuyendis_ga_di_links_unique` (`chuyendi_id`,`ga_id`),
  KEY `chuyendis_ga_di_links_fk` (`chuyendi_id`),
  KEY `chuyendis_ga_di_links_inv_fk` (`ga_id`),
  CONSTRAINT `chuyendis_ga_di_links_fk` FOREIGN KEY (`chuyendi_id`) REFERENCES `chuyendis` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chuyendis_ga_di_links_inv_fk` FOREIGN KEY (`ga_id`) REFERENCES `gas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyendis_ga_di_links`
--

LOCK TABLES `chuyendis_ga_di_links` WRITE;
/*!40000 ALTER TABLE `chuyendis_ga_di_links` DISABLE KEYS */;
INSERT INTO `chuyendis_ga_di_links` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1);
/*!40000 ALTER TABLE `chuyendis_ga_di_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chuyendis_ma_tau_links`
--

DROP TABLE IF EXISTS `chuyendis_ma_tau_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chuyendis_ma_tau_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `chuyendi_id` int unsigned DEFAULT NULL,
  `tau_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `chuyendis_ma_tau_links_unique` (`chuyendi_id`,`tau_id`),
  KEY `chuyendis_ma_tau_links_fk` (`chuyendi_id`),
  KEY `chuyendis_ma_tau_links_inv_fk` (`tau_id`),
  CONSTRAINT `chuyendis_ma_tau_links_fk` FOREIGN KEY (`chuyendi_id`) REFERENCES `chuyendis` (`id`) ON DELETE CASCADE,
  CONSTRAINT `chuyendis_ma_tau_links_inv_fk` FOREIGN KEY (`tau_id`) REFERENCES `taus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuyendis_ma_tau_links`
--

LOCK TABLES `chuyendis_ma_tau_links` WRITE;
/*!40000 ALTER TABLE `chuyendis_ma_tau_links` DISABLE KEYS */;
INSERT INTO `chuyendis_ma_tau_links` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2);
/*!40000 ALTER TABLE `chuyendis_ma_tau_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cthoadons`
--

DROP TABLE IF EXISTS `cthoadons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cthoadons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cthoadons_created_by_id_fk` (`created_by_id`),
  KEY `cthoadons_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `cthoadons_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `cthoadons_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cthoadons`
--

LOCK TABLES `cthoadons` WRITE;
/*!40000 ALTER TABLE `cthoadons` DISABLE KEYS */;
INSERT INTO `cthoadons` VALUES (2,'2022-12-23 21:20:42.888000','2022-12-23 21:20:42.888000',NULL,NULL),(3,'2022-12-23 21:20:42.908000','2022-12-23 21:20:42.908000',NULL,NULL),(4,'2022-12-25 20:19:39.708000','2022-12-25 20:19:39.708000',NULL,NULL),(5,'2022-12-25 20:19:39.733000','2022-12-25 20:19:39.733000',NULL,NULL),(6,'2022-12-25 20:19:39.758000','2022-12-25 20:19:39.758000',NULL,NULL),(7,'2022-12-25 20:19:39.779000','2022-12-25 20:19:39.779000',NULL,NULL),(8,'2022-12-25 21:47:30.827000','2022-12-25 21:47:30.827000',NULL,NULL),(9,'2022-12-25 21:47:30.850000','2022-12-25 21:47:30.850000',NULL,NULL),(10,'2022-12-25 21:53:17.259000','2022-12-25 21:53:17.259000',NULL,NULL),(11,'2022-12-25 21:53:17.281000','2022-12-25 21:53:17.281000',NULL,NULL),(12,'2022-12-25 21:54:18.799000','2022-12-25 21:54:18.799000',NULL,NULL),(13,'2022-12-25 21:54:18.819000','2022-12-25 21:54:18.819000',NULL,NULL),(14,'2022-12-26 10:36:07.050000','2022-12-26 10:36:07.050000',NULL,NULL),(15,'2022-12-26 10:36:07.071000','2022-12-26 10:36:07.071000',NULL,NULL);
/*!40000 ALTER TABLE `cthoadons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cthoadons_ma_hd_links`
--

DROP TABLE IF EXISTS `cthoadons_ma_hd_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cthoadons_ma_hd_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cthoadon_id` int unsigned DEFAULT NULL,
  `hoadon_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cthoadons_ma_hd_links_unique` (`cthoadon_id`,`hoadon_id`),
  KEY `cthoadons_ma_hd_links_fk` (`cthoadon_id`),
  KEY `cthoadons_ma_hd_links_inv_fk` (`hoadon_id`),
  CONSTRAINT `cthoadons_ma_hd_links_fk` FOREIGN KEY (`cthoadon_id`) REFERENCES `cthoadons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cthoadons_ma_hd_links_inv_fk` FOREIGN KEY (`hoadon_id`) REFERENCES `hoadons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cthoadons_ma_hd_links`
--

LOCK TABLES `cthoadons_ma_hd_links` WRITE;
/*!40000 ALTER TABLE `cthoadons_ma_hd_links` DISABLE KEYS */;
INSERT INTO `cthoadons_ma_hd_links` VALUES (2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,2),(7,7,2),(8,8,3),(9,9,3),(10,10,4),(11,11,4),(12,12,5),(13,13,5),(14,14,6),(15,15,6);
/*!40000 ALTER TABLE `cthoadons_ma_hd_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cthoadons_ma_pdv_links`
--

DROP TABLE IF EXISTS `cthoadons_ma_pdv_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cthoadons_ma_pdv_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `cthoadon_id` int unsigned DEFAULT NULL,
  `phieudatve_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cthoadons_ma_pdv_links_unique` (`cthoadon_id`,`phieudatve_id`),
  KEY `cthoadons_ma_pdv_links_fk` (`cthoadon_id`),
  KEY `cthoadons_ma_pdv_links_inv_fk` (`phieudatve_id`),
  CONSTRAINT `cthoadons_ma_pdv_links_fk` FOREIGN KEY (`cthoadon_id`) REFERENCES `cthoadons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `cthoadons_ma_pdv_links_inv_fk` FOREIGN KEY (`phieudatve_id`) REFERENCES `phieudatves` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cthoadons_ma_pdv_links`
--

LOCK TABLES `cthoadons_ma_pdv_links` WRITE;
/*!40000 ALTER TABLE `cthoadons_ma_pdv_links` DISABLE KEYS */;
INSERT INTO `cthoadons_ma_pdv_links` VALUES (2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,6,5),(7,7,6),(12,12,7),(13,13,8),(14,14,9),(15,15,10);
/*!40000 ALTER TABLE `cthoadons_ma_pdv_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `formats` json DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` json DEFAULT NULL,
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `upload_files_folder_path_index` (`folder_path`),
  KEY `files_created_by_id_fk` (`created_by_id`),
  KEY `files_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_folder_links`
--

DROP TABLE IF EXISTS `files_folder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_folder_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  `file_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  KEY `files_folder_links_fk` (`file_id`),
  KEY `files_folder_links_inv_fk` (`folder_id`),
  KEY `files_folder_links_order_inv_fk` (`file_order`),
  CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_folder_links`
--

LOCK TABLES `files_folder_links` WRITE;
/*!40000 ALTER TABLE `files_folder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_folder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_related_morphs`
--

DROP TABLE IF EXISTS `files_related_morphs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_related_morphs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int unsigned DEFAULT NULL,
  `related_id` int unsigned DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_related_morphs_fk` (`file_id`),
  CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_related_morphs`
--

LOCK TABLES `files_related_morphs` WRITE;
/*!40000 ALTER TABLE `files_related_morphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_related_morphs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gas`
--

DROP TABLE IF EXISTS `gas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ma_ga` int DEFAULT NULL,
  `ten_ga` varchar(255) DEFAULT NULL,
  `cu_ly` double DEFAULT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gas_created_by_id_fk` (`created_by_id`),
  KEY `gas_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `gas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `gas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gas`
--

LOCK TABLES `gas` WRITE;
/*!40000 ALTER TABLE `gas` DISABLE KEYS */;
INSERT INTO `gas` VALUES (1,1,'Sài Gòn',NULL,NULL,'2022-12-19 17:42:19.143000','2022-12-19 17:42:19.143000',1,1),(2,2,'Hà Nội',NULL,NULL,'2022-12-19 17:42:24.962000','2022-12-19 17:42:24.962000',1,1);
/*!40000 ALTER TABLE `gas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ghes`
--

DROP TABLE IF EXISTS `ghes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ghes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ma_ghe` int DEFAULT NULL,
  `loai_ghe` varchar(255) DEFAULT NULL,
  `dien_giai` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ghes_created_by_id_fk` (`created_by_id`),
  KEY `ghes_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `ghes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `ghes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ghes`
--

LOCK TABLES `ghes` WRITE;
/*!40000 ALTER TABLE `ghes` DISABLE KEYS */;
INSERT INTO `ghes` VALUES (1,1,'NML','Ngồi mềm điều hòa','2022-12-19 17:41:56.352000','2022-12-19 17:41:56.352000',1,1),(2,2,'ANL','Giường nằm khoang 4 điều hòa','2022-12-19 17:42:06.375000','2022-12-19 17:42:06.375000',1,1),(3,3,'BNL','Giường nằm khoang 6 điều hòa','2022-12-19 17:42:12.908000','2022-12-19 17:42:12.908000',1,1);
/*!40000 ALTER TABLE `ghes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadons`
--

DROP TABLE IF EXISTS `hoadons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadons` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tong_tien` double DEFAULT NULL,
  `ngay_thanh_toan` date DEFAULT NULL,
  `ma_hd` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hoadons_created_by_id_fk` (`created_by_id`),
  KEY `hoadons_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `hoadons_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `hoadons_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadons`
--

LOCK TABLES `hoadons` WRITE;
/*!40000 ALTER TABLE `hoadons` DISABLE KEYS */;
INSERT INTO `hoadons` VALUES (1,2200000,'2022-12-23',1,'2022-12-23 21:20:42.866000','2022-12-23 21:20:42.866000',NULL,NULL),(2,4400000,'2022-12-25',2,'2022-12-25 20:19:39.680000','2022-12-25 20:19:39.680000',NULL,NULL),(3,2200000,'2022-12-25',3,'2022-12-25 21:47:30.804000','2022-12-25 21:47:30.804000',NULL,NULL),(4,2200000,'2022-12-25',4,'2022-12-25 21:53:17.237000','2022-12-25 21:53:17.237000',NULL,NULL),(5,2200000,'2022-12-25',5,'2022-12-25 21:54:18.778000','2022-12-25 21:54:18.778000',NULL,NULL),(6,2200000,'2022-12-26',6,'2022-12-26 10:36:07.021000','2022-12-26 10:36:07.021000',NULL,NULL);
/*!40000 ALTER TABLE `hoadons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadons_ma_nv_links`
--

DROP TABLE IF EXISTS `hoadons_ma_nv_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadons_ma_nv_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `hoadon_id` int unsigned DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hoadons_ma_nv_links_unique` (`hoadon_id`,`user_id`),
  KEY `hoadons_ma_nv_links_fk` (`hoadon_id`),
  KEY `hoadons_ma_nv_links_inv_fk` (`user_id`),
  CONSTRAINT `hoadons_ma_nv_links_fk` FOREIGN KEY (`hoadon_id`) REFERENCES `hoadons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `hoadons_ma_nv_links_inv_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadons_ma_nv_links`
--

LOCK TABLES `hoadons_ma_nv_links` WRITE;
/*!40000 ALTER TABLE `hoadons_ma_nv_links` DISABLE KEYS */;
INSERT INTO `hoadons_ma_nv_links` VALUES (11,1,1),(12,2,1),(13,3,1),(14,4,1),(15,5,1),(16,6,1);
/*!40000 ALTER TABLE `hoadons_ma_nv_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `i18n_locale`
--

DROP TABLE IF EXISTS `i18n_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `i18n_locale` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `i18n_locale`
--

LOCK TABLES `i18n_locale` WRITE;
/*!40000 ALTER TABLE `i18n_locale` DISABLE KEYS */;
INSERT INTO `i18n_locale` VALUES (1,'English (en)','en','2022-12-18 16:54:59.825000','2022-12-18 16:54:59.825000',NULL,NULL);
/*!40000 ALTER TABLE `i18n_locale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhangs`
--

DROP TABLE IF EXISTS `khachhangs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhangs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ma_kh` int DEFAULT NULL,
  `cccd` varchar(255) DEFAULT NULL,
  `ho_dem` varchar(255) DEFAULT NULL,
  `ten` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `doi_tuong` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `khachhangs_created_by_id_fk` (`created_by_id`),
  KEY `khachhangs_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `khachhangs_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `khachhangs_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhangs`
--

LOCK TABLES `khachhangs` WRITE;
/*!40000 ALTER TABLE `khachhangs` DISABLE KEYS */;
INSERT INTO `khachhangs` VALUES (1,1,'012345678987','Nguyễn Thế','Trần','0123456789','2000-12-24','2022-12-23 21:09:48.287000','2022-12-23 21:09:48.287000',1,1,'A'),(2,2,'21321321321','Nguyễn Thành','Long','0123456789','2001-12-30','2022-12-23 21:10:08.435000','2022-12-23 21:10:08.435000',1,1,'A'),(3,3,'0123124123213','Nguyễn Văn','A',NULL,'2001-12-22','2022-12-25 20:18:57.992000','2022-12-25 20:18:57.992000',NULL,NULL,'A'),(4,4,'012131234324324','Nguyễn Văn','B',NULL,'2001-12-25','2022-12-25 20:19:26.660000','2022-12-25 20:19:26.660000',NULL,NULL,'A');
/*!40000 ALTER TABLE `khachhangs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khuyenmais`
--

DROP TABLE IF EXISTS `khuyenmais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khuyenmais` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ma_km` int DEFAULT NULL,
  `ten_km` varchar(255) DEFAULT NULL,
  `ti_le_giam` double DEFAULT NULL,
  `ngay_het_han` datetime(6) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `khuyenmais_created_by_id_fk` (`created_by_id`),
  KEY `khuyenmais_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `khuyenmais_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `khuyenmais_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khuyenmais`
--

LOCK TABLES `khuyenmais` WRITE;
/*!40000 ALTER TABLE `khuyenmais` DISABLE KEYS */;
/*!40000 ALTER TABLE `khuyenmais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudatves`
--

DROP TABLE IF EXISTS `phieudatves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatves` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ma_pdv` int DEFAULT NULL,
  `tien_phai_tra` double DEFAULT NULL,
  `phu_phi` int DEFAULT NULL,
  `bao_hiem` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `don_gia` int DEFAULT NULL,
  `trang_thai` tinyint(1) DEFAULT NULL,
  `so_thu_tu_ghe` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `phieudatves_created_by_id_fk` (`created_by_id`),
  KEY `phieudatves_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `phieudatves_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `phieudatves_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatves`
--

LOCK TABLES `phieudatves` WRITE;
/*!40000 ALTER TABLE `phieudatves` DISABLE KEYS */;
INSERT INTO `phieudatves` VALUES (1,1,1100000,0,1000,'2022-12-23 21:20:42.787000','2022-12-23 21:20:42.787000',NULL,NULL,1099000,1,NULL),(2,2,1100000,0,1000,'2022-12-23 21:20:42.814000','2022-12-23 21:20:42.814000',NULL,NULL,1099000,1,NULL),(3,3,1100000,0,1000,'2022-12-25 20:19:39.531000','2022-12-25 21:45:27.766000',NULL,1,1099000,1,33),(4,4,1100000,0,1000,'2022-12-25 20:19:39.579000','2022-12-25 21:45:34.878000',NULL,1,1099000,1,34),(5,5,1100000,0,1000,'2022-12-25 20:19:39.626000','2022-12-25 21:45:41.670000',NULL,1,1099000,1,35),(6,6,1100000,0,1000,'2022-12-25 20:19:39.653000','2022-12-25 21:45:48.823000',NULL,1,1099000,1,36),(7,7,1100000,0,1000,'2022-12-25 21:54:18.723000','2022-12-25 22:44:24.350000',NULL,1,1099000,0,13),(8,8,1100000,0,1000,'2022-12-25 21:54:18.753000','2022-12-25 21:54:18.753000',NULL,NULL,1099000,1,14),(9,9,1100000,0,1000,'2022-12-26 10:36:06.956000','2022-12-26 10:36:06.956000',NULL,NULL,1099000,1,41),(10,10,1100000,0,1000,'2022-12-26 10:36:06.992000','2022-12-26 10:36:06.992000',NULL,NULL,1099000,1,42);
/*!40000 ALTER TABLE `phieudatves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudatves_ma_chuyendi_links`
--

DROP TABLE IF EXISTS `phieudatves_ma_chuyendi_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatves_ma_chuyendi_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `phieudatve_id` int unsigned DEFAULT NULL,
  `chuyendi_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phieudatves_ma_chuyendi_links_unique` (`phieudatve_id`,`chuyendi_id`),
  KEY `phieudatves_ma_chuyendi_links_fk` (`phieudatve_id`),
  KEY `phieudatves_ma_chuyendi_links_inv_fk` (`chuyendi_id`),
  CONSTRAINT `phieudatves_ma_chuyendi_links_fk` FOREIGN KEY (`phieudatve_id`) REFERENCES `phieudatves` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phieudatves_ma_chuyendi_links_inv_fk` FOREIGN KEY (`chuyendi_id`) REFERENCES `chuyendis` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatves_ma_chuyendi_links`
--

LOCK TABLES `phieudatves_ma_chuyendi_links` WRITE;
/*!40000 ALTER TABLE `phieudatves_ma_chuyendi_links` DISABLE KEYS */;
INSERT INTO `phieudatves_ma_chuyendi_links` VALUES (34,1,1),(35,2,1),(36,3,3),(37,4,3),(38,5,3),(39,6,3),(44,7,3),(45,8,3),(46,9,3),(47,10,3);
/*!40000 ALTER TABLE `phieudatves_ma_chuyendi_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudatves_ma_kh_links`
--

DROP TABLE IF EXISTS `phieudatves_ma_kh_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatves_ma_kh_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `phieudatve_id` int unsigned DEFAULT NULL,
  `khachhang_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phieudatves_ma_kh_links_unique` (`phieudatve_id`,`khachhang_id`),
  KEY `phieudatves_ma_kh_links_fk` (`phieudatve_id`),
  KEY `phieudatves_ma_kh_links_inv_fk` (`khachhang_id`),
  CONSTRAINT `phieudatves_ma_kh_links_fk` FOREIGN KEY (`phieudatve_id`) REFERENCES `phieudatves` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phieudatves_ma_kh_links_inv_fk` FOREIGN KEY (`khachhang_id`) REFERENCES `khachhangs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatves_ma_kh_links`
--

LOCK TABLES `phieudatves_ma_kh_links` WRITE;
/*!40000 ALTER TABLE `phieudatves_ma_kh_links` DISABLE KEYS */;
INSERT INTO `phieudatves_ma_kh_links` VALUES (7,1,1),(8,2,2),(9,3,3),(10,4,2),(11,5,4),(12,6,1),(17,7,1),(18,8,1),(19,9,1),(20,10,4);
/*!40000 ALTER TABLE `phieudatves_ma_kh_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudatves_ma_km_links`
--

DROP TABLE IF EXISTS `phieudatves_ma_km_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatves_ma_km_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `phieudatve_id` int unsigned DEFAULT NULL,
  `khuyenmai_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phieudatves_ma_km_links_unique` (`phieudatve_id`,`khuyenmai_id`),
  KEY `phieudatves_ma_km_links_fk` (`phieudatve_id`),
  KEY `phieudatves_ma_km_links_inv_fk` (`khuyenmai_id`),
  CONSTRAINT `phieudatves_ma_km_links_fk` FOREIGN KEY (`phieudatve_id`) REFERENCES `phieudatves` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phieudatves_ma_km_links_inv_fk` FOREIGN KEY (`khuyenmai_id`) REFERENCES `khuyenmais` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatves_ma_km_links`
--

LOCK TABLES `phieudatves_ma_km_links` WRITE;
/*!40000 ALTER TABLE `phieudatves_ma_km_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieudatves_ma_km_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieudatves_ma_toa_links`
--

DROP TABLE IF EXISTS `phieudatves_ma_toa_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieudatves_ma_toa_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `phieudatve_id` int unsigned DEFAULT NULL,
  `toa_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phieudatves_ma_toa_links_unique` (`phieudatve_id`,`toa_id`),
  KEY `phieudatves_ma_toa_links_fk` (`phieudatve_id`),
  KEY `phieudatves_ma_toa_links_inv_fk` (`toa_id`),
  CONSTRAINT `phieudatves_ma_toa_links_fk` FOREIGN KEY (`phieudatve_id`) REFERENCES `phieudatves` (`id`) ON DELETE CASCADE,
  CONSTRAINT `phieudatves_ma_toa_links_inv_fk` FOREIGN KEY (`toa_id`) REFERENCES `toas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieudatves_ma_toa_links`
--

LOCK TABLES `phieudatves_ma_toa_links` WRITE;
/*!40000 ALTER TABLE `phieudatves_ma_toa_links` DISABLE KEYS */;
INSERT INTO `phieudatves_ma_toa_links` VALUES (34,1,1),(35,2,1),(36,3,1),(37,4,1),(38,5,1),(39,6,1),(44,7,1),(45,8,1),(46,9,1),(47,10,1);
/*!40000 ALTER TABLE `phieudatves_ma_toa_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions`
--

LOCK TABLES `strapi_api_token_permissions` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

DROP TABLE IF EXISTS `strapi_api_token_permissions_token_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `api_token_permission_id` int unsigned DEFAULT NULL,
  `api_token_id` int unsigned DEFAULT NULL,
  `api_token_permission_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`),
  CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

LOCK TABLES `strapi_api_token_permissions_token_links` WRITE;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_api_token_permissions_token_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_api_tokens`
--

DROP TABLE IF EXISTS `strapi_api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_api_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_api_tokens`
--

LOCK TABLES `strapi_api_tokens` WRITE;
/*!40000 ALTER TABLE `strapi_api_tokens` DISABLE KEYS */;
INSERT INTO `strapi_api_tokens` VALUES (1,'Chartbrew','','read-only','7425951db71019100c357ae0b46f790ab8ebd891da8dfcea37754110cf1e3067f928c795250ad09ab5347c93db4db38684367308af8854300ee46fb561d888e1',NULL,NULL,NULL,'2022-12-25 22:59:27.913000','2022-12-25 22:59:27.913000',NULL,NULL);
/*!40000 ALTER TABLE `strapi_api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_core_store_settings`
--

DROP TABLE IF EXISTS `strapi_core_store_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_core_store_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_core_store_settings`
--

LOCK TABLES `strapi_core_store_settings` WRITE;
/*!40000 ALTER TABLE `strapi_core_store_settings` DISABLE KEYS */;
INSERT INTO `strapi_core_store_settings` VALUES (1,'strapi_content_types_schema','{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::tiny-train.chuyendi\":{\"kind\":\"collectionType\",\"collectionName\":\"chuyendis\",\"info\":{\"singularName\":\"chuyendi\",\"pluralName\":\"chuyendis\",\"displayName\":\"CHUYENDI\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MACHUYENDI\":{\"type\":\"integer\",\"unique\":true},\"MaTAU\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.tau\"},\"NgayDi\":{\"type\":\"date\"},\"NgayDen\":{\"type\":\"date\"},\"GioDi\":{\"type\":\"time\"},\"GioDen\":{\"type\":\"time\"},\"GaDi\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.ga\"},\"GaDen\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.ga\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"chuyendis\",\"info\":{\"singularName\":\"chuyendi\",\"pluralName\":\"chuyendis\",\"displayName\":\"CHUYENDI\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MACHUYENDI\":{\"type\":\"integer\",\"unique\":true},\"MaTAU\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.tau\"},\"NgayDi\":{\"type\":\"date\"},\"NgayDen\":{\"type\":\"date\"},\"GioDi\":{\"type\":\"time\"},\"GioDen\":{\"type\":\"time\"},\"GaDi\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.ga\"},\"GaDen\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.ga\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"chuyendi\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.chuyendi\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainChuyendi\"},\"plugin::tiny-train.cthoadon\":{\"kind\":\"collectionType\",\"collectionName\":\"cthoadons\",\"info\":{\"singularName\":\"cthoadon\",\"pluralName\":\"cthoadons\",\"displayName\":\"CTHOADON\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaHD\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.hoadon\"},\"MaPDV\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.phieudatve\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"cthoadons\",\"info\":{\"singularName\":\"cthoadon\",\"pluralName\":\"cthoadons\",\"displayName\":\"CTHOADON\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaHD\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.hoadon\"},\"MaPDV\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.phieudatve\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"cthoadon\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.cthoadon\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainCthoadon\"},\"plugin::tiny-train.ga\":{\"kind\":\"collectionType\",\"collectionName\":\"gas\",\"info\":{\"singularName\":\"ga\",\"pluralName\":\"gas\",\"displayName\":\"GA\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaGA\":{\"type\":\"integer\",\"unique\":true},\"TenGa\":{\"type\":\"string\"},\"CuLy\":{\"type\":\"float\"},\"DiaChi\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"gas\",\"info\":{\"singularName\":\"ga\",\"pluralName\":\"gas\",\"displayName\":\"GA\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaGA\":{\"type\":\"integer\",\"unique\":true},\"TenGa\":{\"type\":\"string\"},\"CuLy\":{\"type\":\"float\"},\"DiaChi\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"ga\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.ga\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainGa\"},\"plugin::tiny-train.ghe\":{\"kind\":\"collectionType\",\"collectionName\":\"ghes\",\"info\":{\"singularName\":\"ghe\",\"pluralName\":\"ghes\",\"displayName\":\"GHE\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaGHE\":{\"type\":\"integer\",\"unique\":true},\"LoaiGhe\":{\"type\":\"enumeration\",\"enum\":[\"NC\",\"NCL\",\"NM\",\"NML\",\"ANL\",\"BNL\",\"GP\"]},\"DienGiai\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"ghes\",\"info\":{\"singularName\":\"ghe\",\"pluralName\":\"ghes\",\"displayName\":\"GHE\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaGHE\":{\"type\":\"integer\",\"unique\":true},\"LoaiGhe\":{\"type\":\"enumeration\",\"enum\":[\"NC\",\"NCL\",\"NM\",\"NML\",\"ANL\",\"BNL\",\"GP\"]},\"DienGiai\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"ghe\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.ghe\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainGhe\"},\"plugin::tiny-train.hoadon\":{\"kind\":\"collectionType\",\"collectionName\":\"hoadons\",\"info\":{\"singularName\":\"hoadon\",\"pluralName\":\"hoadons\",\"displayName\":\"HOADON\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaNV\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\"},\"TongTien\":{\"type\":\"float\"},\"NgayThanhToan\":{\"type\":\"date\"},\"MaHD\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"hoadons\",\"info\":{\"singularName\":\"hoadon\",\"pluralName\":\"hoadons\",\"displayName\":\"HOADON\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaNV\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\"},\"TongTien\":{\"type\":\"float\"},\"NgayThanhToan\":{\"type\":\"date\"},\"MaHD\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"hoadon\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.hoadon\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainHoadon\",\"lifecycles\":{}},\"plugin::tiny-train.khachhang\":{\"kind\":\"collectionType\",\"collectionName\":\"khachhangs\",\"info\":{\"singularName\":\"khachhang\",\"pluralName\":\"khachhangs\",\"displayName\":\"KHACHHANG\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaKH\":{\"type\":\"integer\",\"unique\":true},\"CCCD\":{\"type\":\"string\",\"unique\":true},\"HoDem\":{\"type\":\"string\"},\"Ten\":{\"type\":\"string\"},\"SDT\":{\"type\":\"string\"},\"NgaySinh\":{\"type\":\"date\"},\"DoiTuong\":{\"type\":\"enumeration\",\"enum\":[\"A\",\"C\",\"E\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"khachhangs\",\"info\":{\"singularName\":\"khachhang\",\"pluralName\":\"khachhangs\",\"displayName\":\"KHACHHANG\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaKH\":{\"type\":\"integer\",\"unique\":true},\"CCCD\":{\"type\":\"string\",\"unique\":true},\"HoDem\":{\"type\":\"string\"},\"Ten\":{\"type\":\"string\"},\"SDT\":{\"type\":\"string\"},\"NgaySinh\":{\"type\":\"date\"},\"DoiTuong\":{\"type\":\"enumeration\",\"enum\":[\"A\",\"C\",\"E\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"khachhang\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.khachhang\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainKhachhang\",\"lifecycles\":{}},\"plugin::tiny-train.khuyenmai\":{\"kind\":\"collectionType\",\"collectionName\":\"khuyenmais\",\"info\":{\"singularName\":\"khuyenmai\",\"pluralName\":\"khuyenmais\",\"displayName\":\"KHUYENMAI\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaKM\":{\"type\":\"integer\",\"unique\":true},\"TenKM\":{\"type\":\"string\"},\"TiLeGiam\":{\"type\":\"float\"},\"NgayHetHan\":{\"type\":\"datetime\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"khuyenmais\",\"info\":{\"singularName\":\"khuyenmai\",\"pluralName\":\"khuyenmais\",\"displayName\":\"KHUYENMAI\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaKM\":{\"type\":\"integer\",\"unique\":true},\"TenKM\":{\"type\":\"string\"},\"TiLeGiam\":{\"type\":\"float\"},\"NgayHetHan\":{\"type\":\"datetime\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"khuyenmai\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.khuyenmai\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainKhuyenmai\"},\"plugin::tiny-train.tau\":{\"kind\":\"collectionType\",\"collectionName\":\"taus\",\"info\":{\"singularName\":\"tau\",\"pluralName\":\"taus\",\"displayName\":\"TAU\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaTAU\":{\"type\":\"integer\",\"unique\":true},\"TenTau\":{\"type\":\"string\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"taus\",\"info\":{\"singularName\":\"tau\",\"pluralName\":\"taus\",\"displayName\":\"TAU\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaTAU\":{\"type\":\"integer\",\"unique\":true},\"TenTau\":{\"type\":\"string\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"tau\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.tau\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainTau\"},\"plugin::tiny-train.toa\":{\"kind\":\"collectionType\",\"collectionName\":\"toas\",\"info\":{\"singularName\":\"toa\",\"pluralName\":\"toas\",\"displayName\":\"TOA\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaTOA\":{\"type\":\"integer\",\"unique\":true},\"SoLuongGhe\":{\"type\":\"integer\"},\"LoaiToa\":{\"type\":\"enumeration\",\"enum\":[\"Ngồi cứng\",\"Ngồi cứng điều hòa\",\"Ngồi mềm\",\"Ngồi mềm điều hòa\",\"Giường nằm khoang 4 điều hòa\",\"Giường nằm khoang 6 điều hòa\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"toas\",\"info\":{\"singularName\":\"toa\",\"pluralName\":\"toas\",\"displayName\":\"TOA\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaTOA\":{\"type\":\"integer\",\"unique\":true},\"SoLuongGhe\":{\"type\":\"integer\"},\"LoaiToa\":{\"type\":\"enumeration\",\"enum\":[\"Ngồi cứng\",\"Ngồi cứng điều hòa\",\"Ngồi mềm\",\"Ngồi mềm điều hòa\",\"Giường nằm khoang 4 điều hòa\",\"Giường nằm khoang 6 điều hòa\"]}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"toa\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.toa\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainToa\"},\"plugin::tiny-train.toatau\":{\"kind\":\"collectionType\",\"collectionName\":\"toataus\",\"info\":{\"singularName\":\"toatau\",\"pluralName\":\"toataus\",\"displayName\":\"TOATAU\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaTOA\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.toa\"},\"MaTAU\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.tau\"},\"MaGHE\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.ghe\"},\"SoThuTu\":{\"type\":\"integer\"},\"Gia\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"toataus\",\"info\":{\"singularName\":\"toatau\",\"pluralName\":\"toataus\",\"displayName\":\"TOATAU\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaTOA\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.toa\"},\"MaTAU\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.tau\"},\"MaGHE\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.ghe\"},\"SoThuTu\":{\"type\":\"integer\"},\"Gia\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"toatau\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.toatau\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainToatau\"},\"plugin::tiny-train.phieudatve\":{\"kind\":\"collectionType\",\"collectionName\":\"phieudatves\",\"info\":{\"singularName\":\"phieudatve\",\"pluralName\":\"phieudatves\",\"displayName\":\"PHIEUDATVE\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaPDV\":{\"type\":\"integer\"},\"MaCHUYENDI\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.chuyendi\"},\"MaTOA\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.toa\"},\"MaKM\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.khuyenmai\"},\"TienPhaiTra\":{\"type\":\"float\"},\"DonGia\":{\"type\":\"integer\"},\"PhuPhi\":{\"type\":\"integer\"},\"BaoHiem\":{\"type\":\"integer\"},\"TrangThai\":{\"type\":\"boolean\",\"default\":true},\"MaKH\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.khachhang\"},\"SoThuTuGhe\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__filename__\":\"schema.json\",\"__schema__\":{\"collectionName\":\"phieudatves\",\"info\":{\"singularName\":\"phieudatve\",\"pluralName\":\"phieudatves\",\"displayName\":\"PHIEUDATVE\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"MaPDV\":{\"type\":\"integer\"},\"MaCHUYENDI\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.chuyendi\"},\"MaTOA\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.toa\"},\"MaKM\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.khuyenmai\"},\"TienPhaiTra\":{\"type\":\"float\"},\"DonGia\":{\"type\":\"integer\"},\"PhuPhi\":{\"type\":\"integer\"},\"BaoHiem\":{\"type\":\"integer\"},\"TrangThai\":{\"type\":\"boolean\",\"default\":true},\"MaKH\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"plugin::tiny-train.khachhang\"},\"SoThuTuGhe\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"phieudatve\",\"connection\":\"default\",\"uid\":\"plugin::tiny-train.phieudatve\",\"plugin\":\"tiny-train\",\"globalId\":\"TinyTrainPhieudatve\",\"lifecycles\":{}},\"plugin::chartbrew.chartbrew\":{\"kind\":\"singleType\",\"collectionName\":\"chartbrews\",\"info\":{\"singularName\":\"chartbrew\",\"pluralName\":\"chartbrews\",\"displayName\":\"Chartbrew\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"attributes\":{\"host\":{\"type\":\"string\",\"required\":true},\"token\":{\"type\":\"string\",\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"chartbrews\",\"info\":{\"singularName\":\"chartbrew\",\"pluralName\":\"chartbrews\",\"displayName\":\"Chartbrew\"},\"options\":{\"draftAndPublish\":false,\"comment\":\"\"},\"attributes\":{\"host\":{\"type\":\"string\",\"required\":true},\"token\":{\"type\":\"string\",\"required\":true}},\"kind\":\"singleType\"},\"modelType\":\"contentType\",\"modelName\":\"chartbrew\",\"connection\":\"default\",\"uid\":\"plugin::chartbrew.chartbrew\",\"plugin\":\"chartbrew\",\"globalId\":\"ChartbrewChartbrew\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"}}','object',NULL,NULL),(2,'plugin_content_manager_configuration_content_types::admin::user','{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}','object',NULL,NULL),(3,'plugin_content_manager_configuration_content_types::admin::role','{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}','object',NULL,NULL),(4,'plugin_content_manager_configuration_content_types::admin::api-token','{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}','object',NULL,NULL),(5,'plugin_content_manager_configuration_content_types::admin::api-token-permission','{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}','object',NULL,NULL),(6,'plugin_content_manager_configuration_content_types::plugin::upload.file','{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}','object',NULL,NULL),(7,'plugin_content_manager_configuration_content_types::plugin::upload.folder','{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}','object',NULL,NULL),(11,'plugin_content_manager_configuration_content_types::admin::permission','{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}','object',NULL,NULL),(17,'plugin_content_manager_configuration_content_types::plugin::i18n.locale','{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}','object',NULL,NULL),(18,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}','object',NULL,NULL),(19,'plugin_upload_metrics','{\"weeklySchedule\":\"5 2 17 * * 0\",\"lastWeeklyUpdate\":1671962525690}','object',NULL,NULL),(20,'plugin_i18n_default_locale','\"en\"','string',NULL,NULL),(21,'core_admin_auth','{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}','object',NULL,NULL),(22,'plugin_content_manager_configuration_content_types::plugin::chartbrew.chartbrew','{\"uid\":\"plugin::chartbrew.chartbrew\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"host\",\"defaultSortBy\":\"host\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"host\":{\"edit\":{\"label\":\"host\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"host\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"host\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"host\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}','object',NULL,NULL),(36,'plugin_chartbrew_settings','{\"host\":\"https://api.chartbrew.com\",\"clientHost\":\"https://app.chartbrew.com\",\"strapiHost\":\"hada.nguyen309@gmail.com\",\"token\":\"Hujmxuf-tzr&Y8@\",\"hasToken\":false}','object',NULL,NULL),(38,'plugin_content_manager_configuration_content_types::plugin::tiny-train.cthoadon','{\"uid\":\"plugin::tiny-train.cthoadon\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaHD\":{\"edit\":{\"label\":\"MaHD\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"MaHD\",\"searchable\":true,\"sortable\":true}},\"MaPDV\":{\"edit\":{\"label\":\"MaPDV\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"MaPDV\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MaPDV\"],\"edit\":[[{\"name\":\"MaHD\",\"size\":6},{\"name\":\"MaPDV\",\"size\":6}]]}}','object',NULL,NULL),(39,'plugin_content_manager_configuration_content_types::plugin::tiny-train.ga','{\"uid\":\"plugin::tiny-train.ga\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"TenGa\",\"defaultSortBy\":\"TenGa\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaGA\":{\"edit\":{\"label\":\"MaGA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MaGA\",\"searchable\":true,\"sortable\":true}},\"TenGa\":{\"edit\":{\"label\":\"TenGa\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TenGa\",\"searchable\":true,\"sortable\":true}},\"CuLy\":{\"edit\":{\"label\":\"CuLy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CuLy\",\"searchable\":true,\"sortable\":true}},\"DiaChi\":{\"edit\":{\"label\":\"DiaChi\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DiaChi\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MaGA\",\"TenGa\",\"CuLy\"],\"edit\":[[{\"name\":\"MaGA\",\"size\":4},{\"name\":\"TenGa\",\"size\":6}],[{\"name\":\"CuLy\",\"size\":4},{\"name\":\"DiaChi\",\"size\":6}]]}}','object',NULL,NULL),(40,'plugin_content_manager_configuration_content_types::plugin::tiny-train.ghe','{\"uid\":\"plugin::tiny-train.ghe\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"DienGiai\",\"defaultSortBy\":\"DienGiai\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaGHE\":{\"edit\":{\"label\":\"MaGHE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MaGHE\",\"searchable\":true,\"sortable\":true}},\"LoaiGhe\":{\"edit\":{\"label\":\"LoaiGhe\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"LoaiGhe\",\"searchable\":true,\"sortable\":true}},\"DienGiai\":{\"edit\":{\"label\":\"DienGiai\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DienGiai\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MaGHE\",\"LoaiGhe\",\"DienGiai\"],\"edit\":[[{\"name\":\"MaGHE\",\"size\":4},{\"name\":\"LoaiGhe\",\"size\":6}],[{\"name\":\"DienGiai\",\"size\":6}]]}}','object',NULL,NULL),(41,'plugin_content_manager_configuration_content_types::plugin::tiny-train.hoadon','{\"uid\":\"plugin::tiny-train.hoadon\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaNV\":{\"edit\":{\"label\":\"MaNV\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":false,\"mainField\":\"firstname\"},\"list\":{\"label\":\"MaNV\",\"searchable\":true,\"sortable\":true}},\"TongTien\":{\"edit\":{\"label\":\"TongTien\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TongTien\",\"searchable\":true,\"sortable\":true}},\"NgayThanhToan\":{\"edit\":{\"label\":\"NgayThanhToan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"NgayThanhToan\",\"searchable\":true,\"sortable\":true}},\"MaHD\":{\"edit\":{\"label\":\"MaHD\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"MaHD\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MaNV\",\"TongTien\",\"NgayThanhToan\"],\"edit\":[[{\"name\":\"MaNV\",\"size\":6},{\"name\":\"TongTien\",\"size\":4}],[{\"name\":\"NgayThanhToan\",\"size\":4},{\"name\":\"MaHD\",\"size\":6}]]}}','object',NULL,NULL),(42,'plugin_content_manager_configuration_content_types::plugin::tiny-train.khachhang','{\"uid\":\"plugin::tiny-train.khachhang\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"CCCD\",\"defaultSortBy\":\"CCCD\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaKH\":{\"edit\":{\"label\":\"MaKH\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"MaKH\",\"searchable\":true,\"sortable\":true}},\"CCCD\":{\"edit\":{\"label\":\"CCCD\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CCCD\",\"searchable\":true,\"sortable\":true}},\"HoDem\":{\"edit\":{\"label\":\"HoDem\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HoDem\",\"searchable\":true,\"sortable\":true}},\"Ten\":{\"edit\":{\"label\":\"Ten\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ten\",\"searchable\":true,\"sortable\":true}},\"SDT\":{\"edit\":{\"label\":\"SDT\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SDT\",\"searchable\":true,\"sortable\":true}},\"NgaySinh\":{\"edit\":{\"label\":\"NgaySinh\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NgaySinh\",\"searchable\":true,\"sortable\":true}},\"DoiTuong\":{\"edit\":{\"label\":\"DoiTuong\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"DoiTuong\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"MaKH\",\"size\":4},{\"name\":\"CCCD\",\"size\":6}],[{\"name\":\"HoDem\",\"size\":6},{\"name\":\"Ten\",\"size\":6}],[{\"name\":\"SDT\",\"size\":6},{\"name\":\"NgaySinh\",\"size\":4}],[{\"name\":\"DoiTuong\",\"size\":6}]],\"list\":[\"id\",\"MaKH\",\"CCCD\",\"HoDem\"]}}','object',NULL,NULL),(43,'plugin_content_manager_configuration_content_types::plugin::tiny-train.khuyenmai','{\"uid\":\"plugin::tiny-train.khuyenmai\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"TenKM\",\"defaultSortBy\":\"TenKM\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaKM\":{\"edit\":{\"label\":\"MaKM\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MaKM\",\"searchable\":true,\"sortable\":true}},\"TenKM\":{\"edit\":{\"label\":\"TenKM\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TenKM\",\"searchable\":true,\"sortable\":true}},\"TiLeGiam\":{\"edit\":{\"label\":\"TiLeGiam\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TiLeGiam\",\"searchable\":true,\"sortable\":true}},\"NgayHetHan\":{\"edit\":{\"label\":\"NgayHetHan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NgayHetHan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MaKM\",\"TenKM\",\"TiLeGiam\"],\"edit\":[[{\"name\":\"MaKM\",\"size\":4},{\"name\":\"TenKM\",\"size\":6}],[{\"name\":\"TiLeGiam\",\"size\":4},{\"name\":\"NgayHetHan\",\"size\":6}]]}}','object',NULL,NULL),(44,'plugin_content_manager_configuration_content_types::plugin::tiny-train.tau','{\"uid\":\"plugin::tiny-train.tau\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"TenTau\",\"defaultSortBy\":\"TenTau\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaTAU\":{\"edit\":{\"label\":\"MaTAU\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MaTAU\",\"searchable\":true,\"sortable\":true}},\"TenTau\":{\"edit\":{\"label\":\"TenTau\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TenTau\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MaTAU\",\"TenTau\",\"createdAt\"],\"edit\":[[{\"name\":\"MaTAU\",\"size\":4},{\"name\":\"TenTau\",\"size\":6}]]}}','object',NULL,NULL),(45,'plugin_content_manager_configuration_content_types::plugin::tiny-train.toa','{\"uid\":\"plugin::tiny-train.toa\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaTOA\":{\"edit\":{\"label\":\"MaTOA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MaTOA\",\"searchable\":true,\"sortable\":true}},\"SoLuongGhe\":{\"edit\":{\"label\":\"SoLuongGhe\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SoLuongGhe\",\"searchable\":true,\"sortable\":true}},\"LoaiToa\":{\"edit\":{\"label\":\"LoaiToa\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"LoaiToa\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MaTOA\",\"SoLuongGhe\",\"LoaiToa\"],\"edit\":[[{\"name\":\"MaTOA\",\"size\":4},{\"name\":\"SoLuongGhe\",\"size\":4}],[{\"name\":\"LoaiToa\",\"size\":6}]]}}','object',NULL,NULL),(46,'plugin_content_manager_configuration_content_types::plugin::tiny-train.toatau','{\"uid\":\"plugin::tiny-train.toatau\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaTOA\":{\"edit\":{\"label\":\"MaTOA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"LoaiToa\"},\"list\":{\"label\":\"MaTOA\",\"searchable\":true,\"sortable\":true}},\"MaTAU\":{\"edit\":{\"label\":\"MaTAU\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"TenTau\"},\"list\":{\"label\":\"MaTAU\",\"searchable\":true,\"sortable\":true}},\"MaGHE\":{\"edit\":{\"label\":\"MaGHE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"DienGiai\"},\"list\":{\"label\":\"MaGHE\",\"searchable\":true,\"sortable\":true}},\"SoThuTu\":{\"edit\":{\"label\":\"SoThuTu\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SoThuTu\",\"searchable\":true,\"sortable\":true}},\"Gia\":{\"edit\":{\"label\":\"Gia\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Gia\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"SoThuTu\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"SoThuTu\",\"size\":4},{\"name\":\"MaTOA\",\"size\":6}],[{\"name\":\"MaTAU\",\"size\":6},{\"name\":\"Gia\",\"size\":4}],[{\"name\":\"MaGHE\",\"size\":6}]]}}','object',NULL,NULL),(48,'plugin_content_manager_configuration_content_types::plugin::tiny-train.chuyendi','{\"uid\":\"plugin::tiny-train.chuyendi\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MACHUYENDI\":{\"edit\":{\"label\":\"MACHUYENDI\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"MACHUYENDI\",\"searchable\":true,\"sortable\":true}},\"MaTAU\":{\"edit\":{\"label\":\"MaTAU\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"TenTau\"},\"list\":{\"label\":\"MaTAU\",\"searchable\":true,\"sortable\":true}},\"NgayDi\":{\"edit\":{\"label\":\"NgayDi\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NgayDi\",\"searchable\":true,\"sortable\":true}},\"NgayDen\":{\"edit\":{\"label\":\"NgayDen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NgayDen\",\"searchable\":true,\"sortable\":true}},\"GioDi\":{\"edit\":{\"label\":\"GioDi\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"GioDi\",\"searchable\":true,\"sortable\":true}},\"GioDen\":{\"edit\":{\"label\":\"GioDen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"GioDen\",\"searchable\":true,\"sortable\":true}},\"GaDi\":{\"edit\":{\"label\":\"GaDi\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"TenGa\"},\"list\":{\"label\":\"GaDi\",\"searchable\":true,\"sortable\":true}},\"GaDen\":{\"edit\":{\"label\":\"GaDen\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"TenGa\"},\"list\":{\"label\":\"GaDen\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MACHUYENDI\",\"NgayDi\",\"NgayDen\"],\"edit\":[[{\"name\":\"MACHUYENDI\",\"size\":4}],[{\"name\":\"MaTAU\",\"size\":6}],[{\"name\":\"GaDi\",\"size\":6},{\"name\":\"GaDen\",\"size\":6}],[{\"name\":\"NgayDi\",\"size\":6},{\"name\":\"NgayDen\",\"size\":6}],[{\"name\":\"GioDi\",\"size\":4},{\"name\":\"GioDen\",\"size\":6}]]}}','object',NULL,NULL),(50,'plugin_content_manager_configuration_content_types::plugin::tiny-train.phieudatve','{\"uid\":\"plugin::tiny-train.phieudatve\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"MaPDV\":{\"edit\":{\"label\":\"MaPDV\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"MaPDV\",\"searchable\":true,\"sortable\":true}},\"MaCHUYENDI\":{\"edit\":{\"label\":\"MaCHUYENDI\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"MaCHUYENDI\",\"searchable\":true,\"sortable\":true}},\"MaTOA\":{\"edit\":{\"label\":\"MaTOA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"MaTOA\",\"searchable\":true,\"sortable\":true}},\"MaKM\":{\"edit\":{\"label\":\"MaKM\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"TenKM\"},\"list\":{\"label\":\"MaKM\",\"searchable\":true,\"sortable\":true}},\"TienPhaiTra\":{\"edit\":{\"label\":\"TienPhaiTra\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":false},\"list\":{\"label\":\"TienPhaiTra\",\"searchable\":true,\"sortable\":true}},\"DonGia\":{\"edit\":{\"label\":\"DonGia\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DonGia\",\"searchable\":true,\"sortable\":true}},\"PhuPhi\":{\"edit\":{\"label\":\"PhuPhi\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PhuPhi\",\"searchable\":true,\"sortable\":true}},\"BaoHiem\":{\"edit\":{\"label\":\"BaoHiem\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"BaoHiem\",\"searchable\":true,\"sortable\":true}},\"TrangThai\":{\"edit\":{\"label\":\"TrangThai\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TrangThai\",\"searchable\":true,\"sortable\":true}},\"MaKH\":{\"edit\":{\"label\":\"MaKH\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"CCCD\"},\"list\":{\"label\":\"MaKH\",\"searchable\":true,\"sortable\":true}},\"SoThuTuGhe\":{\"edit\":{\"label\":\"SoThuTuGhe\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SoThuTuGhe\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"MaPDV\",\"MaCHUYENDI\",\"MaKH\"],\"edit\":[[{\"name\":\"MaPDV\",\"size\":4}],[{\"name\":\"MaCHUYENDI\",\"size\":6},{\"name\":\"MaTOA\",\"size\":6}],[{\"name\":\"MaKM\",\"size\":6},{\"name\":\"TienPhaiTra\",\"size\":4}],[{\"name\":\"PhuPhi\",\"size\":4},{\"name\":\"BaoHiem\",\"size\":4},{\"name\":\"DonGia\",\"size\":4}],[{\"name\":\"TrangThai\",\"size\":4},{\"name\":\"MaKH\",\"size\":6}],[{\"name\":\"SoThuTuGhe\",\"size\":4}]]}}','object',NULL,NULL),(51,'core_admin_project-settings','{\"menuLogo\":{\"name\":\"istockphoto-1003204840-612x612.jpg\",\"hash\":\"istockphoto_1003204840_612x612_64e74cd731\",\"url\":\"/uploads/istockphoto_1003204840_612x612_64e74cd731.jpg\",\"width\":612,\"height\":454,\"ext\":\".jpg\",\"size\":30.14,\"provider\":\"local\"}}','object',NULL,NULL);
/*!40000 ALTER TABLE `strapi_core_store_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_database_schema`
--

DROP TABLE IF EXISTS `strapi_database_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_database_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `schema` json DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_database_schema`
--

LOCK TABLES `strapi_database_schema` WRITE;
/*!40000 ALTER TABLE `strapi_database_schema` DISABLE KEYS */;
INSERT INTO `strapi_database_schema` VALUES (65,'{\"tables\": [{\"name\": \"strapi_core_store_settings\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"value\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"environment\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tag\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"strapi_webhooks\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [\"longtext\"], \"name\": \"url\", \"type\": \"text\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"headers\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"events\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"enabled\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [], \"foreignKeys\": []}, {\"name\": \"admin_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"subject\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"properties\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"conditions\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"firstname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lastname\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"username\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"email\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"password\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"reset_password_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"registration_token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"is_active\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"blocked\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"prefered_language\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_users_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_roles\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"admin_roles_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_roles_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_tokens\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"description\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"access_key\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"last_used_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"expires_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"lifespan\", \"type\": \"bigInteger\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_tokens_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_tokens_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"action\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"alternative_text\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"caption\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"width\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"height\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"formats\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hash\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ext\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"mime\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [10, 2], \"name\": \"size\", \"type\": \"decimal\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"preview_url\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"provider_metadata\", \"type\": \"jsonb\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_files_folder_path_index\", \"type\": null, \"columns\": [\"folder_path\"]}, {\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"files_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path_id\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"path\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_path_id_index\", \"type\": \"unique\", \"columns\": [\"path_id\"]}, {\"name\": \"upload_folders_path_index\", \"type\": \"unique\", \"columns\": [\"path\"]}, {\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"chuyendis\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"machuyendi\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ngay_di\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ngay_den\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"precision\": 3}], \"name\": \"gio_di\", \"type\": \"time\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"precision\": 3}], \"name\": \"gio_den\", \"type\": \"time\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"chuyendis_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"chuyendis_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"chuyendis_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"chuyendis_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cthoadons\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cthoadons_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"cthoadons_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"cthoadons_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cthoadons_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"gas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ma_ga\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ten_ga\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cu_ly\", \"type\": \"double\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"dia_chi\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"gas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"gas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"gas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"gas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"ghes\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ma_ghe\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"loai_ghe\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"dien_giai\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"ghes_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"ghes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"ghes_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"ghes_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"hoadons\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"tong_tien\", \"type\": \"double\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ngay_thanh_toan\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ma_hd\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"hoadons_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"hoadons_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"hoadons_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"hoadons_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"khachhangs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ma_kh\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"cccd\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ho_dem\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ten\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"sdt\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ngay_sinh\", \"type\": \"date\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"doi_tuong\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"khachhangs_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"khachhangs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"khachhangs_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"khachhangs_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"khuyenmais\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ma_km\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ten_km\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ti_le_giam\", \"type\": \"double\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"ngay_het_han\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"khuyenmais_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"khuyenmais_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"khuyenmais_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"khuyenmais_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"taus\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ma_tau\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ten_tau\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"taus_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"taus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"taus_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"taus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"toas\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ma_toa\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"so_luong_ghe\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"loai_toa\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"toas_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"toas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"toas_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"toas_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"toataus\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"so_thu_tu\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"gia\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"toataus_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"toataus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"toataus_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"toataus_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"phieudatves\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"ma_pdv\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tien_phai_tra\", \"type\": \"double\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"don_gia\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phu_phi\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"bao_hiem\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"trang_thai\", \"type\": \"boolean\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"so_thu_tu_ghe\", \"type\": \"integer\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"phieudatves_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"phieudatves_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"phieudatves_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"phieudatves_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"chartbrews\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"host\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"token\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"chartbrews_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"chartbrews_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"chartbrews_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"chartbrews_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"i18n_locale\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"name\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"code\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"created_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [{\"useTz\": false, \"precision\": 6}], \"name\": \"updated_at\", \"type\": \"datetime\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"created_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"updated_by_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"]}], \"foreignKeys\": [{\"name\": \"i18n_locale_created_by_id_fk\", \"columns\": [\"created_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"i18n_locale_updated_by_id_fk\", \"columns\": [\"updated_by_id\"], \"onDelete\": \"SET NULL\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_permissions_role_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_permissions_role_links_unique\", \"type\": \"unique\", \"columns\": [\"permission_id\", \"role_id\"]}, {\"name\": \"admin_permissions_role_links_order_inv_fk\", \"columns\": [\"permission_order\"]}], \"foreignKeys\": [{\"name\": \"admin_permissions_role_links_fk\", \"columns\": [\"permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_permissions_role_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"admin_users_roles_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"role_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"]}, {\"name\": \"admin_users_roles_links_unique\", \"type\": \"unique\", \"columns\": [\"user_id\", \"role_id\"]}, {\"name\": \"admin_users_roles_links_order_fk\", \"columns\": [\"role_order\"]}, {\"name\": \"admin_users_roles_links_order_inv_fk\", \"columns\": [\"user_order\"]}], \"foreignKeys\": [{\"name\": \"admin_users_roles_links_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}, {\"name\": \"admin_users_roles_links_inv_fk\", \"columns\": [\"role_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_roles\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"strapi_api_token_permissions_token_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"api_token_permission_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"api_token_permission_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_unique\", \"type\": \"unique\", \"columns\": [\"api_token_permission_id\", \"api_token_id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_order_inv_fk\", \"columns\": [\"api_token_permission_order\"]}], \"foreignKeys\": [{\"name\": \"strapi_api_token_permissions_token_links_fk\", \"columns\": [\"api_token_permission_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_token_permissions\", \"referencedColumns\": [\"id\"]}, {\"name\": \"strapi_api_token_permissions_token_links_inv_fk\", \"columns\": [\"api_token_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"strapi_api_tokens\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_related_morphs\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"related_type\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"field\", \"type\": \"string\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"]}], \"foreignKeys\": [{\"name\": \"files_related_morphs_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"files_folder_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"file_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"file_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"files_folder_links_unique\", \"type\": \"unique\", \"columns\": [\"file_id\", \"folder_id\"]}, {\"name\": \"files_folder_links_order_inv_fk\", \"columns\": [\"file_order\"]}], \"foreignKeys\": [{\"name\": \"files_folder_links_fk\", \"columns\": [\"file_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"files\", \"referencedColumns\": [\"id\"]}, {\"name\": \"files_folder_links_inv_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"upload_folders_parent_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"inv_folder_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"folder_order\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_unique\", \"type\": \"unique\", \"columns\": [\"folder_id\", \"inv_folder_id\"]}, {\"name\": \"upload_folders_parent_links_order_inv_fk\", \"columns\": [\"folder_order\"]}], \"foreignKeys\": [{\"name\": \"upload_folders_parent_links_fk\", \"columns\": [\"folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}, {\"name\": \"upload_folders_parent_links_inv_fk\", \"columns\": [\"inv_folder_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"upload_folders\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"chuyendis_ma_tau_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"chuyendi_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tau_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"chuyendis_ma_tau_links_fk\", \"columns\": [\"chuyendi_id\"]}, {\"name\": \"chuyendis_ma_tau_links_inv_fk\", \"columns\": [\"tau_id\"]}, {\"name\": \"chuyendis_ma_tau_links_unique\", \"type\": \"unique\", \"columns\": [\"chuyendi_id\", \"tau_id\"]}], \"foreignKeys\": [{\"name\": \"chuyendis_ma_tau_links_fk\", \"columns\": [\"chuyendi_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"chuyendis\", \"referencedColumns\": [\"id\"]}, {\"name\": \"chuyendis_ma_tau_links_inv_fk\", \"columns\": [\"tau_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"taus\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"chuyendis_ga_di_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"chuyendi_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ga_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"chuyendis_ga_di_links_fk\", \"columns\": [\"chuyendi_id\"]}, {\"name\": \"chuyendis_ga_di_links_inv_fk\", \"columns\": [\"ga_id\"]}, {\"name\": \"chuyendis_ga_di_links_unique\", \"type\": \"unique\", \"columns\": [\"chuyendi_id\", \"ga_id\"]}], \"foreignKeys\": [{\"name\": \"chuyendis_ga_di_links_fk\", \"columns\": [\"chuyendi_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"chuyendis\", \"referencedColumns\": [\"id\"]}, {\"name\": \"chuyendis_ga_di_links_inv_fk\", \"columns\": [\"ga_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"gas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"chuyendis_ga_den_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"chuyendi_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ga_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"chuyendis_ga_den_links_fk\", \"columns\": [\"chuyendi_id\"]}, {\"name\": \"chuyendis_ga_den_links_inv_fk\", \"columns\": [\"ga_id\"]}, {\"name\": \"chuyendis_ga_den_links_unique\", \"type\": \"unique\", \"columns\": [\"chuyendi_id\", \"ga_id\"]}], \"foreignKeys\": [{\"name\": \"chuyendis_ga_den_links_fk\", \"columns\": [\"chuyendi_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"chuyendis\", \"referencedColumns\": [\"id\"]}, {\"name\": \"chuyendis_ga_den_links_inv_fk\", \"columns\": [\"ga_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"gas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cthoadons_ma_hd_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"cthoadon_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"hoadon_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cthoadons_ma_hd_links_fk\", \"columns\": [\"cthoadon_id\"]}, {\"name\": \"cthoadons_ma_hd_links_inv_fk\", \"columns\": [\"hoadon_id\"]}, {\"name\": \"cthoadons_ma_hd_links_unique\", \"type\": \"unique\", \"columns\": [\"cthoadon_id\", \"hoadon_id\"]}], \"foreignKeys\": [{\"name\": \"cthoadons_ma_hd_links_fk\", \"columns\": [\"cthoadon_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cthoadons\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cthoadons_ma_hd_links_inv_fk\", \"columns\": [\"hoadon_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"hoadons\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"cthoadons_ma_pdv_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"cthoadon_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"phieudatve_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"cthoadons_ma_pdv_links_fk\", \"columns\": [\"cthoadon_id\"]}, {\"name\": \"cthoadons_ma_pdv_links_inv_fk\", \"columns\": [\"phieudatve_id\"]}, {\"name\": \"cthoadons_ma_pdv_links_unique\", \"type\": \"unique\", \"columns\": [\"cthoadon_id\", \"phieudatve_id\"]}], \"foreignKeys\": [{\"name\": \"cthoadons_ma_pdv_links_fk\", \"columns\": [\"cthoadon_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"cthoadons\", \"referencedColumns\": [\"id\"]}, {\"name\": \"cthoadons_ma_pdv_links_inv_fk\", \"columns\": [\"phieudatve_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"phieudatves\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"hoadons_ma_nv_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"hoadon_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"user_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"hoadons_ma_nv_links_fk\", \"columns\": [\"hoadon_id\"]}, {\"name\": \"hoadons_ma_nv_links_inv_fk\", \"columns\": [\"user_id\"]}, {\"name\": \"hoadons_ma_nv_links_unique\", \"type\": \"unique\", \"columns\": [\"hoadon_id\", \"user_id\"]}], \"foreignKeys\": [{\"name\": \"hoadons_ma_nv_links_fk\", \"columns\": [\"hoadon_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"hoadons\", \"referencedColumns\": [\"id\"]}, {\"name\": \"hoadons_ma_nv_links_inv_fk\", \"columns\": [\"user_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"admin_users\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"toataus_ma_toa_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"toatau_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"toa_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"toataus_ma_toa_links_fk\", \"columns\": [\"toatau_id\"]}, {\"name\": \"toataus_ma_toa_links_inv_fk\", \"columns\": [\"toa_id\"]}, {\"name\": \"toataus_ma_toa_links_unique\", \"type\": \"unique\", \"columns\": [\"toatau_id\", \"toa_id\"]}], \"foreignKeys\": [{\"name\": \"toataus_ma_toa_links_fk\", \"columns\": [\"toatau_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"toataus\", \"referencedColumns\": [\"id\"]}, {\"name\": \"toataus_ma_toa_links_inv_fk\", \"columns\": [\"toa_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"toas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"toataus_ma_tau_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"toatau_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"tau_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"toataus_ma_tau_links_fk\", \"columns\": [\"toatau_id\"]}, {\"name\": \"toataus_ma_tau_links_inv_fk\", \"columns\": [\"tau_id\"]}, {\"name\": \"toataus_ma_tau_links_unique\", \"type\": \"unique\", \"columns\": [\"toatau_id\", \"tau_id\"]}], \"foreignKeys\": [{\"name\": \"toataus_ma_tau_links_fk\", \"columns\": [\"toatau_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"toataus\", \"referencedColumns\": [\"id\"]}, {\"name\": \"toataus_ma_tau_links_inv_fk\", \"columns\": [\"tau_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"taus\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"toataus_ma_ghe_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"toatau_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"ghe_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"toataus_ma_ghe_links_fk\", \"columns\": [\"toatau_id\"]}, {\"name\": \"toataus_ma_ghe_links_inv_fk\", \"columns\": [\"ghe_id\"]}, {\"name\": \"toataus_ma_ghe_links_unique\", \"type\": \"unique\", \"columns\": [\"toatau_id\", \"ghe_id\"]}], \"foreignKeys\": [{\"name\": \"toataus_ma_ghe_links_fk\", \"columns\": [\"toatau_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"toataus\", \"referencedColumns\": [\"id\"]}, {\"name\": \"toataus_ma_ghe_links_inv_fk\", \"columns\": [\"ghe_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"ghes\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"phieudatves_ma_chuyendi_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"phieudatve_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"chuyendi_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"phieudatves_ma_chuyendi_links_fk\", \"columns\": [\"phieudatve_id\"]}, {\"name\": \"phieudatves_ma_chuyendi_links_inv_fk\", \"columns\": [\"chuyendi_id\"]}, {\"name\": \"phieudatves_ma_chuyendi_links_unique\", \"type\": \"unique\", \"columns\": [\"phieudatve_id\", \"chuyendi_id\"]}], \"foreignKeys\": [{\"name\": \"phieudatves_ma_chuyendi_links_fk\", \"columns\": [\"phieudatve_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"phieudatves\", \"referencedColumns\": [\"id\"]}, {\"name\": \"phieudatves_ma_chuyendi_links_inv_fk\", \"columns\": [\"chuyendi_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"chuyendis\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"phieudatves_ma_toa_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"phieudatve_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"toa_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"phieudatves_ma_toa_links_fk\", \"columns\": [\"phieudatve_id\"]}, {\"name\": \"phieudatves_ma_toa_links_inv_fk\", \"columns\": [\"toa_id\"]}, {\"name\": \"phieudatves_ma_toa_links_unique\", \"type\": \"unique\", \"columns\": [\"phieudatve_id\", \"toa_id\"]}], \"foreignKeys\": [{\"name\": \"phieudatves_ma_toa_links_fk\", \"columns\": [\"phieudatve_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"phieudatves\", \"referencedColumns\": [\"id\"]}, {\"name\": \"phieudatves_ma_toa_links_inv_fk\", \"columns\": [\"toa_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"toas\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"phieudatves_ma_km_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"phieudatve_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"khuyenmai_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"phieudatves_ma_km_links_fk\", \"columns\": [\"phieudatve_id\"]}, {\"name\": \"phieudatves_ma_km_links_inv_fk\", \"columns\": [\"khuyenmai_id\"]}, {\"name\": \"phieudatves_ma_km_links_unique\", \"type\": \"unique\", \"columns\": [\"phieudatve_id\", \"khuyenmai_id\"]}], \"foreignKeys\": [{\"name\": \"phieudatves_ma_km_links_fk\", \"columns\": [\"phieudatve_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"phieudatves\", \"referencedColumns\": [\"id\"]}, {\"name\": \"phieudatves_ma_km_links_inv_fk\", \"columns\": [\"khuyenmai_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"khuyenmais\", \"referencedColumns\": [\"id\"]}]}, {\"name\": \"phieudatves_ma_kh_links\", \"columns\": [{\"args\": [{\"primary\": true, \"primaryKey\": true}], \"name\": \"id\", \"type\": \"increments\", \"unsigned\": false, \"defaultTo\": null, \"notNullable\": true}, {\"args\": [], \"name\": \"phieudatve_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}, {\"args\": [], \"name\": \"khachhang_id\", \"type\": \"integer\", \"unsigned\": true, \"defaultTo\": null, \"notNullable\": false}], \"indexes\": [{\"name\": \"phieudatves_ma_kh_links_fk\", \"columns\": [\"phieudatve_id\"]}, {\"name\": \"phieudatves_ma_kh_links_inv_fk\", \"columns\": [\"khachhang_id\"]}, {\"name\": \"phieudatves_ma_kh_links_unique\", \"type\": \"unique\", \"columns\": [\"phieudatve_id\", \"khachhang_id\"]}], \"foreignKeys\": [{\"name\": \"phieudatves_ma_kh_links_fk\", \"columns\": [\"phieudatve_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"phieudatves\", \"referencedColumns\": [\"id\"]}, {\"name\": \"phieudatves_ma_kh_links_inv_fk\", \"columns\": [\"khachhang_id\"], \"onDelete\": \"CASCADE\", \"referencedTable\": \"khachhangs\", \"referencedColumns\": [\"id\"]}]}]}','2022-12-25 21:44:28','c931a2582bdbb3c4ebbc22bdffe386ca');
/*!40000 ALTER TABLE `strapi_database_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_migrations`
--

DROP TABLE IF EXISTS `strapi_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_migrations`
--

LOCK TABLES `strapi_migrations` WRITE;
/*!40000 ALTER TABLE `strapi_migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strapi_webhooks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` json DEFAULT NULL,
  `events` json DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taus`
--

DROP TABLE IF EXISTS `taus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ma_tau` int DEFAULT NULL,
  `ten_tau` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taus_created_by_id_fk` (`created_by_id`),
  KEY `taus_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `taus_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `taus_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taus`
--

LOCK TABLES `taus` WRITE;
/*!40000 ALTER TABLE `taus` DISABLE KEYS */;
INSERT INTO `taus` VALUES (1,1,'SE1','2022-12-19 17:39:08.110000','2022-12-19 17:39:08.110000',1,1),(2,2,'SE2','2022-12-19 17:39:14.292000','2022-12-19 17:39:14.292000',1,1);
/*!40000 ALTER TABLE `taus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toas`
--

DROP TABLE IF EXISTS `toas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ma_toa` int DEFAULT NULL,
  `so_luong_ghe` int DEFAULT NULL,
  `loai_toa` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toas_created_by_id_fk` (`created_by_id`),
  KEY `toas_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `toas_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `toas_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toas`
--

LOCK TABLES `toas` WRITE;
/*!40000 ALTER TABLE `toas` DISABLE KEYS */;
INSERT INTO `toas` VALUES (1,1,64,'NML','2022-12-19 17:39:38.088000','2022-12-21 15:46:49.435000',1,1),(2,2,28,'ANL','2022-12-19 17:39:48.631000','2022-12-21 15:46:54.999000',1,1),(3,3,42,'BNL','2022-12-19 17:39:56.011000','2022-12-21 15:47:01.526000',1,1);
/*!40000 ALTER TABLE `toas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toataus`
--

DROP TABLE IF EXISTS `toataus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toataus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `so_thu_tu` int DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  `gia` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `toataus_created_by_id_fk` (`created_by_id`),
  KEY `toataus_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `toataus_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `toataus_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toataus`
--

LOCK TABLES `toataus` WRITE;
/*!40000 ALTER TABLE `toataus` DISABLE KEYS */;
INSERT INTO `toataus` VALUES (1,1,'2022-12-19 17:40:28.471000','2022-12-23 11:16:49.998000',1,1,1099000),(2,2,'2022-12-19 17:40:40.552000','2022-12-23 11:16:55.923000',1,1,1599000),(3,3,'2022-12-19 17:40:49.776000','2022-12-23 11:17:00.270000',1,1,1299000),(4,1,'2022-12-19 17:41:11.006000','2022-12-23 11:17:04.572000',1,1,1099000),(5,2,'2022-12-19 17:41:17.083000','2022-12-23 11:17:09.660000',1,1,1599000),(6,3,'2022-12-19 17:41:23.402000','2022-12-23 11:17:13.564000',1,1,1299000);
/*!40000 ALTER TABLE `toataus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toataus_ma_ghe_links`
--

DROP TABLE IF EXISTS `toataus_ma_ghe_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toataus_ma_ghe_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `toatau_id` int unsigned DEFAULT NULL,
  `ghe_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toataus_ma_ghe_links_unique` (`toatau_id`,`ghe_id`),
  KEY `toataus_ma_ghe_links_fk` (`toatau_id`),
  KEY `toataus_ma_ghe_links_inv_fk` (`ghe_id`),
  CONSTRAINT `toataus_ma_ghe_links_fk` FOREIGN KEY (`toatau_id`) REFERENCES `toataus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `toataus_ma_ghe_links_inv_fk` FOREIGN KEY (`ghe_id`) REFERENCES `ghes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toataus_ma_ghe_links`
--

LOCK TABLES `toataus_ma_ghe_links` WRITE;
/*!40000 ALTER TABLE `toataus_ma_ghe_links` DISABLE KEYS */;
INSERT INTO `toataus_ma_ghe_links` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,2),(6,6,3);
/*!40000 ALTER TABLE `toataus_ma_ghe_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toataus_ma_tau_links`
--

DROP TABLE IF EXISTS `toataus_ma_tau_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toataus_ma_tau_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `toatau_id` int unsigned DEFAULT NULL,
  `tau_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toataus_ma_tau_links_unique` (`toatau_id`,`tau_id`),
  KEY `toataus_ma_tau_links_fk` (`toatau_id`),
  KEY `toataus_ma_tau_links_inv_fk` (`tau_id`),
  CONSTRAINT `toataus_ma_tau_links_fk` FOREIGN KEY (`toatau_id`) REFERENCES `toataus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `toataus_ma_tau_links_inv_fk` FOREIGN KEY (`tau_id`) REFERENCES `taus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toataus_ma_tau_links`
--

LOCK TABLES `toataus_ma_tau_links` WRITE;
/*!40000 ALTER TABLE `toataus_ma_tau_links` DISABLE KEYS */;
INSERT INTO `toataus_ma_tau_links` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,2);
/*!40000 ALTER TABLE `toataus_ma_tau_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toataus_ma_toa_links`
--

DROP TABLE IF EXISTS `toataus_ma_toa_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toataus_ma_toa_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `toatau_id` int unsigned DEFAULT NULL,
  `toa_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `toataus_ma_toa_links_unique` (`toatau_id`,`toa_id`),
  KEY `toataus_ma_toa_links_fk` (`toatau_id`),
  KEY `toataus_ma_toa_links_inv_fk` (`toa_id`),
  CONSTRAINT `toataus_ma_toa_links_fk` FOREIGN KEY (`toatau_id`) REFERENCES `toataus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `toataus_ma_toa_links_inv_fk` FOREIGN KEY (`toa_id`) REFERENCES `toas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toataus_ma_toa_links`
--

LOCK TABLES `toataus_ma_toa_links` WRITE;
/*!40000 ALTER TABLE `toataus_ma_toa_links` DISABLE KEYS */;
INSERT INTO `toataus_ma_toa_links` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,1),(5,5,2),(6,6,3);
/*!40000 ALTER TABLE `toataus_ma_toa_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders`
--

DROP TABLE IF EXISTS `upload_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int unsigned DEFAULT NULL,
  `updated_by_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  UNIQUE KEY `upload_folders_path_index` (`path`),
  KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  KEY `upload_folders_updated_by_id_fk` (`updated_by_id`),
  CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders`
--

LOCK TABLES `upload_folders` WRITE;
/*!40000 ALTER TABLE `upload_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_folders_parent_links`
--

DROP TABLE IF EXISTS `upload_folders_parent_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `upload_folders_parent_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `folder_id` int unsigned DEFAULT NULL,
  `inv_folder_id` int unsigned DEFAULT NULL,
  `folder_order` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  KEY `upload_folders_parent_links_fk` (`folder_id`),
  KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`),
  CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_folders_parent_links`
--

LOCK TABLES `upload_folders_parent_links` WRITE;
/*!40000 ALTER TABLE `upload_folders_parent_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `upload_folders_parent_links` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-29  9:04:05
