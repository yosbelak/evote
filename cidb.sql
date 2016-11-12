-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2016 at 03:42 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cidb`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id_soal` int(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id_soal`, `a`, `b`, `c`, `d`) VALUES
(1, 'Donald Trump', 'Hillary cLinton', 'Obama', 'Jon Cena'),
(2, 'Rawon', 'Nasgor', 'Bakso', 'Diabetes'),
(3, 'yoona', 'taeyeon', 'suzy', 'dj dosa'),
(4, 'samsung', 'iphone', 'sony', 'oneplus'),
(5, 'Dompet', 'HP', 'Kunci', 'Laptop'),
(6, 'Kuliah', 'Kawin', 'Kerja', 'Travelling'),
(7, 'Aqua', 'Danone', 'Mayora', 'Lain'),
(8, 'Tidur', 'Makan', 'IUKWIM', 'Olahraga');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id_soal` int(5) NOT NULL,
  `unique_id` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id_soal`, `unique_id`) VALUES
(1, '8Y7d2'),
(1, 'UDrWB'),
(3, 'CXUJb'),
(4, '8Y7d2'),
(4, 'WOXfh'),
(7, 'WOXfh'),
(7, 'zmoDa');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `milik_username` varchar(99) NOT NULL,
  `tipe_soal` int(9) NOT NULL,
  `pertanyaan` varchar(140) NOT NULL,
  `id_soal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`milik_username`, `tipe_soal`, `pertanyaan`, `id_soal`) VALUES
('yoshua', 0, 'pres amerika?', 1),
('yoshua', 0, 'makanan terenak?', 2),
('yoshua', 0, 'paling cantik', 3),
('yoshua', 0, 'merk fav?', 4),
('yoshua', 0, 'Mana paling penting', 5),
('yoshua', 0, 'Mana dulu', 6),
('radityo', 0, 'Hobby Favorit', 8);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id_soal` int(255) NOT NULL,
  `scorea` int(9) NOT NULL,
  `scoreb` int(9) NOT NULL,
  `scorec` int(9) NOT NULL,
  `scored` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id_soal`, `scorea`, `scoreb`, `scorec`, `scored`) VALUES
(1, 14, 2, 37, 69),
(2, 61, 68, 47, 98),
(3, 34, 26, 35, 87),
(4, 20, 27, 4, 11),
(5, 89, 20, 42, 60),
(6, 4, 8, 7, 4),
(7, 1, 2, 4, 7),
(8, 8, 9, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `nama` varchar(99) NOT NULL,
  `jk` tinyint(1) NOT NULL,
  `ttl` date NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `email` varchar(99) NOT NULL,
  `hp` double NOT NULL,
  `username` varchar(99) NOT NULL,
  `password` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`nama`, `jk`, `ttl`, `gambar`, `email`, `hp`, `username`, `password`) VALUES
('Dito', 0, '1960-08-21', '', 'dito@gmail.com', 8556354163, 'radityo', '202cb962ac59075b964b07152d234b70'),
('Yoshua Kalebo', 0, '1995-08-21', '', 'yoshuakalebraharja@gmail.com', 6282220197952, 'yoshua', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id_soal`,`unique_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id_soal`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id_soal` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id_soal` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id_soal` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
