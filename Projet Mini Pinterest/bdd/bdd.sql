-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 05 mai 2021 à 18:00
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `catId` int(11) NOT NULL,
  `nomCat` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`catId`, `nomCat`) VALUES
(1, 'animaux'),
(2, 'vetements'),
(3, 'voitures'),
(4, 'nourriture');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE `photo` (
  `photoId` int(11) NOT NULL,
  `nomFich` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `catId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`photoId`, `nomFich`, `description`, `catId`) VALUES
(1, 'aubergine.jpg', 'Des aubergines grillées dans une assiette', 4),
(2, 'burger-story.jpg', 'Hamburger americain classique sur une table en bois près donion rings', 4),
(3, 'ecureil.jpeg', 'Un écureuil dans la nature avec une noix.', 1),
(4, 'oiseau.jpg', 'rouge-gorge, oiseau au plumage orange, blanc et bleu', 1),
(5, 'pancake.jpg', 'Plusieurs pancakes décorées avec des fruits rouges', 4),
(6, 'pantalon-fluide.jpeg', 'pantalon leger de femme très coloré, un sac en rafia et des sandalettes', 2),
(7, 'pull.jpg', 'Femme portant un pull rose aux manches longues et col roulé.', 2),
(8, 'salade-carrefrais.jpg', 'salade vue du haut dans un bol sur une table', 4),
(9, 'short.jpg', 'Short en jean de couleur bleu', 2),
(10, 't_shirt.png', 't-shirt blanc simple avec écrit dessus \"I want a ticket to anywhere\", des lunettes de soleil et un jean', 2),
(11, 'tigre.jpg', 'Tigre dans la nature allongé sur le sol', 1),
(12, 'voit_gris.jpg', 'une Range rover grise sur une route avec un fond floue', 3),
(13, 'voit_jaune.jpg', 'une petite voiture jaune garée devant un batiment en plein après-midi', 3),
(14, 'voit_orange.jpg', 'une Volkswagen Coccinelle orange vu de profil, garée devant un immeuble', 3),
(15, 'voit_rouge.jpg', 'une Tesla rouge vue de 3/4', 3);

-- --------------------------------------------------------

--
-- Structure de la table `validation`
--

CREATE TABLE `validation` (
  `id` int(255) NOT NULL,
  `pseudo` varchar(250) NOT NULL,
  `passe` varchar(250) NOT NULL,
  `admin` TINYINT(1) DEFAULT 0)
 ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `validation`
--

INSERT INTO `validation` (`id`, `pseudo`, `passe`, `admin`) VALUES
(1, 'fina', '7c222fb2927d828af22f592134e8932480637c0d', 1),
(2, 'bena', '7c222fb2927d828af22f592134e8932480637c0d', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`catId`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photoId`),
  ADD KEY `cle etrangere` (`catId`);

--
-- Index pour la table `validation`
--
ALTER TABLE `validation`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `photo`
--
ALTER TABLE `photo`
  MODIFY `photoId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `validation`
--
ALTER TABLE `validation`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `cle etrangere` FOREIGN KEY (`catId`) REFERENCES `categorie` (`catId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
