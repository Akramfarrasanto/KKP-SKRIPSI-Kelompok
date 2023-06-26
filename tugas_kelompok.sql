-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 06:55 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_kelompok`
--

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan`
--

CREATE TABLE `bimbingan` (
  `ID_Bimbingan` int(11) NOT NULL,
  `ID_Mahasiswa` int(11) DEFAULT NULL,
  `ID_Dosen` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Catatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bimbingan`
--

INSERT INTO `bimbingan` (`ID_Bimbingan`, `ID_Mahasiswa`, `ID_Dosen`, `Tanggal`, `Catatan`) VALUES
(505100, 123410, 4344, '2020-01-05', 'kkp sudah diserahkan'),
(505101, 123411, 4345, '2020-02-07', 'kkp belum diserahkan'),
(505102, 123412, 4346, '2020-03-09', 'kkp sudah diserahkan'),
(505103, 123413, 4347, '2020-04-11', 'kkp belum diserahkan'),
(505104, 123414, 4348, '2020-05-13', 'kkp sudah diserahkan'),
(505105, 123415, 4344, '2020-06-15', 'kkp belum diserahkan'),
(505106, 123416, 4345, '2020-07-17', 'kkp sudah diserahkan'),
(505107, 123417, 4346, '2020-08-19', 'kkp belum diserahkan'),
(505108, 123418, 4347, '2020-09-21', 'kkp sudah diserahkan'),
(505109, 123419, 4348, '2020-10-23', 'kkp belum diserahkan');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `ID_Dosen` int(11) NOT NULL,
  `Nama_Dosen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`ID_Dosen`, `Nama_Dosen`) VALUES
(4344, 'Guntur'),
(4345, 'Riski'),
(4346, 'Purnama'),
(4347, 'Ibnu'),
(4348, 'Justin');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_bimbingan`
--

CREATE TABLE `jadwal_bimbingan` (
  `ID_Jadwal` int(11) NOT NULL,
  `ID_Bimbingan` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Waktu` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal_bimbingan`
--

INSERT INTO `jadwal_bimbingan` (`ID_Jadwal`, `ID_Bimbingan`, `Tanggal`, `Waktu`) VALUES
(1230, 505106, '2020-07-17', '09:00:00'),
(1231, 505107, '2020-08-19', '11:00:00'),
(1232, 505108, '2020-09-21', '13:00:00'),
(1233, 505109, '2020-10-23', '15:00:00'),
(1234, 505100, '2020-01-05', '07:00:00'),
(1235, 505101, '2020-02-07', '09:00:00'),
(1236, 505102, '2020-03-09', '11:00:00'),
(1237, 505103, '2020-04-11', '13:00:00'),
(1238, 505104, '2020-05-13', '15:00:00'),
(1239, 505105, '2020-06-15', '07:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_transaksi`
--

CREATE TABLE `laporan_transaksi` (
  `ID_Transaksi` int(11) NOT NULL,
  `ID_Mahasiswa` int(11) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan_transaksi`
--

INSERT INTO `laporan_transaksi` (`ID_Transaksi`, `ID_Mahasiswa`, `Tanggal`, `Keterangan`) VALUES
(101011, 123410, '2020-01-01', 'Lunas'),
(101012, 123411, '2020-02-02', 'Lunas'),
(101013, 123412, '2020-03-03', 'Lunas'),
(101014, 123413, '2020-04-04', 'Lunas'),
(101015, 123414, '2020-05-05', 'Lunas'),
(101016, 123415, '2020-06-06', 'Lunas'),
(101017, 123416, '2020-07-07', 'Lunas'),
(101018, 123417, '2020-08-08', 'Lunas'),
(101019, 123418, '2020-09-09', 'Lunas'),
(101020, 123419, '2020-10-10', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `ID_Mahasiswa` int(11) NOT NULL,
  `Nama_Mahasiswa` varchar(255) DEFAULT NULL,
  `NIM` varchar(20) DEFAULT NULL,
  `Program_Studi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`ID_Mahasiswa`, `Nama_Mahasiswa`, `NIM`, `Program_Studi`) VALUES
(123410, 'Muhamad Raehan', '31221000', 'Hukum'),
(123411, 'Dimas putro', '31221001', 'Hukum'),
(123412, 'Kumara Davin', '31221002', 'Teknik Informatika'),
(123413, 'Akram Farrasanto', '31221003', 'Teknik Informatika'),
(123414, 'Muhammad Raja', '31221004', 'Agama'),
(123415, 'Thorik Azhar', '31221005', 'Agama'),
(123416, 'Dion Saputra', '31221006', 'Akuntansi'),
(123417, 'Udin Wijaya', '31221007', 'Akuntansi'),
(123418, 'Dwi Hartono', '31221008', 'Lingkungan'),
(123419, 'Muhamad Abdul', '31221009', 'Lingkungan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD PRIMARY KEY (`ID_Bimbingan`),
  ADD KEY `ID_Mahasiswa` (`ID_Mahasiswa`),
  ADD KEY `ID_Dosen` (`ID_Dosen`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`ID_Dosen`);

--
-- Indexes for table `jadwal_bimbingan`
--
ALTER TABLE `jadwal_bimbingan`
  ADD PRIMARY KEY (`ID_Jadwal`),
  ADD KEY `ID_Bimbingan` (`ID_Bimbingan`);

--
-- Indexes for table `laporan_transaksi`
--
ALTER TABLE `laporan_transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Mahasiswa` (`ID_Mahasiswa`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`ID_Mahasiswa`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD CONSTRAINT `bimbingan_ibfk_1` FOREIGN KEY (`ID_Mahasiswa`) REFERENCES `mahasiswa` (`ID_Mahasiswa`),
  ADD CONSTRAINT `bimbingan_ibfk_2` FOREIGN KEY (`ID_Dosen`) REFERENCES `dosen` (`ID_Dosen`);

--
-- Constraints for table `jadwal_bimbingan`
--
ALTER TABLE `jadwal_bimbingan`
  ADD CONSTRAINT `jadwal_bimbingan_ibfk_1` FOREIGN KEY (`ID_Bimbingan`) REFERENCES `bimbingan` (`ID_Bimbingan`);

--
-- Constraints for table `laporan_transaksi`
--
ALTER TABLE `laporan_transaksi`
  ADD CONSTRAINT `laporan_transaksi_ibfk_1` FOREIGN KEY (`ID_Mahasiswa`) REFERENCES `mahasiswa` (`ID_Mahasiswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
