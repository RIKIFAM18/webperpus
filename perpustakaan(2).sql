-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2023 at 11:13 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(10) NOT NULL,
  `USERNAME` varchar(128) DEFAULT NULL,
  `PASSWORD` mediumtext DEFAULT NULL,
  `LAST_LOGIN` varchar(40) DEFAULT NULL,
  `ROLE` varchar(15) DEFAULT NULL,
  `FULLNAME` varchar(128) DEFAULT NULL,
  `JENIS_KELAMIN` char(1) DEFAULT NULL,
  `NO_TELP` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext DEFAULT NULL,
  `PHOTO` mediumtext DEFAULT NULL,
  `DTE_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `USERNAME`, `PASSWORD`, `LAST_LOGIN`, `ROLE`, `FULLNAME`, `JENIS_KELAMIN`, `NO_TELP`, `ALAMAT`, `PHOTO`, `DTE_CREATED`) VALUES
('AD001', 'admin', '123456', '16-07-2017 14:54:47', 'superadmin', 'fitria rahmawati', 'p', '085814631367', 'jalan pucung', '1660628531924.jpg', '2017-06-14'),
('AD002', 'sahid', '9f8b4c019d3b7bc89e82a85fbd0d4008', '15-07-2017 14:14:32', 'admin', 'Sulaeman Sahid', NULL, NULL, NULL, 'huga.jpg', '2017-06-16'),
('AD003', 'hasim', 'd094c0a6c7ec4f01f75837ace20925fa', '16-07-2017 08:47:03', 'superadmin', 'Hasim Rochmad', 'L', '088788899', 'Jl semeru', 'Image_2d6d9b2.jpg', '2017-06-16'),
('AD004', 'tacik', '977dca586aea0eac2674a89793e252ec', '26-06-2017 18:12:38', 'admin', 'Riski Ananda W. P.', NULL, NULL, NULL, 'default.png', '2017-06-20'),
('AD005', 'ravi', '63dd3e154ca6d948fc380fa576343ba6', '24-06-2017 11:46:32', 'admin', 'Rafi Agatha', NULL, NULL, NULL, 'default.png', '2017-06-21'),
('AD006', 'rehan', '8625d1c13eaf0a75068d3cf2cdde43f6', '16-07-2017 14:46:29', 'admin', 'Rehan Arroihan', 'L', '0897789088', 'Jl Jalan id', 'stdmp.png', '2017-06-24'),
('AD007', 'rasta', '25f423bce283a8d0cbb66252da5d3cdd', '11-07-2017 07:26:51', 'superadmin', 'Rasta Hirgawana', NULL, NULL, NULL, 'default.png', '2017-07-11'),
('AD008', 'slamet', 'c5a42d9667c760e1b7c064e25536e570', '12-07-2017 03:36:15', 'superadmin', 'Slamet Riyadi', NULL, NULL, NULL, 'default.png', '2017-07-12'),
('AD009', 'arroihan', '29f6e3a5cf5641c3d60a6f38b86a2b92', NULL, 'superadmin', 'Multazam Arroihan Gusdiansyah', NULL, NULL, NULL, 'default.png', '2017-07-16'),
('AD010', 'admin', '21232f297a57a5a743894a0e4a801fc3', '20-12-2023 10:14:00', 'superadmin', 'fitria rahmawati', NULL, NULL, NULL, 'default.png', '2023-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_ANGGOTA` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `FULL_NAME` varchar(128) DEFAULT NULL,
  `TMP_LAHIR` varchar(90) DEFAULT NULL,
  `TGL_LAHIR` varchar(20) DEFAULT NULL,
  `ALAMAT` mediumtext DEFAULT NULL,
  `GENDER` char(1) DEFAULT NULL,
  `TELP` varchar(20) DEFAULT NULL,
  `FOTO` mediumtext DEFAULT NULL,
  `D_CREATED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_ANGGOTA`, `ID_ADMIN`, `FULL_NAME`, `TMP_LAHIR`, `TGL_LAHIR`, `ALAMAT`, `GENDER`, `TELP`, `FOTO`, `D_CREATED`) VALUES
('AGT001', 'AD001', 'Lee Haechan', 'Bandung', '02/20/2000', 'Jl. Danau Kerinci V G6D4, Cimahi, Bandung', 'L', '085733573529', 'haechan.JPG', '2017-06-16'),
('AGT002', 'AD001', 'Yoo Jimin', 'Jakarta', '06/16/2000', 'Jl. Kawi no. 89, Jakarta Selatan', 'P', '0897786788954', 'karina_ae.JPG', '2017-06-16'),
('AGT003', 'AD001', 'Huang Renjun', 'Malang', '10/13/2000', 'Jl. Silak Kesam 101', 'L', '087669887654', 'h_renjun.JPG', '2017-06-16'),
('AGT004', 'AD001', 'Shin Ryujin', 'Bandung', '03/08/2001', 'Perum. Aspol 443, Kota Bandung', 'P', '0818897546788', 'S_Ryunjin.JPG', '2017-06-16'),
('AGT005', 'AD001', 'Kim Minjeong', 'Jakarta Selatan', '02/19/2001', 'Perum. Grand Emerald ZU3, Jakarta Selatan', 'P', '093889765643', 'k_minjeong.JPEG', '2017-06-16'),
('AGT006', 'AD001', 'Aeri Uchinaga', 'Jakarta Selatan', '08/18/2000', 'Gg. Pattimura 89, Jakarta Selatan', 'P', '085389755644', 'Aeri_u.JPEG', '2017-06-16'),
('AGT007', 'AD001', 'Lee Jeno', 'Yogyakarta', '06/16/2000', 'Sulfat Indah 89, Yogyakarta', 'L', '08267599432', 'l_jeno.JPG', '2017-06-16'),
('AGT008', 'AD001', 'Ning Yi Zhuo', 'Surabaya', '08/12/2002', 'Ds. Sambungrejo RT. 4 RW. 7 Kec. Welasasih, Surabaya', 'P', '0876654897765', 'ningning_aespa.JPG', '2017-06-16'),
('AGT009', 'AD001', 'Na Jaemin', 'Surabaya', '04/01/2000', 'Mburine cito', 'L', '089776598334', 'L_jaemin.JPG', '2017-06-16'),
('AGT010', 'AD001', 'Lee Minhyung', 'Yogyakarta', '04/05/1999', 'Ds. Sumoharjo, RT. 5 RW. 9, Yogyakarta', 'L', '08677564987', 'l_mark.JPG', '2017-06-16'),
('AGT011', 'AD001', 'Bae Joo Hyun', 'Surabaya', '03/08/1991', 'Perum. Sugih Asri F32, Candi, Surabaya', 'P', '084876835267', 'irene.JPG', '2017-06-16'),
('AGT012', 'AD001', 'Shon Seung Wan', 'Jakarta', '08/04/1994', 'Perum. Bumi Citra Fajar A76, Jakarta Pusat', 'P', '08567498256', 'wendy_rv.JPG', '2017-06-16'),
('AGT013', 'AD001', 'Park Ji Sung', 'Malang', '04/02/2002', 'Jl. Sironggo Ajoh Kav. 4, Malang', 'L', '089765689645', 'p_jisung.JPG', '2017-06-16'),
('AGT014', 'AD001', 'Park Soo Young', 'Bandung', '06/29/1996', 'Perum. Siswa Taman AG65, Bandung', 'P', '087995764839', 'joy_rv.JPG', '2017-06-29'),
('AGT015', 'AD001', 'Zhong Chenle', 'Surabaya', '06/10/2001', 'Jl. Utama Kota gg. 6, Surabaya', 'L', '088786368495', 'z_chenle.JPG', '2017-06-29'),
('AGT016', 'AD001', 'Jung Jaehyun', 'Jakarta', '07/09/1997', 'Jl. Alun alun kota tua, Jakarta', 'L', '08766754345', 'l_jaehyun.JPG', '2017-07-09');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `ID_BUKU` varchar(10) NOT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`ID_BUKU`, `ID_ADMIN`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `stok`, `dipinjam`) VALUES
('BKO004', 'AD003', 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish ', 2014, 6, 2),
('BKO005', 'AD001', 'bahasa indonesia', 2, 'Umi Nur\'aini dan Indriyani', 'pusat perbukuan', 2015, 8, 2),
('BKO006', 'AD001', 'sebuah seni untuk bersikap bodo amat', 8, 'mark manson', 'Gramedia Widiasarana Indonesia', 2016, 10, 1),
('BKO007', 'AD001', 'php komplet', 1, 'jubilee', 'elex media komputindo', 2017, 12, 2),
('BKO008', 'AD001', 'Mudah Belajar Komputer untuk Anak', 1, 'Bambang Agus Setiawan', 'hutan media', 2014, 5, 2),
('BKO009', 'AD001', 'laskar pelangi', 8, 'andrea hirata', 'bentang pustaka', 2005, 10, 1),
('BKO010', 'AD001', 'neraka cermin', 10, 'edogawa ranpo', 'katta', 2011, 8, 1),
('BKO011', 'AD001', 'detektif conan ep20', 9, 'okigawa sasuke', 'Cultura', 2016, 8, 3),
('BKO012', 'AD001', 'bungou straydogs', 9, 'kafka asagiri', 'elex media komputindo', 2022, 5, 1),
('BKO013', 'AD001', 'From Hobby to Money', 4, 'deasylawati', 'Elex Media Komputindo', 2015, 8, 3),
('BKO014', 'AD001', 'The Moon Over The Mountain', 8, 'Nakajima Atsushi', 'Odyssee Publishing', 0000, 10, 0),
('BKO015', 'AD001', '7 prajurit bapak', 8, 'wulan nur amalia', 'mediakita', 2022, 11, 1),
('BKO016', 'AD001', 'one room of happiness', 9, 'hakuri', 'square enix', 2017, 10, 0),
('BKO017', 'AD001', 'Attack on titan vol.1', 9, 'hajime isayama', 'kodansha', 2009, 10, 1),
('BKO018', 'AD001', 'kkn desa penari', 13, 'simpleman', 'bukune', 2019, 10, 1),
('BKO019', 'AD001', 'Kisah Tanah Jawa : Investigasi mitos dan mistis', 13, 'Kisah Tanah Jawa', 'GagasMedia', 2019, 20, 1),
('BKO020', 'AD001', 'Sewu Dino', 13, 'Simpleman', 'Bukune', 2020, 10, 1),
('BKO021', 'AD001', 'Dear J', 8, 'tx421cph', 'Wattpad', 2017, 10, 1),
('BKO022', 'AD001', 'Pengantar Akuntansi 1 ', 12, 'Carl S. Warren', 'Salemba Empat', 2022, 15, 0),
('BKO023', 'AD001', 'Doraemon : Stand By Me ', 9, 'Takashi Yamazaki', 'Fujiko Movie Studio ', 2014, 5, 0),
('BKO024', 'AD001', 'Naruto', 9, 'Masashi Kishimoto', 'Shueisha', 1997, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `ID_DIPINJAM` int(11) NOT NULL,
  `ID_PINJAM` varchar(10) DEFAULT NULL,
  `ID_BUKU` varchar(10) DEFAULT NULL,
  `TGL_KEMBALI` date DEFAULT NULL,
  `DENDA` int(11) DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`ID_DIPINJAM`, `ID_PINJAM`, `ID_BUKU`, `TGL_KEMBALI`, `DENDA`, `STATUS`) VALUES
(13, 'P170623001', 'BKO005', '2017-06-25', 0, 'Sudah Kembali'),
(14, 'P170623001', 'BKO008', NULL, 0, 'Belum Kembali'),
(15, 'P170623001', 'BKO013', NULL, 0, 'Belum Kembali'),
(16, 'P170623002', 'BKO008', NULL, 0, 'Belum Kembali'),
(17, 'P170624001', 'BKO013', '2017-07-09', 4000, 'Sudah Kembali'),
(18, 'P170624001', 'BKO007', NULL, 0, 'Belum Kembali'),
(19, 'P170624001', 'BKO011', NULL, 0, 'Belum Kembali'),
(20, 'P170624002', 'BKO004', NULL, 0, 'Belum Kembali'),
(21, 'P170624002', 'BKO005', NULL, 0, 'Belum Kembali'),
(22, 'P170624002', 'BKO007', NULL, 0, 'Belum Kembali'),
(23, 'P170624003', 'BKO011', NULL, 0, 'Belum Kembali'),
(24, 'P170624003', 'BKO004', NULL, 0, 'Belum Kembali'),
(25, 'P170624003', 'BKO015', NULL, 0, 'Belum Kembali'),
(26, 'P170624004', 'BKO017', '2017-06-25', 0, 'Sudah Kembali'),
(27, 'P170624005', 'BKO013', NULL, 0, 'Belum Kembali'),
(28, 'P170624005', 'BKO006', NULL, 0, 'Belum Kembali'),
(29, 'P170624006', 'BKO011', '2017-06-25', 0, 'Sudah Kembali'),
(30, 'P170624006', 'BKO018', '2017-07-10', 4500, 'Sudah Kembali'),
(31, 'P170625001', 'BKO019', NULL, 0, 'Belum Kembali'),
(32, 'P170625001', 'BKO020', NULL, 0, 'Belum Kembali'),
(33, 'P170625001', 'BKO021', NULL, 0, 'Belum Kembali'),
(34, 'P170625002', 'BKO010', '2017-07-09', 3500, 'Sudah Kembali'),
(35, 'P170625002', 'BKO016', NULL, 0, 'Belum Kembali'),
(36, 'P170626001', 'BKO012', NULL, 0, 'Belum Kembali'),
(37, 'P170626001', 'BKO009', NULL, 0, 'Belum Kembali'),
(38, 'P170626001', 'BKO014', NULL, 0, 'Belum Kembali'),
(39, 'P170626002', 'BKO014', NULL, 0, 'Belum Kembali'),
(40, 'P170626002', 'BKO010', NULL, 0, 'Belum Kembali'),
(41, 'P170629001', 'BKO013', NULL, 0, 'Belum Kembali'),
(42, 'P170629001', 'BKO009', NULL, 0, 'Belum Kembali'),
(43, 'P170629002', 'BKO010', NULL, 0, 'Belum Kembali'),
(44, 'P170629002', 'BKO016', NULL, 0, 'Belum Kembali'),
(45, 'P170629002', 'BKO012', NULL, 0, 'Belum Kembali'),
(46, 'P170709001', 'BKO020', NULL, 0, 'Belum Kembali'),
(47, 'P170709001', 'BKO011', NULL, 0, 'Belum Kembali'),
(48, 'P170709002', 'BKO022', NULL, 0, 'Belum Kembali'),
(49, 'P170709002', 'BKO021', NULL, 0, 'Belum Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(10) NOT NULL,
  `nama_kategori` varchar(45) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('K001', 'Komputer'),
('K0012', 'Bisnis'),
('K0013', 'Anak-anak'),
('K002', 'Bahasa'),
('K003', 'Sains'),
('K004', 'Hobby'),
('K005', 'Komunikasi'),
('K006', 'Hukum'),
('K007', 'Agama'),
('K008', 'Populer'),
('K009', 'Komik');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `ID_NOTIF` int(11) NOT NULL,
  `ID_ADMIN` varchar(128) NOT NULL,
  `JUDUL` varchar(128) NOT NULL,
  `ISI` varchar(128) NOT NULL,
  `DT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`ID_NOTIF`, `ID_ADMIN`, `JUDUL`, `ISI`, `DT`) VALUES
(2, 'AD003', 'Fokus target', 'Kejar sesuai kemampuan, open book', '2017-07-03'),
(5, 'AD003', 'Hahha', 'hehee', '2017-07-03'),
(6, 'AD003', 'THR Turun', 'silahkan antri di ruang bendahara jam 12.00', '2017-07-09'),
(7, 'AD007', 'Selamat siang', 'jangan lupa sholat dhuhr, cekno tenang atine', '2017-07-11'),
(8, 'AD008', 'Attitude is everything', 'semangat pagii, pagi pagi pagi', '2017-07-12'),
(10, 'AD001', 'Hallo', 'test halo', '2017-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_PINJAM` varchar(10) NOT NULL,
  `ID_ANGGOTA` varchar(10) DEFAULT NULL,
  `ID_ADMIN` varchar(10) DEFAULT NULL,
  `TGL_PINJAM` date DEFAULT NULL,
  `JML_BUKU` int(11) NOT NULL,
  `STATS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`ID_PINJAM`, `ID_ANGGOTA`, `ID_ADMIN`, `TGL_PINJAM`, `JML_BUKU`, `STATS`) VALUES
('P170623001', 'AGT002', 'AD004', '2017-06-23', 3, 'Belum Kembali'),
('P170623002', 'AGT003', 'AD005', '2017-06-23', 1, 'Belum Kembali'),
('P170624001', 'AGT007', 'AD005', '2017-06-24', 3, 'Belum Kembali'),
('P170624002', 'AGT008', 'AD005', '2017-06-24', 3, 'Belum Kembali'),
('P170624003', 'AGT004', 'AD005', '2017-06-24', 3, 'Belum Kembali'),
('P170624004', 'AGT001', 'AD004', '2017-06-24', 1, 'Sudah Kembali'),
('P170624005', 'AGT007', 'AD004', '2017-06-24', 2, 'Belum Kembali'),
('P170624006', 'AGT003', 'AD006', '2017-06-24', 2, 'Sudah Kembali'),
('P170625001', 'AGT013', 'AD006', '2017-06-25', 3, 'Belum Kembali'),
('P170625002', 'AGT010', 'AD006', '2017-06-25', 2, 'Belum Kembali'),
('P170626001', 'AGT006', 'AD004', '2017-06-26', 3, 'Belum Kembali'),
('P170626002', 'AGT012', 'AD004', '2017-06-26', 2, 'Belum Kembali'),
('P170629001', 'AGT014', 'AD006', '2017-06-29', 2, 'Belum Kembali'),
('P170629002', 'AGT015', 'AD006', '2017-06-29', 3, 'Belum Kembali'),
('P170709001', 'AGT011', 'AD006', '2017-07-09', 2, 'Belum Kembali'),
('P170709002', 'AGT016', 'AD006', '2017-07-09', 2, 'Belum Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `perpus`
--

CREATE TABLE `perpus` (
  `ID_PERPUS` int(11) NOT NULL,
  `NAMA_P` varchar(128) DEFAULT NULL,
  `ALAMAT_P` mediumtext DEFAULT NULL,
  `ABOUT` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perpus`
--

INSERT INTO `perpus` (`ID_PERPUS`, `NAMA_P`, `ALAMAT_P`, `ABOUT`) VALUES
(192237, 'kasih ibu', 'balekkambang', 'umum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD UNIQUE KEY `ADMIN_PK` (`ID_ADMIN`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_ANGGOTA`),
  ADD UNIQUE KEY `ANGGOTA_PK` (`ID_ANGGOTA`),
  ADD KEY `MAKE_FK` (`ID_ADMIN`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_BUKU`),
  ADD UNIQUE KEY `BUKU_PK` (`ID_BUKU`),
  ADD KEY `CREATE_FK` (`ID_ADMIN`);

--
-- Indexes for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD PRIMARY KEY (`ID_DIPINJAM`),
  ADD UNIQUE KEY `DETAIL_PINJAM_PK` (`ID_DIPINJAM`),
  ADD KEY `MEMILIKI_FK` (`ID_PINJAM`),
  ADD KEY `MENGAMBIL_FK` (`ID_BUKU`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`ID_NOTIF`),
  ADD KEY `FK_NOTIF_MEMBUAT_ADMIN` (`ID_ADMIN`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_PINJAM`),
  ADD UNIQUE KEY `PEMINJAMAN_PK` (`ID_PINJAM`),
  ADD KEY `MELAKUKAN_FK` (`ID_ANGGOTA`),
  ADD KEY `MELAYANI_FK` (`ID_ADMIN`);

--
-- Indexes for table `perpus`
--
ALTER TABLE `perpus`
  ADD PRIMARY KEY (`ID_PERPUS`),
  ADD UNIQUE KEY `PERPUS_PK` (`ID_PERPUS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  MODIFY `ID_DIPINJAM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `ID_NOTIF` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `perpus`
--
ALTER TABLE `perpus`
  MODIFY `ID_PERPUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192238;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `FK_ANGGOTA_MAKE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_BUKU_CREATE_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `detail_pinjam`
--
ALTER TABLE `detail_pinjam`
  ADD CONSTRAINT `FK_DETAIL_P_MEMILIKI_PEMINJAM` FOREIGN KEY (`ID_PINJAM`) REFERENCES `peminjaman` (`ID_PINJAM`),
  ADD CONSTRAINT `FK_DETAIL_P_MENGAMBIL_BUKU` FOREIGN KEY (`ID_BUKU`) REFERENCES `buku` (`ID_BUKU`);

--
-- Constraints for table `notif`
--
ALTER TABLE `notif`
  ADD CONSTRAINT `FK_NOTIF_MEMBUAT_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `FK_PEMINJAM_MELAKUKAN_ANGGOTA` FOREIGN KEY (`ID_ANGGOTA`) REFERENCES `anggota` (`ID_ANGGOTA`),
  ADD CONSTRAINT `FK_PEMINJAM_MELAYANI_ADMIN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
