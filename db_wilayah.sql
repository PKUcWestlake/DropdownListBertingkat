-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 08:57 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wilayah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kabupaten_kota`
--

CREATE TABLE `tb_kabupaten_kota` (
  `id_kab` varchar(25) NOT NULL,
  `kabupaten_kota` varchar(255) NOT NULL,
  `id_prov` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kabupaten_kota`
--

INSERT INTO `tb_kabupaten_kota` (`id_kab`, `kabupaten_kota`, `id_prov`) VALUES
('1.1', 'KAB. ACEH SELATAN', '1'),
('1.2', 'KAB. ACEH TENGGARA', '1'),
('1.3', 'KAB. ACEH TIMUR', '1'),
('1.4', 'KOTA BANDA ACEH', '1'),
('1.5', 'KOTA LANGSA', '1'),
('2.1', 'KAB. TAPANULI TENGAH', '2'),
('2.2', 'KAB. TAPANULI UTARA', '2'),
('2.3', 'KAB. TAPANULI SELATAN', '2'),
('2.4', 'KOTA MEDAN', '2'),
('2.5', 'KOTA PEMATANGSIANTAR', '2'),
('3.1', 'KAB. KAMPAR', '3'),
('3.2', 'KAB. INDRAGIRI HULU', '3'),
('3.3', 'KAB. BENGKALIS', '3'),
('3.4', 'KOTA PEKANBARU', '3'),
('3.5', 'KOTA DUMAI', '3'),
('4.1', 'KAB. PESISIR SELATAN', '4'),
('4.2', 'KAB. SOLOK', '4'),
('4.3', 'KAB. SIJUNJUNG', '4'),
('4.4', 'KOTA PADANG', '4'),
('4.5', 'KOTA BUKITTINGGI', '4'),
('5.1', 'KAB. BINTAN', '5'),
('5.2', 'KAB. KARIMUN', '5'),
('5.3', 'KAB. NATUN', '5'),
('5.4', 'KOTA BATAM', '5'),
('5.5', 'KOTA TANJUNG PINANG', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tb_provinsi`
--

CREATE TABLE `tb_provinsi` (
  `id_prov` varchar(25) NOT NULL,
  `provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_provinsi`
--

INSERT INTO `tb_provinsi` (`id_prov`, `provinsi`) VALUES
('1', 'Aceh'),
('2', 'Sumatera Utara'),
('3', 'Riau'),
('4', 'Sumatera Barat'),
('5', 'Kepulauan Riau');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kabupaten_kota`
--
ALTER TABLE `tb_kabupaten_kota`
  ADD PRIMARY KEY (`id_kab`);

--
-- Indexes for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
  ADD PRIMARY KEY (`id_prov`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
