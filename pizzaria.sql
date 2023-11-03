DROP DATABASE IF EXISTS `pizzaria`;
CREATE DATABASE `pizzaria`;
USE `pizzaria`;


DROP TABLE IF EXISTS `pizzas`;
CREATE TABLE `pizzas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `categorie` varchar(50) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `qte_disponible` int DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `status` int DEFAULT '0',
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;


DROP TABLE IF EXISTS `commandes`;
CREATE TABLE `commandes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `num_commande` varchar(255) NOT NULL,
  `user_id` bigint NOT NULL,
  `total` float NOT NULL,
  `status` int DEFAULT '0',
  `date_commande` varchar(255) NOT NULL,
  `date_validation` varchar(255) DEFAULT NULL,
  `adresse` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ;


DROP TABLE IF EXISTS `pizza_commandes`;
CREATE TABLE `pizza_commandes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `num_commande` varchar(255) NOT NULL,
  `pizza_id` bigint NOT NULL,
  `quantite` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pizza_id` (`pizza_id`),
  CONSTRAINT `pizza_commandes_ibfk_1` FOREIGN KEY (`pizza_id`) REFERENCES `pizzas` (`id`)
) ;




DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(100) DEFAULT NULL,
  `profile` varchar(15) DEFAULT 'user',
  `email` varchar(128) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int DEFAULT '0',
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

INSERT INTO `users` VALUES (1,'Administrateur','Administrateur','admin','administrateur@gmail.com','785423698',0,'administrateur'),(2,'Utilisateur','Utilisateur','user','utilisateur@gmail.com','785423698',0,'utilisateur');

