-- -------------------------------------------------------------
-- TablePlus 3.12.8(368)
--
-- https://tableplus.com/
--
-- Database: laravel
-- Generation Time: 2021-06-03 15:33:28.9240
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `annonces` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `professorID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professor_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matieres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `professorID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `studentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `professors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` longtext COLLATE utf8mb4_unicode_ci,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `matieres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information_bancaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annoncesID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `cours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en attente',
  `commentaires` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pas encore de commantaire',
  `historique_cours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pas de cours actuellement',
  `historique_paiement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pas de paiement actuellement',
  `archives_conversation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pas de message encore',
  `rating` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `ratings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userID` int NOT NULL,
  `professorID` int NOT NULL,
  `rating` int NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` longtext COLLATE utf8mb4_unicode_ci,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information_bancaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hobby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commentaires` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `historique_cours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `historique_paiement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archives_conversation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `facebookID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(44, '2014_10_12_000000_create_users_table', 2),
(45, '2021_05_18_152553_create_students_table', 2),
(46, '2021_05_19_083937_create_professors_table', 2),
(47, '2021_05_19_131651_create_annonces_table', 2),
(48, '2021_05_25_143349_create_comments_table', 2),
(49, '2021_05_26_072113_create_ratings_table', 2);

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0209ee18342ff1fa550cd08c07927cbf0b05733df33987621769fd9bafd53de2bea191a42f6d07de', 21, 3, 'API Token', '[]', 0, '2021-06-02 12:53:46', '2021-06-02 12:53:46', '2022-06-02 12:53:46'),
('0d3af8f167a5204cb04264bc2ee99c7ad809c8d1a22f46e13ab9a4b8e01b576e12f69cd3c05b9661', 2, 3, 'API Token', '[]', 0, '2021-06-03 13:32:35', '2021-06-03 13:32:35', '2022-06-03 13:32:35'),
('0ea26a1407cce437775214ab08acae4c598dba52408802e1b5287101d86be0c78dcda6cb2556746d', 21, 3, 'API Token', '[]', 0, '2021-06-02 08:32:19', '2021-06-02 08:32:19', '2022-06-02 08:32:19'),
('11a8e942c330595427b82c04084e752b2a6af7d547d8d2ae47fd44e8cda39a67479a2b097f7d6307', 2, 3, 'API Token', '[]', 0, '2021-06-03 13:32:25', '2021-06-03 13:32:25', '2022-06-03 13:32:25'),
('452ede63e45ba6768fd9208bc9ed60d884a8c3e9867b01c9b0db367e489ce9affd0edebd3f563d10', 1, 3, 'API Token', '[]', 0, '2021-06-03 13:30:33', '2021-06-03 13:30:33', '2022-06-03 13:30:33'),
('5e7bb3bbebb94798fc1a5e82a2d82dc11bf77c982cc177dc0906d9b4a40e8cb49906e720ae32677f', 21, 3, 'API Token', '[]', 0, '2021-06-02 08:32:15', '2021-06-02 08:32:15', '2022-06-02 08:32:15'),
('87ea3ade584f584ac530bbfa27244da79075bc96bb483b5eff3b16499793f33b9484079f5b04c5b7', 22, 3, 'API Token', '[]', 0, '2021-06-02 15:20:31', '2021-06-02 15:20:31', '2022-06-02 15:20:31'),
('e3481e945f14cae82c67d6b520e3e2f506ce032b9f427a772a1f4fbe40310c8b7d88ee0ba3a25080', 22, 3, 'API Token', '[]', 0, '2021-06-02 15:20:18', '2021-06-02 15:20:18', '2022-06-02 15:20:18'),
('f7010728145629c0c57375cd837c0aaed781d1d4ee714f02846a1c3f64367dcfd351f69627d25286', 1, 3, 'API Token', '[]', 0, '2021-06-03 13:30:28', '2021-06-03 13:30:28', '2022-06-03 13:30:28'),
('fede0687d4ce8c3316f03a0aa7d48b564de624269368170db1430fb3187f76d4faa02cbeebcc390c', 21, 3, 'API Token', '[]', 0, '2021-06-02 13:03:51', '2021-06-02 13:03:51', '2022-06-02 13:03:51');

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'K7Jd3YwQcEOyuT6xyiuEvIhFGblMCYGnmJsZIsDf', NULL, 'http://localhost', 1, 0, 0, '2021-05-24 16:11:41', '2021-05-24 16:11:41'),
(2, NULL, 'Laravel Password Grant Client', 'kBpWs2aMrHYJAqdrYhoPfVBZvfPoJWDfqLr5rC6a', 'users', 'http://localhost', 0, 1, 0, '2021-05-24 16:11:41', '2021-05-24 16:11:41'),
(3, NULL, 'Laravel Personal Access Client', 'TYOESfqXaOdaUhhqL8MAnfgxQXuMRNK4eQfXij6c', NULL, 'http://localhost', 1, 0, 0, '2021-05-24 16:11:56', '2021-05-24 16:11:56'),
(4, NULL, 'Laravel Password Grant Client', 'NyY8O9eB4OgvSZJiotq2kjMKmOiSY1O7TXZCK08d', 'users', 'http://localhost', 0, 1, 0, '2021-05-24 16:11:56', '2021-05-24 16:11:56');

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-24 16:11:41', '2021-05-24 16:11:41'),
(2, 3, '2021-05-24 16:11:56', '2021-05-24 16:11:56');

INSERT INTO `professors` (`id`, `userID`, `avatar`, `firstname`, `lastname`, `age`, `adresse`, `phone`, `matieres`, `description`, `information_bancaire`, `annoncesID`, `cours`, `commentaires`, `historique_cours`, `historique_paiement`, `archives_conversation`, `rating`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 'Ulysse', 'Lacour', '9', '1234567890', '1234567890', 'Matieres', 'Description', 'LA MOULAGA', '1', 'en attente', 'pas encore de commantaire', 'pas de cours actuellement', 'pas de paiement actuellement', 'pas de message encore', NULL, '2021-06-03 13:30:52', '2021-06-03 13:30:52');

INSERT INTO `users` (`id`, `facebookID`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'NONE', 'admin', 'admin@gmail.com', NULL, '$2y$10$SEQOXHYpeXCYSTNiJptWRudtFXqxTrTf.CQ0iIfVCKzg4eMKxUIDi', NULL, '2021-06-03 13:32:25', '2021-06-03 13:32:25');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;