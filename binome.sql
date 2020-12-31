-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 31 déc. 2020 à 02:11
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `binome`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenant`
--

CREATE TABLE `apprenant` (
  `id_apprenant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `mail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `apprenant`
--

INSERT INTO `apprenant` (`id_apprenant`, `nom`, `prenom`, `photo`, `mail`) VALUES
(1, 'Bokalli', 'Luigi', '', 'luigi.bokalli@isen-ouest.yncrea.fr'),
(2, 'Bonneau', 'Amaury', '', 'amaury.bonneau@isen-ouest.yncrea.fr'),
(3, 'Chaigneau', 'Thomas', '', 'thomas.chaigneau@isen-ouest.yncrea.fr'),
(4, 'Cloatre', 'Erwan', '', 'erwan.cloatre@isen-ouest.yncrea.fr'),
(5, 'Furiga', 'Julien', '', 'julien.furiga@isen-ouest.yncrea.fr'),
(6, 'Guillen', 'Celine', '', 'celine.guillen@isen-ouest.yncrea.fr'),
(7, 'Hergoualc\'h', 'Pereg', '', 'pereg.hergoualch@isen-ouest.yncrea.fr'),
(8, 'Ibanni', 'Jamal', '', 'jamal.ibanni@isen-ouest.yncrea.fr'),
(9, 'Karfaoui', 'Christelle', '', 'christelle.karfaoui@isen-ouest.yncrea.fr'),
(10, 'Le Berre', 'BaptisteLB', '', 'baptiste.le-berre@isen-ouest.yncrea.fr'),
(11, 'Le Goff', 'BaptisteLG', '', 'baptiste.le-goff@isen-ouest.yncrea.fr'),
(12, 'Le Joncour', 'Jérémy', '', 'jeremy.le-joncour@isen-ouest.yncrea.fr'),
(13, 'Le Moal', 'Patricia', '', 'patricia.le-moal@isen-ouest.yncrea.fr'),
(14, 'Maintier', 'Ludivine', '', 'ludivine.maintier@isen-ouest.yncrea.fr'),
(15, 'Mbarga Mvogo', 'Christian', '', 'christian.mbarga-mvogo@isen-ouest.yncrea.fr'),
(16, 'Moulard', 'Eva', '', 'eva.moulard@isen-ouest.yncrea.fr'),
(17, 'Pertron', 'Aude', '', 'aude.pertron@isen-ouest.yncrea.fr'),
(18, 'Rioual', 'Ronan', '', 'ronan.rioual@isen-ouest.yncrea.fr'),
(19, 'Sabia', 'Paul', '', 'paul.sabia@isen-ouest.yncrea.fr'),
(20, 'Verpoest', 'Guillaume', '', 'guillaume.verpoest@isen-ouest.yncrea.fr');

-- --------------------------------------------------------

--
-- Structure de la table `apprenant_groupe_projet`
--

CREATE TABLE `apprenant_groupe_projet` (
  `id_apprenant` int(11) NOT NULL,
  `id_grp` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `apprenant_groupe_projet`
--

INSERT INTO `apprenant_groupe_projet` (`id_apprenant`, `id_grp`, `date`) VALUES
(16, 1, '2020-11-09'),
(15, 1, '2020-11-09'),
(14, 1, '2020-11-09'),
(8, 1, '2020-11-09'),
(17, 2, '2020-11-09'),
(4, 2, '2020-11-09'),
(19, 2, '2020-11-09'),
(9, 2, '2020-11-09'),
(5, 3, '2020-11-09'),
(7, 3, '2020-11-09'),
(1, 3, '2020-11-09'),
(12, 3, '2020-11-09'),
(11, 4, '2020-11-09'),
(10, 4, '2020-11-09'),
(6, 4, '2020-11-09'),
(18, 4, '2020-11-09'),
(2, 5, '2020-11-09'),
(20, 5, '2020-11-09'),
(3, 5, '2020-11-09'),
(13, 5, '2020-11-09'),
(13, 1, '2020-11-16'),
(9, 1, '2020-11-16'),
(1, 1, '2020-11-16'),
(2, 1, '2020-11-16'),
(18, 2, '2020-11-16'),
(16, 2, '2020-11-16'),
(3, 2, '2020-11-16'),
(15, 2, '2020-11-16'),
(14, 3, '2020-11-16'),
(19, 3, '2020-11-16'),
(8, 3, '2020-11-16'),
(20, 3, '2020-11-16'),
(17, 4, '2020-11-16'),
(6, 4, '2020-11-16'),
(4, 4, '2020-11-16'),
(7, 4, '2020-11-16'),
(11, 5, '2020-11-16'),
(10, 5, '2020-11-16'),
(12, 5, '2020-11-16'),
(5, 5, '2020-11-16');

-- --------------------------------------------------------

--
-- Structure de la table `grp`
--

CREATE TABLE `grp` (
  `id_groupe` int(11) NOT NULL,
  `label` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `grp`
--

INSERT INTO `grp` (`id_groupe`, `label`) VALUES
(1, 'Groupe 1'),
(2, 'Groupe 2'),
(3, 'Groupe 3'),
(4, 'Groupe 4'),
(5, 'Groupe 5'),
(6, 'Groupe 6'),
(7, 'Groupe 7'),
(8, 'Groupe 8'),
(9, 'Groupe 9'),
(10, 'Groupe 10');

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `id_projet` int(11) NOT NULL,
  `label` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id_projet`, `label`, `date`) VALUES
(1, 'Binomotron', '2020-10-30');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- Index pour la table `apprenant_groupe_projet`
--
ALTER TABLE `apprenant_groupe_projet`
  ADD KEY `id_apprenant` (`id_apprenant`),
  ADD KEY `id_grp` (`id_grp`);

--
-- Index pour la table `grp`
--
ALTER TABLE `grp`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id_projet`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `id_apprenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `grp`
--
ALTER TABLE `grp`
  MODIFY `id_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `id_projet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apprenant_groupe_projet`
--
ALTER TABLE `apprenant_groupe_projet`
  ADD CONSTRAINT `apprenant_groupe_projet_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `apprenant` (`id_apprenant`),
  ADD CONSTRAINT `apprenant_groupe_projet_ibfk_2` FOREIGN KEY (`id_grp`) REFERENCES `grp` (`id_groupe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
