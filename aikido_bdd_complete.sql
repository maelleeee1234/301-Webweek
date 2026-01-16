-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 16 jan. 2026 à 10:28
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `aikido`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `idAdmin` int(11) NOT NULL,
  `mdpAdmin` varchar(255) DEFAULT NULL,
  `emailAdmin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`idAdmin`, `mdpAdmin`, `emailAdmin`) VALUES
(1, 'coucou', 'coucou@coucou.fr');

-- --------------------------------------------------------

--
-- Structure de la table `animateur`
--

CREATE TABLE `animateur` (
  `idAnimateur` int(11) NOT NULL,
  `nomAnimateur` varchar(100) NOT NULL,
  `niveauAnimateur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animateur`
--

INSERT INTO `animateur` (`idAnimateur`, `nomAnimateur`, `niveauAnimateur`) VALUES
(1, 'Pascal Durchon', '6e Dan'),
(2, 'Thomas Gavory', '6e Dan'),
(3, 'Arnaud Waltz', '6e Dan'),
(4, 'Christian Pogorely', '4e Dan'),
(5, 'Alain Royer', '7e Dan'),
(6, 'Marie-Pierre Beaudouin', '5e Dan'),
(7, 'William Ho-Van', '5e Dan'),
(8, 'Alain Tendron', '6e Dan');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `idAvis` int(11) NOT NULL,
  `nomAvis` varchar(255) DEFAULT NULL,
  `titreAvis` varchar(255) DEFAULT NULL,
  `descriptionAvis` text DEFAULT NULL,
  `noteAvis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`idAvis`, `nomAvis`, `titreAvis`, `descriptionAvis`, `noteAvis`) VALUES
(1, 'Nunu Lala', 'Une progression sereine', 'Je débute, bonne pédagogie du prof et les membres plus anciens nous motivent à progresser techniquement, ils m\'ont permis d\'évoluer sereinement. Très bon esprit, très bon club, je recommande !', 5),
(2, 'Aurelie Bonnet', 'Bienveillance et super ambiance', 'Super prof... très sympa... Beaucoup de bienveillance. Super ambiance', 5),
(3, 'Sophie Durand', 'Un retour aux sources réussi', 'Après une longue pause, j\'appréhendais de remonter sur les tatamis. L\'accueil a été incroyable. Pas de jugement, beaucoup d\'entraide entre les gradés et les débutants. Les installations sont propres et l\'enseignement est de grande qualité.', 5),
(4, 'Thomas Roux', 'Idéal pour les adolescents', 'Mon fils de 14 ans est inscrit depuis un an. Il a gagné en confiance et en discipline grâce à la pédagogie exemplaire des enseignants. L\'ambiance est familiale et les valeurs transmises sont excellentes. Je recommande vivement pour les jeunes !', 5),
(5, 'Jean Dupont', 'Qualité et convivialité', 'Enseignement de qualité, ambiance très saine et chaleureuse. Je recommande !', 5),
(6, 'Marc Lefebvre', 'Excellent club, dojo un peu frais en hiver', 'Les cours sont techniques et l\'ambiance est vraiment au rendez-vous. Le professeur prend le temps de bien détailler chaque mouvement. Seul petit bémol : le dojo est un peu froid en hiver avant l\'échauffement, mais l\'enseignement est top !', 4);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idContact` int(11) NOT NULL,
  `nomContact` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`idContact`, `nomContact`, `tel`) VALUES
(1, 'P. Jouan', '06-24-86-46-48'),
(2, 'M-P Beaudouin', '06-70-55-37-46'),
(3, 'L. Dollé', '06-34-27-57-63'),
(4, 'H. Richard', '06-22-50-95-70'),
(5, 'T. Gavory', '06-10-90-24-32'),
(6, 'C. Pogorely', '06-62-20-34-49'),
(7, 'W. Ho-Van', '07-88-55-67-04');

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `idStage` int(11) NOT NULL,
  `idContact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contient`
--

INSERT INTO `contient` (`idStage`, `idContact`) VALUES
(31, 5),
(31, 7),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 3),
(34, 4),
(35, 5),
(36, 1),
(36, 2),
(37, 5),
(37, 6),
(38, 5),
(39, 5),
(40, 1),
(40, 2);

-- --------------------------------------------------------

--
-- Structure de la table `encadre`
--

CREATE TABLE `encadre` (
  `idAnimateur` int(11) NOT NULL,
  `idStage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `encadre`
--

INSERT INTO `encadre` (`idAnimateur`, `idStage`) VALUES
(1, 32),
(1, 33),
(1, 36),
(1, 40),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(3, 40),
(4, 37),
(4, 38),
(4, 39),
(5, 38),
(5, 39),
(6, 38),
(6, 39),
(7, 31),
(8, 35);

-- --------------------------------------------------------

--
-- Structure de la table `gere_animateur`
--

CREATE TABLE `gere_animateur` (
  `idAdmin` int(11) NOT NULL,
  `idAnimateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gere_animateur`
--

INSERT INTO `gere_animateur` (`idAdmin`, `idAnimateur`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8);

-- --------------------------------------------------------

--
-- Structure de la table `gere_contact`
--

CREATE TABLE `gere_contact` (
  `idAdmin` int(11) NOT NULL,
  `idContact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gere_contact`
--

INSERT INTO `gere_contact` (`idAdmin`, `idContact`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7);

-- --------------------------------------------------------

--
-- Structure de la table `gere_lieu`
--

CREATE TABLE `gere_lieu` (
  `idAdmin` int(11) NOT NULL,
  `idLieu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gere_lieu`
--

INSERT INTO `gere_lieu` (`idAdmin`, `idLieu`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Structure de la table `gere_stage`
--

CREATE TABLE `gere_stage` (
  `idAdmin` int(11) NOT NULL,
  `idStage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `gere_stage`
--

INSERT INTO `gere_stage` (`idAdmin`, `idStage`) VALUES
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40);

-- --------------------------------------------------------

--
-- Structure de la table `lieu`
--

CREATE TABLE `lieu` (
  `idLieu` int(11) NOT NULL,
  `nomLieu` varchar(100) DEFAULT NULL,
  `codePostale` int(11) DEFAULT NULL,
  `ville` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `lieu`
--

INSERT INTO `lieu` (`idLieu`, `nomLieu`, `codePostale`, `ville`) VALUES
(1, 'Dojo Municipal', 43230, 'Paulhaguet'),
(2, 'Dojo du gymnase Jean Tursini', 86200, 'Loudun'),
(3, 'Complexe sportif du Breuil', 63130, 'Royat'),
(4, 'Maison des Sports', 63000, 'Clermont-Ferrand'),
(5, 'Dojo de la halle multisports', 43000, 'Aiguilhe');

-- --------------------------------------------------------

--
-- Structure de la table `stage`
--

CREATE TABLE `stage` (
  `idStage` int(11) NOT NULL,
  `nomStage` varchar(100) DEFAULT NULL,
  `dateDebut` varchar(20) DEFAULT NULL,
  `dateFin` varchar(20) DEFAULT NULL,
  `horaires` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `idLieu` int(11) DEFAULT NULL,
  `tarifs` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stage`
--

INSERT INTO `stage` (`idStage`, `nomStage`, `dateDebut`, `dateFin`, `horaires`, `image`, `idLieu`, `tarifs`) VALUES
(31, 'Stage d aïkido', '04/01/2026', '04/01/2026', '9h30-12h30', NULL, 1, 20),
(32, 'Stage d aïkido', '12/07/2025', '18/07/2025', '9h30-19h', NULL, 1, 110),
(33, 'Stage d aïkido', '16/07/2022', '22/07/2022', '9h30-19h', NULL, 1, 100),
(34, 'Stage départemental 86', '17/02/2019', '17/02/2019', '10h-15h', NULL, 2, 15),
(35, 'Stage d été', '17/08/2024', '23/08/2024', '8h30-20h', NULL, 5, 120),
(36, 'Stage d aïkido', '14/07/2018', '20/07/2018', '9h30-19h', NULL, 1, 100),
(37, 'Stage d aïkido', '24/06/2018', '24/06/2018', '9h30-12h30', NULL, 1, 15),
(38, 'Stage de rentrée', '16/09/2017', '16/09/2017', '9h30-11h30', NULL, 3, 15),
(39, 'Stage de rentrée', '16/09/2017', '16/09/2017', '14h30-16h30', NULL, 4, 15),
(40, 'Stage d aïkido', '15/07/2017', '21/07/2017', '9h30-19h', NULL, 1, 100);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Index pour la table `animateur`
--
ALTER TABLE `animateur`
  ADD PRIMARY KEY (`idAnimateur`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`idAvis`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idContact`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`idStage`,`idContact`),
  ADD KEY `idContact` (`idContact`);

--
-- Index pour la table `encadre`
--
ALTER TABLE `encadre`
  ADD PRIMARY KEY (`idAnimateur`,`idStage`),
  ADD KEY `idStage` (`idStage`);

--
-- Index pour la table `gere_animateur`
--
ALTER TABLE `gere_animateur`
  ADD PRIMARY KEY (`idAdmin`,`idAnimateur`),
  ADD KEY `idAnimateur` (`idAnimateur`);

--
-- Index pour la table `gere_contact`
--
ALTER TABLE `gere_contact`
  ADD PRIMARY KEY (`idAdmin`,`idContact`),
  ADD KEY `idContact` (`idContact`);

--
-- Index pour la table `gere_lieu`
--
ALTER TABLE `gere_lieu`
  ADD PRIMARY KEY (`idAdmin`,`idLieu`),
  ADD KEY `idLieu` (`idLieu`);

--
-- Index pour la table `gere_stage`
--
ALTER TABLE `gere_stage`
  ADD PRIMARY KEY (`idAdmin`,`idStage`),
  ADD KEY `idStage` (`idStage`);

--
-- Index pour la table `lieu`
--
ALTER TABLE `lieu`
  ADD PRIMARY KEY (`idLieu`);

--
-- Index pour la table `stage`
--
ALTER TABLE `stage`
  ADD PRIMARY KEY (`idStage`),
  ADD KEY `idLieu` (`idLieu`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `animateur`
--
ALTER TABLE `animateur`
  MODIFY `idAnimateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `idAvis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idContact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `lieu`
--
ALTER TABLE `lieu`
  MODIFY `idLieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `stage`
--
ALTER TABLE `stage`
  MODIFY `idStage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`idStage`) REFERENCES `stage` (`idStage`),
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`idContact`) REFERENCES `contact` (`idContact`);

--
-- Contraintes pour la table `encadre`
--
ALTER TABLE `encadre`
  ADD CONSTRAINT `encadre_ibfk_1` FOREIGN KEY (`idAnimateur`) REFERENCES `animateur` (`idAnimateur`),
  ADD CONSTRAINT `encadre_ibfk_2` FOREIGN KEY (`idStage`) REFERENCES `stage` (`idStage`);

--
-- Contraintes pour la table `gere_animateur`
--
ALTER TABLE `gere_animateur`
  ADD CONSTRAINT `gere_animateur_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `administrateur` (`idAdmin`),
  ADD CONSTRAINT `gere_animateur_ibfk_2` FOREIGN KEY (`idAnimateur`) REFERENCES `animateur` (`idAnimateur`);

--
-- Contraintes pour la table `gere_contact`
--
ALTER TABLE `gere_contact`
  ADD CONSTRAINT `gere_contact_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `administrateur` (`idAdmin`),
  ADD CONSTRAINT `gere_contact_ibfk_2` FOREIGN KEY (`idContact`) REFERENCES `contact` (`idContact`);

--
-- Contraintes pour la table `gere_lieu`
--
ALTER TABLE `gere_lieu`
  ADD CONSTRAINT `gere_lieu_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `administrateur` (`idAdmin`),
  ADD CONSTRAINT `gere_lieu_ibfk_2` FOREIGN KEY (`idLieu`) REFERENCES `lieu` (`idLieu`);

--
-- Contraintes pour la table `gere_stage`
--
ALTER TABLE `gere_stage`
  ADD CONSTRAINT `gere_stage_ibfk_1` FOREIGN KEY (`idAdmin`) REFERENCES `administrateur` (`idAdmin`),
  ADD CONSTRAINT `gere_stage_ibfk_2` FOREIGN KEY (`idStage`) REFERENCES `stage` (`idStage`);

--
-- Contraintes pour la table `stage`
--
ALTER TABLE `stage`
  ADD CONSTRAINT `stage_ibfk_1` FOREIGN KEY (`idLieu`) REFERENCES `lieu` (`idLieu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
