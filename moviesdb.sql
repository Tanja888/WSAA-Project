-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: moviesdb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `year_of_release` year DEFAULT NULL,
  `director` varchar(150) DEFAULT NULL,
  `rate` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Shawshank Redemption',1994,'Frank Darabont',9.3),(2,'The Godfather',1972,'Francis Ford Coppola',9.2),(3,'The Dark Knight',2008,'Christopher Nolan',9.0),(4,'The Godfather Part II',1974,'Francis Ford Coppola',9.0),(5,'12 Angry Men',1957,'Sidney Lumet',9.0),(6,'Schindler\'s List',1993,'Steven Spielberg',9.0),(7,'The Lord of the Rings: The Return of the King',2003,'Peter Jackson',9.0),(8,'Pulp Fiction',1994,'Quentin Tarantino',8.9),(9,'The Lord of the Rings: The Fellowship of the Ring',2001,'Peter Jackson',8.9),(10,'The Good, the Bad and the Ugly',1966,'Sergio Leone',8.8),(11,'Forrest Gump',1994,'Robert Zemeckis',8.8),(12,'The Lord of the Rings: The Two Towers',2002,'Peter Jackson',8.8),(13,'Fight Club',1999,'David Fincher',8.8),(14,'Inception',2010,'Christopher Nolan',8.8),(15,'Star Wars: Episode V - The Empire Strikes Back',1980,'Irvin Kershner',8.7),(16,'The Matrix',1999,'Lana Wachowski, Lilly Wachowski',8.7),(17,'Goodfellas',1990,'Martin Scorsese',8.7),(18,'Dune: Part Two',2024,'Denis Villeneuve',8.7),(19,'One Flew Over the Cuckoo\'s Nest',1975,'Milos Forman',8.7),(20,'Se7en',1995,'David Fincher',8.6),(21,'Interstellar',2014,'Christopher Nolan',8.7),(22,'It\'s a Wonderful Life',1946,'Frank Capra',8.6),(23,'Seven Samurai',1954,'Akira Kurosawa',8.6),(24,'The Silence of the Lambs',1991,'Jonathan Demme',8.6),(25,'Saving Private Ryan',1998,'Steven Spielberg',8.6),(26,'City of God',2002,'Fernando Meirelles, Kátia Lund',8.6),(27,'Life Is Beautiful',1997,'Roberto Benigni',8.6),(28,'The Green Mile',1999,'Frank Darabont',8.6),(29,'Terminator 2: Judgment Day',1991,'James Cameron',8.6),(30,'Star Wars: Episode IV - A New Hope',1977,'George Lucas',8.6),(31,'Back to the Future',2001,'Robert Zemeckis',8.5),(32,'Spirited Away',2001,'Hayao Miyazaki',8.6),(33,'The Pianist',2002,'Roman Polanski',8.5),(34,'Parasite',2019,'Bong Joon Ho',8.5),(35,'Psycho',1960,'Alfred Hitchcock',8.5),(36,'Spider-Man: Across the Spider-Verse',2023,'Joaquim Dos Santos, Kemp Powers, Justin K. Thompson',8.6),(37,'Gladiator',2000,'Ridley Scott',8.5),(38,'The Lion King',1994,'Roger Allers, Rob Minkoff',8.5),(39,'Léon: The Professional',1994,'Luc Besson',8.5),(40,'The Departed',2006,'Martin Scorsese',8.5),(41,'American History X',1998,'Tony Kaye',8.5),(42,'Whiplash',2014,'Damien Chazelle',8.5),(43,'The Prestige',2006,'Christopher Nolan',8.5),(44,'Grave of the Fireflies',1988,'Isao Takahata',8.5),(45,'Harakiri',1962,'Masaki Kobayashi',8.6),(46,'The Usual Suspects',1995,'Bryan Singer',8.5),(47,'Casablanca',1942,'Michael Curtiz',8.5),(48,'The Intouchables',2011,'Olivier Nakache, Éric Toledano',8.5),(49,'Cinema Paradiso',1988,'Giuseppe Tornatore',8.5),(50,'Modern Times',1936,'Charles Chaplin',8.5);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-19 15:45:51
