/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.2.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: business_analyst
-- ------------------------------------------------------
-- Server version	12.2.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `row id` int(11) DEFAULT NULL,
  `order id` varchar(20) DEFAULT NULL,
  `order date` date DEFAULT NULL,
  `ship date` date DEFAULT NULL,
  `trial_ship mode_5` varchar(20) DEFAULT NULL,
  `customer id` varchar(10) DEFAULT NULL,
  `customer name` varchar(30) DEFAULT NULL,
  `segment` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `trial_state_11` varchar(20) DEFAULT NULL,
  `postal code` varchar(10) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `product id` varchar(20) DEFAULT NULL,
  `trial_category_15` varchar(20) DEFAULT NULL,
  `sub-category` varchar(20) DEFAULT NULL,
  `trial_product name_17` varchar(130) DEFAULT NULL,
  `trial_sales_18` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_discount_20` varchar(10) DEFAULT NULL,
  `trial_profit_21` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `person` varchar(20) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES
('Anna Andreadi','*TRI'),
('*TRIAL*TRIA','East'),
('Kelly Williams','Central'),
('Cassandra Brandow','South');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `returned` varchar(10) DEFAULT NULL,
  `trial_order id_2` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-129707'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2015-156440'),
('*TR','US-2017-155999'),
('Yes','CA-2014-157924'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','*TRIAL*TRIAL*T'),
('*TR','CA-2017-145772'),
('Yes','US-2014-105137'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2016-111682'),
('*TR','*TRIAL*TRIAL*T'),
('*TR','CA-2015-104129'),
('Yes','CA-2017-117926'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2015-155761'),
('*TR','CA-2017-100111'),
('Yes','CA-2014-156349'),
('Yes','CA-2016-118899'),
('Yes','CA-2017-108294'),
('Yes','US-2017-123834'),
('*TR','CA-2015-168480'),
('Yes','CA-2017-122007'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','CA-2015-168564'),
('Yes','CA-2014-102652'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','US-2016-114230'),
('Yes','CA-2015-146486'),
('*TR','CA-2015-116092'),
('Yes','CA-2017-118542'),
('Yes','CA-2015-140984'),
('*TR','CA-2017-127306'),
('Yes','CA-2017-119284'),
('*TR','CA-2017-150609'),
('Yes','CA-2017-136651'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2014-110786'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2016-157280'),
('Yes','CA-2016-162138'),
('*TR','CA-2016-114307'),
('Yes','CA-2014-123498'),
('Yes','CA-2016-142398'),
('Yes','CA-2017-161956'),
('Yes','CA-2017-134194'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','US-2016-156986'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','US-2016-131149'),
('Yes','US-2017-147886'),
('*TR','CA-2014-126361'),
('Yes','CA-2017-141929'),
('Yes','CA-2016-145583'),
('Yes','CA-2015-154970'),
('*TR','CA-2016-167759'),
('*TR','CA-2017-109085'),
('*TR','CA-2014-142769'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2014-109918'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','US-2017-109253'),
('Yes','CA-2017-130631'),
('Yes','US-2017-118087'),
('Yes','CA-2016-126732'),
('*TR','US-2016-144057'),
('Yes','CA-2016-168921'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2016-147375'),
('*TR','CA-2014-134726'),
('*TR','CA-2017-117513'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-161459'),
('Yes','CA-2016-136483'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2015-130785'),
('*TR','CA-2017-165008'),
('Yes','US-2015-137008'),
('Yes','CA-2017-169894'),
('Yes','CA-2014-105270'),
('*TR','CA-2016-165330'),
('Yes','CA-2014-111871'),
('*TR','CA-2015-157812'),
('Yes','CA-2016-145982'),
('*TR','CA-2017-166142'),
('Yes','CA-2014-127131'),
('Yes','CA-2017-143084'),
('Yes','CA-2015-151547'),
('Yes','CA-2015-138674'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','CA-2014-100762'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2016-118500'),
('Yes','CA-2015-143490'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2015-124058'),
('Yes','CA-2017-132346'),
('*TR','CA-2016-150077'),
('Yes','CA-2017-124401'),
('Yes','CA-2017-137414'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-157196'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2016-112123'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2015-103716'),
('Yes','CA-2015-144267'),
('Yes','CA-2016-109869'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-169327'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2016-130477'),
('*TR','CA-2016-134775'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2016-136924'),
('*TR','CA-2017-166093'),
('Yes','CA-2016-106950'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','US-2016-114293'),
('Yes','CA-2017-137099'),
('Yes','CA-2016-133319'),
('Yes','CA-2014-103744'),
('Yes','CA-2015-161627'),
('Yes','CA-2015-142601'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2014-164861'),
('*TR','US-2015-128090'),
('*TR','CA-2014-108609'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','CA-2015-123568'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','US-2014-150574'),
('Yes','CA-2014-148614'),
('Yes','CA-2017-165491'),
('Yes','CA-2016-133802'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','CA-2016-130680'),
('Yes','CA-2015-114048'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-136308'),
('*TR','CA-2016-126529'),
('Yes','CA-2014-135699'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2017-140053'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','CA-2017-159954'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-158729'),
('*TR','CA-2017-101273'),
('Yes','CA-2017-123085'),
('Yes','CA-2017-131828'),
('*TR','CA-2017-113670'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','US-2016-157490'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2014-103940'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2017-162015'),
('Yes','CA-2015-148873'),
('Yes','CA-2017-167395'),
('Yes','US-2016-127425'),
('*TR','CA-2017-142342'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2016-116736'),
('Yes','CA-2016-128671'),
('*TR','CA-2017-112753'),
('Yes','US-2016-148957'),
('Yes','CA-2015-110814'),
('Yes','CA-2014-164721'),
('Yes','US-2015-136987'),
('Yes','CA-2016-151372'),
('*TR','US-2017-151127'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2017-101574'),
('Yes','CA-2016-151323'),
('*TR','CA-2014-166744'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-103380'),
('Yes','CA-2016-161746'),
('Yes','CA-2015-111948'),
('*TR','CA-2017-138163'),
('*TR','CA-2015-134201'),
('*TR','US-2015-126214'),
('Yes','CA-2014-140816'),
('Yes','CA-2014-133690'),
('Yes','CA-2016-120873'),
('*TR','US-2017-103247'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','US-2016-108455'),
('Yes','CA-2016-104689'),
('Yes','CA-2017-152660'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','*TRIAL*TRIAL*T'),
('*TR','CA-2016-139269'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','CA-2016-162159'),
('*TR','US-2016-135720'),
('Yes','CA-2014-159338'),
('*TR','*TRIAL*TRIAL*T'),
('*TR','*TRIAL*TRIAL*T'),
('*TR','CA-2017-107825'),
('*TR','CA-2014-160766'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2015-130456'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2015-119214'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-137428'),
('*TR','CA-2014-108861'),
('Yes','CA-2016-130638'),
('Yes','CA-2015-143238'),
('Yes','CA-2015-109736'),
('Yes','CA-2014-124688'),
('Yes','CA-2016-133368'),
('*TR','CA-2017-168193'),
('*TR','CA-2014-135657'),
('Yes','CA-2016-105081'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2015-107678'),
('Yes','CA-2017-144064'),
('Yes','CA-2017-101700'),
('Yes','CA-2016-113341'),
('Yes','CA-2015-139731'),
('Yes','CA-2015-132941'),
('Yes','CA-2015-146262'),
('Yes','CA-2016-115917'),
('*TR','US-2016-111528'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2015-141593'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','US-2015-160857'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-140151'),
('*TR','*TRIAL*TRIAL*T'),
('*TR','CA-2017-123491'),
('Yes','CA-2014-127012'),
('*TR','CA-2016-123526'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2015-150875'),
('*TR','CA-2015-150770'),
('*TR','US-2014-140452'),
('Yes','CA-2015-149650'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2017-156391'),
('Yes','CA-2015-157770'),
('Yes','CA-2017-140963'),
('Yes','CA-2017-154949'),
('*TR','CA-2016-166275'),
('*TR','US-2014-143287'),
('Yes','CA-2014-151162'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2014-143840'),
('Yes','CA-2014-160773'),
('Yes','*TRIAL*TRIAL*T'),
('*TR','CA-2017-140585'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2016-159023'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','*TRIAL*TRIAL*T'),
('Yes','CA-2014-116785'),
('*TR','US-2014-164763'),
('Yes','CA-2017-122504'),
('*TR','CA-2017-150910'),
('*TR','CA-2015-162166'),
('*TR','US-2016-140172'),
('Yes','CA-2015-101910'),
('*TR','CA-2017-156958'),
('Yes','CA-2016-105585'),
('*TR','*TRIAL*TRIAL*T'),
('*TR','CA-2015-149636');
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-04-22 20:38:54
