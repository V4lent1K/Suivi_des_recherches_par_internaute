-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3308
-- Généré le :  sam. 08 fév. 2020 à 15:49
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
-- Base de données :  `projet_villes_devoir`
--

-- --------------------------------------------------------

--
-- Structure de la table `user_searchs`
--

DROP TABLE IF EXISTS `user_searchs`;
CREATE TABLE IF NOT EXISTS `user_searchs` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_search` varchar(11) NOT NULL,
  `user_session` text NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user_searchs`
--

INSERT INTO `user_searchs` (`user_id`, `user_search`, `user_session`) VALUES
(1, 'Paris', 'p429o8ako8r0tv6p00cot15odh'),
(2, 'Rome', 'p429o8ako8r0tv6p00cot15odh'),
(3, 'Rome', 'p429o8ako8r0tv6p00cot15odh'),
(4, 'Strasbourg', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(5, 'Paris', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(6, 'Paris', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(7, 'Paris', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(8, 'Paris', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(9, 'Paris', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(10, 'Stockolm', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(11, 'Madrid', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(12, 'Paris', 'gvg7dhf0susrugu8r0ee8r9g0g'),
(13, 'Paris', 'p429o8ako8r0tv6p00cot15odh'),
(14, 'Berlin', 'p429o8ako8r0tv6p00cot15odh');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

DROP TABLE IF EXISTS `villes`;
CREATE TABLE IF NOT EXISTS `villes` (
  `ville_id` int(11) NOT NULL AUTO_INCREMENT,
  `ville_nom` varchar(15) NOT NULL,
  `population` int(11) NOT NULL,
  `ville_texte` text NOT NULL,
  PRIMARY KEY (`ville_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`ville_id`, `ville_nom`, `population`, `ville_texte`) VALUES
(1, 'Paris', 2200, 'Paris, capitale de la France, est une grande ville européenne et un centre mondial de l\'art, de la mode, de la gastronomie et de la culture. Son paysage urbain du XIXe siècle est traversé par de larges boulevards et la Seine. Outre les monuments comme la tour Eiffel et la cathédrale gothique Notre-Dame du XIIe siècle, la ville est réputée pour ses cafés et ses boutiques de luxe bordant la rue du Faubourg-Saint-Honoré.'),
(2, 'Rome', 2700, 'Capitale de l\'Italie, Rome est une grande ville cosmopolite dont l\'art, l\'architecture et la culture de presque 3 000 ans rayonnent dans le monde entier. Ses ruines telles que celles du Forum Romain et du Colisée évoquent la puissance de l\'ancien Empire romain. Siège de l\'Église catholique romaine, la Cité du Vatican compte la basilique Saint-Pierre et les musées du Vatican où se trouvent des chefs-d\'œuvre tels que la fresque de la chapelle Sixtine, peinte par Michel-Ange.'),
(3, 'Berlin', 3500, 'La capitale allemande, Berlin, est née au XIIIe siècle. Le Mémorial de l’Holocauste et les pans restants du mur de Berlin, sur lesquels des graffitis ont été peints, témoignent de son passé tumultueux. Divisé en deux pendant la guerre froide, le pays a adopté la porte de Brandebourg du XVIIIe siècle comme symbole de sa réunification. La ville est aussi réputée pour sa scène artistique et ses monuments modernes, comme la Philharmonie de Berlin, un bâtiment doré construit en 1963 dont le toit présente une forme géométrique particulière.'),
(4, 'Moscou', 11000, 'Moscou, sur la Moskva à l\'ouest de la Russie, est la capitale cosmopolite du pays. Son centre historique est le Kremlin, résidence du Président et complexe abritant les trésors des tsars dans l\'Armurerie. À l\'extérieur, la place Rouge est le centre symbolique de la Russie. Le mausolée de Lénine, le Musée historique d\'État et sa vaste collection, et la cathédrale Saint-Basile-le-Bienheureux, célèbre pour ses clochers à bulbe colorés, y sont implantés.'),
(5, 'Madrid', 34000, 'Située au centre de l\'Espagne, Madrid, sa capitale, est une ville dotée d\'élégants boulevards et de vastes parcs très bien entretenus comme le Retiro. Elle est réputée pour ses riches collections d\'œuvres d\'art européennes, avec notamment celles du musée du Prado, réalisées par Goya, Velázquez et d\'autres maîtres espagnols. Au cœur de la vieille Madrid des Habsbourgs se trouve la Plaza Mayor, bordée de portiques, et, à proximité, le Palais royal baroque et son Armurerie, qui comporte des armes historiques.'),
(6, 'Copenhague', 800, 'Copenhague, la capitale du Danemark, se trouve sur les îles côtières de Seeland et Amager. Elle est reliée à Malmö, au sud de la Suède, par le pont de l’Øresund. Le centre historique de la ville, Indre By, contient un quartier du XVIIIe siècle de style rococo appelé Frederiksstaden : c’est ici que l’on trouve le palais d’Amalienborg, résidence de la famille royale. À quelques pas de là se tiennent les châteaux de Christiansborg et de Rosenborg. C\'est dans ce dernier, entouré de jardins, que sont conservés les joyaux de la couronne.'),
(7, 'Stockholm', 0, 'Stockholm, la capitale de la Suède, est située sur un vaste archipel de la mer Baltique, comprenant 14 îles et plus de 50 ponts. Les rues pavées et les bâtiments de couleur ocre de Gamla stan (la vieille ville) abritent la cathédrale de Storkyrkan du XIIIe siècle, le palais royal de Stockholm et le musée Nobel, consacré au prix Nobel. Des ferries et des bateaux de tourisme transportent les passagers entre les îles.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
