-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)                            
--                            
-- Host: localhost    Database: laravel-database                            
-- ------------------------------------------------------                            
-- Server version 5.7.18-0ubuntu0.16.04.1                            
                            
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
               
-- DROP DATABASE IF EXISTS   elbaulpruebatres ;                         
-- CREATE DATABASE  elbaulpruebatres ;                         
USE  elbaulprueba ;                         
                    
                            
DROP TABLE IF EXISTS `product_categories`;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE `product_categories`(                         
                            
 `CategoryID`  int ( 11 )  unsigned   NOT NULL   AUTO_INCREMENT ,               
                            
 `CategoryName`  varchar ( 50 ) COLLATE  latin1_german2_ci  NOT NULL  ,               
                            
                            
                            
  PRIMARY KEY (`CategoryID`)                         
                            
                            
                            
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            
                            
                            
                            
                            
                            
LOCK TABLES  `product_categories`   WRITE;                        
/*!40000 ALTER TABLE  `product_categories`  DISABLE KEYS */;                        
INSERT INTO  `product_categories`  VALUES                         
                            

                            
(1,'sombrero'),
(2,'gorro'),
(3,'lentes'),
(4,'remera'),
(5,'musculosa'),
(6,'camisa'),
(7,'pantalon'),
(8,'short'),
(9,'pollera'),
(10,'brazalete'),
(11,'zapatos'),
(12,'ojotas'),
(13,'collar'),
(14,'vestido'),
(15,'chomba'),
(16,'pullover'),
(17,'campera'),
(18,'abrigo');
                            
                            
                            
/*!40000 ALTER TABLE  `product_categories`  ENABLE KEYS  */;                       
UNLOCK TABLES;                            
            
 DROP TABLE IF EXISTS `product_categories_brand`;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE `product_categories_brand`(                         
                            
 `CategoryBrandID`  int ( 11 )  unsigned   NOT NULL   AUTO_INCREMENT ,               
                            
 `CategoryBrandName`  varchar ( 50 ) COLLATE  latin1_german2_ci  NOT NULL  ,               
   
                            
  PRIMARY KEY ( `CategoryBrandID`)                        
       
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            
                            
                            
                            
                            
                            
LOCK TABLES  `product_categories_brand`   WRITE;                        
/*!40000 ALTER TABLE  `product_categories_brand`  DISABLE KEYS */;                        
INSERT INTO  `product_categories_brand`  VALUES                         
                            

                            
(1,'7 For All Mankind'),
(2,'575 Denim 575 Denim'),
(3,'8732 Apparel 8732 Apparel'),
(4,'310 Motoring Apparel Company'),
(5,'Adrienne Landau Fashion'),
(6,'Aaron Chang Fashion'),
(7,'Apple Bottom Clothing'),
(8,'All American Clothing'),
(9,'AND1'),
(10,'A B S by Allen Schwartz,'),
(11,'Adam Jones Fashion'),
(12,'Alexander McQueen Fashion'),
(13,'American Apparel'),
(14,'Akademiks Clothing'),
(15,'Acne Studios'),
(16,'Azzure Denim'),
(17,'Andrew Christian Clothing'),
(18,'Abercrombie & Fitch'),
(19,'Artful Dodger Clothing'),
(20,'Andrew Marc Fashion'),
(21,'Alice and Olivia LLC'),
(22,'AKOO Clothing'),
(23,'Badgley Mischka'),
(24,'BCBG Max Azria'),
(25,'Belabumbum Clothing'),
(26,'Antik Denim'),
(27,'Banana Republic'),
(28,'Billionaire Boys Club and Ice Cream'),
(29,'Alviero Martini Fashions'),
(30,'Blue Tatoo Denim'),
(31,'Blue Cult Jeans'),
(32,'Bejeweled'),
(33,'Bensoni Fashion House'),
(34,'B U M Equipment,'),
(35,'BabaKul Clothing'),
(36,'Brette Sandler Swimwear'),
(37,'Banfi Zambrelli'),
(38,'Chargrels Clothing'),
(39,'Ciara Couture Clothing'),
(40,'Anna Sui Fashions'),
(41,'Avirex Clothing'),
(42,'Adidas'),
(43,'Al Wissam'),
(44,'A Bathing Ape'),
(45,'Bebe Stores'),
(46,'BedHead Pajamas'),
(47,'Betsey Johnson Label'),
(48,'Burberry'),
(49,'Blank NYC'),
(50,'B Chyll,'),
(51,'Blac Label'),
(52,'Chip and Pepper'),
(53,'Citizens of Humanity Jeans'),
(54,'Carhartt Clothing'),
(55,'Chic Jeans'),
(56,'Columbia Sportswear Clothing'),
(57,'Christian Audigier'),
(58,'Christian Dior S A,'),
(59,'Carhartt Clothing'),
(60,'C & C California Clothing'),
(61,'Custo Barelona'),
(62,'DSquared2 Clothing'),
(63,'Cordani Shoes'),
(64,'Chick by Nicky Hilton'),
(65,'Dolce & Gabbana'),
(66,'Dooney & Bourke'),
(67,'Ed Hardy Clothing'),
(68,'Eddie Bauer Clothing'),
(69,'Diesel'),
(70,'Christian Lacroix Fashions'),
(71,'Marc Ecko Enterprises'),
(72,'Emilio Pucci'),
(73,'Ben Sherman'),
(74,'Christian Louboutin'),
(75,'Ezekiel Clothing'),
(76,'Enyce Clothing'),
(77,'Frankie B Jeans,'),
(78,'French Connection'),
(79,'English Laundry'),
(80,'Coogi Fashions'),
(81,'Fila Korea'),
(82,'Diadora'),
(83,'FUBU Apparel'),
(84,'Esprit Holdings'),
(85,'Fetish by Eve'),
(86,'Elie Tahari'),
(87,'Etonic'),
(88,'Byron Lars'),
(89,'Billionaire Mafia'),
(90,'Bruno Magali'),
(91,'Chanel'),
(92,'Coach'),
(93,'Converse Shoes'),
(94,'Cloudveil'),
(95,'Chloe'),
(96,'Cavi'),
(97,'DaKine'),
(98,'Ellesse'),
(99,'Evisu'),
(100,'Fendi');
                            
                            
                            
/*!40000 ALTER TABLE  `product_categories_brand`  ENABLE KEYS  */;                       
UNLOCK TABLES;                            
                            
                            
                         
DROP TABLE IF EXISTS `product_categories_genre`;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE `product_categories_genre`(                         
                            
 `CategoryGenreID`  int ( 11 )  unsigned   NOT NULL   AUTO_INCREMENT ,               
                            
 `CategoryGenreName`  varchar ( 50 ) COLLATE  latin1_german2_ci  NOT NULL  ,               
                            
                            
                            
  PRIMARY KEY (`CategoryGenreID`)                         
                            
                            
                            
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            
                            
                            
                            
                            
                            
LOCK TABLES  `product_categories_genre`   WRITE;                        
/*!40000 ALTER TABLE  `product_categories_genre`  DISABLE KEYS */;                        
INSERT INTO  `product_categories_genre`  VALUES                         
                            

                            
(1,'hombre'),
(2,'mujer'),
(3,'unisex');
                            
                            
LOCK TABLES  `product_size`   WRITE;                        
                  
/*!40000 ALTER TABLE  `product_size`  ENABLE KEYS  */;                       
UNLOCK TABLES;          
                            
                            
DROP TABLE IF EXISTS `product_size`;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE `product_size`(                         
                            
 `SizeID`  int ( 11 )  unsigned   NOT NULL   AUTO_INCREMENT ,               
                            
 `SizeName`  varchar ( 50 ) COLLATE  latin1_german2_ci  NOT NULL  ,               
                            
                            
                            
  PRIMARY KEY (`SizeID`)                         
                            
                            
                            
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            
                            
                            
                            
                            
                            
LOCK TABLES  `product_size`   WRITE;                        
/*!40000 ALTER TABLE  `product_size`  DISABLE KEYS */;                        
INSERT INTO  `product_size`  VALUES                         

                            
(1,'xs'),
(2,'s'),
(3,'m'),
(4,'l'),
(5,'xl'),
(6,'xxl');                       
                    
/*!40000 ALTER TABLE  `product_size`  ENABLE KEYS  */;                       
UNLOCK TABLES;                            


                            
 DROP TABLE IF EXISTS `products`;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE `products`(                         
                            
 `ProductID`  int ( 12 )  unsigned   NOT NULL   AUTO_INCREMENT ,               
                            
 `ProductName`  varchar ( 100 ) COLLATE  latin1_german2_ci  NOT NULL  ,               
                            
 `ProductPrice`  float     unsigned   NOT NULL    ,               
                            
 `ProductWeight`  float     unsigned   NOT NULL    ,               
                            
 `ProductShortDesc`  varchar ( 1000 ) COLLATE  latin1_german2_ci  NOT NULL  ,               
                            
 `ProductLongDesc`  text    COLLATE  latin1_german2_ci  NOT NULL  ,               
                            
 `ProductImage`  varchar ( 1000 )  NOT NULL  ,               
                            
 `ProductCategoryID`  int ( 11 ) unsigned DEFAULT NULL     ,               
                            
 `ProductCategoryBrandID`  int ( 11 ) unsigned DEFAULT NULL     ,               
                            
 `ProductCategoryGenreID`  int ( 11 ) unsigned DEFAULT NULL     ,   
 `ProductColorID`  int ( 11 ) unsigned DEFAULT NULL     ,    
 `ProductSizeID`  int ( 11 ) unsigned DEFAULT NULL     ,                
 `ProductUpdateDate`  timestamp    DEFAULT  CURRENT_TIMESTAMP  NOT NULL  ,               
                            
                            
  PRIMARY KEY (`ProductID`),                         
                            
  KEY `products_ProductCategoryID_foreign` (`ProductCategoryID`),                   
  KEY `products_ProductCategoryBrandID_foreign` (`ProductCategoryBrandID`),                   
  KEY `products_ProductCategoryGenreID_foreign` (`ProductCategoryGenreID`),            
  KEY `products_ProductColorID_foreign` (`ProductColorID`),     
  KEY `products_ProductSizeID_foreign` (`ProductSizeID`),   
       
       
  CONSTRAINT `products_ProductCategoryID_foreign`   FOREIGN KEY  (`ProductCategoryID`)  REFERENCES  `product_categories` (`CategoryID`),           
  CONSTRAINT `products_ProductCategoryBrandID_foreign`   FOREIGN KEY  (`ProductCategoryBrandID`)  REFERENCES  `product_categories_brand` (`CategoryBrandID`),           
  CONSTRAINT `products_ProductCategoryGenreID_foreign`   FOREIGN KEY  (`ProductCategoryGenreID`)  REFERENCES  `product_categories_genre` (`CategoryGenreID`),
 CONSTRAINT `products_ProductColorID_foreign`   FOREIGN KEY  (`ProductColorID`)  REFERENCES  `product_color` (`ColorID`),
 CONSTRAINT `products_ProductSizeID_foreign`   FOREIGN KEY  (`ProductSizeID`)  REFERENCES  `product_size` (`SizeID`)
                            
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            
                            
                            
                           
LOCK TABLES  `products`   WRITE;                        
/*!40000 ALTER TABLE  `products`  DISABLE KEYS */;                        
INSERT INTO  `products`  VALUES                         
                            

                            
(1,'sombrero',54,49,'sombrero primaveral','sombrero de primavera marca diesel','',1,1,1,2,1,'2013-06-13 01:00:50'),
(2,'gorro',95,10,'gorro invernal','gorro marca groggy para mujer de invierno','',2,2,2,5,2,'2013-06-13 01:00:50'),
(3,'lentes',5,56,'lentes para hombre','lentes  prada para hombre','',3,3,1,6,3,'2013-06-13 01:00:50'),
(4,'remera',35,54,'remera para mujer','Una remera liguera hecha 100% de algodon.\r\n\r\nHecha en USA for over 15 years, esta remera es durable y resistente.','',4,4,2,9,4,'2013-06-13 01:00:50'),
(5,'musculosa',84,89,'musculosa para mujer','musculosa  marca dalh para mujer','',5,5,1,8,5,'2013-06-13 01:00:50'),
(6,'camisa',98,88,'camisa para hombre','camisa  marca zara para hombre','',6,99,1,20,6,'2013-06-13 01:00:50'),
(7,'pantalon',65,86,'pantalon para hombre','pantalon  marca wrangler para hombre','',7,85,1,25,1,'2013-06-13 01:00:50'),
(8,'short',35,55,'short unisex','short  veraniego marca onzee','',8,23,3,9,2,'2013-06-13 01:00:50'),
(9,'pollera',12,20,'pollera para mujer','pollera  primaveral marca valentino','',9,65,2,56,3,'2013-06-13 01:00:50'),
(10,'brazalete',16,45,'brazalete para mujer','brazalete  de oro marca tiffany','',10,15,2,98,4,'2013-06-13 01:00:50'),
(11,'zapatos',88,89,'zapatos para hombre','zapatos  mark jacob edicion limitada','',11,1,2,12,5,'2013-06-13 01:00:50'),
(12,'ojotas',32,55,'ojotas unisex','ojotas  veraniegas','',12,2,3,54,6,'2013-06-13 01:00:50'),
(13,'collar',10,10,'collar para mujer','collar  de rubies marca kerk','',13,1,2,86,5,'2013-06-13 01:00:50'),
(14,'vestido',65,30,'vestido para mujer','vestido  de colección ','',14,2,2,100,4,'2013-06-13 01:00:50'),
(15,'chomba',32,59,'chomba para hombre','chomba  polo para hombre','',15,96,1,125,3,'2013-06-13 01:00:50'),
(16,'pullover',12,89,'pullover para hombre','pullover  de invierno marca polo norte','',16,54,1,50,2,'2013-06-13 01:00:50'),
(17,'campera',35,78,'campera para mujer','campera  invernal para mujer ','',17,99,2,51,1,'2013-06-13 01:00:50'),
(18,'abrigo',65,18,'abrigo para mujer','abrigo  marca zara para mujer','',18,80,2,52,2,'2013-06-13 01:00:50');

                            
                            
/*!40000 ALTER TABLE  `products`  ENABLE KEYS  */;                       
UNLOCK TABLES;                            



DROP TABLE IF EXISTS  `users` ;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE  `users` (                         
                            
`UserID`	 int	 (	12	)	unsigned	NOT	NULL	AUTO_INCREMENT	,
									
`UserEmail`	varchar	(	100	)	COLLATE	latin1_german2_ci	NOT	NULL	,
									
`UserPassword`	text	COLLATE	latin1_german2_ci	NOT	NULL	,			
									
`UserFirstName`	varchar	(	100	)	COLLATE	latin1_german2_ci	NOT	NULL	,
									
`UserLastName`	varchar	(	100	)	COLLATE	latin1_german2_ci	NOT	NULL	,
									
`UserCity`	int	(	100	)	COLLATE	latin1_german2_ci	DEFAULT	NULL	,
									
`UserProvince`	varchar	(	100	)	COLLATE	latin1_german2_ci	DEFAULT	NULL	,
									
`UserZipCode`	int	(	11	)	DEFAULT	NULL	,		
									
`UserRegistrationDate`	timestamp	DEFAULT	CURRENT_TIMESTAMP	NOT	NULL	,			
									
`UserMobile`	int	(	20	)	DEFAULT	NULL	,		
									
`UserCountry`	varchar	(	100	)	COLLATE	latin1_german2_ci	DEFAULT	NULL	,
									
`UserAddress`	varchar	(	100	)	COLLATE	latin1_german2_ci	DEFAULT	NULL	,
									
`UserWebPage`	varchar	(	100	)	COLLATE	latin1_german2_ci	DEFAULT	NULL	,
									
`UserBio`	text	COLLATE	latin1_german2_ci	DEFAULT	NULL	,			
									
`UserBirthDate`	date	DEFAULT	NULL	,					
									
`UserGenre`	varchar	(	100	)	COLLATE	latin1_german2_ci	DEFAULT	NULL	,
      
                            
                            
                PRIMARY KEY (`UserID`)               

) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            




DROP TABLE IF EXISTS  `product_color` ;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE  `product_color` (                         
                            
  `ColorID`  int ( 11 )  unsigned   NOT NULL   AUTO_INCREMENT ,               
                        
  `ColorNombre`  varchar ( 100 ) COLLATE  latin1_german2_ci  NOT NULL  ,               
                            
  `ColorCodHex`  text ( 10 ) COLLATE  latin1_german2_ci  NOT NULL  ,               
                            
  `ColorRGBR`  int ( 4 )  unsigned     NOT NULL  ,               
                            
  `ColorRGBG`  int ( 4 )  unsigned     NOT NULL  ,              
                            
  `ColorRGBB`  int ( 4 )  unsigned     NOT NULL     ,            
                            
           
                            
  PRIMARY KEY (`ColorID`)
                            
                 
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            
                                    
                            
LOCK TABLES  `product_color`   WRITE;                        
/*!40000 ALTER TABLE   `product_color`  DISABLE KEYS */;                        
INSERT INTO   `product_color`  VALUES                         
                            

(1,'Marrón (pictórico)','#8D4925',141,73,37),
(2,'Marrón (específico)','#7A2E11',122,46,17),
(3,'Marrón (oscuro)','#773525',119,53,37),
(4,'Café (específico)','#591F0B',89,31,11),
(5,'Castaño (específico)','#800000',128,0,0),
(6,'Pardo','#694C41',105,76,65),
(7,'Bistre1​','#967117',150,113,23),
(8,'Ante','#BA7C45',186,124,69),
(9,'Bronce2​','#CD7F32',205,127,50),
(10,'Melado','#D19538',209,149,56),
(11,'Barbecho3​','#C19A6B',193,154,107),
(12,'Gamuza','#E6B57E',230,181,126),
(13,'Arena','#ECE2C6',236,226,198),
(14,'Beis','#E8C39E',232,195,158),
(15,'Blanco navajo','#EBE1C9',235,225,201),
(16,'Caoba5​','#C04000',192,64,0),
(17,'Caoba (específico)','#A5665D',165,102,93),
(18,'Caoba (inespecífico)','#A44850',164,72,80),
(19,'Caqui (específico)','#E0D8B0',224,216,176),
(20,'Caqui (inespecífico)','#DFC38A',223,195,138),
(21,'Canela','#996B42',153,107,66),
(22,'Herrumbre','#A2522B',162,82,43),
(23,'León','#BC8648',188,134,72),
(24,'Ocre','#B9935A',185,147,90),
(25,'Ocre amarillo (específico)','#D1974D',209,151,77),
(26,'Ocre amarillo (pictórico)','#B5783A',181,120,58),
(27,'Ocre rojo','#7D3F32',125,63,50),
(28,'Ocre pardo','#5F3F3E',95,63,62),
(29,'Ocre pardo oscuro','#4B382F',75,56,47),
(30,'Ocre oro','#573F25',87,63,37),
(31,'Ocre dorado','#C97E28',201,126,40),
(32,'Ocre dorado tostado','#9A6619',154,102,25),
(33,'Ocre carne','#874639',135,70,57),
(34,'Rojo toscano','#79443B',121,68,59),
(35,'Rojo Falun','#7C342B',124,52,43),
(36,'Rojo veneciano','#6E433C',110,67,60),
(37,'Rufo','#CB6D51',203,109,81),
(38,'Secuoya','#8A5754',138,87,84),
(39,'Sepia (específico)','#663B2A',102,59,42),
(40,'Sepia (pictórico)','#524B3B',82,75,59),
(41,'Marrón sepia','#5C5343',92,83,67),
(42,'Siena','#C58A3E',197,138,62),
(43,'Siena tostado','#8E372E',142,55,46),
(44,'Tabaco','#50301E',80,48,30),
(45,'Treviso','#823A3F',130,58,63),
(46,'Wengué','#3D2E2C',61,46,44),
(47,'Rojo (estándar)','#E60026',230,0,38),
(48,'Almagre','#DC2339',220,35,57),
(49,'Bermejo','#D22C21',210,44,33),
(50,'Bermellón','#E62E00',230,46,0),
(51,'Bermellón de China','#B21A27',178,26,39),
(52,'Bermellón de Holanda','#E62E11',230,46,17),
(53,'Burdeos','#6D071A',109,7,26),
(54,'Vino (color)','#900020',144,0,32),
(55,'Carmesí','#E51A4C',229,26,76),
(56,'Carmín (estándar)','#D10047',209,0,71),
(57,'Carmín (pictórico)','#C30B4E',195,11,78),
(58,'Carmín de alizarina','#A11C55',161,28,85),
(59,'Rojo Munsell','#F2003C',242,0,60),
(60,'Coral','#E51D2E',229,29,46),
(61,'Escarlata','#E30032',227,0,50),
(62,'Escarlata Gobelinos','#BD002F',189,0,47),
(63,'Frambuesa','#E61D52',230,29,82),
(64,'Granate','#AA1C47',170,28,71),
(65,'Grana','#AB2A3E',195,16,58),
(66,'Hematita roja','#D4442F',212,68,47),
(67,'Hígado','#891E35',137,30,53),
(68,'Rojo persa','#CB1D11',203,29,17),
(69,'Tomate','#D5303E',213,48,62),
(70,'Rojo naranjado','#E82300',232,35,0),
(71,'Rojo naranja','#E73C00',231,60,0),
(72,'Naranja rojizo','#E95400',233,84,0),
(73,'Naranja','#FFA500',255,165,0),
(74,'Naranja (obscuro)','#E65F00',230,95,0),
(75,'Amarillo indio','#FF7430',255,116,48),
(76,'Ámbar (estándar)','#E2893A',226,137,58),
(77,'Calabaza (específico)','#EDAA7C',237,170,124),
(78,'Calabaza (inespecífico)','#D99343',217,147,67),
(79,'Naranja caqui (específico)','#F38D3C',243,141,60),
(80,'Naranja caqui (inespecífico)','#E25F23',226,95,35),
(81,'Dorado','#E49E56',228,158,86),
(82,'Llama','#F98F1D',249,143,29),
(83,'Oro','#E7AE18',231,174,24),
(84,'Salmón','#FA8072',250,128,114),
(85,'Amarillo (estándar)','#FFFF00',255,255,0),
(86,'Colza','#FFE900',255,233,0),
(87,'Gualdo6​','#FFD700',255,215,0),
(88,'Flavo7​','#feff3f',254,255,63),
(89,'Áureo','#FDFD96',253,253,150),
(90,'Aureolina','#FFE661',255,230,97),
(91,'Dorado','#CAB313',202,179,19),
(92,'Cadmín','#FFF600',255,246,0),
(93,'Cromato','#ffcc0f',255,204,15),
(94,'Arilado','#e9d66b',233,214,107),
(95,'Hansa','#FCC300',252,195,0),
(96,'Ámbar','#FFDF00',250,215,0),
(97,'Napoleto','#ECCD6A',236,205,106),
(98,'Napoleto oscuro','#FFC94D',225,201,77),
(99,'Napoleto claro','#FFF6AD',255,246,173),
(100,'Napoleto rojizo','#F9BDA1',249,189,161),
(101,'Crema','#FFF0C9',255,240,201),
(102,'Junquillo','#EFD52E',239,213,46),
(103,'Mostaza','#E8BF06',232,191,6),
(104,'Limón (estándar)','#D9E542',217,229,66),
(105,'Cetrino9​','#e4d00a',228,208,10),
(106,'Amarillo limón','#FFF83B',255,248,59),
(107,'Cartujo','#DFFF00',223,255,0),
(108,'Guta','#E49B0F',228,115,15),
(109,'Amarillo verdoso','#DED700',222,215,0),
(110,'Verde amarillo','#C6CE00',198,206,0),
(111,'Verde amarillento','#75B313',117,179,19),
(112,'Verde amarillo web10​','#ADFF2F',173,255,47),
(113,'Cartujo','#DFFF00',223,255,0),
(114,'Cetrino','#e4d00a',228,208,10),
(115,'Lima','#9EFD38',158,253,78),
(116,'Limón (estándar)','#D9E542',217,229,66),
(117,'Verde oliva10​','#6B8E23',107,142,35),
(118,'Sinople o Verde estándar','#00B564',0,181,100),
(119,'Prásino','#0Cf90C',12,249,12),
(120,'Verdiano','#228b22',34,139,34),
(121,'Glauco','#63e457',99,228,879),
(122,'Verde oscuro (web)10​','#006400',0,100,0),
(123,'Porráceo11​','#1b4125',27,65,37),
(124,'Malaquita12​','#0BDA51',11,218,81),
(125,'Esmeralda claro','#00FFBF',0,255,191),
(126,'Esmeralda','#009975',0,153,117),
(127,'Verde','#35682D',53,104,45),
(128,'Jade','#34C2A7',52,194,167),
(129,'Pistacho13​','#93c572',147,197,114),
(130,'Glauco,14​','#71BC78',113,188,120),
(131,'Verde musgo16​','#8A9A5B',138,154,91),
(132,'Menta17​','#98ff98',152,255,152),
(133,'Verdín18​','#77dd77',119,221,119),
(134,'Verde loro20​','#52B830',82,184,48),
(135,'Trébol','#04A404',4,164,4),
(136,'Verde botella22​','#006a4e',0,106,78),
(137,'Verde mar23​','#2e8b57',46,139,87),
(138,'Verde Hooker Nº1','#44944A',68,148,74),
(139,'Verde Hooker Nº2','#3B7861',59,120,97),
(140,'Oliva','#6b8e23',107,142,35),
(141,'Verde primavera','#00FF7F',0,250,127),
(142,'Veronese','#18A88D',24,168,141),
(143,'Verde de Schweinfurt','#009B7D',0,155,125),
(144,'Verde de París','#128385',18,131,133),
(145,'Viridián','#4b5f56',75,95,86),
(146,'Viridián español','#007F5C',0,127,92),
(147,'Viridián (inespecífico)','#007F66',0,127,102),
(148,'Verde ceniza (pictórico)','#009872',0,152,114),
(149,'Verde ceniza (específico)','#5F7F7A',95,127,122),
(150,'Cardenillo','#43b3ae',67,179,174),
(151,'Teal','#1b7677',27,118,119),
(152,'Teal (obscuro)','#00554E',0,85,78),
(153,'Esmeralda claro','#00FFBF',0,255,191),
(154,'Turquesa','#5DC1B9',93,193,185),
(155,'Aguamarina','#7FFFD4',127,255,212),
(156,'Aguamarina pantone','#ACDCDD',172,220,221),
(157,'Verde cian','#00FFFF',0,255,225),
(158,'Cerceta','#0D98BA',13,152,186),
(159,'Celeste claro','#B2FFFF',178,255,255),
(160,'Celeste','#87CEFA',135,206,250),
(161,'Calipso','#00DDF3',0,221,243),
(162,'Cian (aditivo)','#00FFFF',0,255,255),
(163,'Cian (estándar)','#00B0F6',0,176,246),
(164,'Bígaro','#CCCCFF',204,204,255),
(165,'Aguamarina','#7FFFD4',127,255,212),
(166,'Aguamarina oriental','#ACDCDD',172,220,221),
(167,'Cerúleo (específico)','#1dacd6',29,172,214),
(168,'Cerúleo (inespecífico)','#A7D3F3',167,211,243),
(169,'Turquesa','#5DC1B9',93,193,185),
(170,'Azul (estándar)','#0070B8',0,112,184),
(171,'Azur','#0099FF',0,153,255),
(172,'Añil','#091F92',9,31,146),
(173,'Cobalto (específico)','#333C87',51,60,135),
(174,'Azul cobalto (pictórico)','#00438A',0,67,138),
(175,'Cobalto claro (pictórico)','#091F92',9,31,146),
(176,'Cobalto obscuro (pictórico)','#004F79',0,79,121),
(177,'Azul de Prusia','#003153',0,49,83),
(178,'Azul Majorelle','#5564EB',85,100,235),
(179,'Azul glauco','#007E8B',0,126,139),
(180,'Azul marino (pictórico)','#0A3F7A',10,63,122),
(181,'Azul marino (específico)','#436EC0',67,110,192),
(182,'Azul cerúleo','#318CE7',49,140,231),
(183,'Índigo (específico)','#003C92',0,60,146),
(184,'Índigo (pictórico)','#213C6E',33,60,110),
(185,'Orcela','#25206F',37,32,111),
(186,'Turquí','#122562',18,37,98),
(187,'Zafiro (inespecífico)','#6576B4',101,118,180),
(188,'Azul Munsell','#0093AF',0,147,175),
(189,'Azul eléctrico24​','#2C75FF',44,117,255),
(190,'Azul purpúreo','#382983',56,41,131),
(191,'Azul púrpura o violeta','#4C2882',76,40,130),
(192,'Púrpura azulado','#612682',97,38,130),
(193,'Violeta','#7F00FF',127,0,255),
(194,'Violeta','#4C2882',76,40,130),
(195,'Amatista','#898AC0',137,138,192),
(196,'Lirio','#7F69A5',127,105,165),
(197,'Morado (inespecífico)','#572364',87,35,100),
(198,'Morado (inespecífico, otro)','#4A2364',74,35,100),
(199,'Púrpura','#7D2181',125,33,129),
(200,'Púrpura de Perkin','#9F68A6',159,104,166),
(201,'Púrpura de Tiro','#4E0041',78,0,65),
(202,'Violín','#A10684',161,6,132),
(203,'Malva25​','#E0B0FF',224,176,255),
(204,'Lila claro26​','#DCD0FF',220,208,255),
(205,'Lila','#D891EF',216,145,239),
(206,'Lavanda27​','#B57EDC',181,126,220),
(207,'Zafiro (estándar)','#7573A6',117,115,166),
(208,'Aciano','#8892C6',136,146,198),
(209,'Uva28​','#6f2da8',111,45,158),
(210,'Magenta (estándar)','#F50087',245,0,135),
(211,'Magenta (inespecífico)','#D40D7D',212,13,125),
(212,'Magenta (aditivo)','#FF00FF',255,0,255),
(213,'Carne','#FCD0B4',252,208,180),
(214,'Rosa (estándar)','#F6AE97',246,174,151),
(215,'Rosa (inespecífico)','#F7BFBE',247,191,190),
(216,'Rosado','#FD6C9E',253,108,158),
(217,'Rosado pictórico','#FF77FF',255,119,255),
(218,'Fucsia','#FF0080',255,0,128),
(219,'Fucsia rojizo','#FF005A',255,0,90),
(220,'Orceína','#C20073',194,0,115),
(221,'Rosa coral','#EB6362',235,99,98),
(222,'Rosa mexicano','#F50087',245,0,135),
(223,'Salmón','#FA8072',250,128,114),
(224,'Púrpura rojizo','#A11480',161,20,128),
(225,'Rojo púrpura','#E40078',228,0,120),
(226,'Rojo purpúreo','#E30049',227,0,73),
(227,'Blanco estándar','#FFFAFA',255,250,250),
(228,'Yeso blanco 29​','#F8F8FF',248,248,255),
(229,'Cándido','#FFFFFF',255,255,255),
(230,'Albo','#F6F6F6',246,246,246),
(231,'Níveo (nieve) o blco. cinc','#FAFBFD',250,251,253),
(232,'Albayalde','#F5F5F5',245,245,245),
(233,'Acelino (blco azul frío)','#F0F8FF',240,248,255),
(234,'Lanquecino (blco menta)','#F5FFF0',245,255,240),
(235,'Crema','#FFF0C9',255,240,201),
(236,'Marfil','#F5F2E7',245,242,231),
(237,'Nácar','#FBF4E2',251,244,226),
(238,'Gris (estándar)','#989898',152,152,152),
(239,'Xanadú 30​','#738678',115,134,120),
(240,'Gris acorazado','#848482',132,132,130),
(241,'Bistre','#80755A',128,117,90),
(242,'Plateado','#CDCDCD',205,205,205),
(243,'Gris de Davy','#555555',85,85,85),
(244,'Plomo','#C0C0C0',192,192,192),
(245,'Aluminio31​','#b9b8b5',185,184,181),
(246,'Plata32​','#848482',132,132,130),
(247,'Sulfán','#536878',83,104,120),
(248,'Sulfán oscuro','#36454F',54,69,79),
(249,'Ceniza','#b0b5bc',176,181,188),
(250,'Gris frío','#496063',73,96,99),
(251,'Lino','#D7D0B7',215,208,183),
(252,'Negro','#000000',0,0,0),
(253,'Azabache','#010101',1,1,1),
(254,'Carbón','#191919',25,25,25),
(255,'Ébano33​','#37312B',55,49,43),
(256,'Grafito (RAL)','#1C1C1C',28,28,28),
(257,'Cordobán','#3B2A21',59,42,33),
(258,'Negro bujía','#2A3223',42,50,35),
(259,'Negro de humo','#382212',56,34,18);
                            
                            
                            
/*!40000 ALTER TABLE   `product_color`  ENABLE KEYS  */;                       
UNLOCK TABLES;                            






DROP TABLE IF EXISTS  `orders` ;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE  `orders` (                         
        
   `OrderID`  int ( 11 )  unsigned   NOT NULL   AUTO_INCREMENT ,               
                            
  `OrderUserID`  int ( 11 )  unsigned   NOT NULL    ,               
                            
  `OrderAmount`  float     unsigned   NOT NULL    ,               
                            
  `OrderTax`  float     unsigned   NOT NULL    ,               
                            
  `OrderDate`  timestamp    NOT NULL   DEFAULT  CURRENT_TIMESTAMP,               
                            
 
                            
                            
  PRIMARY KEY ( `OrderID` ),                         
                            
                            
  KEY `orders_OrderUserID_foreign` (`OrderUserID`),
 
 
                            
  CONSTRAINT `orders_OrderUserID_foreign`   FOREIGN KEY  (`OrderUserID`)   REFERENCES   `users` (`UserID`)
     


) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            
                                



DROP TABLE IF EXISTS  `order_details` ;                         
/*!40101 SET @saved_cs_client     = @@character_set_client */;                            
/*!40101 SET character_set_client = utf8 */;                            
CREATE TABLE  `order_details` (                         
                            
  `DetailID`  int ( 11 )  unsigned   NOT NULL   AUTO_INCREMENT ,               
                            
  `DetailOrderID`  int ( 11 )  unsigned   NOT NULL    ,               
                            
  `DetailProductID`  int ( 11 )  unsigned   NOT NULL    ,               
                            
  `DetailName`  varchar(250)  COLLATE  latin1_german2_ci  NOT NULL    ,               
                            
  `DetailPrice`  float      NOT NULL    ,               
                            
  `DetailQuantity`  int ( 11 )  unsigned   NOT NULL    ,               
                            
          
                            
  PRIMARY KEY ( `DetailID` ),                         
                            
                            
  KEY `order_details_DetailOrderID_foreign` (`DetailOrderID`),
  KEY `order_details_DetailProductID_foreign` (`DetailProductID`),
 
                            
  CONSTRAINT `order_details_DetailOrderID_foreign`   FOREIGN KEY  (`DetailOrderID`)   REFERENCES   `orders` (`OrderID`),
  CONSTRAINT `order_details_DetailProductID_foreign`   FOREIGN KEY  (`DetailProductID`)   REFERENCES   `products` (`ProductID`)
     
                            



) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;                            
/*!40101 SET character_set_client = @saved_cs_client */;                            
                                






/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-12 10:09:28

