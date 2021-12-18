-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 19 déc. 2021 à 00:28
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restauration`
--

-- --------------------------------------------------------

--
-- Structure de la table `burger`
--

CREATE TABLE `burger` (
  `id` int(11) NOT NULL,
  `gestionnaire_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pu` int(11) NOT NULL,
  `qte` int(11) NOT NULL,
  `montant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20211210131649', '2021-12-10 15:02:29', 350);

-- --------------------------------------------------------

--
-- Structure de la table `gestionnaire`
--

CREATE TABLE `gestionnaire` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `gestionnaire`
--

INSERT INTO `gestionnaire` (`id`, `nom_complet`) VALUES
(27, 'OLAFA0divine0'),
(28, 'OLAFA1divine1'),
(29, 'OLAFA2divine2'),
(30, 'OLAFA3divine3'),
(31, 'OLAFA4divine4');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `burger_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `type`) VALUES
(27, 'olafa0@gmail.com', '[\"ROLE_USER\",\"ROLE_GESTIONNAIRE\"]', '$2y$13$C/.1PNAW1WPJYL7Md1LZFumJArvuInXtIrgOwYnrihgd.4Wvj7eeq', 'gestionnaire'),
(28, 'olafa1@gmail.com', '[\"ROLE_USER\",\"ROLE_GESTIONNAIRE\"]', '$2y$13$bKpsoud2iwG1pB2JYQMm9.Yw5yv72HZ1ThVai8jqH2YBWCumaEhtm', 'gestionnaire'),
(29, 'olafa2@gmail.com', '[\"ROLE_USER\",\"ROLE_GESTIONNAIRE\"]', '$2y$13$vF9SCuQ6K5EC4k9ugt77U.b8kXam8p9NKflolFMGPlfJqF.ctno16', 'gestionnaire'),
(30, 'olafa3@gmail.com', '[\"ROLE_USER\",\"ROLE_GESTIONNAIRE\"]', '$2y$13$Qs.Eoem5x3UOt4Fxt33wz.38ANkk1LsqapRU2waPPmf6Fe5Aj5D8G', 'gestionnaire'),
(31, 'olafa4@gmail.com', '[\"ROLE_USER\",\"ROLE_GESTIONNAIRE\"]', '$2y$13$GkuTJchgvFs7HtsXGstTF.w66ZeAfXz2Dw90tEZKKAJ3iL.g00NnO', 'gestionnaire'),
(32, 'divine0@gmail.com', '[\"ROLE_USER\"]', '$2y$13$fRfqu8cniMpZRSLrV2Kg/eKKd4MGPuIJcH.EOnc2PIsQdCt3gF1M6', 'user'),
(33, 'divine1@gmail.com', '[\"ROLE_USER\"]', '$2y$13$esVnjiQaZCcySlwtZJYhP.SFUbT.S.tstbfoZjL3nFG2RGbgplo9q', 'user'),
(34, 'divine2@gmail.com', '[\"ROLE_USER\"]', '$2y$13$zrqONK7ivyrHImDiLayP3uJFcLMdDw6CjExTKWdlUbkEXGJWSjvr6', 'user'),
(35, 'divine3@gmail.com', '[\"ROLE_USER\"]', '$2y$13$cCIMrUZaRh1rV7hi0bcmbuE0f7ndDmjkwdb58qHbEZ0tyhEalZbYm', 'user'),
(36, 'divine4@gmail.com', '[\"ROLE_USER\"]', '$2y$13$9htEivoh79vVVx2E4bb.WOEcA./Q9yNfXs3y5Yer8eAz1F8TGdhCu', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `burger`
--
ALTER TABLE `burger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EFE35A0D6885AC1B` (`gestionnaire_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `gestionnaire`
--
ALTER TABLE `gestionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C53D045F17CE5090` (`burger_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `burger`
--
ALTER TABLE `burger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `burger`
--
ALTER TABLE `burger`
  ADD CONSTRAINT `FK_EFE35A0D6885AC1B` FOREIGN KEY (`gestionnaire_id`) REFERENCES `gestionnaire` (`id`);

--
-- Contraintes pour la table `gestionnaire`
--
ALTER TABLE `gestionnaire`
  ADD CONSTRAINT `FK_F4461B20BF396750` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F17CE5090` FOREIGN KEY (`burger_id`) REFERENCES `burger` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
