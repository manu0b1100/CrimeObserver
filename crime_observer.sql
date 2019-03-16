-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: crime_observer
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `DataCollection_fir`
--

DROP TABLE IF EXISTS `DataCollection_fir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DataCollection_fir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `act` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `date` date DEFAULT NULL,
  `link` varchar(200) NOT NULL,
  `section` varchar(50) NOT NULL,
  `time` time(6) DEFAULT NULL,
  `latitude` decimal(20,7) NOT NULL,
  `longitude` decimal(20,7) NOT NULL,
  `wrong_address` tinyint(1) DEFAULT NULL,
  `all_charge` varchar(500) NOT NULL,
  `final_charge` varchar(200) NOT NULL,
  `extracted_on` datetime(6) NOT NULL,
  `police_station_id` int(11) NOT NULL,
  `firno` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`),
  KEY `DataCollection_fir_police_station_id_e99908b2_fk_DataColle` (`police_station_id`),
  CONSTRAINT `DataCollection_fir_police_station_id_e99908b2_fk_DataColle` FOREIGN KEY (`police_station_id`) REFERENCES `DataCollection_policestation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataCollection_fir`
--

LOCK TABLES `DataCollection_fir` WRITE;
/*!40000 ALTER TABLE `DataCollection_fir` DISABLE KEYS */;
INSERT INTO `DataCollection_fir` VALUES (29,'1 IPC 1860','NEW ROHTAK ROAD, IN FRONT OF FRUIT MARKET, THAN SINGH NAGAR','2019-01-03','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190001','419/420/34','16:30:00.000000',0.0000000,0.0000000,NULL,'cheating','cheating','2019-02-06 12:52:45.328177',169,'8162001190001'),(30,'1 DELHI EXCISE ACT, 2009','H.NO. 475, GALI NO-11, NEHRU NAGAR, DELHI','2019-01-05','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190002','33','16:40:00.000000',0.0000000,0.0000000,NULL,'Section not detected','Section not detected','2019-02-06 12:53:47.098857',169,'8162001190002'),(31,'1 IPC 1860','H.NO. F-100/A, NEAR AMBEDKAR PARK, PUNJABI BASTI, BALJEET NAGAR DELHI','2019-01-09','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190003','188','20:00:00.000000',0.0000000,0.0000000,NULL,'Disobedience to pub. Serv. Order','Disobedience to pub. Serv. Order','2019-02-06 12:54:07.049587',169,'8162001190003'),(32,'1 TRADE AND MERCHANDISE MARKS','AREA OF PS ANAND PARBAT, DELHI','2019-01-10','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190004','103/104','17:45:00.000000',0.0000000,0.0000000,NULL,'Section not detected','Section not detected','2019-02-06 12:54:28.746130',169,'8162001190004'),(33,'1 IPC 1860','296, GALI NO. 13, THAN SINGH NAGAR, ANAND PARBAT DELHI.','2018-11-30','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190005','341/342/323/509/3','15:00:00.000000',0.0000000,0.0000000,NULL,'Causing hurt-sexual harrasement-wrong restraint-wrongful confinement','sexual harrasement','2019-02-06 12:54:41.884313',169,'8162001190005'),(34,'1 IPC 1860','SHOP NO D-237, PUNJABI BASTI, BALJEET NAGAR, ANAND PARBAT, DELHI','2019-01-11','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190006','324/34','22:30:00.000000',0.0000000,0.0000000,NULL,'hurt by dangerous weapons','hurt by dangerous weapons','2019-02-06 12:54:54.834001',169,'8162001190006'),(35,'1 IPC 1860','H NO T-54, PUNJABI BASTI BALJEET NAGAR NEAR SAINT GIRI PUBLIC SCHOOL, DELHI','2019-01-07','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190007','363','10:30:00.000000',0.0000000,0.0000000,NULL,'Kidnapping','Kidnapping','2019-02-06 12:55:05.241064',169,'8162001190007'),(36,'1 IPC 1860','H NO TA 13, G.F NEAR GOPAL DAIRY, BABA FARID PURI, DELHI','2019-01-16','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190008','188','20:00:00.000000',0.0000000,0.0000000,NULL,'Disobedience to pub. Serv. Order','Disobedience to pub. Serv. Order','2019-02-06 12:55:17.475287',169,'8162001190008'),(37,'1 IPC 1860','52/27, GALI NO-16, NAI BASTI, ANAND PARBAT DELHI','2019-01-17','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190009','188','22:30:00.000000',0.0000000,0.0000000,NULL,'Disobedience to pub. Serv. Order','Disobedience to pub. Serv. Order','2019-02-06 12:55:34.709317',169,'8162001190009'),(38,'1 IPC 1860','168/8, GULSHAN CHOWK, BALJEET NAGAR','2019-01-17','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190010','182/505/506','11:00:00.000000',0.0000000,0.0000000,NULL,'Criminal intimidation','Criminal intimidation','2019-02-06 12:55:54.580587',169,'8162001190010'),(39,'1 IPC 1860','HNO 17/263, GALI NO 11A, THAN SINGH NAGAR, ANAND PARBAT DELHI','2019-01-18','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190011','188','20:40:00.000000',0.0000000,0.0000000,NULL,'Disobedience to pub. Serv. Order','Disobedience to pub. Serv. Order','2019-02-06 12:56:20.248754',169,'8162001190011'),(40,'1 IPC 1860','17/95, GALI NO-T, THAN SINGH NAGAR, IIND FLOOR, ANAND PARBAT, DELHI-05','2019-01-19','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190012','188','12:30:00.000000',0.0000000,0.0000000,NULL,'Disobedience to pub. Serv. Order','Disobedience to pub. Serv. Order','2019-02-06 12:56:52.876228',169,'8162001190012'),(41,'1 IPC 1860','H.NO. 778, NEAR DINGRA CHOWK, BABA FARID PURI, DELHI','2019-01-19','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190013','188','18:00:00.000000',0.0000000,0.0000000,NULL,'Disobedience to pub. Serv. Order','Disobedience to pub. Serv. Order','2019-02-06 12:57:56.227081',169,'8162001190013'),(42,'1 IPC 1860','J-95, GALI NO-12, CHETAN BASTI, ANAND PARBAT DELHI','2019-01-19','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190014','188','21:30:00.000000',0.0000000,0.0000000,NULL,'Disobedience to pub. Serv. Order','Disobedience to pub. Serv. Order','2019-02-06 12:58:44.719660',169,'8162001190014'),(43,'1 IPC 1860','HNO T106/A, PUNJABI BASTI BALJEET NAGAR, DELHI','2019-01-20','http://59.180.234.21:8080/citizen/gefirprint.htm?firRegNo=8162001190015','188','19:30:00.000000',0.0000000,0.0000000,NULL,'Disobedience to pub. Serv. Order','Disobedience to pub. Serv. Order','2019-02-06 12:58:58.893963',169,'8162001190015');
/*!40000 ALTER TABLE `DataCollection_fir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DataCollection_policestation`
--

DROP TABLE IF EXISTS `DataCollection_policestation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DataCollection_policestation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `last_fir_id` varchar(13) NOT NULL,
  `district` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `DataCollection_policestation_name_8ddf0b28_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DataCollection_policestation`
--

LOCK TABLES `DataCollection_policestation` WRITE;
/*!40000 ALTER TABLE `DataCollection_policestation` DISABLE KEYS */;
INSERT INTO `DataCollection_policestation` VALUES (169,'ANAND PARBAT','8162001190016','CENTRAL'),(170,'CHANDNI MAHAL','8162008190001','CENTRAL'),(171,'D.B.G. ROAD','8162038190001','CENTRAL'),(172,'DARYA GANJ','8162010190001','CENTRAL'),(173,'HAUZ QAZI','8162015190001','CENTRAL'),(174,'I.P.ESTATE','8162016190001','CENTRAL'),(175,'JAMA MASJID','8162019190001','CENTRAL'),(176,'KAMLA MARKET','8162023190001','CENTRAL'),(177,'KAROL BAGH','8162026190001','CENTRAL'),(178,'NABI KARIM','8162030190001','CENTRAL'),(179,'PAHAR GANJ','8162041190001','CENTRAL'),(180,'PATEL NAGAR','8162042190001','CENTRAL'),(181,'PRASAD NAGAR','8162040190001','CENTRAL'),(182,'RAJINDER NAGAR','8162045190001','CENTRAL'),(183,'RANJIT NAGAR','8162056190001','CENTRAL'),(184,'CRIME BRANCH','8175001190001','CRIME BRANCH'),(185,'BABA HARIDAS NAGAR','8176009190001','DWARKA'),(186,'BINDA PUR','8176001190001','DWARKA'),(187,'CHHAWALA','8176007190001','DWARKA'),(188,'DABRI','8176002190001','DWARKA'),(189,'DWARKA NORTH','8176004190001','DWARKA'),(190,'DWARKA SOUTH','8176003190001','DWARKA'),(191,'JAFFARPUR KALAN','8176006190001','DWARKA'),(192,'MOHAN GARDEN','8176012190001','DWARKA'),(193,'NAJAF GARH','8176010190002','DWARKA'),(194,'SECTOR 23 DWARKA','8176005190001','DWARKA'),(195,'UTTAM NAGAR','8176008190001','DWARKA'),(196,'GHAZIPUR','8168010190001','EAST'),(197,'KALYANPURI','8168013190001','EAST'),(198,'LAXMI NAGAR','8168054190001','EAST'),(199,'MADHU VIHAR','8168023190001','EAST'),(200,'MANDAWLI FAZAL PUR','8168024190001','EAST'),(201,'MAYUR VIHAR PH-I','8168026190001','EAST'),(202,'NEW ASHOK NAGAR','8168028190001','EAST'),(203,'PANDAV NAGAR','8168050190001','EAST'),(204,'PATPARGANJ INDUSTRIAL AREA','8168053190001','EAST'),(205,'PREET VIHAR','8168030190001','EAST'),(206,'SHAKARPUR','8168052190001','EAST'),(207,'ECONOMIC OFFENCES WING','8956001190001','EOW'),(208,'--------------Select-----------------','8956001190001','IGI AIRPORT'),(248,'DOMESTIC AIRPORT','8169001190001','IGI AIRPORT'),(249,'I.G.I.AIRPORT','8169002190001','IGI AIRPORT'),(250,'IGI AIRPORT METRO','8160004190001','METRO'),(251,'JANAK PURI METRO','8160010190001','METRO'),(252,'Metro Police Station Ghitorni','8160003190001','METRO'),(253,'Metro Police Station Nangloi','8160009190001','METRO'),(254,'Metro Police Station Okhla Vihar','8160002190001','METRO'),(255,'Metro Police Station Rajiv Chowk','8160012190001','METRO'),(256,'RAJA GARDEN METRO','8160008190001','METRO'),(257,'SHASHTRI PARK METRO','8160006190001','METRO'),(258,'YAMUNA DEPOT METRO','8160001190001','METRO'),(259,'BARAKHAMBA ROAD','8165002190001','NEW DELHI'),(260,'CHANKYA PURI','8165007190001','NEW DELHI'),(261,'CONNAUGHT PLACE','8165011190001','NEW DELHI'),(262,'MANDIR MARG','8165015190002','NEW DELHI'),(263,'NORTH AVENUE','8165038190001','NEW DELHI'),(264,'SOUTH AVENUE','8165037190001','NEW DELHI'),(265,'TILAK MARG','8165035190001','NEW DELHI'),(266,'TUGHLAK ROAD','8165036190001','NEW DELHI'),(267,'BARA HINDU RAO','8166004190001','NORTH'),(268,'BURARI','8166052190001','NORTH'),(269,'CIVIL LINES','8166007190001','NORTH'),(270,'GULABI BAGH','8166024190001','NORTH'),(271,'KASHMERI GATE','8166016190001','NORTH'),(272,'KOTWALI','8166018190001','NORTH'),(273,'LAHORI GATE','8166023190001','NORTH'),(274,'MAURICE NAGAR','8166010190001','NORTH'),(275,'ROOP NAGAR','8166031190001','NORTH'),(276,'SADAR BAZAR','8166038190001','NORTH'),(277,'SARAI ROHILLA','8166039190001','NORTH'),(278,'SUBZI MANDI','8166041190001','NORTH'),(279,'TIMARPUR','8166051190001','NORTH'),(280,'WAZIRABAD','8166054190001','NORTH'),(281,'BHAJAN PURA','8173005190001','NORTH EAST'),(282,'DAYAL PUR','8173061190001','NORTH EAST'),(283,'GOKUL PURI','8173054190001','NORTH EAST'),(284,'HARSH VIHAR','8173055190001','NORTH EAST'),(285,'JAFRABAD','8173058190001','NORTH EAST'),(286,'JYOTI NAGAR','8173056190001','NORTH EAST'),(287,'KARAWAL NAGAR','8173016190001','NORTH EAST'),(288,'KHAJURI KHAS','8173015190001','NORTH EAST'),(289,'NAND NAGRI','8173025190001','NORTH EAST'),(290,'NEW USMANPUR','8173030190001','NORTH EAST'),(291,'SEELAMPUR','8173042190001','NORTH EAST'),(292,'SHASTRI PARK','8173060190001','NORTH EAST'),(293,'SONIA VIHAR','8173057190001','NORTH EAST'),(294,'WELCOME','8173045190001','NORTH EAST'),(295,'ADARSH NAGAR','8172003190001','NORTH WEST'),(296,'ASHOK VIHAR','8172006190002','NORTH WEST'),(297,'BHARAT NAGAR','8172007190002','NORTH WEST'),(298,'JAHANGIR PURI','8172014190001','NORTH WEST'),(299,'KESHAV PURAM','8172025190001','NORTH WEST'),(300,'MAHENDRA PARK','8172051190001','NORTH WEST'),(301,'MAURYA ENCLAVE','8172049190001','NORTH WEST'),(302,'MODEL TOWN','8172017190001','NORTH WEST'),(303,'MUKHERJEE NAGAR','8172030190001','NORTH WEST'),(304,'SHALIMAR BAGH','8172035190001','NORTH WEST'),(305,'SUBHASH PLACE','8172047190001','NORTH WEST'),(306,'MANGOL PURI','8174005190001','OUTER DISTRICT'),(307,'MUNDKA','8174025190001','OUTER DISTRICT'),(308,'NANGLOI','8174021190001','OUTER DISTRICT'),(309,'NIHAL VIHAR','8174022190001','OUTER DISTRICT'),(310,'PASCHIM VIHAR EAST','8174026190001','OUTER DISTRICT'),(311,'PASCHIM VIHAR WEST','8174027190001','OUTER DISTRICT'),(312,'RAJ PARK','8174029190001','OUTER DISTRICT'),(313,'RANHOLA','8174020190001','OUTER DISTRICT'),(314,'RANI BAGH','8174028190001','OUTER DISTRICT'),(315,'SULTANPURI','8174011190001','OUTER DISTRICT'),(316,'BAWANA','8991004190001','OUTER NORTH'),(317,'BHALSWA DIARY','8991003190001','OUTER NORTH'),(318,'NARELA','8991007190001','OUTER NORTH'),(319,'NARELA INDUSTRIAL AREA','8991001190001','OUTER NORTH'),(320,'SAMAIPUR BADLI','8991008190001','OUTER NORTH'),(321,'ANAND VIHAR RLY STN','8164004190001','RAILWAYS'),(322,'DELHI CANTT. RAILWAY STATION','8164041190001','RAILWAYS'),(323,'HAZRAT NIZAMUDDIN RLY STN','8164032190001','RAILWAYS'),(324,'NEW DELHI RLY. STN.','8164026190001','RAILWAYS'),(325,'OLD DELHI (DELHI MAIN) RLY. STN.','8164025190001','RAILWAYS'),(326,'SARAI ROHILLA STATION','8164034190001','RAILWAYS'),(327,'SUBZI MANDI RAILWAY STATION','8164042190001','RAILWAYS'),(328,'AMAN VIHAR','8959016190001','ROHINI'),(329,'BEGUM PUR','8959003190001','ROHINI'),(330,'BUDH VIHAR','8959014190002','ROHINI'),(331,'K.N. KATJU MARG','8959007190001','ROHINI'),(332,'NORTH ROHINI','8959011190001','ROHINI'),(333,'PRASHANT VIHAR','8959008190001','ROHINI'),(334,'PREM NAGAR','8959013190001','ROHINI'),(335,'SOUTH ROHINI','8959010190001','ROHINI'),(336,'VIJAY VIHAR','8959009190001','ROHINI'),(337,'ANAND VIHAR','8957002190001','SHAHDARA'),(338,'FARSH BAZAR','8957006190001','SHAHDARA'),(339,'G.T.B. ENCLAVE','8957009190001','SHAHDARA'),(340,'GANDHI NAGAR','8957004190001','SHAHDARA'),(341,'GEETA COLONY','8957005190001','SHAHDARA'),(342,'JAGAT PURI','8957011190001','SHAHDARA'),(343,'KRISHNA NAGAR','8957003190001','SHAHDARA'),(344,'MANSAROVAR PARK','8957008190001','SHAHDARA'),(345,'SEEMAPURI','8957010190001','SHAHDARA'),(346,'SHAHDARA','8957007190001','SHAHDARA'),(347,'AMBEDKAR NAGAR','8167064190001','SOUTH'),(348,'CHITRANJAN PARK','8167062190001','SOUTH'),(349,'DEFENCE COLONY','8167010190001','SOUTH'),(350,'FATEHPUR BERI','8167012190001','SOUTH'),(351,'GREATER KAILASH','8167061190001','SOUTH'),(352,'HAUZ KHAS','8167017190002','SOUTH'),(353,'K.M. PUR','8167023190001','SOUTH'),(354,'LODI COLONY','8167028190001','SOUTH'),(355,'MAIDAN GARHI','8167066190002','SOUTH'),(356,'MALVIYA NAGAR','8167033190001','SOUTH'),(357,'MEHRAULI','8167032190002','SOUTH'),(358,'NEB SARAI','8167057190001','SOUTH'),(359,'SAKET','8167056190001','SOUTH'),(360,'SANGAM VIHAR','8167063190001','SOUTH'),(361,'TIGRI','8167067190001','SOUTH'),(362,'DELHI CANTT','8171011190001','SOUTH WEST'),(363,'KAPASHERA','8171030190001','SOUTH WEST'),(364,'KISHAN GARH','8171066190001','SOUTH WEST'),(365,'PALAM VILLAGE','8171057190001','SOUTH WEST'),(366,'R. K. PURAM','8171060190001','SOUTH WEST'),(367,'SAFDARJUNG ENCLAVE','8171067190002','SOUTH WEST'),(368,'SAGAR PUR','8171054190001','SOUTH WEST'),(369,'SAROJINI NAGAR','8171068190001','SOUTH WEST'),(370,'SOUTH CAMPUS','8171061190001','SOUTH WEST'),(371,'VASANT KUNJ NORTH','8171062190001','SOUTH WEST'),(372,'VASANT KUNJ SOUTH','8171063190001','SOUTH WEST'),(373,'VASANT VIHAR','8171064190001','SOUTH WEST'),(374,'AMAR COLONY','8955007190002','SOUTH-EAST'),(375,'BADARPUR','8955012190001','SOUTH-EAST'),(376,'GOVIND PURI','8955002190001','SOUTH-EAST'),(377,'HAZARAT NIZAMUDDIN','8955005190001','SOUTH-EAST'),(378,'JAIT PUR','8955001190002','SOUTH-EAST'),(379,'JAMIA NAGAR','8955004190001','SOUTH-EAST'),(380,'KALANDI KUNJ','8955019190001','SOUTH-EAST'),(381,'KALKAJI','8955009190001','SOUTH-EAST'),(382,'LAJPAT NAGAR','8955006190001','SOUTH-EAST'),(383,'NEW FRIENDS COLONY','8955003190001','SOUTH-EAST'),(384,'OKHLA INDUSTRIAL AREA','8955013190001','SOUTH-EAST'),(385,'PUL PRAHLAD PUR','8955017190001','SOUTH-EAST'),(386,'SARITA VIHAR','8955011190001','SOUTH-EAST'),(387,'SHAHEEN BAGH','8955020190002','SOUTH-EAST'),(388,'SUNLIGHT COLONY','8955016190002','SOUTH-EAST'),(389,'SPECIAL CELL (SB)','8954001190001','SPECIAL CELL(SB)'),(390,'CRIME (WOMEN) CELL NANAK PURA','8953001190001','SPECIAL POLICE UNIT FOR WOMEN & CHILDREN'),(391,'HARI NAGAR','8170015190001','WEST'),(392,'JANAK PURI','8170021190001','WEST'),(393,'KHYALA','8170062190001','WEST'),(394,'KIRTI NAGAR','8170025190001','WEST'),(395,'MAYAPURI','8170028190001','WEST'),(396,'MOTI NAGAR','8170029190001','WEST'),(397,'NARAINA','8170063190001','WEST'),(398,'PUNJABI BAGH','8170043190001','WEST'),(399,'RAJOURI GARDEN','8170037190001','WEST'),(400,'TILAK NAGAR','8170051190001','WEST'),(401,'VIKASPURI','8170060190001','WEST');
/*!40000 ALTER TABLE `DataCollection_policestation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add police station',7,'add_policestation'),(26,'Can change police station',7,'change_policestation'),(27,'Can delete police station',7,'delete_policestation'),(28,'Can view police station',7,'view_policestation'),(29,'Can add fir',8,'add_fir'),(30,'Can change fir',8,'change_fir'),(31,'Can delete fir',8,'delete_fir'),(32,'Can view fir',8,'view_fir'),(33,'Can add district',9,'add_district'),(34,'Can change district',9,'change_district'),(35,'Can delete district',9,'delete_district'),(36,'Can view district',9,'view_district');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$120000$KyaxsnQIzu3x$y1xNHXGk77AXEDYWbK0AD8QfWTJgtomNpdbPtbNMNuc=','2019-01-30 17:44:38.928085',1,'manobhav','','','',1,1,'2019-01-30 17:27:41.933039'),(2,'pbkdf2_sha256$120000$imSFwQZ2FWCo$DQQ/tYZHD3/yZEEyjLwL8NSaekWIOoFXn1zk9z8avB4=','2019-03-16 09:25:15.836878',1,'crime_observer_user','','','',1,1,'2019-03-16 09:24:44.629949');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-01-30 19:11:03.798496','127','VIKASPURI',3,'',7,1),(2,'2019-01-30 19:11:03.837855','126','TILAK NAGAR',3,'',7,1),(3,'2019-01-30 19:11:03.949858','125','RAJOURI GARDEN',3,'',7,1),(4,'2019-01-30 19:11:04.039556','124','PUNJABI BAGH',3,'',7,1),(5,'2019-01-30 19:11:04.084152','123','NARAINA',3,'',7,1),(6,'2019-01-30 19:11:04.128729','122','MOTI NAGAR',3,'',7,1),(7,'2019-01-30 19:11:04.173684','121','MAYAPURI',3,'',7,1),(8,'2019-01-30 19:11:04.218201','120','KIRTI NAGAR',3,'',7,1),(9,'2019-01-30 19:11:04.263022','119','KHYALA',3,'',7,1),(10,'2019-01-30 19:11:04.307433','118','JANAK PURI',3,'',7,1),(11,'2019-01-30 19:11:04.352072','117','INDER PURI',3,'',7,1),(12,'2019-01-30 19:11:04.396895','116','HARI NAGAR',3,'',7,1),(13,'2019-01-30 19:11:04.441743','115','SUBHASH PLACE',3,'',7,1),(14,'2019-01-30 19:11:04.486434','114','SHALIMAR BAGH',3,'',7,1),(15,'2019-01-30 19:11:04.531425','113','MUKHERJEE NAGAR',3,'',7,1),(16,'2019-01-30 19:11:04.575845','112','MODEL TOWN',3,'',7,1),(17,'2019-01-30 19:11:04.620600','111','MAURYA ENCLAVE',3,'',7,1),(18,'2019-01-30 19:11:04.665531','110','MAHENDRA PARK',3,'',7,1),(19,'2019-01-30 19:11:04.710144','109','KESHAV PURAM',3,'',7,1),(20,'2019-01-30 19:11:04.754479','108','JAHANGIR PURI',3,'',7,1),(21,'2019-01-30 19:11:04.855127','107','BHARAT NAGAR',3,'',7,1),(22,'2019-01-30 19:11:04.922037','106','ASHOK VIHAR',3,'',7,1),(23,'2019-01-30 19:11:04.966203','105','ADARSH NAGAR',3,'',7,1),(24,'2019-01-30 19:11:05.010820','104','WELCOME',3,'',7,1),(25,'2019-01-30 19:11:05.055620','103','SONIA VIHAR',3,'',7,1),(26,'2019-01-30 19:11:05.100208','102','SHASTRI PARK',3,'',7,1),(27,'2019-01-30 19:11:05.144928','101','SEELAMPUR',3,'',7,1),(28,'2019-01-30 19:11:05.189619','100','NEW USMANPUR',3,'',7,1),(29,'2019-01-30 19:11:05.234660','99','NAND NAGRI',3,'',7,1),(30,'2019-01-30 19:11:05.279668','98','KHAJURI KHAS',3,'',7,1),(31,'2019-01-30 19:11:05.324500','97','KARAWAL NAGAR',3,'',7,1),(32,'2019-01-30 19:11:05.368942','96','JYOTI NAGAR',3,'',7,1),(33,'2019-01-30 19:11:05.413636','95','JAFRABAD',3,'',7,1),(34,'2019-01-30 19:11:05.458384','94','HARSH VIHAR',3,'',7,1),(35,'2019-01-30 19:11:05.502927','93','GOKUL PURI',3,'',7,1),(36,'2019-01-30 19:11:05.547677','92','DAYAL PUR',3,'',7,1),(37,'2019-01-30 19:11:05.581023','91','BHAJAN PURA',3,'',7,1),(38,'2019-01-30 19:11:05.614775','90','WAZIRABAD',3,'',7,1),(39,'2019-01-30 19:11:05.649686','89','TIMARPUR',3,'',7,1),(40,'2019-01-30 19:11:05.683324','88','SUBZI MANDI',3,'',7,1),(41,'2019-01-30 19:11:05.716463','87','SARAI ROHILLA',3,'',7,1),(42,'2019-01-30 19:11:05.750543','86','SADAR BAZAR',3,'',7,1),(43,'2019-01-30 19:11:05.784036','85','ROOP NAGAR',3,'',7,1),(44,'2019-01-30 19:11:05.918158','84','MAURICE NAGAR',3,'',7,1),(45,'2019-01-30 19:11:05.962594','83','LAHORI GATE',3,'',7,1),(46,'2019-01-30 19:11:06.007372','82','KOTWALI',3,'',7,1),(47,'2019-01-30 19:11:06.052019','81','KASHMERI GATE',3,'',7,1),(48,'2019-01-30 19:11:06.096325','80','GULABI BAGH',3,'',7,1),(49,'2019-01-30 19:11:06.141296','79','CIVIL LINES',3,'',7,1),(50,'2019-01-30 19:11:06.186095','78','BURARI',3,'',7,1),(51,'2019-01-30 19:11:06.231039','77','BARA HINDU RAO',3,'',7,1),(52,'2019-01-30 19:11:06.275421','76','TUGHLAK ROAD',3,'',7,1),(53,'2019-01-30 19:11:06.320146','75','TILAK MARG',3,'',7,1),(54,'2019-01-30 19:11:06.363952','74','SOUTH AVENUE',3,'',7,1),(55,'2019-01-30 19:11:06.408879','73','NORTH AVENUE',3,'',7,1),(56,'2019-01-30 19:11:06.453709','72','MANDIR MARG',3,'',7,1),(57,'2019-01-30 19:11:06.498024','71','CONNAUGHT PLACE',3,'',7,1),(58,'2019-01-30 19:11:06.542913','70','CHANKYA PURI',3,'',7,1),(59,'2019-01-30 19:11:06.588832','69','BARAKHAMBA ROAD',3,'',7,1),(60,'2019-01-30 19:11:06.632454','68','YAMUNA DEPOT METRO',3,'',7,1),(61,'2019-01-30 19:11:06.677045','67','SHASHTRI PARK METRO',3,'',7,1),(62,'2019-01-30 19:11:06.721380','66','RAJA GARDEN METRO',3,'',7,1),(63,'2019-01-30 19:11:06.766175','65','Metro Police Station Rajiv Chowk',3,'',7,1),(64,'2019-01-30 19:11:06.911905','64','Metro Police Station Okhla Vihar',3,'',7,1),(65,'2019-01-30 19:11:06.956350','56','SHAKARPUR',3,'',7,1),(66,'2019-01-30 19:11:07.000901','55','PREET VIHAR',3,'',7,1),(67,'2019-01-30 19:11:07.045616','54','PATPARGANJ INDUSTRIAL AREA',3,'',7,1),(68,'2019-01-30 19:11:07.090508','53','PANDAV NAGAR',3,'',7,1),(69,'2019-01-30 19:11:07.135001','52','NEW ASHOK NAGAR',3,'',7,1),(70,'2019-01-30 19:11:07.179512','51','MAYUR VIHAR PH-I',3,'',7,1),(71,'2019-01-30 19:11:07.224502','50','MANDAWLI FAZAL PUR',3,'',7,1),(72,'2019-01-30 19:11:07.269054','49','MADHU VIHAR',3,'',7,1),(73,'2019-01-30 19:11:07.313578','48','LAXMI NAGAR',3,'',7,1),(74,'2019-01-30 19:11:07.421981','47','KALYANPURI',3,'',7,1),(75,'2019-01-30 19:11:07.459195','46','GHAZIPUR',3,'',7,1),(76,'2019-01-30 19:11:07.492726','34','RANJIT NAGAR',3,'',7,1),(77,'2019-01-30 19:11:07.526268','33','RAJINDER NAGAR',3,'',7,1),(78,'2019-01-30 19:11:07.559669','32','PRASAD NAGAR',3,'',7,1),(79,'2019-01-30 19:11:07.593287','31','PATEL NAGAR',3,'',7,1),(80,'2019-01-30 19:11:07.626975','30','PAHAR GANJ',3,'',7,1),(81,'2019-01-30 19:11:07.660660','29','NABI KARIM',3,'',7,1),(82,'2019-01-30 19:11:07.695488','28','KAROL BAGH',3,'',7,1),(83,'2019-01-30 19:11:07.795928','27','KAMLA MARKET',3,'',7,1),(84,'2019-01-30 19:11:08.018654','26','JAMA MASJID',3,'',7,1),(85,'2019-01-30 19:11:08.086338','25','I.P.ESTATE',3,'',7,1),(86,'2019-01-30 19:11:08.131025','24','HAUZ QAZI',3,'',7,1),(87,'2019-01-30 19:11:08.175445','23','DARYA GANJ',3,'',7,1),(88,'2019-01-30 19:11:08.220528','22','D.B.G. ROAD',3,'',7,1),(89,'2019-01-30 19:11:08.265107','21','CHANDNI MAHAL',3,'',7,1),(90,'2019-01-30 19:11:08.309592','20','ANAND PARBAT',3,'',7,1),(91,'2019-01-30 19:11:08.354462','19','Metro Police Station Nangloi',3,'',7,1),(92,'2019-01-30 19:11:08.459510','18','Metro Police Station Ghitorni',3,'',7,1),(93,'2019-01-30 19:11:08.555182','17','JANAK PURI METRO',3,'',7,1),(94,'2019-01-30 19:11:08.621823','16','IGI AIRPORT METRO',3,'',7,1),(95,'2019-01-30 19:11:08.677703','15','I.G.I.AIRPORT',3,'',7,1),(96,'2019-01-30 19:11:08.722388','14','DOMESTIC AIRPORT',3,'',7,1),(97,'2019-01-30 19:11:08.767047','13','ECONOMIC OFFENCES WING',3,'',7,1),(98,'2019-01-30 19:11:08.811680','12','UTTAM NAGAR',3,'',7,1),(99,'2019-01-30 19:11:08.856516','11','SECTOR 23 DWARKA',3,'',7,1),(100,'2019-01-30 19:11:08.901061','10','NAJAF GARH',3,'',7,1),(101,'2019-01-30 19:14:37.750560','168','IGI AIRPORT METRO',3,'',7,1),(102,'2019-01-30 19:14:37.901882','167','I.G.I.AIRPORT',3,'',7,1),(103,'2019-01-30 19:14:37.935794','166','DOMESTIC AIRPORT',3,'',7,1),(104,'2019-01-30 19:14:37.969086','165','ECONOMIC OFFENCES WING',3,'',7,1),(105,'2019-01-30 19:14:38.002558','164','SHAKARPUR',3,'',7,1),(106,'2019-01-30 19:14:38.036243','163','PREET VIHAR',3,'',7,1),(107,'2019-01-30 19:14:38.069503','162','PATPARGANJ INDUSTRIAL AREA',3,'',7,1),(108,'2019-01-30 19:14:38.103603','161','PANDAV NAGAR',3,'',7,1),(109,'2019-01-30 19:14:38.136934','160','NEW ASHOK NAGAR',3,'',7,1),(110,'2019-01-30 19:14:38.170508','159','MAYUR VIHAR PH-I',3,'',7,1),(111,'2019-01-30 19:14:38.204289','158','MANDAWLI FAZAL PUR',3,'',7,1),(112,'2019-01-30 19:14:38.250361','157','MADHU VIHAR',3,'',7,1),(113,'2019-01-30 19:14:38.295064','156','LAXMI NAGAR',3,'',7,1),(114,'2019-01-30 19:14:38.339359','155','KALYANPURI',3,'',7,1),(115,'2019-01-30 19:14:38.473672','154','GHAZIPUR',3,'',7,1),(116,'2019-01-30 19:14:38.518495','153','UTTAM NAGAR',3,'',7,1),(117,'2019-01-30 19:14:38.563243','152','SECTOR 23 DWARKA',3,'',7,1),(118,'2019-01-30 19:14:38.608034','151','NAJAF GARH',3,'',7,1),(119,'2019-01-30 19:14:38.652679','141','RANJIT NAGAR',3,'',7,1),(120,'2019-01-30 19:14:38.696922','140','RAJINDER NAGAR',3,'',7,1),(121,'2019-01-30 19:14:38.741679','139','PRASAD NAGAR',3,'',7,1),(122,'2019-01-30 19:14:38.786801','138','PAHAR GANJ',3,'',7,1),(123,'2019-01-30 19:14:38.831263','137','NABI KARIM',3,'',7,1),(124,'2019-01-30 19:14:38.876026','136','KAROL BAGH',3,'',7,1),(125,'2019-01-30 19:14:38.920481','135','KAMLA MARKET',3,'',7,1),(126,'2019-01-30 19:14:38.965242','134','JAMA MASJID',3,'',7,1),(127,'2019-01-30 19:14:39.009951','133','I.P.ESTATE',3,'',7,1),(128,'2019-01-30 19:14:39.054605','132','HAUZ QAZI',3,'',7,1),(129,'2019-01-30 19:14:39.099213','131','DARYA GANJ',3,'',7,1),(130,'2019-01-30 19:14:39.143795','130','D.B.G. ROAD',3,'',7,1),(131,'2019-01-30 19:14:39.188686','129','CHANDNI MAHAL',3,'',7,1),(132,'2019-01-30 19:14:39.233455','128','ANAND PARBAT',3,'',7,1),(133,'2019-01-30 19:14:39.277923','9','MOHAN GARDEN',3,'',7,1),(134,'2019-01-30 19:14:39.322535','8','JAFFARPUR KALAN',3,'',7,1),(135,'2019-01-30 19:14:39.367501','7','DWARKA SOUTH',3,'',7,1),(136,'2019-01-30 19:14:39.411498','6','DWARKA NORTH',3,'',7,1),(137,'2019-01-30 19:14:39.456505','5','DABRI',3,'',7,1),(138,'2019-01-30 19:14:39.501454','4','CHHAWALA',3,'',7,1),(139,'2019-01-30 19:14:39.545854','3','BINDA PUR',3,'',7,1),(140,'2019-01-30 19:14:39.590745','2','BABA HARIDAS NAGAR',3,'',7,1),(141,'2019-01-30 19:14:39.635322','1','CRIME BRANCH',3,'',7,1),(142,'2019-01-31 16:22:22.218267','410','jbsxs',3,'',7,1),(143,'2019-01-31 16:22:22.351825','408','jbsx',3,'',7,1),(144,'2019-01-31 16:22:22.385145','402','manobhav',3,'',7,1),(145,'2019-01-31 17:36:05.751547','169','ANAND PARBAT',2,'[{\"changed\": {\"fields\": [\"last_fir_id\"]}}]',7,1),(146,'2019-02-04 19:37:18.057291','169','ANAND PARBAT',2,'[{\"changed\": {\"fields\": [\"last_fir_id\"]}}]',7,1),(147,'2019-02-04 20:12:37.098086','2','Fir object (2)',3,'',8,1),(148,'2019-02-04 20:12:37.229278','1','Fir object (1)',3,'',8,1),(149,'2019-02-04 20:13:00.626514','169','ANAND PARBAT',2,'[{\"changed\": {\"fields\": [\"last_fir_id\"]}}]',7,1),(150,'2019-02-04 20:29:37.918757','15','Fir object (15)',3,'',8,1),(151,'2019-02-04 20:29:38.057879','14','Fir object (14)',3,'',8,1),(152,'2019-02-04 20:29:38.102810','13','Fir object (13)',3,'',8,1),(153,'2019-02-04 20:29:38.147280','12','Fir object (12)',3,'',8,1),(154,'2019-02-04 20:29:38.191790','11','Fir object (11)',3,'',8,1),(155,'2019-02-04 20:29:38.236603','10','Fir object (10)',3,'',8,1),(156,'2019-02-04 20:29:38.281397','9','Fir object (9)',3,'',8,1),(157,'2019-02-04 20:29:38.325889','8','Fir object (8)',3,'',8,1),(158,'2019-02-04 20:29:38.370782','7','Fir object (7)',3,'',8,1),(159,'2019-02-04 20:29:38.415633','6','Fir object (6)',3,'',8,1),(160,'2019-02-04 20:29:38.460078','5','Fir object (5)',3,'',8,1),(161,'2019-02-04 20:29:38.504690','4','Fir object (4)',3,'',8,1),(162,'2019-02-04 20:29:38.549288','3','Fir object (3)',3,'',8,1),(163,'2019-02-06 12:43:08.130465','26','',3,'',8,1),(164,'2019-02-06 12:43:08.276473','25','',3,'',8,1),(165,'2019-02-06 12:43:08.310411','24','',3,'',8,1),(166,'2019-02-06 12:43:08.343956','23','',3,'',8,1),(167,'2019-02-06 12:43:08.377658','22','',3,'',8,1),(168,'2019-02-06 12:43:08.412575','21','',3,'',8,1),(169,'2019-02-06 12:43:08.457640','20','',3,'',8,1),(170,'2019-02-06 12:43:08.513670','19','',3,'',8,1),(171,'2019-02-06 12:43:08.591188','18','',3,'',8,1),(172,'2019-02-06 12:43:08.658818','17','',3,'',8,1),(173,'2019-02-06 12:43:08.703124','16','',3,'',8,1),(174,'2019-02-06 12:43:25.982817','169','ANAND PARBAT',2,'[{\"changed\": {\"fields\": [\"last_fir_id\"]}}]',7,1),(175,'2019-02-06 12:52:25.644933','27','8162001190001',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'DataCollection','district'),(8,'DataCollection','fir'),(7,'DataCollection','policestation'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-01-28 19:06:08.497902'),(2,'auth','0001_initial','2019-01-28 19:06:18.197987'),(3,'admin','0001_initial','2019-01-28 19:06:20.456813'),(4,'admin','0002_logentry_remove_auto_add','2019-01-28 19:06:20.532838'),(5,'admin','0003_logentry_add_action_flag_choices','2019-01-28 19:06:20.617361'),(6,'contenttypes','0002_remove_content_type_name','2019-01-28 19:06:21.892124'),(7,'auth','0002_alter_permission_name_max_length','2019-01-28 19:06:22.017034'),(8,'auth','0003_alter_user_email_max_length','2019-01-28 19:06:22.153946'),(9,'auth','0004_alter_user_username_opts','2019-01-28 19:06:22.206199'),(10,'auth','0005_alter_user_last_login_null','2019-01-28 19:06:22.836800'),(11,'auth','0006_require_contenttypes_0002','2019-01-28 19:06:22.894457'),(12,'auth','0007_alter_validators_add_error_messages','2019-01-28 19:06:22.948216'),(13,'auth','0008_alter_user_username_max_length','2019-01-28 19:06:23.096080'),(14,'auth','0009_alter_user_last_name_max_length','2019-01-28 19:06:23.255279'),(15,'sessions','0001_initial','2019-01-28 19:06:23.815189'),(16,'DataCollection','0001_initial','2019-01-30 16:03:34.329719'),(17,'DataCollection','0002_auto_20190130_1609','2019-01-30 16:10:39.172088'),(18,'DataCollection','0003_auto_20190130_1610','2019-01-30 16:10:39.210867'),(19,'DataCollection','0004_auto_20190130_1745','2019-01-30 17:45:20.462237'),(20,'DataCollection','0005_auto_20190130_1747','2019-01-30 17:47:13.963717'),(21,'DataCollection','0006_auto_20190130_1749','2019-01-30 17:49:25.157554'),(22,'DataCollection','0007_auto_20190130_1910','2019-01-30 19:10:25.158029'),(23,'DataCollection','0008_auto_20190130_1918','2019-01-30 19:18:52.093629'),(24,'DataCollection','0009_fir_psdate','2019-01-31 18:33:46.704738'),(25,'DataCollection','0010_auto_20190204_1942','2019-02-04 19:43:03.886878'),(26,'DataCollection','0011_auto_20190204_2031','2019-02-04 20:31:19.481358'),(27,'DataCollection','0012_fir_firno','2019-02-06 12:42:44.145621');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('cgupqqppa57trqrcb03k3yfrgved8hyc','MjQwYmJjZDEyYjFiMmRjNzI2OWVhMmM0ZmJlMmYzMGVmMGU5M2Q4ZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZTQ5OTE1ZTA5NjA0ZWQyM2ZjYzFiNTMxYWI5NTEzY2RkZmJmYmY5In0=','2019-02-13 17:44:39.053922'),('iv6c40c7rsiuy3znh3bzlyppu4obk6v8','MzI0ZmYyOWIyZDI0ZWNkZDQ3Y2U0ZjIyZDRhYzliOGNjNjg4ODZjNzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNzZiNmRhODI0MmUyYjI5ZjhiNGRmMWU1ZGExOTgzOTI1MWFkZjgwIn0=','2019-03-30 09:25:15.916742');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-16 16:26:13
