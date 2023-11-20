-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2023 at 09:55 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tp3php`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `name`) VALUES
(1, 'Fiction'),
(2, 'Educatif'),
(3, 'Science-Fiction'),
(4, 'Fantastique'),
(5, 'Policier'),
(6, 'Roman Historique'),
(7, 'Biographie'),
(8, 'Développement Personnel'),
(9, 'Romance'),
(10, 'Jeunesse');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `adresse` varchar(45) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `courriel` varchar(45) DEFAULT NULL,
  `id_ville` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------

--
-- Table structure for table `emprunt`
--

CREATE TABLE `emprunt` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emprunt_livre`
--

CREATE TABLE `emprunt_livre` (
  `emprunt_id` int(11) NOT NULL,
  `livre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `livre`
--

CREATE TABLE `livre` (
  `id` int(11) NOT NULL,
  `titre` varchar(45) NOT NULL,
  `auteur` varchar(54) NOT NULL,
  `annee` int(4) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `adresseIP` varchar(15) DEFAULT NULL,
  `dateCourante` datetime DEFAULT current_timestamp(),
  `pagesVisitees` text DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--



-- --------------------------------------------------------

--
-- Table structure for table `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `privilege` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `privilege`
--

INSERT INTO `privilege` (`id`, `privilege`) VALUES
(1, 'admin'),
(2, 'employe');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



-- --------------------------------------------------------

--
-- Table structure for table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `ville` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ville` (`id_ville`);

--
-- Indexes for table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `emprunt_livre`
--
ALTER TABLE `emprunt_livre`
  ADD KEY `emprunt_id` (`emprunt_id`),
  ADD KEY `livre_id` (`livre_id`);

--
-- Indexes for table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorie_id` (`categorie_id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `privilege_id` (`privilege_id`);

--
-- Indexes for table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livre`
--
ALTER TABLE `livre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`id_ville`) REFERENCES `ville` (`id`);

--
-- Constraints for table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Constraints for table `emprunt_livre`
--
ALTER TABLE `emprunt_livre`
  ADD CONSTRAINT `emprunt_livre_ibfk_1` FOREIGN KEY (`emprunt_id`) REFERENCES `emprunt` (`id`),
  ADD CONSTRAINT `emprunt_livre_ibfk_2` FOREIGN KEY (`livre_id`) REFERENCES `livre` (`id`);

--
-- Constraints for table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`);


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `privilege_id`) VALUES
(1, 'pwdawson90@gmail.com', '$2y$10$gXFqBXpdBp2RiE85egnlNeAFSLTn9yuXMToogn07Gw3Oj6dvhqW3y', 1),
(2, 'janisso@gmail.com', '$2y$10$77YiltFNTyXtTPiQT3EW/OzcwOFekDU/2M94Y0CqwrpGmFhhJCsvC', 2);


--
-- Dumping data for table `livre`
--

INSERT INTO `livre` (`id`, `titre`, `auteur`, `annee`, `categorie_id`) VALUES
(4, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 1967, 1),
(5, 'Moby Dick', 'Herman Melville', 1851, 5),
(6, 'War and Peace', 'Leo Tolstoy', 1869, 2),
(7, 'The Odyssey', 'Homer', -800, 1),
(8, 'Pride and Prejudice', 'Jane Austen', 1813, 2),
(9, 'The Divine Comedy', 'Dante Alighieri', 1320, 8),
(10, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 9),
(20, 'aaa', 'aaaa', 6, 2),
(21, 'ssss', 'sssss', 46, 7);



--
-- Dumping data for table `ville`
--

INSERT INTO `ville` (`id`, `ville`) VALUES
(1, 'New York'),
(2, 'Los Angeles'),
(3, 'Chicago'),
(4, 'Houston'),
(5, 'Phoenix'),
(6, 'Philadelphia'),
(7, 'San Antonio'),
(8, 'San Diego'),
(9, 'Dallas'),
(10, 'San Jose');



--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `nom`, `adresse`, `phone`, `code_postal`, `courriel`, `id_ville`) VALUES
(1, 'John Doe', '123 Main St', '555-1234', '10001', 'johndoe@email.com', 1),
(2, 'Jane Smith', '456 Elm St', '555-5678', '90001', 'janesmith@email.com', 2),
(3, 'Alice Johnson', '789 Oak St', '555-9012', '60601', 'alicejohnson@email.com', 3),
(4, 'Bob Brown', '101 Maple Ave', '555-3456', '77001', 'bobbrown@email.com', 4),
(5, 'Carol White', '202 Pine St', '555-7890', '85001', 'carolwhite@email.com', 5),
(6, 'David Green', '303 Birch Ave', '555-4321', '19101', 'davidgreen@email.com', 6),
(7, 'Eva Black', '404 Cedar St', '555-8765', '78201', 'evablack@email.com', 7),
(8, 'Frank Gray', '505 Walnut Ave', '555-1357', '92101', 'frankgray@email.com', 8),
(9, 'Grace Hall', '606 Chestnut St', '555-2468', '75201', 'gracehall@email.com', 9),
(10, 'Henry Ford', '707 Ash Ave', '555-3690', '95101', 'henryford@email.com', 10);




