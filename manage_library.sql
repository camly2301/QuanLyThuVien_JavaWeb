-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: manage_library
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `category_id` int NOT NULL,
  `amount` int NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `create_day` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (37,'Dám ước mơ',22,6,'dam-uoc-mo.jpg','2022-12-20 14:30:36'),(38,'Nghĩ Lớn Để Thành Công',23,4,'nghi-lon-de-thanh-cong.jpg','2022-12-20 14:30:49'),(39,'360 Động Từ Bất Quy Tắc Đầy Đủ',24,5,'360-dong-tu-bat-quy-tac-day-du.jpg','2022-12-20 14:31:01'),(40,'Khi Người Ta Tư Duy',22,5,'khi-nguoi-ta-tu-duy.jpg','2022-12-20 14:32:05'),(41,'Chiêu Bài Quản Lý Vàng Của Bill Gates ',23,6,'chieu-bai-quan-ly-vang-cua-bill-gates.jpg','2022-12-20 14:33:23'),(42,'Tự Học Tiếng Anh Hiệu Quả',24,5,'tu-hoc-tieng-anh-hieu-qua.jpg','2022-12-20 14:35:14'),(43,'Hands on machine learning with scikit learn and tensorflow',25,2,'hands on machine learning with scikit learn and tensorflow.jpg','2022-12-20 14:38:54'),(44,'Mặt Trời Và Con Người',22,1,'mat-troi-va-con-nguoi.jpg','2022-12-20 14:41:28'),(45,'Từ Tốt Đến Vĩ Đại',23,4,'tu-tot-den-vi-dai.jpg','2022-12-20 14:42:13'),(46,'Hạnh Phúc Thật Giản Đơn',22,1,'hanh-phuc-that-gian-don.jpg','2022-12-25 13:15:13'),(52,'Mật thư',29,4,'mat-thu.jpg','2023-01-06 21:12:07'),(68,'Tôi thấy hoa vàng trên cỏ xanh',22,1,'toi-thay-hoa-vang-tren-co-xanh.jpg','2023-01-06 21:06:34'),(69,'Đắc Nhân Tâm',22,10,'dac-nhan-tam.jpg','2023-01-06 21:12:07');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (22,'Tâm Lý - Kỹ Năng Sống'),(23,'Kinh Tế Quản Lý'),(24,'Ngoại Ngữ'),(25,'Lập Trình'),(29,'Khoa học kỹ thuật');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader`
--

DROP TABLE IF EXISTS `reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reader` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `book_id` int NOT NULL,
  `identity_card` varchar(15) NOT NULL,
  `start_day` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `end_day` timestamp NULL DEFAULT NULL,
  `status` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `reader_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader`
--

LOCK TABLES `reader` WRITE;
/*!40000 ALTER TABLE `reader` DISABLE KEYS */;
INSERT INTO `reader` VALUES (17,'Nguyễn Thị Cẩm Ly',46,'12213231','2022-05-19 14:45:32','2022-05-29 17:00:00',_binary ''),(18,'Trần Bảo Quốc',45,'12345678','2022-10-20 14:45:54','2022-11-01 17:00:00',_binary ''),(19,'Hoàng Vũ Dạ Quỳnh',44,'12213231','2022-11-19 14:46:25','2022-11-29 17:00:00',_binary ''),(20,'Lê Minh Đức',43,'22312313','2022-11-19 14:46:47','2022-11-29 17:00:00',_binary ''),(21,'Nguyễn Văn Thanh',38,'121345446','2022-12-05 14:47:46','2022-12-24 17:00:00',_binary ''),(22,'Lê Đức Anh',43,'244443242','2022-12-25 14:48:34','2023-01-04 17:00:00',_binary ''),(23,'Nguyễn Thị Cẩm Ly',68,'212334455','2023-01-06 21:26:02','2023-01-22 17:00:00',_binary '\0'),(24,'Nguyễn Thị Kim Hương',45,'212332456','2023-01-06 21:26:52','2023-01-14 17:00:00',_binary '\0');
/*!40000 ALTER TABLE `reader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'camly','123456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-27 20:20:22
