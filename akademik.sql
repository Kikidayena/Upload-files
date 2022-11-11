-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 05:46 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `formdataguru`
--

CREATE TABLE `formdataguru` (
  `NIP` varchar(50) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Wali_Kelas` varchar(50) NOT NULL,
  `Pendidikan_Terakhir` varchar(50) NOT NULL,
  `Mapel` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formdataguru`
--

INSERT INTO `formdataguru` (`NIP`, `Nama`, `Wali_Kelas`, `Pendidikan_Terakhir`, `Mapel`, `Alamat`) VALUES
('0556759660200012', 'Saepul Hidayat', 'X MM 1', 'S1 Pendidikan Agama Islam', 'Pendidikan Agama', 'Kampung Buaran II Jatinegara-Cakung'),
('20103743186001', 'Heru Suswanto', 'XII AP 1', 'S1 Ekonomi', 'Pemasaran', 'Bekasi Barat'),
('20103743188001', 'Nur Fajri', 'XII MM 1', 'S1 Tata Niaga', 'Pemasaran', 'Jl.Jengki Cipinang Asem no.34 Kebon Pala Makasar'),
('9245757658300013', 'Rosita Prasetianingrum', 'XI AP 1', 'S1 Ekonomi', 'Bahasa Indonesia', 'Jl. Masjid Al-Munir No.22 A makasar-Jakarta Timur');

-- --------------------------------------------------------

--
-- Table structure for table `formdatanilai`
--

CREATE TABLE `formdatanilai` (
  `NISN` int(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(50) NOT NULL,
  `Nilai_Akhir_Tugas` int(50) NOT NULL,
  `Nilai_Akhir_UTS` int(50) NOT NULL,
  `Nilai_Akhir_UAS` int(50) NOT NULL,
  `Nama_Guru` varchar(50) NOT NULL,
  `Mapel` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formdatanilai`
--

INSERT INTO `formdatanilai` (`NISN`, `Nama`, `Kelas`, `Nilai_Akhir_Tugas`, `Nilai_Akhir_UTS`, `Nilai_Akhir_UAS`, `Nama_Guru`, `Mapel`) VALUES
(20654112, 'Azzahra Sabina Zain', 'XII 1', 80, 80, 80, 'Nur Fajri', 'matematika'),
(26675690, 'Chaetrin Anastasia', 'XII 1', 83, 78, 83, 'Saepul Hidayat', 'Pendidikan Agama'),
(27050981, 'Aliya Fitriyani ', 'XII 1', 75, 79, 80, 'Rosita Prasetianingrum', 'akutansi'),
(30597286, 'Denny Heriawan Putra', 'XII', 80, 80, 80, 'Sri Larasati', 'bahasa indonesia'),
(31192091, 'Andi Raihan Malalangi', 'XII', 79, 80, 79, 'Nur Fajri', 'pemasaran');

-- --------------------------------------------------------

--
-- Table structure for table `formdatapembayaran`
--

CREATE TABLE `formdatapembayaran` (
  `NISN` int(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `Kode_Pembayaran` int(50) NOT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Jenis_Pembayaran` varchar(50) NOT NULL,
  `Keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formdatapembayaran`
--

INSERT INTO `formdatapembayaran` (`NISN`, `Nama`, `Kelas`, `Kode_Pembayaran`, `Jurusan`, `Jenis_Pembayaran`, `Keterangan`) VALUES
(26895743, 'Aldiyan Tanjung', 'XII 1', 11, 'OTP ', 'SAT', 'maret'),
(31716827, 'Adelio Talenta Wibowo', 'XII 1', 11, 'OTP ', 'SAT', 'januari'),
(31876344, 'Abdul Rohman Uzairi', 'XII 1', 12, 'AKL', 'SPP', 'juni'),
(32357415, 'Danti Shafitri', 'XII 1 ', 13, 'BDP', 'SPP', 'september'),
(33158439, 'Ade  Widiyawati', 'XII 1 ', 14, 'BDP', 'Daftar Ulang', 'februari');

-- --------------------------------------------------------

--
-- Table structure for table `formkelasak`
--

CREATE TABLE `formkelasak` (
  `NISN` int(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Tahun_Ajaran` int(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formkelasak`
--

INSERT INTO `formkelasak` (`NISN`, `Nama`, `Kelas`, `Jurusan`, `Tahun_Ajaran`, `Alamat`) VALUES
(24678691, 'Adinda Septiani', 'XI 1', 'AK', 2021, 'NANTI'),
(26675690, 'Chaetrin Anastasia', 'XII 1', 'MM', 2021, 'NANTI'),
(26830957, 'Agnes Sindi', 'XII 1', 'AP', 2021, 'NANTI'),
(27038408, 'Ari Susilo ', 'XII 1', 'AKL', 2021, 'NANTI'),
(27050981, 'Aliya Fitriyani ', 'XII 1', 'AKL', 2021, 'NANTI'),
(33635688, 'Annisa Septia Kurnia Dewi ', 'XII 1', 'AKL', 2021, 'NANTI'),
(33736835, 'Bunga Husnita Anggraeni', 'XII 1', 'AKL', 2021, 'NANTI');

-- --------------------------------------------------------

--
-- Table structure for table `formkelasap`
--

CREATE TABLE `formkelasap` (
  `NISN` int(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Tahun_Ajaran` int(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formkelasap`
--

INSERT INTO `formkelasap` (`NISN`, `Nama`, `Kelas`, `Jurusan`, `Tahun_Ajaran`, `Alamat`) VALUES
(12086, 'Dimas ', 'XII 1', 'OTP ', 2021, 'NANTI'),
(12086226, 'Dimas Bas', 'XII 1', 'OTP ', 2021, 'NANTI'),
(20654112, 'Azzahra Sabina Zain', 'XII 1', 'OTP ', 2021, 'NANTI'),
(26895743, 'Aldiyan Tanjung', 'XII 1', 'OTP ', 2021, 'NANTI'),
(31655464, 'Anjas Adi Saputra ', 'XII 1', 'OTP ', 2021, 'NANTI'),
(31716827, 'Adelio Talenta Wibowo', 'XII 1', 'OTP ', 2021, 'NANTI'),
(32096827, 'Dhea Putri Ananda', 'XII 1', 'OTP ', 2021, 'NANTI'),
(32373234, 'Cantika Rizky Maulida', 'XII 1', 'OTP ', 2021, 'NANTI'),
(33437720, 'Ananda Rachma Alyani', 'XII 1', 'OTP ', 2021, 'NANTI'),
(33458506, 'Devira', 'XII 1', 'OTP ', 2021, 'NANTI'),
(35475998, 'Alvian Dwi Harsyanto', 'XII 1', 'OTP ', 2021, 'NANTI');

-- --------------------------------------------------------

--
-- Table structure for table `formkelasmm`
--

CREATE TABLE `formkelasmm` (
  `NISN` int(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Tahun_Ajaran` int(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formkelasmm`
--

INSERT INTO `formkelasmm` (`NISN`, `Nama`, `Kelas`, `Jurusan`, `Tahun_Ajaran`, `Alamat`) VALUES
(26318601, 'Ahmad ', 'XII', 'MMD', 2021, 'Jakarta'),
(30597286, 'Denny Heriawan Putra', 'XII', 'MMD', 2021, 'Jakarta'),
(31071568, 'Anisyah Putri Nazwa', 'XII', 'MMD', 2021, 'Jakarta'),
(31192091, 'Andi Raihan Malalangi', 'XII', 'MMD', 2021, 'Jakarta'),
(32374933, 'Achmad Zuhri', 'XII', 'MMD', 2021, 'Jakarta'),
(33270863, 'Algi Rahma', 'XII', 'MMD', 2021, 'Jakarta'),
(33314632, 'Ahmad Rifandi', 'XII', 'MMD', 2021, 'Jakarta'),
(33474203, 'Dimas Ahmad Fadlilah', 'XII', 'MMD', 2021, 'Jakarta'),
(33474862, 'Ahmad Al Muhajir', 'XII', 'MMD', 2021, 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `formkelaspm`
--

CREATE TABLE `formkelaspm` (
  `NISN` int(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Kelas` varchar(20) NOT NULL,
  `Jurusan` varchar(50) NOT NULL,
  `Tahun_Ajaran` int(20) NOT NULL,
  `Alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formkelaspm`
--

INSERT INTO `formkelaspm` (`NISN`, `Nama`, `Kelas`, `Jurusan`, `Tahun_Ajaran`, `Alamat`) VALUES
(20293078, 'Fauzi Hermansyah', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(20951180, 'An Nas Tasya Wardani ', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(24003471, 'Annisa Shesa Amanda Putri', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(24207534, 'Erna Damayanti', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(25659566, 'Chika Herliani', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(26876185, 'Difa Mohammad Rizki', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(29724284, 'Farsa Shaumi Ramadhan', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(31071566, 'Alwie Fazryansyah Putra', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(32357415, 'Danti Shafitri', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(33158439, 'Ade  Widiyawati', 'XII 1 ', 'BDP', 2021, 'NANTI'),
(33474910, 'Fa\'adhil Yuda Putra Amanta', 'XII 1 ', 'BDP', 2021, 'NANTI');

-- --------------------------------------------------------

--
-- Table structure for table `loginakademik`
--

CREATE TABLE `loginakademik` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginakademik`
--

INSERT INTO `loginakademik` (`username`, `password`) VALUES
('admin', 'kkp2021');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formdataguru`
--
ALTER TABLE `formdataguru`
  ADD UNIQUE KEY `PRIMARYKEY` (`NIP`);

--
-- Indexes for table `formdatanilai`
--
ALTER TABLE `formdatanilai`
  ADD UNIQUE KEY `PRIMARYKEY` (`NISN`);

--
-- Indexes for table `formkelasak`
--
ALTER TABLE `formkelasak`
  ADD UNIQUE KEY `PRIMARYKEY` (`NISN`) USING BTREE;

--
-- Indexes for table `formkelasap`
--
ALTER TABLE `formkelasap`
  ADD UNIQUE KEY `PRIMARYKEY` (`NISN`);

--
-- Indexes for table `formkelasmm`
--
ALTER TABLE `formkelasmm`
  ADD UNIQUE KEY `PRIMARYKEY` (`NISN`);

--
-- Indexes for table `formkelaspm`
--
ALTER TABLE `formkelaspm`
  ADD UNIQUE KEY `PRIMARYKEY` (`NISN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
