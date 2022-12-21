-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 21 déc. 2022 à 14:57
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id_category` int NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id_category`, `category_name`) VALUES
(1, 'Anthony'),
(6, 'Cray-1'),
(3, 'Histoire de ma vie'),
(2, 'Houlala'),
(4, 'Ordinateur'),
(7, 'Piratage informatique'),
(5, 'Swag');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int NOT NULL,
  `id_post` int NOT NULL,
  `id_author` int NOT NULL,
  `date` datetime NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id_comment`, `id_post`, `id_author`, `date`, `content`) VALUES
(1, 1, 2, '2022-12-21 14:43:34', 'Salut Anthony !\r\nProfite d\'une offre exceptionnelle sur les marqueurs effaçables en cliquant sur ce lien : <a href=http://www.totallynotsuspicous.ru>Marqueurs effaçables performants et pas chers !</a>.\r\nBises,\r\nToto Totovitch\r\n'),
(2, 2, 3, '2022-12-21 14:46:26', 'La classe à Dallas ! 🤠'),
(3, 1, 1, '2022-12-21 14:47:00', 'Merci Toto, c\'est vraiment chic de ta part !\r\nC\'est vrai qu\'il est difficile de trouver de bons marqueurs effaçables de nos jours. 😢\r\nJ\'irai voir ton lien quand j\'aurai fini de rembourser mon emprunt pour acheter mon nouvel ordinateur !'),
(4, 3, 1, '2022-12-21 14:54:59', 'P.S. : Sauriez-vous où je pourrais télécharger de la RAM SVP ?'),
(5, 3, 2, '2022-12-21 14:55:42', 'Salut Anthony !\r\nJe te recommande <a href=\"totallynotatrap.ru\">DownloadRAMForFree</a>, un super site de téléchargement de mémoire vive (utilisé par le GIGN et l\'Académie des Sciences de Melun).');

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id_post` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL,
  `id_author` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id_post`, `title`, `content`, `date`, `id_author`, `image`) VALUES
(1, 'Bienvenue sur mon blog ! 😁', 'Je m\'appelle Anthony Houlala et je suis développeur web.\r\nIci, vous pourrez suivre mes aventures et écrire des commentaires pour m\'encourager !\r\nÀ plus dans le bus !', '2022-12-21 14:35:43', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Anthony_3.jpg/583px-Anthony_3.jpg'),
(2, 'Mon nouvel ordinateur ! 😍', 'Mon serveur personnel n\'arrivait plus à soutenir le trafic des visiteurs de mon blog.\r\nPlutôt que d\'optimiser l\'accès à la base de données, j\'en ai profité pour réaliser mon rêve : j\'ai acheté un Cray-1 !\r\nIl est pas beau mon bébé ? Dites-moi ce que vous en pensez en commentaire. 😉', '2022-12-21 14:38:24', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Cray-1_large_view.png/640px-Cray-1_large_view.png'),
(3, 'J\'ai été piraté ! 😱', 'Je naviguais tranquillement sur le web, à la recherche de marqueurs effaçables performants et pas chers, quand tout à coup mon clavier a pris feu !\r\nDepuis, mon bébé refuse de démarrer. 😭\r\nHeureusement, je suis un professionnel : un formatage du disque dur devrait résoudre le problème.', '2022-12-21 14:50:57', 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Burning_Logitech_12.jpg/640px-Burning_Logitech_12.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `post_category`
--

CREATE TABLE `post_category` (
  `id_post_category` int NOT NULL,
  `id_post` int NOT NULL,
  `id_category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `post_category`
--

INSERT INTO `post_category` (`id_post_category`, `id_post`, `id_category`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 3, 1),
(10, 3, 2),
(11, 3, 3),
(12, 3, 4),
(13, 3, 6),
(14, 3, 7);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id_user`, `username`, `email`, `password`) VALUES
(1, 'toto_boss', 'totodu77@houlala.fr', 'toto_boss'),
(2, 'toto', 'toto.totovitch.totov@totallysafe.ru', 'toto'),
(3, 'totophe', 'christophe@gaia.org', 'totophe');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`),
  ADD KEY `category_name` (`category_name`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_author` (`id_author`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_author` (`id_author`);

--
-- Index pour la table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id_post_category`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_category` (`id_category`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id_post_category` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `user` (`id_user`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `post_category`
--
ALTER TABLE `post_category`
  ADD CONSTRAINT `post_category_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `post_category_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
