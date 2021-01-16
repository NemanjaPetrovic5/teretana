-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 01:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teretana2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');

-- --------------------------------------------------------

--
-- Table structure for table `korpa`
--

CREATE TABLE `korpa` (
  `id` int(11) NOT NULL,
  `korisnik_username` varchar(50) NOT NULL,
  `paket_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korpa`
--

INSERT INTO `korpa` (`id`, `korisnik_username`, `paket_id`) VALUES
(1, 'nemanja', '78');

-- --------------------------------------------------------

--
-- Table structure for table `paketi`
--

CREATE TABLE `paketi` (
  `id` int(11) NOT NULL,
  `naziv` varchar(50) NOT NULL,
  `slika` varchar(100) NOT NULL,
  `opis` varchar(100) NOT NULL,
  `cena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paketi`
--

INSERT INTO `paketi` (`id`, `naziv`, `slika`, `opis`, `cena`) VALUES
(77, 'SPA 30', '/static/img/SPA 30.jpg', 'Trajanje paketa 30 dana, neograničeno korišćenje SPA sadržaja, celodnevni termini, 2 lokacije', '3000 din'),
(78, 'GYM', '/static/img/GYM.jpg', 'Trajanje paketa 30 dana, neograničeno korišćenje teretane, neograničeno korišćenje kardia.', '2000 din'),
(86, 'FIT', '/static/img/FIT.jpg', 'Trajanje paketa 30 dana, celodnevni termini, Neograničeno korišćenje svih grupnih treninga', '2600'),
(87, 'VIP', '/static/img/VIP.jpg', 'Trajanje paketa 30 dana, Neograničeno korišćenje svih grupnih treninga, 50% popusta na SPA paket ', '3000'),
(88, 'KARDIO', '/static/img/KARDIO.jpg', 'Trajanje paketa 60 dana, neograniceno koriscenje teretane u dnevnom terminu i vaučer za probni treni', '6000'),
(89, 'FIT 60', '/static/img/FIT 60.jpg', 'Trajanje paketa 60 dana, neograniceno koriscenje svakog dana, poklon vaučer za probni trening', '6000 din');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ime_prezime` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `godina_rodjenja` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telefon` varchar(100) NOT NULL,
  `slika` varchar(100) NOT NULL,
  `registrovan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `ime_prezime`, `email`, `godina_rodjenja`, `password`, `telefon`, `slika`, `registrovan`) VALUES
(21, 'nemanja', 'Nemanja Petrovic', 'nemanja373@gmail.com', '2001', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '0656083574', '/static/img/korisnici/default.png', '07.01.2021 12:30'),
(35, '123', 'Nemanja Petrović', 'nemanja@gmail.com', '2001', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '0656083574', '/static/img/korisnici/default.png', '08.01.2021 03:14');

-- --------------------------------------------------------

--
-- Table structure for table `zakazani_paketi`
--

CREATE TABLE `zakazani_paketi` (
  `id` int(11) NOT NULL,
  `korisnik_username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(50) NOT NULL,
  `paketi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zakazani_paketi`
--

INSERT INTO `zakazani_paketi` (`id`, `korisnik_username`, `email`, `telefon`, `paketi_id`) VALUES
(1, '123', '123@ads.rs', '123', 77),
(3, '123', '123@ads.rs', '123', 78);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korpa`
--
ALTER TABLE `korpa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paketi`
--
ALTER TABLE `paketi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zakazani_paketi`
--
ALTER TABLE `zakazani_paketi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `korpa`
--
ALTER TABLE `korpa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paketi`
--
ALTER TABLE `paketi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `zakazani_paketi`
--
ALTER TABLE `zakazani_paketi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
