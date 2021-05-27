-- -------------------------------------------------------------
-- TablePlus 3.12.8(368)
--
-- https://tableplus.com/
--
-- Database: laravel
-- Generation Time: 2021-05-27 14:57:24.3640
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
  `matieres` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `comments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `professorID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `commentaires` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pas encore de commantaire',
  `historique_cours` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pas de cours actuellement',
  `historique_paiement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pas de paiement actuellement',
  `archives_conversation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pas de message encore',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(21, '2021_05_19_131651_create_annonces_table', 2),
(22, '2021_05_25_143349_create_comments_table', 2),
(23, '2014_10_12_000000_create_users_table', 3),
(27, '2021_05_18_152553_create_students_table', 4),
(28, '2021_05_19_083937_create_professors_table', 4);

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0595ddf96bcfce1359169fe6ec320c4c0ee15b760671d8c21eb9249d681004628d34ebef8540b3ab', 2, 3, 'API Token', '[]', 0, '2021-05-27 07:38:33', '2021-05-27 07:38:33', '2022-05-27 07:38:33'),
('0b12f5fe531628d97c15f0d2a33bdcde6b93e62ce440b49f5ae30f6fe465708424336c26c6d58d9b', 5, 3, 'API Token', '[]', 0, '2021-05-24 18:14:40', '2021-05-24 18:14:40', '2022-05-24 18:14:40'),
('0be95fe6b519855861bb4689e107a92de356903fec79193945195faa8b2204a93f132b766477a478', 1, 3, 'API Token', '[]', 0, '2021-05-26 14:39:07', '2021-05-26 14:39:07', '2022-05-26 14:39:07'),
('1dc87a67c04a34c1d67c90c1ded6df75e3a3a864851085db71efbb7bd243be09bcb77eaa97a394a8', 1, 3, 'API Token', '[]', 0, '2021-05-26 14:33:45', '2021-05-26 14:33:45', '2022-05-26 14:33:45'),
('222d73fce96171e864b02ff844754c592cf8b922a00be1e23f82b3313a6d632e27c564ed4f681df1', 5, 3, 'API Token', '[]', 0, '2021-05-24 18:14:14', '2021-05-24 18:14:14', '2022-05-24 18:14:14'),
('25954d100d3707f7876cba839733a1e9094cb7a4f89c0bcdc24e44997407a77599f5fbd7badb7c0f', 4, 3, 'API Token', '[]', 0, '2021-05-24 16:12:44', '2021-05-24 16:12:44', '2022-05-24 16:12:44'),
('2c6a4293534ead82cf0da0b67f7a971de5eef1f3e8de203695d270ef19c8437cc9c000a6beae30c5', 1, 3, 'API Token', '[]', 0, '2021-05-27 09:09:01', '2021-05-27 09:09:01', '2022-05-27 09:09:01'),
('33e34a3637ca71a30e3a00a62d6f42db41588ef7ac58f4cb8dafcb021ad3cfb87fa9ae29fb895dc4', 10, 3, 'API Token', '[]', 0, '2021-05-25 14:55:13', '2021-05-25 14:55:13', '2022-05-25 14:55:13'),
('4293980e2dc8c480b7e0f8bd7a8bcbfba3583d74a04a7a5f38ae3000dc4149d1a79b5d5939ca3293', 15, 3, 'API Token', '[]', 0, '2021-05-26 09:23:33', '2021-05-26 09:23:33', '2022-05-26 09:23:33'),
('569539286021dca331a6ea29d3ace599ea78e3f86ec85fdbe99174b864857d86a85fdd90b6ee836b', 10, 3, 'API Token', '[]', 0, '2021-05-26 10:08:54', '2021-05-26 10:08:54', '2022-05-26 10:08:54'),
('59125e0101f084b7de02e9e566f6bb258e1e3b96156184e603eef559926bf22ea903aa00d98621e4', 7, 3, 'API Token', '[]', 0, '2021-05-24 19:06:04', '2021-05-24 19:06:04', '2022-05-24 19:06:04'),
('62d089521bbabd4c373c744a4f370a3e861663faa218d479d3e9d090332cf1ae50ec43f3c890672d', 12, 3, 'API Token', '[]', 0, '2021-05-25 09:13:09', '2021-05-25 09:13:09', '2022-05-25 09:13:09'),
('647630213b779bd6d8783653fe0858399a8dfcf0520ffb5455171d6feebed016220d685e4b7ccbf2', 2, 3, 'API Token', '[]', 0, '2021-05-24 20:17:23', '2021-05-24 20:17:23', '2022-05-24 20:17:23'),
('66c8f754f56bafae30c967e2c6d2e0614be11e2e30d07c960860421951463cb615efc646b947ebb1', 13, 3, 'API Token', '[]', 0, '2021-05-26 14:08:12', '2021-05-26 14:08:12', '2022-05-26 14:08:12'),
('67b909da2cacbbbff02de3cc5f381b6181b58967f6ecd63eb349c30fc6c73f1c11a145d49f78f948', 14, 3, 'API Token', '[]', 0, '2021-05-25 10:21:51', '2021-05-25 10:21:51', '2022-05-25 10:21:51'),
('6c27da63d90ba2f471b9252d8d6222c1859f150b3cf6551e1a4d4264bd1781d3500bd43f4d10c59b', 1, 3, 'API Token', '[]', 0, '2021-05-26 14:39:19', '2021-05-26 14:39:19', '2022-05-26 14:39:19'),
('7486553ce5e9c4bdf1e37a91819c71620ef593f4853a1f233b4bb197d6f12f522fba6fe60bc97917', 15, 3, 'API Token', '[]', 0, '2021-05-26 09:22:21', '2021-05-26 09:22:21', '2022-05-26 09:22:21'),
('7ae10cfd5d82aa8c78ce06b7d8abd89bd8c19f9de93c04009a09f05ab3da0acff820757948119098', 13, 3, 'API Token', '[]', 0, '2021-05-25 09:21:05', '2021-05-25 09:21:05', '2022-05-25 09:21:05'),
('82223d994faf370f52701f9df1f43785468d20e978d398314062bc6b1acb7d51c2b214a44e71acbe', 1, 3, 'API Token', '[]', 0, '2021-05-27 09:08:41', '2021-05-27 09:08:41', '2022-05-27 09:08:41'),
('8f554c3f77f79fcfbf9b3f5834647d39ab3878d7d6c8a2575f50a6ffd0141ca3073ff3f83b4671a2', 11, 3, 'API Token', '[]', 0, '2021-05-25 08:41:32', '2021-05-25 08:41:32', '2022-05-25 08:41:32'),
('8fdb6389520014ca81186fee9a8552b7feae71af232be96d4770b7bf31c8e9634cad5900c0ba135e', 4, 3, 'API Token', '[]', 0, '2021-05-24 16:12:42', '2021-05-24 16:12:42', '2022-05-24 16:12:42'),
('947e1df206ba3883b1498694c962056ac06fbee35d267d7bce55ba0d6289912364673158eb47f725', 1, 3, 'API Token', '[]', 0, '2021-05-26 14:33:31', '2021-05-26 14:33:31', '2022-05-26 14:33:31'),
('961fd71975b0578f3fb20ad77dec5838b7ffbff8e953a8cd36cc082426d801bc5c3202d10e78d141', 8, 3, 'API Token', '[]', 0, '2021-05-24 19:11:55', '2021-05-24 19:11:55', '2022-05-24 19:11:55'),
('9ef5ae1412ef990aa75b952530966bc298476c305e5fe5168076d61f0f2ff17a75a0a1b8fa1e1f99', 14, 3, 'API Token', '[]', 0, '2021-05-25 10:21:59', '2021-05-25 10:21:59', '2022-05-25 10:21:59'),
('a9b10fea9959192ad596225a41be486dac5b08bc1fcf59114b14c727fc55907eed26a32006a5f8f3', 9, 3, 'API Token', '[]', 0, '2021-05-24 20:16:16', '2021-05-24 20:16:16', '2022-05-24 20:16:16'),
('b1ca5d7d70068dc83b7171089f04ba08dff55a98362d7d6040ddb325f0c76417585b30a6c68e72b3', 6, 3, 'API Token', '[]', 0, '2021-05-24 19:04:49', '2021-05-24 19:04:49', '2022-05-24 19:04:49'),
('b6ff01e582ce5f55bd578873cb2b24887fa98ca76a46bfd92cd42657c4da9112da34e368018a4059', 8, 3, 'API Token', '[]', 0, '2021-05-24 19:12:03', '2021-05-24 19:12:03', '2022-05-24 19:12:03'),
('bab7118b21a2d25eebf6a439d9afaaa7033153c23831045ba2656214a0d12583475129b5a434c1f2', 10, 3, 'API Token', '[]', 0, '2021-05-24 20:40:28', '2021-05-24 20:40:28', '2022-05-24 20:40:28'),
('ce1cf78938360405df5d1e8b2e58b0958a0b7614ed0120f6da90c6d2bda9c260bc0de5a61c87ff70', 10, 3, 'API Token', '[]', 0, '2021-05-24 20:40:22', '2021-05-24 20:40:22', '2022-05-24 20:40:22'),
('db303ee098e49f8a549dd56b2a4e027a6aae96da3aa0b3b48a08e9090a3e61e6175d39d2d112c186', 8, 3, 'API Token', '[]', 0, '2021-05-24 19:12:52', '2021-05-24 19:12:52', '2022-05-24 19:12:52'),
('dd3eca9bea09645037ad7ff70651ae4f6e40939a2d87592556f12f31ebb81d80538c6d703f6a992e', 10, 3, 'API Token', '[]', 0, '2021-05-26 08:09:18', '2021-05-26 08:09:18', '2022-05-26 08:09:18'),
('e3ea23152b085df051c536b3b36b0aa1e5213437c56053760c84ed41b7f9781384bda92262cfe4c2', 13, 3, 'API Token', '[]', 0, '2021-05-25 09:20:59', '2021-05-25 09:20:59', '2022-05-25 09:20:59'),
('e9e3f481c2371be1a4cdabda90e72c7e4e0dfc31de53154048b2d6ea1a8200e1a8c5466d75ef9362', 2, 3, 'API Token', '[]', 0, '2021-05-27 07:38:19', '2021-05-27 07:38:19', '2022-05-27 07:38:19');

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'K7Jd3YwQcEOyuT6xyiuEvIhFGblMCYGnmJsZIsDf', NULL, 'http://localhost', 1, 0, 0, '2021-05-24 16:11:41', '2021-05-24 16:11:41'),
(2, NULL, 'Laravel Password Grant Client', 'kBpWs2aMrHYJAqdrYhoPfVBZvfPoJWDfqLr5rC6a', 'users', 'http://localhost', 0, 1, 0, '2021-05-24 16:11:41', '2021-05-24 16:11:41'),
(3, NULL, 'Laravel Personal Access Client', 'TYOESfqXaOdaUhhqL8MAnfgxQXuMRNK4eQfXij6c', NULL, 'http://localhost', 1, 0, 0, '2021-05-24 16:11:56', '2021-05-24 16:11:56'),
(4, NULL, 'Laravel Password Grant Client', 'NyY8O9eB4OgvSZJiotq2kjMKmOiSY1O7TXZCK08d', 'users', 'http://localhost', 0, 1, 0, '2021-05-24 16:11:56', '2021-05-24 16:11:56');

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-24 16:11:41', '2021-05-24 16:11:41'),
(2, 3, '2021-05-24 16:11:56', '2021-05-24 16:11:56');

INSERT INTO `professors` (`id`, `userID`, `avatar`, `firstname`, `lastname`, `age`, `adresse`, `phone`, `matieres`, `description`, `information_bancaire`, `annoncesID`, `cours`, `notes`, `commentaires`, `historique_cours`, `historique_paiement`, `archives_conversation`, `created_at`, `updated_at`) VALUES
(1, '1', NULL, 'Ulysse', 'Lacour', '25', '1234567890', '1234567890', 'TATATATA', 'TATATATA', 'LA MOULAGA', '1', 'en attente', 'none', 'pas encore de commantaire', 'pas de cours actuellement', 'pas de paiement actuellement', 'pas de message encore', '2021-05-27 10:31:06', '2021-05-27 10:31:06');

INSERT INTO `students` (`id`, `userID`, `firstname`, `lastname`, `avatar`, `age`, `adresse`, `phone`, `description`, `information_bancaire`, `cours`, `hobby`, `commentaires`, `historique_cours`, `historique_paiement`, `archives_conversation`, `created_at`, `updated_at`) VALUES
(1, '1', 'Ulysse', 'Lacour', NULL, '25', '1234567890', '1234567890', 'TATATATA', 'TOTOTOTO', NULL, 'YOLO', NULL, NULL, NULL, NULL, '2021-05-27 10:30:36', '2021-05-27 10:30:36');

INSERT INTO `users` (`id`, `facebookID`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1', 'Ulysse El Jovial', 'ulysselejovial@gmail.com', NULL, '$2y$10$tUMWIYWkOfqqV9GBROKD5.uJPPn58yKBqe1gU.CsEHjw9Rw97AtyC', NULL, '2021-05-27 09:08:41', '2021-05-27 09:08:41');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;