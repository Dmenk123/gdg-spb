-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2018 at 05:33 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` varchar(8) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id_satuan` int(8) NOT NULL,
  `id_kategori` int(8) NOT NULL,
  `stok_barang` int(11) NOT NULL,
  `stok_awal` int(11) NOT NULL,
  `ss_barang` int(11) NOT NULL,
  `rop_barang` int(11) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'aktif',
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_satuan`, `id_kategori`, `stok_barang`, `stok_awal`, `ss_barang`, `rop_barang`, `status`, `timestamp`) VALUES
('LKP00001', 'AMPLAS NO 0', 5, 2, 151, 110, 0, 0, 'aktif', '2017-11-23 01:08:47'),
('LKP00002', 'AMPAS NO 1', 5, 2, 20, 0, 0, 0, 'aktif', '2017-11-23 01:09:17'),
('LKP00003', 'AMPLAS NO 120', 5, 2, 20, 0, 0, 0, 'aktif', '2017-11-23 01:09:33'),
('LKP00004', 'AMPLAS NO 150', 5, 2, 19, 19, 0, 0, 'aktif', '2017-11-23 01:10:11'),
('LKP00005', 'AMPLAS NO 2', 5, 2, 69, 69, 0, 0, 'aktif', '2017-11-23 01:10:29'),
('LKP00006', 'BATU GRINDA RESIBON 6 X 4 INCH', 1, 2, 67, 17, 0, 0, 'aktif', '2017-12-07 14:21:25'),
('LKP00007', 'BATU GRINDA RESIBON 6 X 6 INCH', 1, 2, 66, 66, 0, 0, 'aktif', '2017-11-23 01:14:53'),
('LKP00008', 'BATU POTONG NIPPON 4 INCH', 1, 2, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:14:35'),
('LKP00009', 'BATU POTONG RESIBON 3 X 16 INCH', 1, 2, 31, 31, 0, 0, 'aktif', '2017-11-23 01:15:14'),
('LKP00010', 'BATU POTONG UNIMAX 4 INCH', 1, 2, 13, 13, 0, 0, 'aktif', '2017-11-23 01:15:25'),
('LKP00011', 'JARUM KERAS M - 10', 1, 2, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:20:34'),
('LKP00012', 'JARUM KERAS M - 12', 1, 2, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:20:44'),
('LKP00013', 'JARUM KERAS M - 16', 1, 2, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:20:56'),
('LKP00014', 'JARUM KERAS M - 20', 1, 2, 2, 2, 0, 0, 'aktif', '2017-12-03 20:22:14'),
('LKP00015', 'JARUM KERAS M - 24', 1, 2, 4, 4, 0, 0, 'aktif', '2017-12-03 20:22:28'),
('LKP00016', 'JARUM KERAS M - 32', 1, 2, 1, 1, 0, 0, 'aktif', '2017-12-03 20:22:45'),
('LKP00017', 'KACA LAS HITAM NO. 10', 1, 2, 20, 20, 0, 0, 'aktif', '2017-12-03 20:27:15'),
('LKP00018', 'KACA LAS HITAM NO. 11', 1, 2, 25, 25, 0, 0, 'aktif', '2017-12-03 20:27:27'),
('LKP00019', 'KACA LAS HITAM NO. 12', 1, 2, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:27:40'),
('LKP00020', 'KACA LAS PUTIH/BENING', 1, 2, 192, 192, 0, 0, 'aktif', '2017-12-03 20:27:52'),
('LKP00021', 'KAP/HELM LAS CIGWELD AUTO DARKENING', 1, 2, 7, 7, 0, 0, 'aktif', '2017-12-03 20:28:15'),
('LKP00022', 'KAPUR BESI FERRARY', 1, 2, 9, 9, 0, 0, 'aktif', '2017-12-03 20:28:27'),
('MAT00001', 'BAUT MUR HITAM 1/2 X 3', 1, 1, 278, 278, 0, 0, 'aktif', '2017-11-23 01:11:46'),
('MAT00002', 'BAUT MUR HITAM 3/8 X 1 3/4', 1, 1, 64, 64, 0, 0, 'aktif', '2017-11-23 01:12:13'),
('MAT00003', 'BAUT MUR HITAM 3/8 X 2 1/2', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:12:31'),
('MAT00004', 'BAUT MUR HITAM 3/8 X 3', 1, 1, 89, 89, 0, 0, 'aktif', '2017-11-23 01:12:54'),
('MAT00005', 'BAUT MUR BAJA 1/2 X 1 1/4', 1, 1, 139, 139, 0, 0, 'aktif', '2017-11-23 01:16:05'),
('MAT00006', 'BAUT MUR BAJA 10 X 110 X 1.5', 1, 1, 241, 241, 0, 0, 'aktif', '2017-11-23 01:16:25'),
('MAT00007', 'BAUT MUR BAJA 10 X 25 X 1.25', 1, 1, 116, 116, 0, 0, 'aktif', '2017-11-23 01:17:39'),
('MAT00008', 'BAUT MUR BAJA 10 X 25 X 1.5', 1, 1, 132, 132, 0, 0, 'aktif', '2017-11-23 01:18:11'),
('MAT00009', 'BAUT MUR BAJA 10 X 30 X 1.25', 1, 1, 71, 71, 0, 0, 'aktif', '2017-11-23 01:20:02'),
('MAT00010', 'BAUT MUR BAJA 10 X 30 X 1.5', 1, 1, 59, 59, 0, 0, 'aktif', '2017-11-23 01:20:28'),
('MAT00011', 'BAUT MUR BAJA 10 X 60', 1, 1, 7, 7, 0, 0, 'aktif', '2017-11-23 01:20:57'),
('MAT00012', 'BAUT MUR BAJA 12 X 25 X 1.75', 1, 1, 220, 220, 0, 0, 'aktif', '2017-11-23 01:21:43'),
('MAT00013', 'BAUT MUR BAJA 12 X 30', 1, 1, 35, 35, 0, 0, 'aktif', '2017-11-23 01:21:58'),
('MAT00014', 'BAUT MUR BAJA 12 X 35', 1, 1, 91, 91, 0, 0, 'aktif', '2017-11-23 01:22:14'),
('MAT00015', 'BAUT MUR BAJA 12 X 40', 1, 1, 113, 113, 0, 0, 'aktif', '2017-11-23 01:22:44'),
('MAT00016', 'BAUT BANJO 95 + HS X 12 MJ', 1, 1, 97, 97, 0, 0, 'aktif', '2017-11-23 01:23:20'),
('MAT00017', 'BAUT MUR KUNING 10 X 20', 1, 1, 546, 3246, 0, 0, 'aktif', '2017-11-23 01:23:55'),
('MAT00018', 'BAUT MUR KUNING 10 X 25', 1, 1, 311, 311, 0, 0, 'aktif', '2017-11-23 01:24:13'),
('MAT00019', 'BAUT MUR KUNING 10 X 30', 1, 1, 54, 54, 0, 0, 'aktif', '2017-11-23 01:24:27'),
('MAT00020', 'BAUT MUR KUNING 10 X 35', 1, 1, 96, 96, 0, 0, 'aktif', '2017-11-23 01:24:43'),
('MAT00021', 'BAUT MUR KUNING 10 X 40', 1, 1, 226, 226, 0, 0, 'aktif', '2017-11-23 01:24:57'),
('MAT00022', 'BESI BETON 10 MM X 12 M', 1, 1, 22, 22, 0, 0, 'aktif', '2017-11-23 01:25:56'),
('MAT00023', 'BESI BETON 12 MM X 12 M', 1, 1, 7, 7, 0, 0, 'aktif', '2017-11-23 01:26:39'),
('MAT00024', 'BESI BETON 16 MM X 12 M', 1, 1, 16, 16, 0, 0, 'aktif', '2017-11-23 01:27:09'),
('MAT00025', 'BODY HINGE FORGING', 1, 1, 72, 72, 0, 0, 'aktif', '2017-11-23 01:28:03'),
('MAT00026', 'CAT LACQUER BLUE DYNA [20 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:30:49'),
('MAT00027', 'CAT LACQUER GREY METALLIC [5 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:31:01'),
('MAT00028', 'CAT LACQUER HINO DUTRO GREEN [20 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:31:14'),
('MAT00029', 'CAT LACQUER NISSAN QUERTES RED [5 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:38:07'),
('MAT00030', 'CAT LACQUER PRIMER GREY [5 LTR]', 6, 1, 80, 80, 0, 0, 'aktif', '2017-11-23 01:32:33'),
('MAT00031', 'CAT LACQUER RED DYNA [20 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:32:46'),
('MAT00032', 'CAT LACQUER RED NISSAN [20 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:33:00'),
('MAT00033', 'CAT LACQUER WHITE DYNA [20 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:33:13'),
('MAT00034', 'CAT LACQUER WHITE ISUZU EURO-2 [20 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:33:27'),
('MAT00035', 'CAT LACQUER WHITE NISSAN [5 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:33:46'),
('MAT00036', 'CAT LACQUER YELLOW COLT DIESEL [20 LTR]', 6, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:33:57'),
('MAT00037', 'CAT NC DUCO BLACK MATT [20 LTR]', 6, 1, 60, 60, 0, 0, 'aktif', '2017-11-23 01:34:27'),
('MAT00038', 'CYLINDER ARM ROLL', 1, 1, 0, 0, 0, 0, 'aktif', '2017-11-23 01:35:59'),
('MAT00039', 'CYLINDER ARM ROLL I (BUA)', 1, 1, 2, 2, 0, 0, 'aktif', '2017-11-23 01:36:09'),
('MAT00040', 'CYLINDER ARM ROLL II (BUA)', 1, 1, 10, 10, 0, 0, 'aktif', '2017-11-23 01:36:19'),
('MAT00041', 'CYLINDER BRACKET', 1, 1, 41, 41, 0, 0, 'aktif', '2017-11-23 01:36:32'),
('MAT00042', 'CYLINDER HYDROLIST KOMATSU 140', 1, 1, 6, 6, 0, 0, 'aktif', '2017-11-23 01:36:50'),
('MAT00043', 'CYLINDER HYDROLIST KOMATSU 160', 1, 1, 29, 29, 0, 0, 'aktif', '2017-11-23 01:37:01'),
('MAT00044', 'CYLINDER HYDROLIST KOMATSU 180', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-11-23 01:37:11'),
('MAT00045', 'CYLINDER HYDROLIST KOMATSU 200', 1, 1, 8, 8, 0, 0, 'aktif', '2017-11-23 01:37:21'),
('MAT00046', 'CYLINDER HYDROLIST SELF LOADER B 1257', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:16:26'),
('MAT00047', 'ENGSEL MATA DUA P. 10 CM', 1, 1, 65, 65, 0, 0, 'aktif', '2017-12-03 20:16:55'),
('MAT00048', 'ENGSEL MATA TIGA P. 11 CM', 1, 1, 85, 85, 0, 0, 'aktif', '2017-12-03 20:17:17'),
('MAT00049', 'ENGSEL MATA TIGA P. 15 CM', 1, 1, 79, 79, 0, 0, 'aktif', '2017-12-03 20:17:34'),
('MAT00050', 'ENGSEL MATA TIGA P. 20 CM', 1, 1, 41, 41, 0, 0, 'aktif', '2017-12-03 20:17:47'),
('MAT00051', 'GEAR PUMP GPG 55', 1, 1, 111, 111, 0, 0, 'aktif', '2017-12-03 20:19:01'),
('MAT00052', 'GEAR PUMP GPG 55 MITSUBOSHI JAPAN', 1, 1, 201, 201, 0, 0, 'aktif', '2017-12-03 20:19:13'),
('MAT00053', 'GEAR PUMP KP 1403', 1, 1, 0, 0, 0, 0, 'aktif', '2017-12-29 14:34:04'),
('MAT00054', 'GEAR PUMP KP 1405', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:19:40'),
('MAT00055', 'GEAR PUMP KP 1505', 1, 1, 118, 118, 0, 0, 'aktif', '2017-12-03 20:19:58'),
('MAT00056', 'GEAR PUMP KP 75', 1, 1, 30, 43, 9, 22, 'aktif', '2018-01-26 10:28:12'),
('MAT00057', 'JOINT BESAR', 1, 1, 20, 20, 0, 0, 'aktif', '2017-12-03 20:23:37'),
('MAT00058', 'JOINT KECIL', 1, 1, 10, 10, 0, 0, 'aktif', '2017-12-03 20:23:46'),
('MAT00059', 'KABEL BODY 0.75 MM BIRU', 4, 1, 6, 6, 0, 0, 'aktif', '2017-12-03 20:24:00'),
('MAT00060', 'KABEL BODY 0.75 MM KUNING', 4, 1, 3, 3, 0, 0, 'aktif', '2017-12-03 20:24:10'),
('MAT00061', 'KABEL BODY 0.75 MM MERAH', 4, 1, 3, 3, 0, 0, 'aktif', '2017-12-03 20:24:21'),
('MAT00062', 'KABEL BODY 0.75 MM PUTIH', 1, 1, 2, 2, 0, 0, 'aktif', '2017-12-03 20:24:34'),
('MAT00063', 'KABEL HANDLE 2.5 M', 1, 1, 39, 39, 0, 0, 'aktif', '2017-12-03 20:25:02'),
('MAT00064', 'KABEL HANDLE 3.0 M', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:25:16'),
('MAT00065', 'KABEL HANDLE 3.5 M', 1, 1, 16, 16, 0, 0, 'aktif', '2017-12-03 20:25:30'),
('MAT00066', 'KABEL HANDLE 4.0 M', 1, 1, 8, 8, 0, 0, 'aktif', '2017-12-03 20:25:49'),
('MAT00067', 'KABEL HANDLE 5.0 M', 1, 1, 3, 3, 0, 0, 'aktif', '2017-12-03 20:26:35'),
('MAT00068', 'KABEL HANDLE 6.0 M', 1, 1, 22, 22, 0, 0, 'aktif', '2017-12-03 20:26:58'),
('MAT00069', 'KARET GRENDEL PINTU BAK SAMPING (KECIL)', 1, 1, 100, 100, 0, 0, 'aktif', '2017-12-03 20:29:04'),
('MAT00070', 'KARET GRENDEL PINTU BAK TRONTON (BESAR)', 1, 1, 100, 100, 0, 0, 'aktif', '2017-12-03 20:29:21'),
('MAT00071', 'KARET HANDEL HITAM', 1, 1, 72, 72, 0, 0, 'aktif', '2017-12-03 20:29:49'),
('MAT00072', 'KARET HANDEL MERAH', 1, 1, 94, 94, 0, 0, 'aktif', '2017-12-03 20:29:59'),
('MAT00073', 'KAWAT LAS CO2 0.8 MM ANCHOR XEF 50-6', 4, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:31:39'),
('MAT00074', 'KAWAT LAS CO2 0.8 MM ARCTIC', 4, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:31:53'),
('MAT00075', 'KAWAT LAS CO2 0.8 MM TECHWELD', 4, 1, 40, 53, 9, 22, 'aktif', '2017-12-29 14:37:55'),
('MAT00076', 'KAWAT LAS CO2 1.0 MM ENKA', 4, 1, 32, 32, 0, 0, 'aktif', '2017-12-03 20:32:22'),
('MAT00077', 'KAWAT LAS KUNINGAN 3 MM', 1, 1, 3, 3, 0, 0, 'aktif', '2017-12-03 20:32:34'),
('MAT00078', 'KAWAT LAS RB 26 O 2.6 MM', 7, 1, 66, 66, 0, 0, 'aktif', '2017-12-03 20:34:07'),
('MAT00079', 'KAWAT LAS RB 26 O 3.2 MM', 7, 1, 64, 64, 0, 0, 'aktif', '2017-12-03 20:34:24'),
('MAT00080', 'KAWAT LAS RB 26 O 4.0 MM', 7, 1, 38, 38, 0, 0, 'aktif', '2017-12-03 20:34:39'),
('MAT00081', 'KAWEL 3/4 X 3 9/16 X 20 (50 CM)', 1, 1, 28, 28, 0, 0, 'aktif', '2017-12-03 20:35:03'),
('MAT00082', 'KAWEL 3/4 X 3 9/16 X 22 (55 CM)', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:35:15'),
('MAT00083', 'KAWEL 3/4 X 3 9/16 X 24 (60 CM)', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:35:25'),
('MAT00084', 'KAWEL 5/8 X 2 3/4 X 13 (33CM)', 1, 1, 74, 74, 0, 0, 'aktif', '2017-12-03 20:35:42'),
('MAT00085', 'KAWEL 5/8 X 2 3/4 X 14 (35CM)', 1, 1, 69, 135, 0, 0, 'aktif', '2017-12-03 20:35:55'),
('MAT00086', 'KAWEL 5/8 X 2 3/4 X 16 (40CM)', 1, 1, 150, 150, 0, 0, 'aktif', '2017-12-03 20:36:09'),
('MAT00087', 'KAWEL 5/8 X 2 3/4 X 10 (25CM)', 1, 1, 72, 72, 0, 0, 'aktif', '2017-12-03 20:36:20'),
('MAT00088', 'KAWEL 5/8 X 2 3/4 X 11 (30CM)', 1, 1, 63, 63, 0, 0, 'aktif', '2017-12-03 20:36:30'),
('MAT00089', 'KAYU BENGKIRAI 6 X 10 X 400', 1, 1, 36, 36, 0, 0, 'aktif', '2017-12-03 20:36:49'),
('MAT00090', 'KAYU BENGKIRAI 6 X 8 X 400', 1, 1, 25, 25, 0, 0, 'aktif', '2017-12-03 20:36:59'),
('MAT00091', 'LAMPU LED RECTANGEL 12V', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:37:11'),
('MAT00092', 'LAMPU LED RECTANGEL 24V', 1, 1, 66, 66, 0, 0, 'aktif', '2017-12-03 20:37:21'),
('MAT00093', 'LAMPU ROTARI 12V', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:37:41'),
('MAT00094', 'LAMPU ROTARI 24V', 1, 1, 5, 5, 0, 0, 'aktif', '2017-12-03 20:37:49'),
('MAT00095', 'NIPPLE GREASE 1/8', 1, 1, 200, 200, 0, 0, 'aktif', '2017-12-03 20:38:03'),
('MAT00096', 'NIPPLE GREASE 6 MM', 1, 1, 100, 100, 0, 0, 'aktif', '2017-12-03 20:38:30'),
('MAT00097', 'PIPA GALVANIS GPG-55', 1, 1, 51, 51, 0, 0, 'aktif', '2017-12-03 20:38:46'),
('MAT00098', 'PIPA GALVANIS KP-75', 1, 1, 42, 42, 0, 0, 'aktif', '2017-12-03 20:39:04'),
('MAT00099', 'PTO COLT DIESEL FE 74', 1, 1, 37, 26, 8, 15, 'aktif', '2017-12-14 19:25:39'),
('MAT00100', 'PTO DYNA 110/125 VPS', 1, 1, 0, 0, 0, 0, 'nonaktif', '2017-12-03 20:39:34'),
('MAT00101', 'PTO DYNA 130 HT VPS', 1, 1, 32, 32, 0, 0, 'aktif', '2017-12-03 20:39:54'),
('MAT00102', 'PTO HINO X POWER TIMUR JAYA', 1, 1, 7, 7, 0, 0, 'aktif', '2017-12-03 20:40:08'),
('MAT00103', 'RING PLAT 1/2', 1, 1, 362, 362, 0, 0, 'aktif', '2017-12-03 20:40:24'),
('MAT00104', 'RING PLAT 3/8 (10 X 25)', 1, 1, 528, 528, 0, 0, 'aktif', '2017-12-03 20:40:36'),
('MAT00105', 'RING VEER BAJA 1/2', 1, 1, 64, 64, 0, 0, 'aktif', '2017-12-03 20:40:54'),
('MAT00106', 'RING VEER BAJA 10', 1, 1, 95, 95, 0, 0, 'aktif', '2017-12-03 20:41:14'),
('MAT00107', 'RING VEER BAJA 20', 1, 1, 59, 59, 0, 0, 'aktif', '2017-12-03 20:41:27'),
('MAT00108', 'RING VEER BAJA 5/8', 1, 1, 195, 195, 0, 0, 'aktif', '2017-12-03 20:41:39'),
('MAT00109', 'RING VEER KUNING 10', 1, 1, 262, 262, 0, 0, 'aktif', '2017-12-03 20:41:56'),
('MAT00110', 'RING VEER KUNING 8', 1, 1, 120, 120, 0, 0, 'aktif', '2017-12-03 20:42:09'),
('MAT00111', 'SELANG 1SN X 3/4 INCH X 1 M', 1, 1, 63, 63, 0, 0, 'aktif', '2017-12-03 20:42:44'),
('MAT00112', 'SELANG MULTI PURPOSE 1 INCH', 1, 1, 69, 69, 0, 0, 'aktif', '2017-12-03 20:43:10'),
('MAT00113', 'SELANG PHOENIX 1 SN - 1 1/4 X 65 CM', 1, 1, 45, 45, 0, 0, 'aktif', '2017-12-03 20:43:33'),
('MAT00114', 'STICKER SPB BESAR', 1, 1, 125, 125, 0, 0, 'aktif', '2017-12-03 20:44:00'),
('MAT00115', 'STICKER SPB KECIL', 1, 1, 402, 402, 0, 0, 'aktif', '2017-12-03 20:44:14'),
('MAT00116', 'STICKER TANGKI OLI', 1, 1, 148, 148, 0, 0, 'aktif', '2017-12-03 20:44:26'),
('MAT00117', 'THINNER UNIVERSAL', 3, 1, 4, 4, 0, 0, 'aktif', '2017-12-03 20:44:53'),
('SPR00001', 'CONTACT TIP 0.8 MM', 1, 3, 52, 52, 0, 0, 'aktif', '2017-11-23 01:35:03'),
('SPR00002', 'CONTACT TIP 1.0 MM', 1, 3, 27, 27, 0, 0, 'aktif', '2017-11-23 01:35:20'),
('SPR00003', 'CONTACT TIP HOLDER 0.8', 1, 3, 68, 68, 0, 0, 'aktif', '2017-11-23 01:35:32'),
('SPR00004', 'GAS DIFFUSOR WHITE', 1, 3, 48, 48, 0, 0, 'aktif', '2017-12-03 20:18:28'),
('SPR00005', 'GAS NOZZLE 24 KD STANDARD', 1, 3, 46, 46, 0, 0, 'aktif', '2017-12-03 20:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_borongan`
--

CREATE TABLE `tbl_borongan` (
  `id_borongan` varchar(8) NOT NULL,
  `nama_borongan` varchar(50) NOT NULL,
  `alamat_borongan` text NOT NULL,
  `keterangan_borongan` text NOT NULL,
  `telp_borongan` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'aktif',
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_borongan`
--

INSERT INTO `tbl_borongan` (`id_borongan`, `nama_borongan`, `alamat_borongan`, `keterangan_borongan`, `telp_borongan`, `status`, `timestamp`) VALUES
('BOR00001', 'PARNO', 'JL. RAYA DUNGUS, SUKODONO, SIDOARJO, KABUPATEN SIDOARJO, JAWA TIMUR 61258, INDONESIA', 'PEMBORONG DUMP TRUCK, TRONTON, TRUCK CONTAINER, TRUCK SAMPAH', '081336030328', 'aktif', '2017-09-30 20:40:54'),
('BOR00002', 'SAID', 'JL. PULO WONOKROMO GG V NO 33, SURABAYA', 'PEMBORONG DUMP TRUCK, TRUCK LPG', '081221234142', 'aktif', '2017-09-30 20:36:19'),
('BOR00003', 'CHOLIS', 'JL. DR. WAHIDIN SUDIROHUSODO NO.16, KRIAN, KABUPATEN SIDOARJO, JAWA TIMUR 61262, INDONESIA', 'PEMBORONG TRUCK TANGKI SOLAR, TRUCK TANGKI AIR, TRUCK TANGKI CHEMICAL', '081123413235', 'aktif', '2017-09-30 20:39:37'),
('BOR00004', 'AGUS', 'JL DUKUH MENANGGAL III NO 4 SURABAYA', 'PEMBORONG HYDRAULIC MECHANISM, TRUCK SELF LOADER, TRUCK SCISSOR LIFT', '081127778787', 'aktif', '2017-10-01 00:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_borongan_detail`
--

CREATE TABLE `tbl_borongan_detail` (
  `id_borongan_detail` int(11) NOT NULL,
  `id_borongan` varchar(8) NOT NULL,
  `nama_borongan_detail` varchar(50) NOT NULL,
  `alamat_borongan_detail` text NOT NULL,
  `telp_borongan_detail` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'aktif',
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_borongan_detail`
--

INSERT INTO `tbl_borongan_detail` (`id_borongan_detail`, `id_borongan`, `nama_borongan_detail`, `alamat_borongan_detail`, `telp_borongan_detail`, `status`, `timestamp`) VALUES
(1, 'BOR00001', 'PARMAN', 'JL. RAYA DUNGUS, SUKODONO NO 12, SIDOARJO, KABUPATEN SIDOARJO, JAWA TIMUR 61258, INDONESIA', '081123121421', 'aktif', '2017-09-30 20:51:42'),
(2, 'BOR00001', 'SUCIPTO', 'JL PUTAT GEDE GG 4 NO 5 SURABAYA', '081224412341', 'aktif', '2017-09-30 22:35:24'),
(3, 'BOR00001', 'SUPRAPTO', 'JL RAYA DEMAK NO 271 SURABAYA', '082244476676', 'aktif', '2017-10-01 00:05:53'),
(4, 'BOR00002', 'HARSONO', 'JL RAYA DUKUH KUPANG TIMUR NO 44 SURABAYA', '081788622044', 'aktif', '2017-09-30 22:42:34'),
(5, 'BOR00002', 'SULIONO', 'JL HANG TUAH NO.45 RT.16 / RW.07, SIDOKLUMPUK, SIDOKUMPUL, KEC. SIDOARJO, KABUPATEN SIDOARJO', '081331511995', 'aktif', '2017-09-30 22:47:43'),
(6, 'BOR00002', 'WIYOTO', 'JL WONOKROMO GG KA NO 78 B SURABAYA', '081722224892', 'aktif', '2017-09-30 22:48:45'),
(7, 'BOR00003', 'WAHAB', 'JL JAGIR SIDOMUKTI II NO 6 SURABAYA', '087822167631', 'aktif', '2017-09-30 22:52:06'),
(8, 'BOR00003', 'ABIDIN', 'JL MASTRIP KEDURUS GG LANGGAR NO 7 SURABAYA', '081778755453', 'aktif', '2017-09-30 22:54:14'),
(9, 'BOR00003', 'BINJAE', 'DUSUN WONOSALAM NO. 6 RT II/RW III KELURAHAN BABAT, KABUPATEN LAMONGA', '085731317767', 'aktif', '2017-09-30 22:56:14'),
(10, 'BOR00004', 'HENDRIK', 'JL BRATANG BINANGUN 2 NO 4 SURABAYA', '088177233989', 'aktif', '2017-10-01 04:20:43'),
(11, 'BOR00004', 'AHMAD SUJONO', 'JL BRATANG TANGKIS III NO 6 SURABAYA', '081221889889', 'aktif', '2017-09-30 23:42:31'),
(12, 'BOR00004', 'SYAFEI', 'JL MANUKAN KIDUL NO 89 SURABAYA', '085722198092', 'aktif', '2017-09-30 23:43:20'),
(13, 'BOR00001', 'MOHAMMAD YUNUS', 'JL. JAKSA AGUNG SUPRAPTO, GANG VIII E NO. 11A RT04/RW04, KECAMATAN GRESIK, BEDILAN, KEC. GRESIK, KABUPATEN GRESIK, JAWA TIMUR 61116, INDONESIA', '081334673096', 'aktif', '2017-10-21 03:47:18'),
(14, 'BOR00001', 'RUDI SHODIQ', 'JL. TAMBAK SAWAH, TAMBAKSAWAH, SIDOARJO, KABUPATEN SIDOARJO, JAWA TIMUR 61256, INDONESIA', '083849155448', 'aktif', '2017-10-21 03:48:52'),
(15, 'BOR00001', 'LUTFI JEMBLUNG', 'JL. BRIGJEN KATAMSO NO.167, WEDORO, WARU, KABUPATEN SIDOARJO, JAWA TIMUR 61256, INDONESIA', '081233438333', 'aktif', '2017-10-21 03:49:53'),
(16, 'BOR00002', 'LUTFI', 'JL. TAMBAK REJO, TAMBAKREJO, WARU, KABUPATEN SIDOARJO, JAWA TIMUR 61256, INDONESIA', '085745918222', 'aktif', '2017-10-21 03:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forecast`
--

CREATE TABLE `tbl_forecast` (
  `id_forecast` int(11) NOT NULL,
  `id_barang` varchar(8) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `tgl_forecast` varchar(12) NOT NULL,
  `alpha_forecast` float NOT NULL,
  `hasil_forecast` float NOT NULL,
  `mad_forecast` float NOT NULL,
  `mae_forecast` float NOT NULL,
  `mape_forecast` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_forecast`
--

INSERT INTO `tbl_forecast` (`id_forecast`, `id_barang`, `id_satuan`, `tgl_forecast`, `alpha_forecast`, `hasil_forecast`, `mad_forecast`, `mae_forecast`, `mape_forecast`) VALUES
(3, 'MAT00056', 1, '2017-01', 0.6, 67, 54.66, 57.46, 10.45),
(4, 'MAT00075', 4, '2017-01', 0.8, 75, 64.89, 51.26, 7.91),
(5, 'MAT00075', 4, '2017-01', 0.7, 75, 64.49, 50.15, 8.64),
(6, 'MAT00075', 4, '2017-01', 0.9, 76, 64.28, 55.61, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(8) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `keterangan_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `keterangan_kategori`) VALUES
(1, 'MAT', 'MATERIAL'),
(2, 'LKP', 'PERLENGKAPAN'),
(3, 'SPR', 'SPAREPART'),
(4, 'INV', 'INVENTARIS'),
(5, 'LLN', 'LAIN-LAIN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level_user`
--

CREATE TABLE `tbl_level_user` (
  `id_level_user` int(8) NOT NULL,
  `level_user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level_user`
--

INSERT INTO `tbl_level_user` (`id_level_user`, `level_user`) VALUES
(1, 'ADMIN'),
(2, 'MANAGER'),
(3, 'GUDANG'),
(4, 'PEMBELIAN');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `subject_pesan` varchar(250) NOT NULL,
  `id_user_target` varchar(8) NOT NULL,
  `isi_pesan` text NOT NULL,
  `dt_post` datetime NOT NULL,
  `time_post` int(12) NOT NULL,
  `dt_read` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`id_pesan`, `id_user`, `subject_pesan`, `id_user_target`, `isi_pesan`, `dt_post`, `time_post`, `dt_read`) VALUES
(1, 'USR00001', 'tes', 'USR00005', 'cuma tes', '2018-01-26 09:38:53', 1516934333, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur_keluar`
--

CREATE TABLE `tbl_retur_keluar` (
  `id_retur_keluar` varchar(12) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `id_supplier` varchar(8) NOT NULL,
  `tgl_retur_keluar` date NOT NULL,
  `timestamp_retur_keluar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur_keluar`
--

INSERT INTO `tbl_retur_keluar` (`id_retur_keluar`, `id_user`, `id_supplier`, `tgl_retur_keluar`, `timestamp_retur_keluar`) VALUES
('RTRO01180001', 'USR00001', 'SUP00007', '2016-12-28', '2018-01-11 14:22:07'),
('RTRO02160001', 'USR00004', 'SUP00008', '2016-02-02', '2016-02-03 00:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur_keluar_detail`
--

CREATE TABLE `tbl_retur_keluar_detail` (
  `id_retur_keluar_detail` int(11) NOT NULL,
  `id_trans_masuk` varchar(12) NOT NULL,
  `id_retur_keluar` varchar(12) NOT NULL,
  `id_retur_masuk` varchar(12) NOT NULL DEFAULT '0',
  `id_barang` varchar(8) NOT NULL,
  `id_satuan` varchar(8) NOT NULL,
  `qty_retur_keluar` int(11) NOT NULL,
  `keterangan_retur_keluar` varchar(150) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur_keluar_detail`
--

INSERT INTO `tbl_retur_keluar_detail` (`id_retur_keluar_detail`, `id_trans_masuk`, `id_retur_keluar`, `id_retur_masuk`, `id_barang`, `id_satuan`, `qty_retur_keluar`, `keterangan_retur_keluar`, `timestamp`) VALUES
(1, 'RCV021600002', 'RTRO02160001', 'RTRI02160001', 'MAT00099', '1', 1, 'cacat produk', '2016-02-03 00:11:36'),
(2, 'RCV121600003', 'RTRO01180001', 'RTRI01180001', 'MAT00056', '1', 11, '', '2018-01-11 14:22:07');

--
-- Triggers `tbl_retur_keluar_detail`
--
DELIMITER $$
CREATE TRIGGER `trgr_kurang_stok_retur_keluar` AFTER INSERT ON `tbl_retur_keluar_detail` FOR EACH ROW BEGIN
	UPDATE tbl_barang
    SET stok_barang = stok_barang - NEW.qty_retur_keluar
    WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_tambah_stok_retur_keluar` AFTER DELETE ON `tbl_retur_keluar_detail` FOR EACH ROW BEGIN
	UPDATE tbl_barang
    SET stok_barang = stok_barang + old.qty_retur_keluar
    WHERE id_barang = old.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur_masuk`
--

CREATE TABLE `tbl_retur_masuk` (
  `id_retur_masuk` varchar(12) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `id_supplier` varchar(8) NOT NULL,
  `tgl_retur_masuk` date NOT NULL,
  `timestamp_retur_masuk` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur_masuk`
--

INSERT INTO `tbl_retur_masuk` (`id_retur_masuk`, `id_user`, `id_supplier`, `tgl_retur_masuk`, `timestamp_retur_masuk`) VALUES
('RTRI01180001', 'USR00001', 'SUP00007', '2018-01-03', '2018-01-26 10:28:42'),
('RTRI02160001', 'USR00004', 'SUP00008', '2016-02-04', '2016-02-03 00:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur_masuk_detail`
--

CREATE TABLE `tbl_retur_masuk_detail` (
  `id_retur_masuk_detail` int(11) NOT NULL,
  `id_retur_keluar` varchar(12) NOT NULL,
  `id_retur_masuk` varchar(12) NOT NULL,
  `id_barang` varchar(8) NOT NULL,
  `id_satuan` varchar(8) NOT NULL,
  `qty_retur_masuk` int(11) NOT NULL,
  `keterangan_retur_masuk` varchar(150) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur_masuk_detail`
--

INSERT INTO `tbl_retur_masuk_detail` (`id_retur_masuk_detail`, `id_retur_keluar`, `id_retur_masuk`, `id_barang`, `id_satuan`, `qty_retur_masuk`, `keterangan_retur_masuk`, `timestamp`) VALUES
(1, 'RTRO02160001', 'RTRI02160001', 'MAT00099', '1', 1, 'kondisi baik', '2016-02-03 00:13:13'),
(2, 'RTRO01180001', 'RTRI01180001', 'MAT00056', '1', 11, '', '2018-01-26 10:28:42');

--
-- Triggers `tbl_retur_masuk_detail`
--
DELIMITER $$
CREATE TRIGGER `trgr_kurang_stok_retur_masuk` AFTER DELETE ON `tbl_retur_masuk_detail` FOR EACH ROW BEGIN
	UPDATE tbl_barang
    SET stok_barang = stok_barang - old.qty_retur_masuk
    WHERE id_barang = old.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_tambah_stok_retur_masuk` AFTER INSERT ON `tbl_retur_masuk_detail` FOR EACH ROW BEGIN
	UPDATE tbl_barang
    SET stok_barang = stok_barang + NEW.qty_retur_masuk
    WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `id_satuan` int(8) NOT NULL,
  `nama_satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`id_satuan`, `nama_satuan`) VALUES
(1, 'PCS'),
(2, 'PACK'),
(3, 'DRUM'),
(4, 'ROLL'),
(5, 'LBR'),
(6, 'LTR'),
(7, 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id_supplier` varchar(8) NOT NULL,
  `nama_supplier` varchar(200) DEFAULT NULL,
  `alamat_supplier` text,
  `telp_supplier` varchar(15) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'aktif',
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `telp_supplier`, `status`, `timestamp`) VALUES
('SUP00001', 'PT. KALIMAS PUTRA MAKMUR', 'Desa Popoh Wonoayu, Krian, 61262, Simoketawang, Wonoayu, Sidoarjo Regency', '031-8971823', 'aktif', '2017-10-01 00:01:21'),
('SUP00002', 'MITRA USAHA', 'Jl Raden Saleh 16-F, Alun-alun Contong, Bubutan, Surabaya', '031-5310561', 'aktif', '2017-05-07 23:17:34'),
('SUP00003', 'SUMBER AGUNG', 'JL. RADEN SALEH BLOK B7 NO.2', '031 5451376', 'aktif', '2017-09-02 19:17:06'),
('SUP00004', 'PT CAHAYA SELANG', 'JL. SEMARANG NO.96A-B, BUBUTAN, KOTA SBY, JAWA TIMUR 60172, INDONESIA', '031-5453541', 'aktif', '2017-10-31 06:16:53'),
('SUP00005', 'PT WAHANA CENTRA NIAGA', 'JL. SENTONG ASRI BLK. A NO.1, BALONGSARI, TANDES, KOTA SBY, JAWA TIMUR 60186, INDONESIA', '031-7498666', 'aktif', '2017-10-31 06:17:00'),
('SUP00006', 'YUNIKA TEKNIK', 'JL. BUBUTAN NO.142, ALUN-ALUN CONTONG, BUBUTAN, KOTA SBY, JAWA TIMUR 60174, INDONESIA', '0822-5724-7763', 'aktif', '2017-09-03 22:37:43'),
('SUP00007', 'CV DAMAR BAYU', 'RUKO ARALIA BLOK HY 43 NO. 32 HARAPAN INDAH\r\nKOTA BEKASI', '021-29283747', 'aktif', '2017-10-01 03:43:40'),
('SUP00008', 'PT TIMUR JAYA', 'JL. MARGOMULYO INDAH NO.23, GREGES, ASEMROWO, BALONGSARI, SURABAYA, KOTA SBY, JAWA TIMUR 60186, INDONESIA', '031-7481779', 'aktif', '2017-10-31 06:17:06'),
('SUP00009', 'PT KOMATSU INDONESIA', 'KAWASAN INDUSTRI MM 2100, JL. JAWA RAYA BLOK JJ IV-2, CIBITUNG, JATIWANGI, CIKARANG BAR., BEKASI, JAWA BARAT 1', '021-89983414', 'aktif', '2017-11-29 15:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_beli`
--

CREATE TABLE `tbl_trans_beli` (
  `id_trans_beli` varchar(12) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `id_supplier` varchar(8) NOT NULL,
  `tgl_trans_beli` date NOT NULL,
  `timestamp_trans_beli` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_beli`
--

INSERT INTO `tbl_trans_beli` (`id_trans_beli`, `id_user`, `id_supplier`, `tgl_trans_beli`, `timestamp_trans_beli`) VALUES
('PO0116000001', 'USR00005', 'SUP00007', '2016-01-04', '2016-01-12 18:08:42'),
('PO0116000002', 'USR00005', 'SUP00006', '2016-01-04', '2016-01-12 18:09:04'),
('PO0116000003', 'USR00005', 'SUP00008', '2016-01-04', '2016-01-12 18:09:28'),
('PO0116000004', 'USR00005', 'SUP00005', '2016-01-04', '2016-01-12 18:09:49'),
('PO0216000001', 'USR00005', 'SUP00005', '2016-02-02', '2016-02-02 21:30:37'),
('PO0216000002', 'USR00005', 'SUP00008', '2016-02-02', '2016-02-02 21:31:00'),
('PO0216000003', 'USR00005', 'SUP00003', '2016-02-02', '2016-02-02 21:31:54'),
('PO0316000001', 'USR00005', 'SUP00005', '2016-03-01', '2016-03-03 18:22:20'),
('PO0316000002', 'USR00005', 'SUP00002', '2016-03-01', '2016-03-03 18:22:56'),
('PO0316000003', 'USR00005', 'SUP00008', '2016-03-01', '2016-03-03 18:23:14'),
('PO0316000004', 'USR00005', 'SUP00006', '2016-03-07', '2016-03-03 18:51:48'),
('PO0416000001', 'USR00005', 'SUP00005', '2016-04-01', '2016-04-03 19:18:17'),
('PO0416000002', 'USR00005', 'SUP00003', '2016-04-01', '2016-04-03 19:18:30'),
('PO0416000003', 'USR00005', 'SUP00008', '2016-04-01', '2016-04-03 19:19:01'),
('PO0416000004', 'USR00005', 'SUP00007', '2016-04-01', '2016-04-03 19:19:17'),
('PO0416000005', 'USR00005', 'SUP00001', '2016-04-01', '2016-04-03 19:19:30'),
('PO0416000006', 'USR00005', 'SUP00005', '2016-04-18', '2016-04-03 20:32:19'),
('PO0416000007', 'USR00005', 'SUP00008', '2016-04-13', '2016-04-03 20:35:44'),
('PO0516000001', 'USR00005', 'SUP00005', '2016-05-03', '2016-05-13 22:24:01'),
('PO0516000002', 'USR00005', 'SUP00003', '2016-05-03', '2016-05-13 22:24:10'),
('PO0516000003', 'USR00005', 'SUP00007', '2016-05-03', '2016-05-13 22:24:25'),
('PO0516000004', 'USR00005', 'SUP00008', '2016-05-03', '2016-05-13 22:24:38'),
('PO0616000001', 'USR00005', 'SUP00008', '2016-06-01', '2016-06-08 14:12:22'),
('PO0616000002', 'USR00005', 'SUP00005', '2016-06-01', '2016-06-08 14:12:36'),
('PO0616000003', 'USR00005', 'SUP00003', '2016-06-01', '2016-06-08 14:12:51'),
('PO0616000004', 'USR00005', 'SUP00007', '2016-06-01', '2016-06-08 14:13:18'),
('PO0716000001', 'USR00005', 'SUP00005', '2016-07-01', '2016-07-08 14:51:27'),
('PO0716000002', 'USR00005', 'SUP00008', '2016-07-01', '2016-07-08 14:51:43'),
('PO0716000003', 'USR00005', 'SUP00007', '2016-07-01', '2016-07-08 14:52:04'),
('PO0816000001', 'USR00005', 'SUP00008', '2016-08-05', '2016-08-09 15:31:09'),
('PO0816000002', 'USR00005', 'SUP00005', '2016-08-05', '2016-08-09 15:31:19'),
('PO0816000003', 'USR00005', 'SUP00007', '2016-08-05', '2016-08-09 15:31:30'),
('PO0816000004', 'USR00005', 'SUP00003', '2016-08-05', '2016-08-09 15:31:41'),
('PO0916000001', 'USR00005', 'SUP00002', '2016-09-05', '2016-09-06 15:52:28'),
('PO0916000002', 'USR00005', 'SUP00005', '2016-09-05', '2016-09-06 15:52:41'),
('PO0916000003', 'USR00005', 'SUP00008', '2016-09-05', '2016-09-06 15:52:52'),
('PO1016000001', 'USR00005', 'SUP00002', '2016-10-11', '2016-10-03 17:54:10'),
('PO1016000002', 'USR00005', 'SUP00007', '2016-10-11', '2016-10-03 17:54:30'),
('PO1016000003', 'USR00005', 'SUP00008', '2016-10-11', '2016-10-03 17:54:44'),
('PO1116000001', 'USR00005', 'SUP00005', '2016-11-04', '2016-11-02 18:12:10'),
('PO1116000002', 'USR00005', 'SUP00008', '2016-11-04', '2016-11-02 18:12:20'),
('PO1116000003', 'USR00005', 'SUP00007', '2016-11-04', '2016-11-02 18:12:41'),
('PO1116000004', 'USR00005', 'SUP00002', '2016-11-04', '2016-11-02 18:12:54'),
('PO1216000001', 'USR00001', 'SUP00008', '2016-12-01', '2016-12-10 13:57:40'),
('PO1216000002', 'USR00001', 'SUP00005', '2016-12-01', '2016-12-10 13:57:53'),
('PO1216000003', 'USR00001', 'SUP00007', '2016-12-01', '2016-12-10 13:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_beli_detail`
--

CREATE TABLE `tbl_trans_beli_detail` (
  `id_trans_beli_detail` int(11) NOT NULL,
  `id_trans_order_detail` int(11) NOT NULL,
  `id_trans_beli` varchar(12) NOT NULL,
  `id_trans_order` varchar(12) NOT NULL,
  `id_trans_masuk` varchar(12) NOT NULL DEFAULT '0',
  `id_barang` varchar(8) NOT NULL,
  `id_satuan` varchar(8) NOT NULL,
  `qty_beli` int(11) NOT NULL,
  `keterangan_beli` varchar(150) NOT NULL,
  `tgl_trans_beli_detail` date NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_beli_detail`
--

INSERT INTO `tbl_trans_beli_detail` (`id_trans_beli_detail`, `id_trans_order_detail`, `id_trans_beli`, `id_trans_order`, `id_trans_masuk`, `id_barang`, `id_satuan`, `qty_beli`, `keterangan_beli`, `tgl_trans_beli_detail`, `timestamp`) VALUES
(1, 1, 'PO0116000001', 'ORD011600001', 'RCV011600004', 'MAT00056', '1', 50, 'untuk stok', '2016-01-04', '2016-01-12 18:08:42'),
(2, 5, 'PO0116000002', 'ORD011600001', 'RCV011600001', 'LKP00006', '1', 50, 'untuk stok', '2016-01-04', '2016-01-12 18:09:04'),
(3, 2, 'PO0116000003', 'ORD011600001', 'RCV011600002', 'MAT00099', '1', 50, 'untuk stok', '2016-01-04', '2016-01-12 18:09:28'),
(4, 4, 'PO0116000003', 'ORD011600001', 'RCV011600002', 'MAT00085', '1', 80, 'untuk stok', '2016-01-04', '2016-01-12 18:09:28'),
(5, 3, 'PO0116000004', 'ORD011600001', 'RCV011600003', 'MAT00075', '4', 63, 'untuk stok', '2016-01-04', '2016-01-12 18:09:49'),
(6, 6, 'PO0216000001', 'ORD021600001', 'RCV021600001', 'MAT00075', '4', 63, '', '2016-02-02', '2016-02-02 21:30:37'),
(7, 7, 'PO0216000002', 'ORD021600001', 'RCV021600002', 'MAT00099', '1', 70, '', '2016-02-02', '2016-02-02 21:31:00'),
(8, 8, 'PO0216000003', 'ORD021600001', 'RCV021600003', 'MAT00056', '1', 50, '', '2016-02-02', '2016-02-02 21:31:54'),
(9, 12, 'PO0316000001', 'ORD031600001', 'RCV031600001', 'MAT00075', '4', 63, '', '2016-03-01', '2016-03-03 18:22:20'),
(10, 9, 'PO0316000002', 'ORD031600001', 'RCV031600002', 'MAT00056', '1', 30, '', '2016-03-01', '2016-03-03 18:22:56'),
(11, 10, 'PO0316000003', 'ORD031600001', 'RCV031600003', 'MAT00099', '1', 50, '', '2016-03-01', '2016-03-03 18:23:14'),
(12, 11, 'PO0316000003', 'ORD031600001', 'RCV031600003', 'MAT00085', '1', 160, '', '2016-03-01', '2016-03-03 18:23:14'),
(13, 13, 'PO0316000004', 'ORD031600002', 'RCV031600004', 'MAT00056', '1', 20, '', '2016-03-07', '2016-03-03 18:51:48'),
(14, 14, 'PO0416000001', 'ORD041600001', 'RCV041600002', 'MAT00075', '4', 63, '', '2016-04-01', '2016-04-03 19:18:17'),
(15, 15, 'PO0416000002', 'ORD041600001', 'RCV041600003', 'MAT00085', '1', 60, '', '2016-04-01', '2016-04-03 19:18:30'),
(16, 16, 'PO0416000003', 'ORD041600001', 'RCV041600004', 'MAT00099', '1', 50, '', '2016-04-01', '2016-04-03 19:19:01'),
(17, 17, 'PO0416000004', 'ORD041600001', 'RCV041600005', 'MAT00056', '1', 50, '', '2016-04-01', '2016-04-03 19:19:17'),
(18, 18, 'PO0416000005', 'ORD041600001', 'RCV041600001', 'LKP00001', '5', 20, '', '2016-04-01', '2016-04-03 19:19:30'),
(19, 19, 'PO0416000005', 'ORD041600001', 'RCV041600001', 'LKP00002', '5', 20, '', '2016-04-01', '2016-04-03 19:19:30'),
(20, 20, 'PO0416000005', 'ORD041600001', 'RCV041600001', 'LKP00003', '5', 20, '', '2016-04-01', '2016-04-03 19:19:30'),
(21, 21, 'PO0416000006', 'ORD041600002', 'RCV041600006', 'MAT00075', '4', 63, '', '2016-04-18', '2016-04-03 20:32:19'),
(22, 22, 'PO0416000007', 'ORD041600003', 'RCV041600007', 'MAT00056', '1', 50, '', '2016-04-13', '2016-04-03 20:35:44'),
(23, 23, 'PO0416000007', 'ORD041600003', 'RCV041600007', 'MAT00099', '1', 50, '', '2016-04-13', '2016-04-03 20:35:44'),
(25, 24, 'PO0516000001', 'ORD051600001', 'RCV051600001', 'MAT00075', '4', 63, '', '2016-05-03', '2016-05-13 22:24:01'),
(26, 25, 'PO0516000002', 'ORD051600001', 'RCV051600002', 'MAT00085', '1', 100, '', '2016-05-03', '2016-05-13 22:24:10'),
(27, 27, 'PO0516000003', 'ORD051600001', 'RCV051600003', 'MAT00056', '1', 50, '', '2016-05-03', '2016-05-13 22:24:25'),
(28, 26, 'PO0516000004', 'ORD051600001', 'RCV051600004', 'MAT00099', '1', 50, '', '2016-05-03', '2016-05-13 22:24:38'),
(29, 28, 'PO0616000001', 'ORD061600001', 'RCV061600002', 'MAT00099', '1', 70, '', '2016-06-01', '2016-06-08 14:12:22'),
(30, 31, 'PO0616000002', 'ORD061600001', 'RCV061600003', 'MAT00075', '4', 63, '', '2016-06-01', '2016-06-08 14:12:36'),
(31, 30, 'PO0616000003', 'ORD061600001', 'RCV061600001', 'MAT00085', '1', 100, '', '2016-06-01', '2016-06-08 14:12:51'),
(32, 29, 'PO0616000004', 'ORD061600001', 'RCV061600004', 'MAT00056', '1', 60, '', '2016-06-01', '2016-06-08 14:13:18'),
(34, 35, 'PO0716000001', 'ORD071600001', 'RCV071600001', 'MAT00075', '4', 63, '', '2016-07-01', '2016-07-08 14:51:27'),
(35, 33, 'PO0716000002', 'ORD071600001', 'RCV071600002', 'MAT00099', '1', 50, '', '2016-07-01', '2016-07-08 14:51:43'),
(36, 34, 'PO0716000002', 'ORD071600001', 'RCV071600002', 'MAT00085', '1', 60, '', '2016-07-01', '2016-07-08 14:51:43'),
(37, 32, 'PO0716000003', 'ORD071600001', 'RCV071600003', 'MAT00056', '1', 50, '', '2016-07-01', '2016-07-08 14:52:04'),
(38, 37, 'PO0816000001', 'ORD081600001', 'RCV081600001', 'MAT00099', '1', 50, '', '2016-08-05', '2016-08-09 15:31:09'),
(39, 38, 'PO0816000002', 'ORD081600001', 'RCV081600002', 'MAT00075', '4', 63, '', '2016-08-05', '2016-08-09 15:31:19'),
(40, 36, 'PO0816000003', 'ORD081600001', 'RCV081600003', 'MAT00056', '1', 50, '', '2016-08-05', '2016-08-09 15:31:30'),
(41, 39, 'PO0816000004', 'ORD081600001', 'RCV081600004', 'MAT00085', '1', 100, '', '2016-08-05', '2016-08-09 15:31:41'),
(42, 40, 'PO0916000001', 'ORD091600001', 'RCV091600001', 'MAT00056', '1', 50, '', '2016-09-05', '2016-09-06 15:52:28'),
(43, 42, 'PO0916000002', 'ORD091600001', 'RCV091600002', 'MAT00075', '4', 63, '', '2016-09-05', '2016-09-06 15:52:41'),
(44, 41, 'PO0916000003', 'ORD091600001', 'RCV091600003', 'MAT00099', '1', 50, '', '2016-09-05', '2016-09-06 15:52:52'),
(45, 43, 'PO0916000003', 'ORD091600001', 'RCV091600003', 'MAT00085', '1', 80, '', '2016-09-05', '2016-09-06 15:52:52'),
(46, 47, 'PO1016000001', 'ORD101600001', 'RCV101600001', 'MAT00017', '1', 500, '', '2016-10-11', '2016-10-03 17:54:10'),
(47, 45, 'PO1016000002', 'ORD101600001', 'RCV101600002', 'MAT00056', '1', 50, '', '2016-10-11', '2016-10-03 17:54:30'),
(48, 44, 'PO1016000003', 'ORD101600001', 'RCV101600003', 'MAT00099', '1', 50, '', '2016-10-11', '2016-10-03 17:54:44'),
(49, 46, 'PO1016000003', 'ORD101600001', 'RCV101600003', 'MAT00085', '1', 60, '', '2016-10-11', '2016-10-03 17:54:44'),
(50, 48, 'PO1116000001', 'ORD111600001', 'RCV111600001', 'MAT00075', '4', 63, '', '2016-11-04', '2016-11-02 18:12:10'),
(51, 50, 'PO1116000002', 'ORD111600001', 'RCV111600002', 'MAT00099', '1', 30, '', '2016-11-04', '2016-11-02 18:12:20'),
(52, 49, 'PO1116000003', 'ORD111600001', 'RCV111600004', 'MAT00056', '1', 40, '', '2016-11-04', '2016-11-02 18:12:41'),
(53, 51, 'PO1116000004', 'ORD111600001', 'RCV111600003', 'MAT00085', '1', 60, '', '2016-11-04', '2016-11-02 18:12:54'),
(59, 68, 'PO1216000001', 'ORD121600001', 'RCV121600001', 'MAT00099', '1', 50, '', '2016-12-01', '2016-12-10 13:57:40'),
(60, 67, 'PO1216000002', 'ORD121600001', 'RCV121600002', 'MAT00075', '4', 63, '', '2016-12-01', '2016-12-10 13:57:53'),
(61, 69, 'PO1216000003', 'ORD121600001', 'RCV121600003', 'MAT00056', '1', 50, '', '2016-12-01', '2016-12-10 13:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_keluar`
--

CREATE TABLE `tbl_trans_keluar` (
  `id_trans_keluar` varchar(12) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `tgl_trans_keluar` date NOT NULL,
  `timestamp_trans_keluar` datetime NOT NULL,
  `id_borongan` varchar(8) NOT NULL,
  `id_borongan_detail` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_keluar`
--

INSERT INTO `tbl_trans_keluar` (`id_trans_keluar`, `id_user`, `tgl_trans_keluar`, `timestamp_trans_keluar`, `id_borongan`, `id_borongan_detail`) VALUES
('OUT011600001', 'USR00004', '2016-01-04', '2016-01-15 11:10:47', 'BOR00004', 12),
('OUT011600002', 'USR00004', '2016-01-04', '2016-01-15 11:15:24', 'BOR00003', 7),
('OUT011600003', 'USR00004', '2016-01-05', '2016-01-15 11:18:18', 'BOR00002', 4),
('OUT011600004', 'USR00004', '2016-01-06', '2016-01-15 11:21:01', 'BOR00001', 1),
('OUT011600005', 'USR00004', '2016-01-07', '2016-01-15 11:23:39', 'BOR00004', 10),
('OUT011600006', 'USR00004', '2016-01-08', '2016-01-15 11:28:32', 'BOR00003', 8),
('OUT011600007', 'USR00004', '2016-01-11', '2016-01-15 11:34:06', 'BOR00002', 5),
('OUT011600008', 'USR00004', '2016-01-05', '2016-01-15 11:37:26', 'BOR00003', 8),
('OUT011600009', 'USR00004', '2016-01-06', '2016-01-15 11:40:06', 'BOR00001', 2),
('OUT011600010', 'USR00004', '2016-01-07', '2016-01-15 11:42:00', 'BOR00003', 9),
('OUT011600011', 'USR00004', '2016-01-08', '2016-01-15 11:45:11', 'BOR00002', 6),
('OUT011600012', 'USR00004', '2016-01-11', '2016-01-15 12:04:16', 'BOR00001', 3),
('OUT011600013', 'USR00004', '2016-01-12', '2016-01-15 12:05:36', 'BOR00002', 6),
('OUT011600014', 'USR00004', '2016-01-12', '2016-01-15 12:06:46', 'BOR00001', 13),
('OUT011600015', 'USR00004', '2016-01-13', '2016-01-15 12:07:59', 'BOR00004', 12),
('OUT011600016', 'USR00004', '2016-01-13', '2016-01-15 12:09:19', 'BOR00003', 8),
('OUT011600017', 'USR00004', '2016-01-14', '2016-01-15 12:10:16', 'BOR00002', 16),
('OUT011600018', 'USR00004', '2016-01-14', '2016-01-15 12:11:56', 'BOR00004', 10),
('OUT011600019', 'USR00004', '2016-01-15', '2016-01-15 12:14:33', 'BOR00001', 13),
('OUT011600020', 'USR00004', '2016-01-15', '2016-01-15 12:16:12', 'BOR00002', 4),
('OUT011600021', 'USR00004', '2016-01-18', '2016-01-15 12:17:46', 'BOR00004', 10),
('OUT011600022', 'USR00004', '2016-01-18', '2016-01-15 12:19:00', 'BOR00003', 9),
('OUT011600023', 'USR00004', '2016-01-19', '2016-01-15 12:20:18', 'BOR00001', 14),
('OUT011600024', 'USR00004', '2016-01-19', '2016-01-15 12:21:11', 'BOR00004', 11),
('OUT011600025', 'USR00004', '2016-01-20', '2016-01-15 12:22:23', 'BOR00003', 7),
('OUT011600026', 'USR00004', '2016-01-20', '2016-01-15 12:23:20', 'BOR00002', 4),
('OUT011600027', 'USR00004', '2016-01-21', '2016-01-15 12:29:35', 'BOR00002', 5),
('OUT011600028', 'USR00004', '2016-01-21', '2016-01-15 12:30:34', 'BOR00001', 1),
('OUT011600029', 'USR00004', '2016-01-22', '2016-01-15 12:31:39', 'BOR00003', 9),
('OUT011600030', 'USR00004', '2016-01-22', '2016-01-15 12:33:51', 'BOR00003', 7),
('OUT011600031', 'USR00004', '2016-01-25', '2016-01-15 12:36:08', 'BOR00003', 8),
('OUT011600032', 'USR00004', '2016-01-25', '2016-01-15 12:37:25', 'BOR00002', 5),
('OUT011600033', 'USR00004', '2016-01-26', '2016-01-15 12:40:53', 'BOR00004', 11),
('OUT011600034', 'USR00004', '2016-01-26', '2016-01-15 12:43:16', 'BOR00003', 9),
('OUT011600035', 'USR00004', '2016-01-27', '2016-01-15 12:48:11', 'BOR00004', 12),
('OUT011600036', 'USR00004', '2016-01-27', '2016-01-15 12:50:31', 'BOR00003', 8),
('OUT011600037', 'USR00004', '2016-01-28', '2016-01-15 12:51:52', 'BOR00002', 6),
('OUT011600038', 'USR00004', '2016-01-28', '2016-01-15 12:52:41', 'BOR00001', 3),
('OUT011600039', 'USR00004', '2016-01-29', '2016-01-15 12:54:19', 'BOR00004', 12),
('OUT011600040', 'USR00004', '2016-01-29', '2016-01-15 12:55:13', 'BOR00003', 7),
('OUT011600041', 'USR00004', '2016-01-04', '2016-01-15 13:09:31', 'BOR00001', 14),
('OUT011600042', 'USR00004', '2016-01-05', '2016-01-15 13:10:59', 'BOR00004', 11),
('OUT011600043', 'USR00004', '2016-01-06', '2016-01-15 13:14:01', 'BOR00003', 9),
('OUT011600044', 'USR00004', '2016-01-07', '2016-01-15 13:14:59', 'BOR00002', 6),
('OUT011600045', 'USR00004', '2016-01-08', '2016-01-15 13:17:44', 'BOR00001', 1),
('OUT011600046', 'USR00004', '2016-01-11', '2016-01-15 13:18:45', 'BOR00003', 8),
('OUT011600047', 'USR00004', '2016-01-12', '2016-01-15 13:20:50', 'BOR00002', 5),
('OUT011600048', 'USR00004', '2016-01-13', '2016-01-15 13:23:46', 'BOR00004', 10),
('OUT011600049', 'USR00004', '2016-01-14', '2016-01-15 13:25:15', 'BOR00001', 13),
('OUT011600050', 'USR00004', '2016-01-15', '2016-01-15 13:26:02', 'BOR00003', 8),
('OUT011600051', 'USR00004', '2016-01-18', '2016-01-15 13:26:44', 'BOR00002', 16),
('OUT011600052', 'USR00004', '2016-01-19', '2016-01-15 13:27:27', 'BOR00004', 11),
('OUT011600053', 'USR00004', '2016-01-20', '2016-01-15 13:28:05', 'BOR00001', 14),
('OUT011600054', 'USR00004', '2016-01-21', '2016-01-15 13:29:50', 'BOR00003', 8),
('OUT011600055', 'USR00004', '2016-01-22', '2016-01-15 13:30:35', 'BOR00002', 4),
('OUT011600056', 'USR00004', '2016-01-25', '2016-01-15 13:31:20', 'BOR00004', 12),
('OUT011600057', 'USR00004', '2016-01-26', '2016-01-15 13:32:44', 'BOR00001', 1),
('OUT011600058', 'USR00004', '2016-01-27', '2016-01-15 13:34:36', 'BOR00003', 7),
('OUT011600059', 'USR00004', '2016-01-28', '2016-01-15 13:35:57', 'BOR00002', 4),
('OUT011600060', 'USR00004', '2016-01-29', '2016-01-15 13:36:31', 'BOR00004', 11),
('OUT011600061', 'USR00004', '2016-01-04', '2016-01-15 13:37:53', 'BOR00001', 3),
('OUT011600062', 'USR00004', '2016-01-05', '2016-01-15 13:38:31', 'BOR00003', 9),
('OUT011600063', 'USR00001', '2016-01-29', '2016-01-12 21:06:11', 'BOR00003', 9),
('OUT011600064', 'USR00001', '2016-01-29', '2016-01-12 21:06:23', 'BOR00002', 6),
('OUT011600065', 'USR00001', '2016-01-28', '2016-01-12 21:06:38', 'BOR00002', 5),
('OUT011600066', 'USR00001', '2016-01-15', '2016-01-12 21:06:50', 'BOR00002', 5),
('OUT011600067', 'USR00001', '2016-01-25', '2016-01-12 21:07:04', 'BOR00001', 3),
('OUT011600068', 'USR00001', '2016-01-18', '2016-01-12 21:07:21', 'BOR00002', 6),
('OUT011600069', 'USR00001', '2016-01-27', '2016-01-12 21:07:51', 'BOR00001', 2),
('OUT011600070', 'USR00001', '2016-01-26', '2016-01-12 21:08:06', 'BOR00004', 11),
('OUT011600071', 'USR00001', '2016-01-29', '2016-01-12 21:08:17', 'BOR00001', 1),
('OUT011600072', 'USR00001', '2016-01-29', '2016-01-12 21:08:41', 'BOR00001', 14),
('OUT021600001', 'USR00001', '2016-02-01', '2016-02-02 21:11:41', 'BOR00003', 7),
('OUT021600002', 'USR00004', '2016-02-01', '2016-02-02 21:21:32', 'BOR00004', 10),
('OUT021600003', 'USR00004', '2016-02-01', '2016-02-02 21:22:30', 'BOR00004', 12),
('OUT021600004', 'USR00004', '2016-02-01', '2016-02-02 21:23:22', 'BOR00002', 5),
('OUT021600005', 'USR00004', '2016-02-01', '2016-02-02 21:26:21', 'BOR00002', 16),
('OUT021600006', 'USR00004', '2016-02-01', '2016-02-02 21:27:12', 'BOR00002', 6),
('OUT021600007', 'USR00004', '2016-02-01', '2016-02-02 21:28:21', 'BOR00001', 2),
('OUT021600008', 'USR00004', '2016-02-02', '2016-02-02 21:29:06', 'BOR00001', 3),
('OUT021600009', 'USR00004', '2016-02-02', '2016-02-02 23:43:08', 'BOR00001', 13),
('OUT021600010', 'USR00004', '2016-02-02', '2016-02-02 23:44:02', 'BOR00001', 14),
('OUT021600011', 'USR00004', '2016-02-02', '2016-02-02 23:45:09', 'BOR00003', 8),
('OUT021600012', 'USR00004', '2016-02-03', '2016-02-02 23:46:00', 'BOR00002', 4),
('OUT021600013', 'USR00004', '2016-02-03', '2016-02-02 23:46:46', 'BOR00002', 16),
('OUT021600014', 'USR00004', '2016-02-03', '2016-02-02 23:49:22', 'BOR00004', 12),
('OUT021600015', 'USR00004', '2016-02-03', '2016-02-02 23:50:07', 'BOR00003', 9),
('OUT021600016', 'USR00004', '2016-02-04', '2016-02-02 23:51:31', 'BOR00001', 1),
('OUT021600017', 'USR00004', '2016-02-04', '2016-02-02 23:54:59', 'BOR00001', 2),
('OUT021600018', 'USR00004', '2016-02-04', '2016-02-03 00:03:43', 'BOR00004', 11),
('OUT021600019', 'USR00004', '2016-02-05', '2016-02-03 00:04:24', 'BOR00002', 5),
('OUT021600020', 'USR00004', '2016-02-05', '2016-02-03 00:08:38', 'BOR00003', 7),
('OUT021600021', 'USR00004', '2016-02-05', '2016-02-03 00:09:23', 'BOR00002', 4),
('OUT021600022', 'USR00004', '2016-02-05', '2016-02-03 00:10:08', 'BOR00001', 3),
('OUT021600023', 'USR00004', '2016-02-05', '2016-02-03 00:15:11', 'BOR00001', 13),
('OUT021600024', 'USR00004', '2016-02-05', '2016-02-03 00:16:08', 'BOR00003', 8),
('OUT021600025', 'USR00004', '2016-02-05', '2016-02-03 00:17:04', 'BOR00004', 10),
('OUT021600026', 'USR00004', '2016-02-08', '2016-02-03 00:17:48', 'BOR00001', 2),
('OUT021600027', 'USR00004', '2016-02-08', '2016-02-03 00:18:27', 'BOR00004', 10),
('OUT021600028', 'USR00004', '2016-02-08', '2016-02-03 00:20:18', 'BOR00003', 8),
('OUT021600029', 'USR00004', '2016-02-09', '2016-02-03 00:20:54', 'BOR00003', 9),
('OUT021600030', 'USR00004', '2016-02-10', '2016-02-03 00:22:17', 'BOR00001', 1),
('OUT021600031', 'USR00004', '2016-02-11', '2016-02-03 00:23:58', 'BOR00002', 6),
('OUT021600032', 'USR00004', '2016-02-18', '2016-02-03 00:25:20', 'BOR00001', 14),
('OUT021600033', 'USR00004', '2016-02-19', '2016-02-03 00:25:59', 'BOR00003', 7),
('OUT021600034', 'USR00004', '2016-02-22', '2016-02-03 00:26:58', 'BOR00004', 11),
('OUT021600035', 'USR00004', '2016-02-23', '2016-02-03 00:27:09', 'BOR00003', 9),
('OUT021600036', 'USR00004', '2016-02-26', '2016-02-03 00:28:20', 'BOR00003', 9),
('OUT031600001', 'USR00004', '2016-03-01', '2016-03-03 18:16:09', 'BOR00001', 2),
('OUT031600002', 'USR00004', '2016-03-01', '2016-03-03 18:16:53', 'BOR00001', 1),
('OUT031600003', 'USR00004', '2016-03-01', '2016-03-03 18:17:19', 'BOR00001', 3),
('OUT031600004', 'USR00004', '2016-03-01', '2016-03-03 18:18:35', 'BOR00002', 4),
('OUT031600005', 'USR00004', '2016-03-01', '2016-03-03 18:19:10', 'BOR00002', 16),
('OUT031600006', 'USR00004', '2016-03-02', '2016-03-03 18:28:41', 'BOR00003', 7),
('OUT031600007', 'USR00004', '2016-03-02', '2016-03-03 18:41:05', 'BOR00004', 11),
('OUT031600008', 'USR00004', '2016-03-03', '2016-03-03 18:41:53', 'BOR00002', 4),
('OUT031600009', 'USR00004', '2016-03-03', '2016-03-03 18:42:57', 'BOR00002', 16),
('OUT031600010', 'USR00004', '2016-03-03', '2016-03-03 18:44:49', 'BOR00003', 9),
('OUT031600011', 'USR00004', '2016-03-04', '2016-03-03 18:45:47', 'BOR00002', 6),
('OUT031600012', 'USR00004', '2016-03-07', '2016-03-03 18:46:45', 'BOR00001', 2),
('OUT031600013', 'USR00004', '2016-03-07', '2016-03-03 18:47:27', 'BOR00001', 13),
('OUT031600014', 'USR00004', '2016-03-07', '2016-03-03 18:48:52', 'BOR00001', 1),
('OUT031600015', 'USR00004', '2016-03-07', '2016-03-03 18:51:00', 'BOR00004', 11),
('OUT031600016', 'USR00004', '2016-03-09', '2016-03-03 19:01:19', 'BOR00003', 7),
('OUT031600017', 'USR00004', '2016-03-09', '2016-03-03 19:02:21', 'BOR00001', 13),
('OUT031600018', 'USR00004', '2016-03-10', '2016-03-03 19:04:05', 'BOR00004', 10),
('OUT031600019', 'USR00004', '2016-03-10', '2016-03-03 19:04:57', 'BOR00001', 14),
('OUT031600020', 'USR00004', '2016-03-11', '2016-03-03 19:05:31', 'BOR00001', 1),
('OUT031600021', 'USR00004', '2016-03-14', '2016-03-03 19:08:10', 'BOR00001', 3),
('OUT031600022', 'USR00004', '2016-03-28', '2016-03-03 19:09:09', 'BOR00003', 8),
('OUT031600023', 'USR00004', '2016-03-30', '2016-03-03 19:09:21', 'BOR00004', 10),
('OUT041600001', 'USR00004', '2016-04-01', '2016-04-03 19:25:53', 'BOR00004', 10),
('OUT041600002', 'USR00004', '2016-04-01', '2016-04-03 19:42:52', 'BOR00003', 7),
('OUT041600003', 'USR00004', '2016-04-04', '2016-04-03 19:43:39', 'BOR00002', 4),
('OUT041600004', 'USR00004', '2016-04-04', '2016-04-03 19:44:46', 'BOR00001', 14),
('OUT041600005', 'USR00004', '2016-04-04', '2016-04-03 19:52:38', 'BOR00004', 12),
('OUT041600006', 'USR00004', '2016-04-05', '2016-04-03 19:53:52', 'BOR00003', 9),
('OUT041600007', 'USR00004', '2016-04-05', '2016-04-03 19:54:33', 'BOR00001', 14),
('OUT041600008', 'USR00004', '2016-04-06', '2016-04-03 19:56:27', 'BOR00001', 1),
('OUT041600009', 'USR00004', '2016-04-08', '2016-04-03 19:57:48', 'BOR00004', 12),
('OUT041600010', 'USR00004', '2016-04-11', '2016-04-03 19:58:52', 'BOR00003', 8),
('OUT041600011', 'USR00004', '2016-04-11', '2016-04-03 19:59:33', 'BOR00002', 16),
('OUT041600012', 'USR00004', '2016-04-12', '2016-04-03 20:01:00', 'BOR00001', 2),
('OUT041600013', 'USR00004', '2016-04-13', '2016-04-03 20:01:35', 'BOR00001', 13),
('OUT041600014', 'USR00004', '2016-04-14', '2016-04-03 20:02:12', 'BOR00002', 6),
('OUT041600015', 'USR00004', '2016-04-15', '2016-04-03 20:03:38', 'BOR00002', 4),
('OUT041600016', 'USR00004', '2016-04-18', '2016-04-03 20:04:23', 'BOR00003', 9),
('OUT041600017', 'USR00004', '2016-04-19', '2016-04-03 20:33:49', 'BOR00004', 11),
('OUT041600018', 'USR00004', '2016-04-25', '2016-04-03 20:37:38', 'BOR00002', 16),
('OUT041600019', 'USR00004', '2016-04-26', '2016-04-03 20:39:23', 'BOR00004', 12),
('OUT041600020', 'USR00004', '2016-04-28', '2016-04-03 20:40:52', 'BOR00001', 14),
('OUT051600001', 'USR00004', '2016-05-02', '2016-05-13 22:16:02', 'BOR00004', 10),
('OUT051600002', 'USR00004', '2016-05-02', '2016-05-13 22:19:26', 'BOR00004', 12),
('OUT051600003', 'USR00004', '2016-05-02', '2016-05-13 22:20:18', 'BOR00002', 4),
('OUT051600004', 'USR00004', '2016-05-03', '2016-05-13 22:21:22', 'BOR00001', 1),
('OUT051600005', 'USR00004', '2016-05-04', '2016-05-13 22:26:27', 'BOR00002', 5),
('OUT051600006', 'USR00004', '2016-05-05', '2016-05-13 22:27:20', 'BOR00002', 16),
('OUT051600007', 'USR00004', '2016-05-09', '2016-05-13 22:28:20', 'BOR00001', 13),
('OUT051600008', 'USR00004', '2016-05-09', '2016-05-13 22:32:43', 'BOR00001', 3),
('OUT051600009', 'USR00004', '2016-05-10', '2016-05-13 22:33:26', 'BOR00003', 9),
('OUT051600010', 'USR00004', '2016-05-11', '2016-05-13 22:35:02', 'BOR00004', 12),
('OUT051600011', 'USR00004', '2016-05-13', '2016-05-13 22:37:59', 'BOR00001', 13),
('OUT051600012', 'USR00004', '2016-05-16', '2016-05-13 22:39:26', 'BOR00003', 7),
('OUT051600013', 'USR00004', '2016-05-17', '2016-05-13 22:40:29', 'BOR00004', 12),
('OUT051600014', 'USR00004', '2016-05-20', '2016-05-13 22:42:22', 'BOR00004', 11),
('OUT061600001', 'USR00004', '2016-06-01', '2016-06-08 14:08:44', 'BOR00004', 11),
('OUT061600002', 'USR00004', '2016-06-01', '2016-06-08 14:09:48', 'BOR00003', 7),
('OUT061600003', 'USR00004', '2016-06-02', '2016-06-08 14:29:20', 'BOR00002', 5),
('OUT061600004', 'USR00004', '2016-06-02', '2016-06-08 14:30:15', 'BOR00001', 1),
('OUT061600005', 'USR00004', '2016-06-03', '2016-06-08 14:30:53', 'BOR00001', 13),
('OUT061600006', 'USR00004', '2016-06-03', '2016-06-08 14:31:29', 'BOR00003', 8),
('OUT061600007', 'USR00004', '2016-06-06', '2016-06-08 14:32:47', 'BOR00004', 12),
('OUT061600008', 'USR00004', '2016-06-07', '2016-06-08 14:36:21', 'BOR00003', 8),
('OUT061600009', 'USR00004', '2016-06-08', '2016-06-08 14:38:47', 'BOR00002', 4),
('OUT061600010', 'USR00004', '2016-06-09', '2016-06-08 14:41:12', 'BOR00001', 3),
('OUT061600011', 'USR00004', '2016-06-13', '2016-06-08 14:42:15', 'BOR00002', 4),
('OUT061600012', 'USR00004', '2016-06-15', '2016-06-08 14:43:02', 'BOR00001', 2),
('OUT061600013', 'USR00004', '2016-06-24', '2016-06-08 14:43:14', 'BOR00003', 9),
('OUT061600014', 'USR00004', '2016-06-29', '2016-06-08 14:43:44', 'BOR00004', 11),
('OUT071600001', 'USR00001', '2016-07-01', '2016-07-08 14:46:58', 'BOR00004', 12),
('OUT071600002', 'USR00004', '2016-07-01', '2016-07-08 14:48:56', 'BOR00003', 9),
('OUT071600003', 'USR00004', '2016-07-04', '2016-07-08 14:56:09', 'BOR00001', 14),
('OUT071600004', 'USR00004', '2016-07-04', '2016-07-08 15:00:20', 'BOR00002', 6),
('OUT071600005', 'USR00004', '2016-07-05', '2016-07-08 15:01:19', 'BOR00004', 11),
('OUT071600006', 'USR00004', '2016-07-06', '2016-07-08 15:02:18', 'BOR00002', 16),
('OUT071600007', 'USR00004', '2016-07-08', '2016-07-08 15:03:08', 'BOR00004', 11),
('OUT071600008', 'USR00004', '2016-07-11', '2016-07-08 15:04:17', 'BOR00001', 13),
('OUT071600009', 'USR00004', '2016-07-12', '2016-07-08 15:05:04', 'BOR00003', 9),
('OUT071600010', 'USR00004', '2016-07-13', '2016-07-08 15:06:14', 'BOR00002', 4),
('OUT071600011', 'USR00004', '2016-07-14', '2016-07-08 15:06:55', 'BOR00002', 16),
('OUT071600012', 'USR00004', '2016-07-26', '2016-07-08 15:07:26', 'BOR00001', 2),
('OUT071600013', 'USR00004', '2016-07-27', '2016-07-08 15:07:48', 'BOR00002', 6),
('OUT071600014', 'USR00004', '2016-07-28', '2016-07-08 15:08:22', 'BOR00003', 8),
('OUT081600001', 'USR00004', '2016-08-01', '2016-08-09 15:11:11', 'BOR00004', 10),
('OUT081600002', 'USR00004', '2016-08-02', '2016-08-09 15:24:31', 'BOR00003', 8),
('OUT081600003', 'USR00004', '2016-08-02', '2016-08-09 15:25:22', 'BOR00003', 9),
('OUT081600004', 'USR00004', '2016-08-03', '2016-08-09 15:26:36', 'BOR00003', 9),
('OUT081600005', 'USR00004', '2016-08-05', '2016-08-09 15:27:17', 'BOR00001', 13),
('OUT081600006', 'USR00004', '2016-08-08', '2016-08-09 15:27:57', 'BOR00004', 12),
('OUT081600007', 'USR00004', '2016-08-08', '2016-08-09 15:34:00', 'BOR00003', 8),
('OUT081600008', 'USR00004', '2016-08-17', '2016-08-09 15:35:13', 'BOR00002', 4),
('OUT081600009', 'USR00004', '2016-08-23', '2016-08-09 15:36:41', 'BOR00001', 13),
('OUT081600010', 'USR00004', '2016-08-24', '2016-08-09 15:38:03', 'BOR00003', 9),
('OUT081600011', 'USR00004', '2016-08-25', '2016-08-09 15:38:20', 'BOR00003', 7),
('OUT081600012', 'USR00004', '2016-08-29', '2016-08-09 15:38:43', 'BOR00001', 2),
('OUT081600013', 'USR00004', '2016-08-30', '2016-08-09 15:39:26', 'BOR00004', 11),
('OUT091600001', 'USR00004', '2016-09-01', '2016-09-06 15:44:03', 'BOR00001', 2),
('OUT091600002', 'USR00004', '2016-09-02', '2016-09-06 15:44:37', 'BOR00002', 16),
('OUT091600003', 'USR00004', '2016-09-02', '2016-09-06 15:46:06', 'BOR00002', 6),
('OUT091600004', 'USR00004', '2016-09-05', '2016-09-06 15:46:50', 'BOR00003', 9),
('OUT091600005', 'USR00004', '2016-09-06', '2016-09-06 15:47:52', 'BOR00004', 12),
('OUT091600006', 'USR00004', '2016-09-07', '2016-09-06 15:49:14', 'BOR00001', 3),
('OUT091600007', 'USR00004', '2016-09-08', '2016-09-06 15:56:08', 'BOR00004', 11),
('OUT091600008', 'USR00004', '2016-09-09', '2016-09-06 15:57:17', 'BOR00002', 4),
('OUT091600009', 'USR00004', '2016-09-12', '2016-09-06 15:59:03', 'BOR00001', 2),
('OUT091600010', 'USR00004', '2016-09-15', '2016-09-06 15:59:31', 'BOR00002', 4),
('OUT091600011', 'USR00004', '2016-09-16', '2016-09-06 15:59:44', 'BOR00001', 14),
('OUT091600012', 'USR00004', '2016-09-19', '2016-09-06 15:59:57', 'BOR00004', 11),
('OUT091600013', 'USR00004', '2016-09-23', '2016-09-06 16:00:13', 'BOR00003', 7),
('OUT101600001', 'USR00004', '2016-10-03', '2016-10-03 17:47:05', 'BOR00002', 4),
('OUT101600002', 'USR00004', '2016-10-04', '2016-10-03 17:48:08', 'BOR00001', 13),
('OUT101600003', 'USR00004', '2016-10-04', '2016-10-03 17:48:54', 'BOR00004', 12),
('OUT101600004', 'USR00004', '2016-10-06', '2016-10-03 17:50:13', 'BOR00003', 9),
('OUT101600005', 'USR00004', '2016-10-07', '2016-10-03 17:51:05', 'BOR00002', 16),
('OUT101600006', 'USR00004', '2016-10-10', '2016-10-03 17:52:28', 'BOR00001', 13),
('OUT101600007', 'USR00004', '2016-10-12', '2016-10-03 17:58:57', 'BOR00001', 14),
('OUT101600008', 'USR00004', '2016-10-13', '2016-10-03 18:00:32', 'BOR00003', 7),
('OUT101600009', 'USR00004', '2016-10-18', '2016-10-03 18:01:32', 'BOR00004', 11),
('OUT101600010', 'USR00004', '2016-10-20', '2016-10-03 18:02:54', 'BOR00001', 1),
('OUT101600011', 'USR00004', '2016-10-28', '2016-10-03 18:03:17', 'BOR00002', 16),
('OUT111600001', 'USR00004', '2016-11-01', '2016-11-02 18:05:41', 'BOR00004', 12),
('OUT111600002', 'USR00004', '2016-11-02', '2016-11-02 18:06:46', 'BOR00001', 1),
('OUT111600003', 'USR00004', '2016-11-03', '2016-11-02 18:09:36', 'BOR00002', 6),
('OUT111600004', 'USR00004', '2016-11-04', '2016-11-02 18:10:22', 'BOR00004', 11),
('OUT111600005', 'USR00004', '2016-11-07', '2016-11-02 18:26:46', 'BOR00004', 12),
('OUT111600006', 'USR00004', '2016-11-08', '2016-11-02 18:27:16', 'BOR00003', 8),
('OUT111600007', 'USR00004', '2016-11-10', '2016-11-02 18:28:50', 'BOR00001', 14),
('OUT111600008', 'USR00004', '2016-11-11', '2016-11-02 18:29:35', 'BOR00002', 4),
('OUT111600009', 'USR00004', '2016-11-17', '2016-11-02 18:30:39', 'BOR00003', 7),
('OUT111600010', 'USR00004', '2016-11-21', '2016-11-02 18:31:22', 'BOR00001', 13),
('OUT111600011', 'USR00004', '2016-11-23', '2016-11-02 18:32:31', 'BOR00004', 12),
('OUT111600012', 'USR00004', '2016-11-29', '2016-11-02 18:45:12', 'BOR00001', 2),
('OUT121600001', 'USR00004', '2016-12-01', '2016-12-02 18:50:31', 'BOR00004', 10),
('OUT121600002', 'USR00004', '2016-12-02', '2016-12-02 18:51:14', 'BOR00001', 13),
('OUT121600003', 'USR00004', '2016-12-05', '2016-12-02 18:52:01', 'BOR00003', 9),
('OUT121600004', 'USR00004', '2016-12-06', '2016-12-02 18:53:08', 'BOR00002', 5),
('OUT121600005', 'USR00004', '2016-12-07', '2016-12-02 18:55:20', 'BOR00004', 11),
('OUT121600006', 'USR00004', '2016-12-15', '2016-12-02 18:57:42', 'BOR00003', 9),
('OUT121600007', 'USR00004', '2016-12-16', '2016-12-02 18:58:58', 'BOR00004', 11),
('OUT121600008', 'USR00004', '2016-12-19', '2016-12-02 18:59:33', 'BOR00002', 16),
('OUT121600009', 'USR00004', '2016-12-21', '2016-12-02 19:00:42', 'BOR00001', 13),
('OUT121600010', 'USR00004', '2016-12-22', '2016-12-02 19:01:09', 'BOR00004', 10),
('OUT121600011', 'USR00004', '2016-12-26', '2016-12-02 19:01:50', 'BOR00002', 4),
('OUT121600012', 'USR00004', '2016-12-27', '2016-12-02 19:02:37', 'BOR00001', 1),
('OUT121600013', 'USR00004', '2016-12-28', '2016-12-02 19:02:49', 'BOR00002', 5),
('OUT121600014', 'USR00004', '2016-12-30', '2016-12-02 19:03:19', 'BOR00004', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_keluar_detail`
--

CREATE TABLE `tbl_trans_keluar_detail` (
  `id_trans_keluar_detail` int(11) NOT NULL,
  `id_trans_keluar` varchar(12) NOT NULL,
  `id_barang` varchar(8) NOT NULL,
  `id_satuan` varchar(8) NOT NULL,
  `qty_keluar` int(11) NOT NULL,
  `keterangan_keluar` varchar(150) NOT NULL,
  `tgl_trans_keluar_detail` date NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_keluar_detail`
--

INSERT INTO `tbl_trans_keluar_detail` (`id_trans_keluar_detail`, `id_trans_keluar`, `id_barang`, `id_satuan`, `qty_keluar`, `keterangan_keluar`, `tgl_trans_keluar_detail`, `timestamp`) VALUES
(1, 'OUT011600001', 'MAT00056', '1', 1, '', '2016-01-04', '2016-01-15 11:10:47'),
(2, 'OUT011600001', 'MAT00099', '1', 1, '', '2016-01-04', '2016-01-15 11:10:47'),
(3, 'OUT011600001', 'MAT00075', '4', 1, '', '2016-01-04', '2016-01-15 11:10:47'),
(4, 'OUT011600001', 'MAT00085', '1', 2, '', '2016-01-04', '2016-01-15 11:10:47'),
(5, 'OUT011600001', 'MAT00017', '1', 8, '', '2016-01-04', '2016-01-15 11:10:47'),
(6, 'OUT011600002', 'MAT00056', '1', 1, '', '2016-01-04', '2016-01-15 11:15:24'),
(7, 'OUT011600002', 'MAT00099', '1', 1, '', '2016-01-04', '2016-01-15 11:15:24'),
(8, 'OUT011600002', 'MAT00075', '4', 1, '', '2016-01-04', '2016-01-15 11:15:24'),
(9, 'OUT011600002', 'MAT00085', '1', 2, '', '2016-01-04', '2016-01-15 11:15:24'),
(10, 'OUT011600002', 'MAT00017', '1', 6, '', '2016-01-04', '2016-01-15 11:15:24'),
(11, 'OUT011600003', 'MAT00056', '1', 1, '', '2016-01-05', '2016-01-15 11:18:18'),
(12, 'OUT011600003', 'MAT00099', '1', 1, '', '2016-01-05', '2016-01-15 11:18:18'),
(13, 'OUT011600003', 'MAT00075', '4', 1, '', '2016-01-05', '2016-01-15 11:18:18'),
(14, 'OUT011600003', 'MAT00085', '1', 2, '', '2016-01-05', '2016-01-15 11:18:18'),
(15, 'OUT011600003', 'MAT00017', '1', 10, '', '2016-01-05', '2016-01-15 11:18:18'),
(16, 'OUT011600004', 'MAT00056', '1', 1, '', '2016-01-06', '2016-01-15 11:21:01'),
(17, 'OUT011600004', 'MAT00099', '1', 1, '', '2016-01-06', '2016-01-15 11:21:01'),
(18, 'OUT011600004', 'MAT00075', '4', 1, '', '2016-01-06', '2016-01-15 11:21:01'),
(19, 'OUT011600004', 'MAT00085', '1', 2, '', '2016-01-06', '2016-01-15 11:21:01'),
(20, 'OUT011600004', 'MAT00017', '1', 12, '', '2016-01-06', '2016-01-15 11:21:01'),
(21, 'OUT011600005', 'MAT00056', '1', 1, '', '2016-01-07', '2016-01-15 11:23:39'),
(22, 'OUT011600005', 'MAT00099', '1', 1, '', '2016-01-07', '2016-01-15 11:23:39'),
(23, 'OUT011600005', 'MAT00075', '4', 1, '', '2016-01-07', '2016-01-15 11:23:39'),
(24, 'OUT011600005', 'MAT00085', '1', 2, '', '2016-01-07', '2016-01-15 11:23:39'),
(25, 'OUT011600005', 'MAT00017', '1', 14, '', '2016-01-07', '2016-01-15 11:23:39'),
(26, 'OUT011600006', 'MAT00056', '1', 1, '', '2016-01-08', '2016-01-15 11:28:32'),
(27, 'OUT011600006', 'MAT00099', '1', 1, '', '2016-01-08', '2016-01-15 11:28:32'),
(28, 'OUT011600006', 'MAT00075', '4', 1, '', '2016-01-08', '2016-01-15 11:28:32'),
(29, 'OUT011600006', 'MAT00085', '1', 2, '', '2016-01-08', '2016-01-15 11:28:32'),
(30, 'OUT011600006', 'MAT00017', '1', 16, '', '2016-01-08', '2016-01-15 11:28:32'),
(31, 'OUT011600007', 'MAT00056', '1', 1, '', '2016-01-11', '2016-01-15 11:34:06'),
(32, 'OUT011600007', 'MAT00099', '1', 1, '', '2016-01-11', '2016-01-15 11:34:06'),
(33, 'OUT011600007', 'MAT00075', '4', 1, '', '2016-01-11', '2016-01-15 11:34:06'),
(34, 'OUT011600007', 'MAT00085', '1', 2, '', '2016-01-11', '2016-01-15 11:34:06'),
(35, 'OUT011600007', 'MAT00017', '1', 18, '', '2016-01-11', '2016-01-15 11:34:06'),
(36, 'OUT011600008', 'MAT00056', '1', 1, '', '2016-01-05', '2016-01-15 11:37:26'),
(37, 'OUT011600008', 'MAT00099', '1', 1, '', '2016-01-05', '2016-01-15 11:37:26'),
(38, 'OUT011600008', 'MAT00075', '4', 1, '', '2016-01-05', '2016-01-15 11:37:26'),
(39, 'OUT011600008', 'MAT00085', '1', 2, '', '2016-01-05', '2016-01-15 11:37:26'),
(40, 'OUT011600008', 'MAT00017', '1', 20, '', '2016-01-05', '2016-01-15 11:37:26'),
(41, 'OUT011600009', 'MAT00056', '1', 1, '', '2016-01-06', '2016-01-15 11:40:06'),
(42, 'OUT011600009', 'MAT00099', '1', 1, '', '2016-01-06', '2016-01-15 11:40:06'),
(43, 'OUT011600009', 'MAT00075', '4', 1, '', '2016-01-06', '2016-01-15 11:40:06'),
(44, 'OUT011600009', 'MAT00085', '1', 2, '', '2016-01-06', '2016-01-15 11:40:06'),
(45, 'OUT011600009', 'MAT00017', '1', 6, '', '2016-01-06', '2016-01-15 11:40:06'),
(46, 'OUT011600010', 'MAT00056', '1', 1, '', '2016-01-07', '2016-01-15 11:42:00'),
(47, 'OUT011600010', 'MAT00099', '1', 1, '', '2016-01-07', '2016-01-15 11:42:00'),
(48, 'OUT011600010', 'MAT00075', '4', 1, '', '2016-01-07', '2016-01-15 11:42:00'),
(49, 'OUT011600010', 'MAT00085', '1', 2, '', '2016-01-07', '2016-01-15 11:42:00'),
(50, 'OUT011600010', 'MAT00017', '1', 8, '', '2016-01-07', '2016-01-15 11:42:00'),
(51, 'OUT011600011', 'MAT00056', '1', 1, '', '2016-01-08', '2016-01-15 11:45:11'),
(52, 'OUT011600011', 'MAT00099', '1', 1, '', '2016-01-08', '2016-01-15 11:45:11'),
(53, 'OUT011600011', 'MAT00075', '4', 1, '', '2016-01-08', '2016-01-15 11:45:11'),
(54, 'OUT011600011', 'MAT00085', '1', 2, '', '2016-01-08', '2016-01-15 11:45:11'),
(55, 'OUT011600011', 'MAT00017', '1', 8, '', '2016-01-08', '2016-01-15 11:45:11'),
(56, 'OUT011600012', 'MAT00056', '1', 1, '', '2016-01-11', '2016-01-15 12:04:16'),
(57, 'OUT011600012', 'MAT00099', '1', 1, '', '2016-01-11', '2016-01-15 12:04:16'),
(58, 'OUT011600012', 'MAT00075', '4', 1, '', '2016-01-11', '2016-01-15 12:04:16'),
(59, 'OUT011600012', 'MAT00085', '1', 2, '', '2016-01-11', '2016-01-15 12:04:16'),
(60, 'OUT011600012', 'MAT00017', '1', 10, '', '2016-01-11', '2016-01-15 12:04:16'),
(61, 'OUT011600013', 'MAT00056', '1', 1, '', '2016-01-12', '2016-01-15 12:05:36'),
(62, 'OUT011600013', 'MAT00099', '1', 1, '', '2016-01-12', '2016-01-15 12:05:36'),
(63, 'OUT011600013', 'MAT00075', '4', 1, '', '2016-01-12', '2016-01-15 12:05:36'),
(64, 'OUT011600013', 'MAT00085', '1', 2, '', '2016-01-12', '2016-01-15 12:05:36'),
(65, 'OUT011600013', 'MAT00017', '1', 12, '', '2016-01-12', '2016-01-15 12:05:36'),
(66, 'OUT011600014', 'MAT00056', '1', 1, '', '2016-01-12', '2016-01-15 12:06:46'),
(67, 'OUT011600014', 'MAT00099', '1', 1, '', '2016-01-12', '2016-01-15 12:06:46'),
(68, 'OUT011600014', 'MAT00075', '4', 1, '', '2016-01-12', '2016-01-15 12:06:46'),
(69, 'OUT011600014', 'MAT00085', '1', 2, '', '2016-01-12', '2016-01-15 12:06:46'),
(70, 'OUT011600014', 'MAT00017', '1', 12, '', '2016-01-12', '2016-01-15 12:06:46'),
(71, 'OUT011600015', 'MAT00056', '1', 1, '', '2016-01-13', '2016-01-15 12:07:59'),
(72, 'OUT011600015', 'MAT00099', '1', 1, '', '2016-01-13', '2016-01-15 12:07:59'),
(73, 'OUT011600015', 'MAT00075', '4', 1, '', '2016-01-13', '2016-01-15 12:07:59'),
(74, 'OUT011600015', 'MAT00085', '1', 2, '', '2016-01-13', '2016-01-15 12:07:59'),
(75, 'OUT011600015', 'MAT00017', '1', 14, '', '2016-01-13', '2016-01-15 12:07:59'),
(76, 'OUT011600016', 'MAT00056', '1', 1, '', '2016-01-13', '2016-01-15 12:09:19'),
(77, 'OUT011600016', 'MAT00099', '1', 1, '', '2016-01-13', '2016-01-15 12:09:19'),
(78, 'OUT011600016', 'MAT00075', '4', 1, '', '2016-01-13', '2016-01-15 12:09:19'),
(79, 'OUT011600016', 'MAT00085', '1', 2, '', '2016-01-13', '2016-01-15 12:09:19'),
(80, 'OUT011600016', 'MAT00017', '1', 16, '', '2016-01-13', '2016-01-15 12:09:19'),
(81, 'OUT011600017', 'MAT00056', '1', 1, '', '2016-01-14', '2016-01-15 12:10:16'),
(82, 'OUT011600017', 'MAT00099', '1', 1, '', '2016-01-14', '2016-01-15 12:10:16'),
(83, 'OUT011600017', 'MAT00075', '4', 1, '', '2016-01-14', '2016-01-15 12:10:16'),
(84, 'OUT011600017', 'MAT00085', '1', 2, '', '2016-01-14', '2016-01-15 12:10:16'),
(85, 'OUT011600017', 'MAT00017', '1', 18, '', '2016-01-14', '2016-01-15 12:10:16'),
(86, 'OUT011600018', 'MAT00056', '1', 1, '', '2016-01-14', '2016-01-15 12:11:56'),
(87, 'OUT011600018', 'MAT00099', '1', 1, '', '2016-01-14', '2016-01-15 12:11:56'),
(88, 'OUT011600018', 'MAT00075', '4', 1, '', '2016-01-14', '2016-01-15 12:11:56'),
(89, 'OUT011600018', 'MAT00085', '1', 2, '', '2016-01-14', '2016-01-15 12:11:56'),
(90, 'OUT011600018', 'MAT00017', '1', 20, '', '2016-01-14', '2016-01-15 12:11:56'),
(91, 'OUT011600019', 'MAT00056', '1', 1, '', '2016-01-15', '2016-01-15 12:14:33'),
(92, 'OUT011600019', 'MAT00099', '1', 1, '', '2016-01-15', '2016-01-15 12:14:33'),
(93, 'OUT011600019', 'MAT00075', '4', 1, '', '2016-01-15', '2016-01-15 12:14:33'),
(94, 'OUT011600019', 'MAT00085', '1', 2, '', '2016-01-15', '2016-01-15 12:14:33'),
(95, 'OUT011600019', 'MAT00017', '1', 6, '', '2016-01-15', '2016-01-15 12:14:33'),
(96, 'OUT011600020', 'MAT00056', '1', 1, '', '2016-01-15', '2016-01-15 12:16:12'),
(97, 'OUT011600020', 'MAT00099', '1', 1, '', '2016-01-15', '2016-01-15 12:16:12'),
(98, 'OUT011600020', 'MAT00075', '4', 1, '', '2016-01-15', '2016-01-15 12:16:12'),
(99, 'OUT011600020', 'MAT00085', '1', 2, '', '2016-01-15', '2016-01-15 12:16:12'),
(100, 'OUT011600020', 'MAT00017', '1', 8, '', '2016-01-15', '2016-01-15 12:16:12'),
(101, 'OUT011600021', 'MAT00056', '1', 1, '', '2016-01-18', '2016-01-15 12:17:46'),
(102, 'OUT011600021', 'MAT00099', '1', 1, '', '2016-01-18', '2016-01-15 12:17:46'),
(103, 'OUT011600021', 'MAT00075', '4', 1, '', '2016-01-18', '2016-01-15 12:17:46'),
(104, 'OUT011600021', 'MAT00085', '1', 2, '', '2016-01-18', '2016-01-15 12:17:46'),
(105, 'OUT011600021', 'MAT00017', '1', 10, '', '2016-01-18', '2016-01-15 12:17:46'),
(106, 'OUT011600022', 'MAT00056', '1', 1, '', '2016-01-18', '2016-01-15 12:19:00'),
(107, 'OUT011600022', 'MAT00099', '1', 1, '', '2016-01-18', '2016-01-15 12:19:00'),
(108, 'OUT011600022', 'MAT00075', '4', 1, '', '2016-01-18', '2016-01-15 12:19:00'),
(109, 'OUT011600022', 'MAT00085', '1', 2, '', '2016-01-18', '2016-01-15 12:19:00'),
(110, 'OUT011600022', 'MAT00017', '1', 12, '', '2016-01-18', '2016-01-15 12:19:00'),
(116, 'OUT011600024', 'MAT00056', '1', 1, '', '2016-01-19', '2016-01-15 12:21:11'),
(117, 'OUT011600024', 'MAT00099', '1', 1, '', '2016-01-19', '2016-01-15 12:21:11'),
(118, 'OUT011600024', 'MAT00075', '4', 1, '', '2016-01-19', '2016-01-15 12:21:11'),
(119, 'OUT011600024', 'MAT00085', '1', 2, '', '2016-01-19', '2016-01-15 12:21:11'),
(120, 'OUT011600024', 'MAT00017', '1', 16, '', '2016-01-19', '2016-01-15 12:21:11'),
(131, 'OUT011600026', 'MAT00056', '1', 1, '', '2016-01-20', '2016-01-15 12:25:57'),
(132, 'OUT011600026', 'MAT00099', '1', 1, '', '2016-01-20', '2016-01-15 12:25:57'),
(133, 'OUT011600026', 'MAT00075', '4', 1, '', '2016-01-20', '2016-01-15 12:25:57'),
(134, 'OUT011600026', 'MAT00085', '1', 2, '', '2016-01-20', '2016-01-15 12:25:57'),
(135, 'OUT011600025', 'MAT00056', '1', 1, '', '2016-01-20', '2016-01-15 12:26:08'),
(136, 'OUT011600025', 'MAT00099', '1', 1, '', '2016-01-20', '2016-01-15 12:26:08'),
(137, 'OUT011600025', 'MAT00075', '4', 1, '', '2016-01-20', '2016-01-15 12:26:08'),
(138, 'OUT011600025', 'MAT00085', '1', 2, '', '2016-01-20', '2016-01-15 12:26:08'),
(139, 'OUT011600023', 'MAT00056', '1', 1, '', '2016-01-19', '2016-01-15 12:26:41'),
(140, 'OUT011600023', 'MAT00099', '1', 1, '', '2016-01-19', '2016-01-15 12:26:41'),
(141, 'OUT011600023', 'MAT00075', '4', 1, '', '2016-01-19', '2016-01-15 12:26:41'),
(142, 'OUT011600023', 'MAT00085', '1', 2, '', '2016-01-19', '2016-01-15 12:26:41'),
(143, 'OUT011600027', 'MAT00056', '1', 1, '', '2016-01-21', '2016-01-15 12:29:35'),
(144, 'OUT011600027', 'MAT00099', '1', 1, '', '2016-01-21', '2016-01-15 12:29:35'),
(145, 'OUT011600027', 'MAT00075', '4', 1, '', '2016-01-21', '2016-01-15 12:29:35'),
(146, 'OUT011600027', 'MAT00085', '1', 2, '', '2016-01-21', '2016-01-15 12:29:35'),
(147, 'OUT011600028', 'MAT00056', '1', 1, '', '2016-01-21', '2016-01-15 12:30:34'),
(148, 'OUT011600028', 'MAT00099', '1', 1, '', '2016-01-21', '2016-01-15 12:30:34'),
(149, 'OUT011600028', 'MAT00075', '4', 1, '', '2016-01-21', '2016-01-15 12:30:34'),
(150, 'OUT011600028', 'MAT00085', '1', 2, '', '2016-01-21', '2016-01-15 12:30:34'),
(151, 'OUT011600029', 'MAT00056', '1', 1, '', '2016-01-22', '2016-01-15 12:31:39'),
(152, 'OUT011600029', 'MAT00099', '1', 1, '', '2016-01-22', '2016-01-15 12:31:39'),
(153, 'OUT011600029', 'MAT00075', '4', 1, '', '2016-01-22', '2016-01-15 12:31:39'),
(154, 'OUT011600029', 'MAT00085', '1', 2, '', '2016-01-22', '2016-01-15 12:31:39'),
(155, 'OUT011600030', 'MAT00056', '1', 1, '', '2016-01-22', '2016-01-15 12:33:51'),
(156, 'OUT011600030', 'MAT00099', '1', 1, '', '2016-01-22', '2016-01-15 12:33:51'),
(157, 'OUT011600030', 'MAT00075', '4', 1, '', '2016-01-22', '2016-01-15 12:33:51'),
(158, 'OUT011600030', 'MAT00085', '1', 2, '', '2016-01-22', '2016-01-15 12:33:51'),
(159, 'OUT011600031', 'MAT00056', '1', 1, '', '2016-01-25', '2016-01-15 12:36:08'),
(160, 'OUT011600031', 'MAT00099', '1', 1, '', '2016-01-25', '2016-01-15 12:36:08'),
(161, 'OUT011600031', 'MAT00075', '4', 1, '', '2016-01-25', '2016-01-15 12:36:08'),
(162, 'OUT011600031', 'MAT00085', '1', 2, '', '2016-01-25', '2016-01-15 12:36:08'),
(163, 'OUT011600032', 'MAT00056', '1', 1, '', '2016-01-25', '2016-01-15 12:37:25'),
(164, 'OUT011600032', 'MAT00099', '1', 1, '', '2016-01-25', '2016-01-15 12:37:25'),
(165, 'OUT011600032', 'MAT00075', '4', 1, '', '2016-01-25', '2016-01-15 12:37:25'),
(166, 'OUT011600032', 'MAT00085', '1', 2, '', '2016-01-25', '2016-01-15 12:37:25'),
(167, 'OUT011600033', 'MAT00056', '1', 1, '', '2016-01-26', '2016-01-15 12:40:53'),
(168, 'OUT011600033', 'MAT00099', '1', 1, '', '2016-01-26', '2016-01-15 12:40:53'),
(169, 'OUT011600033', 'MAT00075', '4', 1, '', '2016-01-26', '2016-01-15 12:40:53'),
(170, 'OUT011600033', 'MAT00085', '1', 2, '', '2016-01-26', '2016-01-15 12:40:53'),
(171, 'OUT011600034', 'MAT00056', '1', 1, '', '2016-01-26', '2016-01-15 12:43:16'),
(172, 'OUT011600034', 'MAT00099', '1', 1, '', '2016-01-26', '2016-01-15 12:43:16'),
(173, 'OUT011600034', 'MAT00075', '4', 1, '', '2016-01-26', '2016-01-15 12:43:16'),
(174, 'OUT011600034', 'MAT00085', '1', 2, '', '2016-01-26', '2016-01-15 12:43:16'),
(175, 'OUT011600035', 'MAT00056', '1', 1, '', '2016-01-27', '2016-01-15 12:48:11'),
(176, 'OUT011600035', 'MAT00099', '1', 1, '', '2016-01-27', '2016-01-15 12:48:11'),
(177, 'OUT011600035', 'MAT00075', '4', 1, '', '2016-01-27', '2016-01-15 12:48:11'),
(178, 'OUT011600035', 'MAT00085', '1', 2, '', '2016-01-27', '2016-01-15 12:48:11'),
(179, 'OUT011600036', 'MAT00056', '1', 1, '', '2016-01-27', '2016-01-15 12:50:31'),
(180, 'OUT011600036', 'MAT00099', '1', 1, '', '2016-01-27', '2016-01-15 12:50:31'),
(181, 'OUT011600036', 'MAT00075', '4', 1, '', '2016-01-27', '2016-01-15 12:50:31'),
(182, 'OUT011600036', 'MAT00085', '1', 2, '', '2016-01-27', '2016-01-15 12:50:31'),
(183, 'OUT011600037', 'MAT00056', '1', 1, '', '2016-01-28', '2016-01-15 12:51:52'),
(184, 'OUT011600037', 'MAT00099', '1', 1, '', '2016-01-28', '2016-01-15 12:51:52'),
(185, 'OUT011600037', 'MAT00075', '4', 1, '', '2016-01-28', '2016-01-15 12:51:52'),
(186, 'OUT011600037', 'MAT00085', '1', 2, '', '2016-01-28', '2016-01-15 12:51:52'),
(187, 'OUT011600038', 'MAT00056', '1', 1, '', '2016-01-28', '2016-01-15 12:52:41'),
(188, 'OUT011600038', 'MAT00099', '1', 1, '', '2016-01-28', '2016-01-15 12:52:41'),
(189, 'OUT011600038', 'MAT00075', '4', 1, '', '2016-01-28', '2016-01-15 12:52:41'),
(190, 'OUT011600038', 'MAT00085', '1', 2, '', '2016-01-28', '2016-01-15 12:52:41'),
(191, 'OUT011600039', 'MAT00056', '1', 1, '', '2016-01-29', '2016-01-15 12:54:19'),
(192, 'OUT011600039', 'MAT00099', '1', 1, '', '2016-01-29', '2016-01-15 12:54:19'),
(193, 'OUT011600039', 'MAT00075', '4', 1, '', '2016-01-29', '2016-01-15 12:54:19'),
(194, 'OUT011600039', 'MAT00085', '1', 2, '', '2016-01-29', '2016-01-15 12:54:19'),
(195, 'OUT011600040', 'MAT00056', '1', 1, '', '2016-01-29', '2016-01-15 12:55:13'),
(196, 'OUT011600040', 'MAT00099', '1', 1, '', '2016-01-29', '2016-01-15 12:55:13'),
(197, 'OUT011600040', 'MAT00075', '4', 1, '', '2016-01-29', '2016-01-15 12:55:13'),
(198, 'OUT011600040', 'MAT00085', '1', 2, '', '2016-01-29', '2016-01-15 12:55:13'),
(199, 'OUT011600041', 'MAT00056', '1', 1, '', '2016-01-04', '2016-01-15 13:09:31'),
(200, 'OUT011600041', 'MAT00099', '1', 1, '', '2016-01-04', '2016-01-15 13:09:31'),
(201, 'OUT011600041', 'MAT00075', '4', 1, '', '2016-01-04', '2016-01-15 13:09:31'),
(202, 'OUT011600041', 'MAT00085', '1', 2, '', '2016-01-04', '2016-01-15 13:09:31'),
(203, 'OUT011600042', 'MAT00056', '1', 1, '', '2016-01-05', '2016-01-15 13:10:59'),
(204, 'OUT011600042', 'MAT00099', '1', 1, '', '2016-01-05', '2016-01-15 13:10:59'),
(205, 'OUT011600042', 'MAT00075', '4', 1, '', '2016-01-05', '2016-01-15 13:10:59'),
(206, 'OUT011600042', 'MAT00085', '1', 2, '', '2016-01-05', '2016-01-15 13:10:59'),
(207, 'OUT011600043', 'MAT00056', '1', 1, '', '2016-01-06', '2016-01-15 13:14:01'),
(208, 'OUT011600043', 'MAT00099', '1', 1, '', '2016-01-06', '2016-01-15 13:14:01'),
(209, 'OUT011600043', 'MAT00075', '4', 1, '', '2016-01-06', '2016-01-15 13:14:01'),
(210, 'OUT011600043', 'MAT00085', '1', 2, '', '2016-01-06', '2016-01-15 13:14:01'),
(211, 'OUT011600044', 'MAT00056', '1', 1, '', '2016-01-07', '2016-01-15 13:14:59'),
(212, 'OUT011600044', 'MAT00099', '1', 1, '', '2016-01-07', '2016-01-15 13:14:59'),
(213, 'OUT011600044', 'MAT00075', '4', 1, '', '2016-01-07', '2016-01-15 13:14:59'),
(214, 'OUT011600044', 'MAT00085', '1', 2, '', '2016-01-07', '2016-01-15 13:14:59'),
(215, 'OUT011600045', 'MAT00056', '1', 1, '', '2016-01-08', '2016-01-15 13:17:44'),
(216, 'OUT011600045', 'MAT00099', '1', 1, '', '2016-01-08', '2016-01-15 13:17:44'),
(217, 'OUT011600045', 'MAT00075', '4', 1, '', '2016-01-08', '2016-01-15 13:17:44'),
(218, 'OUT011600045', 'MAT00085', '1', 2, '', '2016-01-08', '2016-01-15 13:17:44'),
(219, 'OUT011600046', 'MAT00056', '1', 1, '', '2016-01-11', '2016-01-15 13:18:45'),
(220, 'OUT011600046', 'MAT00099', '1', 1, '', '2016-01-11', '2016-01-15 13:18:45'),
(221, 'OUT011600046', 'MAT00075', '4', 1, '', '2016-01-11', '2016-01-15 13:18:45'),
(222, 'OUT011600046', 'MAT00085', '1', 2, '', '2016-01-11', '2016-01-15 13:18:45'),
(223, 'OUT011600047', 'MAT00056', '1', 1, '', '2016-01-12', '2016-01-15 13:20:50'),
(224, 'OUT011600047', 'MAT00099', '1', 1, '', '2016-01-12', '2016-01-15 13:20:50'),
(225, 'OUT011600047', 'MAT00075', '4', 1, '', '2016-01-12', '2016-01-15 13:20:50'),
(226, 'OUT011600048', 'MAT00056', '1', 1, '', '2016-01-13', '2016-01-15 13:23:46'),
(227, 'OUT011600048', 'MAT00099', '1', 1, '', '2016-01-13', '2016-01-15 13:23:46'),
(228, 'OUT011600048', 'MAT00075', '4', 1, '', '2016-01-13', '2016-01-15 13:23:46'),
(229, 'OUT011600049', 'MAT00056', '1', 1, '', '2016-01-14', '2016-01-15 13:25:15'),
(230, 'OUT011600049', 'MAT00099', '1', 1, '', '2016-01-14', '2016-01-15 13:25:15'),
(231, 'OUT011600049', 'MAT00075', '4', 1, '', '2016-01-14', '2016-01-15 13:25:15'),
(232, 'OUT011600050', 'MAT00056', '1', 1, '', '2016-01-15', '2016-01-15 13:26:02'),
(233, 'OUT011600050', 'MAT00099', '1', 1, '', '2016-01-15', '2016-01-15 13:26:02'),
(234, 'OUT011600050', 'MAT00075', '4', 1, '', '2016-01-15', '2016-01-15 13:26:02'),
(235, 'OUT011600051', 'MAT00056', '1', 1, '', '2016-01-18', '2016-01-15 13:26:44'),
(236, 'OUT011600051', 'MAT00099', '1', 1, '', '2016-01-18', '2016-01-15 13:26:44'),
(237, 'OUT011600051', 'MAT00075', '4', 1, '', '2016-01-18', '2016-01-15 13:26:44'),
(238, 'OUT011600052', 'MAT00056', '1', 1, '', '2016-01-19', '2016-01-15 13:27:27'),
(239, 'OUT011600052', 'MAT00099', '1', 1, '', '2016-01-19', '2016-01-15 13:27:27'),
(240, 'OUT011600052', 'MAT00075', '4', 1, '', '2016-01-19', '2016-01-15 13:27:27'),
(241, 'OUT011600053', 'MAT00056', '1', 1, '', '2016-01-20', '2016-01-15 13:28:05'),
(242, 'OUT011600053', 'MAT00099', '1', 1, '', '2016-01-20', '2016-01-15 13:28:05'),
(243, 'OUT011600053', 'MAT00075', '4', 1, '', '2016-01-20', '2016-01-15 13:28:05'),
(244, 'OUT011600054', 'MAT00056', '1', 1, '', '2016-01-21', '2016-01-15 13:29:50'),
(245, 'OUT011600054', 'MAT00099', '1', 1, '', '2016-01-21', '2016-01-15 13:29:50'),
(246, 'OUT011600054', 'MAT00075', '4', 1, '', '2016-01-21', '2016-01-15 13:29:50'),
(247, 'OUT011600055', 'MAT00056', '1', 1, '', '2016-01-22', '2016-01-15 13:30:35'),
(248, 'OUT011600055', 'MAT00099', '1', 1, '', '2016-01-22', '2016-01-15 13:30:35'),
(249, 'OUT011600055', 'MAT00075', '4', 1, '', '2016-01-22', '2016-01-15 13:30:35'),
(250, 'OUT011600056', 'MAT00056', '1', 1, '', '2016-01-25', '2016-01-15 13:31:20'),
(251, 'OUT011600056', 'MAT00099', '1', 1, '', '2016-01-25', '2016-01-15 13:31:20'),
(252, 'OUT011600056', 'MAT00075', '4', 1, '', '2016-01-25', '2016-01-15 13:31:20'),
(253, 'OUT011600057', 'MAT00056', '1', 1, '', '2016-01-26', '2016-01-15 13:32:44'),
(254, 'OUT011600057', 'MAT00099', '1', 1, '', '2016-01-26', '2016-01-15 13:32:44'),
(255, 'OUT011600057', 'MAT00075', '4', 1, '', '2016-01-26', '2016-01-15 13:32:44'),
(256, 'OUT011600058', 'MAT00099', '1', 1, '', '2016-01-27', '2016-01-15 13:34:36'),
(257, 'OUT011600058', 'MAT00075', '4', 1, '', '2016-01-27', '2016-01-15 13:34:36'),
(258, 'OUT011600059', 'MAT00099', '1', 1, '', '2016-01-28', '2016-01-15 13:35:57'),
(259, 'OUT011600059', 'MAT00075', '4', 1, '', '2016-01-28', '2016-01-15 13:35:57'),
(260, 'OUT011600060', 'MAT00099', '1', 1, '', '2016-01-29', '2016-01-15 13:36:31'),
(261, 'OUT011600060', 'MAT00075', '4', 1, '', '2016-01-29', '2016-01-15 13:36:31'),
(262, 'OUT011600061', 'MAT00099', '1', 1, '', '2016-01-04', '2016-01-15 13:37:53'),
(263, 'OUT011600061', 'MAT00075', '4', 1, '', '2016-01-04', '2016-01-15 13:37:53'),
(264, 'OUT011600062', 'MAT00099', '1', 1, '', '2016-01-05', '2016-01-15 13:38:31'),
(265, 'OUT011600062', 'MAT00075', '4', 1, '', '2016-01-05', '2016-01-15 13:38:31'),
(266, 'OUT011600063', 'MAT00075', '4', 2, '', '2016-01-29', '2016-01-12 21:06:11'),
(267, 'OUT011600064', 'MAT00075', '4', 2, '', '2016-01-29', '2016-01-12 21:06:23'),
(268, 'OUT011600065', 'MAT00075', '4', 2, '', '2016-01-28', '2016-01-12 21:06:38'),
(269, 'OUT011600066', 'MAT00075', '4', 2, '', '2016-01-15', '2016-01-12 21:06:50'),
(270, 'OUT011600067', 'MAT00075', '4', 2, '', '2016-01-25', '2016-01-12 21:07:04'),
(271, 'OUT011600068', 'MAT00075', '4', 2, '', '2016-01-18', '2016-01-12 21:07:21'),
(272, 'OUT011600069', 'MAT00075', '4', 2, '', '2016-01-27', '2016-01-12 21:07:51'),
(273, 'OUT011600070', 'MAT00075', '4', 2, '', '2016-01-26', '2016-01-12 21:08:06'),
(274, 'OUT011600071', 'MAT00075', '4', 2, '', '2016-01-29', '2016-01-12 21:08:17'),
(275, 'OUT011600072', 'MAT00075', '4', 2, '', '2016-01-29', '2016-01-12 21:08:41'),
(276, 'OUT021600001', 'MAT00056', '1', 1, '', '2016-02-01', '2016-02-02 21:11:41'),
(277, 'OUT021600001', 'MAT00099', '1', 1, '', '2016-02-01', '2016-02-02 21:11:41'),
(278, 'OUT021600001', 'MAT00075', '4', 1, '', '2016-02-01', '2016-02-02 21:11:41'),
(279, 'OUT021600001', 'MAT00085', '1', 2, '', '2016-02-01', '2016-02-02 21:11:41'),
(280, 'OUT021600001', 'MAT00017', '1', 8, '', '2016-02-01', '2016-02-02 21:11:41'),
(281, 'OUT021600002', 'MAT00056', '1', 1, '', '2016-02-01', '2016-02-02 21:21:32'),
(282, 'OUT021600002', 'MAT00099', '1', 1, '', '2016-02-01', '2016-02-02 21:21:32'),
(283, 'OUT021600002', 'MAT00075', '4', 1, '', '2016-02-01', '2016-02-02 21:21:32'),
(284, 'OUT021600002', 'MAT00085', '1', 2, '', '2016-02-01', '2016-02-02 21:21:32'),
(285, 'OUT021600002', 'MAT00017', '1', 8, '', '2016-02-01', '2016-02-02 21:21:32'),
(286, 'OUT021600003', 'MAT00056', '1', 1, '', '2016-02-01', '2016-02-02 21:22:30'),
(287, 'OUT021600003', 'MAT00099', '1', 1, '', '2016-02-01', '2016-02-02 21:22:30'),
(288, 'OUT021600003', 'MAT00075', '4', 1, '', '2016-02-01', '2016-02-02 21:22:30'),
(289, 'OUT021600003', 'MAT00085', '1', 2, '', '2016-02-01', '2016-02-02 21:22:30'),
(290, 'OUT021600003', 'MAT00017', '1', 10, '', '2016-02-01', '2016-02-02 21:22:30'),
(291, 'OUT021600004', 'MAT00056', '1', 1, '', '2016-02-01', '2016-02-02 21:23:22'),
(292, 'OUT021600004', 'MAT00099', '1', 1, '', '2016-02-01', '2016-02-02 21:23:22'),
(293, 'OUT021600004', 'MAT00075', '4', 1, '', '2016-02-01', '2016-02-02 21:23:22'),
(294, 'OUT021600004', 'MAT00085', '1', 2, '', '2016-02-01', '2016-02-02 21:23:22'),
(295, 'OUT021600004', 'MAT00017', '1', 6, '', '2016-02-01', '2016-02-02 21:23:22'),
(296, 'OUT021600005', 'MAT00099', '1', 1, '', '2016-02-01', '2016-02-02 21:26:21'),
(297, 'OUT021600005', 'MAT00075', '4', 1, '', '2016-02-01', '2016-02-02 21:26:21'),
(298, 'OUT021600005', 'MAT00085', '1', 2, '', '2016-02-01', '2016-02-02 21:26:21'),
(299, 'OUT021600005', 'MAT00017', '1', 20, '', '2016-02-01', '2016-02-02 21:26:21'),
(300, 'OUT021600005', 'MAT00056', '1', 1, '', '2016-02-01', '2016-02-02 21:26:21'),
(301, 'OUT021600006', 'MAT00099', '1', 1, '', '2016-02-01', '2016-02-02 21:27:12'),
(302, 'OUT021600006', 'MAT00075', '4', 1, '', '2016-02-01', '2016-02-02 21:27:12'),
(303, 'OUT021600006', 'MAT00085', '1', 2, '', '2016-02-01', '2016-02-02 21:27:12'),
(304, 'OUT021600006', 'MAT00017', '1', 6, '', '2016-02-01', '2016-02-02 21:27:12'),
(305, 'OUT021600006', 'MAT00056', '1', 1, '', '2016-02-01', '2016-02-02 21:27:12'),
(306, 'OUT021600007', 'MAT00056', '1', 1, '', '2016-02-01', '2016-02-02 21:28:21'),
(307, 'OUT021600007', 'MAT00099', '1', 1, '', '2016-02-01', '2016-02-02 21:28:21'),
(308, 'OUT021600007', 'MAT00075', '4', 1, '', '2016-02-01', '2016-02-02 21:28:21'),
(309, 'OUT021600007', 'MAT00085', '1', 1, '', '2016-02-01', '2016-02-02 21:28:21'),
(310, 'OUT021600007', 'MAT00017', '1', 12, '', '2016-02-01', '2016-02-02 21:28:21'),
(311, 'OUT021600008', 'MAT00056', '1', 1, '', '2016-02-02', '2016-02-02 21:29:06'),
(312, 'OUT021600008', 'MAT00099', '1', 1, '', '2016-02-02', '2016-02-02 21:29:06'),
(313, 'OUT021600008', 'MAT00075', '4', 1, '', '2016-02-02', '2016-02-02 21:29:06'),
(314, 'OUT021600008', 'MAT00085', '1', 2, '', '2016-02-02', '2016-02-02 21:29:06'),
(315, 'OUT021600008', 'MAT00017', '1', 14, '', '2016-02-02', '2016-02-02 21:29:06'),
(316, 'OUT021600009', 'MAT00056', '1', 1, '', '2016-02-02', '2016-02-02 23:43:08'),
(317, 'OUT021600009', 'MAT00099', '1', 1, '', '2016-02-02', '2016-02-02 23:43:08'),
(318, 'OUT021600009', 'MAT00075', '4', 1, '', '2016-02-02', '2016-02-02 23:43:08'),
(319, 'OUT021600009', 'MAT00085', '1', 3, '', '2016-02-02', '2016-02-02 23:43:08'),
(320, 'OUT021600009', 'MAT00017', '1', 8, '', '2016-02-02', '2016-02-02 23:43:08'),
(321, 'OUT021600010', 'MAT00056', '1', 1, '', '2016-02-02', '2016-02-02 23:44:02'),
(322, 'OUT021600010', 'MAT00099', '1', 1, '', '2016-02-02', '2016-02-02 23:44:02'),
(323, 'OUT021600010', 'MAT00075', '4', 1, '', '2016-02-02', '2016-02-02 23:44:02'),
(324, 'OUT021600010', 'MAT00085', '1', 4, '', '2016-02-02', '2016-02-02 23:44:02'),
(325, 'OUT021600010', 'MAT00017', '1', 12, '', '2016-02-02', '2016-02-02 23:44:02'),
(326, 'OUT021600011', 'MAT00056', '1', 1, '', '2016-02-02', '2016-02-02 23:45:09'),
(327, 'OUT021600011', 'MAT00099', '1', 1, '', '2016-02-02', '2016-02-02 23:45:09'),
(328, 'OUT021600011', 'MAT00075', '4', 1, '', '2016-02-02', '2016-02-02 23:45:09'),
(329, 'OUT021600011', 'MAT00085', '1', 2, '', '2016-02-02', '2016-02-02 23:45:09'),
(330, 'OUT021600011', 'MAT00017', '1', 6, '', '2016-02-02', '2016-02-02 23:45:09'),
(331, 'OUT021600012', 'MAT00085', '1', 4, '', '2016-02-03', '2016-02-02 23:46:00'),
(332, 'OUT021600012', 'MAT00056', '1', 2, '', '2016-02-03', '2016-02-02 23:46:00'),
(333, 'OUT021600012', 'MAT00099', '1', 2, '', '2016-02-03', '2016-02-02 23:46:00'),
(334, 'OUT021600012', 'MAT00075', '4', 2, '', '2016-02-03', '2016-02-02 23:46:00'),
(335, 'OUT021600012', 'MAT00017', '1', 12, '', '2016-02-03', '2016-02-02 23:46:00'),
(336, 'OUT021600013', 'MAT00056', '1', 1, '', '2016-02-03', '2016-02-02 23:46:46'),
(337, 'OUT021600013', 'MAT00099', '1', 1, '', '2016-02-03', '2016-02-02 23:46:46'),
(338, 'OUT021600013', 'MAT00075', '4', 1, '', '2016-02-03', '2016-02-02 23:46:46'),
(339, 'OUT021600013', 'MAT00085', '1', 4, '', '2016-02-03', '2016-02-02 23:46:46'),
(340, 'OUT021600013', 'MAT00017', '1', 10, '', '2016-02-03', '2016-02-02 23:46:46'),
(341, 'OUT021600014', 'MAT00056', '1', 1, '', '2016-02-03', '2016-02-02 23:49:22'),
(342, 'OUT021600014', 'MAT00099', '1', 1, '', '2016-02-03', '2016-02-02 23:49:22'),
(343, 'OUT021600014', 'MAT00075', '4', 1, '', '2016-02-03', '2016-02-02 23:49:22'),
(344, 'OUT021600014', 'MAT00085', '1', 2, '', '2016-02-03', '2016-02-02 23:49:22'),
(345, 'OUT021600014', 'MAT00017', '1', 6, '', '2016-02-03', '2016-02-02 23:49:22'),
(346, 'OUT021600015', 'MAT00056', '1', 1, '', '2016-02-03', '2016-02-02 23:50:07'),
(347, 'OUT021600015', 'MAT00099', '1', 1, '', '2016-02-03', '2016-02-02 23:50:07'),
(348, 'OUT021600015', 'MAT00075', '4', 1, '', '2016-02-03', '2016-02-02 23:50:07'),
(349, 'OUT021600015', 'MAT00085', '1', 2, '', '2016-02-03', '2016-02-02 23:50:07'),
(350, 'OUT021600015', 'MAT00017', '1', 6, '', '2016-02-03', '2016-02-02 23:50:07'),
(351, 'OUT021600016', 'MAT00099', '1', 1, '', '2016-02-04', '2016-02-02 23:51:31'),
(352, 'OUT021600016', 'MAT00056', '1', 1, '', '2016-02-04', '2016-02-02 23:51:31'),
(353, 'OUT021600016', 'MAT00075', '4', 1, '', '2016-02-04', '2016-02-02 23:51:31'),
(354, 'OUT021600016', 'MAT00085', '1', 1, '', '2016-02-04', '2016-02-02 23:51:31'),
(355, 'OUT021600016', 'MAT00017', '1', 6, '', '2016-02-04', '2016-02-02 23:51:31'),
(356, 'OUT021600017', 'MAT00056', '1', 1, '', '2016-02-04', '2016-02-02 23:54:59'),
(357, 'OUT021600017', 'MAT00099', '1', 1, '', '2016-02-04', '2016-02-02 23:54:59'),
(358, 'OUT021600017', 'MAT00075', '4', 1, '', '2016-02-04', '2016-02-02 23:54:59'),
(359, 'OUT021600017', 'MAT00085', '1', 2, '', '2016-02-04', '2016-02-02 23:54:59'),
(360, 'OUT021600017', 'MAT00017', '1', 8, '', '2016-02-04', '2016-02-02 23:54:59'),
(361, 'OUT021600018', 'MAT00075', '4', 1, '', '2016-02-04', '2016-02-03 00:03:43'),
(362, 'OUT021600018', 'MAT00056', '1', 1, '', '2016-02-04', '2016-02-03 00:03:43'),
(363, 'OUT021600018', 'MAT00099', '1', 1, '', '2016-02-04', '2016-02-03 00:03:43'),
(364, 'OUT021600018', 'MAT00085', '1', 2, '', '2016-02-04', '2016-02-03 00:03:43'),
(365, 'OUT021600018', 'MAT00017', '1', 8, '', '2016-02-04', '2016-02-03 00:03:43'),
(366, 'OUT021600019', 'MAT00056', '1', 1, '', '2016-02-05', '2016-02-03 00:04:24'),
(367, 'OUT021600019', 'MAT00099', '1', 1, '', '2016-02-05', '2016-02-03 00:04:24'),
(368, 'OUT021600019', 'MAT00075', '4', 1, '', '2016-02-05', '2016-02-03 00:04:24'),
(369, 'OUT021600019', 'MAT00085', '1', 2, '', '2016-02-05', '2016-02-03 00:04:24'),
(370, 'OUT021600019', 'MAT00017', '1', 8, '', '2016-02-05', '2016-02-03 00:04:24'),
(371, 'OUT021600020', 'MAT00075', '4', 1, '', '2016-02-05', '2016-02-03 00:08:38'),
(372, 'OUT021600020', 'MAT00056', '1', 1, '', '2016-02-05', '2016-02-03 00:08:38'),
(373, 'OUT021600020', 'MAT00099', '1', 1, '', '2016-02-05', '2016-02-03 00:08:38'),
(374, 'OUT021600020', 'MAT00085', '1', 2, '', '2016-02-05', '2016-02-03 00:08:38'),
(375, 'OUT021600020', 'MAT00017', '1', 8, '', '2016-02-05', '2016-02-03 00:08:38'),
(376, 'OUT021600021', 'MAT00056', '1', 1, '', '2016-02-05', '2016-02-03 00:09:23'),
(377, 'OUT021600021', 'MAT00099', '1', 1, '', '2016-02-05', '2016-02-03 00:09:23'),
(378, 'OUT021600021', 'MAT00075', '4', 1, '', '2016-02-05', '2016-02-03 00:09:23'),
(379, 'OUT021600021', 'MAT00085', '1', 2, '', '2016-02-05', '2016-02-03 00:09:23'),
(380, 'OUT021600021', 'MAT00017', '1', 8, '', '2016-02-05', '2016-02-03 00:09:23'),
(381, 'OUT021600022', 'MAT00085', '1', 2, '', '2016-02-05', '2016-02-03 00:10:08'),
(382, 'OUT021600022', 'MAT00099', '1', 1, '', '2016-02-05', '2016-02-03 00:10:08'),
(383, 'OUT021600022', 'MAT00056', '1', 1, '', '2016-02-05', '2016-02-03 00:10:08'),
(384, 'OUT021600022', 'MAT00075', '4', 1, '', '2016-02-05', '2016-02-03 00:10:08'),
(385, 'OUT021600022', 'MAT00017', '1', 8, '', '2016-02-05', '2016-02-03 00:10:08'),
(386, 'OUT021600023', 'MAT00056', '1', 2, '', '2016-02-05', '2016-02-03 00:15:11'),
(387, 'OUT021600023', 'MAT00099', '1', 2, '', '2016-02-05', '2016-02-03 00:15:11'),
(388, 'OUT021600023', 'MAT00075', '4', 2, '', '2016-02-05', '2016-02-03 00:15:11'),
(389, 'OUT021600023', 'MAT00085', '1', 4, '', '2016-02-05', '2016-02-03 00:15:11'),
(390, 'OUT021600023', 'MAT00017', '1', 20, '', '2016-02-05', '2016-02-03 00:15:11'),
(391, 'OUT021600024', 'MAT00075', '4', 1, '', '2016-02-05', '2016-02-03 00:16:08'),
(392, 'OUT021600024', 'MAT00056', '1', 1, '', '2016-02-05', '2016-02-03 00:16:08'),
(393, 'OUT021600024', 'MAT00099', '1', 1, '', '2016-02-05', '2016-02-03 00:16:08'),
(394, 'OUT021600024', 'MAT00085', '1', 2, '', '2016-02-05', '2016-02-03 00:16:08'),
(395, 'OUT021600024', 'MAT00017', '1', 8, '', '2016-02-05', '2016-02-03 00:16:08'),
(396, 'OUT021600025', 'MAT00056', '1', 2, '', '2016-02-05', '2016-02-03 00:17:04'),
(397, 'OUT021600025', 'MAT00099', '1', 2, '', '2016-02-05', '2016-02-03 00:17:04'),
(398, 'OUT021600025', 'MAT00075', '4', 2, '', '2016-02-05', '2016-02-03 00:17:04'),
(399, 'OUT021600025', 'MAT00085', '1', 4, '', '2016-02-05', '2016-02-03 00:17:04'),
(400, 'OUT021600025', 'MAT00017', '1', 18, '', '2016-02-05', '2016-02-03 00:17:04'),
(401, 'OUT021600026', 'MAT00075', '4', 2, '', '2016-02-08', '2016-02-03 00:17:48'),
(402, 'OUT021600027', 'MAT00056', '1', 2, '', '2016-02-08', '2016-02-03 00:18:27'),
(403, 'OUT021600027', 'MAT00099', '1', 2, '', '2016-02-08', '2016-02-03 00:18:27'),
(404, 'OUT021600027', 'MAT00075', '4', 6, '', '2016-02-08', '2016-02-03 00:18:27'),
(405, 'OUT021600027', 'MAT00085', '1', 4, '', '2016-02-08', '2016-02-03 00:18:27'),
(406, 'OUT021600027', 'MAT00017', '1', 18, '', '2016-02-08', '2016-02-03 00:18:27'),
(407, 'OUT021600028', 'MAT00056', '1', 2, '', '2016-02-08', '2016-02-03 00:20:18'),
(408, 'OUT021600028', 'MAT00099', '1', 2, '', '2016-02-08', '2016-02-03 00:20:18'),
(409, 'OUT021600028', 'MAT00085', '1', 5, '', '2016-02-08', '2016-02-03 00:20:18'),
(410, 'OUT021600028', 'MAT00075', '4', 2, '', '2016-02-08', '2016-02-03 00:20:18'),
(411, 'OUT021600029', 'MAT00099', '1', 3, '', '2016-02-09', '2016-02-03 00:20:54'),
(412, 'OUT021600029', 'MAT00075', '4', 3, '', '2016-02-09', '2016-02-03 00:20:54'),
(413, 'OUT021600029', 'MAT00056', '1', 3, '', '2016-02-09', '2016-02-03 00:20:54'),
(414, 'OUT021600029', 'MAT00085', '1', 6, '', '2016-02-09', '2016-02-03 00:20:54'),
(415, 'OUT021600030', 'MAT00085', '1', 8, '', '2016-02-10', '2016-02-03 00:22:17'),
(416, 'OUT021600030', 'MAT00099', '1', 4, '', '2016-02-10', '2016-02-03 00:22:17'),
(417, 'OUT021600030', 'MAT00056', '1', 4, '', '2016-02-10', '2016-02-03 00:22:17'),
(418, 'OUT021600030', 'MAT00075', '4', 6, '', '2016-02-10', '2016-02-03 00:22:17'),
(419, 'OUT021600031', 'MAT00056', '1', 8, '', '2016-02-11', '2016-02-03 00:23:58'),
(420, 'OUT021600031', 'MAT00099', '1', 8, '', '2016-02-11', '2016-02-03 00:23:58'),
(421, 'OUT021600031', 'MAT00075', '4', 8, '', '2016-02-11', '2016-02-03 00:23:58'),
(422, 'OUT021600032', 'MAT00099', '1', 5, '', '2016-02-18', '2016-02-03 00:25:20'),
(423, 'OUT021600032', 'MAT00056', '1', 5, '', '2016-02-18', '2016-02-03 00:25:20'),
(424, 'OUT021600032', 'MAT00075', '4', 8, '', '2016-02-18', '2016-02-03 00:25:20'),
(425, 'OUT021600033', 'MAT00099', '1', 5, '', '2016-02-19', '2016-02-03 00:25:59'),
(426, 'OUT021600033', 'MAT00056', '1', 5, '', '2016-02-19', '2016-02-03 00:25:59'),
(427, 'OUT021600033', 'MAT00075', '4', 6, '', '2016-02-19', '2016-02-03 00:25:59'),
(428, 'OUT021600034', 'MAT00056', '1', 1, '', '2016-02-22', '2016-02-03 00:26:58'),
(429, 'OUT021600034', 'MAT00075', '4', 2, '', '2016-02-22', '2016-02-03 00:26:58'),
(430, 'OUT021600035', 'MAT00075', '4', 3, '', '2016-02-23', '2016-02-03 00:27:09'),
(431, 'OUT021600036', 'MAT00056', '1', 1, '', '2016-02-26', '2016-02-03 00:28:20'),
(432, 'OUT031600001', 'MAT00099', '1', 2, '', '2016-03-01', '2016-03-03 18:16:09'),
(433, 'OUT031600001', 'MAT00075', '4', 2, '', '2016-03-01', '2016-03-03 18:16:09'),
(434, 'OUT031600001', 'MAT00085', '1', 4, '', '2016-03-01', '2016-03-03 18:16:09'),
(435, 'OUT031600001', 'MAT00017', '1', 20, '', '2016-03-01', '2016-03-03 18:16:09'),
(436, 'OUT031600001', 'MAT00056', '1', 2, '', '2016-03-01', '2016-03-03 18:16:09'),
(437, 'OUT031600002', 'MAT00056', '1', 2, '', '2016-03-01', '2016-03-03 18:16:53'),
(438, 'OUT031600002', 'MAT00099', '1', 2, '', '2016-03-01', '2016-03-03 18:16:53'),
(439, 'OUT031600002', 'MAT00075', '4', 2, '', '2016-03-01', '2016-03-03 18:16:53'),
(440, 'OUT031600002', 'MAT00085', '1', 4, '', '2016-03-01', '2016-03-03 18:16:53'),
(441, 'OUT031600002', 'MAT00017', '1', 18, '', '2016-03-01', '2016-03-03 18:16:53'),
(442, 'OUT031600003', 'MAT00056', '1', 1, '', '2016-03-01', '2016-03-03 18:17:19'),
(443, 'OUT031600003', 'MAT00075', '4', 3, '', '2016-03-01', '2016-03-03 18:17:19'),
(444, 'OUT031600004', 'MAT00056', '1', 2, '', '2016-03-01', '2016-03-03 18:18:35'),
(445, 'OUT031600004', 'MAT00099', '1', 2, '', '2016-03-01', '2016-03-03 18:18:35'),
(446, 'OUT031600004', 'MAT00075', '4', 3, '', '2016-03-01', '2016-03-03 18:18:35'),
(447, 'OUT031600004', 'MAT00085', '1', 6, '', '2016-03-01', '2016-03-03 18:18:35'),
(448, 'OUT031600004', 'MAT00017', '1', 8, '', '2016-03-01', '2016-03-03 18:18:35'),
(449, 'OUT031600005', 'MAT00056', '1', 2, '', '2016-03-01', '2016-03-03 18:19:10'),
(450, 'OUT031600005', 'MAT00099', '1', 2, '', '2016-03-01', '2016-03-03 18:19:10'),
(451, 'OUT031600005', 'MAT00075', '4', 2, '', '2016-03-01', '2016-03-03 18:19:10'),
(452, 'OUT031600005', 'MAT00085', '1', 4, '', '2016-03-01', '2016-03-03 18:19:10'),
(453, 'OUT031600005', 'MAT00017', '1', 8, '', '2016-03-01', '2016-03-03 18:19:10'),
(454, 'OUT031600006', 'MAT00056', '1', 2, '', '2016-03-02', '2016-03-03 18:28:41'),
(455, 'OUT031600006', 'MAT00099', '1', 2, '', '2016-03-02', '2016-03-03 18:28:41'),
(456, 'OUT031600006', 'MAT00075', '4', 3, '', '2016-03-02', '2016-03-03 18:28:41'),
(457, 'OUT031600006', 'MAT00085', '1', 4, '', '2016-03-02', '2016-03-03 18:28:41'),
(458, 'OUT031600006', 'MAT00017', '1', 14, '', '2016-03-02', '2016-03-03 18:28:41'),
(459, 'OUT031600007', 'MAT00056', '1', 2, '', '2016-03-02', '2016-03-03 18:41:05'),
(460, 'OUT031600007', 'MAT00099', '1', 2, '', '2016-03-02', '2016-03-03 18:41:05'),
(461, 'OUT031600007', 'MAT00075', '4', 2, '', '2016-03-02', '2016-03-03 18:41:05'),
(462, 'OUT031600007', 'MAT00085', '1', 4, '', '2016-03-02', '2016-03-03 18:41:05'),
(463, 'OUT031600007', 'MAT00017', '1', 12, '', '2016-03-02', '2016-03-03 18:41:05'),
(464, 'OUT031600008', 'MAT00056', '1', 3, '', '2016-03-03', '2016-03-03 18:41:53'),
(465, 'OUT031600008', 'MAT00099', '1', 3, '', '2016-03-03', '2016-03-03 18:41:53'),
(466, 'OUT031600008', 'MAT00075', '4', 3, '', '2016-03-03', '2016-03-03 18:41:53'),
(467, 'OUT031600008', 'MAT00085', '1', 6, '', '2016-03-03', '2016-03-03 18:41:53'),
(468, 'OUT031600008', 'MAT00017', '1', 12, '', '2016-03-03', '2016-03-03 18:41:53'),
(469, 'OUT031600009', 'MAT00056', '1', 2, '', '2016-03-03', '2016-03-03 18:42:57'),
(470, 'OUT031600009', 'MAT00099', '1', 2, '', '2016-03-03', '2016-03-03 18:42:57'),
(471, 'OUT031600009', 'MAT00075', '4', 2, '', '2016-03-03', '2016-03-03 18:42:57'),
(472, 'OUT031600009', 'MAT00085', '1', 12, '', '2016-03-03', '2016-03-03 18:42:57'),
(473, 'OUT031600009', 'MAT00017', '1', 8, '', '2016-03-03', '2016-03-03 18:42:57'),
(474, 'OUT031600010', 'MAT00056', '1', 2, '', '2016-03-03', '2016-03-03 18:44:49'),
(475, 'OUT031600010', 'MAT00099', '1', 2, '', '2016-03-03', '2016-03-03 18:44:49'),
(476, 'OUT031600010', 'MAT00075', '4', 2, '', '2016-03-03', '2016-03-03 18:44:49'),
(477, 'OUT031600010', 'MAT00085', '1', 4, '', '2016-03-03', '2016-03-03 18:44:49'),
(478, 'OUT031600010', 'MAT00017', '1', 12, '', '2016-03-03', '2016-03-03 18:44:49'),
(479, 'OUT031600011', 'MAT00099', '1', 2, '', '2016-03-04', '2016-03-03 18:45:47'),
(480, 'OUT031600011', 'MAT00075', '4', 2, '', '2016-03-04', '2016-03-03 18:45:47'),
(481, 'OUT031600011', 'MAT00085', '1', 2, '', '2016-03-04', '2016-03-03 18:45:47'),
(482, 'OUT031600011', 'MAT00017', '1', 8, '', '2016-03-04', '2016-03-03 18:45:47'),
(483, 'OUT031600011', 'MAT00056', '1', 2, '', '2016-03-04', '2016-03-03 18:45:47'),
(484, 'OUT031600012', 'MAT00056', '1', 2, '', '2016-03-07', '2016-03-03 18:46:45'),
(485, 'OUT031600012', 'MAT00099', '1', 2, '', '2016-03-07', '2016-03-03 18:46:45'),
(486, 'OUT031600012', 'MAT00075', '4', 2, '', '2016-03-07', '2016-03-03 18:46:45'),
(487, 'OUT031600012', 'MAT00085', '1', 6, '', '2016-03-07', '2016-03-03 18:46:45'),
(488, 'OUT031600012', 'MAT00017', '1', 8, '', '2016-03-07', '2016-03-03 18:46:45'),
(489, 'OUT031600013', 'MAT00056', '1', 2, '', '2016-03-07', '2016-03-03 18:47:27'),
(490, 'OUT031600013', 'MAT00099', '1', 2, '', '2016-03-07', '2016-03-03 18:47:27'),
(491, 'OUT031600013', 'MAT00075', '4', 2, '', '2016-03-07', '2016-03-03 18:47:27'),
(492, 'OUT031600013', 'MAT00085', '1', 6, '', '2016-03-07', '2016-03-03 18:47:27'),
(493, 'OUT031600013', 'MAT00017', '1', 6, '', '2016-03-07', '2016-03-03 18:47:27'),
(494, 'OUT031600014', 'MAT00099', '1', 3, '', '2016-03-07', '2016-03-03 18:48:52'),
(495, 'OUT031600014', 'MAT00085', '1', 18, '', '2016-03-07', '2016-03-03 18:48:52'),
(496, 'OUT031600014', 'MAT00056', '1', 3, '', '2016-03-07', '2016-03-03 18:48:52'),
(497, 'OUT031600014', 'MAT00075', '4', 6, '', '2016-03-07', '2016-03-03 18:48:52'),
(498, 'OUT031600014', 'MAT00017', '1', 22, '', '2016-03-07', '2016-03-03 18:48:52'),
(499, 'OUT031600015', 'MAT00056', '1', 4, '', '2016-03-07', '2016-03-03 18:51:00'),
(500, 'OUT031600015', 'MAT00085', '1', 6, '', '2016-03-07', '2016-03-03 18:51:00'),
(501, 'OUT031600015', 'MAT00099', '1', 4, '', '2016-03-07', '2016-03-03 18:51:00'),
(502, 'OUT031600015', 'MAT00017', '1', 22, '', '2016-03-07', '2016-03-03 18:51:00'),
(503, 'OUT031600015', 'MAT00075', '4', 6, '', '2016-03-07', '2016-03-03 18:51:00'),
(504, 'OUT031600016', 'MAT00075', '4', 10, '', '2016-03-09', '2016-03-03 19:01:19'),
(505, 'OUT031600016', 'MAT00056', '1', 5, '', '2016-03-09', '2016-03-03 19:01:19'),
(506, 'OUT031600016', 'MAT00099', '1', 5, '', '2016-03-09', '2016-03-03 19:01:19'),
(507, 'OUT031600016', 'MAT00017', '1', 20, '', '2016-03-09', '2016-03-03 19:01:19'),
(508, 'OUT031600017', 'MAT00056', '1', 5, '', '2016-03-09', '2016-03-03 19:02:21'),
(509, 'OUT031600017', 'MAT00099', '1', 5, '', '2016-03-09', '2016-03-03 19:02:21'),
(510, 'OUT031600017', 'MAT00075', '4', 5, '', '2016-03-09', '2016-03-03 19:02:21'),
(511, 'OUT031600017', 'MAT00017', '1', 25, '', '2016-03-09', '2016-03-03 19:02:21'),
(512, 'OUT031600018', 'MAT00056', '1', 5, '', '2016-03-10', '2016-03-03 19:04:05'),
(513, 'OUT031600018', 'MAT00099', '1', 4, '', '2016-03-10', '2016-03-03 19:04:05'),
(514, 'OUT031600018', 'MAT00075', '4', 4, '', '2016-03-10', '2016-03-03 19:04:05'),
(515, 'OUT031600018', 'MAT00017', '1', 12, '', '2016-03-10', '2016-03-03 19:04:05'),
(516, 'OUT031600019', 'MAT00056', '1', 5, '', '2016-03-10', '2016-03-03 19:04:57'),
(517, 'OUT031600019', 'MAT00099', '1', 5, '', '2016-03-10', '2016-03-03 19:04:57'),
(518, 'OUT031600019', 'MAT00075', '4', 8, '', '2016-03-10', '2016-03-03 19:04:57'),
(519, 'OUT031600019', 'MAT00017', '1', 21, '', '2016-03-10', '2016-03-03 19:04:57'),
(520, 'OUT031600020', 'MAT00056', '1', 4, '', '2016-03-11', '2016-03-03 19:05:31'),
(521, 'OUT031600020', 'MAT00099', '1', 5, '', '2016-03-11', '2016-03-03 19:05:31'),
(522, 'OUT031600020', 'MAT00075', '4', 6, '', '2016-03-11', '2016-03-03 19:05:31'),
(523, 'OUT031600020', 'MAT00017', '1', 12, '', '2016-03-11', '2016-03-03 19:05:31'),
(524, 'OUT031600021', 'MAT00017', '1', 6, '', '2016-03-14', '2016-03-03 19:08:10'),
(525, 'OUT031600021', 'MAT00099', '1', 1, '', '2016-03-14', '2016-03-03 19:08:10'),
(526, 'OUT031600021', 'MAT00056', '1', 2, '', '2016-03-14', '2016-03-03 19:08:10'),
(527, 'OUT031600022', 'MAT00056', '1', 4, '', '2016-03-28', '2016-03-03 19:09:09'),
(528, 'OUT031600022', 'MAT00099', '1', 4, '', '2016-03-28', '2016-03-03 19:09:09'),
(529, 'OUT031600023', 'MAT00099', '1', 2, '', '2016-03-30', '2016-03-03 19:09:21'),
(530, 'OUT041600001', 'MAT00056', '1', 4, '', '2016-04-01', '2016-04-03 19:25:53'),
(531, 'OUT041600001', 'MAT00099', '1', 4, '', '2016-04-01', '2016-04-03 19:25:53'),
(532, 'OUT041600001', 'MAT00075', '4', 5, '', '2016-04-01', '2016-04-03 19:25:53'),
(533, 'OUT041600001', 'MAT00085', '1', 6, '', '2016-04-01', '2016-04-03 19:25:53'),
(534, 'OUT041600001', 'MAT00017', '1', 20, '', '2016-04-01', '2016-04-03 19:25:53'),
(535, 'OUT041600002', 'MAT00099', '1', 5, '', '2016-04-01', '2016-04-03 19:42:52'),
(536, 'OUT041600002', 'MAT00056', '1', 5, '', '2016-04-01', '2016-04-03 19:42:52'),
(537, 'OUT041600002', 'MAT00075', '4', 5, '', '2016-04-01', '2016-04-03 19:42:52'),
(538, 'OUT041600002', 'MAT00085', '1', 20, '', '2016-04-01', '2016-04-03 19:42:52'),
(539, 'OUT041600002', 'MAT00017', '1', 40, '', '2016-04-01', '2016-04-03 19:42:52'),
(540, 'OUT041600003', 'MAT00056', '1', 3, '', '2016-04-04', '2016-04-03 19:43:39'),
(541, 'OUT041600003', 'MAT00099', '1', 3, '', '2016-04-04', '2016-04-03 19:43:39'),
(542, 'OUT041600003', 'MAT00075', '4', 3, '', '2016-04-04', '2016-04-03 19:43:39'),
(543, 'OUT041600003', 'MAT00085', '1', 8, '', '2016-04-04', '2016-04-03 19:43:39'),
(544, 'OUT041600003', 'MAT00017', '1', 18, '', '2016-04-04', '2016-04-03 19:43:39'),
(545, 'OUT041600004', 'MAT00056', '1', 2, '', '2016-04-04', '2016-04-03 19:44:46'),
(546, 'OUT041600004', 'MAT00099', '1', 2, '', '2016-04-04', '2016-04-03 19:44:46'),
(547, 'OUT041600004', 'MAT00075', '4', 4, '', '2016-04-04', '2016-04-03 19:44:46'),
(548, 'OUT041600004', 'MAT00085', '1', 8, '', '2016-04-04', '2016-04-03 19:44:46'),
(549, 'OUT041600004', 'MAT00017', '1', 6, '', '2016-04-04', '2016-04-03 19:44:46'),
(550, 'OUT041600005', 'MAT00056', '1', 2, '', '2016-04-04', '2016-04-03 19:52:38'),
(551, 'OUT041600005', 'MAT00099', '1', 2, '', '2016-04-04', '2016-04-03 19:52:38'),
(552, 'OUT041600005', 'MAT00075', '4', 2, '', '2016-04-04', '2016-04-03 19:52:38'),
(553, 'OUT041600005', 'MAT00085', '1', 4, '', '2016-04-04', '2016-04-03 19:52:38'),
(554, 'OUT041600005', 'MAT00017', '1', 6, '', '2016-04-04', '2016-04-03 19:52:38'),
(555, 'OUT041600006', 'MAT00099', '1', 3, '', '2016-04-05', '2016-04-03 19:53:52'),
(556, 'OUT041600006', 'MAT00075', '4', 3, '', '2016-04-05', '2016-04-03 19:53:52'),
(557, 'OUT041600006', 'MAT00085', '1', 9, '', '2016-04-05', '2016-04-03 19:53:52'),
(558, 'OUT041600006', 'MAT00017', '1', 20, '', '2016-04-05', '2016-04-03 19:53:52'),
(559, 'OUT041600006', 'MAT00085', '1', 8, '', '2016-04-05', '2016-04-03 19:53:52'),
(560, 'OUT041600007', 'MAT00085', '1', 8, '', '2016-04-05', '2016-04-03 19:54:33'),
(561, 'OUT041600007', 'MAT00056', '1', 4, '', '2016-04-05', '2016-04-03 19:54:33'),
(562, 'OUT041600007', 'MAT00099', '1', 4, '', '2016-04-05', '2016-04-03 19:54:33'),
(563, 'OUT041600007', 'MAT00075', '4', 4, '', '2016-04-05', '2016-04-03 19:54:33'),
(564, 'OUT041600007', 'MAT00017', '1', 20, '', '2016-04-05', '2016-04-03 19:54:33'),
(565, 'OUT041600008', 'MAT00056', '1', 5, '', '2016-04-06', '2016-04-03 19:56:27'),
(566, 'OUT041600008', 'MAT00099', '1', 5, '', '2016-04-06', '2016-04-03 19:56:27'),
(567, 'OUT041600008', 'MAT00075', '4', 5, '', '2016-04-06', '2016-04-03 19:56:27'),
(568, 'OUT041600008', 'MAT00085', '1', 4, '', '2016-04-06', '2016-04-03 19:56:27'),
(569, 'OUT041600008', 'MAT00017', '1', 6, '', '2016-04-06', '2016-04-03 19:56:27'),
(570, 'OUT041600009', 'MAT00056', '1', 2, '', '2016-04-08', '2016-04-03 19:57:48'),
(571, 'OUT041600009', 'MAT00099', '1', 2, '', '2016-04-08', '2016-04-03 19:57:48'),
(572, 'OUT041600009', 'MAT00075', '4', 5, '', '2016-04-08', '2016-04-03 19:57:48'),
(573, 'OUT041600009', 'MAT00085', '1', 5, '', '2016-04-08', '2016-04-03 19:57:48'),
(574, 'OUT041600009', 'MAT00017', '1', 8, '', '2016-04-08', '2016-04-03 19:57:48'),
(575, 'OUT041600010', 'MAT00099', '1', 3, '', '2016-04-11', '2016-04-03 19:58:52'),
(576, 'OUT041600010', 'MAT00056', '1', 3, '', '2016-04-11', '2016-04-03 19:58:52'),
(577, 'OUT041600010', 'MAT00075', '4', 4, '', '2016-04-11', '2016-04-03 19:58:52'),
(578, 'OUT041600010', 'MAT00085', '1', 4, '', '2016-04-11', '2016-04-03 19:58:52'),
(579, 'OUT041600010', 'MAT00017', '1', 8, '', '2016-04-11', '2016-04-03 19:58:52'),
(580, 'OUT041600011', 'MAT00056', '1', 2, '', '2016-04-11', '2016-04-03 19:59:33'),
(581, 'OUT041600011', 'MAT00099', '1', 2, '', '2016-04-11', '2016-04-03 19:59:33'),
(582, 'OUT041600011', 'MAT00075', '4', 4, '', '2016-04-11', '2016-04-03 19:59:33'),
(583, 'OUT041600011', 'MAT00085', '1', 4, '', '2016-04-11', '2016-04-03 19:59:33'),
(584, 'OUT041600011', 'MAT00017', '1', 8, '', '2016-04-11', '2016-04-03 19:59:33'),
(585, 'OUT041600012', 'MAT00099', '1', 3, '', '2016-04-12', '2016-04-03 20:01:00'),
(586, 'OUT041600012', 'MAT00056', '1', 3, '', '2016-04-12', '2016-04-03 20:01:00'),
(587, 'OUT041600012', 'MAT00075', '4', 4, '', '2016-04-12', '2016-04-03 20:01:00'),
(588, 'OUT041600012', 'MAT00017', '1', 18, '', '2016-04-12', '2016-04-03 20:01:00'),
(589, 'OUT041600013', 'MAT00075', '4', 3, '', '2016-04-13', '2016-04-03 20:01:35'),
(590, 'OUT041600013', 'MAT00056', '1', 3, '', '2016-04-13', '2016-04-03 20:01:35'),
(591, 'OUT041600013', 'MAT00099', '1', 3, '', '2016-04-13', '2016-04-03 20:01:35'),
(592, 'OUT041600013', 'MAT00017', '1', 8, '', '2016-04-13', '2016-04-03 20:01:35'),
(593, 'OUT041600014', 'MAT00056', '1', 4, '', '2016-04-14', '2016-04-03 20:02:12'),
(594, 'OUT041600014', 'MAT00099', '1', 4, '', '2016-04-14', '2016-04-03 20:02:12'),
(595, 'OUT041600014', 'MAT00075', '4', 8, '', '2016-04-14', '2016-04-03 20:02:12'),
(596, 'OUT041600014', 'MAT00017', '1', 20, '', '2016-04-14', '2016-04-03 20:02:12'),
(597, 'OUT041600015', 'MAT00056', '1', 5, '', '2016-04-15', '2016-04-03 20:03:38'),
(598, 'OUT041600015', 'MAT00099', '1', 5, '', '2016-04-15', '2016-04-03 20:03:38'),
(599, 'OUT041600015', 'MAT00075', '4', 5, '', '2016-04-15', '2016-04-03 20:03:38'),
(600, 'OUT041600015', 'MAT00017', '1', 20, '', '2016-04-15', '2016-04-03 20:03:38'),
(601, 'OUT041600016', 'MAT00056', '1', 3, '', '2016-04-18', '2016-04-03 20:04:23'),
(602, 'OUT041600016', 'MAT00099', '1', 3, '', '2016-04-18', '2016-04-03 20:04:23'),
(603, 'OUT041600016', 'MAT00075', '4', 3, '', '2016-04-18', '2016-04-03 20:04:23'),
(604, 'OUT041600016', 'MAT00017', '1', 6, '', '2016-04-18', '2016-04-03 20:04:23'),
(605, 'OUT041600017', 'MAT00075', '4', 3, '', '2016-04-19', '2016-04-03 20:33:49'),
(606, 'OUT041600017', 'MAT00056', '1', 3, '', '2016-04-19', '2016-04-03 20:33:49'),
(607, 'OUT041600017', 'MAT00099', '1', 3, '', '2016-04-19', '2016-04-03 20:33:49'),
(608, 'OUT041600017', 'MAT00017', '1', 12, '', '2016-04-19', '2016-04-03 20:33:49'),
(609, 'OUT041600018', 'MAT00075', '4', 8, '', '2016-04-25', '2016-04-03 20:37:38'),
(610, 'OUT041600018', 'MAT00099', '1', 6, '', '2016-04-25', '2016-04-03 20:37:38'),
(611, 'OUT041600018', 'MAT00056', '1', 6, '', '2016-04-25', '2016-04-03 20:37:38'),
(612, 'OUT041600018', 'MAT00017', '1', 12, '', '2016-04-25', '2016-04-03 20:37:38'),
(613, 'OUT041600019', 'MAT00017', '1', 20, '', '2016-04-26', '2016-04-03 20:39:23'),
(614, 'OUT041600019', 'MAT00056', '1', 5, '', '2016-04-26', '2016-04-03 20:39:23'),
(615, 'OUT041600019', 'MAT00099', '1', 5, '', '2016-04-26', '2016-04-03 20:39:23'),
(616, 'OUT041600020', 'MAT00056', '1', 5, '', '2016-04-28', '2016-04-03 20:40:52'),
(617, 'OUT041600020', 'MAT00099', '1', 5, '', '2016-04-28', '2016-04-03 20:40:52'),
(618, 'OUT051600001', 'MAT00056', '1', 5, '', '2016-05-02', '2016-05-13 22:16:02'),
(619, 'OUT051600001', 'MAT00099', '1', 5, '', '2016-05-02', '2016-05-13 22:16:02'),
(620, 'OUT051600001', 'MAT00075', '4', 5, '', '2016-05-02', '2016-05-13 22:16:02'),
(621, 'OUT051600001', 'MAT00085', '1', 10, '', '2016-05-02', '2016-05-13 22:16:02'),
(622, 'OUT051600001', 'MAT00017', '1', 40, '', '2016-05-02', '2016-05-13 22:16:02'),
(623, 'OUT051600002', 'MAT00056', '1', 5, '', '2016-05-02', '2016-05-13 22:19:26');
INSERT INTO `tbl_trans_keluar_detail` (`id_trans_keluar_detail`, `id_trans_keluar`, `id_barang`, `id_satuan`, `qty_keluar`, `keterangan_keluar`, `tgl_trans_keluar_detail`, `timestamp`) VALUES
(624, 'OUT051600002', 'MAT00099', '1', 5, '', '2016-05-02', '2016-05-13 22:19:26'),
(625, 'OUT051600002', 'MAT00075', '4', 5, '', '2016-05-02', '2016-05-13 22:19:26'),
(626, 'OUT051600002', 'MAT00085', '1', 10, '', '2016-05-02', '2016-05-13 22:19:26'),
(627, 'OUT051600002', 'MAT00017', '1', 24, '', '2016-05-02', '2016-05-13 22:19:26'),
(628, 'OUT051600003', 'MAT00056', '1', 4, '', '2016-05-02', '2016-05-13 22:20:18'),
(629, 'OUT051600003', 'MAT00099', '1', 3, '', '2016-05-02', '2016-05-13 22:20:18'),
(630, 'OUT051600003', 'MAT00075', '4', 3, '', '2016-05-02', '2016-05-13 22:20:18'),
(631, 'OUT051600003', 'MAT00085', '1', 6, '', '2016-05-02', '2016-05-13 22:20:18'),
(632, 'OUT051600003', 'MAT00017', '1', 18, '', '2016-05-02', '2016-05-13 22:20:18'),
(633, 'OUT051600004', 'MAT00056', '1', 4, '', '2016-05-03', '2016-05-13 22:21:22'),
(634, 'OUT051600004', 'MAT00099', '1', 4, '', '2016-05-03', '2016-05-13 22:21:22'),
(635, 'OUT051600004', 'MAT00017', '1', 12, '', '2016-05-03', '2016-05-13 22:21:22'),
(636, 'OUT051600004', 'MAT00085', '1', 8, '', '2016-05-03', '2016-05-13 22:21:22'),
(637, 'OUT051600004', 'MAT00075', '4', 7, '', '2016-05-03', '2016-05-13 22:21:22'),
(638, 'OUT051600005', 'MAT00056', '1', 2, '', '2016-05-04', '2016-05-13 22:26:27'),
(639, 'OUT051600005', 'MAT00099', '1', 2, '', '2016-05-04', '2016-05-13 22:26:27'),
(640, 'OUT051600005', 'MAT00085', '1', 6, '', '2016-05-04', '2016-05-13 22:26:27'),
(641, 'OUT051600005', 'MAT00075', '4', 4, '', '2016-05-04', '2016-05-13 22:26:27'),
(642, 'OUT051600005', 'MAT00017', '1', 12, '', '2016-05-04', '2016-05-13 22:26:27'),
(643, 'OUT051600006', 'MAT00056', '1', 2, '', '2016-05-05', '2016-05-13 22:27:20'),
(644, 'OUT051600006', 'MAT00099', '1', 2, '', '2016-05-05', '2016-05-13 22:27:20'),
(645, 'OUT051600006', 'MAT00075', '4', 2, '', '2016-05-05', '2016-05-13 22:27:20'),
(646, 'OUT051600006', 'MAT00085', '1', 4, '', '2016-05-05', '2016-05-13 22:27:20'),
(647, 'OUT051600006', 'MAT00017', '1', 8, '', '2016-05-05', '2016-05-13 22:27:20'),
(648, 'OUT051600007', 'MAT00099', '1', 4, '', '2016-05-09', '2016-05-13 22:28:20'),
(649, 'OUT051600007', 'MAT00075', '4', 6, '', '2016-05-09', '2016-05-13 22:28:20'),
(650, 'OUT051600007', 'MAT00085', '1', 8, '', '2016-05-09', '2016-05-13 22:28:20'),
(651, 'OUT051600007', 'MAT00017', '1', 16, '', '2016-05-09', '2016-05-13 22:28:20'),
(652, 'OUT051600007', 'MAT00056', '1', 4, '', '2016-05-09', '2016-05-13 22:28:20'),
(653, 'OUT051600008', 'MAT00056', '1', 5, '', '2016-05-09', '2016-05-13 22:32:43'),
(654, 'OUT051600008', 'MAT00099', '1', 5, '', '2016-05-09', '2016-05-13 22:32:43'),
(655, 'OUT051600008', 'MAT00085', '1', 12, '', '2016-05-09', '2016-05-13 22:32:43'),
(656, 'OUT051600008', 'MAT00075', '4', 7, '', '2016-05-09', '2016-05-13 22:32:43'),
(657, 'OUT051600008', 'MAT00017', '1', 28, '', '2016-05-09', '2016-05-13 22:32:43'),
(658, 'OUT051600009', 'MAT00056', '1', 5, '', '2016-05-10', '2016-05-13 22:33:26'),
(659, 'OUT051600009', 'MAT00099', '1', 5, '', '2016-05-10', '2016-05-13 22:33:26'),
(660, 'OUT051600009', 'MAT00075', '4', 5, '', '2016-05-10', '2016-05-13 22:33:26'),
(661, 'OUT051600009', 'MAT00085', '1', 10, '', '2016-05-10', '2016-05-13 22:33:26'),
(662, 'OUT051600009', 'MAT00017', '1', 20, '', '2016-05-10', '2016-05-13 22:33:26'),
(668, 'OUT051600010', 'MAT00056', '1', 5, '', '2016-05-11', '2016-05-13 22:36:23'),
(669, 'OUT051600010', 'MAT00099', '1', 6, '', '2016-05-11', '2016-05-13 22:36:23'),
(670, 'OUT051600010', 'MAT00075', '4', 5, '', '2016-05-11', '2016-05-13 22:36:23'),
(671, 'OUT051600010', 'MAT00017', '1', 28, '', '2016-05-11', '2016-05-13 22:36:23'),
(672, 'OUT051600011', 'MAT00085', '1', 12, '', '2016-05-13', '2016-05-13 22:37:59'),
(673, 'OUT051600011', 'MAT00056', '1', 6, '', '2016-05-13', '2016-05-13 22:37:59'),
(674, 'OUT051600011', 'MAT00099', '1', 6, '', '2016-05-13', '2016-05-13 22:37:59'),
(675, 'OUT051600011', 'MAT00075', '4', 6, '', '2016-05-13', '2016-05-13 22:37:59'),
(676, 'OUT051600011', 'MAT00017', '1', 20, '', '2016-05-13', '2016-05-13 22:37:59'),
(677, 'OUT051600012', 'MAT00075', '4', 5, '', '2016-05-16', '2016-05-13 22:39:26'),
(678, 'OUT051600012', 'MAT00099', '1', 5, '', '2016-05-16', '2016-05-13 22:39:26'),
(679, 'OUT051600012', 'MAT00056', '1', 5, '', '2016-05-16', '2016-05-13 22:39:26'),
(680, 'OUT051600012', 'MAT00017', '1', 20, '', '2016-05-16', '2016-05-13 22:39:26'),
(681, 'OUT051600013', 'MAT00056', '1', 3, '', '2016-05-17', '2016-05-13 22:40:29'),
(682, 'OUT051600013', 'MAT00075', '4', 5, '', '2016-05-17', '2016-05-13 22:40:29'),
(683, 'OUT051600013', 'MAT00099', '1', 4, '', '2016-05-17', '2016-05-13 22:40:29'),
(684, 'OUT051600013', 'MAT00017', '1', 12, '', '2016-05-17', '2016-05-13 22:40:29'),
(685, 'OUT051600014', 'MAT00099', '1', 5, '', '2016-05-20', '2016-05-13 22:42:22'),
(686, 'OUT051600014', 'MAT00017', '1', 12, '', '2016-05-20', '2016-05-13 22:42:22'),
(687, 'OUT061600001', 'MAT00099', '1', 5, '', '2016-06-01', '2016-06-08 14:08:44'),
(688, 'OUT061600001', 'MAT00056', '1', 5, '', '2016-06-01', '2016-06-08 14:08:44'),
(689, 'OUT061600001', 'MAT00075', '4', 6, '', '2016-06-01', '2016-06-08 14:08:44'),
(690, 'OUT061600001', 'MAT00085', '1', 8, '', '2016-06-01', '2016-06-08 14:08:44'),
(691, 'OUT061600001', 'MAT00017', '1', 18, '', '2016-06-01', '2016-06-08 14:08:44'),
(692, 'OUT061600002', 'MAT00099', '1', 5, '', '2016-06-01', '2016-06-08 14:09:48'),
(693, 'OUT061600002', 'MAT00075', '4', 8, '', '2016-06-01', '2016-06-08 14:09:48'),
(694, 'OUT061600002', 'MAT00017', '1', 18, '', '2016-06-01', '2016-06-08 14:09:48'),
(695, 'OUT061600002', 'MAT00056', '1', 5, '', '2016-06-01', '2016-06-08 14:09:48'),
(696, 'OUT061600002', 'MAT00085', '1', 8, '', '2016-06-01', '2016-06-08 14:09:48'),
(697, 'OUT061600003', 'MAT00075', '4', 6, '', '2016-06-02', '2016-06-08 14:29:20'),
(698, 'OUT061600003', 'MAT00085', '1', 8, '', '2016-06-02', '2016-06-08 14:29:20'),
(699, 'OUT061600003', 'MAT00017', '1', 20, '', '2016-06-02', '2016-06-08 14:29:20'),
(700, 'OUT061600003', 'MAT00056', '1', 5, '', '2016-06-02', '2016-06-08 14:29:20'),
(701, 'OUT061600003', 'MAT00099', '1', 5, '', '2016-06-02', '2016-06-08 14:29:20'),
(702, 'OUT061600004', 'MAT00099', '1', 5, '', '2016-06-02', '2016-06-08 14:30:15'),
(703, 'OUT061600004', 'MAT00075', '4', 6, '', '2016-06-02', '2016-06-08 14:30:15'),
(704, 'OUT061600004', 'MAT00056', '1', 5, '', '2016-06-02', '2016-06-08 14:30:15'),
(705, 'OUT061600004', 'MAT00085', '1', 6, '', '2016-06-02', '2016-06-08 14:30:15'),
(706, 'OUT061600004', 'MAT00017', '1', 12, '', '2016-06-02', '2016-06-08 14:30:15'),
(707, 'OUT061600005', 'MAT00056', '1', 5, '', '2016-06-03', '2016-06-08 14:30:53'),
(708, 'OUT061600005', 'MAT00099', '1', 5, '', '2016-06-03', '2016-06-08 14:30:53'),
(709, 'OUT061600005', 'MAT00075', '4', 5, '', '2016-06-03', '2016-06-08 14:30:53'),
(710, 'OUT061600005', 'MAT00085', '1', 16, '', '2016-06-03', '2016-06-08 14:30:53'),
(711, 'OUT061600005', 'MAT00017', '1', 18, '', '2016-06-03', '2016-06-08 14:30:53'),
(712, 'OUT061600006', 'MAT00056', '1', 5, '', '2016-06-03', '2016-06-08 14:31:29'),
(713, 'OUT061600006', 'MAT00099', '1', 5, '', '2016-06-03', '2016-06-08 14:31:29'),
(714, 'OUT061600006', 'MAT00075', '4', 5, '', '2016-06-03', '2016-06-08 14:31:29'),
(715, 'OUT061600006', 'MAT00085', '1', 8, '', '2016-06-03', '2016-06-08 14:31:29'),
(716, 'OUT061600006', 'MAT00017', '1', 18, '', '2016-06-03', '2016-06-08 14:31:29'),
(717, 'OUT061600007', 'MAT00099', '1', 5, '', '2016-06-06', '2016-06-08 14:32:47'),
(718, 'OUT061600007', 'MAT00075', '4', 5, '', '2016-06-06', '2016-06-08 14:32:47'),
(719, 'OUT061600007', 'MAT00085', '1', 8, '', '2016-06-06', '2016-06-08 14:32:47'),
(720, 'OUT061600007', 'MAT00017', '1', 22, '', '2016-06-06', '2016-06-08 14:32:47'),
(721, 'OUT061600007', 'MAT00056', '1', 5, '', '2016-06-06', '2016-06-08 14:32:47'),
(722, 'OUT061600008', 'MAT00056', '1', 5, '', '2016-06-07', '2016-06-08 14:36:21'),
(723, 'OUT061600008', 'MAT00099', '1', 5, '', '2016-06-07', '2016-06-08 14:36:21'),
(724, 'OUT061600008', 'MAT00075', '4', 5, '', '2016-06-07', '2016-06-08 14:36:21'),
(725, 'OUT061600008', 'MAT00017', '1', 18, '', '2016-06-07', '2016-06-08 14:36:21'),
(726, 'OUT061600008', 'MAT00085', '1', 10, '', '2016-06-07', '2016-06-08 14:36:21'),
(727, 'OUT061600009', 'MAT00056', '1', 5, '', '2016-06-08', '2016-06-08 14:38:47'),
(728, 'OUT061600009', 'MAT00099', '1', 5, '', '2016-06-08', '2016-06-08 14:38:47'),
(729, 'OUT061600009', 'MAT00075', '4', 6, '', '2016-06-08', '2016-06-08 14:38:47'),
(730, 'OUT061600009', 'MAT00017', '1', 8, '', '2016-06-08', '2016-06-08 14:38:47'),
(731, 'OUT061600009', 'MAT00085', '1', 2, '', '2016-06-08', '2016-06-08 14:38:47'),
(732, 'OUT061600010', 'MAT00056', '1', 5, '', '2016-06-09', '2016-06-08 14:41:12'),
(733, 'OUT061600010', 'MAT00099', '1', 5, '', '2016-06-09', '2016-06-08 14:41:12'),
(734, 'OUT061600010', 'MAT00017', '1', 20, '', '2016-06-09', '2016-06-08 14:41:12'),
(735, 'OUT061600010', 'MAT00075', '4', 6, '', '2016-06-09', '2016-06-08 14:41:12'),
(736, 'OUT061600011', 'MAT00056', '1', 4, '', '2016-06-13', '2016-06-08 14:42:15'),
(737, 'OUT061600011', 'MAT00017', '1', 20, '', '2016-06-13', '2016-06-08 14:42:15'),
(738, 'OUT061600012', 'MAT00017', '1', 30, '', '2016-06-15', '2016-06-08 14:43:02'),
(739, 'OUT061600013', 'MAT00017', '1', 20, '', '2016-06-24', '2016-06-08 14:43:14'),
(740, 'OUT061600014', 'MAT00017', '1', 22, '', '2016-06-29', '2016-06-08 14:43:44'),
(741, 'OUT071600001', 'MAT00056', '1', 5, '', '2016-07-01', '2016-07-08 14:46:58'),
(742, 'OUT071600001', 'MAT00099', '1', 5, '', '2016-07-01', '2016-07-08 14:46:58'),
(743, 'OUT071600001', 'MAT00075', '4', 7, '', '2016-07-01', '2016-07-08 14:46:58'),
(744, 'OUT071600001', 'MAT00085', '1', 12, '', '2016-07-01', '2016-07-08 14:46:58'),
(745, 'OUT071600001', 'MAT00017', '1', 20, '', '2016-07-01', '2016-07-08 14:46:58'),
(746, 'OUT071600002', 'MAT00056', '1', 5, '', '2016-07-01', '2016-07-08 14:48:56'),
(747, 'OUT071600002', 'MAT00099', '1', 5, '', '2016-07-01', '2016-07-08 14:48:56'),
(748, 'OUT071600002', 'MAT00085', '1', 12, '', '2016-07-01', '2016-07-08 14:48:56'),
(749, 'OUT071600002', 'MAT00017', '1', 20, '', '2016-07-01', '2016-07-08 14:48:56'),
(750, 'OUT071600002', 'MAT00075', '4', 6, '', '2016-07-01', '2016-07-08 14:48:56'),
(756, 'OUT071600003', 'MAT00056', '1', 5, '', '2016-07-04', '2016-07-08 14:59:15'),
(757, 'OUT071600003', 'MAT00099', '1', 5, '', '2016-07-04', '2016-07-08 14:59:15'),
(758, 'OUT071600003', 'MAT00075', '4', 5, '', '2016-07-04', '2016-07-08 14:59:15'),
(759, 'OUT071600003', 'MAT00085', '1', 12, '', '2016-07-04', '2016-07-08 14:59:15'),
(760, 'OUT071600003', 'MAT00017', '1', 20, '', '2016-07-04', '2016-07-08 14:59:15'),
(761, 'OUT071600004', 'MAT00056', '1', 5, '', '2016-07-04', '2016-07-08 15:00:20'),
(762, 'OUT071600004', 'MAT00099', '1', 5, '', '2016-07-04', '2016-07-08 15:00:20'),
(763, 'OUT071600004', 'MAT00075', '4', 5, '', '2016-07-04', '2016-07-08 15:00:20'),
(764, 'OUT071600004', 'MAT00085', '1', 10, '', '2016-07-04', '2016-07-08 15:00:20'),
(765, 'OUT071600004', 'MAT00017', '1', 18, '', '2016-07-04', '2016-07-08 15:00:20'),
(766, 'OUT071600005', 'MAT00075', '4', 5, '', '2016-07-05', '2016-07-08 15:01:19'),
(767, 'OUT071600005', 'MAT00099', '1', 5, '', '2016-07-05', '2016-07-08 15:01:19'),
(768, 'OUT071600005', 'MAT00056', '1', 5, '', '2016-07-05', '2016-07-08 15:01:19'),
(769, 'OUT071600005', 'MAT00085', '1', 10, '', '2016-07-05', '2016-07-08 15:01:19'),
(770, 'OUT071600005', 'MAT00017', '1', 20, '', '2016-07-05', '2016-07-08 15:01:19'),
(771, 'OUT071600006', 'MAT00056', '1', 5, '', '2016-07-06', '2016-07-08 15:02:18'),
(772, 'OUT071600006', 'MAT00099', '1', 5, '', '2016-07-06', '2016-07-08 15:02:18'),
(773, 'OUT071600006', 'MAT00075', '4', 5, '', '2016-07-06', '2016-07-08 15:02:18'),
(774, 'OUT071600006', 'MAT00085', '1', 8, '', '2016-07-06', '2016-07-08 15:02:18'),
(775, 'OUT071600006', 'MAT00017', '1', 16, '', '2016-07-06', '2016-07-08 15:02:18'),
(776, 'OUT071600007', 'MAT00085', '1', 6, '', '2016-07-08', '2016-07-08 15:03:08'),
(777, 'OUT071600007', 'MAT00056', '1', 5, '', '2016-07-08', '2016-07-08 15:03:08'),
(778, 'OUT071600007', 'MAT00099', '1', 5, '', '2016-07-08', '2016-07-08 15:03:08'),
(779, 'OUT071600007', 'MAT00075', '4', 5, '', '2016-07-08', '2016-07-08 15:03:08'),
(780, 'OUT071600007', 'MAT00017', '1', 20, '', '2016-07-08', '2016-07-08 15:03:08'),
(781, 'OUT071600008', 'MAT00056', '1', 5, '', '2016-07-11', '2016-07-08 15:04:17'),
(782, 'OUT071600008', 'MAT00099', '1', 5, '', '2016-07-11', '2016-07-08 15:04:17'),
(783, 'OUT071600008', 'MAT00075', '4', 6, '', '2016-07-11', '2016-07-08 15:04:17'),
(784, 'OUT071600008', 'MAT00017', '1', 22, '', '2016-07-11', '2016-07-08 15:04:17'),
(785, 'OUT071600009', 'MAT00056', '1', 5, '', '2016-07-12', '2016-07-08 15:05:04'),
(786, 'OUT071600009', 'MAT00075', '4', 5, '', '2016-07-12', '2016-07-08 15:05:04'),
(787, 'OUT071600009', 'MAT00099', '1', 5, '', '2016-07-12', '2016-07-08 15:05:04'),
(788, 'OUT071600009', 'MAT00017', '1', 18, '', '2016-07-12', '2016-07-08 15:05:04'),
(789, 'OUT071600010', 'MAT00099', '1', 3, '', '2016-07-13', '2016-07-08 15:06:14'),
(790, 'OUT071600010', 'MAT00075', '4', 5, '', '2016-07-13', '2016-07-08 15:06:14'),
(791, 'OUT071600010', 'MAT00017', '1', 20, '', '2016-07-13', '2016-07-08 15:06:14'),
(792, 'OUT071600011', 'MAT00017', '1', 20, '', '2016-07-14', '2016-07-08 15:06:55'),
(793, 'OUT071600012', 'MAT00017', '1', 20, '', '2016-07-26', '2016-07-08 15:07:26'),
(794, 'OUT071600013', 'MAT00017', '1', 20, '', '2016-07-27', '2016-07-08 15:07:48'),
(795, 'OUT071600014', 'MAT00017', '1', 6, '', '2016-07-28', '2016-07-08 15:08:22'),
(796, 'OUT081600001', 'MAT00056', '1', 5, '', '2016-08-01', '2016-08-09 15:11:11'),
(797, 'OUT081600001', 'MAT00099', '1', 5, '', '2016-08-01', '2016-08-09 15:11:11'),
(798, 'OUT081600001', 'MAT00075', '4', 5, '', '2016-08-01', '2016-08-09 15:11:11'),
(799, 'OUT081600001', 'MAT00085', '1', 10, '', '2016-08-01', '2016-08-09 15:11:11'),
(800, 'OUT081600001', 'MAT00017', '1', 20, '', '2016-08-01', '2016-08-09 15:11:11'),
(801, 'OUT081600002', 'MAT00056', '1', 5, '', '2016-08-02', '2016-08-09 15:24:31'),
(802, 'OUT081600002', 'MAT00075', '4', 5, '', '2016-08-02', '2016-08-09 15:24:31'),
(803, 'OUT081600002', 'MAT00099', '1', 5, '', '2016-08-02', '2016-08-09 15:24:31'),
(804, 'OUT081600002', 'MAT00085', '1', 12, '', '2016-08-02', '2016-08-09 15:24:31'),
(805, 'OUT081600002', 'MAT00017', '1', 22, '', '2016-08-02', '2016-08-09 15:24:31'),
(806, 'OUT081600003', 'MAT00099', '1', 5, '', '2016-08-02', '2016-08-09 15:25:22'),
(807, 'OUT081600003', 'MAT00075', '4', 5, '', '2016-08-02', '2016-08-09 15:25:22'),
(808, 'OUT081600003', 'MAT00085', '1', 8, '', '2016-08-02', '2016-08-09 15:25:22'),
(809, 'OUT081600003', 'MAT00056', '1', 5, '', '2016-08-02', '2016-08-09 15:25:22'),
(810, 'OUT081600003', 'MAT00017', '1', 18, '', '2016-08-02', '2016-08-09 15:25:22'),
(811, 'OUT081600004', 'MAT00056', '1', 5, '', '2016-08-03', '2016-08-09 15:26:36'),
(812, 'OUT081600004', 'MAT00099', '1', 5, '', '2016-08-03', '2016-08-09 15:26:36'),
(813, 'OUT081600004', 'MAT00075', '4', 5, '', '2016-08-03', '2016-08-09 15:26:36'),
(814, 'OUT081600004', 'MAT00085', '1', 12, '', '2016-08-03', '2016-08-09 15:26:36'),
(815, 'OUT081600004', 'MAT00017', '1', 18, '', '2016-08-03', '2016-08-09 15:26:36'),
(816, 'OUT081600005', 'MAT00056', '1', 5, '', '2016-08-05', '2016-08-09 15:27:17'),
(817, 'OUT081600005', 'MAT00075', '4', 8, '', '2016-08-05', '2016-08-09 15:27:17'),
(818, 'OUT081600005', 'MAT00099', '1', 5, '', '2016-08-05', '2016-08-09 15:27:17'),
(819, 'OUT081600005', 'MAT00085', '1', 14, '', '2016-08-05', '2016-08-09 15:27:17'),
(820, 'OUT081600005', 'MAT00017', '1', 20, '', '2016-08-05', '2016-08-09 15:27:17'),
(821, 'OUT081600006', 'MAT00056', '1', 5, '', '2016-08-08', '2016-08-09 15:27:57'),
(822, 'OUT081600006', 'MAT00099', '1', 5, '', '2016-08-08', '2016-08-09 15:27:57'),
(823, 'OUT081600006', 'MAT00075', '4', 6, '', '2016-08-08', '2016-08-09 15:27:57'),
(824, 'OUT081600006', 'MAT00085', '1', 10, '', '2016-08-08', '2016-08-09 15:27:57'),
(825, 'OUT081600006', 'MAT00017', '1', 12, '', '2016-08-08', '2016-08-09 15:27:57'),
(826, 'OUT081600007', 'MAT00056', '1', 5, '', '2016-08-08', '2016-08-09 15:34:00'),
(827, 'OUT081600007', 'MAT00099', '1', 5, '', '2016-08-08', '2016-08-09 15:34:00'),
(828, 'OUT081600007', 'MAT00075', '4', 6, '', '2016-08-08', '2016-08-09 15:34:00'),
(829, 'OUT081600007', 'MAT00085', '1', 8, '', '2016-08-08', '2016-08-09 15:34:00'),
(830, 'OUT081600007', 'MAT00017', '1', 18, '', '2016-08-08', '2016-08-09 15:34:00'),
(831, 'OUT081600008', 'MAT00056', '1', 5, '', '2016-08-17', '2016-08-09 15:35:13'),
(832, 'OUT081600008', 'MAT00099', '1', 5, '', '2016-08-17', '2016-08-09 15:35:13'),
(833, 'OUT081600008', 'MAT00075', '4', 5, '', '2016-08-17', '2016-08-09 15:35:13'),
(834, 'OUT081600008', 'MAT00017', '1', 20, '', '2016-08-17', '2016-08-09 15:35:13'),
(835, 'OUT081600009', 'MAT00056', '1', 4, '', '2016-08-23', '2016-08-09 15:36:41'),
(836, 'OUT081600009', 'MAT00075', '4', 4, '', '2016-08-23', '2016-08-09 15:36:41'),
(837, 'OUT081600009', 'MAT00099', '1', 3, '', '2016-08-23', '2016-08-09 15:36:41'),
(838, 'OUT081600009', 'MAT00017', '1', 28, '', '2016-08-23', '2016-08-09 15:36:41'),
(839, 'OUT081600010', 'MAT00017', '1', 20, '', '2016-08-24', '2016-08-09 15:38:03'),
(840, 'OUT081600011', 'MAT00017', '1', 20, '', '2016-08-25', '2016-08-09 15:38:20'),
(841, 'OUT081600012', 'MAT00017', '1', 20, '', '2016-08-29', '2016-08-09 15:38:43'),
(842, 'OUT081600013', 'MAT00017', '1', 16, '', '2016-08-30', '2016-08-09 15:39:26'),
(843, 'OUT091600001', 'MAT00056', '1', 5, '', '2016-09-01', '2016-09-06 15:44:03'),
(844, 'OUT091600001', 'MAT00099', '1', 5, '', '2016-09-01', '2016-09-06 15:44:03'),
(845, 'OUT091600001', 'MAT00075', '4', 5, '', '2016-09-01', '2016-09-06 15:44:03'),
(846, 'OUT091600001', 'MAT00085', '1', 12, '', '2016-09-01', '2016-09-06 15:44:03'),
(847, 'OUT091600001', 'MAT00017', '1', 22, '', '2016-09-01', '2016-09-06 15:44:03'),
(848, 'OUT091600002', 'MAT00056', '1', 5, '', '2016-09-02', '2016-09-06 15:44:37'),
(849, 'OUT091600002', 'MAT00075', '4', 5, '', '2016-09-02', '2016-09-06 15:44:37'),
(850, 'OUT091600002', 'MAT00099', '1', 5, '', '2016-09-02', '2016-09-06 15:44:37'),
(851, 'OUT091600002', 'MAT00085', '1', 8, '', '2016-09-02', '2016-09-06 15:44:37'),
(852, 'OUT091600002', 'MAT00017', '1', 18, '', '2016-09-02', '2016-09-06 15:44:37'),
(853, 'OUT091600003', 'MAT00056', '1', 5, '', '2016-09-02', '2016-09-06 15:46:06'),
(854, 'OUT091600003', 'MAT00099', '1', 5, '', '2016-09-02', '2016-09-06 15:46:06'),
(855, 'OUT091600003', 'MAT00075', '4', 8, '', '2016-09-02', '2016-09-06 15:46:06'),
(856, 'OUT091600003', 'MAT00085', '1', 10, '', '2016-09-02', '2016-09-06 15:46:06'),
(857, 'OUT091600003', 'MAT00017', '1', 22, '', '2016-09-02', '2016-09-06 15:46:06'),
(858, 'OUT091600004', 'MAT00056', '1', 5, '', '2016-09-05', '2016-09-06 15:46:50'),
(859, 'OUT091600004', 'MAT00099', '1', 5, '', '2016-09-05', '2016-09-06 15:46:50'),
(860, 'OUT091600004', 'MAT00075', '4', 6, '', '2016-09-05', '2016-09-06 15:46:50'),
(861, 'OUT091600004', 'MAT00085', '1', 8, '', '2016-09-05', '2016-09-06 15:46:50'),
(862, 'OUT091600004', 'MAT00017', '1', 18, '', '2016-09-05', '2016-09-06 15:46:50'),
(863, 'OUT091600005', 'MAT00056', '1', 5, '', '2016-09-06', '2016-09-06 15:47:52'),
(864, 'OUT091600005', 'MAT00099', '1', 5, '', '2016-09-06', '2016-09-06 15:47:52'),
(865, 'OUT091600005', 'MAT00075', '4', 7, '', '2016-09-06', '2016-09-06 15:47:52'),
(866, 'OUT091600005', 'MAT00085', '1', 10, '', '2016-09-06', '2016-09-06 15:47:52'),
(867, 'OUT091600005', 'MAT00017', '1', 20, '', '2016-09-06', '2016-09-06 15:47:52'),
(868, 'OUT091600006', 'MAT00085', '1', 12, '', '2016-09-07', '2016-09-06 15:49:14'),
(869, 'OUT091600006', 'MAT00056', '1', 5, '', '2016-09-07', '2016-09-06 15:49:14'),
(870, 'OUT091600006', 'MAT00099', '1', 5, '', '2016-09-07', '2016-09-06 15:49:14'),
(871, 'OUT091600006', 'MAT00075', '4', 7, '', '2016-09-07', '2016-09-06 15:49:14'),
(872, 'OUT091600006', 'MAT00017', '1', 18, '', '2016-09-07', '2016-09-06 15:49:14'),
(873, 'OUT091600007', 'MAT00056', '1', 5, '', '2016-09-08', '2016-09-06 15:56:08'),
(874, 'OUT091600007', 'MAT00099', '1', 5, '', '2016-09-08', '2016-09-06 15:56:08'),
(875, 'OUT091600007', 'MAT00075', '4', 5, '', '2016-09-08', '2016-09-06 15:56:08'),
(876, 'OUT091600007', 'MAT00017', '1', 20, '', '2016-09-08', '2016-09-06 15:56:08'),
(877, 'OUT091600008', 'MAT00075', '4', 3, '', '2016-09-09', '2016-09-06 15:57:17'),
(878, 'OUT091600008', 'MAT00056', '1', 5, '', '2016-09-09', '2016-09-06 15:57:17'),
(879, 'OUT091600008', 'MAT00099', '1', 5, '', '2016-09-09', '2016-09-06 15:57:17'),
(880, 'OUT091600008', 'MAT00017', '1', 22, '', '2016-09-09', '2016-09-06 15:57:17'),
(881, 'OUT091600009', 'MAT00056', '1', 2, '', '2016-09-12', '2016-09-06 15:59:03'),
(882, 'OUT091600009', 'MAT00017', '1', 18, '', '2016-09-12', '2016-09-06 15:59:03'),
(883, 'OUT091600010', 'MAT00017', '1', 20, '', '2016-09-15', '2016-09-06 15:59:31'),
(884, 'OUT091600011', 'MAT00017', '1', 20, '', '2016-09-16', '2016-09-06 15:59:44'),
(885, 'OUT091600012', 'MAT00017', '1', 22, '', '2016-09-19', '2016-09-06 15:59:57'),
(886, 'OUT091600013', 'MAT00017', '1', 20, '', '2016-09-23', '2016-09-06 16:00:13'),
(887, 'OUT101600001', 'MAT00056', '1', 5, '', '2016-10-03', '2016-10-03 17:47:05'),
(888, 'OUT101600001', 'MAT00099', '1', 5, '', '2016-10-03', '2016-10-03 17:47:05'),
(889, 'OUT101600001', 'MAT00075', '4', 7, '', '2016-10-03', '2016-10-03 17:47:05'),
(890, 'OUT101600001', 'MAT00085', '1', 8, '', '2016-10-03', '2016-10-03 17:47:05'),
(891, 'OUT101600001', 'MAT00017', '1', 40, '', '2016-10-03', '2016-10-03 17:47:05'),
(892, 'OUT101600002', 'MAT00099', '1', 5, '', '2016-10-04', '2016-10-03 17:48:08'),
(893, 'OUT101600002', 'MAT00075', '4', 7, '', '2016-10-04', '2016-10-03 17:48:08'),
(894, 'OUT101600002', 'MAT00056', '1', 5, '', '2016-10-04', '2016-10-03 17:48:08'),
(895, 'OUT101600002', 'MAT00085', '1', 10, '', '2016-10-04', '2016-10-03 17:48:08'),
(896, 'OUT101600002', 'MAT00017', '1', 30, '', '2016-10-04', '2016-10-03 17:48:08'),
(897, 'OUT101600003', 'MAT00099', '1', 5, '', '2016-10-04', '2016-10-03 17:48:54'),
(898, 'OUT101600003', 'MAT00075', '4', 5, '', '2016-10-04', '2016-10-03 17:48:54'),
(899, 'OUT101600003', 'MAT00085', '1', 10, '', '2016-10-04', '2016-10-03 17:48:54'),
(900, 'OUT101600003', 'MAT00056', '1', 5, '', '2016-10-04', '2016-10-03 17:48:54'),
(901, 'OUT101600003', 'MAT00017', '1', 28, '', '2016-10-04', '2016-10-03 17:48:54'),
(902, 'OUT101600004', 'MAT00056', '1', 5, '', '2016-10-06', '2016-10-03 17:50:13'),
(903, 'OUT101600004', 'MAT00075', '4', 7, '', '2016-10-06', '2016-10-03 17:50:13'),
(904, 'OUT101600004', 'MAT00099', '1', 5, '', '2016-10-06', '2016-10-03 17:50:13'),
(905, 'OUT101600004', 'MAT00085', '1', 8, '', '2016-10-06', '2016-10-03 17:50:13'),
(906, 'OUT101600004', 'MAT00017', '1', 20, '', '2016-10-06', '2016-10-03 17:50:13'),
(907, 'OUT101600005', 'MAT00056', '1', 5, '', '2016-10-07', '2016-10-03 17:51:05'),
(908, 'OUT101600005', 'MAT00075', '4', 5, '', '2016-10-07', '2016-10-03 17:51:05'),
(909, 'OUT101600005', 'MAT00099', '1', 5, '', '2016-10-07', '2016-10-03 17:51:05'),
(910, 'OUT101600005', 'MAT00017', '1', 40, '', '2016-10-07', '2016-10-03 17:51:05'),
(911, 'OUT101600005', 'MAT00085', '1', 12, '', '2016-10-07', '2016-10-03 17:51:05'),
(912, 'OUT101600006', 'MAT00056', '1', 5, '', '2016-10-10', '2016-10-03 17:52:28'),
(913, 'OUT101600006', 'MAT00075', '4', 7, '', '2016-10-10', '2016-10-03 17:52:28'),
(914, 'OUT101600006', 'MAT00099', '1', 5, '', '2016-10-10', '2016-10-03 17:52:28'),
(915, 'OUT101600006', 'MAT00085', '1', 12, '', '2016-10-10', '2016-10-03 17:52:28'),
(916, 'OUT101600006', 'MAT00017', '1', 40, '', '2016-10-10', '2016-10-03 17:52:28'),
(917, 'OUT101600007', 'MAT00085', '1', 6, '', '2016-10-12', '2016-10-03 17:58:57'),
(918, 'OUT101600007', 'MAT00056', '1', 5, '', '2016-10-12', '2016-10-03 17:58:57'),
(919, 'OUT101600007', 'MAT00099', '1', 5, '', '2016-10-12', '2016-10-03 17:58:57'),
(920, 'OUT101600007', 'MAT00075', '4', 8, '', '2016-10-12', '2016-10-03 17:58:57'),
(921, 'OUT101600007', 'MAT00017', '1', 42, '', '2016-10-12', '2016-10-03 17:58:57'),
(922, 'OUT101600008', 'MAT00099', '1', 5, '', '2016-10-13', '2016-10-03 18:00:32'),
(923, 'OUT101600008', 'MAT00017', '1', 18, '', '2016-10-13', '2016-10-03 18:00:32'),
(924, 'OUT101600008', 'MAT00056', '1', 5, '', '2016-10-13', '2016-10-03 18:00:32'),
(925, 'OUT101600008', 'MAT00075', '4', 5, '', '2016-10-13', '2016-10-03 18:00:32'),
(926, 'OUT101600009', 'MAT00099', '1', 5, '', '2016-10-18', '2016-10-03 18:01:32'),
(927, 'OUT101600009', 'MAT00056', '1', 5, '', '2016-10-18', '2016-10-03 18:01:32'),
(928, 'OUT101600009', 'MAT00075', '4', 6, '', '2016-10-18', '2016-10-03 18:01:32'),
(929, 'OUT101600010', 'MAT00056', '1', 5, '', '2016-10-20', '2016-10-03 18:02:54'),
(930, 'OUT101600010', 'MAT00099', '1', 3, '', '2016-10-20', '2016-10-03 18:02:54'),
(931, 'OUT101600011', 'MAT00056', '1', 3, '', '2016-10-28', '2016-10-03 18:03:17'),
(932, 'OUT111600001', 'MAT00056', '1', 5, '', '2016-11-01', '2016-11-02 18:05:41'),
(933, 'OUT111600001', 'MAT00099', '1', 5, '', '2016-11-01', '2016-11-02 18:05:41'),
(934, 'OUT111600001', 'MAT00075', '4', 7, '', '2016-11-01', '2016-11-02 18:05:41'),
(935, 'OUT111600001', 'MAT00085', '1', 10, '', '2016-11-01', '2016-11-02 18:05:41'),
(936, 'OUT111600001', 'MAT00017', '1', 40, '', '2016-11-01', '2016-11-02 18:05:41'),
(937, 'OUT111600002', 'MAT00056', '1', 5, '', '2016-11-02', '2016-11-02 18:06:46'),
(938, 'OUT111600002', 'MAT00075', '4', 5, '', '2016-11-02', '2016-11-02 18:06:46'),
(939, 'OUT111600002', 'MAT00099', '1', 5, '', '2016-11-02', '2016-11-02 18:06:46'),
(940, 'OUT111600002', 'MAT00085', '1', 10, '', '2016-11-02', '2016-11-02 18:06:46'),
(941, 'OUT111600002', 'MAT00017', '1', 40, '', '2016-11-02', '2016-11-02 18:06:46'),
(942, 'OUT111600003', 'MAT00056', '1', 5, '', '2016-11-03', '2016-11-02 18:09:36'),
(943, 'OUT111600003', 'MAT00099', '1', 5, '', '2016-11-03', '2016-11-02 18:09:36'),
(944, 'OUT111600003', 'MAT00075', '4', 7, '', '2016-11-03', '2016-11-02 18:09:36'),
(945, 'OUT111600003', 'MAT00085', '1', 10, '', '2016-11-03', '2016-11-02 18:09:36'),
(946, 'OUT111600003', 'MAT00017', '1', 22, '', '2016-11-03', '2016-11-02 18:09:36'),
(947, 'OUT111600004', 'MAT00099', '1', 5, '', '2016-11-04', '2016-11-02 18:10:22'),
(948, 'OUT111600004', 'MAT00075', '4', 5, '', '2016-11-04', '2016-11-02 18:10:22'),
(949, 'OUT111600004', 'MAT00085', '1', 30, '', '2016-11-04', '2016-11-02 18:10:22'),
(950, 'OUT111600004', 'MAT00017', '1', 40, '', '2016-11-04', '2016-11-02 18:10:22'),
(951, 'OUT111600004', 'MAT00056', '1', 5, '', '2016-11-04', '2016-11-02 18:10:22'),
(952, 'OUT111600005', 'MAT00085', '1', 10, '', '2016-11-07', '2016-11-02 18:26:46'),
(953, 'OUT111600005', 'MAT00056', '1', 5, '', '2016-11-07', '2016-11-02 18:26:46'),
(954, 'OUT111600005', 'MAT00099', '1', 5, '', '2016-11-07', '2016-11-02 18:26:46'),
(955, 'OUT111600005', 'MAT00075', '4', 6, '', '2016-11-07', '2016-11-02 18:26:46'),
(956, 'OUT111600005', 'MAT00017', '1', 28, '', '2016-11-07', '2016-11-02 18:26:46'),
(957, 'OUT111600006', 'MAT00056', '1', 5, '', '2016-11-08', '2016-11-02 18:27:16'),
(958, 'OUT111600006', 'MAT00075', '4', 5, '', '2016-11-08', '2016-11-02 18:27:16'),
(959, 'OUT111600006', 'MAT00099', '1', 5, '', '2016-11-08', '2016-11-02 18:27:16'),
(960, 'OUT111600006', 'MAT00017', '1', 40, '', '2016-11-08', '2016-11-02 18:27:16'),
(961, 'OUT111600007', 'MAT00056', '1', 5, '', '2016-11-10', '2016-11-02 18:28:50'),
(962, 'OUT111600007', 'MAT00099', '1', 5, '', '2016-11-10', '2016-11-02 18:28:50'),
(963, 'OUT111600007', 'MAT00075', '4', 8, '', '2016-11-10', '2016-11-02 18:28:50'),
(964, 'OUT111600007', 'MAT00017', '1', 20, '', '2016-11-10', '2016-11-02 18:28:50'),
(965, 'OUT111600008', 'MAT00056', '1', 5, '', '2016-11-11', '2016-11-02 18:29:35'),
(966, 'OUT111600008', 'MAT00075', '4', 5, '', '2016-11-11', '2016-11-02 18:29:35'),
(967, 'OUT111600008', 'MAT00099', '1', 5, '', '2016-11-11', '2016-11-02 18:29:35'),
(968, 'OUT111600008', 'MAT00017', '1', 30, '', '2016-11-11', '2016-11-02 18:29:35'),
(969, 'OUT111600009', 'MAT00017', '1', 4, '', '2016-11-17', '2016-11-02 18:30:39'),
(970, 'OUT111600009', 'MAT00075', '4', 5, '', '2016-11-17', '2016-11-02 18:30:39'),
(971, 'OUT111600009', 'MAT00056', '1', 5, '', '2016-11-17', '2016-11-02 18:30:39'),
(972, 'OUT111600009', 'MAT00099', '1', 5, '', '2016-11-17', '2016-11-02 18:30:39'),
(973, 'OUT111600010', 'MAT00056', '1', 5, '', '2016-11-21', '2016-11-02 18:31:22'),
(974, 'OUT111600010', 'MAT00099', '1', 5, '', '2016-11-21', '2016-11-02 18:31:22'),
(975, 'OUT111600010', 'MAT00075', '4', 5, '', '2016-11-21', '2016-11-02 18:31:22'),
(976, 'OUT111600011', 'MAT00075', '4', 4, '', '2016-11-23', '2016-11-02 18:32:31'),
(977, 'OUT111600011', 'MAT00099', '1', 5, '', '2016-11-23', '2016-11-02 18:32:31'),
(978, 'OUT111600011', 'MAT00056', '1', 5, '', '2016-11-23', '2016-11-02 18:32:31'),
(979, 'OUT111600012', 'MAT00056', '1', 4, '', '2016-11-29', '2016-11-02 18:45:12'),
(980, 'OUT121600001', 'MAT00056', '1', 5, '', '2016-12-01', '2016-12-02 18:50:31'),
(981, 'OUT121600001', 'MAT00099', '1', 5, '', '2016-12-01', '2016-12-02 18:50:31'),
(982, 'OUT121600001', 'MAT00075', '4', 5, '', '2016-12-01', '2016-12-02 18:50:31'),
(983, 'OUT121600001', 'MAT00085', '1', 12, '', '2016-12-01', '2016-12-02 18:50:31'),
(984, 'OUT121600001', 'MAT00017', '1', 40, '', '2016-12-01', '2016-12-02 18:50:31'),
(985, 'OUT121600002', 'MAT00056', '1', 5, '', '2016-12-02', '2016-12-02 18:51:14'),
(986, 'OUT121600002', 'MAT00099', '1', 5, '', '2016-12-02', '2016-12-02 18:51:14'),
(987, 'OUT121600002', 'MAT00075', '4', 7, '', '2016-12-02', '2016-12-02 18:51:14'),
(988, 'OUT121600002', 'MAT00085', '1', 12, '', '2016-12-02', '2016-12-02 18:51:14'),
(989, 'OUT121600002', 'MAT00017', '1', 30, '', '2016-12-02', '2016-12-02 18:51:14'),
(990, 'OUT121600003', 'MAT00056', '1', 5, '', '2016-12-05', '2016-12-02 18:52:01'),
(991, 'OUT121600003', 'MAT00099', '1', 5, '', '2016-12-05', '2016-12-02 18:52:01'),
(992, 'OUT121600003', 'MAT00075', '4', 5, '', '2016-12-05', '2016-12-02 18:52:01'),
(993, 'OUT121600003', 'MAT00085', '1', 12, '', '2016-12-05', '2016-12-02 18:52:01'),
(994, 'OUT121600003', 'MAT00017', '1', 30, '', '2016-12-05', '2016-12-02 18:52:01'),
(995, 'OUT121600004', 'MAT00075', '4', 7, '', '2016-12-06', '2016-12-02 18:53:08'),
(996, 'OUT121600004', 'MAT00099', '1', 5, '', '2016-12-06', '2016-12-02 18:53:08'),
(997, 'OUT121600004', 'MAT00085', '1', 14, '', '2016-12-06', '2016-12-02 18:53:08'),
(998, 'OUT121600004', 'MAT00017', '1', 40, '', '2016-12-06', '2016-12-02 18:53:08'),
(999, 'OUT121600004', 'MAT00056', '1', 5, '', '2016-12-06', '2016-12-02 18:53:08'),
(1000, 'OUT121600005', 'MAT00056', '1', 5, '', '2016-12-07', '2016-12-02 18:55:20'),
(1001, 'OUT121600005', 'MAT00099', '1', 5, '', '2016-12-07', '2016-12-02 18:55:20'),
(1002, 'OUT121600005', 'MAT00075', '4', 5, '', '2016-12-07', '2016-12-02 18:55:20'),
(1003, 'OUT121600005', 'MAT00085', '1', 14, '', '2016-12-07', '2016-12-02 18:55:20'),
(1004, 'OUT121600005', 'MAT00017', '1', 40, '', '2016-12-07', '2016-12-02 18:55:20'),
(1005, 'OUT121600006', 'MAT00056', '1', 5, '', '2016-12-15', '2016-12-02 18:57:42'),
(1006, 'OUT121600006', 'MAT00099', '1', 5, '', '2016-12-15', '2016-12-02 18:57:42'),
(1007, 'OUT121600006', 'MAT00075', '4', 7, '', '2016-12-15', '2016-12-02 18:57:42'),
(1008, 'OUT121600006', 'MAT00085', '1', 14, '', '2016-12-15', '2016-12-02 18:57:42'),
(1009, 'OUT121600006', 'MAT00017', '1', 30, '', '2016-12-15', '2016-12-02 18:57:42'),
(1010, 'OUT121600007', 'MAT00056', '1', 5, '', '2016-12-16', '2016-12-02 18:58:58'),
(1011, 'OUT121600007', 'MAT00075', '4', 7, '', '2016-12-16', '2016-12-02 18:58:58'),
(1012, 'OUT121600007', 'MAT00099', '1', 5, '', '2016-12-16', '2016-12-02 18:58:58'),
(1013, 'OUT121600007', 'MAT00017', '1', 30, '', '2016-12-16', '2016-12-02 18:58:58'),
(1014, 'OUT121600008', 'MAT00099', '1', 5, '', '2016-12-19', '2016-12-02 18:59:33'),
(1015, 'OUT121600008', 'MAT00075', '4', 5, '', '2016-12-19', '2016-12-02 18:59:33'),
(1016, 'OUT121600008', 'MAT00099', '1', 5, '', '2016-12-19', '2016-12-02 18:59:33'),
(1017, 'OUT121600008', 'MAT00017', '1', 40, '', '2016-12-19', '2016-12-02 18:59:33'),
(1018, 'OUT121600009', 'MAT00056', '1', 5, '', '2016-12-21', '2016-12-02 19:00:42'),
(1019, 'OUT121600009', 'MAT00075', '4', 5, '', '2016-12-21', '2016-12-02 19:00:42'),
(1020, 'OUT121600009', 'MAT00099', '1', 5, '', '2016-12-21', '2016-12-02 19:00:42'),
(1021, 'OUT121600010', 'MAT00099', '1', 5, '', '2016-12-22', '2016-12-02 19:01:09'),
(1022, 'OUT121600010', 'MAT00056', '1', 5, '', '2016-12-22', '2016-12-02 19:01:09'),
(1023, 'OUT121600010', 'MAT00075', '4', 5, '', '2016-12-22', '2016-12-02 19:01:09'),
(1024, 'OUT121600011', 'MAT00056', '1', 5, '', '2016-12-26', '2016-12-02 19:01:50'),
(1025, 'OUT121600011', 'MAT00075', '4', 5, '', '2016-12-26', '2016-12-02 19:01:50'),
(1026, 'OUT121600011', 'MAT00099', '1', 5, '', '2016-12-26', '2016-12-02 19:01:50'),
(1027, 'OUT121600012', 'MAT00075', '4', 6, '', '2016-12-27', '2016-12-02 19:02:37'),
(1028, 'OUT121600012', 'MAT00056', '1', 5, '', '2016-12-27', '2016-12-02 19:02:37'),
(1029, 'OUT121600013', 'MAT00056', '1', 5, '', '2016-12-28', '2016-12-02 19:02:49'),
(1030, 'OUT121600014', 'MAT00056', '1', 3, '', '2016-12-30', '2016-12-02 19:03:19');

--
-- Triggers `tbl_trans_keluar_detail`
--
DELIMITER $$
CREATE TRIGGER `trgr_kurang_stok_pengeluaran` AFTER INSERT ON `tbl_trans_keluar_detail` FOR EACH ROW BEGIN 
UPDATE tbl_barang
    SET stok_barang = stok_barang - NEW.qty_keluar
    WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_tambah_stok_pengeluaran` AFTER DELETE ON `tbl_trans_keluar_detail` FOR EACH ROW BEGIN
UPDATE tbl_barang
    SET stok_barang = stok_barang + OLD.qty_keluar
    WHERE id_barang = OLD.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_masuk`
--

CREATE TABLE `tbl_trans_masuk` (
  `id_trans_masuk` varchar(12) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `id_supplier` varchar(8) NOT NULL,
  `tgl_trans_masuk` date NOT NULL,
  `timestamp_trans_masuk` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_masuk`
--

INSERT INTO `tbl_trans_masuk` (`id_trans_masuk`, `id_user`, `id_supplier`, `tgl_trans_masuk`, `timestamp_trans_masuk`) VALUES
('RCV011600001', 'USR00004', 'SUP00006', '2016-01-05', '2016-01-12 18:10:35'),
('RCV011600002', 'USR00004', 'SUP00008', '2016-01-06', '2016-01-12 18:10:49'),
('RCV011600003', 'USR00004', 'SUP00005', '2016-01-06', '2016-01-12 18:11:01'),
('RCV011600004', 'USR00004', 'SUP00007', '2016-01-08', '2016-01-12 18:11:09'),
('RCV021600001', 'USR00004', 'SUP00005', '2016-02-04', '2016-02-02 21:32:35'),
('RCV021600002', 'USR00004', 'SUP00008', '2016-02-02', '2016-02-02 21:32:54'),
('RCV021600003', 'USR00004', 'SUP00003', '2016-02-03', '2016-02-02 21:33:17'),
('RCV031600001', 'USR00004', 'SUP00005', '2016-03-03', '2016-03-03 18:24:02'),
('RCV031600002', 'USR00004', 'SUP00002', '2016-03-02', '2016-03-03 18:24:18'),
('RCV031600003', 'USR00004', 'SUP00008', '2016-03-02', '2016-03-03 18:24:26'),
('RCV031600004', 'USR00004', 'SUP00006', '2016-03-08', '2016-03-03 18:53:05'),
('RCV041600001', 'USR00004', 'SUP00001', '2016-04-01', '2016-04-03 19:21:09'),
('RCV041600002', 'USR00004', 'SUP00005', '2016-04-04', '2016-04-03 19:21:19'),
('RCV041600003', 'USR00004', 'SUP00003', '2016-04-04', '2016-04-03 19:21:25'),
('RCV041600004', 'USR00004', 'SUP00008', '2016-04-04', '2016-04-03 19:21:31'),
('RCV041600005', 'USR00004', 'SUP00007', '2016-04-05', '2016-04-03 19:21:38'),
('RCV041600006', 'USR00004', 'SUP00005', '2016-04-18', '2016-04-03 20:34:17'),
('RCV041600007', 'USR00004', 'SUP00008', '2016-04-15', '2016-04-03 20:36:09'),
('RCV051600001', 'USR00004', 'SUP00005', '2016-05-04', '2016-05-13 22:24:57'),
('RCV051600002', 'USR00004', 'SUP00003', '2016-05-03', '2016-05-13 22:25:06'),
('RCV051600003', 'USR00004', 'SUP00007', '2016-05-09', '2016-05-13 22:25:27'),
('RCV051600004', 'USR00004', 'SUP00008', '2016-05-05', '2016-05-13 22:25:36'),
('RCV061600001', 'USR00004', 'SUP00003', '2016-06-02', '2016-06-08 14:27:15'),
('RCV061600002', 'USR00004', 'SUP00008', '2016-06-02', '2016-06-08 14:27:24'),
('RCV061600003', 'USR00004', 'SUP00005', '2016-06-02', '2016-06-08 14:27:32'),
('RCV061600004', 'USR00004', 'SUP00007', '2016-06-06', '2016-06-08 14:27:38'),
('RCV071600001', 'USR00004', 'SUP00005', '2016-07-04', '2016-07-08 14:52:25'),
('RCV071600002', 'USR00004', 'SUP00008', '2016-07-04', '2016-07-08 14:52:35'),
('RCV071600003', 'USR00004', 'SUP00007', '2016-07-07', '2016-07-08 14:52:45'),
('RCV081600001', 'USR00004', 'SUP00008', '2016-08-08', '2016-08-09 15:32:10'),
('RCV081600002', 'USR00004', 'SUP00005', '2016-08-08', '2016-08-09 15:32:25'),
('RCV081600003', 'USR00004', 'SUP00007', '2016-08-11', '2016-08-09 15:32:35'),
('RCV081600004', 'USR00004', 'SUP00003', '2016-08-08', '2016-08-09 15:32:42'),
('RCV091600001', 'USR00004', 'SUP00002', '2016-09-06', '2016-09-06 15:53:13'),
('RCV091600002', 'USR00004', 'SUP00005', '2016-09-06', '2016-09-06 15:53:20'),
('RCV091600003', 'USR00004', 'SUP00008', '2016-09-06', '2016-09-06 15:53:26'),
('RCV101600001', 'USR00004', 'SUP00002', '2016-10-12', '2016-10-03 17:55:16'),
('RCV101600002', 'USR00004', 'SUP00007', '2016-10-14', '2016-10-03 17:55:26'),
('RCV101600003', 'USR00004', 'SUP00008', '2016-10-13', '2016-10-03 17:55:43'),
('RCV111600001', 'USR00004', 'SUP00005', '2016-11-07', '2016-11-02 18:14:00'),
('RCV111600002', 'USR00004', 'SUP00008', '2016-11-07', '2016-11-02 18:14:09'),
('RCV111600003', 'USR00004', 'SUP00002', '2016-11-07', '2016-11-02 18:14:19'),
('RCV111600004', 'USR00004', 'SUP00007', '2016-11-10', '2016-11-02 18:14:28'),
('RCV121600001', 'USR00001', 'SUP00008', '2016-12-02', '2016-12-10 13:58:13'),
('RCV121600002', 'USR00001', 'SUP00005', '2016-12-02', '2016-12-10 13:58:21'),
('RCV121600003', 'USR00001', 'SUP00007', '2016-12-02', '2016-12-10 13:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_masuk_detail`
--

CREATE TABLE `tbl_trans_masuk_detail` (
  `id_trans_masuk_detail` int(11) NOT NULL,
  `id_trans_beli_detail` int(11) NOT NULL,
  `id_trans_masuk` varchar(12) NOT NULL,
  `id_trans_beli` varchar(12) NOT NULL,
  `id_barang` varchar(8) NOT NULL,
  `id_satuan` varchar(8) NOT NULL,
  `qty_masuk` int(11) NOT NULL,
  `keterangan_masuk` varchar(150) NOT NULL,
  `tgl_trans_masuk_detail` date NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_masuk_detail`
--

INSERT INTO `tbl_trans_masuk_detail` (`id_trans_masuk_detail`, `id_trans_beli_detail`, `id_trans_masuk`, `id_trans_beli`, `id_barang`, `id_satuan`, `qty_masuk`, `keterangan_masuk`, `tgl_trans_masuk_detail`, `timestamp`) VALUES
(1, 2, 'RCV011600001', 'PO0116000002', 'LKP00006', '1', 50, 'untuk stok', '2016-01-05', '2016-01-12 18:10:35'),
(2, 3, 'RCV011600002', 'PO0116000003', 'MAT00099', '1', 50, 'untuk stok', '2016-01-06', '2016-01-12 18:10:49'),
(3, 4, 'RCV011600002', 'PO0116000003', 'MAT00085', '1', 80, 'untuk stok', '2016-01-06', '2016-01-12 18:10:49'),
(4, 5, 'RCV011600003', 'PO0116000004', 'MAT00075', '4', 63, 'untuk stok', '2016-01-06', '2016-01-12 18:11:01'),
(5, 1, 'RCV011600004', 'PO0116000001', 'MAT00056', '1', 50, 'untuk stok', '2016-01-08', '2016-01-12 18:11:09'),
(6, 6, 'RCV021600001', 'PO0216000001', 'MAT00075', '4', 63, '', '2016-02-04', '2016-02-02 21:32:35'),
(7, 7, 'RCV021600002', 'PO0216000002', 'MAT00099', '1', 70, '', '2016-02-02', '2016-02-02 21:32:54'),
(8, 8, 'RCV021600003', 'PO0216000003', 'MAT00056', '1', 50, '', '2016-02-03', '2016-02-02 21:33:17'),
(9, 9, 'RCV031600001', 'PO0316000001', 'MAT00075', '4', 63, '', '2016-03-03', '2016-03-03 18:24:02'),
(10, 10, 'RCV031600002', 'PO0316000002', 'MAT00056', '1', 30, '', '2016-03-02', '2016-03-03 18:24:18'),
(11, 11, 'RCV031600003', 'PO0316000003', 'MAT00099', '1', 50, '', '2016-03-02', '2016-03-03 18:24:26'),
(12, 12, 'RCV031600003', 'PO0316000003', 'MAT00085', '1', 160, '', '2016-03-02', '2016-03-03 18:24:26'),
(13, 13, 'RCV031600004', 'PO0316000004', 'MAT00056', '1', 20, '', '2016-03-08', '2016-03-03 18:53:05'),
(14, 18, 'RCV041600001', 'PO0416000005', 'LKP00001', '5', 20, '', '2016-04-01', '2016-04-03 19:21:09'),
(15, 19, 'RCV041600001', 'PO0416000005', 'LKP00002', '5', 20, '', '2016-04-01', '2016-04-03 19:21:09'),
(16, 20, 'RCV041600001', 'PO0416000005', 'LKP00003', '5', 20, '', '2016-04-01', '2016-04-03 19:21:09'),
(17, 14, 'RCV041600002', 'PO0416000001', 'MAT00075', '4', 63, '', '2016-04-04', '2016-04-03 19:21:19'),
(18, 15, 'RCV041600003', 'PO0416000002', 'MAT00085', '1', 60, '', '2016-04-04', '2016-04-03 19:21:25'),
(19, 16, 'RCV041600004', 'PO0416000003', 'MAT00099', '1', 50, '', '2016-04-04', '2016-04-03 19:21:31'),
(20, 17, 'RCV041600005', 'PO0416000004', 'MAT00056', '1', 50, '', '2016-04-05', '2016-04-03 19:21:38'),
(21, 21, 'RCV041600006', 'PO0416000006', 'MAT00075', '4', 63, '', '2016-04-18', '2016-04-03 20:34:17'),
(22, 22, 'RCV041600007', 'PO0416000007', 'MAT00056', '1', 50, '', '2016-04-15', '2016-04-03 20:36:09'),
(23, 23, 'RCV041600007', 'PO0416000007', 'MAT00099', '1', 50, '', '2016-04-15', '2016-04-03 20:36:09'),
(24, 25, 'RCV051600001', 'PO0516000001', 'MAT00075', '4', 63, '', '2016-05-04', '2016-05-13 22:24:57'),
(25, 26, 'RCV051600002', 'PO0516000002', 'MAT00085', '1', 100, '', '2016-05-03', '2016-05-13 22:25:06'),
(26, 27, 'RCV051600003', 'PO0516000003', 'MAT00056', '1', 50, '', '2016-05-09', '2016-05-13 22:25:27'),
(27, 28, 'RCV051600004', 'PO0516000004', 'MAT00099', '1', 50, '', '2016-05-05', '2016-05-13 22:25:36'),
(28, 31, 'RCV061600001', 'PO0616000003', 'MAT00085', '1', 100, '', '2016-06-02', '2016-06-08 14:27:15'),
(29, 29, 'RCV061600002', 'PO0616000001', 'MAT00099', '1', 70, '', '2016-06-02', '2016-06-08 14:27:24'),
(30, 30, 'RCV061600003', 'PO0616000002', 'MAT00075', '4', 63, '', '2016-06-02', '2016-06-08 14:27:32'),
(31, 32, 'RCV061600004', 'PO0616000004', 'MAT00056', '1', 60, '', '2016-06-06', '2016-06-08 14:27:38'),
(32, 34, 'RCV071600001', 'PO0716000001', 'MAT00075', '4', 63, '', '2016-07-04', '2016-07-08 14:52:25'),
(33, 35, 'RCV071600002', 'PO0716000002', 'MAT00099', '1', 50, '', '2016-07-04', '2016-07-08 14:52:35'),
(34, 36, 'RCV071600002', 'PO0716000002', 'MAT00085', '1', 60, '', '2016-07-04', '2016-07-08 14:52:35'),
(35, 37, 'RCV071600003', 'PO0716000003', 'MAT00056', '1', 50, '', '2016-07-07', '2016-07-08 14:52:45'),
(36, 38, 'RCV081600001', 'PO0816000001', 'MAT00099', '1', 50, '', '2016-08-08', '2016-08-09 15:32:10'),
(37, 39, 'RCV081600002', 'PO0816000002', 'MAT00075', '4', 63, '', '2016-08-08', '2016-08-09 15:32:25'),
(38, 40, 'RCV081600003', 'PO0816000003', 'MAT00056', '1', 50, '', '2016-08-11', '2016-08-09 15:32:35'),
(39, 41, 'RCV081600004', 'PO0816000004', 'MAT00085', '1', 100, '', '2016-08-08', '2016-08-09 15:32:42'),
(40, 42, 'RCV091600001', 'PO0916000001', 'MAT00056', '1', 50, '', '2016-09-06', '2016-09-06 15:53:13'),
(41, 43, 'RCV091600002', 'PO0916000002', 'MAT00075', '4', 63, '', '2016-09-06', '2016-09-06 15:53:20'),
(42, 44, 'RCV091600003', 'PO0916000003', 'MAT00099', '1', 50, '', '2016-09-06', '2016-09-06 15:53:26'),
(43, 45, 'RCV091600003', 'PO0916000003', 'MAT00085', '1', 80, '', '2016-09-06', '2016-09-06 15:53:26'),
(44, 46, 'RCV101600001', 'PO1016000001', 'MAT00017', '1', 500, '', '2016-10-12', '2016-10-03 17:55:16'),
(45, 47, 'RCV101600002', 'PO1016000002', 'MAT00056', '1', 50, '', '2016-10-14', '2016-10-03 17:55:26'),
(46, 48, 'RCV101600003', 'PO1016000003', 'MAT00099', '1', 50, '', '2016-10-13', '2016-10-03 17:55:43'),
(47, 49, 'RCV101600003', 'PO1016000003', 'MAT00085', '1', 60, '', '2016-10-13', '2016-10-03 17:55:43'),
(48, 50, 'RCV111600001', 'PO1116000001', 'MAT00075', '4', 63, '', '2016-11-07', '2016-11-02 18:14:00'),
(49, 51, 'RCV111600002', 'PO1116000002', 'MAT00099', '1', 30, '', '2016-11-07', '2016-11-02 18:14:09'),
(50, 53, 'RCV111600003', 'PO1116000004', 'MAT00085', '1', 60, '', '2016-11-07', '2016-11-02 18:14:19'),
(51, 52, 'RCV111600004', 'PO1116000003', 'MAT00056', '1', 40, '', '2016-11-10', '2016-11-02 18:14:28'),
(55, 59, 'RCV121600001', 'PO1216000001', 'MAT00099', '1', 50, '', '2016-12-02', '2016-12-10 13:58:13'),
(56, 60, 'RCV121600002', 'PO1216000002', 'MAT00075', '4', 63, '', '2016-12-02', '2016-12-10 13:58:21'),
(57, 61, 'RCV121600003', 'PO1216000003', 'MAT00056', '1', 50, '', '2016-12-02', '2016-12-10 13:58:35');

--
-- Triggers `tbl_trans_masuk_detail`
--
DELIMITER $$
CREATE TRIGGER `trgr_kurang_stok_penerimaan` AFTER DELETE ON `tbl_trans_masuk_detail` FOR EACH ROW BEGIN
	UPDATE tbl_barang
    SET stok_barang = stok_barang - old.qty_masuk
    WHERE id_barang = old.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trgr_tambah_stok_peneimaan` AFTER INSERT ON `tbl_trans_masuk_detail` FOR EACH ROW BEGIN
    INSERT INTO tbl_barang
    SET id_barang = NEW.id_barang, stok_barang = New.qty_masuk 
    ON DUPLICATE KEY 
    UPDATE stok_barang = stok_barang + New.qty_masuk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_order`
--

CREATE TABLE `tbl_trans_order` (
  `id_trans_order` varchar(12) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `tgl_trans_order` date NOT NULL,
  `timestamp_trans_order` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_order`
--

INSERT INTO `tbl_trans_order` (`id_trans_order`, `id_user`, `tgl_trans_order`, `timestamp_trans_order`) VALUES
('ORD011600001', 'USR00004', '2016-01-04', '2016-01-12 18:06:40'),
('ORD011800001', 'USR00001', '2018-01-03', '2018-01-26 10:23:53'),
('ORD021600001', 'USR00004', '2016-02-02', '2016-02-02 21:24:54'),
('ORD031600001', 'USR00004', '2016-03-01', '2016-03-03 18:20:55'),
('ORD031600002', 'USR00004', '2016-03-08', '2016-03-03 18:21:29'),
('ORD041600001', 'USR00004', '2016-04-01', '2016-04-03 19:16:56'),
('ORD041600002', 'USR00004', '2016-04-12', '2016-04-03 20:31:46'),
('ORD041600003', 'USR00004', '2016-04-13', '2016-04-03 20:35:11'),
('ORD051600001', 'USR00004', '2016-05-03', '2016-05-13 22:22:52'),
('ORD061600001', 'USR00004', '2016-06-01', '2016-06-08 14:11:54'),
('ORD071600001', 'USR00004', '2016-07-01', '2016-07-08 14:50:19'),
('ORD081600001', 'USR00004', '2016-08-05', '2016-08-09 15:29:59'),
('ORD091600001', 'USR00004', '2016-09-05', '2016-09-06 15:51:23'),
('ORD101600001', 'USR00004', '2016-10-11', '2016-10-03 17:53:30'),
('ORD111600001', 'USR00004', '2016-11-04', '2016-11-02 18:11:48'),
('ORD121600001', 'USR00001', '2016-12-01', '2016-12-10 13:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trans_order_detail`
--

CREATE TABLE `tbl_trans_order_detail` (
  `id_trans_order_detail` int(11) NOT NULL,
  `id_trans_order` varchar(12) NOT NULL,
  `id_trans_beli` varchar(12) DEFAULT '0',
  `id_barang` varchar(8) NOT NULL,
  `id_satuan` int(8) NOT NULL,
  `qty_order` int(11) NOT NULL,
  `keterangan_order` varchar(150) NOT NULL,
  `tgl_trans_order_detail` date NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_trans_order_detail`
--

INSERT INTO `tbl_trans_order_detail` (`id_trans_order_detail`, `id_trans_order`, `id_trans_beli`, `id_barang`, `id_satuan`, `qty_order`, `keterangan_order`, `tgl_trans_order_detail`, `timestamp`) VALUES
(1, 'ORD011600001', 'PO0116000001', 'MAT00056', 1, 50, 'untuk stok', '2016-01-04', '2016-01-12 18:06:40'),
(2, 'ORD011600001', 'PO0116000003', 'MAT00099', 1, 50, 'untuk stok', '2016-01-04', '2016-01-12 18:06:40'),
(3, 'ORD011600001', 'PO0116000004', 'MAT00075', 4, 63, 'untuk stok', '2016-01-04', '2016-01-12 18:06:40'),
(4, 'ORD011600001', 'PO0116000003', 'MAT00085', 1, 80, 'untuk stok', '2016-01-04', '2016-01-12 18:06:40'),
(5, 'ORD011600001', 'PO0116000002', 'LKP00006', 1, 40, 'untuk stok', '2016-01-04', '2016-01-12 18:06:40'),
(6, 'ORD021600001', 'PO0216000001', 'MAT00075', 4, 50, '', '2016-02-02', '2016-02-02 21:24:54'),
(7, 'ORD021600001', 'PO0216000002', 'MAT00099', 1, 70, '', '2016-02-02', '2016-02-02 21:24:54'),
(8, 'ORD021600001', 'PO0216000003', 'MAT00056', 1, 50, '', '2016-02-02', '2016-02-02 21:24:54'),
(9, 'ORD031600001', 'PO0316000002', 'MAT00056', 1, 70, '', '2016-03-01', '2016-03-03 18:20:55'),
(10, 'ORD031600001', 'PO0316000003', 'MAT00099', 1, 50, '', '2016-03-01', '2016-03-03 18:20:55'),
(11, 'ORD031600001', 'PO0316000003', 'MAT00085', 1, 200, '', '2016-03-01', '2016-03-03 18:20:55'),
(12, 'ORD031600001', 'PO0316000001', 'MAT00075', 4, 63, '', '2016-03-01', '2016-03-03 18:20:55'),
(13, 'ORD031600002', 'PO0316000004', 'MAT00056', 1, 20, '', '2016-03-08', '2016-03-03 18:21:29'),
(14, 'ORD041600001', 'PO0416000001', 'MAT00075', 4, 63, '', '2016-04-01', '2016-04-03 19:16:56'),
(15, 'ORD041600001', 'PO0416000002', 'MAT00085', 1, 60, '', '2016-04-01', '2016-04-03 19:16:56'),
(16, 'ORD041600001', 'PO0416000003', 'MAT00099', 1, 50, '', '2016-04-01', '2016-04-03 19:16:56'),
(17, 'ORD041600001', 'PO0416000004', 'MAT00056', 1, 50, '', '2016-04-01', '2016-04-03 19:16:56'),
(18, 'ORD041600001', 'PO0416000005', 'LKP00001', 5, 20, '', '2016-04-01', '2016-04-03 19:16:56'),
(19, 'ORD041600001', 'PO0416000005', 'LKP00002', 5, 20, '', '2016-04-01', '2016-04-03 19:16:56'),
(20, 'ORD041600001', 'PO0416000005', 'LKP00003', 5, 20, '', '2016-04-01', '2016-04-03 19:16:56'),
(21, 'ORD041600002', 'PO0416000006', 'MAT00075', 4, 63, '', '2016-04-12', '2016-04-03 20:31:46'),
(22, 'ORD041600003', 'PO0416000007', 'MAT00056', 1, 50, '', '2016-04-13', '2016-04-03 20:35:11'),
(23, 'ORD041600003', 'PO0416000007', 'MAT00099', 1, 50, '', '2016-04-13', '2016-04-03 20:35:11'),
(24, 'ORD051600001', 'PO0516000001', 'MAT00075', 4, 63, '', '2016-05-03', '2016-05-13 22:22:52'),
(25, 'ORD051600001', 'PO0516000002', 'MAT00085', 1, 100, '', '2016-05-03', '2016-05-13 22:22:52'),
(26, 'ORD051600001', 'PO0516000004', 'MAT00099', 1, 50, '', '2016-05-03', '2016-05-13 22:22:52'),
(27, 'ORD051600001', 'PO0516000003', 'MAT00056', 1, 50, '', '2016-05-03', '2016-05-13 22:22:52'),
(28, 'ORD061600001', 'PO0616000001', 'MAT00099', 1, 70, '', '2016-06-01', '2016-06-08 14:11:54'),
(29, 'ORD061600001', 'PO0616000004', 'MAT00056', 1, 60, '', '2016-06-01', '2016-06-08 14:11:54'),
(30, 'ORD061600001', 'PO0616000003', 'MAT00085', 1, 100, '', '2016-06-01', '2016-06-08 14:11:54'),
(31, 'ORD061600001', 'PO0616000002', 'MAT00075', 4, 63, '', '2016-06-01', '2016-06-08 14:11:54'),
(32, 'ORD071600001', 'PO0716000003', 'MAT00056', 1, 50, '', '2016-07-01', '2016-07-08 14:50:19'),
(33, 'ORD071600001', 'PO0716000002', 'MAT00099', 1, 50, '', '2016-07-01', '2016-07-08 14:50:19'),
(34, 'ORD071600001', 'PO0716000002', 'MAT00085', 1, 60, '', '2016-07-01', '2016-07-08 14:50:19'),
(35, 'ORD071600001', 'PO0716000001', 'MAT00075', 4, 63, '', '2016-07-01', '2016-07-08 14:50:19'),
(36, 'ORD081600001', 'PO0816000003', 'MAT00056', 1, 50, '', '2016-08-05', '2016-08-09 15:29:59'),
(37, 'ORD081600001', 'PO0816000001', 'MAT00099', 1, 50, '', '2016-08-05', '2016-08-09 15:29:59'),
(38, 'ORD081600001', 'PO0816000002', 'MAT00075', 4, 63, '', '2016-08-05', '2016-08-09 15:29:59'),
(39, 'ORD081600001', 'PO0816000004', 'MAT00085', 1, 100, '', '2016-08-05', '2016-08-09 15:29:59'),
(40, 'ORD091600001', 'PO0916000001', 'MAT00056', 1, 50, '', '2016-09-05', '2016-09-06 15:51:23'),
(41, 'ORD091600001', 'PO0916000003', 'MAT00099', 1, 50, '', '2016-09-05', '2016-09-06 15:51:23'),
(42, 'ORD091600001', 'PO0916000002', 'MAT00075', 4, 63, '', '2016-09-05', '2016-09-06 15:51:23'),
(43, 'ORD091600001', 'PO0916000003', 'MAT00085', 1, 80, '', '2016-09-05', '2016-09-06 15:51:23'),
(44, 'ORD101600001', 'PO1016000003', 'MAT00099', 1, 50, '', '2016-10-11', '2016-10-03 17:53:30'),
(45, 'ORD101600001', 'PO1016000002', 'MAT00056', 1, 50, '', '2016-10-11', '2016-10-03 17:53:30'),
(46, 'ORD101600001', 'PO1016000003', 'MAT00085', 1, 60, '', '2016-10-11', '2016-10-03 17:53:30'),
(47, 'ORD101600001', 'PO1016000001', 'MAT00017', 1, 500, '', '2016-10-11', '2016-10-03 17:53:30'),
(48, 'ORD111600001', 'PO1116000001', 'MAT00075', 4, 63, '', '2016-11-04', '2016-11-02 18:11:48'),
(49, 'ORD111600001', 'PO1116000003', 'MAT00056', 1, 40, '', '2016-11-04', '2016-11-02 18:11:48'),
(50, 'ORD111600001', 'PO1116000002', 'MAT00099', 1, 30, '', '2016-11-04', '2016-11-02 18:11:48'),
(51, 'ORD111600001', 'PO1116000004', 'MAT00085', 1, 60, '', '2016-11-04', '2016-11-02 18:11:48'),
(67, 'ORD121600001', 'PO1216000002', 'MAT00075', 4, 63, '', '2016-12-01', '2016-12-10 13:57:03'),
(68, 'ORD121600001', 'PO1216000001', 'MAT00099', 1, 50, '', '2016-12-01', '2016-12-10 13:57:03'),
(69, 'ORD121600001', 'PO1216000003', 'MAT00056', 1, 50, '', '2016-12-01', '2016-12-10 13:57:03'),
(70, 'ORD011800001', '0', 'MAT00056', 1, 68, '', '2018-01-03', '2018-01-26 10:23:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` varchar(8) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id_level_user` int(8) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'aktif',
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `id_level_user`, `status`, `last_login`) VALUES
('USR00001', 'admin', '05munaqTlKafrsXZ3JyymIo=', 1, 'aktif', '2018-02-04 19:41:11'),
('USR00002', 'rizky', '05munaqloJs=', 2, 'aktif', '2018-01-11 14:25:50'),
('USR00004', 'gudang', 'yKWYk5+Zo6mY', 3, 'aktif', '2018-01-25 00:58:39'),
('USR00005', 'pembelian', '0ZWhlJaemZqks8LL', 4, 'aktif', '2018-01-25 01:03:26'),
('USR00006', 'adm_gudang', 'wpShmaaWkaedob7K8w==', 3, 'aktif', '2016-01-15 11:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_detail`
--

CREATE TABLE `tbl_user_detail` (
  `id_user_detail` int(11) NOT NULL,
  `id_user` varchar(8) NOT NULL,
  `nama_lengkap_user` varchar(100) DEFAULT 'Akun Baru',
  `alamat_user` text,
  `tanggal_lahir_user` date DEFAULT '1970-01-01',
  `jenis_kelamin_user` varchar(10) DEFAULT NULL,
  `no_telp_user` varchar(15) NOT NULL,
  `gambar_user` varchar(250) NOT NULL DEFAULT 'user_default.png',
  `thumb_gambar_user` varchar(100) NOT NULL DEFAULT 'user_default_thumb.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_detail`
--

INSERT INTO `tbl_user_detail` (`id_user_detail`, `id_user`, `nama_lengkap_user`, `alamat_user`, `tanggal_lahir_user`, `jenis_kelamin_user`, `no_telp_user`, `gambar_user`, `thumb_gambar_user`) VALUES
(2, 'USR00001', 'Rizky Yuanda', 'Jl. Ngagel Tirto IIB/6 Surabaya, Jawa Timur, Indonesia', '1991-04-03', 'Laki-Laki', '081703403473', 'img_USR000011.jpg', 'img_USR000011_thumb.jpg'),
(3, 'USR00002', 'Rizky Manajer', 'Jl. Ngagel Tirto IIB/6 Surabaya, Jawa Timur, Indonesia', '1991-04-03', 'Laki-Laki', '081703403473', 'img_USR000021.jpg', 'img_USR000021_thumb.jpg'),
(4, 'USR00004', 'Purnomo', 'rahasia', '1990-06-30', 'Laki-Laki', '', 'img_USR00004.jpg', 'img_USR00004_thumb.jpg'),
(5, 'USR00005', 'Minuk Dwi Susilowati', 'Masih dirahasiakan', '1985-02-15', 'Perempuan', '081221331214', 'img_USR000055.JPG', 'img_USR000055_thumb.JPG'),
(6, 'USR00006', 'Slamet Wardoyo', 'kepo dech', '1998-06-11', 'Laki-Laki', '081991991991', 'img_USR00006.jpg', 'img_USR00006_thumb.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_satuan` (`id_satuan`),
  ADD KEY `nama_kategori` (`id_kategori`);

--
-- Indexes for table `tbl_borongan`
--
ALTER TABLE `tbl_borongan`
  ADD PRIMARY KEY (`id_borongan`);

--
-- Indexes for table `tbl_borongan_detail`
--
ALTER TABLE `tbl_borongan_detail`
  ADD PRIMARY KEY (`id_borongan_detail`);

--
-- Indexes for table `tbl_forecast`
--
ALTER TABLE `tbl_forecast`
  ADD PRIMARY KEY (`id_forecast`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  ADD PRIMARY KEY (`id_level_user`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tbl_retur_keluar`
--
ALTER TABLE `tbl_retur_keluar`
  ADD PRIMARY KEY (`id_retur_keluar`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `tbl_retur_keluar_detail`
--
ALTER TABLE `tbl_retur_keluar_detail`
  ADD PRIMARY KEY (`id_retur_keluar_detail`),
  ADD KEY `id_retur_keluar` (`id_retur_keluar`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_satuan` (`id_satuan`),
  ADD KEY `id_trans_masuk` (`id_trans_masuk`),
  ADD KEY `id_retur_masuk` (`id_retur_masuk`);

--
-- Indexes for table `tbl_retur_masuk`
--
ALTER TABLE `tbl_retur_masuk`
  ADD PRIMARY KEY (`id_retur_masuk`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `tbl_retur_masuk_detail`
--
ALTER TABLE `tbl_retur_masuk_detail`
  ADD PRIMARY KEY (`id_retur_masuk_detail`),
  ADD KEY `id_retur_keluar` (`id_retur_keluar`),
  ADD KEY `id_retur_masuk` (`id_retur_masuk`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_satuan` (`id_satuan`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`id_satuan`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tbl_trans_beli`
--
ALTER TABLE `tbl_trans_beli`
  ADD PRIMARY KEY (`id_trans_beli`);

--
-- Indexes for table `tbl_trans_beli_detail`
--
ALTER TABLE `tbl_trans_beli_detail`
  ADD PRIMARY KEY (`id_trans_beli_detail`),
  ADD KEY `id_trans_beli` (`id_trans_beli`),
  ADD KEY `id_trans_order` (`id_trans_order`),
  ADD KEY `id_trans_masuk` (`id_trans_masuk`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_satuan` (`id_satuan`),
  ADD KEY `id_trans_order_detail` (`id_trans_order_detail`);

--
-- Indexes for table `tbl_trans_keluar`
--
ALTER TABLE `tbl_trans_keluar`
  ADD PRIMARY KEY (`id_trans_keluar`);

--
-- Indexes for table `tbl_trans_keluar_detail`
--
ALTER TABLE `tbl_trans_keluar_detail`
  ADD PRIMARY KEY (`id_trans_keluar_detail`),
  ADD KEY `id_trans_keluar` (`id_trans_keluar`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_satuan` (`id_satuan`);

--
-- Indexes for table `tbl_trans_masuk`
--
ALTER TABLE `tbl_trans_masuk`
  ADD PRIMARY KEY (`id_trans_masuk`);

--
-- Indexes for table `tbl_trans_masuk_detail`
--
ALTER TABLE `tbl_trans_masuk_detail`
  ADD PRIMARY KEY (`id_trans_masuk_detail`),
  ADD KEY `id_trans_beli_detail` (`id_trans_beli_detail`),
  ADD KEY `id_trans_masuk` (`id_trans_masuk`),
  ADD KEY `id_trans_beli` (`id_trans_beli`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_satuan` (`id_satuan`);

--
-- Indexes for table `tbl_trans_order`
--
ALTER TABLE `tbl_trans_order`
  ADD PRIMARY KEY (`id_trans_order`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tbl_trans_order_detail`
--
ALTER TABLE `tbl_trans_order_detail`
  ADD PRIMARY KEY (`id_trans_order_detail`),
  ADD KEY `id_trans_order` (`id_trans_order`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_satuan` (`id_satuan`),
  ADD KEY `id_trans_beli` (`id_trans_beli`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level_user` (`id_level_user`);

--
-- Indexes for table `tbl_user_detail`
--
ALTER TABLE `tbl_user_detail`
  ADD PRIMARY KEY (`id_user_detail`),
  ADD UNIQUE KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_borongan_detail`
--
ALTER TABLE `tbl_borongan_detail`
  MODIFY `id_borongan_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_forecast`
--
ALTER TABLE `tbl_forecast`
  MODIFY `id_forecast` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_level_user`
--
ALTER TABLE `tbl_level_user`
  MODIFY `id_level_user` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_retur_keluar_detail`
--
ALTER TABLE `tbl_retur_keluar_detail`
  MODIFY `id_retur_keluar_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_retur_masuk_detail`
--
ALTER TABLE `tbl_retur_masuk_detail`
  MODIFY `id_retur_masuk_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `id_satuan` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_trans_beli_detail`
--
ALTER TABLE `tbl_trans_beli_detail`
  MODIFY `id_trans_beli_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `tbl_trans_keluar_detail`
--
ALTER TABLE `tbl_trans_keluar_detail`
  MODIFY `id_trans_keluar_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1031;
--
-- AUTO_INCREMENT for table `tbl_trans_masuk_detail`
--
ALTER TABLE `tbl_trans_masuk_detail`
  MODIFY `id_trans_masuk_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `tbl_trans_order_detail`
--
ALTER TABLE `tbl_trans_order_detail`
  MODIFY `id_trans_order_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `tbl_user_detail`
--
ALTER TABLE `tbl_user_detail`
  MODIFY `id_user_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
