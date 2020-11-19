-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  jeu. 19 nov. 2020 à 09:05
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `keepmoving`
--

-- --------------------------------------------------------

--
-- Structure de la table `bus`
--

DROP TABLE IF EXISTS `bus`;
CREATE TABLE IF NOT EXISTS `bus` (
  `id_bus` int(11) NOT NULL AUTO_INCREMENT,
  `date_acquisition` date NOT NULL,
  `date_last_ct` date NOT NULL,
  `batterie_state` tinyint(1) NOT NULL,
  `capacite` int(11) NOT NULL,
  `gps_bus` varchar(150) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_conducteur` int(11) NOT NULL,
  `depart` varchar(150) NOT NULL,
  `arrive` varchar(150) NOT NULL,
  `etape` varchar(150) NOT NULL,
  PRIMARY KEY (`id_bus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `id_compte` int(11) NOT NULL AUTO_INCREMENT,
  `gps_user` varchar(50) NOT NULL,
  `rib_user` varchar(50) NOT NULL,
  `historique` varchar(50) NOT NULL,
  `trajet_favori` varchar(50) NOT NULL,
  PRIMARY KEY (`id_compte`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conducteur`
--

DROP TABLE IF EXISTS `conducteur`;
CREATE TABLE IF NOT EXISTS `conducteur` (
  `id_conducteur` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` int(50) NOT NULL,
  `anniversaire` date NOT NULL,
  `num_secu` varchar(30) NOT NULL,
  `num_mobile` varchar(10) NOT NULL,
  `num_permis` varchar(30) NOT NULL,
  `rib_driver` varchar(100) NOT NULL,
  `num_service` varchar(50) NOT NULL,
  `id_bus` int(11) NOT NULL,
  PRIMARY KEY (`id_conducteur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ittineraire`
--

DROP TABLE IF EXISTS `ittineraire`;
CREATE TABLE IF NOT EXISTS `ittineraire` (
  `id_ittineraire` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `depart` varchar(100) NOT NULL,
  `arrive` varchar(100) NOT NULL,
  `heure` time NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id_ittineraire`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `parking`
--

DROP TABLE IF EXISTS `parking`;
CREATE TABLE IF NOT EXISTS `parking` (
  `id_parking` int(11) NOT NULL AUTO_INCREMENT,
  `id_bus` int(11) NOT NULL,
  `disponibilite` tinyint(1) NOT NULL,
  `batterie_state` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_parking`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `usager`
--

DROP TABLE IF EXISTS `usager`;
CREATE TABLE IF NOT EXISTS `usager` (
  `id_usager` int(11) NOT NULL AUTO_INCREMENT,
  `name_user` varchar(50) NOT NULL,
  `num_mobile` varchar(10) NOT NULL,
  `num_urgence` varchar(10) NOT NULL,
  PRIMARY KEY (`id_usager`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
