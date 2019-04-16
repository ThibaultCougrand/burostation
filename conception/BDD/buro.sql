-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 15 avr. 2019 à 13:53
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `buro`
--

-- --------------------------------------------------------

--
-- Structure de la table `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `sct_id` int(11) DEFAULT NULL,
  `act_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `activity`
--

INSERT INTO `activity` (`id`, `sct_id`, `act_name`) VALUES
(1, 2, 'Développement d\'application'),
(2, 2, 'Maintenance'),
(3, 3, 'Réseaux'),
(5, 13, 'Pédiatrie'),
(6, 13, 'Chirurgie'),
(7, 2, 'Developpeur'),
(13, 3, 'Ingénieur'),
(17, 13, 'Gynécologue'),
(65, 4, 'Technicien en automatisme'),
(66, 3, 'Technicien fibre optique'),
(67, 4, 'Télévendeur en matériel électronique'),
(68, 4, 'Ascensoriste'),
(69, 4, 'Automaticien'),
(70, 4, 'Contrôleur en électricité et électronique'),
(71, 2, 'Électricien électronicien automobile'),
(72, 2, 'Électronicien de l’armée de l’air');

-- --------------------------------------------------------

--
-- Structure de la table `activity_related`
--

CREATE TABLE `activity_related` (
  `id` int(11) NOT NULL,
  `act_rlt_tp_id` int(11) DEFAULT NULL,
  `act_rlt_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `activity_related`
--

INSERT INTO `activity_related` (`id`, `act_rlt_tp_id`, `act_rlt_name`) VALUES
(1, 3, 'Basket'),
(2, 3, 'Foot-ball'),
(3, 3, 'Rugby'),
(4, 3, 'Badminton'),
(5, 3, 'Beach Volley'),
(6, 3, 'Jetski'),
(7, 3, 'Boxe américaine'),
(8, 3, 'Boxe thaïlandaise'),
(9, 3, 'Karaté'),
(10, 5, 'Science'),
(11, 5, 'Informatique'),
(12, 5, 'Politique'),
(13, 5, 'Communication'),
(14, 5, 'BTP');

-- --------------------------------------------------------

--
-- Structure de la table `activity_related_type`
--

CREATE TABLE `activity_related_type` (
  `id` int(11) NOT NULL,
  `act_rlt_tp_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `activity_related_type`
--

INSERT INTO `activity_related_type` (`id`, `act_rlt_tp_name`) VALUES
(3, 'Sport'),
(5, 'Etude');

-- --------------------------------------------------------

--
-- Structure de la table `building`
--

CREATE TABLE `building` (
  `id` int(11) NOT NULL,
  `bld_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bld_desc` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `building`
--

INSERT INTO `building` (`id`, `bld_name`, `bld_desc`) VALUES
(1, 'Bâtiment Techno', NULL),
(4, 'Bat3', 'description 3'),
(5, 'Bat3', 'Description du batiment 3'),
(6, 'Batiment Versailles', 'Grand bâtiment');

-- --------------------------------------------------------

--
-- Structure de la table `building_image`
--

CREATE TABLE `building_image` (
  `id` int(11) NOT NULL,
  `bld_id` int(11) DEFAULT NULL,
  `bld_img_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `building_image`
--

INSERT INTO `building_image` (`id`, `bld_id`, `bld_img_url`) VALUES
(1, 1, '/upload/building/f96bb73e3baae2f223db597956d027fc.jpeg'),
(10, 4, '/upload/building/4dbd25e1a4eec73ba61025beda51b88f.jpeg'),
(12, 6, '/upload/building/ca8fa4a0c880d4eee350d9e42ccd5d93.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `cms_page` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cms_title` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cms_content` text COLLATE utf8_unicode_ci,
  `cms_date_create` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `cms`
--

INSERT INTO `cms` (`id`, `cms_page`, `cms_title`, `cms_content`, `cms_date_create`) VALUES
(1, 'Page 1', 'Titre1', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">\"<b>Lorem ipsum dolor sit amet, consectetur</b> adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute <u><font color=\"#ce0000\">irure dolor</font></u> in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><br></p>', '2017-08-21 07:11:16'),
(4, 'Page2', 'Titre2', 'Contenu', '2017-08-24 10:00:24');

-- --------------------------------------------------------

--
-- Structure de la table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `fld_id` int(11) DEFAULT NULL,
  `file_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `file`
--

INSERT INTO `file` (`id`, `fld_id`, `file_name`, `file_ext`) VALUES
(1, 3, 'ios10appessentialspreview', 'pdf');

-- --------------------------------------------------------

--
-- Structure de la table `folder`
--

CREATE TABLE `folder` (
  `id` int(11) NOT NULL,
  `fld_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fld_path` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fld_cat` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `folder`
--

INSERT INTO `folder` (`id`, `fld_name`, `fld_path`, `fld_cat`) VALUES
(2, 'dossier', '/upload/share/', 'catég 1'),
(3, 'Docnics', '/upload/share/', 'Catégorie nics');

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id` int(11) NOT NULL,
  `grp_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `grp_adress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grp_desc` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grp_nbr_pers` int(11) DEFAULT NULL,
  `grp_nbr_pers_max` int(11) DEFAULT NULL,
  `grp_date_dispo` datetime DEFAULT NULL,
  `grp_progress` double DEFAULT NULL,
  `grp_lat` decimal(10,6) DEFAULT NULL,
  `grp_lng` decimal(10,6) DEFAULT NULL,
  `grp_ville` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grp_is_new` tinyint(1) DEFAULT NULL,
  `grp_date_create` datetime DEFAULT NULL,
  `sct_id` int(11) DEFAULT NULL,
  `grp_area` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `grp_name`, `grp_adress`, `grp_desc`, `grp_nbr_pers`, `grp_nbr_pers_max`, `grp_date_dispo`, `grp_progress`, `grp_lat`, `grp_lng`, `grp_ville`, `grp_is_new`, `grp_date_create`, `sct_id`, `grp_area`) VALUES
(4, 'Groupe WEB', '65245 Boulevard de la Belleville', NULL, 15, 40, '2017-09-07 11:59:00', 37.5, '50.629250', '3.057256', 'Lille, France', 1, '2017-08-14 00:00:00', 4, 1500),
(6, 'GCC', NULL, 'One More Like, agence de communication spécialisée dans les réseaux sociaux recherche téléprospecteur indépendant pour développement commercial en B to B (auprès des TPE et PME). L\'objectif étant de faire de la prospection téléphonique auprès des ...', 9, 15, '2017-08-31 14:25:00', 60, '49.282729', '-123.120738', 'Vancouver, BC, Canada', 1, '2017-08-21 11:43:33', 3, NULL),
(7, 'Groupama', 'Lille', 'Description Groupama', 15, 15, '2017-08-25 19:53:00', 100, '48.856614', '2.352222', 'Paris, France', 1, '2017-08-24 16:53:50', 2, 6400);

-- --------------------------------------------------------

--
-- Structure de la table `groupe_space`
--

CREATE TABLE `groupe_space` (
  `spc_id` int(11) NOT NULL,
  `grp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `groupe_space`
--

INSERT INTO `groupe_space` (`spc_id`, `grp_id`) VALUES
(4, 4),
(4, 6),
(5, 6),
(5, 7);

-- --------------------------------------------------------

--
-- Structure de la table `group_image`
--

CREATE TABLE `group_image` (
  `id` int(11) NOT NULL,
  `grp_id` int(11) DEFAULT NULL,
  `grp_img_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `group_image`
--

INSERT INTO `group_image` (`id`, `grp_id`, `grp_img_url`) VALUES
(3, 4, '/upload/groupe/be9c7a228e1e608ca6f4c8079bde3e49.jpeg'),
(5, 6, '/upload/groupe/4aadd1b3ef7b25d1f2cb6fb1dcfc187a.jpeg'),
(6, 7, '/upload/groupe/8903e2eae4754b2c0221c7761ac89d37.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `usr_id` int(11) DEFAULT NULL,
  `spc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `history`
--

INSERT INTO `history` (`id`, `usr_id`, `spc_id`) VALUES
(1, 3, 10),
(5, 2, 4),
(6, 2, 5),
(10, 5, 13),
(11, 3, 13),
(12, 3, 13),
(13, 3, 10),
(14, 3, 13),
(15, 3, 13),
(16, 3, 13),
(17, 3, 10),
(18, 3, 10),
(19, 3, 10),
(20, 3, 10),
(21, 3, 10),
(22, 3, 10),
(23, 3, 10),
(24, 3, 10),
(25, 3, 12),
(26, 3, 12),
(27, 3, 10),
(28, 4, 13),
(29, 4, 13),
(30, 3, 10),
(31, 3, 10),
(32, 3, 12),
(33, 3, 12),
(34, 4, 13),
(35, 7, 10),
(36, 7, 12),
(37, 7, 13),
(38, 7, 12),
(39, 3, 10),
(40, 3, 10),
(41, 4, 13),
(43, 3, 10),
(44, 3, 12),
(45, 3, 10),
(46, 3, 14),
(50, 7, 4),
(51, 7, 4),
(52, 7, 4),
(53, 7, 4),
(54, 7, 4),
(55, 7, 4),
(56, 7, 4),
(57, 7, 12),
(58, 7, 12),
(59, 7, 12),
(60, 7, 12),
(61, 7, 4),
(62, 7, 10),
(63, 5, 10),
(64, 5, 4),
(65, 7, 4),
(66, 7, 4),
(67, 7, 4),
(68, 3, 12),
(69, 3, 12),
(70, 3, 13),
(71, 3, 4),
(72, 3, 10),
(73, 3, 10),
(74, 3, 12),
(75, 4, 10),
(76, 3, 14),
(77, 4, 12),
(78, 4, 10),
(79, 5, 10),
(80, 5, 12),
(81, 5, 10),
(82, 5, 10),
(83, 5, 10),
(87, 7, 4),
(88, 7, 5),
(89, 7, 5),
(92, 3, 10),
(93, 7, 4),
(94, 7, 14),
(95, 7, 12),
(96, 7, 10),
(97, 7, 10),
(98, 7, 10),
(99, 7, 10),
(100, 7, 10),
(101, 7, 10),
(104, 7, 10),
(105, 3, 10),
(106, 3, 10),
(107, 3, 10),
(108, 7, 10),
(109, 4, 4),
(110, 4, 5),
(111, 7, 10),
(112, 7, 5),
(113, 3, 10),
(114, 3, 10),
(115, 3, 10),
(116, 3, 10),
(117, 3, 4),
(118, 3, 10),
(119, 3, 10),
(120, 3, 10),
(121, 3, 10),
(122, 3, 10),
(123, 3, 10),
(124, 2, 4),
(125, 3, 10),
(126, 7, 10),
(127, 7, 10),
(128, 7, NULL),
(129, 7, NULL),
(130, 3, 4),
(131, 7, NULL),
(132, 7, NULL),
(133, 3, 4),
(134, 3, 4),
(135, 3, 4),
(136, 3, 4),
(137, 3, 4),
(138, 3, 4),
(139, 7, 4),
(140, 3, 4),
(141, 7, 5),
(142, 3, 4),
(143, 3, 10),
(144, 3, 4),
(145, 7, 5),
(146, 7, NULL),
(147, 7, NULL),
(148, 7, NULL),
(149, 7, 4),
(150, 7, NULL),
(151, 3, 4),
(152, 3, 10),
(153, 3, 10),
(154, 3, 4),
(155, 3, 4),
(156, 3, 4),
(157, 7, NULL),
(158, 7, NULL),
(159, 3, 4),
(160, 3, 4),
(161, 3, 4),
(162, 3, 4),
(163, 7, NULL),
(164, 7, NULL),
(165, 3, 4),
(166, 3, 4),
(167, 3, 4),
(168, 3, 4),
(169, 3, 4),
(170, 3, 4),
(171, 3, 4),
(172, 3, 4),
(173, 3, 4),
(174, 3, 14),
(175, 3, 4),
(176, 3, 4),
(177, 3, 14),
(178, 3, 14),
(179, 3, 12),
(180, 3, 12),
(181, 3, 12),
(182, 4, 5),
(183, 4, 5),
(184, 4, 5),
(185, 4, 5),
(186, 4, 5),
(187, 2, 4),
(188, 2, 14),
(189, 2, 10),
(190, 3, 12),
(191, 3, 10),
(192, 4, 12),
(193, 4, 12),
(194, 3, 4),
(195, 3, 4),
(196, 3, 4),
(197, 3, 4),
(198, 3, 4),
(199, 4, 10),
(200, 3, 12),
(201, 7, NULL),
(202, 7, 10),
(203, 7, NULL),
(204, 7, NULL),
(205, 7, 10),
(206, 7, 10),
(207, 3, 5),
(208, 3, 5),
(209, 3, 5),
(210, 7, 10),
(211, 7, 10),
(212, 7, 10),
(213, 7, 10),
(214, 3, 4),
(215, 1, 5),
(216, 1, 5),
(217, 4, 4),
(218, 4, 4),
(219, 4, 4),
(220, 1, 4),
(221, 1, 10),
(222, 1, 5),
(223, 1, 4),
(224, 4, 4),
(225, 7, 4),
(226, 3, 4),
(227, 1, 13),
(228, 3, 4),
(229, 1, 4),
(230, 4, 4),
(231, 4, 5),
(232, 3, 4),
(233, 3, 5),
(234, 3, 4),
(235, 3, 4),
(236, 4, 5),
(237, 3, 4),
(238, 3, 4),
(239, 4, 5),
(240, 4, 5),
(241, 4, 5),
(242, 4, 5),
(243, 3, 4),
(244, 1, 4),
(245, 7, 4),
(246, 3, 4),
(247, 1, 4),
(248, 4, 5),
(249, 3, 4),
(250, 3, 4),
(251, 1, 4),
(252, 3, 5),
(253, 3, 5),
(254, 3, 4),
(255, 3, 4),
(256, 3, 5),
(257, 5, 5),
(258, 5, 10);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `usr_id_sender` int(11) NOT NULL,
  `usr_id_receiver` int(11) NOT NULL,
  `grp_id` int(11) NOT NULL,
  `msg_date_add` int(11) NOT NULL,
  `msg_object` varchar(255) NOT NULL,
  `msg_content` varchar(255) NOT NULL,
  `msg_is_view` tinyint(1) NOT NULL,
  `msg_is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `usr_id_sender`, `usr_id_receiver`, `grp_id`, `msg_date_add`, `msg_object`, `msg_content`, `msg_is_view`, `msg_is_deleted`) VALUES
(1, 3, 5, 0, 1504555772, '', 'salut', 0, 0),
(2, 5, 3, 0, 1504555845, '', 'cc', 0, 0),
(3, 5, 3, 0, 1504555887, '', '.', 0, 0),
(4, 5, 3, 0, 1504555891, '', '.', 0, 0),
(5, 5, 3, 0, 1504555894, '', '.', 0, 0),
(6, 5, 3, 0, 1504555896, '', '.', 0, 0),
(7, 5, 3, 0, 1504555898, '', '.', 0, 0),
(8, 5, 3, 0, 1504555920, '', 'ça va?', 0, 0),
(9, 3, 5, 0, 1504555931, '', 'yes', 0, 0),
(10, 3, 5, 0, 1504555971, '', '1', 0, 0),
(11, 3, 5, 0, 1504555972, '', '2', 0, 0),
(12, 3, 5, 0, 1504555973, '', '3', 0, 0),
(13, 3, 5, 0, 1504555974, '', '4', 0, 0),
(14, 3, 5, 0, 1504555974, '', '5', 0, 0),
(15, 3, 5, 0, 1504555976, '', '6', 0, 0),
(16, 3, 5, 0, 1504555977, '', '5', 0, 0),
(17, 3, 5, 0, 1504555977, '', '5', 0, 0),
(18, 3, 5, 0, 1504555978, '', '5', 0, 0),
(19, 3, 5, 0, 1504555978, '', '5', 0, 0),
(20, 3, 5, 0, 1504555978, '', '5', 0, 0),
(21, 3, 5, 0, 1504555979, '', '5', 0, 0),
(22, 3, 5, 0, 1504555979, '', '5', 0, 0),
(23, 3, 5, 0, 1504555979, '', '5', 0, 0),
(24, 3, 5, 0, 1504555980, '', '5', 0, 0),
(25, 3, 5, 0, 1504555980, '', '5', 0, 0),
(26, 3, 5, 0, 1504555980, '', '5', 0, 0),
(27, 3, 5, 0, 1504555980, '', '5', 0, 0),
(28, 3, 5, 0, 1504555981, '', '5', 0, 0),
(29, 3, 5, 0, 1504555981, '', '5', 0, 0),
(30, 3, 5, 0, 1504555981, '', '5', 0, 0),
(31, 3, 5, 0, 1504555982, '', '5', 0, 0),
(32, 3, 5, 0, 1504555982, '', '5', 0, 0),
(33, 3, 5, 0, 1504555982, '', '5', 0, 0),
(34, 3, 5, 0, 1504555983, '', '5', 0, 0),
(35, 3, 5, 0, 1504555983, '', '5', 0, 0),
(36, 3, 5, 0, 1504555984, '', '26', 0, 0),
(37, 3, 5, 0, 1504555986, '', '9', 0, 0),
(38, 3, 5, 0, 1504555987, '', '6', 0, 0),
(39, 3, 5, 0, 1504555988, '', '3', 0, 0),
(40, 3, 5, 0, 1504555988, '', '6', 0, 0),
(41, 3, 5, 0, 1504555989, '', '6', 0, 0),
(42, 3, 5, 0, 1504555989, '', '5', 0, 0),
(43, 3, 5, 0, 1504555990, '', '4', 0, 0),
(44, 3, 5, 0, 1504594305, '', 'hi', 0, 0),
(45, 3, 3, 0, 1504599214, '', 'p', 0, 0),
(46, 3, 3, 0, 1504599223, '', 'k', 0, 0),
(47, 3, 5, 0, 1504600505, '', 'Quoi de neuf?', 0, 0),
(48, 3, 5, 0, 1504601461, '', 'hello', 0, 0),
(49, 3, 5, 0, 1504617608, '', '.', 0, 0),
(50, 3, 5, 0, 1504617609, '', '.', 0, 0),
(51, 3, 5, 0, 1504617609, '', '.', 0, 0),
(52, 3, 5, 0, 1504617609, '', '..', 0, 0),
(53, 3, 5, 0, 1504617609, '', '.', 0, 0),
(54, 3, 5, 0, 1504617610, '', '.', 0, 0),
(55, 3, 5, 0, 1504617610, '', '.', 0, 0),
(56, 3, 5, 0, 1504617610, '', '.', 0, 0),
(57, 3, 5, 0, 1504627734, '', 'bonjour', 0, 0),
(58, 5, 3, 0, 1504627817, '', 'hello', 0, 0),
(59, 3, 3, 0, 1504700495, '', 'coucou', 0, 0),
(60, 3, 3, 0, 1504700503, '', 'klk1?', 0, 0),
(61, 3, 5, 0, 1504701452, '', '.', 0, 0),
(62, 3, 5, 0, 1504701453, '', '.', 0, 0),
(63, 3, 5, 0, 1504701454, '', '.', 0, 0),
(64, 3, 5, 0, 1504701455, '', '.', 0, 0),
(65, 3, 5, 0, 1504701456, '', '.', 0, 0),
(66, 3, 5, 0, 1504701457, '', '.', 0, 0),
(67, 4, 3, 0, 1504718574, '', 'cc', 0, 0),
(68, 3, 4, 0, 1504718641, '', 'hello', 0, 0),
(69, 3, 4, 0, 1504718658, '', 'cva', 0, 0),
(70, 4, 3, 0, 1504718784, '', 'oui', 0, 0),
(71, 4, 3, 0, 1504718854, '', 'SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSF', 0, 0),
(72, 3, 5, 0, 1504723358, '', 'bonsoir', 0, 0),
(73, 3, 4, 0, 1504723523, '', 'hello angelica', 0, 0),
(74, 5, 3, 0, 1504723587, '', 'bonsoir Stef', 0, 0),
(75, 4, 3, 0, 1504766965, '', 'salut', 0, 0),
(76, 4, 3, 0, 1504766998, '', 'Quoi de neuf? tout va bien??????????????????????????????????????????????', 0, 0),
(77, 3, 4, 0, 1504767012, '', 'Quoi de neuf? tout va bien??????????????????????????????????????????????', 0, 0),
(78, 3, 4, 0, 1504767023, '', 'Quoi de neuf? tout va bien??????????????????????????????????????????????', 0, 0),
(79, 3, 4, 0, 1504767048, '', 'LE RESTAURANT 4 « L’ATELIER PONT NEUF »', 0, 0),
(80, 5, 3, 0, 1504767279, '', 'coucou', 0, 0),
(81, 3, 4, 0, 1504767614, '', 'Quoi de neuf? tout va bien??????????????????????????????????????????????', 0, 0),
(82, 3, 4, 0, 1504767645, '', 'Teststtttt', 0, 0),
(83, 3, 5, 0, 1504771315, '', 'dsd', 0, 0),
(84, 3, 5, 0, 1504771320, '', 'ss', 0, 0),
(85, 3, 5, 0, 1504773980, '', 'ds', 0, 0),
(86, 4, 5, 0, 1504793966, '', 'Test', 0, 0),
(87, 4, 5, 0, 1504793980, '', 'Teddy', 0, 0),
(88, 3, 3, 0, 1504795053, '', '303', 0, 0),
(89, 3, 4, 0, 1504878356, '', 'cxcxcxcc', 0, 0),
(90, 3, 4, 0, 1504878526, '', 'gfg', 0, 0),
(91, 3, 4, 0, 1504878532, '', 'vhcxiu fdsfsdb fdisgfdsu ifg dsgufiqsg fiqdsgfd qdsgdf uidfdf ds', 0, 0),
(92, 5, 4, 0, 1504880118, '', 'bonjur', 0, 0),
(93, 5, 4, 0, 1504880273, '', 'hello', 0, 0),
(94, 3, 4, 0, 1504880288, '', 'fdfd', 0, 0),
(95, 5, 3, 0, 1504880367, '', 'sakut', 0, 0),
(96, 3, 5, 0, 1504880445, '', 'cc', 0, 0),
(97, 3, 5, 0, 1504880456, '', 'test', 0, 0),
(98, 5, 3, 0, 1504880460, '', 'bien recu', 0, 0),
(99, 3, 5, 0, 1504880463, '', 'ok', 0, 0),
(100, 5, 3, 0, 1504880467, '', 'merci', 0, 0),
(101, 3, 5, 0, 1504880480, '', 'hfhfdhfsd', 0, 0),
(102, 5, 3, 0, 1504880485, '', 'hahaha', 0, 0),
(103, 5, 3, 0, 1504881005, '', 'bonsoir', 0, 0),
(104, 4, 3, 0, 1504881388, '', 'cc', 0, 0),
(105, 3, 4, 0, 1504881450, '', 'test', 0, 0),
(106, 4, 3, 0, 1504881481, '', 'hello zadou', 0, 0),
(107, 3, 4, 0, 1504881491, '', 'tatata', 0, 0),
(108, 4, 3, 0, 1504881504, '', 'bisou', 0, 0),
(109, 4, 3, 0, 1504881533, '', 'quoi de neuf?', 0, 0),
(110, 4, 3, 0, 1504881547, '', 'Pour Burosta3', 0, 0),
(111, 3, 4, 0, 1504881551, '', 'OK', 0, 0),
(112, 5, 3, 0, 1504881604, '', 'Hello patrick', 0, 0),
(113, 4, 5, 0, 1504881659, '', 'cc', 0, 0),
(114, 3, 5, 0, 1504881689, '', 'fdgdh', 0, 0),
(115, 3, 5, 0, 1504881731, '', 'ok ok', 0, 0),
(116, 5, 4, 0, 1504885096, '', 'salut', 0, 0),
(117, 5, 4, 0, 1504885106, '', 't là', 0, 0),
(118, 4, 5, 0, 1504885129, '', 'Oui je suis là', 0, 0),
(119, 4, 5, 0, 1504885157, '', 'Oui je suis la', 0, 0),
(120, 4, 5, 0, 1504885225, '', 'Bisou', 0, 0),
(121, 4, 5, 0, 1505145119, '', 'Bonsoir', 0, 0),
(122, 4, 5, 0, 1505145132, '', 'Bonsoir', 0, 0),
(123, 5, 4, 0, 1505145160, '', 'bonsoir', 0, 0),
(124, 4, 5, 0, 1505145172, '', 'bien reçu', 0, 0),
(125, 5, 4, 0, 1505145174, '', 'le nem', 0, 0),
(126, 3, 5, 0, 1505462726, '', 'hello', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `office`
--

CREATE TABLE `office` (
  `id` int(11) NOT NULL,
  `ofc_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ofc_desc` text COLLATE utf8_unicode_ci,
  `ofc_adress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ofc_lng` decimal(10,6) DEFAULT NULL,
  `ofc_lat` decimal(10,6) DEFAULT NULL,
  `ofc_area` double DEFAULT NULL,
  `ofc_price` double DEFAULT NULL,
  `ofc_status` tinyint(1) DEFAULT NULL,
  `ofc_date_availability` datetime DEFAULT NULL,
  `spc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `office`
--

INSERT INTO `office` (`id`, `ofc_title`, `ofc_desc`, `ofc_adress`, `ofc_lng`, `ofc_lat`, `ofc_area`, `ofc_price`, `ofc_status`, `ofc_date_availability`, `spc_id`) VALUES
(1, 'Bureau Info Dev Mobile', NULL, NULL, '40.000000', '15.000000', 500, 15000, 1, '2017-08-24 13:01:00', 4),
(2, 'Bureau Info Dev Web', NULL, NULL, '48.000000', '155.000000', 900, 2000000, 1, '2017-08-23 13:05:00', 4),
(3, 'Takima office', 'Descubre cuáles son las Políticas de Garantía de todos nuestros productos Takima. ... y técnicas para el uso y aplicación de tus herramientas eléctricas Takima.', NULL, '-0.543823', '44.785734', 60, 75, 1, '2017-09-15 12:18:00', 12);

-- --------------------------------------------------------

--
-- Structure de la table `office_image`
--

CREATE TABLE `office_image` (
  `id` int(11) NOT NULL,
  `ofc_id` int(11) DEFAULT NULL,
  `ofc_img_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `office_image`
--

INSERT INTO `office_image` (`id`, `ofc_id`, `ofc_img_url`) VALUES
(1, 1, '/upload/office/cda67078dbecd104b4a705076c6dd48d.jpeg'),
(2, 3, '/upload/office/e7c430096a336de3ab35de0083dbabf7.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `quizz`
--

CREATE TABLE `quizz` (
  `id` int(11) NOT NULL,
  `val_tp_id` int(11) DEFAULT NULL,
  `qz_desc` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `quizz`
--

INSERT INTO `quizz` (`id`, `val_tp_id`, `qz_desc`) VALUES
(1, NULL, 'Quel pays a décidé par référendum de quitter l\'Union Européenne?'),
(3, 8, 'Q2'),
(4, 12, 'Q3');

-- --------------------------------------------------------

--
-- Structure de la table `quizz_response`
--

CREATE TABLE `quizz_response` (
  `id` int(11) NOT NULL,
  `qz_id` int(11) DEFAULT NULL,
  `qz_rsp_value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `quizz_response`
--

INSERT INTO `quizz_response` (`id`, `qz_id`, `qz_rsp_value`) VALUES
(1, 1, 'Le Royaume-Uni');

-- --------------------------------------------------------

--
-- Structure de la table `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `sct_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `sector`
--

INSERT INTO `sector` (`id`, `sct_name`) VALUES
(2, 'Informatique'),
(3, 'Télécommunication'),
(4, 'Electronique'),
(13, 'Médecine'),
(17, 'Education'),
(18, 'Commerce/Distribution'),
(19, 'Textile / Habillement / Chaussure'),
(20, 'Tourisme'),
(21, 'Transport'),
(22, 'Banque'),
(23, 'Assurance');

-- --------------------------------------------------------

--
-- Structure de la table `share`
--

CREATE TABLE `share` (
  `id` int(11) NOT NULL,
  `share_file_id` int(11) DEFAULT NULL,
  `share_user_id` int(11) DEFAULT NULL,
  `share_grp_id` int(11) DEFAULT NULL,
  `share_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_desc` text COLLATE utf8_unicode_ci,
  `share_is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `share`
--

INSERT INTO `share` (`id`, `share_file_id`, `share_user_id`, `share_grp_id`, `share_name`, `share_desc`, `share_is_group`) VALUES
(1, 1, 4, 4, 'Partage 1', 'r', 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_configuration`
--

CREATE TABLE `site_configuration` (
  `id` int(11) NOT NULL,
  `sc_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sc_value` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `site_configuration`
--

INSERT INTO `site_configuration` (`id`, `sc_key`, `sc_value`) VALUES
(1, 'phone', '+33 22 45 54 77'),
(6, 'activity-related', '10'),
(7, 'localisation', '20'),
(24, 'min-surface', '10'),
(25, 'max-surface', '1000');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `sld_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sld_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sld_order` smallint(6) DEFAULT NULL,
  `sld_image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`id`, `sld_title`, `sld_link`, `sld_order`, `sld_image_url`) VALUES
(3, 'Slide 1', NULL, 0, '/upload/slider/5823251a7412955cd016e61ad1eb2a19.jpeg'),
(4, 'Slide 2', NULL, 1, '/upload/slider/81b0bd774fc0ff5be0f46199dd29a269.jpeg'),
(7, 'slide test', 'www.slide.com', 2, '/upload/slider/3716208605701ea44c4bea1071613784.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `space`
--

CREATE TABLE `space` (
  `id` int(11) NOT NULL,
  `sp_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_desc` text COLLATE utf8_unicode_ci,
  `sp_adress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_lng` decimal(10,6) DEFAULT NULL,
  `sp_lat` decimal(10,6) DEFAULT NULL,
  `sp_area` double DEFAULT NULL,
  `sp_date_create` datetime DEFAULT NULL,
  `sp_parking` int(11) DEFAULT NULL,
  `sp_place` int(11) DEFAULT NULL,
  `sp_budget` double DEFAULT NULL,
  `sp_bail` double DEFAULT NULL,
  `sp_ville` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sp_date_project` datetime DEFAULT NULL,
  `bld_id` int(11) DEFAULT NULL,
  `sp_desc_localisation` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `space`
--

INSERT INTO `space` (`id`, `sp_title`, `sp_desc`, `sp_adress`, `sp_lng`, `sp_lat`, `sp_area`, `sp_date_create`, `sp_parking`, `sp_place`, `sp_budget`, `sp_bail`, `sp_ville`, `sp_date_project`, `bld_id`, `sp_desc_localisation`) VALUES
(4, 'Espace NET', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\"', 'Blagnac', '1.444209', '43.604652', 500, NULL, 12, 21, 10000, 13, 'Toulouse, France', '2017-09-13 10:06:00', 1, NULL),
(5, 'Espace LIVE', 'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', 'Rue Nationale', '3.057256', '50.629250', 140, NULL, 2, 15, 2000, 2000, 'Lille, France', '2017-09-12 10:07:00', 6, NULL),
(10, 'Espace Viola', 'Espace', 'Paris', '2.341461', '48.848451', 560, NULL, 23, 15, 6000, 569, NULL, '2017-09-13 10:09:00', 6, NULL),
(12, 'TAKIMA', 'Descubre cuáles son las Políticas de Garantía de todos nuestros productos Takima. ... y técnicas para el uso y aplicación de tus herramientas eléctricas Takima.', 'Le Mans', '0.212860', '47.998193', 60, NULL, 22, 25, 12, 15, NULL, '2017-09-12 10:12:00', 1, NULL),
(13, 'T1', NULL, 'Tour', '0.659180', '47.413221', 32, NULL, 23, 56, 120000, 800, NULL, NULL, NULL, NULL),
(14, 'Espace Royal', 'Grande', 'Couzeix', '1.261105', '45.833619', 350, '2017-09-07 12:44:32', 30, 200, 200, 3000, 'Limoges, France', '2017-09-16 10:12:00', 6, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `space_groupe`
--

CREATE TABLE `space_groupe` (
  `grp_id` int(11) NOT NULL,
  `spc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `space_groupe`
--

INSERT INTO `space_groupe` (`grp_id`, `spc_id`) VALUES
(4, 4),
(4, 10),
(4, 12),
(4, 13),
(6, 4),
(6, 5),
(6, 10),
(6, 12),
(6, 14),
(7, 10),
(7, 12);

-- --------------------------------------------------------

--
-- Structure de la table `space_image`
--

CREATE TABLE `space_image` (
  `id` int(11) NOT NULL,
  `sp_id` int(11) DEFAULT NULL,
  `sp_img_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `space_image`
--

INSERT INTO `space_image` (`id`, `sp_id`, `sp_img_url`) VALUES
(2, 10, '/upload/space/c8fb35e35242e7ea1c79892516d0b5d4.jpeg'),
(3, 12, '/upload/space/0bacdecf721c22831842e403e31cc210.jpeg'),
(4, 13, '/upload/space/e5f78b8141ec7e04e18592e5d159ad7f.jpeg'),
(8, 10, '/upload/space/f442c9b0feb02dd4cd3bfd5476c3c795.jpeg'),
(9, 10, '/upload/space/cbc38f80f68de0fc39af987607c7e6f7.jpeg'),
(12, 5, '/upload/space/a149fe9c95414e86e78d85e7d6fef9f8.jpeg'),
(13, 5, '/upload/space/9e5e46f9de29e66cd10b3ba845a0f78d.jpeg'),
(14, 4, '/upload/space/8f6324f4b287948ab15abdf0ea0e4482.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `specialization`
--

CREATE TABLE `specialization` (
  `id` int(11) NOT NULL,
  `act_id` int(11) DEFAULT NULL,
  `spc_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `specialization`
--

INSERT INTO `specialization` (`id`, `act_id`, `spc_name`) VALUES
(2, 3, 'Téléphonie mobile'),
(3, 1, 'Web'),
(4, 1, 'Mobile'),
(5, 3, 'Radiodiffusion'),
(6, 2, 'Matériels'),
(7, 5, 'Oto-Rhino-Laryngologie'),
(8, 5, 'Dentiste'),
(9, 6, 'Dermatologie'),
(10, 67, 'Télévendeur'),
(11, 66, 'Maintenance'),
(12, 67, 'Vente'),
(13, 65, 'Experts en machines-outils'),
(14, 65, 'Commandes numériques'),
(15, 65, 'Maintenance robot'),
(16, 7, 'Java'),
(17, 7, 'Mobile'),
(18, 17, 'Accouchement'),
(19, 17, 'Amniocentèse'),
(20, 17, 'Césarienne');

-- --------------------------------------------------------

--
-- Structure de la table `specialization_user`
--

CREATE TABLE `specialization_user` (
  `spc_id` int(11) NOT NULL,
  `usr_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `usr_role_id` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `firstname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_valid` tinyint(1) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_newsletter` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_profil` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_search` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_office` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `search_area` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_coworker` int(11) DEFAULT NULL,
  `max_coworker` int(11) DEFAULT NULL,
  `min_budget` int(11) DEFAULT NULL,
  `max_budget` int(11) DEFAULT NULL,
  `code_postal` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `usr_role_id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`, `firstname`, `lastname`, `adress`, `company_name`, `phone`, `account_type`, `is_valid`, `latitude`, `longitude`, `photo`, `is_newsletter`, `is_new`, `date_create`, `city`, `description_profil`, `description_search`, `type_office`, `search_area`, `min_coworker`, `max_coworker`, `min_budget`, `max_budget`, `code_postal`, `is_visible`) VALUES
(1, 2, 'admin@burostation.fr', 'admin@burostation.fr', 'admin@burostation.fr', 'admin@burostation.fr', 1, NULL, '$2y$13$uB07hUqnNpoIkxHVX1xnXescPRRMOGqKyjdcMCu3zoXONOzjyWfIK', '2017-09-15 12:57:50', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}', 'buro', 'admin', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 1, NULL, '2017-08-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 1, 'superadmin@burostation.fr', 'superadmin@burostation.fr', 'superadmin@burostation.fr', 'superadmin@burostation.fr', 1, NULL, '$2y$13$NTkRoJyFt7BKpgc6/io77OL6PKipvgvZZA8AAUSyZPug2A99/duXu', '2017-09-15 15:25:21', NULL, NULL, 'a:1:{i:0;s:15:\"ROLE_SUPERADMIN\";}', 'Burostation', 'BUROSTATION', NULL, NULL, '0525252525', NULL, 0, NULL, NULL, NULL, 1, 0, '2017-08-07 00:00:00', 'Montpellier', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '34000', 1),
(3, 4, 'testwam261@gmail.com', 'testwam261@gmail.com', 'testwam261@gmail.com', 'testwam261@gmail.com', 1, NULL, '$2y$13$4rMw4//bsOWM2R6yCUb5Q.J7yjzFUTA8nFn5xtoAFgOm30I8JDGKO', '2017-09-15 17:35:55', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_COLOCATAIRE\";}', 'Zadou', 'Stefanie  Lucie', NULL, 'Développeur', '+265222255522', NULL, 1, '43.610769', '3.876716', '/upload/user/ae8a3ce883a302ebd889c43f868b0378.jpeg', 1, 1, '2017-09-04 18:05:03', 'Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson', '', 'Un bureau est, au sens contemporain du terme, un meuble semblable par la forme à une table, .... Bureau de type secrétaire réalisé par David Roentgen pour Louis XVI, orné d\'un portrait de Marie-Antoinette en marqueterie. Chaque tiroir ...Un bureau est, au', 'Espace de travail', 'Montpellier, France', 100000, 100, 1000000, 6000000, '+2559', 1),
(4, 4, 'rherisoanicolas@gmail.com', 'rherisoanicolas@gmail.com', 'rherisoanicolas@gmail.com', 'rherisoanicolas@gmail.com', 1, NULL, '$2y$13$qogpsOjGT6VA3RsDqihPQO/Uh7LCTzdFGzp4RJiUYnUzwW09Gl2xa', '2017-09-15 16:56:31', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_COLOCATAIRE\";}', 'Stefi Dolvanes', 'Angelica Marie Anne Julie Stefanie de Monaco', NULL, 'Développeur', '+265222255522', NULL, 1, '48.856614', '2.352222', '/upload/user/fee182080995adfc4f418d96d563f1d4.jpeg', 1, 1, '2017-09-04 18:09:22', 'France', 'Je suis', ' Un bureau d\'études est une société publique ou privée réalisant des études et prestations de conseils techniques dans le bâtiment.', 'Bureau d\' étude ', 'Paris, France', 8, 20, 1220, 3000, '1245', 1),
(5, 4, 'nicolas@etiseo.fr', 'nicolas@etiseo.fr', 'nicolas@etiseo.fr', 'nicolas@etiseo.fr', 1, NULL, '$2y$13$10n6x5FboUG1pVXGcX91Se1ctBEwvJbGXk0JzJNjnTGuz4U2/ylOW', '2017-09-15 17:28:55', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_COLOCATAIRE\";}', 'Rouvax', 'LOic', 'Rue de Giovanni Buskek', 'Informaticien', '+336625522', NULL, 1, NULL, NULL, '/upload/user/00e93c6d5fd818120dd10a4593c8e1c9.jpeg', 1, 1, '2017-09-04 18:40:22', 'Paris France', 'Je suis né le 12 janvier 1964,  un entrepreneur et investisseur a  dans les domaines des technologies et du commerce. Je suis le fondateur et PDG actuel d\'Amazon.com', 'Description test        Description test                        Description test                        Description test                        Description test                        Description test                        Description test', 'Bureau de travail', 'Lille', 152, 26000, 20000, 90000, 'cent ', 1),
(6, 4, 'lv2017test@gmail.com', 'lv2017test@gmail.com', 'lv2017test@gmail.com', 'lv2017test@gmail.com', 0, NULL, '$2y$13$0eXIPVEp5FJkLCIcjfBMQOwJXfRPhFdFCeDY5AHs1GMgw9zNvpqYO', NULL, NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_COLOCATAIRE\";}', 'Mahe', 'Sebastien', 'Rue de Calleninos', 'Informaticien', '+2552255225', NULL, 0, NULL, NULL, '/upload/user/c1490333111c3a4637569d284ef92638.jpeg', 1, 1, '2017-09-06 06:49:16', 'France', 'A propos de moi', 'Description recherche', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(7, 4, 'burosta2@burostation.fr', 'burosta2@burostation.fr', 'burosta2@burostation.fr', 'burosta2@burostation.fr', 1, NULL, '$2y$13$m1c3jqvrGZbw44fDzAXSiOVhh9kS6h34DjDERINJwBFO1e5q0n1RO', '2017-09-15 15:31:42', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_COLOCATAIRE\";}', 'çaminah', 'RAKOTOZAFY', 'Avenue Strasbourg', 'RS', '0346251789', NULL, 0, NULL, NULL, '/upload/user/bbba377abfe69d4013394def5931f10f.jpeg', 1, 1, '2017-09-07 06:25:13', 'Floride, États-Unis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(8, 4, 'evan@free.fr', 'evan@free.fr', 'evan@free.fr', 'evan@free.fr', 1, NULL, '$2y$13$C15djTsTiShQl6IYsC/ps.G6qCfnXfI02cg2xFWyssZX2X9SaTLbC', '2017-09-15 12:15:28', NULL, NULL, 'a:1:{i:0;s:16:\"ROLE_COLOCATAIRE\";}', 'Jacob', 'Evan', 'Avenue De Toulouse', 'Developpeur', '+22225555555', 'real', 1, '43.610769', '3.876716', '/upload/user/8a94d8e2b3e7fe1ba91aec4112930f98.jpeg', 1, 1, '2017-09-15 11:54:07', 'Montpellier, France', 'aimable, réactif, ...', '', 'Standing', 'Montpellier, France', 5, 15, 100, 1500, '156+9', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_activity_related`
--

CREATE TABLE `user_activity_related` (
  `usr_id` int(11) NOT NULL,
  `act_rlt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_activity_related`
--

INSERT INTO `user_activity_related` (`usr_id`, `act_rlt_id`) VALUES
(2, 6),
(2, 9),
(2, 11),
(2, 13),
(3, 6),
(3, 13),
(4, 6),
(4, 11),
(4, 14),
(5, 5),
(5, 6),
(5, 11),
(5, 12),
(5, 13),
(8, 6),
(8, 7),
(8, 11),
(8, 12),
(8, 14);

-- --------------------------------------------------------

--
-- Structure de la table `user_activity_related_search`
--

CREATE TABLE `user_activity_related_search` (
  `usr_id` int(11) NOT NULL,
  `act_rlt_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_activity_related_search`
--

INSERT INTO `user_activity_related_search` (`usr_id`, `act_rlt_id`) VALUES
(3, 6),
(3, 13),
(4, 1),
(4, 6),
(4, 8),
(4, 10),
(4, 12),
(4, 13),
(4, 14),
(8, 6),
(8, 7),
(8, 11),
(8, 14);

-- --------------------------------------------------------

--
-- Structure de la table `user_block`
--

CREATE TABLE `user_block` (
  `id` int(11) NOT NULL,
  `usr_blc_id` int(11) DEFAULT NULL,
  `usr_blc_blocked_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_block`
--

INSERT INTO `user_block` (`id`, `usr_blc_id`, `usr_blc_blocked_id`) VALUES
(13, 3, 5);

-- --------------------------------------------------------

--
-- Structure de la table `user_criteria`
--

CREATE TABLE `user_criteria` (
  `id` int(11) NOT NULL,
  `usr_id` int(11) DEFAULT NULL,
  `usr_ctr_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_ctr_type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_groupe`
--

CREATE TABLE `user_groupe` (
  `usr_id` int(11) NOT NULL,
  `grp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_groupe`
--

INSERT INTO `user_groupe` (`usr_id`, `grp_id`) VALUES
(1, 4),
(1, 6),
(2, 4),
(4, 4),
(4, 6),
(5, 4),
(8, 4),
(8, 6);

-- --------------------------------------------------------

--
-- Structure de la table `user_match_user`
--

CREATE TABLE `user_match_user` (
  `id` int(11) NOT NULL,
  `usr_id` int(11) DEFAULT NULL,
  `usr_id_matched` int(11) DEFAULT NULL,
  `usr_is_active` tinyint(1) DEFAULT NULL,
  `usr_date_match` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_match_user`
--

INSERT INTO `user_match_user` (`id`, `usr_id`, `usr_id_matched`, `usr_is_active`, `usr_date_match`) VALUES
(3, 5, 3, 1, NULL),
(7, 3, 3, 1, NULL),
(13, 5, 4, 1, NULL),
(21, 2, 4, 1, '2017-09-14 20:58:08'),
(40, 3, 5, 1, '2017-09-15 12:21:28'),
(48, 5, 4, 1, '2017-09-15 16:38:56'),
(49, 5, 8, 1, '2017-09-15 16:40:43');

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `usr_role_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_role`
--

INSERT INTO `user_role` (`id`, `usr_role_name`) VALUES
(1, 'Superadmin'),
(2, 'Admin'),
(3, 'Contributeur'),
(4, 'Colocataire');

-- --------------------------------------------------------

--
-- Structure de la table `user_specialization`
--

CREATE TABLE `user_specialization` (
  `usr_id` int(11) NOT NULL,
  `spc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_specialization`
--

INSERT INTO `user_specialization` (`usr_id`, `spc_id`) VALUES
(3, 10),
(3, 14),
(3, 18),
(4, 8),
(4, 14),
(4, 19),
(5, 14),
(6, 3),
(6, 5),
(6, 8),
(6, 9),
(6, 10),
(6, 14),
(7, 9),
(8, 2),
(8, 3),
(8, 6),
(8, 16);

-- --------------------------------------------------------

--
-- Structure de la table `value_type`
--

CREATE TABLE `value_type` (
  `id` int(11) NOT NULL,
  `val_label` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `value_type`
--

INSERT INTO `value_type` (`id`, `val_label`) VALUES
(1, 'val1'),
(2, 'val2'),
(3, 'val3'),
(4, 'val5'),
(5, 'val6'),
(6, 'val7'),
(8, 'val9'),
(9, 'val10'),
(10, 'val11'),
(11, 'val12'),
(12, 'val8');

-- --------------------------------------------------------

--
-- Structure de la table `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `usr_id` int(11) DEFAULT NULL,
  `spc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `vote`
--

INSERT INTO `vote` (`id`, `usr_id`, `spc_id`) VALUES
(46, 3, 4),
(47, 2, 4),
(54, 5, 4),
(55, 5, 10),
(56, 5, 12),
(57, 5, 13),
(58, 5, 14),
(59, 5, 5);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AC74095A9FBBF8B8` (`sct_id`);

--
-- Index pour la table `activity_related`
--
ALTER TABLE `activity_related`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_60050670C7BAED19` (`act_rlt_tp_id`);

--
-- Index pour la table `activity_related_type`
--
ALTER TABLE `activity_related_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `building_image`
--
ALTER TABLE `building_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A99DB5C58578E9C8` (`bld_id`);

--
-- Index pour la table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8C9F36101EE9ABDE` (`fld_id`);

--
-- Index pour la table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4B98C219FBBF8B8` (`sct_id`);

--
-- Index pour la table `groupe_space`
--
ALTER TABLE `groupe_space`
  ADD PRIMARY KEY (`spc_id`,`grp_id`),
  ADD KEY `IDX_7CDF0F6A75357ACC` (`spc_id`),
  ADD KEY `IDX_7CDF0F6AD51E9150` (`grp_id`);

--
-- Index pour la table `group_image`
--
ALTER TABLE `group_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_95112F38D51E9150` (`grp_id`);

--
-- Index pour la table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_27BA704BC69D3FB` (`usr_id`),
  ADD KEY `IDX_27BA704B75357ACC` (`spc_id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_74516B0275357ACC` (`spc_id`);

--
-- Index pour la table `office_image`
--
ALTER TABLE `office_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CC66A7DFEE81DA0E` (`ofc_id`);

--
-- Index pour la table `quizz`
--
ALTER TABLE `quizz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7C77973D365268D6` (`val_tp_id`);

--
-- Index pour la table `quizz_response`
--
ALTER TABLE `quizz_response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BFAFF7E99F1262B8` (`qz_id`);

--
-- Index pour la table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `share`
--
ALTER TABLE `share`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EF069D5AD1A7D3F0` (`share_file_id`),
  ADD KEY `IDX_EF069D5AE5027909` (`share_user_id`),
  ADD KEY `IDX_EF069D5AB2C6179` (`share_grp_id`);

--
-- Index pour la table `site_configuration`
--
ALTER TABLE `site_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `space`
--
ALTER TABLE `space`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2972C13A8578E9C8` (`bld_id`);

--
-- Index pour la table `space_groupe`
--
ALTER TABLE `space_groupe`
  ADD PRIMARY KEY (`grp_id`,`spc_id`),
  ADD KEY `IDX_75050FB4D51E9150` (`grp_id`),
  ADD KEY `IDX_75050FB475357ACC` (`spc_id`);

--
-- Index pour la table `space_image`
--
ALTER TABLE `space_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C83B181B8A6FD1BC` (`sp_id`);

--
-- Index pour la table `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9ED9F26AD1A55B28` (`act_id`);

--
-- Index pour la table `specialization_user`
--
ALTER TABLE `specialization_user`
  ADD PRIMARY KEY (`spc_id`,`usr_id`),
  ADD KEY `IDX_42C1BEB975357ACC` (`spc_id`),
  ADD KEY `IDX_42C1BEB9C69D3FB` (`usr_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_canonical_UNIQUE` (`username_canonical`),
  ADD UNIQUE KEY `email_canonical_UNIQUE` (`email_canonical`),
  ADD UNIQUE KEY `confirmation_token_UNIQUE` (`confirmation_token`),
  ADD KEY `IDX_8D93D649E0B0862D` (`usr_role_id`);

--
-- Index pour la table `user_activity_related`
--
ALTER TABLE `user_activity_related`
  ADD PRIMARY KEY (`usr_id`,`act_rlt_id`),
  ADD KEY `IDX_1D1044ADC69D3FB` (`usr_id`),
  ADD KEY `IDX_1D1044AD22B3A102` (`act_rlt_id`);

--
-- Index pour la table `user_activity_related_search`
--
ALTER TABLE `user_activity_related_search`
  ADD PRIMARY KEY (`usr_id`,`act_rlt_id`),
  ADD KEY `IDX_3DE5DE30C69D3FB` (`usr_id`),
  ADD KEY `IDX_3DE5DE3022B3A102` (`act_rlt_id`);

--
-- Index pour la table `user_block`
--
ALTER TABLE `user_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_61D96C7AA841A6DB` (`usr_blc_id`),
  ADD KEY `IDX_61D96C7A707598BB` (`usr_blc_blocked_id`);

--
-- Index pour la table `user_criteria`
--
ALTER TABLE `user_criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_56927F81C69D3FB` (`usr_id`);

--
-- Index pour la table `user_groupe`
--
ALTER TABLE `user_groupe`
  ADD PRIMARY KEY (`usr_id`,`grp_id`),
  ADD KEY `IDX_61EB971CC69D3FB` (`usr_id`),
  ADD KEY `IDX_61EB971CD51E9150` (`grp_id`);

--
-- Index pour la table `user_match_user`
--
ALTER TABLE `user_match_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4B9BA1D7C69D3FB` (`usr_id`),
  ADD KEY `IDX_4B9BA1D7239CD357` (`usr_id_matched`);

--
-- Index pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user_specialization`
--
ALTER TABLE `user_specialization`
  ADD PRIMARY KEY (`usr_id`,`spc_id`),
  ADD KEY `IDX_F55C2D33C69D3FB` (`usr_id`),
  ADD KEY `IDX_F55C2D3375357ACC` (`spc_id`);

--
-- Index pour la table `value_type`
--
ALTER TABLE `value_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A108564C69D3FB` (`usr_id`),
  ADD KEY `IDX_5A10856475357ACC` (`spc_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT pour la table `activity_related`
--
ALTER TABLE `activity_related`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `activity_related_type`
--
ALTER TABLE `activity_related_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `building_image`
--
ALTER TABLE `building_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `folder`
--
ALTER TABLE `folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `group_image`
--
ALTER TABLE `group_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT pour la table `office`
--
ALTER TABLE `office`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `office_image`
--
ALTER TABLE `office_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `quizz`
--
ALTER TABLE `quizz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `quizz_response`
--
ALTER TABLE `quizz_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `share`
--
ALTER TABLE `share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_configuration`
--
ALTER TABLE `site_configuration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `space`
--
ALTER TABLE `space`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `space_image`
--
ALTER TABLE `space_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `user_block`
--
ALTER TABLE `user_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `user_criteria`
--
ALTER TABLE `user_criteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user_match_user`
--
ALTER TABLE `user_match_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `value_type`
--
ALTER TABLE `value_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `FK_AC74095A9FBBF8B8` FOREIGN KEY (`sct_id`) REFERENCES `sector` (`id`);

--
-- Contraintes pour la table `activity_related`
--
ALTER TABLE `activity_related`
  ADD CONSTRAINT `FK_60050670C7BAED19` FOREIGN KEY (`act_rlt_tp_id`) REFERENCES `activity_related_type` (`id`);

--
-- Contraintes pour la table `building_image`
--
ALTER TABLE `building_image`
  ADD CONSTRAINT `FK_A99DB5C58578E9C8` FOREIGN KEY (`bld_id`) REFERENCES `building` (`id`);

--
-- Contraintes pour la table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `FK_8C9F36101EE9ABDE` FOREIGN KEY (`fld_id`) REFERENCES `folder` (`id`);

--
-- Contraintes pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD CONSTRAINT `FK_4B98C219FBBF8B8` FOREIGN KEY (`sct_id`) REFERENCES `sector` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `groupe_space`
--
ALTER TABLE `groupe_space`
  ADD CONSTRAINT `FK_7CDF0F6A75357ACC` FOREIGN KEY (`spc_id`) REFERENCES `space` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_7CDF0F6AD51E9150` FOREIGN KEY (`grp_id`) REFERENCES `groupe` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `group_image`
--
ALTER TABLE `group_image`
  ADD CONSTRAINT `FK_95112F38D51E9150` FOREIGN KEY (`grp_id`) REFERENCES `groupe` (`id`);

--
-- Contraintes pour la table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `FK_27BA704B75357ACC` FOREIGN KEY (`spc_id`) REFERENCES `space` (`id`),
  ADD CONSTRAINT `FK_27BA704BC69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `office`
--
ALTER TABLE `office`
  ADD CONSTRAINT `FK_74516B0275357ACC` FOREIGN KEY (`spc_id`) REFERENCES `space` (`id`);

--
-- Contraintes pour la table `office_image`
--
ALTER TABLE `office_image`
  ADD CONSTRAINT `FK_CC66A7DFEE81DA0E` FOREIGN KEY (`ofc_id`) REFERENCES `office` (`id`);

--
-- Contraintes pour la table `quizz`
--
ALTER TABLE `quizz`
  ADD CONSTRAINT `FK_7C77973D365268D6` FOREIGN KEY (`val_tp_id`) REFERENCES `value_type` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `quizz_response`
--
ALTER TABLE `quizz_response`
  ADD CONSTRAINT `FK_BFAFF7E99F1262B8` FOREIGN KEY (`qz_id`) REFERENCES `quizz` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `share`
--
ALTER TABLE `share`
  ADD CONSTRAINT `FK_EF069D5AB2C6179` FOREIGN KEY (`share_grp_id`) REFERENCES `groupe` (`id`),
  ADD CONSTRAINT `FK_EF069D5AD1A7D3F0` FOREIGN KEY (`share_file_id`) REFERENCES `file` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EF069D5AE5027909` FOREIGN KEY (`share_user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `space`
--
ALTER TABLE `space`
  ADD CONSTRAINT `FK_2972C13A8578E9C8` FOREIGN KEY (`bld_id`) REFERENCES `building` (`id`);

--
-- Contraintes pour la table `space_groupe`
--
ALTER TABLE `space_groupe`
  ADD CONSTRAINT `FK_75050FB475357ACC` FOREIGN KEY (`spc_id`) REFERENCES `space` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_75050FB4D51E9150` FOREIGN KEY (`grp_id`) REFERENCES `groupe` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `space_image`
--
ALTER TABLE `space_image`
  ADD CONSTRAINT `FK_C83B181B8A6FD1BC` FOREIGN KEY (`sp_id`) REFERENCES `space` (`id`);

--
-- Contraintes pour la table `specialization`
--
ALTER TABLE `specialization`
  ADD CONSTRAINT `FK_9ED9F26AD1A55B28` FOREIGN KEY (`act_id`) REFERENCES `activity` (`id`);

--
-- Contraintes pour la table `specialization_user`
--
ALTER TABLE `specialization_user`
  ADD CONSTRAINT `FK_42C1BEB975357ACC` FOREIGN KEY (`spc_id`) REFERENCES `specialization` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_42C1BEB9C69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D649E0B0862D` FOREIGN KEY (`usr_role_id`) REFERENCES `user_role` (`id`);

--
-- Contraintes pour la table `user_activity_related`
--
ALTER TABLE `user_activity_related`
  ADD CONSTRAINT `FK_1D1044AD22B3A102` FOREIGN KEY (`act_rlt_id`) REFERENCES `activity_related` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D1044ADC69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_activity_related_search`
--
ALTER TABLE `user_activity_related_search`
  ADD CONSTRAINT `FK_3DE5DE3022B3A102` FOREIGN KEY (`act_rlt_id`) REFERENCES `activity_related` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3DE5DE30C69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_block`
--
ALTER TABLE `user_block`
  ADD CONSTRAINT `FK_61D96C7A707598BB` FOREIGN KEY (`usr_blc_blocked_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_61D96C7AA841A6DB` FOREIGN KEY (`usr_blc_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_criteria`
--
ALTER TABLE `user_criteria`
  ADD CONSTRAINT `FK_56927F81C69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_groupe`
--
ALTER TABLE `user_groupe`
  ADD CONSTRAINT `FK_61EB971CC69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_61EB971CD51E9150` FOREIGN KEY (`grp_id`) REFERENCES `groupe` (`id`);

--
-- Contraintes pour la table `user_match_user`
--
ALTER TABLE `user_match_user`
  ADD CONSTRAINT `FK_4B9BA1D7239CD357` FOREIGN KEY (`usr_id_matched`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_4B9BA1D7C69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `user_specialization`
--
ALTER TABLE `user_specialization`
  ADD CONSTRAINT `FK_F55C2D3375357ACC` FOREIGN KEY (`spc_id`) REFERENCES `specialization` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F55C2D33C69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `vote`
--
ALTER TABLE `vote`
  ADD CONSTRAINT `FK_5A10856475357ACC` FOREIGN KEY (`spc_id`) REFERENCES `space` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5A108564C69D3FB` FOREIGN KEY (`usr_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
