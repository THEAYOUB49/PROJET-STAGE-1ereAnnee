-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : dim. 17 sep. 2023 à 04:07
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `yourtubex`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `motdepasse` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `pseudo`, `email`, `motdepasse`) VALUES
(1, 'THEAYOUB49', 'ayoub.ajouirja49@outlook.fr', 'THEAYOUB49');

-- --------------------------------------------------------

--
-- Structure de la table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
CREATE TABLE IF NOT EXISTS `playlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `image` text NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `playlist`
--

INSERT INTO `playlist` (`id`, `titre`, `image`, `description`, `user`) VALUES
(1, 'nom', 'image', '', ''),
(2, 'nom', 'image', '', ''),
(3, 'nom', 'image', '', ''),
(4, 'nom', 'image', '', ''),
(5, 'nom', 'image', '', ''),
(6, 'nom', 'image', '', ''),
(7, 'nom', 'image', '', ''),
(8, 'nom', 'image', '', ''),
(9, 'nom', 'image', '', ''),
(10, 'nom', 'image', '', ''),
(11, 'nom', 'image', '', ''),
(12, 'nom', 'image', '', ''),
(13, 'nom', 'image', '', ''),
(14, 'nom', 'image', '', ''),
(15, 'nom', 'image', '', ''),
(16, 'nom', 'image', '', ''),
(17, 'nom', 'image', '', ''),
(18, 'nom', 'image', '', ''),
(19, 'nom', 'image', '', ''),
(20, 'nom', 'image', '', ''),
(21, 'nom', 'image', '', ''),
(22, 'nom', 'image', '', ''),
(23, 'nom', 'image', '', ''),
(24, 'nom', 'image', '', ''),
(25, 'nom', 'image', '', ''),
(26, 'nom', 'image', '', ''),
(27, 'nom', 'image', '', ''),
(28, 'nom', 'image', '', ''),
(29, 'nom', 'image', '', ''),
(30, 'nom', 'image', '', ''),
(31, 'nom', 'image', '', ''),
(32, 'nom', 'image', '', ''),
(33, 'nom', 'image', '', ''),
(34, 'nom', 'image', '', ''),
(35, 'nom', 'image', '', ''),
(36, 'nom', 'image', '', ''),
(37, 'nom', 'image', '', ''),
(38, 'nom', 'image', '', ''),
(39, 'nom', 'image', '', ''),
(40, 'nom', 'image', '', ''),
(41, 'nom', 'image', '', ''),
(42, 'nom', 'image', '', ''),
(43, 'nom', 'image', '', ''),
(44, 'nom', 'image', '', ''),
(45, 'nom', 'image', '', ''),
(46, 'nom', 'image', '', ''),
(47, 'nom', 'image', '', ''),
(48, 'nom', 'image', '', ''),
(49, 'nom', 'image', '', ''),
(50, 'nom', 'image', '', ''),
(51, 'nom', 'image', '', ''),
(52, 'nom', 'image', '', ''),
(53, 'nom', 'image', '', ''),
(54, 'nom', 'image', '', ''),
(55, 'nom', 'image', '', ''),
(56, 'nom', 'image', '', ''),
(57, 'nom', 'image', '', ''),
(58, 'nom', 'image', '', ''),
(59, 'nom', 'image', '', ''),
(60, 'nom', 'image', '', ''),
(61, 'nom', 'image', '', ''),
(62, 'nom', 'image', '', ''),
(63, 'nom', 'image', '', ''),
(64, 'nom', 'image', '', ''),
(65, 'nom', 'image', '', ''),
(66, 'nom', 'image', '', ''),
(67, 'nom', 'image', '', ''),
(68, 'nom', 'image', '', ''),
(69, 'nom', 'image', '', ''),
(70, 'nom', 'image', '', ''),
(71, 'nom', 'image', '', ''),
(72, 'nom', 'image', '', ''),
(73, 'nom', 'image', '', ''),
(74, 'nom', 'image', '', ''),
(75, 'nom', 'image', '', ''),
(76, 'nom', 'image', '', ''),
(77, 'nom', 'image', '', ''),
(78, 'nom', 'image', '', ''),
(79, 'nom', 'image', '', ''),
(80, 'nom', 'image', '', ''),
(81, 'nom', 'image', '', ''),
(82, 'nom', 'image', '', ''),
(83, 'nom', 'image', '', ''),
(84, 'nom', 'image', '', ''),
(85, 'nom', 'image', '', ''),
(86, 'nom', 'image', '', ''),
(87, 'nom', 'image', '', ''),
(88, 'nom', 'image', '', ''),
(89, 'nom', 'image', '', ''),
(90, 'nom', 'image', '', ''),
(91, 'nom', 'image', '', ''),
(92, 'nom', 'image', '', ''),
(93, 'nom', 'image', '', ''),
(94, 'nom', 'image', '', ''),
(95, 'nom', 'image', '', ''),
(96, 'nom', 'image', '', ''),
(97, 'nom', 'image', '', ''),
(98, 'nom', 'image', '', ''),
(99, 'nom', 'image', '', ''),
(100, 'nom', 'image', '', ''),
(101, 'nom', 'image', '', ''),
(102, 'nom', 'image', '', ''),
(103, 'nom', 'image', '', ''),
(104, 'nom', 'image', '', ''),
(105, 'nom', 'image', '', ''),
(106, 'nom', 'image', '', ''),
(107, 'nom', 'image', '', ''),
(108, 'nom', 'image', '', ''),
(109, 'nom', 'image', '', ''),
(110, 'nom', 'image', '', ''),
(111, 'nom', 'image', '', ''),
(112, 'nom', 'image', '', ''),
(113, 'nom', 'image', '', ''),
(114, 'nom', 'image', '', ''),
(115, 'nom', 'image', '', ''),
(116, 'nom', 'image', '', ''),
(117, 'nom', 'image', '', ''),
(118, 'nom', 'image', '', ''),
(119, 'nom', 'image', '', ''),
(120, 'nom', 'image', '', ''),
(121, 'nom', 'image', '', ''),
(122, 'nom', 'image', '', ''),
(123, 'nom', 'image', '', ''),
(124, 'nom', 'image', '', ''),
(125, 'nom', 'image', '', ''),
(126, 'nom', 'image', '', ''),
(127, 'nom', 'image', '', ''),
(128, 'nom', 'image', '', ''),
(129, 'nom', 'image', '', ''),
(130, 'nom', 'image', '', ''),
(131, 'nom', 'image', '', ''),
(132, 'nom', 'image', '', ''),
(133, 'nom', 'image', '', ''),
(134, 'nom', 'image', '', ''),
(135, 'nom', 'image', '', ''),
(136, 'nom', 'image', '', ''),
(137, 'nom', 'image', '', ''),
(138, 'nom', 'image', '', ''),
(139, 'nom', 'image', '', ''),
(140, 'nom', 'image', '', ''),
(141, 'nom', 'image', '', ''),
(142, 'nom', 'image', '', ''),
(143, 'nom', 'image', '', ''),
(144, 'nom', 'image', '', ''),
(145, 'nom', 'image', '', ''),
(146, 'nom', 'image', '', ''),
(147, 'nom', 'image', '', ''),
(148, 'nom', 'image', '', ''),
(149, 'nom', 'image', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `motdepasse` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `email`, `motdepasse`) VALUES
(1, 'THEAYOUB49', 'ayoub.ajouirja49@outlook.fr', 'THEAYOUB49'),
(2, 'THERIAD610', 'riad.ajouirja@supinfo.com', 'THERIAD610'),
(4, '$pseudo', '$email', '$motdepasse');

-- --------------------------------------------------------

--
-- Structure de la table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` text NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `lien` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
