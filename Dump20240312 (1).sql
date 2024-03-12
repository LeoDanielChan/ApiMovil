CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Pectorales','ejercicios para el pecho','2024-03-08 02:54:31',NULL),(2,'Hombro','Ejercicios para las articulaciones de los hombros','2024-03-08 02:54:31',NULL),(3,'Biceps','Ejercicios para los biceps','2024-03-08 02:54:31',NULL),(4,'Abdomen','Ejecicios para el abdomen','2024-03-08 02:54:31',NULL),(5,'Antebrazo','Ejercicios para los antebrazos','2024-03-08 02:54:31',NULL),(6,'Espalda','Ejercicios par la esplada','2024-03-08 02:54:31',NULL),(7,'Pierna','Ejercicios para pierna','2024-03-08 02:54:31',NULL),(8,'Cardio','Ejercicios para realizar cardio','2024-03-08 02:54:31',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_workout`
--

DROP TABLE IF EXISTS `image_workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_workout` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workout_id` bigint unsigned NOT NULL,
  `image_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `image_workout_workout_id_foreign` (`workout_id`),
  KEY `image_workout_image_id_foreign` (`image_id`),
  CONSTRAINT `image_workout_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  CONSTRAINT `image_workout_workout_id_foreign` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_workout`
--

LOCK TABLES `image_workout` WRITE;
/*!40000 ALTER TABLE `image_workout` DISABLE KEYS */;
INSERT INTO `image_workout` VALUES (1,1,2,NULL,NULL),(2,2,5,NULL,NULL),(3,3,1,NULL,NULL),(4,4,6,NULL,NULL),(5,5,3,NULL,NULL),(6,6,9,NULL,NULL),(7,7,7,NULL,NULL),(8,8,8,NULL,NULL),(9,9,4,NULL,NULL),(10,1,9,NULL,NULL);
/*!40000 ALTER TABLE `image_workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `public_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ulr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,'Curl de bícepd con barra','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908623/Ejercicios/bxjimbcc9dgigfinxdgf.png','2024-03-08 20:48:57','2024-03-08 20:48:57'),(2,'press de banca inclinada con mancuernas','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908657/Ejercicios/kai5m4jizvbd8g97risv.png','2024-03-08 20:50:44','2024-03-08 20:50:44'),(3,'Sentadilla con barra','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908678/Ejercicios/ptdoplbplhmsrvcz7ynd.png','2024-03-08 20:52:25','2024-03-08 20:52:25'),(4,'Planca abdominal','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908679/Ejercicios/z7jrpiyl09pbqgemu7bw.png','2024-03-08 20:53:10','2024-03-08 20:53:10'),(5,'El press de banca plano con barra','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908723/Ejercicios/iy3mbglhsbkuvlbpcmsj.png','2024-03-08 20:54:15','2024-03-08 20:54:15'),(6,'press de banca inclinada con mancuernas','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908723/Ejercicios/zcdsynsivtu17reoog2y.png','2024-03-08 20:55:34','2024-03-08 20:55:34'),(7,'Press sentado con mancuerna','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908724/Ejercicios/d7fw7gkab5jmb6q75kte.jpg','2024-03-08 20:57:12','2024-03-08 20:57:12'),(8,'remo vertical con barra','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908724/Ejercicios/zofrwfcmcrmj3vxlhpfh.jpg','2024-03-08 20:58:02','2024-03-08 20:58:02'),(9,'zancada con mancuerna','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709908725/Ejercicios/ozpfhj2paxqvtimggpl9.png','2024-03-08 20:58:56','2024-03-08 20:58:56'),(10,'imagen_bandera','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709994820/imagen_bandera.jpg','2024-03-09 20:33:41','2024-03-09 20:33:41'),(11,'Ejercicios/imagen_bandera2','https://res.cloudinary.com/dlxpr11ok/image/upload/v1709995049/Ejercicios/imagen_bandera2.jpg','2024-03-09 20:37:30','2024-03-09 20:37:30');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (48,'2014_10_12_100000_create_password_reset_tokens_table',1),(49,'2019_08_19_000000_create_failed_jobs_table',1),(50,'2019_12_14_000001_create_personal_access_tokens_table',1),(51,'2024_02_05_164854_create_users_table',1),(52,'2024_02_05_165450_create_categories_table',1),(53,'2024_02_05_172710_create_instructors_table',1),(54,'2024_02_05_174300_create_types_table',1),(55,'2024_02_05_174913_create_memberships_table',1),(56,'2024_02_05_175725_create_payments_table',1),(57,'2024_02_05_181034_create_images_table',1),(58,'2024_02_05_181121_create_workouts_table',1),(59,'2024_02_05_181717_create_image_workout_table',1),(60,'2024_03_02_152837_create_routines_table',1),(61,'2024_03_02_153737_create_routine_workout_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;


-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routine_workout`
--

DROP TABLE IF EXISTS `routine_workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routine_workout` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `workout_id` bigint unsigned NOT NULL,
  `routine_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `routine_workout_workout_id_foreign` (`workout_id`),
  KEY `routine_workout_routine_id_foreign` (`routine_id`),
  CONSTRAINT `routine_workout_routine_id_foreign` FOREIGN KEY (`routine_id`) REFERENCES `routines` (`id`) ON DELETE CASCADE,
  CONSTRAINT `routine_workout_workout_id_foreign` FOREIGN KEY (`workout_id`) REFERENCES `workouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routine_workout`
--

LOCK TABLES `routine_workout` WRITE;
/*!40000 ALTER TABLE `routine_workout` DISABLE KEYS */;
/*!40000 ALTER TABLE `routine_workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routines`
--

DROP TABLE IF EXISTS `routines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routines` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre_rutina` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routines`
--

LOCK TABLES `routines` WRITE;
/*!40000 ALTER TABLE `routines` DISABLE KEYS */;
/*!40000 ALTER TABLE `routines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contraseña` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workouts`
--

DROP TABLE IF EXISTS `workouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preparacion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ejecucion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detalles` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `workouts_category_id_foreign` (`category_id`),
  CONSTRAINT `workouts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (1,'press de banca inclinada con mancuernas','El press de banca inclinado con mancuernas es un ejercicio altamente efectivo para fortalecer y desarrollar los músculos del pecho y los hombros.','Sientese en un banco inclinado con la espalda apoyada,manteniendo el cuerpo rígido\n ,sostenga las mancuernas con las palmas de la mano boca a bajo en un agarre pronado','Levante las mancuernas hasta que los brazos estén casi estirados.\n Baje las mancuernas lentamente hasta la altura del pectoral y repita el movimiento','Con una inclinación de 30 a 40 grados del respaldo del asiento en relacioh al suelo, el pecotral superior \n se utilizara de forma más eficaz',1,'2024-03-08 03:49:28',NULL),(2,'El press de banca plano con barra','El press de banca plano con barra es uno de los ejercicios más populares en el \nentrenamiento de fuerza. No solo contribuye a mejoras físicas, sino también a resultados estéticos y armónicos. Además,\n es un ejercicio completo para trabajar la parte superior del cuerpo, involucrando no solo la musculatura del pecho,\n sino también los hombros y tríceps, entre otros.','se acostará en un banco recto con la espalda apoyada,manteniendo el cuerpo rígido. Sostenga la barra con la palma de la mano\n hacia arriba, en un agarre pronado, la distancia entre las manos debe ser un poco mayor que la distancia entre sus hombros.','Levante la barra hasta que los brazos  este casi\n estirados. Baje la barra lentamente hasta la altura del pectoral y repita el movimiento','Ejecutar el movimiento con un agarre m\'as abierto minimiza la constribución del trícep y del\n énfasis en el pectoral',1,'2024-03-08 03:49:28',NULL),(3,'Curl de bícepd con barra','El curl con barra se enfoca en el desarrollo de los bíceps, específicamente la cabeza larga y corta.','Párate de pie con los pies separados al ancho de los hombros,posteriormente sujeta una barra con un agarre a la anchura de los hombros.\nMantén los brazos extendidos hacia abajo y las rodillas ligeramente flexionadas.','Arquea los brazos hacia arriba, elevando la barra todo lo que puedas.\nMantén los codos inmóviles y pegados al cuerpo','Mueve el cuerpo lo menos posible para maximizar el beneficio del ejercicio.',3,'2024-03-08 03:49:28',NULL),(4,'curl de bíceps alterno con mancuernas sentado','El curl de bíceps alterno se enfoca en trabajar los bíceps de forma específica; se centra en un solo grupo muscular.','Siéntate en un banco con respaldo y toma una mancuerna en cada mano;mantén los \nbrazos extendidos a lo largo del cuerpo con las palmas de las manos enfrentadas (agarre semipronado).','Sin mover el pecho, eleva una mancuerna flexionando el antebrazo.\nDurante el movimiento, rota la muñeca hacia afuera hasta que la mano esté en posición supina y recta.\nContrae el bíceps y luego vuelve lentamente a la posición inicial','Mantén los codos hacia atrás para optimizar el trabajo muscular y mejorar el volumen y la fuerza del bíceps.',3,'2024-03-08 03:49:28',NULL),(5,'Sentadilla con barra','Las sentadillas con barra se centran en el desarrollo del tren inferior, específicamente los glúteos, cuádriceps y músculos posteriores de la cadera.','Separa levemente tus piernas, asegurándote de que estén al mismo nivel que tus hombros.\nLa planta de los pies debe estar unos 30 grados hacia afuera.\nBaja tu cuerpo como si estuvieras sentado en una silla, manteniendo la espalda recta.','Dobla las rodillas en ángulo recto mientras bajas el cuerpo.\nMantén la espalda recta durante todo el movimiento.\nEstira las piernas para regresar a la posición inicial','El peso de la barra debe caer en la parte media del pie (ni muy a la punta ni muy al talón).',7,'2024-03-08 03:49:28',NULL),(6,'Zancada con mancuerna','Las zancadas con mancuernas son un ejercicio unilateral de fuerza que se enfoca en la zona inferior del cuerpo, es decir, las piernas.','Párate derecho, con los pies separados al ancho de las caderas y las mancuernas en cada mano.\nMantén la espalda recta y los hombros relajados.','Da un paso hacia adelante con una pierna, flexionando la rodilla hasta que forme un ángulo de 90 grados.\nLa rodilla trasera debe acercarse al suelo sin tocarlo.\nEmpuja con la pierna delantera para volver a la posición inicial','Mantén el equilibrio y la estabilidad durante todo el movimiento.',7,'2024-03-08 03:49:28',NULL),(7,'Press sentado con mancuerna','El press de hombros sentado con mancuernas se centra en el desarrollo de los deltoides.','Siéntate en un banco con la espalda bien recta y apoyada en el respaldo.\nTensa la zona abdominal para ganar estabilidad.\nSujeta una mancuerna en cada mano con las palmas mirando hacia adelante.','leva las mancuernas desde la altura de los hombros hasta estirar los brazos hacia arriba, verticalmente.\nMantén la espalda recta durante todo el movimiento.\nEspira al finalizar el movimiento mientras desciendes las mancuernas a la posición inicial.','Elige un peso adecuado que te permita subir empujando con los brazos mientras concentras la fuerza en los hombros.',2,'2024-03-08 04:27:11',NULL),(8,'Remo vertical con barra','El remo vertical con barra es uno de los mejores ejercicios para desarrollar la musculatura de la espalda y los hombros.','Párate frente a una barra cargada con los pies separados a la altura de los hombros. Agáchate y agarra la barra como lo harías en un peso muerto.\nMantén la espalda recta y paralela al suelo.','Eleva la barra de forma lenta y controlada, flexionando los codos hacia afuera hasta que estén nivelados con los hombros.\nRealiza una pausa en la parte alta del ejercicio antes de bajar la barra.','Mantén el core y los glúteos contraídos para evitar balanceos y proteger la zona lumbar.',2,'2024-03-08 04:27:11',NULL),(9,'Planca abdominal','La plancha abdominal es un ejercicio isométrico que fortalece el tronco y la zona lumbar.','Coloca una esterilla en el suelo.Túmbate boca abajo y apoya el peso del cuerpo sobre los antebrazos.Los codos deben estar alineados con los hombros.\nApoya los dedos de los pies en el suelo.','Mantén los brazos flexionados, hacia fuera y bien rectos. \nAprieta los omóplatos y extiende la espalda para que el cuerpo quede completamente erguido o paralelo al suelo.\nPresiona los muslos hacia arriba mientras estiras los talones. \nMantén esta posición durante el tiempo deseado (generalmente de 20 a 60 segundos).','Evita bajar o subir la cadera en exceso. Mantén el cuerpo alineado.',4,'2024-03-08 04:27:11',NULL);
/*!40000 ALTER TABLE `workouts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-12 13:51:47
