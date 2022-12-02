-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: semestral
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
-- Table structure for table `acerca_de`
--

DROP TABLE IF EXISTS `acerca_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acerca_de` (
  `titulo` varchar(300) NOT NULL,
  `contenido` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acerca_de`
--

LOCK TABLES `acerca_de` WRITE;
/*!40000 ALTER TABLE `acerca_de` DISABLE KEYS */;
INSERT INTO `acerca_de` VALUES ('Acerca del Proyecto','Este Proyecto está basado en las clases sobre el html y css. <br><br>\nEl tema de Suplementos alimenticios, Los productos naturales representa una gran variedad de\ntodo tipo de soluciones naturales, entrega salud y bienestar.');
/*!40000 ALTER TABLE `acerca_de` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colaboradores`
--

DROP TABLE IF EXISTS `colaboradores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colaboradores` (
  `id_col` int NOT NULL AUTO_INCREMENT,
  `contenido` varchar(700) NOT NULL,
  `imagen` varchar(300) NOT NULL,
  `colaborador` varchar(300) NOT NULL,
  PRIMARY KEY (`id_col`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colaboradores`
--

LOCK TABLES `colaboradores` WRITE;
/*!40000 ALTER TABLE `colaboradores` DISABLE KEYS */;
INSERT INTO `colaboradores` VALUES (1,'Los complementos alimenticios van dirigidosa personas sanas. \nEn la etiqueta del producto siempre quedan reﬂejadas las condiciones deutilización y, \nen condiciones normales, la información que en ella aparece es suﬁciente para \nhacer un uso correcto del producto.','https://www.iconpacks.net/icons/2/free-user-icon-3297-thumb.png','Miguel Ríos'),(2,'Un suplemento alimenticio o complemento alimenticio contribuye, ayuda y facilita\na mantener una buena salud siempre que se lleve un estilo de vida saludable a través de una \ndieta variada y equilibrada y una actividad física regular.','https://www.iconpacks.net/icons/2/free-user-icon-3297-thumb.png','David Fariña'),(3,'Para un niño un complejo alimenticio a base de probióticos y vitaminas puede\nfavorecer la estimulación de las defensas inmunitarias para ayudar a protegerlo mejor, principalmente,\n al principio del invierno.','https://www.iconpacks.net/icons/2/free-user-icon-3297-thumb.png','Orlando Velásquez'),(4,'En grupos de población concretos como mujeres embarazadas, en periodo de lactancia,\nlos niños, las personas con una condición médica particular, entre otras, puede ser útil pedir\nconsejo profesional.','https://www.iconpacks.net/icons/2/free-user-icon-3297-thumb.png','Ricardo Arias'),(5,'Dado que los complementos alimenticios van dirigidos a personas sanas, en caso\nde estar tomando algún medicamento, se deberá ponerlo en conocimiento del médico.','https://www.iconpacks.net/icons/2/free-user-icon-3297-thumb.png','Davis Santos'),(6,'Un complemento alimenticio nunca puede sustituir una dieta. En circunstancias\nnormales, una dieta adecuada y equilibrada debería proporcionar todos los nutrientes necesarios \npara el normal desarrollo y mantenimiento de un organismo sano.','https://www.iconpacks.net/icons/2/free-user-icon-3297-thumb.png','Gabriel Rodríguez');
/*!40000 ALTER TABLE `colaboradores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descripcion`
--

DROP TABLE IF EXISTS `descripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descripcion` (
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `detalles` varchar(100) DEFAULT NULL,
  `consumo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descripcion`
--

LOCK TABLES `descripcion` WRITE;
/*!40000 ALTER TABLE `descripcion` DISABLE KEYS */;
INSERT INTO `descripcion` VALUES ('Vitamina B 12','Suplemento vitamínico que puede ayudar subir los niveles de energía.','https://www.natus.cr/wp-content/uploads/2021/07/image.jpg','Aporta 1000 mcg de vitamina B12 (cobalamina).','Disuelva una (1) pastilla en la boca antes de tragarla'),('Omega 3','El Omega-3 Fish oil contiene DHA ayuda a la construcción y funcionamiento de las membranas','https://m.media-amazon.com/images/I/61EAUSWRWEL.jpg','Una cápsula aporta 300 mg de EPA (ácido eicosapentaenoico), 200 mg DHA (ácido docosahexaenoico)','Tome una (1) cápsula blanda al día, preferiblemente con una comida'),('Vitamina C','La vitamina C contribuye al funcionamiento normal del sistema inmunitario y sistema nervioso','https://www.enzimesabinco.com/img/cms/products/c3.jpg','Aporta 500 mg de vitamina C','Tomar una (1) cápsula al día, preferiblemente con las comidas'),('Zing 50mg','Suplemento vitamínico que puede ayudar subir los niveles de energía.','https://www.kiotssomarket.com/wp-content/uploads/2021/12/Artboard-1-76.jpg','Aporta Zing','Suplemento vitamínico que puede ayudar subir los niveles de energía.'),('Vitamina D3','Suplemento vitamínico que puede ayudar subir los niveles de defensa','https://terbol.com.bo/wp-content/uploads/2019/10/vitamin-d3-1.jpg','Aporta VitaminaD3','Suplemento vitamínico que puede ayudar subir los niveles de energía.'),('Citrato de Magnesio 200mg','Suplemento vitamínico que puede ayudar subir los niveles de concentracion.','https://www.paris.cl/dw/image/v2/BCHW_PRD/on/demandware.static/-/Sites-paris-marketplace/default/dw0f653486/images/imagenes-productos/800/MK62/MK62XJFSUF-001.jpg?sw=1480&sh=2000&sm=fit','Aporta Citrato de Magnesio','Suplemento vitamínico que puede ayudar subir los niveles de energía.');
/*!40000 ALTER TABLE `descripcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_extra`
--

DROP TABLE IF EXISTS `info_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_extra` (
  `titulo` varchar(300) NOT NULL,
  `sub_titulo` varchar(300) NOT NULL,
  `sub_titulo2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_extra`
--

LOCK TABLES `info_extra` WRITE;
/*!40000 ALTER TABLE `info_extra` DISABLE KEYS */;
INSERT INTO `info_extra` VALUES ('CONSIGUE TODO LO QUE NECESITAS','Productos Naturales para tu Salud','Contactanos para más información');
/*!40000 ALTER TABLE `info_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `nombre` varchar(50) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `id` int NOT NULL,
  `cantidad` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('Vitamina B12',10,'https://www.natus.cr/wp-content/uploads/2021/07/image.jpg',8,8),('Zing 50mg',10.99,'https://www.kiotssomarket.com/wp-content/uploads/2021/12/Artboard-1-76.jpg',9,20),('Vitamina D3',17.99,'https://terbol.com.bo/wp-content/uploads/2019/10/vitamin-d3-1.jpg',10,17),('Vitamina C 1000mg',15.99,'https://www.bodybuildinglatino.com/tienda/2441-thickbox_default/vitamina-c-1000mg-con-rose-hips.jpg',11,18),('Citrato de Magnesio 200mg',15.9,'https://www.paris.cl/dw/image/v2/BCHW_PRD/on/demandware.static/-/Sites-paris-marketplace/default/dw0f653486/images/imagenes-productos/800/MK62/MK62XJFSUF-001.jpg?sw=1480&sh=2000&sm=fit',12,10),('Omega 3 1000mg',13.99,'https://m.media-amazon.com/images/I/61EAUSWRWEL.jpg',13,15),('Vitamin C Gummies 250 mg Orange',14.99,'https://www.enzimesabinco.com/img/cms/products/c3.jpg',14,19);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02 12:14:28
