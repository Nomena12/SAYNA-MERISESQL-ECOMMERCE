-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `catégories`
--

DROP TABLE IF EXISTS `catégories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `catégories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `catégorie_name` varchar(255) DEFAULT NULL,
  `catégorie_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catégories`
--

LOCK TABLES `catégories` WRITE;
/*!40000 ALTER TABLE `catégories` DISABLE KEYS */;
INSERT INTO `catégories` VALUES (1,'TRAINS ET VOITURES','Oubliez le train-train quotidien avec notre sélection de trains, voitures, garages et circuits de seconde main. Les petits comme les grands adoreront jouer aux petites voitures, camions de pompiers, dépanneuses, tracteurs, et autres voitures grand prix.'),(2,'Jeux Educatifs',NULL),(3,'puzzles','coco lava nify');
/*!40000 ALTER TABLE `catégories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Doe','New York','123 Main St','john.doe@example.com','123-456-7890','10001','USA'),(2,'Jane','Smith','Los Angeles','456 Elm St','jane.smith@example.com','987-654-3210','90001','USA'),(3,'Alice','Johnson','Chicago','789 Oak St','alice.johnson@example.com','555-555-5555','60601','USA'),(4,'Bob','Williams','Houston','567 Pine St','bob.williams@example.com','111-222-3333','77001','USA'),(5,'Eva','Martin','Miami','234 Beach Rd','eva.martin@example.com','777-888-9999','33101','USA'),(6,'Kwesi','Amissah-Arthur','Cape Coast','Pedu Rd','kwesi.arthur@example.com','233-244-567890','00233','Ghana'),(7,'Isabel','Dos Santos','Luanda','Miramar','isabel.dos.santos@example.com','244-926-123456','1000','Angola'),(8,'Idriss','Déby','N\'Djamena','Presidential Palace','idriss.deby@example.com','235-662-111222','01 BP 109','Chad'),(9,'Marc','Ravalomanana','Antananarivo','Iavoloha','marc.ravalomanana@example.com','261-20-1234567','101','Madagascar'),(10,'Ntsay','Christian','Antananarivo','Ambohitsorohitra','christian.ntsay@example.com','261-20-9876543','101','Madagascar'),(11,'Jean','Rajaonarimampianina','Antananarivo','Iavoloha','jean.rajaonarimampianina@example.com','261-20-5555555','101','Madagascar'),(12,'Andry','Rajoelina','Antananarivo','Ambohitsorohitra','andry.rajoelina@example.com','261-20-7777777','101','Madagascar'),(13,'Hery','Rajaonarimampianina','Antananarivo','Iavoloha','hery.rajaonarimampianina@example.com','261-20-8888888','101','Madagascar'),(14,'Didier','Ratsiraka','Toamasina','Toamasina I','didier.ratsiraka@example.com','261-53-1234567','501','Madagascar'),(15,'Kwame','Nkrumah','Accra','1 Independence Ave','kwame.nkrumah@example.com','233-244-123456','GA1','Ghana'),(16,'Nelson','Mandela','Johannesburg','46664 Vilakazi St','nelson.mandela@example.com','27-123-456789','2000','South Africa'),(17,'Haile','Selassie','Addis Ababa','Imperial Palace','haile.selassie@example.com','251-911-987654','1000','Ethiopia'),(18,'Wangari','Maathai','Nairobi','Karura Forest','wangari.maathai@example.com','254-722-555555','00100','Kenya'),(19,'Léopold','Sédar Senghor','Dakar','Avenue Léopold Sédar Senghor','leopold.senghor@example.com','221-777-111222','BP 98','Senegal'),(20,'Kwame','Nkrumah','Accra','1 Independence Ave','kwame1.nkrumah@example.com','233-244-123456','GA1','Ghana'),(21,'Nelson','Mandela','Johannesburg','46664 Vilakazi St','nelson1.mandela@example.com','27-123-456789','2000','South Africa'),(22,'Haile','Selassie','Addis Ababa','Imperial Palace','haile1.selassie@example.com','251-911-987654','1000','Ethiopia'),(23,'Wangari','Maathai','Nairobi','Karura Forest','wangari1.maathai@example.com','254-722-555555','00100','Kenya'),(24,'Léopold','Sédar Senghor','Dakar','Avenue Léopold Sédar Senghor','leopold1.senghor@example.com','221-777-111222','BP 98','Senegal'),(25,'Chinua','Achebe','Enugu','5 Ogidi Rd','chinua.achebe@example.com','234-802-234567','400001','Nigeria'),(26,'Ellen','Johnson Sirleaf','Monrovia','Executive Mansion','ellen.sirleaf@example.com','231-886-987654','1000','Liberia'),(27,'Kofi','Annan','Kumasi','14 July 1993 Rd','kofi.annan@example.com','233-277-765432','00233','Ghana'),(28,'Desmond','Tutu','Cape Town','Anglican Archbishop\'s Residence','desmond.tutu@example.com','27-828-111111','8001','South Africa'),(29,'Mansa','Musa','Timbuktu','Golden Palace','mansa.musa@example.com','223-999-888777','32000','Mali'),(30,'Yaa','Asantewaa','Kumasi','Golden Stool Palace','yaa.asantewaa@example.com','233-544-777888','00233','Ghana'),(31,'Jomo','Kenyatta','Nairobi','State House Rd','jomo.kenyatta@example.com','254-722-987654','00100','Kenya'),(32,'Amílcar','Cabral','Bissau','Avenida Amílcar Cabral','amilcar.cabral@example.com','245-955-123456','1004','Guinea-Bissau'),(33,'Amina','of Zazzau','Zaria','Zazzau Royal Palace','amina.zazzau@example.com','234-906-876543','810211','Nigeria'),(34,'Paul','Kagame','Kigali','Village Urugwiro','paul.kagame@example.com','250-788-987654','250','Rwanda'),(35,'Hassan','II','Rabat','Royal Palace of Rabat','hassan.ii@example.com','212-661-555555','10000','Morocco');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ordered_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `amount` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-08-01 10:00:00','2023-08-02 15:00:00',1450,1),(2,'2023-08-02 11:30:00','2023-08-03 14:45:00',200,2),(3,'2023-08-03 09:15:00','2023-08-04 12:30:00',50,3),(4,'2023-08-04 13:00:00','2023-08-05 16:15:00',30320,4),(5,'2023-08-05 14:30:00','2023-08-06 18:30:00',100,5),(6,'2023-08-06 10:45:00','2023-08-07 13:45:00',725,6),(7,'2023-08-07 12:00:00','2023-08-08 15:15:00',2240,7),(8,'2023-08-08 08:15:00','2023-08-09 11:30:00',180,8),(9,'2023-08-09 14:00:00','2023-08-10 17:30:00',9054,9),(10,'2023-08-10 09:30:00','2023-08-11 12:45:00',120,10),(11,'2023-08-11 11:45:00','2023-08-12 14:30:00',2350,11),(12,'2023-08-12 13:30:00','2023-08-13 16:15:00',7450,12),(13,'2023-08-13 15:00:00','2023-08-14 18:30:00',180,13),(14,'2023-08-14 10:15:00','2023-08-15 13:45:00',160,14),(15,'2023-08-15 12:30:00','2023-08-16 15:15:00',9540,15),(16,'2023-08-16 08:45:00','2023-08-17 11:30:00',200,16),(17,'2023-08-17 14:15:00','2023-08-18 17:30:00',1310,17),(18,'2023-08-18 09:00:00','2023-08-19 12:45:00',130,18),(19,'2023-08-19 10:45:00','2023-08-20 13:30:00',750,19),(20,'2023-08-20 13:30:00','2023-08-21 16:15:00',2050,20),(21,'2023-08-21 10:00:00','2023-08-22 15:00:00',130,21),(22,'2023-08-22 11:30:00','2023-08-23 14:45:00',180,22),(23,'2023-08-23 09:15:00','2023-08-24 12:30:00',90,23),(24,'2023-08-24 13:00:00','2023-08-25 16:15:00',300,24),(25,'2023-08-25 14:30:00','2023-08-26 18:30:00',120,5),(26,'2023-08-26 10:45:00','2023-08-27 13:45:00',100,8),(27,'2023-08-27 12:00:00','2023-08-28 15:15:00',220,6),(28,'2023-08-28 08:15:00','2023-08-29 11:30:00',140,6),(29,'2023-08-29 14:00:00','2023-08-30 17:30:00',160,2),(30,'2023-08-30 09:30:00','2023-08-31 12:45:00',110,20);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int DEFAULT NULL,
  `catégorie_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catégorie_id` (`catégorie_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catégorie_id`) REFERENCES `catégories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'HASBRO','Lot de 2 transformers',12.00,4,NULL),(2,'PJ MASK','Pyjamasques - Reptilo mobile et ses personnages',20.60,8,NULL),(3,'MONOPRIX','Robot transformable en voiture 24cm',7.00,5,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `password_hash` char(60) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-08-18 20:53:52
