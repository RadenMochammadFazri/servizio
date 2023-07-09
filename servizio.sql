-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 04:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `servizio`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_keranjang` int(100) NOT NULL,
  `jumlah` int(100) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_produk` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_keranjang`, `jumlah`, `id_produk`, `harga_produk`, `kategori`) VALUES
(111, 1, 19, 'RP.5.000.000', 'New Arrival'),
(114, 1, 19, 'RP.5.000.000', 'New Arrival'),
(115, 1, 12, 'RP.5.000.000', 'Digital Marketing'),
(116, 1, 9, 'RP.1.000.000', 'Design Graphic'),
(119, 1, 19, 'RP.5.000.000', 'New Arrival'),
(127, 1, 19, 'RP.5.000.000', 'New Arrival'),
(129, 1, 7, 'RP.1.000.000', 'Design Graphic'),
(130, 1, 8, 'RP.5.000.000', 'Video Editing'),
(131, 1, 12, 'RP.5.000.000', 'Digital Marketing'),
(132, 1, 7, 'RP.1.000.000', 'Design Graphic'),
(133, 1, 8, 'RP.5.000.000', 'Video Editing'),
(134, 1, 7, 'RP.1.000.000', 'Design Graphic'),
(135, 1, 7, 'RP.1.000.000', 'Design Graphic'),
(136, 1, 7, 'RP.1.000.000', 'Design Graphic'),
(137, 1, 8, 'RP.5.000.000', 'Video Editing'),
(138, 1, 10, 'RP.5.000.000', 'Music & Audio'),
(139, 1, 8, 'RP.5.000.000', 'Video Editing'),
(140, 1, 7, 'RP.1.000.000', 'Design Graphic'),
(141, 1, 11, 'RP.1.000.000', 'Writing'),
(142, 1, 10, 'RP.5.000.000', 'Music & Audio'),
(143, 1, 11, 'RP.1.000.000', 'Writing'),
(144, 1, 11, 'RP.1.000.000', 'Writing'),
(145, 1, 11, 'RP.1.000.000', 'Writing'),
(146, 1, 11, 'RP.1.000.000', 'Writing'),
(147, 1, 10, 'RP.5.000.000', 'Music & Audio'),
(148, 1, 12, 'RP.5.000.000', 'Digital Marketing'),
(149, 1, 7, 'RP.1.000.000', 'Design Graphic'),
(150, 1, 10, 'RP.5.000.000', 'Music & Audio'),
(151, 1, 12, 'RP.5.000.000', 'Digital Marketing'),
(152, 1, 15, 'RP.1.000.000', 'Music & Audio'),
(153, 1, 6, 'RP.500.000', 'Writing');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori` varchar(100) NOT NULL,
  `id_kategori` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori`, `id_kategori`) VALUES
('Programming', 1),
('Video Editing', 2),
('Design Graphic', 3),
('Digital Marketing', 4),
('Music & Audio', 5),
('Writing', 6),
('Best Seller', 7),
('New Arrival', 8);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(50) NOT NULL,
  `judul_produk` varchar(255) NOT NULL,
  `tersedia` varchar(100) NOT NULL,
  `revisi` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `waktu_pengiriman` varchar(265) NOT NULL DEFAULT current_timestamp(),
  `harga_produk` varchar(265) NOT NULL,
  `deskripsi_produk` varchar(255) NOT NULL,
  `gambar_produk1` varchar(255) NOT NULL,
  `gambar_produk2` varchar(255) NOT NULL,
  `gambar_produk3` varchar(255) NOT NULL,
  `detail_produk` varchar(255) NOT NULL,
  `format_produk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `judul_produk`, `tersedia`, `revisi`, `id_kategori`, `waktu_pengiriman`, `harga_produk`, `deskripsi_produk`, `gambar_produk1`, `gambar_produk2`, `gambar_produk3`, `detail_produk`, `format_produk`) VALUES
(3, 'HTML', 'available', '2 kali', 1, '6 hari', 'RP.1.000.000', 'membuat web E-Commerce ', 'product7.jpg', 'product1.jpg', 'product5.jpg', 'yang penting ada CRUD', 'desain yang bagus'),
(5, 'Logo Animation', 'available', '3 kali', 3, '5 hari', 'RP.5.000.000', 'membuat logo desain yang bagus dan 3 dimensi', 'product3.jpg', 'product9.jpg', 'product1.jpg', 'yang penting bagus', '3 dimensi'),
(6, 'Resume Writing', 'unavailable', '1 kali', 6, '1 hari', 'RP.500.000', 'menulis tugas resume yang panjang', 'product12.jpg', 'product7.jpg', 'product6.jpg', '200 halaman', 'A3'),
(7, 'UI/UX Design', 'available', '3 kali', 3, '4 hari', 'RP.1.000.000', 'membuat tampilan aplikasi berbasis Mobile Phone', 'product8.jpg', 'product4.jpg', 'product2.jpg', 'yang penting bagus', 'aplikasi'),
(8, 'Character Animation', 'available', '5 kali', 2, '6 hari', 'RP.5.000.000', 'membuat karakater desain yang bagus dan bisa bergerak', 'product2.jpg', 'product1.jpg', 'product4.jpg', 'yang penting bagus', 'besar'),
(10, 'Voice Over', 'unavailable', '3 kali', 5, '4 hari', 'RP.5.000.000', 'Voice Over untuk karakter animasi  ', 'product5.jpg', 'product1.jpg', 'product10.jpg', 'Suara bisa diganti sesuai kebutuhan', 'Suara asli'),
(11, 'Book Editing ', 'available', '3 kali', 6, '4 hari', 'RP.1.000.000', 'mendesain Buku dengan desain yang bagus', 'product6.jpg', 'product9.jpg', 'product11.jpg', 'desain sampul buku dan isi', 'buku ukuran A5'),
(12, 'Social Media Marketing', 'available', '3 kali', 4, '3 hari', 'RP.5.000.000', 'menjadi Social Media Marketing yang berpengalaman', 'product4.jpg', 'product6.jpg', 'product5.jpg', 'Social Media', 'Instagram, Facebook'),
(13, 'Software Development', 'available', '3 kali', 1, '6 hari', 'RP.5.000.000', 'Software web spesialist', 'product7.jpg', 'product12.jpg', 'product9.jpg', 'bisa web atau mobile', 'web, mobile'),
(14, 'Video Marketing', 'available', '4 kali', 4, '4 hari', 'RP.1.000.000', 'membuat video marketing yang bagus', 'product10.jpg', 'product11.jpg', 'product9.jpg', 'yang penting bagus', 'iklan , short video'),
(15, 'Audio Editing', 'available', '4 kali', 5, '3 hari', 'RP.1.000.000', 'yakali gak jedag jedug', 'product11.jpg', 'product12.jpg', 'product10.jpg', 'no jedag jedug no party', 'MP3'),
(18, 'Artificial Intelligence', 'available', '2 kali', 8, '2 hari', 'RP.1.000.000', 'AI technology', 'product4.jpg', 'product8.jpg', 'banner2.png', 'yang penting bagus', 'robot'),
(19, 'Film', 'available', '3 kali', 8, '4 hari', 'RP.5.000.000', 'membuat film yang bagus', 'product1.jpg', 'product11.jpg', 'product6.jpg', 'yang penting bagus', 'MP4'),
(20, 'Network Engineering', 'available', '5 kali', 7, '3 hari', 'RP.5.000.000', 'membuat jaringan yang bagus', 'product9.jpg', 'product10.jpg', 'product12.jpg', 'yang penting bagus', 'IndiHome'),
(21, 'Javascript', 'available', '1 kali', 7, '3 hari', 'RP.5.000.000', 'aplikasi yang terbaik', 'product4.jpg', 'product10.jpg', 'product9.jpg', 'yang penting bagus', 'js');

-- --------------------------------------------------------

--
-- Table structure for table `proses`
--

CREATE TABLE `proses` (
  `id_servis` int(100) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `status_proses` varchar(200) NOT NULL,
  `id_produk` int(50) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `metode` varchar(100) NOT NULL,
  `tanggal` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `total_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `proses`
--

INSERT INTO `proses` (`id_servis`, `invoice`, `status_proses`, `id_produk`, `gambar`, `metode`, `tanggal`, `total_bayar`) VALUES
(1, 'INV-001', 'Dalam Proses', 10, 'gambar1.jpg', 'BCA', '2023-06-08 15:45:45.845754', 150000),
(2, 'INV-002', 'Selesai', 11, 'gambar2.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 200000),
(3, 'INV-003', 'Dalam Proses', 12, 'gambar3.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 180000),
(4, 'INV-004', 'Selesai', 13, 'gambar4.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 220000),
(5, 'INV-005', 'Dalam Proses', 14, 'gambar5.jpg', 'BCA', '2023-06-08 15:45:45.845754', 190000),
(6, 'INV-006', 'Selesai', 15, 'gambar6.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 240000),
(7, 'INV-007', 'Dalam Proses', 5, 'gambar7.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 170000),
(8, 'INV-008', 'Selesai', 3, 'gambar8.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 210000),
(9, 'INV-009', 'Dalam Proses', 18, 'gambar9.jpg', 'BCA', '2023-06-08 15:45:45.845754', 160000),
(10, 'INV-010', 'Selesai', 19, 'gambar10.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 230000),
(11, 'INV-011', 'Dalam Proses', 20, 'gambar11.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 200000),
(12, 'INV-012', 'Selesai', 21, 'gambar12.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 250000),
(13, 'INV-013', 'Dalam Proses', 6, 'gambar13.jpg', 'BCA', '2023-06-08 15:45:45.845754', 180000),
(14, 'INV-014', 'Selesai', 6, 'gambar14.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 220000),
(15, 'INV-015', 'Dalam Proses', 12, 'gambar15.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 190000),
(16, 'INV-016', 'Selesai', 11, 'gambar16.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 240000),
(17, 'INV-017', 'Dalam Proses', 10, 'gambar17.jpg', 'BCA', '2023-06-08 15:45:45.845754', 170000),
(18, 'INV-018', 'Selesai', 7, 'gambar18.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 210000),
(19, 'INV-019', 'Dalam Proses', 8, 'gambar19.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 160000),
(20, 'INV-020', 'Selesai', 6, 'gambar20.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 230000),
(21, 'INV-021', 'Dalam Proses', 13, 'gambar21.jpg', 'BCA', '2023-06-08 15:45:45.845754', 190000),
(22, 'INV-022', 'Selesai', 14, 'gambar22.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 240000),
(23, 'INV-023', 'Dalam Proses', 15, 'gambar23.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 170000),
(24, 'INV-024', 'Selesai', 13, 'gambar24.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 210000),
(25, 'INV-025', 'Dalam Proses', 14, 'gambar25.jpg', 'BCA', '2023-06-08 15:45:45.845754', 160000),
(26, 'INV-026', 'Selesai', 18, 'gambar26.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 230000),
(27, 'INV-027', 'Dalam Proses', 19, 'gambar27.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 200000),
(28, 'INV-028', 'Selesai', 20, 'gambar28.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 250000),
(29, 'INV-029', 'Dalam Proses', 21, 'gambar29.jpg', 'BCA', '2023-06-08 15:45:45.845754', 180000),
(30, 'INV-030', 'Selesai', 10, 'gambar30.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 220000),
(31, 'INV-031', 'Dalam Proses', 11, 'gambar31.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 190000),
(32, 'INV-032', 'Selesai', 12, 'gambar32.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 240000),
(33, 'INV-033', 'Dalam Proses', 13, 'gambar33.jpg', 'BCA', '2023-06-08 15:45:45.845754', 170000),
(34, 'INV-034', 'Selesai', 14, 'gambar34.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 210000),
(35, 'INV-035', 'Dalam Proses', 15, 'gambar35.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 160000),
(36, 'INV-036', 'Selesai', 14, 'gambar36.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 230000),
(37, 'INV-037', 'Dalam Proses', 3, 'gambar37.jpg', 'BCA', '2023-06-08 15:45:45.845754', 200000),
(38, 'INV-038', 'Selesai', 18, 'gambar38.jpg', 'Mandiri', '2023-06-08 15:45:45.845754', 250000),
(39, 'INV-039', 'Dalam Proses', 19, 'gambar39.jpg', 'Gopay', '2023-06-08 15:45:45.845754', 180000),
(40, 'INV-040', 'Selesai', 20, 'gambar40.jpg', 'Ovo', '2023-06-08 15:45:45.845754', 220000),
(41, 'INV-041', 'Dalam Proses', 10, 'gambar41.jpg', 'BCA', '2023-06-08 17:16:50.389044', 3190000),
(42, 'INV-042', 'Selesai', 11, 'gambar42.jpg', 'Mandiri', '2023-08-11 17:00:00.000000', 2400000),
(43, 'INV-043', 'Dalam Proses', 12, 'gambar43.jpg', 'Gopay', '2023-06-08 17:17:05.419404', 6700000),
(44, 'INV-044', 'Selesai', 13, 'gambar44.jpg', 'Ovo', '2023-06-08 17:18:17.510169', 7100000),
(45, 'INV-045', 'Dalam Proses', 14, 'gambar45.jpg', 'BCA', '2023-11-12 17:00:00.000000', 1659000),
(61, 'INV-046', 'Selesai', 5, 'gambar2', 'Mandiri', '2023-02-19 17:00:00.000000', 1500000),
(62, 'INV-047', 'Selesai', 6, 'gambar3', 'Gopay', '2023-03-09 17:00:00.000000', 2000000),
(63, 'INV-048', 'Selesai', 7, 'gambar4', 'OVO', '2023-04-04 17:00:00.000000', 2500000),
(64, 'INV-049', 'Selesai', 8, 'gambar5', 'BCA', '2023-05-11 17:00:00.000000', 3000000),
(65, 'INV-050', 'Selesai', 10, 'gambar6', 'Mandiri', '2023-06-19 17:00:00.000000', 3500000),
(66, 'INV-051', 'Selesai', 11, 'gambar7', 'Gopay', '2023-07-24 17:00:00.000000', 4000000),
(67, 'INV-052', 'Selesai', 12, 'gambar8', 'OVO', '2023-08-17 17:00:00.000000', 4500000),
(68, 'INV-053', 'Selesai', 13, 'gambar9', 'BCA', '2023-09-29 17:00:00.000000', 5000000),
(69, 'INV-054', 'Selesai', 14, 'gambar10', 'Mandiri', '2023-10-04 17:00:00.000000', 5500000),
(70, 'INV-055', 'Selesai', 15, 'gambar11', 'Gopay', '2023-11-14 17:00:00.000000', 6000000),
(71, 'INV-056', 'Selesai', 18, 'gambar12', 'OVO', '2023-12-27 17:00:00.000000', 6500000),
(72, 'INV-057', 'Selesai', 19, 'gambar13', 'BCA', '2024-01-07 17:00:00.000000', 7000000),
(73, 'INV-058', 'Selesai', 20, 'gambar14', 'Mandiri', '2024-02-12 17:00:00.000000', 7500000),
(74, 'INV-059', 'Selesai', 21, 'gambar15', 'Gopay', '2024-03-20 17:00:00.000000', 8000000),
(75, 'INV-060', 'Selesai', 3, 'gambar16', 'OVO', '2024-04-25 17:00:00.000000', 8500000),
(76, 'INV-061', 'Selesai', 5, 'gambar17', 'BCA', '2024-05-29 17:00:00.000000', 9000000),
(77, 'INV-062', 'Selesai', 6, 'gambar18', 'Mandiri', '2024-06-11 17:00:00.000000', 9500000),
(78, 'INV-063', 'Selesai', 7, 'gambar19', 'Gopay', '2024-07-15 17:00:00.000000', 10000000),
(79, 'INV-064', 'Selesai', 8, 'gambar20', 'OVO', '2024-08-20 17:00:00.000000', 10500000),
(80, 'INV-065', 'Selesai', 10, 'gambar21', 'BCA', '2024-09-24 17:00:00.000000', 11000000),
(81, 'INV-066', 'Selesai', 11, 'gambar22', 'Mandiri', '2024-10-29 17:00:00.000000', 11500000),
(82, 'INV-067', 'Selesai', 12, 'gambar23', 'Gopay', '2024-11-04 17:00:00.000000', 12000000),
(83, 'INV-068', 'Selesai', 13, 'gambar24', 'OVO', '2024-12-09 17:00:00.000000', 12500000),
(84, 'INV-069', 'Selesai', 14, 'gambar25', 'BCA', '2025-01-14 17:00:00.000000', 13000000),
(85, 'INV-070', 'Selesai', 15, 'gambar26', 'Mandiri', '2025-02-19 17:00:00.000000', 13500000),
(86, 'INV-071', 'Selesai', 18, 'gambar27', 'Gopay', '2025-03-24 17:00:00.000000', 14000000),
(87, 'INV-072', 'Selesai', 19, 'gambar28', 'OVO', '2025-04-29 17:00:00.000000', 14500000),
(88, 'INV-073', 'Selesai', 20, 'gambar29', 'BCA', '2025-05-04 17:00:00.000000', 15000000),
(89, 'INV-074', 'Selesai', 21, 'gambar30', 'Mandiri', '2025-06-09 17:00:00.000000', 15500000),
(100, 'INV-075', 'Selesai', 10, 'product5.jpg', 'BCA', '2023-07-04 07:23:33.966467', 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `tanggal_lahir` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `kelamin` varchar(100) NOT NULL,
  `nomor_telepon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `first_name`, `last_name`, `email`, `pass`, `tanggal_lahir`, `kelamin`, `nomor_telepon`) VALUES
(28, 'haechan', 'lee', 'haechan@gmail.com', '0e290e5727aa79e8d9d605d99b47993e', '2000-06-05 17:00:00.000000', 'Male', '088888888888'),
(30, 'admin', 'admin', 'admin123@gmail.com', '0192023a7bbd73250516f069df18b500', '2003-11-15 17:00:00.000000', 'Male', '08123456789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `fk_produk_kategori` (`id_kategori`);

--
-- Indexes for table `proses`
--
ALTER TABLE `proses`
  ADD PRIMARY KEY (`id_servis`),
  ADD KEY `fk_proses_produk` (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_keranjang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `proses`
--
ALTER TABLE `proses`
  MODIFY `id_servis` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `fk_produk_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `proses`
--
ALTER TABLE `proses`
  ADD CONSTRAINT `fk_proses_produk` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
