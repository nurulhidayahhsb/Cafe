-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2025 at 01:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_decafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bayar`
--

CREATE TABLE `tb_bayar` (
  `id_bayar` bigint(19) NOT NULL,
  `nominal_uang` bigint(19) NOT NULL,
  `total_bayar` bigint(19) NOT NULL,
  `waktu_bayar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_bayar`
--

INSERT INTO `tb_bayar` (`id_bayar`, `nominal_uang`, `total_bayar`, `waktu_bayar`) VALUES
(2507110200881, 100000, 76000, '2025-07-15 18:42:52'),
(2507110209149, 100000, 71000, '2025-07-17 17:00:53'),
(2507160046611, 50000, 44000, '2025-07-15 18:45:40'),
(2507160220898, 100000, 63000, '2025-07-15 19:21:55'),
(2507172358647, 200000, 175000, '2025-07-18 10:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftar_menu`
--

CREATE TABLE `tb_daftar_menu` (
  `id` int(10) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `nama_menu` varchar(200) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `kategori` int(10) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_daftar_menu`
--

INSERT INTO `tb_daftar_menu` (`id`, `foto`, `nama_menu`, `keterangan`, `kategori`, `harga`, `stok`) VALUES
(0, '16929-14.png', 'Mie Bangladesh', 'Mie enakk', 19, '23000', '11'),
(1, '1.png', 'Kopi Keju', 'Kopi Mantap', 1, '27000', '12'),
(2, '2.png', 'Cookies and Cream', 'Campuran oreo dan eskrim', 2, '25000', '12'),
(3, '3.png', 'Kopi Baileys', 'Ada sedikit rasa asem yang membuat minuman lebi enak', 1, '20000', '24'),
(4, '4.png', 'Kopi Kulo', 'Bestseller', 1, '21000', '23'),
(5, '5.png', 'Americano', 'Kopi hitam yang mantap', 1, '15000', '30'),
(6, '6.png', 'Vanilla Oreo', 'Campuran yang membuat lebi creamy', 2, '24000', '13'),
(7, '7.png', 'Avocatto', 'Campuran buah pokat dengan kopi', 1, '26000', '15'),
(8, '8.png', 'Caramel Machiato', 'Kopi dengan campuran caramel yang manis', 1, '27000', '12'),
(9, '9.png', 'Kopi Berry', 'Kopi dengan campuran sirup berry', 1, '24000', '12'),
(10, '10.png', 'Kopi Spekulo', 'Mantap', 1, '20000', '24'),
(11, '11.png', 'Nasi Goreng Special', 'Bumbu pilihan', 3, '30000', '23'),
(12, '12.png', 'Nasi Ayam Geprek', 'Ayam dengan sambal yang mantul', 3, '23000', '23'),
(13, '13.png', 'French Fries', 'Potongan yang pas', 4, '22000', '23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori_menu`
--

CREATE TABLE `tb_kategori_menu` (
  `id_kat_menu` int(11) NOT NULL,
  `jenis_menu` int(10) NOT NULL,
  `kategori_menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kategori_menu`
--

INSERT INTO `tb_kategori_menu` (`id_kat_menu`, `jenis_menu`, `kategori_menu`) VALUES
(1, 1, 'Coffee'),
(2, 1, 'NonCoffee'),
(3, 2, 'Nasi'),
(4, 2, 'Snack'),
(19, 0, 'Mie'),
(20, 0, 'Juss'),
(22, 1, 'Air');

-- --------------------------------------------------------

--
-- Table structure for table `tb_list_order`
--

CREATE TABLE `tb_list_order` (
  `id_list_order` int(10) NOT NULL,
  `menu` int(10) NOT NULL,
  `kode_order` bigint(19) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `catatan` varchar(300) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_list_order`
--

INSERT INTO `tb_list_order` (`id_list_order`, `menu`, `kode_order`, `jumlah`, `catatan`, `status`) VALUES
(6, 0, 2507110209149, 1, 'kosnggggg', 2),
(7, 5, 2507110200881, 2, 'no sugar', 2),
(8, 6, 2507152359798, 2, '', 1),
(9, 0, 2507110200881, 2, 'pedass', 2),
(10, 13, 2507160046611, 2, 'okkee', 1),
(11, 3, 2507160220898, 2, 'Less sugar', 1),
(12, 12, 2507160220898, 1, 'extra sambel', 2),
(13, 9, 2507110209149, 2, 'okehh', 0),
(14, 3, 2507172358647, 2, 'maniss bgt', 0),
(15, 1, 2507172358647, 5, 'asemm', 0),
(16, 7, 2507181624800, 6, 'kosnggggg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE `tb_order` (
  `id_order` bigint(19) NOT NULL,
  `pelanggan` varchar(200) NOT NULL,
  `meja` int(10) NOT NULL,
  `pelayan` int(10) NOT NULL,
  `waktu_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `pelanggan`, `meja`, `pelayan`, `waktu_order`) VALUES
(2507110200881, 'Nurulll', 1, 2, '2025-07-10 20:53:22'),
(2507110209149, 'Sanah', 4, 2, '2025-07-10 19:10:04'),
(2507152359798, 'Limah', 2, 2, '2025-07-15 16:59:41'),
(2507160046611, 'Adoh', 1, 2, '2025-07-15 17:46:47'),
(2507160220898, 'Anis', 5, 2, '2025-07-15 19:20:52'),
(2507172358647, 'Anis', 6, 2, '2025-07-17 16:59:05'),
(2507181624800, 'Ayu', 7, 2, '2025-07-18 09:24:18');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` int(1) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nohp` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `level`, `nama`, `nohp`, `alamat`) VALUES
(1, 'abc1@abc.com', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 'Abc1', '123456789011', 'jl merdeka lapangan banteng'),
(2, 'admin@admin.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 'Owner', '123456789444', 'jl kembangan vila nusa indah jaya'),
(3, 'abc2@abc.com', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 'Abc2', '123456789011', 'bojong kulur vila nusa indah'),
(4, 'abc3@abc.com', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 'Abc3', '123456789011', 'sakura regency jl williamm'),
(20, 'nurul@nnn.com', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 'Nurul', '37648274', 'Medan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bayar`
--
ALTER TABLE `tb_bayar`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `tb_daftar_menu`
--
ALTER TABLE `tb_daftar_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `tb_kategori_menu`
--
ALTER TABLE `tb_kategori_menu`
  ADD PRIMARY KEY (`id_kat_menu`);

--
-- Indexes for table `tb_list_order`
--
ALTER TABLE `tb_list_order`
  ADD PRIMARY KEY (`id_list_order`),
  ADD KEY `menu` (`menu`),
  ADD KEY `kode_order` (`kode_order`) USING BTREE;

--
-- Indexes for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `pelayan` (`pelayan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kategori_menu`
--
ALTER TABLE `tb_kategori_menu`
  MODIFY `id_kat_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_list_order`
--
ALTER TABLE `tb_list_order`
  MODIFY `id_list_order` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_daftar_menu`
--
ALTER TABLE `tb_daftar_menu`
  ADD CONSTRAINT `tb_daftar_menu_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `tb_kategori_menu` (`id_kat_menu`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_list_order`
--
ALTER TABLE `tb_list_order`
  ADD CONSTRAINT `tb_list_order_ibfk_1` FOREIGN KEY (`menu`) REFERENCES `tb_daftar_menu` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_list_order_ibfk_2` FOREIGN KEY (`kode_order`) REFERENCES `tb_order` (`id_order`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_order`
--
ALTER TABLE `tb_order`
  ADD CONSTRAINT `tb_order_ibfk_1` FOREIGN KEY (`pelayan`) REFERENCES `tb_user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
