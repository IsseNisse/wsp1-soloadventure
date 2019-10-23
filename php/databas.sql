-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: soloadventure
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `story_id` int(10) unsigned NOT NULL,
  `target_id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `story_id` (`story_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `links_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `links_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `story` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,1,2,'Förstör trollstaven'),(2,1,3,'Låt den vara'),(3,1,13,'Använd trollstaven'),(4,2,1,'Testa spela spelet en gång till'),(5,3,4,'Ät allt godis i hinken'),(6,3,5,'Ät inte godiset för det är onyttigt'),(7,4,6,'Använd trollstaven för att aldrig bli tjock igen'),(8,4,7,'Fortsätt vara tjock'),(9,6,1,'Testa spela spelet en gång till'),(10,7,8,'Ät upp dom'),(11,7,9,'Säg åt dom att dra'),(12,9,1,'Testa spela spelet igen'),(13,8,10,'Gör motstånd'),(14,8,11,'Gör inte motstånd'),(15,10,1,'Testa spela spelet igen'),(16,11,12,'Fortsätt'),(17,12,1,'Testa spela spelet igen'),(18,5,14,'Använd trollstaven för att trolla fram mat'),(19,5,30,'Fortsätt vara hungrig'),(20,30,4,'Ät godiset i hinken i alla fall'),(21,30,31,'Svält ihjäl'),(22,31,1,'Testa att spela spelet igen'),(23,13,14,'Trolla fram mat.'),(24,13,15,'Trolla fram rikedomar.'),(25,13,6,'Använd trollstaven för att aldrig kunna bli tjock'),(26,14,27,'Utforska världen med dina nya superkrafter'),(27,14,17,'Ta reda på hur du hamnade i häxans hus'),(28,27,29,'Ta en pause på ön'),(29,27,28,'Stanna på ön och gör det till ditt nya hem'),(30,28,1,'Testa spela spelet igen'),(31,29,32,'Fortsätt'),(32,17,24,'Hitta Hans och Greta'),(33,17,19,'Hitta de andra barnen'),(34,24,26,'Fråga vad som hänt med de andra barnen'),(35,24,25,'Fråga hur du hamnade i häxans hus'),(36,26,12,'Fortsätt'),(37,25,1,'Testa spela spelet igen'),(38,19,20,'Begrav dom'),(39,20,24,'Hitta Hans och Greta'),(40,19,21,'Skyll allt på Hans och Greta'),(41,21,22,'Mat '),(42,21,23,'Rikedomar'),(43,23,1,'Testa spela spelet igen'),(44,22,1,'Testa spela spelet igen'),(46,15,16,'Fortsätt leva ovetande om ditt tidigare liv'),(47,15,17,'Ta reda på hur du hamnade i häxans hus'),(48,16,2,'Förstör trollstaven');
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,'Du vaknar upp i häxans hus. Du har inga minnen av hur du hamnade där. Du minns att det fanns andra barn precis som du och att två ungdomar befriade alla. Du är väldigt hungrig och behöver något att äta. Du tittar dig runt och ser häxans trollstav men måste bestämma vad du ska göra med den.'),(2,'Du har bestämt dig för att förstöra trollstaven men när du gör det släpps all energi frän staven lös i en stor explotion som förstör både trollstaven och dig.'),(3,'Du väljer att inte röra den mystiska trollstaven och går istället ut hur huset för att leta mat. När du är där ute hittar du en stor skål med godis.'),(4,'Du valde att äta allt godis i hinken och gick upp 100kg direkt men nu är du i alla fall inte hungrig mer.'),(5,'Du väljer att inte äta godiset i hinken för att det är onyttigt men du är fortfarande hungrig men ser ingen mer mat.'),(6,'Du använde trollstaven för att aldrig kunna bli tjock någonsin mer. Du flyttar in i häxans hus med oändligt mycket godis och lever lyckligt resten av ditt liv.'),(7,'Du fortsätter att vara tjock för att trollstaven är för läskig. Ett tag senare stöter du på Hans och Greta som dömmer dig för din storlek.'),(8,'Du äter upp både Hans och Greta eftersom dom inte slutar mobba dig. Du hinner inte springa iväg från polisen och du måste välja ifall du ska göra motstånd mot polisen eller inte.'),(9,'Du säger åt Hans och Greta att lämna dig ifred och de lyssnar på dig. Du utvecklar snabbt diabetes och har ingen medicin för det så du dör.'),(10,'Polisen skjuter dig eftersom du gjorde mostånd och dör en tråkig död som kriminell.'),(11,'Du gör inget motsånd mot polisen och låter dom ta dig.'),(12,'Du hamnar i fängelse för dina hemska brott och stannar där för resten av ditt liv.'),(13,'Du väljer att gå fram och använda trollstaven men måste välja vad du ska göra med den.'),(14,'Du trollar fram mat med hjälp av trollstaven men efter du ätit maten känner du att du blir starkare och inser att maten gett dig superkrafter.'),(15,'Du väljer att trolla fram rikedomar i from av guld, silver och diamanter. Du blir rikast i världen och kan köpa allt du vill och blir tillslut härskare över allt.'),(16,'Du fortsätter att leva med dina pengar men ovetande om hur du hamnade i häxans hus och vem du är. Tillslut blir du så olycklig att du bestämmer dig att förstöra trollstaven.'),(17,'Du väljer ta reda på hur du hamnade i häxans hus och vem du är men vem ska du hitta för att få reda på det?'),(18,'Du väljer att lämna ditt tidigare liv du inte minns bakom dig för att utforska världen och skapa ditt eget liv. Du söker länge tills du hittar en ö.'),(19,'Du bestämmer dig för att leta reda på de andra barnen. Efter många timmars letande hittar du barnen, men dom har alla blivit mördade.'),(20,'Du är ledsen över att alla barnen är döda. Du sörger dom och börjar sedan begrava dom en efter en. När alla är begravda har du bara mer frågor och måste hitta Hans och Greta för att få dom besvarade.'),(21,'Du blir arg och skyller allt på Hans och Greta och måste få hämd. Valde du att trolla fram mat eller rikedomar tidigare?'),(22,'Med dina nya superkrafter sliter du Hans och Greta mitt itu. Du inser att du är ostoppbar med dina krafter och tar över världen.'),(23,'Eftersom du är rikast i hela världen anlitar du lönnmördare för att ta bort Hans och Greta. En vecka efter ordern getts kommer lönnmördarna med bevis på att arbetet är gjort. Du fortsätter leva nöjd i resten av ditt liv.'),(24,'Efter många dagars sökande hittar du tillslut Hans och Greta. Dom blir först väldigt chockade över att se dig och ser till och med nästan rädd ut. '),(25,'Hans och Greta förklarar deras historia om hur de stötte på häxan och hur de befriat alla barn från häxans förbannelse och att du var en av dom. Du känner en lättnad och kan äntligen andas ut. Hans och Greta lämnar dig så fort de kan men de beskymmrar du dig inte över. Du kan nu äntligen gå tillbaka till dit liv och leva lyckligt.'),(26,'Hans och Greta svarar försiktigt på frågan och förklarar för dig att det var du som mördade de andra barnen. Du bryter ihop. Du är förkrossad och kan inte förstå hur du kunde gjort något sånt. Du har fortfarande inga minnen från händelsen men vet att det är sant. Polisen kommer en kort stund senare och tar dig men du fortsätter bara sörja.'),(27,'Efter att ha flugit och upptäckt en del av världen hittar du en ö långt ut i havet.'),(28,'Du väljer att stanna på den vackra ön och bara leva livet på naturens egna resurser. Du lever ut hela ditt liv lyckligt på den lilla ön.'),(29,'Du väljer att ta en pause i ditt sökande och tar en tupplur på ön. Du sover djupt och efter nio timmar börjar du vakna...'),(30,'Eftersom trollstaven är läskig och du inte vågar använda den fortsätter du att gå hungrig.'),(31,'Du vill varken äta godiset eller använda trollstaven och svälter därför ihjäl'),(32,'\"Hey, you, you´re finally awake\"'),(33,'Du vill inte leva utan att veta vad som hände dig i ditt tidigare liv.');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-23 11:58:35
