-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `test`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `test`;

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detail` (
  `Prod_id` varchar(255) DEFAULT NULL,
  `Prod_Name` varchar(255) DEFAULT NULL,
  `Prod_type` varchar(255) DEFAULT NULL,
  `Prod_desc` varchar(255) DEFAULT NULL,
  `Prod_stock` varchar(255) DEFAULT NULL,
  `Prod_price` varchar(255) DEFAULT NULL,
  `Prod_status` varchar(255) DEFAULT NULL,
  `Prod_purchase_date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail`
--

LOCK TABLES `product_detail` WRITE;
/*!40000 ALTER TABLE `product_detail` DISABLE KEYS */;
INSERT INTO `product_detail` VALUES ('4','5','steel','steel','40','400','yes','12.3.2019'),('5','iron table','iron table','it is used','30','500','yes','12.4.2019'),('2','niy','rod','rod','30','','yes','9/11/2019'),('25','nmp','cement','purchase','50 bag','250','125','12/12/2015'),('2','rod','ty','df','fghj','ghtu','12','1234'),('2','sand','natural','natural','2','4000','yes','12.2.2019'),('3','d','dd','dd','3','3','r','3');
/*!40000 ALTER TABLE `product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_detail`
--

DROP TABLE IF EXISTS `sale_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_detail` (
  `Prod_id` varchar(255) DEFAULT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `cont` varchar(255) DEFAULT NULL,
  `cust_address` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `s_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_detail`
--

LOCK TABLES `sale_detail` WRITE;
/*!40000 ALTER TABLE `sale_detail` DISABLE KEYS */;
INSERT INTO `sale_detail` VALUES ('asdfas','asdfad','999999','asdf adf a','34334',23),('1','dd','333','33','33',22),('1','dd','33','33','3',3),('2','kkk','33333','3fgfg','3333',333),('1','ddd','333','dfdf','33333',3333),('1','sssdsd','222','sdsd','222',23),('6','jjj','jjj','88','88',888),('1','n','1234567891','12','23',1234),('3','nn','2345','asderfdredfefr','76',123);
/*!40000 ALTER TABLE `sale_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_sale`
--

DROP TABLE IF EXISTS `total_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_sale` (
  `Prod_id` varchar(255) DEFAULT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `no` int(11) DEFAULT NULL,
  `s_price` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_sale`
--

LOCK TABLES `total_sale` WRITE;
/*!40000 ALTER TABLE `total_sale` DISABLE KEYS */;
INSERT INTO `total_sale` VALUES ('1','dd',2,3,6),('2','kkk',2,333,666),('1','ddd',2,3333,6666),('1','sssdsd',2,23,46),('6','jjj',9,888,7992),('1','n',123,1234,151782),('3','nn',9,123,1107);
/*!40000 ALTER TABLE `total_sale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-20 20:42:04
