-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: publisher
-- ------------------------------------------------------
-- Server version	10.11.2-MariaDB-1:10.11.2+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anuncio_detalle`
--

DROP TABLE IF EXISTS `anuncio_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anuncio_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `descripcion_corta` varchar(140) DEFAULT NULL,
  `descripcion_larga` varchar(2000) DEFAULT NULL,
  `ubicaciones` varchar(140) DEFAULT NULL,
  `disponibilidad` varchar(140) DEFAULT NULL,
  `forma_de_cobro` varchar(64) DEFAULT NULL,
  `nombre_c` varchar(64) DEFAULT NULL,
  `telefono_c` varchar(12) DEFAULT NULL,
  `correo_c` varchar(64) DEFAULT NULL,
  `facebook` varchar(64) DEFAULT NULL,
  `instagram` varchar(64) DEFAULT NULL,
  `twitter` varchar(64) DEFAULT NULL,
  `youtube` varchar(64) DEFAULT NULL,
  `anuncio_activo` tinyint(1) DEFAULT NULL,
  `anuncio_revisado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncio_detalle`
--

LOCK TABLES `anuncio_detalle` WRITE;
/*!40000 ALTER TABLE `anuncio_detalle` DISABLE KEYS */;
INSERT INTO `anuncio_detalle` VALUES
(46,46,'Esta es una descripcion corta de tu trabajo','esta es una descripcion larga de tu trabajo','aqui escribe las ubicaciones donde trabajas','lunes, miercoles y viernes','Por trabajo','Felix Loyola','7775478547','pysea.contacto@gmail.com','este es el','nose cual es','twittwe','',0,0),
(47,58,'nose que poner','cualquier cosa me da igual','me da igual','noa','Por hora','yo','tu','el','xxx','vava','wewe','sdfsw',0,0);
/*!40000 ALTER TABLE `anuncio_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficio`
--

DROP TABLE IF EXISTS `oficio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oficio` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) NOT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficio`
--

LOCK TABLES `oficio` WRITE;
/*!40000 ALTER TABLE `oficio` DISABLE KEYS */;
INSERT INTO `oficio` VALUES
(0,'Sin oficio',1),
(1,'Afilador',1),
(2,'Albañil',1),
(3,'Alpinista',1),
(4,'Asistente',1),
(5,'Azulejero',1),
(6,'Basurero',1),
(7,'Bolero',1),
(8,'Camionero',1),
(9,'Cantinero',1),
(10,'Carpintero',1),
(11,'Cerrajero',1),
(12,'Chatarrero',1),
(13,'Chofer',1),
(14,'Coach',1),
(15,'Cobrador',1),
(16,'Cocinero',1),
(17,'Comediante',1),
(18,'Cuidadora',1),
(19,'Diablero',1),
(20,'Dietista',1),
(21,'Electrisista',1),
(22,'Entrenador',1),
(23,'Entrevistador',1),
(24,'Escultor',1),
(25,'Estilista',1),
(26,'Franelero',1),
(27,'Gasero',1),
(28,'Guardaespaldas',1),
(29,'Guardavidas',1),
(30,'Guardia',1),
(31,'Guia de turistas',1),
(32,'Herrero',1),
(33,'Impresor',1),
(34,'Instructor',1),
(35,'Investigador',1),
(36,'Jardinero',1),
(37,'Locutor',1),
(38,'Luchador',1),
(39,'Mariachi',1),
(40,'Masajista',1),
(41,'Mecánico',1),
(42,'Misionero',1),
(43,'Niñera/o',1),
(44,'Navegante',1),
(45,'Ofebre',1),
(46,'Panadero',1),
(47,'Paramédico',1),
(48,'Payaso',1),
(49,'Peluquero',1),
(50,'Pescador',1),
(51,'Pintor',1),
(52,'Plomero',1),
(53,'Poeta',1),
(54,'Predicador',1),
(55,'Prefecto',1),
(56,'Rescatista',1),
(57,'Secretaria',1),
(58,'Sirvienta',1),
(59,'Taquero',1),
(60,'Traductor',1),
(61,'Transportista',1),
(62,'Velador',1),
(63,'Volantero',1),
(64,'Zapatero',1),
(65,'Otro',1);
/*!40000 ALTER TABLE `oficio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago_detalle`
--

DROP TABLE IF EXISTS `pago_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago_detalle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nombre` varchar(64) NOT NULL,
  `num_tarjeta` varchar(64) NOT NULL,
  `vencimiento` varchar(12) NOT NULL,
  `ccv` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago_detalle`
--

LOCK TABLES `pago_detalle` WRITE;
/*!40000 ALTER TABLE `pago_detalle` DISABLE KEYS */;
INSERT INTO `pago_detalle` VALUES
(1,46,'gerardo gerry','1234-4567-9877-1991','12/25',784),
(2,58,'Adolfo U. Martinez','1478-4877-9997-3451','10/28',546),
(3,458,'Manuel ocampo','1235-4568-7894-4561','10/24',455),
(4,488,'Manuel ocampo','1235-4568-7894-4561','10/24',457),
(5,59,'pysea corporation','7894-4567-7894-4567','10/25',478);
/*!40000 ALTER TABLE `pago_detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_detalle`
--

DROP TABLE IF EXISTS `usuario_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario_detalle` (
  `id_user` int(11) NOT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `apellido_p` varchar(64) DEFAULT NULL,
  `apellido_m` varchar(64) DEFAULT NULL,
  `nick` varchar(64) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `fecha_n` date DEFAULT NULL,
  `codigo_postal` int(11) DEFAULT NULL,
  `oficio` int(11) DEFAULT NULL,
  `telefono_p` varchar(24) DEFAULT NULL,
  `correo_p` varchar(64) DEFAULT NULL,
  `habilitado` tinyint(1) DEFAULT NULL,
  `imagen_d` tinyint(1) DEFAULT NULL,
  `metodo_pago` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `oficio` (`oficio`),
  CONSTRAINT `usuario_detalle_ibfk_1` FOREIGN KEY (`oficio`) REFERENCES `oficio` (`id`),
  CONSTRAINT `usuario_detalle_ibfk_2` FOREIGN KEY (`oficio`) REFERENCES `oficio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_detalle`
--

LOCK TABLES `usuario_detalle` WRITE;
/*!40000 ALTER TABLE `usuario_detalle` DISABLE KEYS */;
INSERT INTO `usuario_detalle` VALUES
(0,'Oliver',NULL,NULL,'Elpapi',0,NULL,0,0,NULL,NULL,0,0,0),
(46,'Gerardo Uriel','Ruiz','Garcia','gerasmurx',101,'1989-07-13',65566,8,'7771031461','gerasmurx@gmail.com',0,1,0),
(58,'Gerry','Torres3','evaristo','geras',0,'1984-03-02',45824,1,'547-789-54-65','pluriel1989@gmail.com',0,0,0),
(59,'Producto y sistemas','Energeticos','Avanzados','Pysea',0,NULL,0,56,NULL,'pysea.contacto@gmail.com',0,0,0),
(456,'Geisha','ulis','perez','Geishis',78,'1978-09-19',69885,1,'7771123578','stilista@gmail.com',1,1,0),
(545,'moises','matiaz','araujo','elmatas',10,'1989-05-05',78459,1,'5548789654','loquesea@gmail.com',0,0,0),
(576,'Adriana','De la Garza','Santana','genis',98,'1654-12-12',45782,1,'4581234598','aldama@gmail.com',1,1,1),
(577,'Marco','Anastasio','Pedroza','Marquis',958,'1980-11-09',69479,1,'5544866521','marcosolis@gmail.com',1,1,1),
(578,'jiovani','Muñoz','Garcia','Dos santos',10,'1991-12-02',45741,1,'6695914826','giovani1991@gmail.com',1,1,1),
(657,'Oliver',NULL,NULL,'Elpapi',0,NULL,0,0,NULL,NULL,0,0,0);
/*!40000 ALTER TABLE `usuario_detalle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-23 19:27:35
