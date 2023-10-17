-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 06:35 AM
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
-- Database: `siap`
--

-- --------------------------------------------------------

--
-- Table structure for table `dahana_assets`
--

CREATE TABLE `dahana_assets` (
  `id` varchar(100) NOT NULL,
  `nama_asset` varchar(100) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `tipe_mesin` varchar(100) DEFAULT NULL,
  `kategori_fungsi_mesin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`kategori_fungsi_mesin`)),
  `raw_material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`raw_material`)),
  `jenis_asset` varchar(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL,
  `status_pemakaian` varchar(100) DEFAULT NULL,
  `utilisasi` int(10) DEFAULT NULL,
  `tahun_perolehan` year(4) DEFAULT NULL,
  `umur_teknis` int(10) DEFAULT NULL,
  `sumber_dana` varchar(100) DEFAULT NULL,
  `nilai_perolehan` int(10) DEFAULT NULL,
  `nilai_perolehan_dollar` int(10) DEFAULT NULL,
  `nilai_buku` int(10) DEFAULT NULL,
  `rencana_optimisasi` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `data_sheet` varchar(500) DEFAULT NULL,
  `kartu_mesin` varchar(500) DEFAULT NULL,
  `kartu_elektronik` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dahana_assets`
--

INSERT INTO `dahana_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('1', 'SCANIA P94HL 6X4 MMT#5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '1999', 8, 'Investasi Perusahaan Sendiri', 1242850000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '2', NULL, NULL, NULL),
('10', 'Thermostat 110 Model 2BS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 9735000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '11', NULL, NULL, NULL),
('100', 'Air Operated Double Diaphragm Pump SAND PIPER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 57217000, NULL, 16952998, 'Pemanfaatan oleh Perusahaan Sendiri', '101', NULL, NULL, NULL),
('101', 'Air Operated Double Diaphragm Pump SAND PIPER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 57217000, NULL, 16952998, 'Pemanfaatan oleh Perusahaan Sendiri', '102', NULL, NULL, NULL),
('102', 'Air Operated Double Diaphragm Pump SAND PIPER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 57217000, NULL, 16952998, 'Pemanfaatan oleh Perusahaan Sendiri', '103', NULL, NULL, NULL),
('103', 'Air Operated Double Diaphragm Pump SAND PIPER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 57217000, NULL, 16952998, 'Pemanfaatan oleh Perusahaan Sendiri', '104', NULL, NULL, NULL),
('104', 'Water Tank OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 16500000, NULL, 8341910, 'Pemanfaatan oleh Perusahaan Sendiri', '105', NULL, NULL, NULL),
('105', 'Water Tank OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 16500000, NULL, 8341910, 'Pemanfaatan oleh Perusahaan Sendiri', '106', NULL, NULL, NULL),
('106', 'Tangki Air merk Penguin Kap. 10.000ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 17380000, NULL, 50000, 'Pemanfaatan oleh Perusahaan Sendiri', '107', NULL, NULL, NULL),
('107', 'Tangki Air merk Penguin Kap. 10.000ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 17380000, NULL, 50000, 'Pemanfaatan oleh Perusahaan Sendiri', '108', NULL, NULL, NULL),
('108', 'Material Sparepart OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 1081276110, NULL, 114277526, 'Pemanfaatan oleh Perusahaan Sendiri', '109', NULL, NULL, NULL),
('109', 'MMU & Transfer Truck', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 595000000, NULL, 15000000, 'Pemanfaatan oleh Perusahaan Sendiri', '110', NULL, NULL, NULL),
('11', 'Thermometer Analog Elemen Spiral', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 2805000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '12', NULL, NULL, NULL),
('110', 'LOGO DHN MMU & TRANSFER BIN TRUK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 5395500, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '111', NULL, NULL, NULL),
('111', 'Flowrate B3S-7WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '112', NULL, NULL, NULL),
('112', 'Flowrate B3S-7WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '113', NULL, NULL, NULL),
('113', 'Flowrate B3S-7HB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '114', NULL, NULL, NULL),
('114', 'Flowrate B3S-7WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '115', NULL, NULL, NULL),
('115', 'Flowrate B3S-7WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '116', NULL, NULL, NULL),
('116', 'High Pressure Plunger Pump CAT PUMP 271.0110', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 26558378, NULL, 6598642, 'Pemanfaatan oleh Perusahaan Sendiri', '117', NULL, NULL, NULL),
('117', 'High Pressure Plunger Pump CAT PUMP 271.0220', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 26085906, NULL, 6481361, 'Pemanfaatan oleh Perusahaan Sendiri', '118', NULL, NULL, NULL),
('118', 'High Pressure Plunger Pump CAT PUMP 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6569178, NULL, 1636782, 'Pemanfaatan oleh Perusahaan Sendiri', '119', NULL, NULL, NULL),
('119', 'High Pressure Plunger Pump CAT PUMP 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6569178, NULL, 1636782, 'Pemanfaatan oleh Perusahaan Sendiri', '120', NULL, NULL, NULL),
('12', 'Mesin jahit karung danfo NEW LONG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 9130000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '13', NULL, NULL, NULL),
('120', 'High Pressure Plunger Pump CAT PUMP 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6569178, NULL, 1636782, 'Pemanfaatan oleh Perusahaan Sendiri', '121', NULL, NULL, NULL),
('121', 'Double Diapraghm Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 52363967, NULL, 11406627, 'Pemanfaatan oleh Perusahaan Sendiri', '122', NULL, NULL, NULL),
('122', 'MMU & Transfer Truck  MMT#24 15-260', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 1158881263, NULL, 75000000, 'Pemanfaatan oleh Perusahaan Sendiri', '123', NULL, NULL, NULL),
('123', 'LOGO DHN MMU & TRANSFER BIN TRUK MMT#24 15-260', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 5395500, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '124', NULL, NULL, NULL),
('124', 'Flowrate B3S-7WB-01 MMT#24 15-260', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '125', NULL, NULL, NULL),
('125', 'Flowrate B3S-7WB-01 MMT#24 15-260', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '126', NULL, NULL, NULL),
('126', 'Flowrate B3S-7HB-01 MMT#24 15-260', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '127', NULL, NULL, NULL),
('127', 'High Pressure Plunger Pump CATPUMP 271.0110 MMT#24', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 26558378, NULL, 6598642, 'Pemanfaatan oleh Perusahaan Sendiri', '128', NULL, NULL, NULL),
('128', 'High Pressure Plunger Pump CATPUMP 271.0220 MMT#24', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 26085906, NULL, 6481361, 'Pemanfaatan oleh Perusahaan Sendiri', '129', NULL, NULL, NULL),
('129', 'High Pressure Plunger Pump CAT PUMP 240 MMT#24', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6569178, NULL, 1636782, 'Pemanfaatan oleh Perusahaan Sendiri', '130', NULL, NULL, NULL),
('13', 'Thermometer F120-6BS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 9735000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '14', NULL, NULL, NULL),
('130', 'High Pressure Plunger Pump CAT PUMP 240 MMT#24', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6569178, NULL, 1636782, 'Pemanfaatan oleh Perusahaan Sendiri', '131', NULL, NULL, NULL),
('131', 'High Pressure Plunger Pump CAT PUMP 240 MMT#24', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 6569178, NULL, 1636782, 'Pemanfaatan oleh Perusahaan Sendiri', '132', NULL, NULL, NULL),
('132', 'Double Diapraghm Pump MMT#24', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 52363967, NULL, 10794222, 'Pemanfaatan oleh Perusahaan Sendiri', '133', NULL, NULL, NULL),
('133', 'Tangki & Platform Bin Transfer Truck MMT#32 15-296', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 235000000, NULL, 9000000, 'Pemanfaatan oleh Perusahaan Sendiri', '134', NULL, NULL, NULL),
('134', 'Double Diapraghm Pump MMT#32 15-296', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 52363967, NULL, 11099103, 'Pemanfaatan oleh Perusahaan Sendiri', '135', NULL, NULL, NULL),
('135', 'CAT Pump Type 240 MMT#32 15-296', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 10474070, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '136', NULL, NULL, NULL),
('136', 'Tipper Clipper type HD 2', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 206496130, NULL, 89917410, 'Pemanfaatan oleh Perusahaan Sendiri', '137', NULL, NULL, NULL),
('137', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 555980000, NULL, 15000000, 'Pemanfaatan oleh Perusahaan Sendiri', '138', NULL, NULL, NULL),
('138', 'System Control', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 520000000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '139', NULL, NULL, NULL),
('139', 'Truck Scania Cab & Chasis P360CB-6X6 MMT#22', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 1918595000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '140', NULL, NULL, NULL),
('14', 'Water-Badger Meter High Resolution', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 12159840, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '15', NULL, NULL, NULL),
('140', 'Flowmeter B3A-6HB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 0, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '141', NULL, NULL, NULL),
('141', 'Fire Surppression Scania P360 MA 4-43', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 71000000, NULL, 71000000, 'Pemanfaatan oleh Perusahaan Sendiri', '142', NULL, NULL, NULL),
('142', 'Rekondisi (Overhaul) System Control MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 735000000, NULL, 301736843, 'Pemanfaatan oleh Perusahaan Sendiri', '143', NULL, NULL, NULL),
('143', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 573480000, NULL, 15000000, 'Pemanfaatan oleh Perusahaan Sendiri', '144', NULL, NULL, NULL),
('144', 'Truck Scania Cab & Chasis P360CB-6X6 MMT#23', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 1918595000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '145', NULL, NULL, NULL),
('145', 'Flowmeter B3A-6HB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 0, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '146', NULL, NULL, NULL),
('146', 'Fire Surppression Scania P360 MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 71000000, NULL, 71000000, 'Pemanfaatan oleh Perusahaan Sendiri', '147', NULL, NULL, NULL),
('147', 'Bin Transfer Site KBK - Kasongan', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 193500000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '148', NULL, NULL, NULL),
('148', 'Diapraghm Pump SANDPIPER S30', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 52731195, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '149', NULL, NULL, NULL),
('149', 'Bin Transfer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 193500000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '150', NULL, NULL, NULL),
('15', 'Yanmar Diesel Generator Set YDG 3501 SE', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2002', 8, 'Investasi Perusahaan Sendiri', 29103687, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '16', NULL, NULL, NULL),
('150', 'Diapraghm Pump SANDPIPER S30', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 52731195, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '151', NULL, NULL, NULL),
('151', 'Bin Transfer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 193500000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '152', NULL, NULL, NULL),
('152', 'Diapraghm Pump SANDPIPER S30', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 52731110, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '153', NULL, NULL, NULL),
('153', 'Seepex Pump NS 10-12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 57035992, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '154', NULL, NULL, NULL),
('154', 'Seepex Pump TNS 10-12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 110531593, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '155', NULL, NULL, NULL),
('155', 'Container (Kompresor Udara&Generator Listrik)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 407014500, NULL, 165609760, 'Pemanfaatan oleh Perusahaan Sendiri', '156', NULL, NULL, NULL),
('156', 'ANFO Mixer Kap. 5 Ton/Jam', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 180000000, NULL, 1000000, 'Pemanfaatan oleh Perusahaan Sendiri', '157', NULL, NULL, NULL),
('157', 'Storage Tank Site Adaro Ex. KBK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '158', NULL, NULL, NULL),
('158', 'Storage Tank Site Adaro Ex. KBK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '159', NULL, NULL, NULL),
('159', 'Storage Tank Site Adaro Ex. KBK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '160', NULL, NULL, NULL),
('16', 'Anfo Mixer Kap : 5 ton/Jam', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2002', 8, 'Investasi Perusahaan Sendiri', 35750000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '17', NULL, NULL, NULL),
('160', 'Storage Tank Site MHU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '161', NULL, NULL, NULL),
('161', 'Storage Tank Site MHU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '162', NULL, NULL, NULL),
('162', 'Storage Tank Site MHU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '163', NULL, NULL, NULL),
('163', 'Storage Tank Site Adaro Ex. KBK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '164', NULL, NULL, NULL),
('164', 'Storage Tank Site Adaro Ex. KBK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '165', NULL, NULL, NULL),
('165', 'Storage Tank Site Adaro', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 236000000, NULL, 114654710, 'Pemanfaatan oleh Perusahaan Sendiri', '166', NULL, NULL, NULL),
('166', 'MMU Leased Truck', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 874481998, NULL, 600000, 'Pemanfaatan oleh Perusahaan Sendiri', '167', NULL, NULL, NULL),
('167', 'MMU (Leased Truck) - Bin MMU (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 591336426, NULL, 15000000, 'Pemanfaatan oleh Perusahaan Sendiri', '168', NULL, NULL, NULL),
('168', 'MMU (Leased Truck) - Control System (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 254276576, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '169', NULL, NULL, NULL),
('169', 'MMU (Leased Truck) - Diaphragm Pump (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 55634950, NULL, 360000, 'Pemanfaatan oleh Perusahaan Sendiri', '170', NULL, NULL, NULL),
('17', 'CentriFugal Pump GRISWOLD 811M 3x2-10 A.60', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2002', 8, 'Investasi Perusahaan Sendiri', 56709709, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '18', NULL, NULL, NULL),
('170', 'MMU (Leased Truck) - Diaphragm Pump (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 55634950, NULL, 360000, 'Pemanfaatan oleh Perusahaan Sendiri', '171', NULL, NULL, NULL),
('171', 'MMU (Leased Truck) - CAT Pump (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 29060181, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '172', NULL, NULL, NULL),
('172', 'MMU (Leased Truck) - CAT Pump (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 29060181, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '173', NULL, NULL, NULL),
('173', 'MMU (Leased Truck) - CAT Pump (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 7456231, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '174', NULL, NULL, NULL),
('174', 'MMU (Leased Truck) - CAT Pump (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 7456231, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '175', NULL, NULL, NULL),
('175', 'MMU (Leased Truck) - CAT Pump (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 7456228, NULL, 9000, 'Pemanfaatan oleh Perusahaan Sendiri', '176', NULL, NULL, NULL),
('176', 'Vogelsang VX100-90Q (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 127600000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '177', NULL, NULL, NULL),
('177', 'Vogelsang VX136-105Q (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 158400000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '178', NULL, NULL, NULL),
('178', 'Cat pump model 2171.0110 (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 53675000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '179', NULL, NULL, NULL),
('179', 'Cat pump model 271.0220 (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 52250000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '180', NULL, NULL, NULL),
('18', 'Progresive Cavity Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2002', 8, 'Investasi Perusahaan Sendiri', 38303260, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '19', NULL, NULL, NULL),
('180', 'Cat pump model 270 (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 27550000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '181', NULL, NULL, NULL),
('181', 'Upgrading Bin MMT 14 ke 16 Ton (1500000291)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 842300000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '182', NULL, NULL, NULL),
('182', 'MMT#27 Truck Volvo FMX440 6X6 440hp', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 2016490384, 'Pemanfaatan oleh Perusahaan Sendiri', '183', NULL, NULL, NULL),
('183', 'Cat pump 271.0110', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 55000000, NULL, 55000000, 'Pemanfaatan oleh Perusahaan Sendiri', '184', NULL, NULL, NULL),
('184', 'Cat pump 271.0220', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 53000000, NULL, 53000000, 'Pemanfaatan oleh Perusahaan Sendiri', '185', NULL, NULL, NULL),
('185', 'Cat pump 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 14000000, NULL, 14000000, 'Pemanfaatan oleh Perusahaan Sendiri', '186', NULL, NULL, NULL),
('186', 'Cat pump 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 14000000, NULL, 14000000, 'Pemanfaatan oleh Perusahaan Sendiri', '187', NULL, NULL, NULL),
('187', 'Vogelsang VX 136-105Q Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 125000000, NULL, 125000000, 'Pemanfaatan oleh Perusahaan Sendiri', '188', NULL, NULL, NULL),
('188', 'Vogelsang VX 100-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 90000000, NULL, 90000000, 'Pemanfaatan oleh Perusahaan Sendiri', '189', NULL, NULL, NULL),
('189', 'Lake monitor model B3A-6HB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 6000000, 'Pemanfaatan oleh Perusahaan Sendiri', '190', NULL, NULL, NULL),
('19', 'SCANIA P93HL 6X4 MMT#2', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2002', 8, 'Investasi Perusahaan Sendiri', 1142538120, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '20', NULL, NULL, NULL),
('190', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 6000000, 'Pemanfaatan oleh Perusahaan Sendiri', '191', NULL, NULL, NULL),
('191', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 6000000, 'Pemanfaatan oleh Perusahaan Sendiri', '192', NULL, NULL, NULL),
('192', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 6000000, 'Pemanfaatan oleh Perusahaan Sendiri', '193', NULL, NULL, NULL),
('193', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 21300000, 'Pemanfaatan oleh Perusahaan Sendiri', '194', NULL, NULL, NULL),
('194', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 21300000, 'Pemanfaatan oleh Perusahaan Sendiri', '195', NULL, NULL, NULL),
('195', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 21300000, 'Pemanfaatan oleh Perusahaan Sendiri', '196', NULL, NULL, NULL),
('196', 'Orbit motor OMS 160 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 20100000, NULL, 20100000, 'Pemanfaatan oleh Perusahaan Sendiri', '197', NULL, NULL, NULL),
('197', 'Orbit motor OMS 315 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 31500000, NULL, 31500000, 'Pemanfaatan oleh Perusahaan Sendiri', '198', NULL, NULL, NULL),
('198', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 18000000, 'Pemanfaatan oleh Perusahaan Sendiri', '199', NULL, NULL, NULL),
('199', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 18000000, 'Pemanfaatan oleh Perusahaan Sendiri', '200', NULL, NULL, NULL),
('2', 'Asuransi Bulk Charging Truk', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '1999', 8, 'Investasi Perusahaan Sendiri', 42387500, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '3', NULL, NULL, NULL),
('20', 'AN Crusher untuk OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2003', 8, 'Investasi Perusahaan Sendiri', 45000000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '21', NULL, NULL, NULL),
('200', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 18000000, 'Pemanfaatan oleh Perusahaan Sendiri', '201', NULL, NULL, NULL),
('201', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 18000000, 'Pemanfaatan oleh Perusahaan Sendiri', '202', NULL, NULL, NULL),
('202', 'Variable pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 60450000, NULL, 60450000, 'Pemanfaatan oleh Perusahaan Sendiri', '203', NULL, NULL, NULL),
('203', 'Piston pump XPi108', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 24700000, NULL, 24700000, 'Pemanfaatan oleh Perusahaan Sendiri', '204', NULL, NULL, NULL),
('204', 'sistem hidrolik MMT 27 MHU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 315000000, NULL, 315000000, 'Pemanfaatan oleh Perusahaan Sendiri', '205', NULL, NULL, NULL),
('205', 'Chubb fire supression Volvo FMX440', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 85310000, 'Pemanfaatan oleh Perusahaan Sendiri', '206', NULL, NULL, NULL),
('206', 'Sistem Control', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 472000000, NULL, 472000000, 'Pemanfaatan oleh Perusahaan Sendiri', '207', NULL, NULL, NULL),
('207', 'OSP Emulsion - Air Operated Diaphragm', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 117526627, NULL, 52306320, 'Pemanfaatan oleh Perusahaan Sendiri', '208', NULL, NULL, NULL),
('208', 'OSP Emulsion - Air Operated Diaphragm', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 117526627, NULL, 52306320, 'Pemanfaatan oleh Perusahaan Sendiri', '209', NULL, NULL, NULL),
('209', 'OSP Emulsion - Air Operated Diaphragm', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 117526627, NULL, 52306320, 'Pemanfaatan oleh Perusahaan Sendiri', '210', NULL, NULL, NULL),
('21', 'Progresive Cavity Pump SEEPEX', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2004', 8, 'Investasi Perusahaan Sendiri', 78308683, NULL, 485095, 'Pemanfaatan oleh Perusahaan Sendiri', '22', NULL, NULL, NULL),
('210', 'OSP Emulsion - Air Operated Diaphragm', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 117526627, NULL, 52306320, 'Pemanfaatan oleh Perusahaan Sendiri', '211', NULL, NULL, NULL),
('211', 'OSP Emulsion - Gear Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 12894771, NULL, 5950723, 'Pemanfaatan oleh Perusahaan Sendiri', '212', NULL, NULL, NULL),
('212', 'OSP Emulsion - Gear Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 12894771, NULL, 5950723, 'Pemanfaatan oleh Perusahaan Sendiri', '213', NULL, NULL, NULL),
('213', 'OSP Emulsion - Dry Container 20\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 35368515, NULL, 17578996, 'Pemanfaatan oleh Perusahaan Sendiri', '214', NULL, NULL, NULL),
('214', 'OSP Emulsion - Dry Container 20\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 35368515, NULL, 17578996, 'Pemanfaatan oleh Perusahaan Sendiri', '215', NULL, NULL, NULL),
('215', 'OSP Emulsion - Storage Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 483001274, NULL, 219537237, 'Pemanfaatan oleh Perusahaan Sendiri', '216', NULL, NULL, NULL),
('216', 'OSP Emulsion - Storage Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 483001274, NULL, 219537237, 'Pemanfaatan oleh Perusahaan Sendiri', '217', NULL, NULL, NULL),
('217', 'OSP Emulsion - Tangki Aerasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 712528195, NULL, 321225743, 'Pemanfaatan oleh Perusahaan Sendiri', '218', NULL, NULL, NULL),
('218', 'OSP Emulsion - Tangki Aerasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 712528195, NULL, 321225743, 'Pemanfaatan oleh Perusahaan Sendiri', '219', NULL, NULL, NULL),
('219', 'OSP Emulsion - Tangki Solar', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 352948300, NULL, 159540332, 'Pemanfaatan oleh Perusahaan Sendiri', '220', NULL, NULL, NULL),
('22', 'Genset FG WILSON', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2004', 8, 'Investasi Perusahaan Sendiri', 309749000, NULL, 2323117, 'Pemanfaatan oleh Perusahaan Sendiri', '23', NULL, NULL, NULL),
('220', 'OSP Emulsion - Tangki Solar', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 352948300, NULL, 159540332, 'Pemanfaatan oleh Perusahaan Sendiri', '221', NULL, NULL, NULL),
('221', 'OSP Emulsion - Pressure Regulator', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 9578973, NULL, 4270254, 'Pemanfaatan oleh Perusahaan Sendiri', '222', NULL, NULL, NULL),
('222', 'OSP Emulsion - Pressure Regulator', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 9578973, NULL, 4270254, 'Pemanfaatan oleh Perusahaan Sendiri', '223', NULL, NULL, NULL),
('223', 'FUEL PHASE CONTAINER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 175000000, NULL, 4500000, 'Pemanfaatan oleh Perusahaan Sendiri', '224', NULL, NULL, NULL),
('224', 'Isotank Kap 20.000 Ltr NK. 11 62 01 STG. 13', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 295000000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '225', NULL, NULL, NULL),
('225', 'Isotank Kap 20.000 Ltr NK. 11 62 01 STG. 14', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 295000000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '226', NULL, NULL, NULL),
('226', 'Isotank Kap 20.000 Ltr NK. 11 62 01 STG. 15', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 295000000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '227', NULL, NULL, NULL),
('227', 'Isotank Kap 20.000 Ltr NK. 11 62 01 STG. 16', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 295000000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '228', NULL, NULL, NULL),
('228', 'AFF Fire Suppression System Site KBK - Kasongan', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 51665600, NULL, 450000, 'Pemanfaatan oleh Perusahaan Sendiri', '229', NULL, NULL, NULL),
('229', 'Air Operated Double Diaphragm Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 66628680, NULL, 450000, 'Pemanfaatan oleh Perusahaan Sendiri', '230', NULL, NULL, NULL),
('23', 'Anfo Mixer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2004', 8, 'Investasi Perusahaan Sendiri', 71000000, NULL, 2064222, 'Pemanfaatan oleh Perusahaan Sendiri', '24', NULL, NULL, NULL),
('230', 'Recycling Pump Perkantor Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 29071654, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '231', NULL, NULL, NULL),
('231', 'Recycling Pump Perkantor Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 29071654, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '232', NULL, NULL, NULL),
('232', 'Filter Pump Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 38762204, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '233', NULL, NULL, NULL),
('233', 'Instalasi Genset Power Plant', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 38762204, NULL, 1, 'Pemanfaatan oleh Perusahaan Sendiri', '234', NULL, NULL, NULL),
('234', 'Sand Filter Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 96905382, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '235', NULL, NULL, NULL),
('235', 'Carbon Filter Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 75370867, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '236', NULL, NULL, NULL),
('236', 'Submersible Simpit Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 49529528, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '237', NULL, NULL, NULL),
('237', 'Submersible Simpit Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 49529528, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '238', NULL, NULL, NULL),
('238', 'Submersible Simpit Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 49529528, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '239', NULL, NULL, NULL),
('239', 'Submersible Simpit Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 49529528, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '240', NULL, NULL, NULL),
('24', 'Inverter SIEMENS utk bag Produksi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2004', 8, 'Investasi Perusahaan Sendiri', 18838490, NULL, 403945, 'Pemanfaatan oleh Perusahaan Sendiri', '25', NULL, NULL, NULL),
('240', 'Submersible Simpit Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 49529528, NULL, 30000, 'Pemanfaatan oleh Perusahaan Sendiri', '241', NULL, NULL, NULL),
('241', 'Transfer Pump Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 75370867, NULL, 75000, 'Pemanfaatan oleh Perusahaan Sendiri', '242', NULL, NULL, NULL),
('242', 'Transfer Pump Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 75370867, NULL, 75000, 'Pemanfaatan oleh Perusahaan Sendiri', '243', NULL, NULL, NULL),
('243', 'Sewage Treatment Plan Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 193810761, NULL, 1500000, 'Pemanfaatan oleh Perusahaan Sendiri', '244', NULL, NULL, NULL),
('244', 'Sewage Treatment Plan Perkantoran Utama', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 193810761, NULL, 1500000, 'Pemanfaatan oleh Perusahaan Sendiri', '245', NULL, NULL, NULL),
('245', 'Pompa Transfer Menara Air', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 646035895, NULL, 804000, 'Pemanfaatan oleh Perusahaan Sendiri', '246', NULL, NULL, NULL),
('246', 'Pompa Intake WTP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 74804149, NULL, 437400, 'Pemanfaatan oleh Perusahaan Sendiri', '247', NULL, NULL, NULL),
('247', 'Screen Intake WTP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 68003771, NULL, 400500, 'Pemanfaatan oleh Perusahaan Sendiri', '248', NULL, NULL, NULL),
('248', 'WTP Using Ultra Filtration', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 3000000, 'Pemanfaatan oleh Perusahaan Sendiri', '249', NULL, NULL, NULL),
('249', 'Anfo Mixer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 183365200, NULL, 1500000, 'Pemanfaatan oleh Perusahaan Sendiri', '250', NULL, NULL, NULL),
('25', 'Anfo Bin Mixer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2004', 8, 'Investasi Perusahaan Sendiri', 548031890, NULL, 9033971, 'Pemanfaatan oleh Perusahaan Sendiri', '26', NULL, NULL, NULL),
('250', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 1800131698, NULL, 1029034183, 'Pemanfaatan oleh Perusahaan Sendiri', '251', NULL, NULL, NULL),
('251', 'Daily Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 10606276, NULL, 6063011, 'Pemanfaatan oleh Perusahaan Sendiri', '252', NULL, NULL, NULL),
('252', 'Fixed Auger', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 291672601, NULL, 166732843, 'Pemanfaatan oleh Perusahaan Sendiri', '253', NULL, NULL, NULL),
('253', 'Flushing Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 29697574, NULL, 16976433, 'Pemanfaatan oleh Perusahaan Sendiri', '254', NULL, NULL, NULL),
('254', 'Genset 60KVA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 1605594665, NULL, 917828288, 'Pemanfaatan oleh Perusahaan Sendiri', '255', NULL, NULL, NULL),
('255', 'Holding Tank 1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 433531548, NULL, 247825637, 'Pemanfaatan oleh Perusahaan Sendiri', '256', NULL, NULL, NULL),
('256', 'Holding Tank 2', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 433531548, NULL, 247825637, 'Pemanfaatan oleh Perusahaan Sendiri', '257', NULL, NULL, NULL),
('257', 'Holding Tank 3', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 433531548, NULL, 247825637, 'Pemanfaatan oleh Perusahaan Sendiri', '258', NULL, NULL, NULL),
('258', 'Holding Tank 4', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 433531548, NULL, 247825637, 'Pemanfaatan oleh Perusahaan Sendiri', '259', NULL, NULL, NULL),
('259', 'Isotank 1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 336710032, NULL, 192478216, 'Pemanfaatan oleh Perusahaan Sendiri', '260', NULL, NULL, NULL),
('26', 'Air Operated Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2005', 8, 'Investasi Perusahaan Sendiri', 35460000, NULL, 1799875, 'Pemanfaatan oleh Perusahaan Sendiri', '27', NULL, NULL, NULL),
('260', 'Isotank 2', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 336710032, NULL, 192478216, 'Pemanfaatan oleh Perusahaan Sendiri', '261', NULL, NULL, NULL),
('261', 'Isotank 3', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 336710032, NULL, 192478216, 'Pemanfaatan oleh Perusahaan Sendiri', '262', NULL, NULL, NULL),
('262', 'Isotank 4', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 336710032, NULL, 192478216, 'Pemanfaatan oleh Perusahaan Sendiri', '263', NULL, NULL, NULL),
('263', 'Isotank 5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 336710032, NULL, 192478216, 'Pemanfaatan oleh Perusahaan Sendiri', '264', NULL, NULL, NULL),
('264', 'Isotank 6', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 336710032, NULL, 192478216, 'Pemanfaatan oleh Perusahaan Sendiri', '265', NULL, NULL, NULL),
('265', 'Matrix Plant Emulsi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1626797648, 'Pemanfaatan oleh Perusahaan Sendiri', '266', NULL, NULL, NULL),
('266', 'Peralatan Laboratorium', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 66474202, NULL, 6267440, 'Pemanfaatan oleh Perusahaan Sendiri', '267', NULL, NULL, NULL),
('267', 'Platform SUS 304', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 123457057, NULL, 11640000, 'Pemanfaatan oleh Perusahaan Sendiri', '268', NULL, NULL, NULL),
('268', 'Pressure Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 24108066, NULL, 2273000, 'Pemanfaatan oleh Perusahaan Sendiri', '269', NULL, NULL, NULL),
('269', 'Primatron Hot Water Boiler', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 1010459951, NULL, 577623201, 'Pemanfaatan oleh Perusahaan Sendiri', '270', NULL, NULL, NULL),
('27', 'Pompa GRUNDFOS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2006', 8, 'Investasi Perusahaan Sendiri', 13127000, NULL, 1059969, 'Pemanfaatan oleh Perusahaan Sendiri', '28', NULL, NULL, NULL),
('270', 'Roofing', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 72122679, NULL, 6800000, 'Pemanfaatan oleh Perusahaan Sendiri', '271', NULL, NULL, NULL),
('271', 'Stairway&Hand Rail', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 42902388, NULL, 4045000, 'Pemanfaatan oleh Perusahaan Sendiri', '272', NULL, NULL, NULL),
('272', 'Strainer SUS 304', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 18189760, NULL, 1715000, 'Pemanfaatan oleh Perusahaan Sendiri', '273', NULL, NULL, NULL),
('273', 'Tangki Oxol 1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 548874803, NULL, 313760895, 'Pemanfaatan oleh Perusahaan Sendiri', '274', NULL, NULL, NULL),
('274', 'Tangki Oxol 2', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 548874803, NULL, 313760895, 'Pemanfaatan oleh Perusahaan Sendiri', '275', NULL, NULL, NULL),
('275', 'Vogelsang 1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 180468003, NULL, 89462084, 'Pemanfaatan oleh Perusahaan Sendiri', '276', NULL, NULL, NULL),
('276', 'Vogelsang 2', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 180468003, NULL, 89462084, 'Pemanfaatan oleh Perusahaan Sendiri', '277', NULL, NULL, NULL),
('277', 'Vogelsang 3', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 180468003, NULL, 89462084, 'Pemanfaatan oleh Perusahaan Sendiri', '278', NULL, NULL, NULL),
('278', 'Vogelsang 4', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 180468003, NULL, 89462084, 'Pemanfaatan oleh Perusahaan Sendiri', '279', NULL, NULL, NULL),
('279', 'Vogelsang 5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 180468003, NULL, 89462084, 'Pemanfaatan oleh Perusahaan Sendiri', '280', NULL, NULL, NULL),
('28', 'Mould Dayagel Seismic  250 gr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2006', 8, 'Investasi Perusahaan Sendiri', 35000000, NULL, 1050000, 'Pemanfaatan oleh Perusahaan Sendiri', '29', NULL, NULL, NULL),
('280', 'Water Torn Plastic Excell 1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14318473, NULL, 8185064, 'Pemanfaatan oleh Perusahaan Sendiri', '281', NULL, NULL, NULL),
('281', 'Water Torn Plastic Excell 2', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14318473, NULL, 8185064, 'Pemanfaatan oleh Perusahaan Sendiri', '282', NULL, NULL, NULL),
('282', 'Water Torn Plastic Excell 3', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14318473, NULL, 8185064, 'Pemanfaatan oleh Perusahaan Sendiri', '283', NULL, NULL, NULL),
('283', 'Water Torn Plastic Excell 4', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14318473, NULL, 8185064, 'Pemanfaatan oleh Perusahaan Sendiri', '284', NULL, NULL, NULL),
('284', 'Water Treatment 1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 16625338, NULL, 9503773, 'Pemanfaatan oleh Perusahaan Sendiri', '285', NULL, NULL, NULL),
('285', 'Water Treatment 2', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 16625338, NULL, 9503773, 'Pemanfaatan oleh Perusahaan Sendiri', '286', NULL, NULL, NULL),
('286', 'Water Treatment 3', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 16625338, NULL, 9503773, 'Pemanfaatan oleh Perusahaan Sendiri', '287', NULL, NULL, NULL);
INSERT INTO `dahana_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('287', 'AFF Fire Suppression', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 53379200, NULL, 5337920, 'Pemanfaatan oleh Perusahaan Sendiri', '288', NULL, NULL, NULL),
('288', 'Bin MMU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 782922920, NULL, 78292292, 'Pemanfaatan oleh Perusahaan Sendiri', '289', NULL, NULL, NULL),
('289', 'CAT Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 68698734, NULL, 6869873, 'Pemanfaatan oleh Perusahaan Sendiri', '290', NULL, NULL, NULL),
('29', 'Forklift TOYOTA 60-8FD25', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2007', 8, 'Investasi Perusahaan Sendiri', 169850000, NULL, 23176316, 'Pemanfaatan oleh Perusahaan Sendiri', '30', NULL, NULL, NULL),
('290', 'MMU Control', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 142000000, NULL, 14200000, 'Pemanfaatan oleh Perusahaan Sendiri', '291', NULL, NULL, NULL),
('291', 'MMU Hydraulic System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 355000000, NULL, 35500000, 'Pemanfaatan oleh Perusahaan Sendiri', '292', NULL, NULL, NULL),
('292', 'Seepex Pump NS 10-12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 52554737, NULL, 5255474, 'Pemanfaatan oleh Perusahaan Sendiri', '293', NULL, NULL, NULL),
('293', 'Seepex Pump TNS 17-12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 149172556, NULL, 14917256, 'Pemanfaatan oleh Perusahaan Sendiri', '294', NULL, NULL, NULL),
('294', 'Truck Scania', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 1643985200, NULL, 164398520, 'Pemanfaatan oleh Perusahaan Sendiri', '295', NULL, NULL, NULL),
('295', 'Vogelsang Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 88621811, NULL, 8862181, 'Pemanfaatan oleh Perusahaan Sendiri', '296', NULL, NULL, NULL),
('296', 'Bin MMU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 708772358, NULL, 70877235, 'Pemanfaatan oleh Perusahaan Sendiri', '297', NULL, NULL, NULL),
('297', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 236128322, NULL, 20309799, 'Pemanfaatan oleh Perusahaan Sendiri', '298', NULL, NULL, NULL),
('298', 'Hydraulic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 424218340, NULL, 45746834, 'Pemanfaatan oleh Perusahaan Sendiri', '299', NULL, NULL, NULL),
('299', 'Truck MAN', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 864781434, NULL, 86478146, 'Pemanfaatan oleh Perusahaan Sendiri', '300', NULL, NULL, NULL),
('3', 'Hot water boiller & Chimney / Stock.', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2000', 8, 'Investasi Perusahaan Sendiri', 287505499, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '4', NULL, NULL, NULL),
('30', 'Air Dryer & Weighting Balance', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2007', 8, 'Investasi Perusahaan Sendiri', 14749000, NULL, 1883705, 'Pemanfaatan oleh Perusahaan Sendiri', '31', NULL, NULL, NULL),
('300', 'Seepex Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 61399004, NULL, 6139900, 'Pemanfaatan oleh Perusahaan Sendiri', '301', NULL, NULL, NULL),
('301', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2012', 8, 'Investasi Perusahaan Sendiri', 14507785, NULL, 1450779, 'Pemanfaatan oleh Perusahaan Sendiri', '302', NULL, NULL, NULL),
('302', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14507786, NULL, 1450779, 'Pemanfaatan oleh Perusahaan Sendiri', '303', NULL, NULL, NULL),
('303', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14507786, NULL, 1450779, 'Pemanfaatan oleh Perusahaan Sendiri', '304', NULL, NULL, NULL),
('304', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14507786, NULL, 1450779, 'Pemanfaatan oleh Perusahaan Sendiri', '305', NULL, NULL, NULL),
('305', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14507786, NULL, 1450779, 'Pemanfaatan oleh Perusahaan Sendiri', '306', NULL, NULL, NULL),
('306', 'Seepex Pump NS 10-12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 55492414, NULL, 5549241, 'Pemanfaatan oleh Perusahaan Sendiri', '307', NULL, NULL, NULL),
('307', 'Vogelsang Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 93575884, NULL, 9357588, 'Pemanfaatan oleh Perusahaan Sendiri', '308', NULL, NULL, NULL),
('308', 'Bin MMU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 745014000, NULL, 74501400, 'Pemanfaatan oleh Perusahaan Sendiri', '309', NULL, NULL, NULL),
('309', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 142000000, NULL, 14200000, 'Pemanfaatan oleh Perusahaan Sendiri', '310', NULL, NULL, NULL),
('31', 'Anfo Plant & Crane 2 Ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2007', 8, 'Investasi Perusahaan Sendiri', 470000000, NULL, 71279458, 'Pemanfaatan oleh Perusahaan Sendiri', '32', NULL, NULL, NULL),
('310', 'Flowrate 7WB & 1unt Flowrate 7HB', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 7466666, NULL, 746667, 'Pemanfaatan oleh Perusahaan Sendiri', '311', NULL, NULL, NULL),
('311', 'Flowrate 7WB & 1unt Flowrate 7HB', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 7466667, NULL, 746667, 'Pemanfaatan oleh Perusahaan Sendiri', '312', NULL, NULL, NULL),
('312', 'Flowrate 7WB & 1unt Flowrate 7HB', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 7466667, NULL, 746667, 'Pemanfaatan oleh Perusahaan Sendiri', '313', NULL, NULL, NULL),
('313', 'Hydraulic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 355000000, NULL, 35500000, 'Pemanfaatan oleh Perusahaan Sendiri', '314', NULL, NULL, NULL),
('314', 'New Fire Suppression ETI', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 67373882, NULL, 6737388, 'Pemanfaatan oleh Perusahaan Sendiri', '315', NULL, NULL, NULL),
('315', 'Seepex Pump NS 10-12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 52554650, NULL, 5255465, 'Pemanfaatan oleh Perusahaan Sendiri', '316', NULL, NULL, NULL),
('316', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 13739746, NULL, 1373975, 'Pemanfaatan oleh Perusahaan Sendiri', '317', NULL, NULL, NULL),
('317', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 13739747, NULL, 1373975, 'Pemanfaatan oleh Perusahaan Sendiri', '318', NULL, NULL, NULL),
('318', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 13739747, NULL, 1373975, 'Pemanfaatan oleh Perusahaan Sendiri', '319', NULL, NULL, NULL),
('319', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 13739747, NULL, 1373975, 'Pemanfaatan oleh Perusahaan Sendiri', '320', NULL, NULL, NULL),
('32', 'Mini Conveyor Ink Jet Printer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2007', 8, 'Investasi Perusahaan Sendiri', 13875000, NULL, 2910971, 'Pemanfaatan oleh Perusahaan Sendiri', '33', NULL, NULL, NULL),
('320', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 13739747, NULL, 1373975, 'Pemanfaatan oleh Perusahaan Sendiri', '321', NULL, NULL, NULL),
('321', 'Seepex Pump TNS 17-12 unt 4000000024-0', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 149172556, NULL, 14917256, 'Pemanfaatan oleh Perusahaan Sendiri', '322', NULL, NULL, NULL),
('322', 'Vogelsang Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 88621811, NULL, 8862181, 'Pemanfaatan oleh Perusahaan Sendiri', '323', NULL, NULL, NULL),
('323', 'Bin MMU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 663604503, NULL, 66360450, 'Pemanfaatan oleh Perusahaan Sendiri', '324', NULL, NULL, NULL),
('324', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 149926631, NULL, 17232663, 'Pemanfaatan oleh Perusahaan Sendiri', '325', NULL, NULL, NULL),
('325', 'Hydraulic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 402947707, NULL, 40294771, 'Pemanfaatan oleh Perusahaan Sendiri', '326', NULL, NULL, NULL),
('326', 'Truck Scania PC380 WB 6300', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 1517920127, NULL, 151792013, 'Pemanfaatan oleh Perusahaan Sendiri', '327', NULL, NULL, NULL),
('327', 'Seepex Pump NS 10-12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14127036, NULL, 5294203, 'Pemanfaatan oleh Perusahaan Sendiri', '328', NULL, NULL, NULL),
('328', 'AFF Fire Suppression Chubb QSII CWA&F', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 65148623, NULL, 5140887, 'Pemanfaatan oleh Perusahaan Sendiri', '329', NULL, NULL, NULL),
('329', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 13840998, NULL, 1384100, 'Pemanfaatan oleh Perusahaan Sendiri', '330', NULL, NULL, NULL),
('33', 'Mesin Heat Tracing', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 133086500, NULL, 40827857, 'Pemanfaatan oleh Perusahaan Sendiri', '34', NULL, NULL, NULL),
('330', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 13840998, NULL, 1384100, 'Pemanfaatan oleh Perusahaan Sendiri', '331', NULL, NULL, NULL),
('331', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 13840998, NULL, 1384100, 'Pemanfaatan oleh Perusahaan Sendiri', '332', NULL, NULL, NULL),
('332', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 52655988, NULL, 1384100, 'Pemanfaatan oleh Perusahaan Sendiri', '333', NULL, NULL, NULL),
('333', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 88723062, NULL, 1384100, 'Pemanfaatan oleh Perusahaan Sendiri', '334', NULL, NULL, NULL),
('334', 'Vogelsang Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 653078, NULL, 653078, 'Pemanfaatan oleh Perusahaan Sendiri', '335', NULL, NULL, NULL),
('335', 'Miniplant Seruyung', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 489426905, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '336', NULL, NULL, NULL),
('336', 'Tangki Polyurethan Kap 10.000ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14850000, NULL, 1485000, 'Pemanfaatan oleh Perusahaan Sendiri', '337', NULL, NULL, NULL),
('337', 'Tangki Polyurethan Kap 2.000ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 2942200, NULL, 272250, 'Pemanfaatan oleh Perusahaan Sendiri', '338', NULL, NULL, NULL),
('338', 'Container Oxol + Fuel Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 885000000, NULL, 7200000, 'Pemanfaatan oleh Perusahaan Sendiri', '339', NULL, NULL, NULL),
('339', 'Pompa Pedrollo CP25/160A kap>100Lpm', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 6822500, NULL, 682250, 'Pemanfaatan oleh Perusahaan Sendiri', '340', NULL, NULL, NULL),
('34', 'Mesin Pabrik Nonel', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1100118621, 'Pemanfaatan oleh Perusahaan Sendiri', '35', NULL, NULL, NULL),
('340', 'Pompa Grundfos CHI-4,Stainless Steel kap>5.5m', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 9195000, NULL, 919500, 'Pemanfaatan oleh Perusahaan Sendiri', '341', NULL, NULL, NULL),
('341', 'Pompa Grundfos KP-150', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 5230000, NULL, 523000, 'Pemanfaatan oleh Perusahaan Sendiri', '342', NULL, NULL, NULL),
('342', 'Boge Screw Compressor', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 175000000, NULL, 17500000, 'Pemanfaatan oleh Perusahaan Sendiri', '343', NULL, NULL, NULL),
('343', '1unit HWB', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Ringan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 214962000, NULL, 21496200, 'Pemanfaatan oleh Perusahaan Sendiri', '344', NULL, NULL, NULL),
('344', 'Vogelsang Rotary Lobe Pum VX100-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 92964392, NULL, 9296439, 'Pemanfaatan oleh Perusahaan Sendiri', '345', NULL, NULL, NULL),
('345', 'Vogelsang Rotary Lobe Pum VX100-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 106419759, NULL, 10641976, 'Pemanfaatan oleh Perusahaan Sendiri', '346', NULL, NULL, NULL),
('346', 'Vogelsang Rotary Lobe Pum VX100-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 92964392, NULL, 9296439, 'Pemanfaatan oleh Perusahaan Sendiri', '347', NULL, NULL, NULL),
('347', 'Vogelsang Rotary Lobe Pum VX136-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 106419759, NULL, 10641976, 'Pemanfaatan oleh Perusahaan Sendiri', '348', NULL, NULL, NULL),
('348', 'Storage Tank Site Adaro Ex. KBK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 37000000, NULL, 3700000, 'Pemanfaatan oleh Perusahaan Sendiri', '349', NULL, NULL, NULL),
('349', 'BIN MMU 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 126682964, NULL, 81198608, 'Pemanfaatan oleh Perusahaan Sendiri', '350', NULL, NULL, NULL),
('35', 'Pompa Tekan', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 9000000, NULL, 1963759, 'Pemanfaatan oleh Perusahaan Sendiri', '36', NULL, NULL, NULL),
('350', 'Seepex Pump TNS 10-12 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 110531593, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '351', NULL, NULL, NULL),
('351', 'Seepex Pump NS 10-12 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 57036036, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '352', NULL, NULL, NULL),
('352', 'Flowrate 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 30820714, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '353', NULL, NULL, NULL),
('353', 'Diapraghm Pump 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 176242153, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '354', NULL, NULL, NULL),
('354', 'CAT Pump 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 39849391, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '355', NULL, NULL, NULL),
('355', 'CAT Pump 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 8648479, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '356', NULL, NULL, NULL),
('356', 'CAT Pump 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 8648479, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '357', NULL, NULL, NULL),
('357', 'Hydraulic System 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 395835593, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '358', NULL, NULL, NULL),
('358', 'Flow Switch Digital 15-173 MMT#27', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 25258315, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '359', NULL, NULL, NULL),
('359', 'MMU #19 (eks TEHA) B 9258 SFA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 69269030, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '360', NULL, NULL, NULL),
('36', 'Mini MMU Leased Truck - Bin PS 133 COLT Diesel', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 706515000, NULL, 25000000, 'Pemanfaatan oleh Perusahaan Sendiri', '37', NULL, NULL, NULL),
('360', 'Volvo FMX370 6X6 370HP Rigid MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 1765906606, NULL, 91974302, 'Pemanfaatan oleh Perusahaan Sendiri', '361', NULL, NULL, NULL),
('361', 'Pompa Trace A \" D10S-KSES-NEPC\" MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 42224489, NULL, 2199192, 'Pemanfaatan oleh Perusahaan Sendiri', '362', NULL, NULL, NULL),
('362', 'Pompa Trace B \" D10S-KSGS-NEMB\" MA  4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 42377941, NULL, 2207184, 'Pemanfaatan oleh Perusahaan Sendiri', '363', NULL, NULL, NULL),
('363', 'Pompa Solar \" D10X-KBTS-FECA\" MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 23915794, NULL, 1245614, 'Pemanfaatan oleh Perusahaan Sendiri', '364', NULL, NULL, NULL),
('364', 'Pompa Air \"D10X-KBTS-FECA\" MA 4-43', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 23915794, NULL, 1245614, 'Pemanfaatan oleh Perusahaan Sendiri', '365', NULL, NULL, NULL),
('365', 'PTO Engine Type Propeler', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 20165105, NULL, 1050266, 'Pemanfaatan oleh Perusahaan Sendiri', '366', NULL, NULL, NULL),
('366', 'Pompa Nettszh', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 188835442, NULL, 9835179, 'Pemanfaatan oleh Perusahaan Sendiri', '367', NULL, NULL, NULL),
('367', 'Hydraulic System untuk MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 451929128, NULL, 23537976, 'Pemanfaatan oleh Perusahaan Sendiri', '368', NULL, NULL, NULL),
('368', 'Hydraulic System untuk MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 451929128, NULL, 23537975, 'Pemanfaatan oleh Perusahaan Sendiri', '369', NULL, NULL, NULL),
('369', 'Variable Pump TXV-130 Hydro Leduc', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 77473565, NULL, 4035081, 'Pemanfaatan oleh Perusahaan Sendiri', '370', NULL, NULL, NULL),
('37', 'High Pressure Plunger Pump CAT PUMP 231.0220', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 31333500, NULL, 7486006, 'Pemanfaatan oleh Perusahaan Sendiri', '38', NULL, NULL, NULL),
('370', 'Bin MMU # ma 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 1291226075, NULL, 67251358, 'Pemanfaatan oleh Perusahaan Sendiri', '371', NULL, NULL, NULL),
('371', 'Sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 18482373, NULL, 962624, 'Pemanfaatan oleh Perusahaan Sendiri', '372', NULL, NULL, NULL),
('372', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 474497489, NULL, 24713411, 'Pemanfaatan oleh Perusahaan Sendiri', '373', NULL, NULL, NULL),
('373', 'Fire Suppression System MA 4-43', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 69667335, NULL, 3628507, 'Pemanfaatan oleh Perusahaan Sendiri', '374', NULL, NULL, NULL),
('374', 'Bin MMU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 674309677, NULL, 67430968, 'Pemanfaatan oleh Perusahaan Sendiri', '375', NULL, NULL, NULL),
('375', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 197506580, NULL, 17510658, 'Pemanfaatan oleh Perusahaan Sendiri', '376', NULL, NULL, NULL),
('376', 'Hydraulic System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 409448002, NULL, 40944800, 'Pemanfaatan oleh Perusahaan Sendiri', '377', NULL, NULL, NULL),
('377', 'Truck Scania PC380 WB 4250', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 1542407002, NULL, 154240700, 'Pemanfaatan oleh Perusahaan Sendiri', '378', NULL, NULL, NULL),
('378', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 14064279, NULL, 1406428, 'Pemanfaatan oleh Perusahaan Sendiri', '379', NULL, NULL, NULL),
('379', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 14064280, NULL, 1406428, 'Pemanfaatan oleh Perusahaan Sendiri', '380', NULL, NULL, NULL),
('38', 'Pneumatic Act F79U-036 DA P/N 2727', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 7388932, NULL, 1427188, 'Pemanfaatan oleh Perusahaan Sendiri', '39', NULL, NULL, NULL),
('380', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14064280, NULL, 1406428, 'Pemanfaatan oleh Perusahaan Sendiri', '381', NULL, NULL, NULL),
('381', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14064280, NULL, 1406428, 'Pemanfaatan oleh Perusahaan Sendiri', '382', NULL, NULL, NULL),
('382', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 14064280, NULL, 1406428, 'Pemanfaatan oleh Perusahaan Sendiri', '383', NULL, NULL, NULL),
('383', 'Seepex Pump NS 10-12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 53796081, NULL, 5379608, 'Pemanfaatan oleh Perusahaan Sendiri', '384', NULL, NULL, NULL),
('384', 'Vogelsang Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 90715058, NULL, 9071506, 'Pemanfaatan oleh Perusahaan Sendiri', '385', NULL, NULL, NULL),
('385', 'Rekondisi MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 118278000, NULL, 76387875, 'Pemanfaatan oleh Perusahaan Sendiri', '386', NULL, NULL, NULL),
('386', 'Bin MMU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 590958208, NULL, 59095821, 'Pemanfaatan oleh Perusahaan Sendiri', '387', NULL, NULL, NULL),
('387', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 167049621, NULL, 16704962, 'Pemanfaatan oleh Perusahaan Sendiri', '388', NULL, NULL, NULL),
('388', 'Hydraulic System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 407557383, NULL, 40755738, 'Pemanfaatan oleh Perusahaan Sendiri', '389', NULL, NULL, NULL),
('389', 'Truck Scania PC380 WB 4250', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 1518126290, NULL, 151812629, 'Pemanfaatan oleh Perusahaan Sendiri', '390', NULL, NULL, NULL),
('39', 'Pompa limbah Sump GRUNDFOS AP 12.50 11 A1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 14400000, NULL, 2793683, 'Pemanfaatan oleh Perusahaan Sendiri', '40', NULL, NULL, NULL),
('390', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 15656837, NULL, 1565684, 'Pemanfaatan oleh Perusahaan Sendiri', '391', NULL, NULL, NULL),
('391', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2020', 8, 'Investasi Perusahaan Sendiri', 15656837, NULL, 1565684, 'Pemanfaatan oleh Perusahaan Sendiri', '392', NULL, NULL, NULL),
('392', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2013', 8, 'Investasi Perusahaan Sendiri', 15656837, NULL, 1565684, 'Pemanfaatan oleh Perusahaan Sendiri', '393', NULL, NULL, NULL),
('393', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 15656837, NULL, 1565684, 'Pemanfaatan oleh Perusahaan Sendiri', '394', NULL, NULL, NULL),
('394', 'CAT Pump 271.0110,271.0220,240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 15656837, NULL, 1565684, 'Pemanfaatan oleh Perusahaan Sendiri', '395', NULL, NULL, NULL),
('395', 'Vogelsang Rotary Lobe Pump SS316', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 94418580, NULL, 9441858, 'Pemanfaatan oleh Perusahaan Sendiri', '396', NULL, NULL, NULL),
('396', 'Sumersible Pump Grundfos KP150A SN', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 15107933, NULL, 1152189, 'Pemanfaatan oleh Perusahaan Sendiri', '397', NULL, NULL, NULL),
('397', 'FRP Water Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 30834129, NULL, 2351528, 'Pemanfaatan oleh Perusahaan Sendiri', '398', NULL, NULL, NULL),
('398', 'Fuel Tank 16.000lt', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 155727913, NULL, 11876405, 'Pemanfaatan oleh Perusahaan Sendiri', '399', NULL, NULL, NULL),
('399', 'Storage Tank 20.000lt', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 294410982, NULL, 22452905, 'Pemanfaatan oleh Perusahaan Sendiri', '400', NULL, NULL, NULL),
('4', 'Housing Ribbon Mixer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2000', 8, 'Investasi Perusahaan Sendiri', 402266097, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '5', NULL, NULL, NULL),
('40', 'Tipper Clipper D 187 SS-304', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 59763818, NULL, 19877616, 'Pemanfaatan oleh Perusahaan Sendiri', '41', NULL, NULL, NULL),
('400', 'Storage Tank 20.000lt', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 294410982, NULL, 22452905, 'Pemanfaatan oleh Perusahaan Sendiri', '401', NULL, NULL, NULL),
('401', 'Storage Tank 20.000lt', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2013', 8, 'Investasi Perusahaan Sendiri', 294410982, NULL, 22452905, 'Pemanfaatan oleh Perusahaan Sendiri', '402', NULL, NULL, NULL),
('402', 'Storage Tank 20.000lt', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 294410982, NULL, 22452905, 'Pemanfaatan oleh Perusahaan Sendiri', '403', NULL, NULL, NULL),
('403', 'Chemical Pump Centrifugal', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 13171017, NULL, 1004472, 'Pemanfaatan oleh Perusahaan Sendiri', '404', NULL, NULL, NULL),
('404', 'Chemical Pump Centrifugal', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 13171017, NULL, 1004472, 'Pemanfaatan oleh Perusahaan Sendiri', '405', NULL, NULL, NULL),
('405', 'Fuel Phase', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 1146653296, NULL, 87448156, 'Pemanfaatan oleh Perusahaan Sendiri', '406', NULL, NULL, NULL),
('406', 'Gear Pump Oriental Koshin GL 25 - 5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 12783634, NULL, 974929, 'Pemanfaatan oleh Perusahaan Sendiri', '407', NULL, NULL, NULL),
('407', 'Gear Pump Oriental Koshin GL 25 - 5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 12783636, NULL, 974929, 'Pemanfaatan oleh Perusahaan Sendiri', '408', NULL, NULL, NULL),
('408', 'Pedrollo CP 170M 1,1 Kw 160 Lpm', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 8135041, NULL, 620409, 'Pemanfaatan oleh Perusahaan Sendiri', '409', NULL, NULL, NULL),
('409', 'Pedrollo NGA 1A 0,75 Kw 350 Lpm', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 5810744, NULL, 443149, 'Pemanfaatan oleh Perusahaan Sendiri', '410', NULL, NULL, NULL),
('41', 'SCANIA P124 CB 6x4 NZ MMT#4', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 1119084731, NULL, 75000000, 'Pemanfaatan oleh Perusahaan Sendiri', '42', NULL, NULL, NULL),
('410', 'Pedrollo NGA 1A 0,75 Kw 350 Lpm', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 5810744, NULL, 443149, 'Pemanfaatan oleh Perusahaan Sendiri', '411', NULL, NULL, NULL),
('411', 'Tangki Aerasi Kapasitas 10 Ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 728279795, NULL, 55541397, 'Pemanfaatan oleh Perusahaan Sendiri', '412', NULL, NULL, NULL),
('412', 'Tangki Oxol,Tangga & Jembatan', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 1084672039, NULL, 82721229, 'Pemanfaatan oleh Perusahaan Sendiri', '413', NULL, NULL, NULL),
('413', 'Double Diaphragm Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 264188920, NULL, 20148055, 'Pemanfaatan oleh Perusahaan Sendiri', '414', NULL, NULL, NULL),
('414', 'Dry Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 66113343, NULL, 5042056, 'Pemanfaatan oleh Perusahaan Sendiri', '415', NULL, NULL, NULL),
('415', 'Kompresor Udara & Genset Listrik', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 1169247327, NULL, 89171263, 'Pemanfaatan oleh Perusahaan Sendiri', '416', NULL, NULL, NULL),
('416', 'Office Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 66113343, NULL, 5042056, 'Pemanfaatan oleh Perusahaan Sendiri', '417', NULL, NULL, NULL),
('417', 'Workshop Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 66113341, NULL, 5042056, 'Pemanfaatan oleh Perusahaan Sendiri', '418', NULL, NULL, NULL),
('418', 'Hot Water Generator', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 672744589, NULL, 51306070, 'Pemanfaatan oleh Perusahaan Sendiri', '419', NULL, NULL, NULL),
('419', 'Alat laboratorium', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 168898933, NULL, 12880877, 'Pemanfaatan oleh Perusahaan Sendiri', '420', NULL, NULL, NULL),
('42', 'High Pressure Plunger Pump CAT PUMP 231.0110', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 31333500, NULL, 8782059, 'Pemanfaatan oleh Perusahaan Sendiri', '43', NULL, NULL, NULL),
('420', 'Winding Lead In Hole', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 28500000, NULL, 4456094, 'Pemanfaatan oleh Perusahaan Sendiri', '421', NULL, NULL, NULL),
('421', 'Compressor Unit E256H, 30834849 Ex. KBK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 244033683, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '422', NULL, NULL, NULL),
('422', 'Volvo FMX370 6x6 MMU20 B 9257 SFA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 292277022, 'Pemanfaatan oleh Perusahaan Sendiri', '423', NULL, NULL, NULL),
('423', 'Volvo FMX370 6x6 MMU20 - Pompa Hydracell', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 41705495, NULL, 1303297, 'Pemanfaatan oleh Perusahaan Sendiri', '424', NULL, NULL, NULL),
('424', 'Volvo FMX370 6x6 MMU20 - Hydraulic System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 600000000, NULL, 18750000, 'Pemanfaatan oleh Perusahaan Sendiri', '425', NULL, NULL, NULL),
('425', 'Inverter 3P 380V 15 KW Merk Schneider', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 13849000, NULL, 1514734, 'Pemanfaatan oleh Perusahaan Sendiri', '426', NULL, NULL, NULL),
('426', 'Pabrik CE Non Seismic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 505864487, 'Pemanfaatan oleh Perusahaan Sendiri', '427', NULL, NULL, NULL),
('427', 'Fabrikasi Filling Machine', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2014', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 177422788, 'Pemanfaatan oleh Perusahaan Sendiri', '428', NULL, NULL, NULL),
('428', 'Fabrikasi Packing Filling Machine Seismic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 679393939, NULL, 375082071, 'Pemanfaatan oleh Perusahaan Sendiri', '429', NULL, NULL, NULL),
('429', 'Rekondisi Conveyor Tube Chiller', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 104000000, NULL, 5379310, 'Pemanfaatan oleh Perusahaan Sendiri', '430', NULL, NULL, NULL),
('43', 'Hot Water Boiler Kap : 600Kw', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 682622386, NULL, 250736550, 'Pemanfaatan oleh Perusahaan Sendiri', '44', NULL, NULL, NULL),
('430', 'Volvo FMX370 6X6', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 1756882222, NULL, 128105995, 'Pemanfaatan oleh Perusahaan Sendiri', '431', NULL, NULL, NULL),
('431', 'Pompa Trace A \" D10S-KSES-NEPC\" MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 42008700, NULL, 3063134, 'Pemanfaatan oleh Perusahaan Sendiri', '432', NULL, NULL, NULL),
('432', 'Pompa Trace B \" D10S-KSGS-NEMB\" MA  4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 42161375, NULL, 3074267, 'Pemanfaatan oleh Perusahaan Sendiri', '433', NULL, NULL, NULL),
('433', 'Pompa Solar \" D10X-KBTS-FECA\" MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 23793581, NULL, 1734949, 'Pemanfaatan oleh Perusahaan Sendiri', '434', NULL, NULL, NULL),
('434', 'Pompa Air \"D10X-KBTS-FECA\" MA 4-43', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 23793581, NULL, 1734949, 'Pemanfaatan oleh Perusahaan Sendiri', '435', NULL, NULL, NULL),
('435', 'Pompa Trace B \" D10S-KSGS-NEMB\" MA  4-47', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 43016589, NULL, 3136626, 'Pemanfaatan oleh Perusahaan Sendiri', '436', NULL, NULL, NULL),
('436', 'Pompa Solar \" D10X-KBTS-FECA\" MA 4-47', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 24276216, NULL, 1770140, 'Pemanfaatan oleh Perusahaan Sendiri', '437', NULL, NULL, NULL),
('437', 'Pompa Air \"D10X-KBTS-FECA\" MA 4-47', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 24276216, NULL, 1770140, 'Pemanfaatan oleh Perusahaan Sendiri', '438', NULL, NULL, NULL),
('438', 'PTO', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 20062055, NULL, 1462858, 'Pemanfaatan oleh Perusahaan Sendiri', '439', NULL, NULL, NULL),
('439', 'Pompa Nettszh', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 187870432, NULL, 13698885, 'Pemanfaatan oleh Perusahaan Sendiri', '440', NULL, NULL, NULL),
('44', 'Adapter Actuator Ribbon Blender', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 10800000, NULL, 3121482, 'Pemanfaatan oleh Perusahaan Sendiri', '45', NULL, NULL, NULL),
('440', 'Hydraulic System untuk MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 449619618, NULL, 32784764, 'Pemanfaatan oleh Perusahaan Sendiri', '441', NULL, NULL, NULL),
('441', 'Hydraulic System untuk MA 4-44', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 449619618, NULL, 32784764, 'Pemanfaatan oleh Perusahaan Sendiri', '442', NULL, NULL, NULL),
('442', 'PZB Airckutch, torque 400 Nm', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 46246590, NULL, 3372147, 'Pemanfaatan oleh Perusahaan Sendiri', '443', NULL, NULL, NULL),
('443', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 626898206, NULL, 45711327, 'Pemanfaatan oleh Perusahaan Sendiri', '444', NULL, NULL, NULL),
('444', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 472072641, NULL, 34421964, 'Pemanfaatan oleh Perusahaan Sendiri', '445', NULL, NULL, NULL),
('445', 'Fire Suppression System MA 4-43', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 69311439, NULL, 5053959, 'Pemanfaatan oleh Perusahaan Sendiri', '446', NULL, NULL, NULL),
('446', 'Genset', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 145796136, NULL, 12149678, 'Pemanfaatan oleh Perusahaan Sendiri', '447', NULL, NULL, NULL),
('447', 'Fuel Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 83403966, NULL, 6950330, 'Pemanfaatan oleh Perusahaan Sendiri', '448', NULL, NULL, NULL),
('448', 'Hot Water Generator', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 1118549971, NULL, 93212498, 'Pemanfaatan oleh Perusahaan Sendiri', '449', NULL, NULL, NULL),
('449', 'Batch Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 37261632, NULL, 3105136, 'Pemanfaatan oleh Perusahaan Sendiri', '450', NULL, NULL, NULL),
('45', 'Roofing/Structure, Piping & Electric Mesin', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 550000000, NULL, 174766452, 'Pemanfaatan oleh Perusahaan Sendiri', '46', NULL, NULL, NULL),
('450', 'Lobe Pump Vogelsang VX-100', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 29954267, NULL, 2496189, 'Pemanfaatan oleh Perusahaan Sendiri', '451', NULL, NULL, NULL),
('451', 'Gear Motor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 102378905, NULL, 8531576, 'Pemanfaatan oleh Perusahaan Sendiri', '452', NULL, NULL, NULL),
('452', 'Kompresor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 63249794, NULL, 5270816, 'Pemanfaatan oleh Perusahaan Sendiri', '453', NULL, NULL, NULL),
('453', 'Pompa Grundfos KP 150 A', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 10089093, NULL, 840758, 'Pemanfaatan oleh Perusahaan Sendiri', '454', NULL, NULL, NULL),
('454', 'Laboratorium OSP Padang', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 153950846, NULL, 12829237, 'Pemanfaatan oleh Perusahaan Sendiri', '455', NULL, NULL, NULL),
('455', 'Oxsol Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 529261418, NULL, 44105118, 'Pemanfaatan oleh Perusahaan Sendiri', '456', NULL, NULL, NULL),
('456', 'Furukawa Hydraulic Crawler Drill HCR1500-D20II', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 585266720, 'Pemanfaatan oleh Perusahaan Sendiri', '457', NULL, NULL, NULL),
('457', 'Scania Truck P360CB-6X6 (Cab & Chassis Rigid)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 296084539, 'Pemanfaatan oleh Perusahaan Sendiri', '458', NULL, NULL, NULL),
('458', 'Bin MMT #21 Kapasitas 14 Ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 2113659671, NULL, 286224747, 'Pemanfaatan oleh Perusahaan Sendiri', '459', NULL, NULL, NULL),
('459', 'Hydarulic System MMT #21', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 608814891, NULL, 82443683, 'Pemanfaatan oleh Perusahaan Sendiri', '460', NULL, NULL, NULL),
('46', 'MMU/Bulk Emulsion FUSO FN527 ML 6x4 M/T Z 8631 KA', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 1021080612, NULL, 75000000, 'Pemanfaatan oleh Perusahaan Sendiri', '47', NULL, NULL, NULL),
('460', 'Controller PLC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 55622621, NULL, 7532230, 'Pemanfaatan oleh Perusahaan Sendiri', '461', NULL, NULL, NULL),
('461', 'Pressure Transmitter', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2015', 8, 'Investasi Perusahaan Sendiri', 43992438, NULL, 5957309, 'Pemanfaatan oleh Perusahaan Sendiri', '462', NULL, NULL, NULL),
('462', 'Control Monitor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2016', 8, 'Investasi Perusahaan Sendiri', 50566021, NULL, 6847482, 'Pemanfaatan oleh Perusahaan Sendiri', '463', NULL, NULL, NULL),
('463', 'Control System', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 80, '2016', 8, 'Investasi Perusahaan Sendiri', 238496945, NULL, 32296462, 'Pemanfaatan oleh Perusahaan Sendiri', '464', NULL, NULL, NULL),
('464', 'Modifikasi Bin MMT (Dawagel)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 80, '2016', 8, 'Investasi Perusahaan Sendiri', 242400000, NULL, 186850000, 'Pemanfaatan oleh Perusahaan Sendiri', '465', NULL, NULL, NULL),
('465', 'HWG (Hot Water Generator)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 80, '2016', 8, 'Investasi Perusahaan Sendiri', 450000000, NULL, 140625000, 'Pemanfaatan oleh Perusahaan Sendiri', '466', NULL, NULL, NULL),
('466', 'Flushing Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 80, '2016', 8, 'Investasi Perusahaan Sendiri', 9407000, NULL, 2939687, 'Pemanfaatan oleh Perusahaan Sendiri', '467', NULL, NULL, NULL),
('467', 'Geared Motor Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 80, '2016', 8, 'Investasi Perusahaan Sendiri', 94593000, NULL, 29560312, 'Pemanfaatan oleh Perusahaan Sendiri', '468', NULL, NULL, NULL),
('468', 'QC Bench Manufactur', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 80, '2016', 8, 'Investasi Perusahaan Sendiri', 379800000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '469', NULL, NULL, NULL),
('469', 'Viscometer Brookfield RVT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 80, '2016', 8, 'Investasi Perusahaan Sendiri', 54000000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '470', NULL, NULL, NULL),
('47', 'Alat kontrol & barang umum MMU & Truck (174/VI)', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 11129650, NULL, 500000, 'Pemanfaatan oleh Perusahaan Sendiri', '48', NULL, NULL, NULL),
('470', 'QC Bench Stainless Steel 304', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 80, '2021', 8, 'Investasi Perusahaan Sendiri', 10800000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '471', NULL, NULL, NULL),
('471', 'Rekondisi Bin MMT #22 (150000125-1)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2017', 8, 'Investasi Perusahaan Sendiri', 114400000, NULL, 40516667, 'Pemanfaatan oleh Perusahaan Sendiri', '472', NULL, NULL, NULL),
('472', 'Eye shower bahan SS - OSP IMK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 16765625, NULL, 6477628, 'Pemanfaatan oleh Perusahaan Sendiri', '473', NULL, NULL, NULL),
('473', 'Eye shower bahan SS - OSP IMK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 16765625, NULL, 6477628, 'Pemanfaatan oleh Perusahaan Sendiri', '474', NULL, NULL, NULL),
('474', 'Timbangan BSA 5201 CW - OSP IMK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 12140625, NULL, 4690695, 'Pemanfaatan oleh Perusahaan Sendiri', '475', NULL, NULL, NULL);
INSERT INTO `dahana_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('475', 'Viscometer brookfield RVT - oSP IMK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 55500000, NULL, 21443181, 'Pemanfaatan oleh Perusahaan Sendiri', '476', NULL, NULL, NULL),
('476', 'Pompa Flusing PM 3 phase - OSP IMK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 13296875, NULL, 5137430, 'Pemanfaatan oleh Perusahaan Sendiri', '477', NULL, NULL, NULL),
('477', 'Pompa Koshin GL 25-5+ explosion proof - OSP IMK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 23156250, NULL, 8846208, 'Pemanfaatan oleh Perusahaan Sendiri', '478', NULL, NULL, NULL),
('478', 'Kaeser Portable Compressor M200', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 700000000, NULL, 233333333, 'Pemanfaatan oleh Perusahaan Sendiri', '479', NULL, NULL, NULL),
('479', 'KP Mesin', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1063335000, 'Pemanfaatan oleh Perusahaan Sendiri', '480', NULL, NULL, NULL),
('48', 'Hydraulic System MMU', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 300000000, NULL, 600000, 'Pemanfaatan oleh Perusahaan Sendiri', '49', NULL, NULL, NULL),
('480', 'Dudukan KP Mesin', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 7000000, NULL, 2843750, 'Pemanfaatan oleh Perusahaan Sendiri', '481', NULL, NULL, NULL),
('481', 'Container 20ft OSP IMK-Kalteng', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 125000000, NULL, 2083333, 'Pemanfaatan oleh Perusahaan Sendiri', '482', NULL, NULL, NULL),
('482', 'OSP IMK Ex Berau', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1275000000, 'Pemanfaatan oleh Perusahaan Sendiri', '483', NULL, NULL, NULL),
('483', 'Furukawa  Hydraulic  Crawler Drill  Model  HCR1500', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 2034362891, 'Pemanfaatan oleh Perusahaan Sendiri', '484', NULL, NULL, NULL),
('484', 'Air Dryer kap. 37 kW PN:IDFA37E-23', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2017', 8, 'Investasi Perusahaan Sendiri', 29137140, NULL, 8116775, 'Pemanfaatan oleh Perusahaan Sendiri', '485', NULL, NULL, NULL),
('485', 'Truck Volvo FMX440 (MMT#24) Site Bakan Sulawesi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 90, '2018', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 768525281, 'Pemanfaatan oleh Perusahaan Sendiri', '486', NULL, NULL, NULL),
('486', 'Modifikasi Bin Partisi MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 275000000, NULL, 94901961, 'Pemanfaatan oleh Perusahaan Sendiri', '487', NULL, NULL, NULL),
('487', 'Engineering System Control', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 260000000, NULL, 89725491, 'Pemanfaatan oleh Perusahaan Sendiri', '488', NULL, NULL, NULL),
('488', 'System Hydrolic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2017', 8, 'Investasi Perusahaan Sendiri', 609688000, NULL, 210402133, 'Pemanfaatan oleh Perusahaan Sendiri', '489', NULL, NULL, NULL),
('489', 'Extend ROH Truck Volvo FMX440 (MMT#24)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 55000000, NULL, 18980392, 'Pemanfaatan oleh Perusahaan Sendiri', '490', NULL, NULL, NULL),
('49', 'High Pressure Plunger Pump CAT PUMP 271.0110', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 28937700, NULL, 8443214, 'Pemanfaatan oleh Perusahaan Sendiri', '50', NULL, NULL, NULL),
('490', 'MMT#25 Site Adaro', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 2141666667, NULL, 749583334, 'Pemanfaatan oleh Perusahaan Sendiri', '491', NULL, NULL, NULL),
('491', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 661016667, 'Pemanfaatan oleh Perusahaan Sendiri', '492', NULL, NULL, NULL),
('492', 'Vogelsang type Rotary lobe pump model VX136-105Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 130000000, NULL, 57460000, 'Pemanfaatan oleh Perusahaan Sendiri', '493', NULL, NULL, NULL),
('493', 'System Control MMT Adaro', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 799000000, NULL, 433278862, 'Pemanfaatan oleh Perusahaan Sendiri', '494', NULL, NULL, NULL),
('494', 'Nemo Pump Type NM076B002D09V', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 190807500, NULL, 89745605, 'Pemanfaatan oleh Perusahaan Sendiri', '495', NULL, NULL, NULL),
('495', 'System Hydrolic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 722342250, NULL, 370802355, 'Pemanfaatan oleh Perusahaan Sendiri', '496', NULL, NULL, NULL),
('496', 'Variable Pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2019', 8, 'Investasi Perusahaan Sendiri', 57475000, NULL, 27853270, 'Pemanfaatan oleh Perusahaan Sendiri', '497', NULL, NULL, NULL),
('497', 'Air Clutch c/w Drive Line Set', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 47025000, NULL, 22789038, 'Pemanfaatan oleh Perusahaan Sendiri', '498', NULL, NULL, NULL),
('498', 'Variable Pump TXV150', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 67450000, NULL, 32687308, 'Pemanfaatan oleh Perusahaan Sendiri', '499', NULL, NULL, NULL),
('499', 'Water Cat Pump 323 5 Framepiston Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 22500000, NULL, 10263158, 'Pemanfaatan oleh Perusahaan Sendiri', '500', NULL, NULL, NULL),
('5', 'Yu-Ken Pump A-145.SR.01; KS-60', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2000', 8, 'Investasi Perusahaan Sendiri', 41830800, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '6', NULL, NULL, NULL),
('50', 'High Pressure Plunger Pump CAT PUMP 271.0220', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 28422900, NULL, 8293107, 'Pemanfaatan oleh Perusahaan Sendiri', '51', NULL, NULL, NULL),
('500', 'Diesel Oil Cat Pump 323 5 Framepiston Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 22500000, NULL, 10263158, 'Pemanfaatan oleh Perusahaan Sendiri', '501', NULL, NULL, NULL),
('501', 'Acetic Acid Cat pump 271.0770', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 55000000, NULL, 25087719, 'Pemanfaatan oleh Perusahaan Sendiri', '502', NULL, NULL, NULL),
('502', 'Urea Cat pump 271.0770', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 55000000, NULL, 25087719, 'Pemanfaatan oleh Perusahaan Sendiri', '503', NULL, NULL, NULL),
('503', 'Fire suprression', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 38913333, 'Pemanfaatan oleh Perusahaan Sendiri', '504', NULL, NULL, NULL),
('504', 'Extend Wheel base and ROH Volvo', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 105000000, NULL, 42000000, 'Pemanfaatan oleh Perusahaan Sendiri', '505', NULL, NULL, NULL),
('505', 'MMT#26 Site Adaro', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2141666666, NULL, 1130324074, 'Pemanfaatan oleh Perusahaan Sendiri', '506', NULL, NULL, NULL),
('506', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1097317965, 'Pemanfaatan oleh Perusahaan Sendiri', '507', NULL, NULL, NULL),
('507', 'Vogelsang type Rotary lobe pump model VX136-105Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 130000000, NULL, 57460000, 'Pemanfaatan oleh Perusahaan Sendiri', '508', NULL, NULL, NULL),
('508', 'System Control MMT Petrosea', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 799000000, NULL, 433278862, 'Pemanfaatan oleh Perusahaan Sendiri', '509', NULL, NULL, NULL),
('509', 'Nemo Pump Type NM076B002D09V', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 190807500, NULL, 89745605, 'Pemanfaatan oleh Perusahaan Sendiri', '510', NULL, NULL, NULL),
('51', 'High Pressure Plunger Pump CAT PUMP 240', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 7157700, NULL, 2092421, 'Pemanfaatan oleh Perusahaan Sendiri', '52', NULL, NULL, NULL),
('510', 'System Hydrolic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 722342250, NULL, 370802355, 'Pemanfaatan oleh Perusahaan Sendiri', '511', NULL, NULL, NULL),
('511', 'Variable Pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 57475000, NULL, 27853270, 'Pemanfaatan oleh Perusahaan Sendiri', '512', NULL, NULL, NULL),
('512', 'Air Clutch c/w Drive Line Set', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 47025000, NULL, 22789038, 'Pemanfaatan oleh Perusahaan Sendiri', '513', NULL, NULL, NULL),
('513', 'Variable Pump TXV150', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 67450000, NULL, 32687308, 'Pemanfaatan oleh Perusahaan Sendiri', '514', NULL, NULL, NULL),
('514', 'Water Cat Pump 323 5 Framepiston Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 16500000, NULL, 7526316, 'Pemanfaatan oleh Perusahaan Sendiri', '515', NULL, NULL, NULL),
('515', 'Diesel Oil Cat Pump 323 5 Framepiston Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 22500000, NULL, 10263158, 'Pemanfaatan oleh Perusahaan Sendiri', '516', NULL, NULL, NULL),
('516', 'Acetic Acid Cat pump 271.0770', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 75000000, NULL, 34210526, 'Pemanfaatan oleh Perusahaan Sendiri', '517', NULL, NULL, NULL),
('517', 'Urea Cat pump 271.0770', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 75000000, NULL, 34210526, 'Pemanfaatan oleh Perusahaan Sendiri', '518', NULL, NULL, NULL),
('518', 'Extend Wheel base and ROH Volvo', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 105000000, NULL, 42000000, 'Pemanfaatan oleh Perusahaan Sendiri', '519', NULL, NULL, NULL),
('519', 'Fire Suprression', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 46261601, 'Pemanfaatan oleh Perusahaan Sendiri', '520', NULL, NULL, NULL),
('52', 'High Pressure Plunger Pump CAT PUMP 240', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 7157700, NULL, 2092421, 'Pemanfaatan oleh Perusahaan Sendiri', '53', NULL, NULL, NULL),
('520', 'Fabrikasi Mesin TNT Filling Plant', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 1187710000, NULL, 346415417, 'Pemanfaatan oleh Perusahaan Sendiri', '521', NULL, NULL, NULL),
('521', 'KP Mesin CAP-A3 Explosive Auto', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1375800156, 'Pemanfaatan oleh Perusahaan Sendiri', '522', NULL, NULL, NULL),
('522', 'Dudukan KP Mesin', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 7000000, NULL, 2606667, 'Pemanfaatan oleh Perusahaan Sendiri', '523', NULL, NULL, NULL),
('523', 'Lifter Conveyor (Pendukung KP Machine)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 85000000, NULL, 34000000, 'Pemanfaatan oleh Perusahaan Sendiri', '524', NULL, NULL, NULL),
('524', 'Mini OSP Tonasa', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1456314738, 'Pemanfaatan oleh Perusahaan Sendiri', '525', NULL, NULL, NULL),
('525', 'HWG 315KW', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 415000000, NULL, 160252347, 'Pemanfaatan oleh Perusahaan Sendiri', '526', NULL, NULL, NULL),
('526', 'Vogelsang VX100-90', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2018', 8, 'Investasi Perusahaan Sendiri', 135000000, NULL, 52130282, 'Pemanfaatan oleh Perusahaan Sendiri', '527', NULL, NULL, NULL),
('527', 'Vogelsang VX136-105', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 135000000, NULL, 52130282, 'Pemanfaatan oleh Perusahaan Sendiri', '528', NULL, NULL, NULL),
('528', 'Vogelsang VX136-210', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 135000000, NULL, 52130282, 'Pemanfaatan oleh Perusahaan Sendiri', '529', NULL, NULL, NULL),
('529', 'Pompa air Grundfos CMS5-6', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2019', 8, 'Investasi Perusahaan Sendiri', 20800000, NULL, 8031925, 'Pemanfaatan oleh Perusahaan Sendiri', '530', NULL, NULL, NULL),
('53', 'High Pressure Plunger Pump CAT PUMP 240', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2009', 8, 'Investasi Perusahaan Sendiri', 7157700, NULL, 2092421, 'Pemanfaatan oleh Perusahaan Sendiri', '54', NULL, NULL, NULL),
('530', 'Viscometer merk Brookfield', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2018', 8, 'Investasi Perusahaan Sendiri', 44892688, NULL, 17335321, 'Pemanfaatan oleh Perusahaan Sendiri', '531', NULL, NULL, NULL),
('531', 'Pompa solar gear pump merk koshin GL25-5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 23400000, NULL, 9035916, 'Pemanfaatan oleh Perusahaan Sendiri', '532', NULL, NULL, NULL),
('532', 'Eye shower bahan SS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 18850000, NULL, 7278931, 'Pemanfaatan oleh Perusahaan Sendiri', '533', NULL, NULL, NULL),
('533', 'Timbangan digital AND', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 13650000, NULL, 5270950, 'Pemanfaatan oleh Perusahaan Sendiri', '534', NULL, NULL, NULL),
('534', 'Capasitor merk Agilent/Escort ELC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 10400000, NULL, 4015963, 'Pemanfaatan oleh Perusahaan Sendiri', '535', NULL, NULL, NULL),
('535', 'Flow meter Solar, Bengas oval OGM 25', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 18480000, NULL, 7136056, 'Pemanfaatan oleh Perusahaan Sendiri', '536', NULL, NULL, NULL),
('536', 'Flow meter Air, Incometer 1\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 5720000, NULL, 2208779, 'Pemanfaatan oleh Perusahaan Sendiri', '537', NULL, NULL, NULL),
('537', 'Counter model H7CX AN', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 2325000, NULL, 897800, 'Pemanfaatan oleh Perusahaan Sendiri', '538', NULL, NULL, NULL),
('538', 'Genset & Panel Outdoor 600x300x250', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 61578000, NULL, 23778359, 'Pemanfaatan oleh Perusahaan Sendiri', '539', NULL, NULL, NULL),
('539', 'Compressor merk ELGI 10 HP/7.5 Kw', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 31488250, NULL, 12159196, 'Pemanfaatan oleh Perusahaan Sendiri', '540', NULL, NULL, NULL),
('54', 'Caterpillar Generator GEP 110', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2000', 8, 'Investasi Perusahaan Sendiri', 167302450, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '55', NULL, NULL, NULL),
('540', 'Pressure switch accessories model P1003A', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 53010000, NULL, 20469824, 'Pemanfaatan oleh Perusahaan Sendiri', '541', NULL, NULL, NULL),
('541', 'Flow switch with accessories, model S168', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 29295000, NULL, 11312271, 'Pemanfaatan oleh Perusahaan Sendiri', '542', NULL, NULL, NULL),
('542', 'Container Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 236691258, NULL, 91398384, 'Pemanfaatan oleh Perusahaan Sendiri', '543', NULL, NULL, NULL),
('543', 'Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 236317961, NULL, 91254236, 'Pemanfaatan oleh Perusahaan Sendiri', '544', NULL, NULL, NULL),
('544', 'Motor Agitator Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 28820303, NULL, 11128967, 'Pemanfaatan oleh Perusahaan Sendiri', '545', NULL, NULL, NULL),
('545', 'QC Bench Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 14882539, NULL, 5746896, 'Pemanfaatan oleh Perusahaan Sendiri', '546', NULL, NULL, NULL),
('546', 'Daily Tank HWG Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 5079333, NULL, 1961386, 'Pemanfaatan oleh Perusahaan Sendiri', '547', NULL, NULL, NULL),
('547', 'Flushing Tank Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 22964572, NULL, 8867775, 'Pemanfaatan oleh Perusahaan Sendiri', '548', NULL, NULL, NULL),
('548', 'Strainer Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 36256896, NULL, 14000609, 'Pemanfaatan oleh Perusahaan Sendiri', '549', NULL, NULL, NULL),
('549', 'Piping Oxsol Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 186597667, NULL, 72054733, 'Pemanfaatan oleh Perusahaan Sendiri', '550', NULL, NULL, NULL),
('55', 'Compresor Mesin Pengering Udara', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 5610000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '56', NULL, NULL, NULL),
('550', 'Ribbon Blender Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 622502303, NULL, 240379410, 'Pemanfaatan oleh Perusahaan Sendiri', '551', NULL, NULL, NULL),
('551', 'Motor Ribbon Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 130016273, NULL, 50205814, 'Pemanfaatan oleh Perusahaan Sendiri', '552', NULL, NULL, NULL),
('552', 'Unit Batch Tank Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 118382736, NULL, 45713522, 'Pemanfaatan oleh Perusahaan Sendiri', '553', NULL, NULL, NULL),
('553', 'QC Bench Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 13802355, NULL, 5329782, 'Pemanfaatan oleh Perusahaan Sendiri', '554', NULL, NULL, NULL),
('554', 'Platform Ribbon Blender Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 12284182, NULL, 4743540, 'Pemanfaatan oleh Perusahaan Sendiri', '555', NULL, NULL, NULL),
('555', 'Platform Batch Tank Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 13654875, NULL, 5272834, 'Pemanfaatan oleh Perusahaan Sendiri', '556', NULL, NULL, NULL),
('556', 'Container Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 190907994, NULL, 73719166, 'Pemanfaatan oleh Perusahaan Sendiri', '557', NULL, NULL, NULL),
('557', 'Piping Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 67589029, NULL, 26099519, 'Pemanfaatan oleh Perusahaan Sendiri', '558', NULL, NULL, NULL),
('558', 'Penunjang Unit Kontrrol OSP Tonasa', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 370320877, NULL, 142999494, 'Pemanfaatan oleh Perusahaan Sendiri', '559', NULL, NULL, NULL),
('559', 'Upgrading Tanki Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 151100000, NULL, 71069329, 'Pemanfaatan oleh Perusahaan Sendiri', '560', NULL, NULL, NULL),
('56', 'Generator YANMAR 14 YD', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 66774750, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '57', NULL, NULL, NULL),
('560', 'Mini OSP BAKAN', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1599077187, 'Pemanfaatan oleh Perusahaan Sendiri', '561', NULL, NULL, NULL),
('561', 'Pompa Vogelsang', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 133333333, NULL, 49650793, 'Pemanfaatan oleh Perusahaan Sendiri', '562', NULL, NULL, NULL),
('562', 'Pompa Vogelsang', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 133333333, NULL, 49650793, 'Pemanfaatan oleh Perusahaan Sendiri', '563', NULL, NULL, NULL),
('563', 'Pompa Vogelsang', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 133333333, NULL, 49650793, 'Pemanfaatan oleh Perusahaan Sendiri', '564', NULL, NULL, NULL),
('564', 'Kontainer 20 feet', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 59333333, NULL, 34766507, 'Pemanfaatan oleh Perusahaan Sendiri', '565', NULL, NULL, NULL),
('565', 'Viscometer merk Brookfield', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 57000000, NULL, 21225714, 'Pemanfaatan oleh Perusahaan Sendiri', '566', NULL, NULL, NULL),
('566', 'Pompa solar gear pump,merk Koshin GL25-5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 21375000, NULL, 7959643, 'Pemanfaatan oleh Perusahaan Sendiri', '567', NULL, NULL, NULL),
('567', 'Pompa air Grundfos CMS 5-6', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 19000000, NULL, 7075239, 'Pemanfaatan oleh Perusahaan Sendiri', '568', NULL, NULL, NULL),
('568', 'Eye shower bahan SS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 17218750, NULL, 6411934, 'Pemanfaatan oleh Perusahaan Sendiri', '569', NULL, NULL, NULL),
('569', 'Timbangan Digital AND', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 12468750, NULL, 4643125, 'Pemanfaatan oleh Perusahaan Sendiri', '570', NULL, NULL, NULL),
('57', 'Compressor Pengering Udara DEHUMID', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2002', 8, 'Investasi Perusahaan Sendiri', 5313000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '58', NULL, NULL, NULL),
('570', 'Capasitor merk Agilent', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 9500000, NULL, 3537619, 'Pemanfaatan oleh Perusahaan Sendiri', '571', NULL, NULL, NULL),
('571', 'Rekondisi Genset Cummins 220 KVA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 14926500, NULL, 5558344, 'Pemanfaatan oleh Perusahaan Sendiri', '572', NULL, NULL, NULL),
('572', 'Pressure switch accessories model P1003A', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 35340000, NULL, 13159943, 'Pemanfaatan oleh Perusahaan Sendiri', '573', NULL, NULL, NULL),
('573', 'Flow switch with accessories, model S168', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 29295000, NULL, 10908900, 'Pemanfaatan oleh Perusahaan Sendiri', '574', NULL, NULL, NULL),
('574', 'Pressure switch accessories model P1003A', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 17670000, NULL, 6579972, 'Pemanfaatan oleh Perusahaan Sendiri', '575', NULL, NULL, NULL),
('575', 'Counter model H7CX AN', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 2325000, NULL, 865786, 'Pemanfaatan oleh Perusahaan Sendiri', '576', NULL, NULL, NULL),
('576', 'Wire & accesories LIYCY 4', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 1860000, NULL, 692628, 'Pemanfaatan oleh Perusahaan Sendiri', '577', NULL, NULL, NULL),
('577', 'Panel Outdoor 600x300x250', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 1395000, NULL, 519472, 'Pemanfaatan oleh Perusahaan Sendiri', '578', NULL, NULL, NULL),
('578', 'Compressor merk ELGI 10 HP/7.5 Kw', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 31488250, NULL, 11725624, 'Pemanfaatan oleh Perusahaan Sendiri', '579', NULL, NULL, NULL),
('579', 'Flow meter Solar, Bengas oval OGM 25', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 18480000, NULL, 6881600, 'Pemanfaatan oleh Perusahaan Sendiri', '580', NULL, NULL, NULL),
('58', 'Compressor S 29-B', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2002', 8, 'Investasi Perusahaan Sendiri', 73597202, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '59', NULL, NULL, NULL),
('580', 'Flow meter Air, Incometer 1\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 5720000, NULL, 2130019, 'Pemanfaatan oleh Perusahaan Sendiri', '581', NULL, NULL, NULL),
('581', 'Container Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 236691258, NULL, 138689806, 'Pemanfaatan oleh Perusahaan Sendiri', '582', NULL, NULL, NULL),
('582', 'Oxsol Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 236317961, NULL, 88000308, 'Pemanfaatan oleh Perusahaan Sendiri', '583', NULL, NULL, NULL),
('583', 'Motor Agitator Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 28820303, NULL, 10732132, 'Pemanfaatan oleh Perusahaan Sendiri', '584', NULL, NULL, NULL),
('584', 'QC Bench Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 14882539, NULL, 5541974, 'Pemanfaatan oleh Perusahaan Sendiri', '585', NULL, NULL, NULL),
('585', 'Daily Tank HWG Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 5079333, NULL, 1891446, 'Pemanfaatan oleh Perusahaan Sendiri', '586', NULL, NULL, NULL),
('586', 'Flushing Tank Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 22964571, NULL, 8551569, 'Pemanfaatan oleh Perusahaan Sendiri', '587', NULL, NULL, NULL),
('587', 'Strainer Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 36256896, NULL, 13501378, 'Pemanfaatan oleh Perusahaan Sendiri', '588', NULL, NULL, NULL),
('588', 'Piping Oxsol Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 186597667, NULL, 69485417, 'Pemanfaatan oleh Perusahaan Sendiri', '589', NULL, NULL, NULL),
('589', 'container Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 190907994, NULL, 71090500, 'Pemanfaatan oleh Perusahaan Sendiri', '590', NULL, NULL, NULL),
('59', 'High Pressure Plunger Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2007', 8, 'Investasi Perusahaan Sendiri', 30505860, NULL, 4475840, 'Pemanfaatan oleh Perusahaan Sendiri', '60', NULL, NULL, NULL),
('590', 'Ribbon Blender Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 622502303, NULL, 231808001, 'Pemanfaatan oleh Perusahaan Sendiri', '591', NULL, NULL, NULL),
('591', 'Motor Ribbon Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 130016273, NULL, 48415584, 'Pemanfaatan oleh Perusahaan Sendiri', '592', NULL, NULL, NULL),
('592', 'Unit Batch Tank Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 118382736, NULL, 44083477, 'Pemanfaatan oleh Perusahaan Sendiri', '593', NULL, NULL, NULL),
('593', 'QC Bench Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 13802355, NULL, 5139734, 'Pemanfaatan oleh Perusahaan Sendiri', '594', NULL, NULL, NULL),
('594', 'Platform Ribbon Blender Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 12284182, NULL, 4574395, 'Pemanfaatan oleh Perusahaan Sendiri', '595', NULL, NULL, NULL),
('595', 'Platform Batch Tank Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 13654875, NULL, 5084815, 'Pemanfaatan oleh Perusahaan Sendiri', '596', NULL, NULL, NULL),
('596', 'Piping Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 67589029, NULL, 25168867, 'Pemanfaatan oleh Perusahaan Sendiri', '597', NULL, NULL, NULL),
('597', 'Pompa Sentripugal Merk Goulds', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 192000000, NULL, 87578948, 'Pemanfaatan oleh Perusahaan Sendiri', '598', NULL, NULL, NULL),
('598', 'Micromate', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 193950000, NULL, 88468421, 'Pemanfaatan oleh Perusahaan Sendiri', '599', NULL, NULL, NULL),
('599', 'Ultrasonic Seal Merk Bronson', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 290000000, NULL, 120038813, 'Pemanfaatan oleh Perusahaan Sendiri', '600', NULL, NULL, NULL),
('6', 'SCANIA P93 MMT#1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2000', 8, 'Investasi Perusahaan Sendiri', 1657412500, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '7', NULL, NULL, NULL),
('60', 'Air Dryer Atlas Copco utk Produksi Tsm', NULL, NULL, NULL, NULL, 'Mesin', 'Rusak Berat', 'Utilized', 100, '2007', 8, 'Investasi Perusahaan Sendiri', 15000000, NULL, 3266229, 'Pemanfaatan oleh Perusahaan Sendiri', '61', NULL, NULL, NULL),
('600', 'MMT#30 Truck Scania 6X6 360hp', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 2025500000, NULL, 1291256250, 'Pemanfaatan oleh Perusahaan Sendiri', '601', NULL, NULL, NULL),
('601', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 2125000000, NULL, 1354687500, 'Pemanfaatan oleh Perusahaan Sendiri', '602', NULL, NULL, NULL),
('602', 'System control MMT kap 16 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2018', 8, 'Investasi Perusahaan Sendiri', 472000000, NULL, 324500000, 'Pemanfaatan oleh Perusahaan Sendiri', '603', NULL, NULL, NULL),
('603', 'Cat pump 271.0110', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 75, '2019', 8, 'Investasi Perusahaan Sendiri', 55000000, NULL, 35062500, 'Pemanfaatan oleh Perusahaan Sendiri', '604', NULL, NULL, NULL),
('604', 'Cat pump 271.0220', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 53000000, NULL, 33787500, 'Pemanfaatan oleh Perusahaan Sendiri', '605', NULL, NULL, NULL),
('605', 'Cat pump 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14000000, NULL, 8925000, 'Pemanfaatan oleh Perusahaan Sendiri', '606', NULL, NULL, NULL),
('606', 'Cat pump 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14000000, NULL, 8925000, 'Pemanfaatan oleh Perusahaan Sendiri', '607', NULL, NULL, NULL),
('607', 'Vogelsang VX 136-105Q Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 125000000, NULL, 79687500, 'Pemanfaatan oleh Perusahaan Sendiri', '608', NULL, NULL, NULL),
('608', 'Vogelsang VX 100-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 90000000, NULL, 57375000, 'Pemanfaatan oleh Perusahaan Sendiri', '609', NULL, NULL, NULL),
('609', 'Lake monitor model B3A-6HB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3825000, 'Pemanfaatan oleh Perusahaan Sendiri', '610', NULL, NULL, NULL),
('61', 'Air Compressor Pabrik Nonel Subang', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2008', 8, 'Investasi Perusahaan Sendiri', 59121323, NULL, 12354856, 'Pemanfaatan oleh Perusahaan Sendiri', '62', NULL, NULL, NULL),
('610', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3825000, 'Pemanfaatan oleh Perusahaan Sendiri', '611', NULL, NULL, NULL),
('611', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3825000, 'Pemanfaatan oleh Perusahaan Sendiri', '612', NULL, NULL, NULL),
('612', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3825000, 'Pemanfaatan oleh Perusahaan Sendiri', '613', NULL, NULL, NULL),
('613', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13578750, 'Pemanfaatan oleh Perusahaan Sendiri', '614', NULL, NULL, NULL),
('614', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13578750, 'Pemanfaatan oleh Perusahaan Sendiri', '615', NULL, NULL, NULL),
('615', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13578750, 'Pemanfaatan oleh Perusahaan Sendiri', '616', NULL, NULL, NULL),
('616', 'Orbit motor OMS 160 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 20100000, NULL, 12813750, 'Pemanfaatan oleh Perusahaan Sendiri', '617', NULL, NULL, NULL),
('617', 'Orbit motor OMS 315 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 31500000, NULL, 20081250, 'Pemanfaatan oleh Perusahaan Sendiri', '618', NULL, NULL, NULL),
('618', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11475000, 'Pemanfaatan oleh Perusahaan Sendiri', '619', NULL, NULL, NULL),
('619', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11475000, 'Pemanfaatan oleh Perusahaan Sendiri', '620', NULL, NULL, NULL),
('62', 'Blastmate III', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 113137865, NULL, 40250890, 'Pemanfaatan oleh Perusahaan Sendiri', '63', NULL, NULL, NULL),
('620', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11475000, 'Pemanfaatan oleh Perusahaan Sendiri', '621', NULL, NULL, NULL),
('621', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11475000, 'Pemanfaatan oleh Perusahaan Sendiri', '622', NULL, NULL, NULL),
('622', 'Variable pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 60450000, NULL, 20925000, 'Pemanfaatan oleh Perusahaan Sendiri', '623', NULL, NULL, NULL),
('623', 'Piston pump XPi108', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 24700000, NULL, 15746250, 'Pemanfaatan oleh Perusahaan Sendiri', '624', NULL, NULL, NULL),
('624', 'System Hydraulic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 315000000, NULL, 216562500, 'Pemanfaatan oleh Perusahaan Sendiri', '625', NULL, NULL, NULL),
('625', 'Chubb fire supression', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 58650625, 'Pemanfaatan oleh Perusahaan Sendiri', '626', NULL, NULL, NULL),
('626', 'MMT#31 Truck Scania 6X6 360hp', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2025500000, NULL, 1262561667, 'Pemanfaatan oleh Perusahaan Sendiri', '627', NULL, NULL, NULL),
('627', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2125000000, NULL, 708333333, 'Pemanfaatan oleh Perusahaan Sendiri', '628', NULL, NULL, NULL),
('628', 'System control MMT kap 16 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 472000000, NULL, 220266667, 'Pemanfaatan oleh Perusahaan Sendiri', '629', NULL, NULL, NULL),
('629', 'Cat pump 271.0110', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 55000000, NULL, 34283333, 'Pemanfaatan oleh Perusahaan Sendiri', '630', NULL, NULL, NULL),
('63', 'A Weight Microphone', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 14044719, NULL, 4991388, 'Pemanfaatan oleh Perusahaan Sendiri', '64', NULL, NULL, NULL),
('630', 'Cat pump 271.0220', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 53000000, NULL, 33036667, 'Pemanfaatan oleh Perusahaan Sendiri', '631', NULL, NULL, NULL),
('631', 'Cat pump 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14000000, NULL, 8726667, 'Pemanfaatan oleh Perusahaan Sendiri', '632', NULL, NULL, NULL),
('632', 'Cat pump 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14000000, NULL, 8726667, 'Pemanfaatan oleh Perusahaan Sendiri', '633', NULL, NULL, NULL),
('633', 'Vogelsang VX 136-105Q Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 125000000, NULL, 77916667, 'Pemanfaatan oleh Perusahaan Sendiri', '634', NULL, NULL, NULL),
('634', 'Vogelsang VX 100-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 90000000, NULL, 56100000, 'Pemanfaatan oleh Perusahaan Sendiri', '635', NULL, NULL, NULL),
('635', 'Lake monitor model B3A-6HB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3740000, 'Pemanfaatan oleh Perusahaan Sendiri', '636', NULL, NULL, NULL),
('636', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3740000, 'Pemanfaatan oleh Perusahaan Sendiri', '637', NULL, NULL, NULL),
('637', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3740000, 'Pemanfaatan oleh Perusahaan Sendiri', '638', NULL, NULL, NULL),
('638', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3740000, 'Pemanfaatan oleh Perusahaan Sendiri', '639', NULL, NULL, NULL),
('639', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13277000, 'Pemanfaatan oleh Perusahaan Sendiri', '640', NULL, NULL, NULL),
('64', 'Blastmate Advanced Module Software', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 16385416, NULL, 5821292, 'Pemanfaatan oleh Perusahaan Sendiri', '65', NULL, NULL, NULL),
('640', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13277000, 'Pemanfaatan oleh Perusahaan Sendiri', '641', NULL, NULL, NULL),
('641', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13277000, 'Pemanfaatan oleh Perusahaan Sendiri', '642', NULL, NULL, NULL),
('642', 'Orbit motor OMS 160 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 20100000, NULL, 12529000, 'Pemanfaatan oleh Perusahaan Sendiri', '643', NULL, NULL, NULL),
('643', 'Orbit motor OMS 315 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 31500000, NULL, 19635000, 'Pemanfaatan oleh Perusahaan Sendiri', '644', NULL, NULL, NULL),
('644', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11220000, 'Pemanfaatan oleh Perusahaan Sendiri', '645', NULL, NULL, NULL),
('645', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11220000, 'Pemanfaatan oleh Perusahaan Sendiri', '646', NULL, NULL, NULL),
('646', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11220000, 'Pemanfaatan oleh Perusahaan Sendiri', '647', NULL, NULL, NULL),
('647', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11220000, 'Pemanfaatan oleh Perusahaan Sendiri', '648', NULL, NULL, NULL),
('648', 'Variable pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 60450000, NULL, 20150000, 'Pemanfaatan oleh Perusahaan Sendiri', '649', NULL, NULL, NULL),
('649', 'Piston pump XPi108', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 24700000, NULL, 8233333, 'Pemanfaatan oleh Perusahaan Sendiri', '650', NULL, NULL, NULL),
('65', 'Mesin Crusher Wax', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 10000000, NULL, 3833103, 'Pemanfaatan oleh Perusahaan Sendiri', '66', NULL, NULL, NULL),
('650', 'System Hydraulic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 315000000, NULL, 147000000, 'Pemanfaatan oleh Perusahaan Sendiri', '651', NULL, NULL, NULL),
('651', 'Chubb fire supression', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 56873333, 'Pemanfaatan oleh Perusahaan Sendiri', '652', NULL, NULL, NULL),
('652', 'MMT#32 Truck Scania 6X6 360hp', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1734418767, 'Pemanfaatan oleh Perusahaan Sendiri', '653', NULL, NULL, NULL),
('653', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 90000000, NULL, 30000000, 'Pemanfaatan oleh Perusahaan Sendiri', '654', NULL, NULL, NULL),
('654', 'System control MMT kap 16 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 472000000, NULL, 220266667, 'Pemanfaatan oleh Perusahaan Sendiri', '655', NULL, NULL, NULL),
('655', 'Cat pump 271.0110', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 55000000, NULL, 34283333, 'Pemanfaatan oleh Perusahaan Sendiri', '656', NULL, NULL, NULL),
('656', 'Cat pump 271.0220', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 53000000, NULL, 33036667, 'Pemanfaatan oleh Perusahaan Sendiri', '657', NULL, NULL, NULL),
('657', 'Cat pump 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14000000, NULL, 8726667, 'Pemanfaatan oleh Perusahaan Sendiri', '658', NULL, NULL, NULL),
('658', 'Cat pump 240', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14000000, NULL, 8726667, 'Pemanfaatan oleh Perusahaan Sendiri', '659', NULL, NULL, NULL),
('659', 'Vogelsang VX 136-105Q Rotary Lobe Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 125000000, NULL, 77916667, 'Pemanfaatan oleh Perusahaan Sendiri', '660', NULL, NULL, NULL),
('66', 'On Site Plant Adaro', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2011', 8, 'Investasi Perusahaan Sendiri', 551936008, NULL, 234116547, 'Pemanfaatan oleh Perusahaan Sendiri', '67', NULL, NULL, NULL),
('660', 'Vogelsang VX 100-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 90000000, NULL, 56100000, 'Pemanfaatan oleh Perusahaan Sendiri', '661', NULL, NULL, NULL),
('661', 'Lake monitor model B3A-6HB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3740000, 'Pemanfaatan oleh Perusahaan Sendiri', '662', NULL, NULL, NULL);
INSERT INTO `dahana_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('662', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3740000, 'Pemanfaatan oleh Perusahaan Sendiri', '663', NULL, NULL, NULL),
('663', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3740000, 'Pemanfaatan oleh Perusahaan Sendiri', '664', NULL, NULL, NULL),
('664', 'Lake monitor model B3A-6WB-01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 6000000, NULL, 3740000, 'Pemanfaatan oleh Perusahaan Sendiri', '665', NULL, NULL, NULL),
('665', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13277000, 'Pemanfaatan oleh Perusahaan Sendiri', '666', NULL, NULL, NULL),
('666', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13277000, 'Pemanfaatan oleh Perusahaan Sendiri', '667', NULL, NULL, NULL),
('667', 'Orbit motor OMS 250 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 21300000, NULL, 13277000, 'Pemanfaatan oleh Perusahaan Sendiri', '668', NULL, NULL, NULL),
('668', 'Orbit motor OMS 160 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 20100000, NULL, 12529000, 'Pemanfaatan oleh Perusahaan Sendiri', '669', NULL, NULL, NULL),
('669', 'Orbit motor OMS 315 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 31500000, NULL, 19635000, 'Pemanfaatan oleh Perusahaan Sendiri', '670', NULL, NULL, NULL),
('67', 'On Site Plant Emulsion', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 339000000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '68', NULL, NULL, NULL),
('670', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11220000, 'Pemanfaatan oleh Perusahaan Sendiri', '671', NULL, NULL, NULL),
('671', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11220000, 'Pemanfaatan oleh Perusahaan Sendiri', '672', NULL, NULL, NULL),
('672', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11220000, 'Pemanfaatan oleh Perusahaan Sendiri', '673', NULL, NULL, NULL),
('673', 'Orbit motor OMS 32 EMD+socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18000000, NULL, 11220000, 'Pemanfaatan oleh Perusahaan Sendiri', '674', NULL, NULL, NULL),
('674', 'Variable pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 60450000, NULL, 20150000, 'Pemanfaatan oleh Perusahaan Sendiri', '675', NULL, NULL, NULL),
('675', 'Piston pump XPi108', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 24700000, NULL, 8233333, 'Pemanfaatan oleh Perusahaan Sendiri', '676', NULL, NULL, NULL),
('676', 'System Hydraulic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 315000000, NULL, 147000000, 'Pemanfaatan oleh Perusahaan Sendiri', '677', NULL, NULL, NULL),
('677', 'Upgrading Bin MMT 14 ke 16 Ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 55030215, 'Pemanfaatan oleh Perusahaan Sendiri', '678', NULL, NULL, NULL),
('678', 'Chubb fire supression', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 56873333, 'Pemanfaatan oleh Perusahaan Sendiri', '679', NULL, NULL, NULL),
('679', 'Mesin press kap. 30 ton (Pabrik Fuse Bomb)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 297698125, NULL, 161253150, 'Pemanfaatan oleh Perusahaan Sendiri', '680', NULL, NULL, NULL),
('68', 'Hot Water Boiler', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 373730000, NULL, 133720492, 'Pemanfaatan oleh Perusahaan Sendiri', '69', NULL, NULL, NULL),
('680', 'Mini OSP KBK-Kasongan (Ex. BSI)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 1773978347, NULL, 1071778585, 'Pemanfaatan oleh Perusahaan Sendiri', '681', NULL, NULL, NULL),
('681', 'Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 236691258, NULL, 143000969, 'Pemanfaatan oleh Perusahaan Sendiri', '682', NULL, NULL, NULL),
('682', 'Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 236317961, NULL, 142775435, 'Pemanfaatan oleh Perusahaan Sendiri', '683', NULL, NULL, NULL),
('683', 'Motor Agitator', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 28820304, NULL, 17412267, 'Pemanfaatan oleh Perusahaan Sendiri', '684', NULL, NULL, NULL),
('684', 'QC Bench', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14882539, NULL, 8991535, 'Pemanfaatan oleh Perusahaan Sendiri', '685', NULL, NULL, NULL),
('685', 'Daily Tank HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 5079333, NULL, 3068763, 'Pemanfaatan oleh Perusahaan Sendiri', '686', NULL, NULL, NULL),
('686', 'Flushing Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 22964571, NULL, 13874429, 'Pemanfaatan oleh Perusahaan Sendiri', '687', NULL, NULL, NULL),
('687', 'Strainer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 36256896, NULL, 21905208, 'Pemanfaatan oleh Perusahaan Sendiri', '688', NULL, NULL, NULL),
('688', 'Piping Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 186597667, NULL, 112736091, 'Pemanfaatan oleh Perusahaan Sendiri', '689', NULL, NULL, NULL),
('689', 'Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 190907994, NULL, 115340247, 'Pemanfaatan oleh Perusahaan Sendiri', '690', NULL, NULL, NULL),
('69', 'Aerasi Tank 10.000 ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 450000000, NULL, 142957103, 'Pemanfaatan oleh Perusahaan Sendiri', '70', NULL, NULL, NULL),
('690', 'Ribbon Blender', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 622502303, NULL, 376095141, 'Pemanfaatan oleh Perusahaan Sendiri', '691', NULL, NULL, NULL),
('691', 'Motor Ribbon', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 130016273, NULL, 78551499, 'Pemanfaatan oleh Perusahaan Sendiri', '692', NULL, NULL, NULL),
('692', 'Unit Batch Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 118382736, NULL, 71522903, 'Pemanfaatan oleh Perusahaan Sendiri', '693', NULL, NULL, NULL),
('693', 'QC Bench', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 13802355, NULL, 8338923, 'Pemanfaatan oleh Perusahaan Sendiri', '694', NULL, NULL, NULL),
('694', 'Platform Ribbon Blender', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 12284182, NULL, 7421692, 'Pemanfaatan oleh Perusahaan Sendiri', '695', NULL, NULL, NULL),
('695', 'Platform Batch Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 13654875, NULL, 8249821, 'Pemanfaatan oleh Perusahaan Sendiri', '696', NULL, NULL, NULL),
('696', 'Piping Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 67589029, NULL, 40835038, 'Pemanfaatan oleh Perusahaan Sendiri', '697', NULL, NULL, NULL),
('697', 'Unit Control & Penunjang OSP KBK', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 370320877, NULL, 223735529, 'Pemanfaatan oleh Perusahaan Sendiri', '698', NULL, NULL, NULL),
('698', 'Compressor merk ELGI', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 31500000, NULL, 19031250, 'Pemanfaatan oleh Perusahaan Sendiri', '699', NULL, NULL, NULL),
('699', 'Genset merk Cummins', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 242000000, NULL, 146208333, 'Pemanfaatan oleh Perusahaan Sendiri', '700', NULL, NULL, NULL),
('7', 'Thermometer Analog Elemen Spiral', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 9900000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '8', NULL, NULL, NULL),
('70', 'Storage Tank 20.000 ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 225000000, NULL, 74536802, 'Pemanfaatan oleh Perusahaan Sendiri', '71', NULL, NULL, NULL),
('700', 'Piping Valves & Accessories HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 150000000, NULL, 90625000, 'Pemanfaatan oleh Perusahaan Sendiri', '701', NULL, NULL, NULL),
('701', 'Flow meter Solar, Bengas oval OGM 25', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18480000, NULL, 11165000, 'Pemanfaatan oleh Perusahaan Sendiri', '702', NULL, NULL, NULL),
('702', 'Flow meter Air, Incometer 1\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 5720000, NULL, 3455833, 'Pemanfaatan oleh Perusahaan Sendiri', '703', NULL, NULL, NULL),
('703', 'Pompa air (bersih) grundfos CMS5-6', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 20800000, NULL, 12566667, 'Pemanfaatan oleh Perusahaan Sendiri', '704', NULL, NULL, NULL),
('704', 'Viscometer merk Brookfield', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 44892688, NULL, 27122666, 'Pemanfaatan oleh Perusahaan Sendiri', '705', NULL, NULL, NULL),
('705', 'Pompa solar gear pump merk Koshin GL25-5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 23400000, NULL, 14137500, 'Pemanfaatan oleh Perusahaan Sendiri', '706', NULL, NULL, NULL),
('706', 'Eye shower bahan SS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 18850000, NULL, 11388542, 'Pemanfaatan oleh Perusahaan Sendiri', '707', NULL, NULL, NULL),
('707', 'Timbangan digital AND', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 13650000, NULL, 8246875, 'Pemanfaatan oleh Perusahaan Sendiri', '708', NULL, NULL, NULL),
('708', 'Capasitor merk Agilent/Escort ELC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 10400000, NULL, 6283333, 'Pemanfaatan oleh Perusahaan Sendiri', '709', NULL, NULL, NULL),
('709', 'Pressure switch accessories model P1003A', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 53010000, NULL, 32026875, 'Pemanfaatan oleh Perusahaan Sendiri', '710', NULL, NULL, NULL),
('71', 'Storage Tank 20.000 ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 225000000, NULL, 74536802, 'Pemanfaatan oleh Perusahaan Sendiri', '72', NULL, NULL, NULL),
('710', 'Flow switch with accessories, model S168', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 29295000, NULL, 17699062, 'Pemanfaatan oleh Perusahaan Sendiri', '711', NULL, NULL, NULL),
('711', 'Counter model H7CX AN', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2325000, NULL, 1404687, 'Pemanfaatan oleh Perusahaan Sendiri', '712', NULL, NULL, NULL),
('712', 'Container 20 Feet', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 59333333, NULL, 35847221, 'Pemanfaatan oleh Perusahaan Sendiri', '713', NULL, NULL, NULL),
('713', 'Panel Outdoor 600x300x250', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 1395000, NULL, 842812, 'Pemanfaatan oleh Perusahaan Sendiri', '714', NULL, NULL, NULL),
('714', 'Pompa Vogelsang', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 375000000, NULL, 226562500, 'Pemanfaatan oleh Perusahaan Sendiri', '715', NULL, NULL, NULL),
('715', 'HWG 315 kW', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 415000000, NULL, 250729167, 'Pemanfaatan oleh Perusahaan Sendiri', '716', NULL, NULL, NULL),
('716', 'Genset merk Perkins 100 KVA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 233500000, NULL, 143505208, 'Pemanfaatan oleh Perusahaan Sendiri', '717', NULL, NULL, NULL),
('717', 'Air compressor type L22-10A merk CompAir', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 118500000, NULL, 72828125, 'Pemanfaatan oleh Perusahaan Sendiri', '718', NULL, NULL, NULL),
('718', 'Air dryer type F040-S', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 39500000, NULL, 24276042, 'Pemanfaatan oleh Perusahaan Sendiri', '719', NULL, NULL, NULL),
('719', 'Fill pump Koshin FR 200', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14725000, NULL, 9049740, 'Pemanfaatan oleh Perusahaan Sendiri', '720', NULL, NULL, NULL),
('72', 'Office, Workshop & Dry Container - OSP Melak', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 123823000, NULL, 44456005, 'Pemanfaatan oleh Perusahaan Sendiri', '73', NULL, NULL, NULL),
('720', 'Drum heater', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14962500, NULL, 9195703, 'Pemanfaatan oleh Perusahaan Sendiri', '721', NULL, NULL, NULL),
('721', 'HWG kap 315 kW', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 427500000, NULL, 262734375, 'Pemanfaatan oleh Perusahaan Sendiri', '722', NULL, NULL, NULL),
('722', 'Nemo pump NM038BY02S1B', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 41700000, NULL, 25628125, 'Pemanfaatan oleh Perusahaan Sendiri', '723', NULL, NULL, NULL),
('723', 'Blending Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 168000000, NULL, 103250000, 'Pemanfaatan oleh Perusahaan Sendiri', '724', NULL, NULL, NULL),
('724', 'Diaphragm pump DEPA Air, DL25-SA-TTT 1\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 53820000, NULL, 33076875, 'Pemanfaatan oleh Perusahaan Sendiri', '725', NULL, NULL, NULL),
('725', 'Diaphragm pump DEPA Air, DL50-PP-TTT 2\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 125680000, NULL, 77240833, 'Pemanfaatan oleh Perusahaan Sendiri', '726', NULL, NULL, NULL),
('726', 'Diaphragm pump DEPA Air, DL50-SA-TRT 2\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 115500000, NULL, 70984375, 'Pemanfaatan oleh Perusahaan Sendiri', '727', NULL, NULL, NULL),
('727', 'Mini OSP PPA-ABN Sanga-sanga', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1662095512, 'Pemanfaatan oleh Perusahaan Sendiri', '728', NULL, NULL, NULL),
('728', 'Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 236691258, NULL, 152863105, 'Pemanfaatan oleh Perusahaan Sendiri', '729', NULL, NULL, NULL),
('729', 'Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 236317961, NULL, 152622017, 'Pemanfaatan oleh Perusahaan Sendiri', '730', NULL, NULL, NULL),
('73', 'Material Penunjang Integrasi OSP Melak', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 217738992, NULL, 83605301, 'Pemanfaatan oleh Perusahaan Sendiri', '74', NULL, NULL, NULL),
('730', 'Motor Agitator', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 28820303, NULL, 18613112, 'Pemanfaatan oleh Perusahaan Sendiri', '731', NULL, NULL, NULL),
('731', 'QC Bench', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 14882539, NULL, 9611640, 'Pemanfaatan oleh Perusahaan Sendiri', '732', NULL, NULL, NULL),
('732', 'Daily Tank HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2019', 8, 'Investasi Perusahaan Sendiri', 5079333, NULL, 3280402, 'Pemanfaatan oleh Perusahaan Sendiri', '733', NULL, NULL, NULL),
('733', 'Flushing Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 65, '2020', 8, 'Investasi Perusahaan Sendiri', 22964571, NULL, 14831286, 'Pemanfaatan oleh Perusahaan Sendiri', '734', NULL, NULL, NULL),
('734', 'Strainer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 36256896, NULL, 23415912, 'Pemanfaatan oleh Perusahaan Sendiri', '735', NULL, NULL, NULL),
('735', 'Piping Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 186597667, NULL, 120510994, 'Pemanfaatan oleh Perusahaan Sendiri', '736', NULL, NULL, NULL),
('736', 'Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 190907994, NULL, 123294747, 'Pemanfaatan oleh Perusahaan Sendiri', '737', NULL, NULL, NULL),
('737', 'Ribbon Blender', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 622502305, NULL, 402032739, 'Pemanfaatan oleh Perusahaan Sendiri', '738', NULL, NULL, NULL),
('738', 'Motor Ribbon', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 130016273, NULL, 83968843, 'Pemanfaatan oleh Perusahaan Sendiri', '739', NULL, NULL, NULL),
('739', 'Unit Batch Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 118382736, NULL, 76455517, 'Pemanfaatan oleh Perusahaan Sendiri', '740', NULL, NULL, NULL),
('74', 'Storage Tank 20.000 ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 225000000, NULL, 74536802, 'Pemanfaatan oleh Perusahaan Sendiri', '75', NULL, NULL, NULL),
('740', 'QC Bench', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 13802355, NULL, 8914022, 'Pemanfaatan oleh Perusahaan Sendiri', '741', NULL, NULL, NULL),
('741', 'Platform Ribbon Blender', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 12284182, NULL, 7933533, 'Pemanfaatan oleh Perusahaan Sendiri', '742', NULL, NULL, NULL),
('742', 'Platform Batch Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 13654875, NULL, 8818774, 'Pemanfaatan oleh Perusahaan Sendiri', '743', NULL, NULL, NULL),
('743', 'Piping Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 67589029, NULL, 43651247, 'Pemanfaatan oleh Perusahaan Sendiri', '744', NULL, NULL, NULL),
('744', 'Unit Control & Electrical', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 370320877, NULL, 239165566, 'Pemanfaatan oleh Perusahaan Sendiri', '745', NULL, NULL, NULL),
('745', 'Ph meter merk Hanna HI2211 Lab OSP PPA-ABN', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 17647200, NULL, 11397150, 'Pemanfaatan oleh Perusahaan Sendiri', '746', NULL, NULL, NULL),
('746', '2 PcS Flow meter solar,Bengas oval OMG 25\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 18430000, NULL, 11902708, 'Pemanfaatan oleh Perusahaan Sendiri', '747', NULL, NULL, NULL),
('747', '1 Pcs Flow meter air, Inco meter 1\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 6270000, NULL, 4049375, 'Pemanfaatan oleh Perusahaan Sendiri', '748', NULL, NULL, NULL),
('748', 'Panel MDP kap. 150 Kva', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 28191185, NULL, 18206807, 'Pemanfaatan oleh Perusahaan Sendiri', '749', NULL, NULL, NULL),
('749', 'Panel control, panel IP 65 Sus 316', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 13321115, NULL, 8603221, 'Pemanfaatan oleh Perusahaan Sendiri', '750', NULL, NULL, NULL),
('75', 'Air Operated Double Diaphragm Pump SAND PIPER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 57217000, NULL, 17661265, 'Pemanfaatan oleh Perusahaan Sendiri', '76', NULL, NULL, NULL),
('750', 'Pompa air Gtundfos CM5-6:2900 rpm 3 (2 set)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 18823680, NULL, 12156960, 'Pemanfaatan oleh Perusahaan Sendiri', '751', NULL, NULL, NULL),
('751', 'Pompa solar gear pump Koshin GL 25', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 21176550, NULL, 13676521, 'Pemanfaatan oleh Perusahaan Sendiri', '752', NULL, NULL, NULL),
('752', 'Pompa submersble Grundfos KP 150 A', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 5294250, NULL, 3419204, 'Pemanfaatan oleh Perusahaan Sendiri', '753', NULL, NULL, NULL),
('753', 'Apar YAMATO multipurpose 6 kg (7 set)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 19769400, NULL, 12767737, 'Pemanfaatan oleh Perusahaan Sendiri', '754', NULL, NULL, NULL),
('754', 'Eye shower bahan SS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 17059050, NULL, 11017304, 'Pemanfaatan oleh Perusahaan Sendiri', '755', NULL, NULL, NULL),
('755', 'Drum tipper SS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 4117950, NULL, 2659509, 'Pemanfaatan oleh Perusahaan Sendiri', '756', NULL, NULL, NULL),
('756', 'Bursting disk uk. 2\" (6 pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 67059900, NULL, 43309519, 'Pemanfaatan oleh Perusahaan Sendiri', '757', NULL, NULL, NULL),
('757', 'Timbangan analog Nagata 100 kg', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 6470640, NULL, 4178955, 'Pemanfaatan oleh Perusahaan Sendiri', '758', NULL, NULL, NULL),
('758', 'Timbangan digital AND', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 12352950, NULL, 686275, 'Pemanfaatan oleh Perusahaan Sendiri', '759', NULL, NULL, NULL),
('759', 'Viscometer brookfield RVT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 56470680, NULL, 3137260, 'Pemanfaatan oleh Perusahaan Sendiri', '760', NULL, NULL, NULL),
('76', 'Unit kontrol penunjang OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 152860000, NULL, 48405665, 'Pemanfaatan oleh Perusahaan Sendiri', '77', NULL, NULL, NULL),
('760', 'Hydrometer density 1,3 (2 pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 823680, NULL, 45760, 'Pemanfaatan oleh Perusahaan Sendiri', '761', NULL, NULL, NULL),
('761', 'Hydrometer density 1,4 92 pcs0', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 823680, NULL, 45760, 'Pemanfaatan oleh Perusahaan Sendiri', '762', NULL, NULL, NULL),
('762', 'Thermometer Hg brand -10 sd 110 C', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 353250, NULL, 19625, 'Pemanfaatan oleh Perusahaan Sendiri', '763', NULL, NULL, NULL),
('763', 'Capasitor meter - Agilent', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 8235450, NULL, 457525, 'Pemanfaatan oleh Perusahaan Sendiri', '764', NULL, NULL, NULL),
('764', 'Stop watch merk ALBA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 323550, NULL, 17975, 'Pemanfaatan oleh Perusahaan Sendiri', '765', NULL, NULL, NULL),
('765', 'Gelas ukur Iwaki 250 ml (4 Pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 1177200, NULL, 65400, 'Pemanfaatan oleh Perusahaan Sendiri', '766', NULL, NULL, NULL),
('766', 'Beaker glass Iwaki 500 ml (4 Pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 329760, NULL, 18320, 'Pemanfaatan oleh Perusahaan Sendiri', '767', NULL, NULL, NULL),
('767', 'Beaker glass Iwaki 1000 ml (4 Pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 588600, NULL, 32700, 'Pemanfaatan oleh Perusahaan Sendiri', '768', NULL, NULL, NULL),
('768', 'Erlen meyer Iwaki 250 ml (2pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 188280, NULL, 10460, 'Pemanfaatan oleh Perusahaan Sendiri', '769', NULL, NULL, NULL),
('769', 'Erlen meyer Iwaki 500 ml (2 pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 211860, NULL, 11770, 'Pemanfaatan oleh Perusahaan Sendiri', '770', NULL, NULL, NULL),
('77', 'Air Operated Double Diaphragm Pump SAND PIPER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 57217000, NULL, 17661265, 'Pemanfaatan oleh Perusahaan Sendiri', '78', NULL, NULL, NULL),
('770', 'Gelas ukur plastik uk. 1 liter', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 47250, NULL, 2625, 'Pemanfaatan oleh Perusahaan Sendiri', '771', NULL, NULL, NULL),
('771', 'Gelas ukur plastik uk. 2 liter', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 58950, NULL, 3275, 'Pemanfaatan oleh Perusahaan Sendiri', '772', NULL, NULL, NULL),
('772', 'Box plastik 36 x 27 x 22', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 117720, NULL, 6540, 'Pemanfaatan oleh Perusahaan Sendiri', '773', NULL, NULL, NULL),
('773', 'Cup melamin 300 ml (2pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 18000, NULL, 1000, 'Pemanfaatan oleh Perusahaan Sendiri', '774', NULL, NULL, NULL),
('774', 'Toples plastik 500 ml (10 Pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 177300, NULL, 9850, 'Pemanfaatan oleh Perusahaan Sendiri', '775', NULL, NULL, NULL),
('775', 'Beaker glass Iwaki 250 ml (4Pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 259200, NULL, 14400, 'Pemanfaatan oleh Perusahaan Sendiri', '776', NULL, NULL, NULL),
('776', 'Pressure switch with accessories P1003A (3 Set)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 46312500, NULL, 29910156, 'Pemanfaatan oleh Perusahaan Sendiri', '777', NULL, NULL, NULL),
('777', 'Flow switch model S16800 (3 Set)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 28500000, NULL, 18406250, 'Pemanfaatan oleh Perusahaan Sendiri', '778', NULL, NULL, NULL),
('778', 'Genset 150 KVA merk Cummins', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 484403500, NULL, 312843927, 'Pemanfaatan oleh Perusahaan Sendiri', '779', NULL, NULL, NULL),
('779', 'Vogelsang VX100-90Q dengan motor (3 Pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 375000000, NULL, 242187500, 'Pemanfaatan oleh Perusahaan Sendiri', '780', NULL, NULL, NULL),
('78', 'Air Operated Double Diaphragm Pump SAND PIPER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 57217000, NULL, 17661265, 'Pemanfaatan oleh Perusahaan Sendiri', '79', NULL, NULL, NULL),
('780', 'HWG 315 kW', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 430000000, NULL, 277708333, 'Pemanfaatan oleh Perusahaan Sendiri', '781', NULL, NULL, NULL),
('781', 'Sarana Prasarana Unit OSP MHU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 721501718, NULL, 481001145, 'Pemanfaatan oleh Perusahaan Sendiri', '782', NULL, NULL, NULL),
('782', 'Kelistrikan OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 472560826, NULL, 315040552, 'Pemanfaatan oleh Perusahaan Sendiri', '783', NULL, NULL, NULL),
('783', 'Container Unit Oxsol & HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 282345267, NULL, 188230179, 'Pemanfaatan oleh Perusahaan Sendiri', '784', NULL, NULL, NULL),
('784', 'Piping dan Tanki Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 514495982, NULL, 342997322, 'Pemanfaatan oleh Perusahaan Sendiri', '785', NULL, NULL, NULL),
('785', 'Unit Blade & Geared Motor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 171572844, NULL, 114381896, 'Pemanfaatan oleh Perusahaan Sendiri', '786', NULL, NULL, NULL),
('786', 'Flushing Tank & Strainer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 113621815, NULL, 75747877, 'Pemanfaatan oleh Perusahaan Sendiri', '787', NULL, NULL, NULL),
('787', 'container Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 277007672, NULL, 184671782, 'Pemanfaatan oleh Perusahaan Sendiri', '788', NULL, NULL, NULL),
('788', 'Tanki Emlusifikasi, Adaptor & Manhole', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 326986969, NULL, 217991313, 'Pemanfaatan oleh Perusahaan Sendiri', '789', NULL, NULL, NULL),
('789', 'Static Mixer', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 80487135, NULL, 53658090, 'Pemanfaatan oleh Perusahaan Sendiri', '790', NULL, NULL, NULL),
('79', 'Air Operated Double Diaphragm Pump SAND PIPER', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 57217000, NULL, 17661265, 'Pemanfaatan oleh Perusahaan Sendiri', '80', NULL, NULL, NULL),
('790', 'Pompa Diapraghm Sandpiper & Rubber Pad', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 288237417, NULL, 192158279, 'Pemanfaatan oleh Perusahaan Sendiri', '791', NULL, NULL, NULL),
('791', 'Presure Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 142943926, NULL, 95295951, 'Pemanfaatan oleh Perusahaan Sendiri', '792', NULL, NULL, NULL),
('792', 'Pump Station Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 366008721, NULL, 244005814, 'Pemanfaatan oleh Perusahaan Sendiri', '793', NULL, NULL, NULL),
('793', 'Container Bahan Baku', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 122789947, NULL, 81859965, 'Pemanfaatan oleh Perusahaan Sendiri', '794', NULL, NULL, NULL),
('794', 'Container Warehouse 2 unit', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 293177065, NULL, 195451376, 'Pemanfaatan oleh Perusahaan Sendiri', '795', NULL, NULL, NULL),
('795', 'Water Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 62066141, NULL, 41377427, 'Pemanfaatan oleh Perusahaan Sendiri', '796', NULL, NULL, NULL),
('796', 'Waste Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 14374385, NULL, 9582923, 'Pemanfaatan oleh Perusahaan Sendiri', '797', NULL, NULL, NULL),
('797', 'Store tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 168379076, NULL, 112252717, 'Pemanfaatan oleh Perusahaan Sendiri', '798', NULL, NULL, NULL),
('798', 'Fuel Storage Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 247772850, NULL, 165181900, 'Pemanfaatan oleh Perusahaan Sendiri', '799', NULL, NULL, NULL),
('799', 'Flow meter solar, Bengas oval OMG 25\" (2 pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 24763333, NULL, 16508888, 'Pemanfaatan oleh Perusahaan Sendiri', '800', NULL, NULL, NULL),
('8', 'Thermometer Analog Elemen Spiral', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 9900000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '9', NULL, NULL, NULL),
('80', 'Material Penunjang Integrasi OSP Melak', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 133500000, NULL, 42274998, 'Pemanfaatan oleh Perusahaan Sendiri', '81', NULL, NULL, NULL),
('800', 'Flow meter air, Inco meter 1\"', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 12603333, NULL, 8402221, 'Pemanfaatan oleh Perusahaan Sendiri', '801', NULL, NULL, NULL),
('801', 'QC Bench bahan SS 304', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 25941333, NULL, 17294221, 'Pemanfaatan oleh Perusahaan Sendiri', '802', NULL, NULL, NULL),
('802', 'Pompa air Grundfos CM10-3:2900 rpm 3 (3pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 51333423, NULL, 34222282, 'Pemanfaatan oleh Perusahaan Sendiri', '803', NULL, NULL, NULL),
('803', 'Pompa solar gear pump Koshin GL25-5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 27509883, NULL, 18339922, 'Pemanfaatan oleh Perusahaan Sendiri', '804', NULL, NULL, NULL),
('804', 'Pompa submersible grundfos KP 150 A', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 11627583, NULL, 7751722, 'Pemanfaatan oleh Perusahaan Sendiri', '805', NULL, NULL, NULL),
('805', 'Apar YAMATO multipurpose 6 kg (10 pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 34575333, NULL, 23050221, 'Pemanfaatan oleh Perusahaan Sendiri', '806', NULL, NULL, NULL),
('806', 'Eye shower bahan SS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 23392383, NULL, 15594922, 'Pemanfaatan oleh Perusahaan Sendiri', '807', NULL, NULL, NULL),
('807', 'Pompa SandPIPER type S30 SS-PTFE (2 pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 216333333, NULL, 144222221, 'Pemanfaatan oleh Perusahaan Sendiri', '808', NULL, NULL, NULL),
('808', 'Screw Air compressor ELGi PG 400-175', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 356333333, NULL, 237555555, 'Pemanfaatan oleh Perusahaan Sendiri', '809', NULL, NULL, NULL),
('809', 'Genset 60 KVA merk Cummins', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 276929833, NULL, 184619888, 'Pemanfaatan oleh Perusahaan Sendiri', '810', NULL, NULL, NULL),
('81', 'Kompresor Udara & Generator Listrik', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 750519000, NULL, 268899426, 'Pemanfaatan oleh Perusahaan Sendiri', '82', NULL, NULL, NULL),
('810', 'HWG 600 kW', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 571133334, NULL, 380755556, 'Pemanfaatan oleh Perusahaan Sendiri', '811', NULL, NULL, NULL),
('811', 'Alat & Perlengkapan Lab OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 110793150, NULL, 73862099, 'Pemanfaatan oleh Perusahaan Sendiri', '812', NULL, NULL, NULL),
('812', 'Brand Vogelsang Type Rotary Lobe Pump VX100-90Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 117000000, NULL, 91406250, 'Pemanfaatan oleh Perusahaan Sendiri', '813', NULL, NULL, NULL),
('813', 'Bare Pump VX136-105Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 296625000, NULL, 259546875, 'Pemanfaatan oleh Perusahaan Sendiri', '814', NULL, NULL, NULL),
('814', 'Waste Oil Treatment Jsp MHU (Improvement OSP)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 718180000, NULL, 650850625, 'Pemanfaatan oleh Perusahaan Sendiri', '815', NULL, NULL, NULL),
('815', 'Storage Tank Waste Oil MHU (Improvement OSP)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 241820000, NULL, 219149375, 'Pemanfaatan oleh Perusahaan Sendiri', '816', NULL, NULL, NULL),
('816', 'Ultrasonic Seal', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 272727272, NULL, 187499999, 'Pemanfaatan oleh Perusahaan Sendiri', '817', NULL, NULL, NULL),
('817', 'Ultrasonic Seal', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 272727273, NULL, 187500000, 'Pemanfaatan oleh Perusahaan Sendiri', '818', NULL, NULL, NULL),
('818', 'Genset Yanmar 4TNV88-GGE 15 kVA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2021', 8, 'Investasi Perusahaan Sendiri', 84545455, NULL, 59886364, 'Pemanfaatan oleh Perusahaan Sendiri', '819', NULL, NULL, NULL),
('819', 'MMT#28 Truck Volvo FMX440 6X6 440hp', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2022', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1597291667, 'Pemanfaatan oleh Perusahaan Sendiri', '820', NULL, NULL, NULL),
('82', 'Kompresor Udara & Generator Listrik', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 750519000, NULL, 268899426, 'Pemanfaatan oleh Perusahaan Sendiri', '83', NULL, NULL, NULL),
('820', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1651054167, 'Pemanfaatan oleh Perusahaan Sendiri', '821', NULL, NULL, NULL),
('821', 'Cat pump 271.0770', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 70000000, NULL, 49583333, 'Pemanfaatan oleh Perusahaan Sendiri', '822', NULL, NULL, NULL),
('822', 'Cat pump 271.0770', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2020', 8, 'Investasi Perusahaan Sendiri', 70000000, NULL, 49583333, 'Pemanfaatan oleh Perusahaan Sendiri', '823', NULL, NULL, NULL),
('823', 'Cat pump 323', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 21000000, NULL, 14875000, 'Pemanfaatan oleh Perusahaan Sendiri', '824', NULL, NULL, NULL),
('824', 'Cat pump 323', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 21000000, NULL, 14875000, 'Pemanfaatan oleh Perusahaan Sendiri', '825', NULL, NULL, NULL),
('825', 'Vogelsang VX 136-105Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 125000000, NULL, 88541667, 'Pemanfaatan oleh Perusahaan Sendiri', '826', NULL, NULL, NULL),
('826', 'Nemo pump type NM076B002D09V', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 190807500, NULL, 135155312, 'Pemanfaatan oleh Perusahaan Sendiri', '827', NULL, NULL, NULL),
('827', 'Air clutch c/w Adapter', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 47025000, NULL, 33309375, 'Pemanfaatan oleh Perusahaan Sendiri', '828', NULL, NULL, NULL),
('828', 'Variable pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 57475000, NULL, 40711458, 'Pemanfaatan oleh Perusahaan Sendiri', '829', NULL, NULL, NULL),
('829', 'Variable pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 57475000, NULL, 40711458, 'Pemanfaatan oleh Perusahaan Sendiri', '830', NULL, NULL, NULL),
('83', 'Unit Oxol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 442500000, NULL, 149822289, 'Pemanfaatan oleh Perusahaan Sendiri', '84', NULL, NULL, NULL),
('830', 'Extend Wheel Base', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 95000000, NULL, 67291667, 'Pemanfaatan oleh Perusahaan Sendiri', '831', NULL, NULL, NULL),
('831', 'Cross member ROH', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 47800000, NULL, 33858333, 'Pemanfaatan oleh Perusahaan Sendiri', '832', NULL, NULL, NULL),
('832', 'OMT 315 EMD, product pump,socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 28000000, NULL, 19833333, 'Pemanfaatan oleh Perusahaan Sendiri', '833', NULL, NULL, NULL),
('833', 'System Hidrolik MMT kap. 18 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 720342650, NULL, 510242711, 'Pemanfaatan oleh Perusahaan Sendiri', '834', NULL, NULL, NULL),
('834', 'Sistem kontrol MMT kap. 18 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 740000000, NULL, 524166667, 'Pemanfaatan oleh Perusahaan Sendiri', '835', NULL, NULL, NULL),
('835', 'Chubb fire supression Volvo FMX440', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 60427917, 'Pemanfaatan oleh Perusahaan Sendiri', '836', NULL, NULL, NULL),
('836', 'Rear lamp volvo FMX440', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 1470000, NULL, 1041250, 'Pemanfaatan oleh Perusahaan Sendiri', '837', NULL, NULL, NULL),
('837', 'MMT#29 Truck Volvo FMX440 6X6 440hp', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1680437500, 'Pemanfaatan oleh Perusahaan Sendiri', '838', NULL, NULL, NULL),
('838', 'Bin MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1675334375, 'Pemanfaatan oleh Perusahaan Sendiri', '839', NULL, NULL, NULL),
('839', 'Cat pump 271.0770', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 70000000, NULL, 50312500, 'Pemanfaatan oleh Perusahaan Sendiri', '840', NULL, NULL, NULL),
('84', 'Unit Tangki Solar', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 442500000, NULL, 146377316, 'Pemanfaatan oleh Perusahaan Sendiri', '85', NULL, NULL, NULL),
('840', 'Cat pump 271.0770', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 70000000, NULL, 50312500, 'Pemanfaatan oleh Perusahaan Sendiri', '841', NULL, NULL, NULL),
('841', 'Cat pump 323', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 21000000, NULL, 15093750, 'Pemanfaatan oleh Perusahaan Sendiri', '842', NULL, NULL, NULL),
('842', 'Cat pump 323', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 21000000, NULL, 15093750, 'Pemanfaatan oleh Perusahaan Sendiri', '843', NULL, NULL, NULL),
('843', 'Vogelsang VX 136-105Q', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 125000000, NULL, 89843750, 'Pemanfaatan oleh Perusahaan Sendiri', '844', NULL, NULL, NULL),
('844', 'Nemo pump type NM076B002D09V', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 190807500, NULL, 137142891, 'Pemanfaatan oleh Perusahaan Sendiri', '845', NULL, NULL, NULL),
('845', 'Air clutch c/w Adapter', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 47025000, NULL, 33799219, 'Pemanfaatan oleh Perusahaan Sendiri', '846', NULL, NULL, NULL),
('846', 'Variable pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 57475000, NULL, 41310156, 'Pemanfaatan oleh Perusahaan Sendiri', '847', NULL, NULL, NULL),
('847', 'Variable pump TXV130', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 57475000, NULL, 41310156, 'Pemanfaatan oleh Perusahaan Sendiri', '848', NULL, NULL, NULL),
('848', 'Extend Wheel Base', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 95000000, NULL, 68281250, 'Pemanfaatan oleh Perusahaan Sendiri', '849', NULL, NULL, NULL),
('849', 'Cross member ROH', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 47800000, NULL, 34356250, 'Pemanfaatan oleh Perusahaan Sendiri', '850', NULL, NULL, NULL),
('85', 'Water Tank OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 16500000, NULL, 8341910, 'Pemanfaatan oleh Perusahaan Sendiri', '86', NULL, NULL, NULL);
INSERT INTO `dahana_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('850', 'OMT 315 EMD, product pump,socket sensor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 28000000, NULL, 20125000, 'Pemanfaatan oleh Perusahaan Sendiri', '851', NULL, NULL, NULL),
('851', 'System Hidrolik MMT kap. 18 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 720342650, NULL, 517746280, 'Pemanfaatan oleh Perusahaan Sendiri', '852', NULL, NULL, NULL),
('852', 'Sistem kontrol MMT kap. 18 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 740000000, NULL, 531875000, 'Pemanfaatan oleh Perusahaan Sendiri', '853', NULL, NULL, NULL),
('853', 'Chubb fire supression Volvo FMX440', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 85310000, NULL, 61316562, 'Pemanfaatan oleh Perusahaan Sendiri', '854', NULL, NULL, NULL),
('854', 'Rear lamp volvo FMX440', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 1470000, NULL, 1056562, 'Pemanfaatan oleh Perusahaan Sendiri', '855', NULL, NULL, NULL),
('855', 'OSP Semen Baturaja', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 1610172000, NULL, 1274719500, 'Pemanfaatan oleh Perusahaan Sendiri', '856', NULL, NULL, NULL),
('856', 'Container', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 222750000, NULL, 176343750, 'Pemanfaatan oleh Perusahaan Sendiri', '857', NULL, NULL, NULL),
('857', 'Unit Oxsol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 305300000, NULL, 241695833, 'Pemanfaatan oleh Perusahaan Sendiri', '858', NULL, NULL, NULL),
('858', 'Daily & Flushing Tank HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 23100000, NULL, 18287500, 'Pemanfaatan oleh Perusahaan Sendiri', '859', NULL, NULL, NULL),
('859', 'Container Unit Emulsifikasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 189550000, NULL, 150060417, 'Pemanfaatan oleh Perusahaan Sendiri', '860', NULL, NULL, NULL),
('86', 'Water Tank OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 16500000, NULL, 8341910, 'Pemanfaatan oleh Perusahaan Sendiri', '87', NULL, NULL, NULL),
('860', 'Ribbon Blender', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2020', 8, 'Investasi Perusahaan Sendiri', 764300000, NULL, 605070833, 'Pemanfaatan oleh Perusahaan Sendiri', '861', NULL, NULL, NULL),
('861', 'Unit Batch Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 50, '2021', 8, 'Investasi Perusahaan Sendiri', 130600000, NULL, 103391667, 'Pemanfaatan oleh Perusahaan Sendiri', '862', NULL, NULL, NULL),
('862', 'Sarana & Prasarana OSP Baturaja', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 686347200, NULL, 543358200, 'Pemanfaatan oleh Perusahaan Sendiri', '863', NULL, NULL, NULL),
('863', 'Fuel Tank', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 280400000, NULL, 221983333, 'Pemanfaatan oleh Perusahaan Sendiri', '864', NULL, NULL, NULL),
('864', 'Warehouse Kontainer 1', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 43150000, NULL, 34160417, 'Pemanfaatan oleh Perusahaan Sendiri', '865', NULL, NULL, NULL),
('865', 'Warehouse Kontainer 2', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 122050000, NULL, 96622917, 'Pemanfaatan oleh Perusahaan Sendiri', '866', NULL, NULL, NULL),
('866', 'Piping Oxsol.Storage,Emulsifikasi,HWG', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 539900000, NULL, 427420833, 'Pemanfaatan oleh Perusahaan Sendiri', '867', NULL, NULL, NULL),
('867', 'Unit Kontrol & Electrical', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 519000000, NULL, 410875000, 'Pemanfaatan oleh Perusahaan Sendiri', '868', NULL, NULL, NULL),
('868', 'Grounding dan Penangkal Petir', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 55300000, NULL, 43779167, 'Pemanfaatan oleh Perusahaan Sendiri', '869', NULL, NULL, NULL),
('869', 'Flow meter solar dan air', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 24700000, NULL, 19554167, 'Pemanfaatan oleh Perusahaan Sendiri', '870', NULL, NULL, NULL),
('87', 'Double Diapraghm Pump', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 52363966, NULL, 10794222, 'Pemanfaatan oleh Perusahaan Sendiri', '88', NULL, NULL, NULL),
('870', 'Panel  MDP kap. 120-150 Kva', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 29177800, NULL, 23099092, 'Pemanfaatan oleh Perusahaan Sendiri', '871', NULL, NULL, NULL),
('871', 'HWG 315 kW', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 489750000, NULL, 387718750, 'Pemanfaatan oleh Perusahaan Sendiri', '872', NULL, NULL, NULL),
('872', 'Pompa air merk Grundfos 5-6;2900 rpm 3 (2PCS)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 19941000, NULL, 15786625, 'Pemanfaatan oleh Perusahaan Sendiri', '873', NULL, NULL, NULL),
('873', 'Pompa solar gear pump Koshin GL25-5', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 21176550, NULL, 16764768, 'Pemanfaatan oleh Perusahaan Sendiri', '874', NULL, NULL, NULL),
('874', 'Eye shower bahan SS', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 25282500, NULL, 20015312, 'Pemanfaatan oleh Perusahaan Sendiri', '875', NULL, NULL, NULL),
('875', 'Bursting disk 232 psi 2inch (3pcs)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 33529950, NULL, 26544543, 'Pemanfaatan oleh Perusahaan Sendiri', '876', NULL, NULL, NULL),
('876', 'Peralatan Lab', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 108537630, NULL, 85925623, 'Pemanfaatan oleh Perusahaan Sendiri', '877', NULL, NULL, NULL),
('877', 'Generator Set 150 Kva merk Cummins', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 405000000, NULL, 320625000, 'Pemanfaatan oleh Perusahaan Sendiri', '878', NULL, NULL, NULL),
('878', 'Vogelsang VX100-90', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 375000000, NULL, 296875000, 'Pemanfaatan oleh Perusahaan Sendiri', '879', NULL, NULL, NULL),
('879', 'Pressure switch IFM P1003A', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 46312500, NULL, 36664062, 'Pemanfaatan oleh Perusahaan Sendiri', '880', NULL, NULL, NULL),
('88', 'Rekondisi OSP Melak', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Tidak Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 360000000, NULL, 156000000, 'Pemanfaatan oleh Perusahaan Sendiri', '89', NULL, NULL, NULL),
('880', 'Flow switch IFM S16900', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 28500000, NULL, 22562500, 'Pemanfaatan oleh Perusahaan Sendiri', '881', NULL, NULL, NULL),
('881', 'Container OSP Baturaja', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 22500000, NULL, 17812500, 'Pemanfaatan oleh Perusahaan Sendiri', '882', NULL, NULL, NULL),
('882', 'MMT#33 Truck Volvo FMX440 6x6 440 hp', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1833333333, 'Pemanfaatan oleh Perusahaan Sendiri', '883', NULL, NULL, NULL),
('883', 'Bin MMT 16 Ton Semi-Automatic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 1386000000, NULL, 1155000000, 'Pemanfaatan oleh Perusahaan Sendiri', '884', NULL, NULL, NULL),
('884', 'Sistem Kontrol MMT kap. 16 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 500285000, NULL, 416904167, 'Pemanfaatan oleh Perusahaan Sendiri', '885', NULL, NULL, NULL),
('885', 'Sistem Hidrolik MMT kap.16 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 390256250, NULL, 325213542, 'Pemanfaatan oleh Perusahaan Sendiri', '886', NULL, NULL, NULL),
('886', 'Vogelsang VX136-105, pompa Dabex', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 137500000, NULL, 114583333, 'Pemanfaatan oleh Perusahaan Sendiri', '887', NULL, NULL, NULL),
('887', 'Vogelsang VX100-90, pompa Emulsion', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 117000000, NULL, 97500000, 'Pemanfaatan oleh Perusahaan Sendiri', '888', NULL, NULL, NULL),
('888', 'Extend Wheelbase, Cross Member dan ROH', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 130000000, NULL, 108333333, 'Pemanfaatan oleh Perusahaan Sendiri', '889', NULL, NULL, NULL),
('889', 'Chubb Fire supression MMT Volvo', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 83310000, NULL, 69425000, 'Pemanfaatan oleh Perusahaan Sendiri', '890', NULL, NULL, NULL),
('89', 'On Site Plant Emulsion', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 0, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '90', NULL, NULL, NULL),
('890', 'Hydroleduc pump TXV 130-CW with shaft', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 46249800, NULL, 38541500, 'Pemanfaatan oleh Perusahaan Sendiri', '891', NULL, NULL, NULL),
('891', 'Hydroleduc pump piston XP1108', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 18380000, NULL, 15316667, 'Pemanfaatan oleh Perusahaan Sendiri', '892', NULL, NULL, NULL),
('892', 'Pompa trace A, Hydracell D10X-KSES-NEPC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 46485000, NULL, 38737500, 'Pemanfaatan oleh Perusahaan Sendiri', '893', NULL, NULL, NULL),
('893', 'Pompa trace B, Hydracell D10x-KSGS-NEPC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 46485000, NULL, 38737500, 'Pemanfaatan oleh Perusahaan Sendiri', '894', NULL, NULL, NULL),
('894', 'Pompa air,solar,Hydracell D10X-KBTH-FECA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 39000000, NULL, 32500000, 'Pemanfaatan oleh Perusahaan Sendiri', '895', NULL, NULL, NULL),
('895', 'Danfoss, OMM 32 EMD (11105515)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 55775000, NULL, 46479167, 'Pemanfaatan oleh Perusahaan Sendiri', '896', NULL, NULL, NULL),
('896', 'Danfoss, OMS-250-EMD (11105166)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 28000000, NULL, 23333333, 'Pemanfaatan oleh Perusahaan Sendiri', '897', NULL, NULL, NULL),
('897', 'Danfoss, OMS-250-EMD (11105166)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 33640000, NULL, 28033333, 'Pemanfaatan oleh Perusahaan Sendiri', '898', NULL, NULL, NULL),
('898', 'Danfoss, OMS-125-EMD (11105162)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 26370000, NULL, 21975000, 'Pemanfaatan oleh Perusahaan Sendiri', '899', NULL, NULL, NULL),
('899', 'Danfoss, OMS-125-EMD (11105162)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 20000000, NULL, 16666667, 'Pemanfaatan oleh Perusahaan Sendiri', '900', NULL, NULL, NULL),
('9', 'Thermometer Analog Elemen Spiral', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2001', 8, 'Investasi Perusahaan Sendiri', 9900000, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', '10', NULL, NULL, NULL),
('90', 'Hot Water Boiler OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 373730000, NULL, 133720492, 'Pemanfaatan oleh Perusahaan Sendiri', '91', NULL, NULL, NULL),
('900', 'Flow rate Trace A, B3S7WB02', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 14500000, NULL, 12083333, 'Pemanfaatan oleh Perusahaan Sendiri', '901', NULL, NULL, NULL),
('901', 'Flow rate Trace B, B3S7WB01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 14500000, NULL, 12083333, 'Pemanfaatan oleh Perusahaan Sendiri', '902', NULL, NULL, NULL),
('902', 'Flow rate Pendukung', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 15222000, NULL, 12685000, 'Pemanfaatan oleh Perusahaan Sendiri', '903', NULL, NULL, NULL),
('903', 'MMT#34 Volvo FMX440 6x6 440 hp', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1833333333, 'Pemanfaatan oleh Perusahaan Sendiri', '904', NULL, NULL, NULL),
('904', 'Bin MMT 16 Ton Semi-Automatic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 1386000000, NULL, 1155000000, 'Pemanfaatan oleh Perusahaan Sendiri', '905', NULL, NULL, NULL),
('905', 'Sistem Kontrol MMT kap. 16 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 500285000, NULL, 416904167, 'Pemanfaatan oleh Perusahaan Sendiri', '906', NULL, NULL, NULL),
('906', 'Sistem Hidrolik MMT kap.16 ton', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 390256250, NULL, 325213542, 'Pemanfaatan oleh Perusahaan Sendiri', '907', NULL, NULL, NULL),
('907', 'Vogelsang VX136-105, pompa Dabex', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 137500000, NULL, 114583333, 'Pemanfaatan oleh Perusahaan Sendiri', '908', NULL, NULL, NULL),
('908', 'Vogelsang VX100-90, pompa Emulsion', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 117000000, NULL, 97500000, 'Pemanfaatan oleh Perusahaan Sendiri', '909', NULL, NULL, NULL),
('909', 'Flow rate Pendukung', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 15222000, NULL, 12685000, 'Pemanfaatan oleh Perusahaan Sendiri', '910', NULL, NULL, NULL),
('91', 'Material Penunjang Integrasi OSP Karimun', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 124675000, NULL, 46337460, 'Pemanfaatan oleh Perusahaan Sendiri', '92', NULL, NULL, NULL),
('910', 'Flow rate Trace A, B3S7WB02', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 14500000, NULL, 12083333, 'Pemanfaatan oleh Perusahaan Sendiri', '911', NULL, NULL, NULL),
('911', 'Flow rate Trace B, B3S7WB01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 14500000, NULL, 12083333, 'Pemanfaatan oleh Perusahaan Sendiri', '912', NULL, NULL, NULL),
('912', 'Pompa trace A, Hydracell D10X-KSES-NEPC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 46485000, NULL, 38737500, 'Pemanfaatan oleh Perusahaan Sendiri', '913', NULL, NULL, NULL),
('913', 'Pompa trace B, Hydracell D10x-KSGS-NEPC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 46485000, NULL, 38737500, 'Pemanfaatan oleh Perusahaan Sendiri', '914', NULL, NULL, NULL),
('914', 'Bin MMT 16 Ton Semi-Automatic', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 39000000, NULL, 32500000, 'Pemanfaatan oleh Perusahaan Sendiri', '915', NULL, NULL, NULL),
('915', 'Extend Wheelbase, Cross Member dan ROH', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 130000000, NULL, 108333333, 'Pemanfaatan oleh Perusahaan Sendiri', '916', NULL, NULL, NULL),
('916', 'Chubb Fire supression MMT Volvo', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 83310000, NULL, 69425000, 'Pemanfaatan oleh Perusahaan Sendiri', '917', NULL, NULL, NULL),
('917', 'Hydroleduc pump TXV 130-CW with shaft', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 46249800, NULL, 38541500, 'Pemanfaatan oleh Perusahaan Sendiri', '918', NULL, NULL, NULL),
('918', 'Hydroleduc pump piston XP1108', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 26280000, NULL, 21900000, 'Pemanfaatan oleh Perusahaan Sendiri', '919', NULL, NULL, NULL),
('919', 'Danfoss, OMM 32 EMD (11105515)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 53775000, NULL, 44812500, 'Pemanfaatan oleh Perusahaan Sendiri', '920', NULL, NULL, NULL),
('92', 'Storage Tank 20.000 ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 225000000, NULL, 74536802, 'Pemanfaatan oleh Perusahaan Sendiri', '93', NULL, NULL, NULL),
('920', 'Danfoss, OMS-250-EMD (11105166)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 43070000, NULL, 35891667, 'Pemanfaatan oleh Perusahaan Sendiri', '921', NULL, NULL, NULL),
('921', 'Danfoss, OMT 315-EMD (11095277)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 38000000, NULL, 31666667, 'Pemanfaatan oleh Perusahaan Sendiri', '922', NULL, NULL, NULL),
('922', 'Danfoss, OMS-160-EMD (11105163)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 30000000, NULL, 25000000, 'Pemanfaatan oleh Perusahaan Sendiri', '923', NULL, NULL, NULL),
('923', 'Danfoss, OMS-125-EMD (11105162)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 20000000, NULL, 16666667, 'Pemanfaatan oleh Perusahaan Sendiri', '924', NULL, NULL, NULL),
('924', 'Danfoss, OMS 160 (151F0503)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 11370000, NULL, 9475000, 'Pemanfaatan oleh Perusahaan Sendiri', '925', NULL, NULL, NULL),
('925', 'Pompa Grundfos Ap12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 10625000, NULL, 9628906, 'Pemanfaatan oleh Perusahaan Sendiri', '926', NULL, NULL, NULL),
('926', 'Pompa Grundfos Ap12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 10625000, NULL, 9628906, 'Pemanfaatan oleh Perusahaan Sendiri', '927', NULL, NULL, NULL),
('927', 'Screw discharge auger MMT#33 (1500000317-21)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 22737600, NULL, 20369100, 'Pemanfaatan oleh Perusahaan Sendiri', '928', NULL, NULL, NULL),
('928', 'Screw discharge auger MMT#34 (1500000318-22)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 22737600, NULL, 20369100, 'Pemanfaatan oleh Perusahaan Sendiri', '929', NULL, NULL, NULL),
('929', 'Hydrolic hopper', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 11430000, NULL, 10834687, 'Pemanfaatan oleh Perusahaan Sendiri', '930', NULL, NULL, NULL),
('93', 'Tangki Aerasi', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 450000000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '94', NULL, NULL, NULL),
('930', 'MMT #35 Truck Volvo FMX440 T 8455 TU', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2021', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 2147483647, 'Pemanfaatan oleh Perusahaan Sendiri', '931', NULL, NULL, NULL),
('931', 'Manufacturing BIN MMT', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 40, '2022', 8, 'Investasi Perusahaan Sendiri', 1360000000, NULL, 1260833333, 'Pemanfaatan oleh Perusahaan Sendiri', '932', NULL, NULL, NULL),
('932', 'Extend Wheelbase, Cross Member dan ROH', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 135000000, NULL, 125156250, 'Pemanfaatan oleh Perusahaan Sendiri', '933', NULL, NULL, NULL),
('933', 'Vogelsang VX100-90Q with connector', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 117000000, NULL, 108468750, 'Pemanfaatan oleh Perusahaan Sendiri', '934', NULL, NULL, NULL),
('934', 'Vogelsang VX136-105Q with connector', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 137500000, NULL, 127473958, 'Pemanfaatan oleh Perusahaan Sendiri', '935', NULL, NULL, NULL),
('935', 'Discharge  & Screw Bottom Auger assy', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 281590000, NULL, 261057396, 'Pemanfaatan oleh Perusahaan Sendiri', '936', NULL, NULL, NULL),
('936', 'Chubb fire supression MMT Volvo FMX', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 83310000, NULL, 77235312, 'Pemanfaatan oleh Perusahaan Sendiri', '937', NULL, NULL, NULL),
('937', 'Sistem Hidrolik', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 425000000, NULL, 394010416, 'Pemanfaatan oleh Perusahaan Sendiri', '938', NULL, NULL, NULL),
('938', 'Sistem kontrol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 492000000, NULL, 456125000, 'Pemanfaatan oleh Perusahaan Sendiri', '939', NULL, NULL, NULL),
('939', 'Pompa trace A, Hydracell D10X-KSES-NEPC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 51286500, NULL, 47546859, 'Pemanfaatan oleh Perusahaan Sendiri', '940', NULL, NULL, NULL),
('94', 'Material Penunjang OSP', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 682042700, NULL, 265731064, 'Pemanfaatan oleh Perusahaan Sendiri', '95', NULL, NULL, NULL),
('940', 'Pompa trace B, Hydracell D10x-KSGS-NEPC', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 51562000, NULL, 47802271, 'Pemanfaatan oleh Perusahaan Sendiri', '941', NULL, NULL, NULL),
('941', 'Pompa air,solar,Hydracell D10X-KBTH-FECA', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 28600000, NULL, 26514583, 'Pemanfaatan oleh Perusahaan Sendiri', '942', NULL, NULL, NULL),
('942', 'Flow rate Trace A, B3S7WB02', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 14500000, NULL, 13442708, 'Pemanfaatan oleh Perusahaan Sendiri', '943', NULL, NULL, NULL),
('943', 'Flow rate Trace B, B3S7WB01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 14500000, NULL, 13442708, 'Pemanfaatan oleh Perusahaan Sendiri', '944', NULL, NULL, NULL),
('944', 'Flow rate water lubricating, B3A6WB01', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 10148000, NULL, 9408042, 'Pemanfaatan oleh Perusahaan Sendiri', '945', NULL, NULL, NULL),
('945', 'Danfoss OMM 32 EMD (11105515)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 75011400, NULL, 69541819, 'Pemanfaatan oleh Perusahaan Sendiri', '946', NULL, NULL, NULL),
('946', 'Danfoss OMS-160 EMD (11105163)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 38280000, NULL, 35488750, 'Pemanfaatan oleh Perusahaan Sendiri', '947', NULL, NULL, NULL),
('947', 'Danfoss OMS-250 EMD (11105166)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 41742600, NULL, 38698869, 'Pemanfaatan oleh Perusahaan Sendiri', '948', NULL, NULL, NULL),
('948', 'Danfoss OMT-315 EMD (11095277)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 40224450, NULL, 37291417, 'Pemanfaatan oleh Perusahaan Sendiri', '949', NULL, NULL, NULL),
('949', 'Danfoss OMS 160 (151F0503)', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 11849400, NULL, 10985381, 'Pemanfaatan oleh Perusahaan Sendiri', '950', NULL, NULL, NULL),
('95', 'Office, Workshop & Dry Container - OSP Karimun', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 123823000, NULL, 45199436, 'Pemanfaatan oleh Perusahaan Sendiri', '96', NULL, NULL, NULL),
('950', 'Blasting Cap Mesin Pabrik Elemented', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 2147483647, 'Pemanfaatan oleh Perusahaan Sendiri', '951', NULL, NULL, NULL),
('951', 'Delay Elemented Mesin Pabrik Elemented', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 2147483647, 'Pemanfaatan oleh Perusahaan Sendiri', '952', NULL, NULL, NULL),
('952', 'Genset', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 2147483647, 'Pemanfaatan oleh Perusahaan Sendiri', '953', NULL, NULL, NULL),
('953', 'Screw Kompresor', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 1266000000, NULL, 1223800000, 'Pemanfaatan oleh Perusahaan Sendiri', '954', NULL, NULL, NULL),
('954', 'Alat-alat Lab', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 232080950, NULL, 224344918, 'Pemanfaatan oleh Perusahaan Sendiri', '955', NULL, NULL, NULL),
('955', 'Mekanikal Elektrikal & Plumbing', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 277699241, NULL, 268442599, 'Pemanfaatan oleh Perusahaan Sendiri', '956', NULL, NULL, NULL),
('956', 'Laser Making', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 2147483647, 'Pemanfaatan oleh Perusahaan Sendiri', '957', NULL, NULL, NULL),
('957', 'PARR Calorimeter', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 580000000, NULL, 560666666, 'Pemanfaatan oleh Perusahaan Sendiri', '958', NULL, NULL, NULL),
('958', 'Temperature test chamber T-80B', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 165000000, NULL, 159500000, 'Pemanfaatan oleh Perusahaan Sendiri', '959', NULL, NULL, NULL),
('959', 'BAM Frcition - FSA 12', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 525000000, NULL, 507500000, 'Pemanfaatan oleh Perusahaan Sendiri', '960', NULL, NULL, NULL),
('96', 'Unit Oxol', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 442500000, NULL, 161082437, 'Pemanfaatan oleh Perusahaan Sendiri', '97', NULL, NULL, NULL),
('960', 'Alat pendukung elemented', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 25, '2022', 8, 'Investasi Perusahaan Sendiri', 770000000, NULL, 744333333, 'Pemanfaatan oleh Perusahaan Sendiri', '961', NULL, NULL, NULL),
('97', 'Unit Tangki Solar', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 442500000, NULL, 157702155, 'Pemanfaatan oleh Perusahaan Sendiri', '98', NULL, NULL, NULL),
('98', 'Storage Tank 20.000 ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 225000000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '99', NULL, NULL, NULL),
('99', 'Storage Tank 20.000 ltr', NULL, NULL, NULL, NULL, 'Mesin', 'Baik Digunakan', 'Utilized', 100, '2010', 8, 'Investasi Perusahaan Sendiri', 225000000, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', '100', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dahana_assets_log`
--

CREATE TABLE `dahana_assets_log` (
  `id` varchar(100) NOT NULL,
  `user_edit` varchar(100) DEFAULT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dahana_assets_photo`
--

CREATE TABLE `dahana_assets_photo` (
  `id` varchar(100) NOT NULL,
  `gambar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dahana_kapabilitas`
--

CREATE TABLE `dahana_kapabilitas` (
  `fungsi` varchar(100) NOT NULL,
  `jenis_material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `dimensi-kecil-panjang` float DEFAULT NULL,
  `dimensi-kecil-lebar` float DEFAULT NULL,
  `dimensi-kecil-tebal` float DEFAULT NULL,
  `dimensi-kecil-diameter` float DEFAULT NULL,
  `dimensi-besar-panjang` float DEFAULT NULL,
  `dimensi-besar-lebar` float DEFAULT NULL,
  `dimensi-besar-tebal` float DEFAULT NULL,
  `dimensi-besar-diameter` float DEFAULT NULL,
  `berat-kecil` float DEFAULT NULL,
  `berat-besar` float DEFAULT NULL,
  `panjang_kabel-pendek` float DEFAULT NULL,
  `panjang_kabel-panjang` float DEFAULT NULL,
  `kapasitas_daya-kecil` float DEFAULT NULL,
  `kapasitas_daya-besar` float DEFAULT NULL,
  `ketinggian_jatuh-kecil` float DEFAULT NULL,
  `ketinggian_jatuh-besar` float DEFAULT NULL,
  `frekuensi-kecil` float DEFAULT NULL,
  `frekuensi-besar` float DEFAULT NULL,
  `acceleration-kecil` float DEFAULT NULL,
  `acceleration-besar` float DEFAULT NULL,
  `load-5g-kecil` float DEFAULT NULL,
  `load-5g-besar` float DEFAULT NULL,
  `load-10g-kecil` float DEFAULT NULL,
  `load-10g-besar` float DEFAULT NULL,
  `load-20g-kecil` float DEFAULT NULL,
  `load-20g-besar` float DEFAULT NULL,
  `load-30g-kecil` float DEFAULT NULL,
  `load-30-besar` float DEFAULT NULL,
  `temperature-kecil` float DEFAULT NULL,
  `temperature-besar` float DEFAULT NULL,
  `humidity-kecil` float DEFAULT NULL,
  `humidity-besar` float DEFAULT NULL,
  `pulsa-kecil` float DEFAULT NULL,
  `pulsa-besar` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `di_assets`
--

CREATE TABLE `di_assets` (
  `id` varchar(100) NOT NULL,
  `nama_asset` varchar(100) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `tipe_mesin` varchar(100) DEFAULT NULL,
  `kategori_fungsi_mesin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`kategori_fungsi_mesin`)),
  `raw_material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`raw_material`)),
  `jenis_asset` varchar(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL,
  `status_pemakaian` varchar(100) DEFAULT NULL,
  `utilisasi` int(10) DEFAULT NULL,
  `tahun_perolehan` year(4) DEFAULT NULL,
  `umur_teknis` int(10) DEFAULT NULL,
  `sumber_dana` varchar(100) DEFAULT NULL,
  `nilai_perolehan` int(10) DEFAULT NULL,
  `nilai_perolehan_dollar` int(10) DEFAULT NULL,
  `nilai_buku` int(10) DEFAULT NULL,
  `rencana_optimisasi` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `data_sheet` varchar(500) DEFAULT NULL,
  `kartu_mesin` varchar(500) DEFAULT NULL,
  `kartu_elektronik` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `di_assets`
--

INSERT INTO `di_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('1', 'CIRCULAR SAW', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1983', 40, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('10', 'HACK SAW', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1986', 37, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('100', 'CNC VERTICAL MACH CENTER DECKEL MAHO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2009', 14, 'Investasi Perusahaan Sendiri', 1325990, NULL, 16952998, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('101', 'CNC VERTICAL MACH.CENTER HAAS VF-6/50', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2011', 12, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('102', 'CNC VERTICAL MACH.CENTER HAAS VF-6/50', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2011', 12, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('103', 'CNC VERTICAL MACH.CENTER HAAS VF-6/50', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2011', 12, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('104', 'CNC VERTICAL MACH.CENTER HAAS VF-6/50', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2011', 12, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('105', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('106', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('107', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('108', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('109', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('11', 'SURFACE GRINDING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('110', 'JIG GRINDING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1983', 40, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('111', 'UNIVERSAL GRINDING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('112', 'INTERNAL GRINDING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('113', 'CENTERLESS GRINDING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('114', 'UNIVERSAL GRINDING ROBBI OMICRON 1000-R', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '2018', 5, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('115', 'CNC LATHE BAR ACT 3', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1984', 39, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('116', 'CNC LATHE BAR ACT 3', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1984', 39, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('117', 'CNC LATHE BAR ACT 4', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1985', 38, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('118', 'CNC LATHE DECKEL MAHO 510V1', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2015', 8, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('119', 'CNC LATHE MILLING DECKEL MAHO 510V3', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2015', 8, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('12', 'CNC VERTICAL MILLING MACHINE 2V-NC', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1987', 36, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('120', 'HORIZONTAL LATHE MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('121', 'HORIZONTAL LATHE MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('122', 'HORIZONTAL LATHE MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('123', 'HORIZONTAL LATHE MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('124', 'HORIZONTAL LATHE MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('125', 'ROLLING THREAD MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('126', 'BROACHING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1988', 35, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('127', 'CNC HORZ JIG BORING DIXI F 330 YE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1985', 38, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('128', 'CNC VERTICAL JIG BORING YASDA YBM-850V', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1990', 33, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('129', 'CNC VERTICAL JIG BORING YASDA YBM-850V', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1990', 33, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('13', 'CNC VERTICAL MILLING MACHINE 2V-NC', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1987', 36, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('130', 'CNC VERTICAL JIG BORING SIP 720', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1983', 40, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('131', 'DRILLING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('132', 'DRILLING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('133', 'DRILLING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('134', 'DRILLING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('135', 'DRILLING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1981', 42, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('136', 'JIG BORING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1983', 40, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('137', 'JIG BORING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1983', 40, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('138', 'PHOSPHORIC ACID ANODIZING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1989', 34, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('139', 'CNC PROFILING MACHINE CORE MILL.', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1985', 38, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('14', 'CNC VERTICAL MILLING MACHINE 4V-NC', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1990', 33, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('140', 'HARD ANODIZING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('141', 'SULPHURIC ACID ANODIZING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('142', 'TARTARIC SULFURIC ACID ANODIZING OF AL.', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '2011', 12, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('143', 'CHROMIC ACID ANODIZING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('144', 'CHEMICAL CONVERSION COATING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('145', 'CHEMICAL CORVERSION COATING (CAA LINE)', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1994', 29, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('146', 'CHEMICAL MILLING FOR ALUMINIUM', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('147', 'CADMIUM PLATTING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('148', 'HARD CHROMIUM PLATTING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('149', 'SILVER PLATTING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('15', 'CNC VERTICAL MILLING MACHINE 4V-NC', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1990', 33, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('150', 'PHOSPHATIZING TYPE M', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1982', 41, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('151', 'CMM INSPECTION', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2013', 10, '', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('16', 'CNC VERTICAL MILLING MACHINE 6VAT', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1990', 33, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('17', 'HORIZONTAL LATHE MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1979', 44, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('18', 'HORIZONTAL LATHE MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1979', 44, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('19', 'CNC PLANO MILLER', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1993', 30, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('2', 'GUILLOTINE CUTTER', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 2, '1983', 40, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('20', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('21', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 485095, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('22', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 2323117, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('23', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 2064222, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('24', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 403945, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('25', 'UNIVERSAL GRINDING JUNGNER US - 350', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1989', 34, 'Investasi Perusahaan Sendiri', 1325990, NULL, 9033971, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('26', 'UNIVERSAL GRINDING JUNGNER US - 350', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1989', 34, 'Investasi Perusahaan Sendiri', 1325990, NULL, 1799875, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('27', 'UNIVERSAL GRINDING SCHUTTE WU - 32', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 1059969, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('28', 'DRILLING GRINDING WEDEVAG AB WL 2', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 1050000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('29', 'DRILLING GRINDING SCHLUMBERGER NSC AF 1', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1982', 41, 'Investasi Perusahaan Sendiri', 1325990, NULL, 23176316, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('3', 'GUILLOTINE CUTTER', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 2, '1983', 40, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('30', 'BLADE SAW S - TEMPO G-400', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1983', 40, 'Investasi Perusahaan Sendiri', 1325990, NULL, 1883705, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('31', 'CNC VERTICAL ROUTER SINGLE GANTRY', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1993', 30, 'Investasi Perusahaan Sendiri', 1325990, NULL, 71279458, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('32', 'VERTICAL ROUTER', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1979', 44, 'Investasi Perusahaan Sendiri', 1325990, NULL, 2910971, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('33', 'HORIZONTAL ROUTER', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, 'Investasi Perusahaan Sendiri', 1325990, NULL, 40827857, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('34', 'CNC VERTICAL ROUTER SINGLE GANTRY CMS', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 5, '2013', 10, 'Investasi Perusahaan Sendiri', 1325990, NULL, 1100118621, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('35', 'ECCENTRIC PRESS 20', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1976', 47, 'Investasi Perusahaan Sendiri', 1325990, NULL, 1963759, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('36', 'ECCENTRIC PRESS 30/650 N', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1976', 47, 'Investasi Perusahaan Sendiri', 1325990, NULL, 25000000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('37', 'ECCENTRIC PRESS 650/500 N', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1976', 47, 'Investasi Perusahaan Sendiri', 1325990, NULL, 7486006, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('38', 'FOLDING HYDRAULIC PZ 100 HL', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1978', 45, 'Investasi Perusahaan Sendiri', 1325990, NULL, 1427188, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('39', 'FOLDING HYDRAULIC 309', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, 'Investasi Perusahaan Sendiri', 1325990, NULL, 2793683, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('4', 'MECHANICAL BAND SAW', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2017', 6, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('40', 'FOLDING LVD', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2016', 7, 'Investasi Perusahaan Sendiri', 1325990, NULL, 19877616, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('41', 'HYDRAULIC PRESS MAE 25', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1978', 45, 'Investasi Perusahaan Sendiri', 1325990, NULL, 75000000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('42', 'HYDRAULIC PRESS MAE 100', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 8782059, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('43', 'HYDRAULIC PRESS MHG 250', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1983', 40, 'Investasi Perusahaan Sendiri', 1325990, NULL, 250736550, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('44', 'RUBBER PRESS ABB', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2014', 9, 'Investasi Perusahaan Sendiri', 1325990, NULL, 3121482, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('45', 'RUBBER PRESS AVURE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1993', 30, 'Investasi Perusahaan Sendiri', 1325990, NULL, 174766452, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('46', 'TNC UNIVERSAL MILLING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 75000000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('47', 'ROLLING MACHINE \"HAEUSLER\"', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1988', 35, 'Investasi Perusahaan Sendiri', 1325990, NULL, 500000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('48', 'STRETCH FORMING SHEET SHERIDAN', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2005', 18, 'Investasi Perusahaan Sendiri', 1325990, NULL, 600000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('49', 'STRETCH FORMING SHEET CYRIL BATH', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1993', 30, 'Investasi Perusahaan Sendiri', 1325990, NULL, 8443214, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('5', 'MECHANICAL BAND SAW', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2017', 6, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('50', 'L/A THERMAL DRY FURNACE\" GLS\"', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1980', 43, 'Investasi Perusahaan Sendiri', 1325990, NULL, 8293107, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('51', 'L/A THERMAL DRY FURNACE\" KGL\"', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1982', 41, 'Investasi Perusahaan Sendiri', 1325990, NULL, 2092421, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('52', 'L/A THERMAL DRY FURNACE \"PRECON\"', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2006', 17, 'Investasi Perusahaan Sendiri', 1325990, NULL, 2092421, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('53', 'STEEL THERMAL DRY FURNACE \"F5\"', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, 'Investasi Perusahaan Sendiri', 1325990, NULL, 2092421, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('54', 'STEEL THERMAL DRY FURNACE \"F4\"', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('55', 'STEEL THERMAL DRY FURNACE \"F3\"', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1982', 41, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('56', 'TIG WELDING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2013', 10, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('57', 'TIG WELDING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2013', 10, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('58', 'TIG WELDING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2013', 10, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('59', 'SPOT WELDING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1984', 39, 'Investasi Perusahaan Sendiri', 1325990, NULL, 4475840, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('6', 'MECHANICAL BAND SAW', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2017', 6, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('60', 'SPOT WELDING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1984', 39, 'Investasi Perusahaan Sendiri', 1325990, NULL, 3266229, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('61', 'TUBE BENDING MANUAL', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1982', 41, 'Investasi Perusahaan Sendiri', 1325990, NULL, 12354856, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('62', 'TUBE BENDING MACH. EL HY 32', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1979', 44, 'Investasi Perusahaan Sendiri', 1325990, NULL, 40250890, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('63', 'TUBE BENDING MACH. EL HY 90', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1986', 37, 'Investasi Perusahaan Sendiri', 1325990, NULL, 4991388, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('64', 'TUBE FLARING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1987', 36, 'Investasi Perusahaan Sendiri', 1325990, NULL, 5821292, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('65', 'TUBE FLARING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1987', 36, 'Investasi Perusahaan Sendiri', 1325990, NULL, 3833103, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('66', 'TUBE FLARING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1987', 36, 'Investasi Perusahaan Sendiri', 1325990, NULL, 234116547, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('67', 'SWAGING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('68', 'TERMINAL FITTING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1993', 30, 'Investasi Perusahaan Sendiri', 1325990, NULL, 133720492, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('69', 'PRESS TEST EQUIPMENT', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1981', 42, 'Investasi Perusahaan Sendiri', 1325990, NULL, 142957103, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('7', 'MECHANICAL BAND SAW', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2017', 6, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('70', 'CABLE ASSY', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1987', 36, 'Investasi Perusahaan Sendiri', 1325990, NULL, 74536802, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('71', 'CNC PROFILING MACHINE SGMP', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1985', 38, 'Investasi Perusahaan Sendiri', 1325990, NULL, 74536802, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('72', 'CNC PROFILING MACHINE JOBS', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2012', 11, 'Investasi Perusahaan Sendiri', 1325990, NULL, 44456005, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('73', 'CNC PROFILING MACH DECKEL MAHO DMC210U', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2014', 9, 'Investasi Perusahaan Sendiri', 1325990, NULL, 83605301, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('74', 'CNC PROFILING MACH DECKEL MAHO DMC210U', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2014', 9, 'Investasi Perusahaan Sendiri', 1325990, NULL, 74536802, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('75', 'CNC VERTICAL MILLING MACHINE 4VS-NC', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1987', 36, 'Investasi Perusahaan Sendiri', 1325990, NULL, 17661265, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('76', 'CNC VERTICAL MACH.CENTER LEADWELL MCV-OP', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1992', 31, 'Investasi Perusahaan Sendiri', 1325990, NULL, 48405665, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('77', 'CNC VERTICAL MACH.CENTER LEADWELL MCV-OP', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1992', 31, 'Investasi Perusahaan Sendiri', 1325990, NULL, 17661265, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('78', 'CNC VERTICAL MACH.CENTER 4VA - 50', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1990', 33, 'Investasi Perusahaan Sendiri', 1325990, NULL, 17661265, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('79', 'CNC PROFILING MACHINE DGAL', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1986', 37, 'Investasi Perusahaan Sendiri', 1325990, NULL, 17661265, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('8', 'MECHANICAL BAND SAW', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2017', 6, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('80', 'CNC PROFILING MACHINE DGAL', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1986', 37, 'Investasi Perusahaan Sendiri', 1325990, NULL, 42274998, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('81', 'CNC PROFILING MACHINE DGAL', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1986', 37, 'Investasi Perusahaan Sendiri', 1325990, NULL, 268899426, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('82', 'CNC PROFILING MACHINE DGMP', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1985', 38, 'Investasi Perusahaan Sendiri', 1325990, NULL, 268899426, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('83', 'CNC PROFILING MACHINE DGMP', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1985', 38, 'Investasi Perusahaan Sendiri', 1325990, NULL, 149822289, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('84', 'CNC PROFILING MACHINE DGMP', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1985', 38, 'Investasi Perusahaan Sendiri', 1325990, NULL, 146377316, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('85', 'CNC PROFILING MACHINE SPAR MILL ALU', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1986', 37, 'Investasi Perusahaan Sendiri', 1325990, NULL, 8341910, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('86', 'CNC VERTICAL MILLING MACHINE MAZACK AJV', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1993', 30, 'Investasi Perusahaan Sendiri', 1325990, NULL, 8341910, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('87', 'CNC HORIZONTAL MACH. CENTER 5H 6P', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1985', 38, 'Investasi Perusahaan Sendiri', 1325990, NULL, 10794222, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('88', 'CNC HORIZONTAL MACH. CENTER 5H 2P', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1987', 36, 'Investasi Perusahaan Sendiri', 1325990, NULL, 156000000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('89', 'CNC HORIZONTAL MACH. CENTER MILLAC 6H', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1990', 33, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('9', 'MECHANICAL BAND SAW', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2017', 6, 'Investasi Perusahaan Sendiri', 1325990, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('90', 'CNC VERTICAL MACH. CENTER QUASER MV 184', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2011', 12, 'Investasi Perusahaan Sendiri', 1325990, NULL, 133720492, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('91', 'CNC VERTICAL MACH. CENTER HAAS V11_5Axis', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2012', 11, 'Investasi Perusahaan Sendiri', 1325990, NULL, 46337460, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('92', 'CNC HORIZONTAL MACH. CENTER HAAS EC-500', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2013', 10, 'Investasi Perusahaan Sendiri', 1325990, NULL, 74536802, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('93', 'CNC HORIZONTAL MACH. CENTER HAAS EC-500', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2013', 10, 'Investasi Perusahaan Sendiri', 1325990, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('94', 'CNC HORIZONTAL MACH. CENTER HAAS EC-500', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2013', 10, 'Investasi Perusahaan Sendiri', 1325990, NULL, 265731064, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('95', 'CNC VERTICAL MACH.CENTER LEADWELL MCV-OP', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1992', 31, 'Investasi Perusahaan Sendiri', 1325990, NULL, 45199436, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('96', 'CNC VERTICAL MACH.CENTER 4VA - 50', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1990', 33, 'Investasi Perusahaan Sendiri', 1325990, NULL, 161082437, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('97', 'CNC VERTICAL MACH.CENTER 4VA - 50', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1990', 33, 'Investasi Perusahaan Sendiri', 1325990, NULL, 157702155, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('98', 'CNC VERTICAL MACH.CENTER 4VA - 50', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '1990', 33, 'Investasi Perusahaan Sendiri', 1325990, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL),
('99', 'CNC VERTICAL MACH CENTER DECKEL MAHO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 0, '2009', 14, 'Investasi Perusahaan Sendiri', 1325990, NULL, 10500000, 'Pemanfaatan oleh Perusahaan Sendiri', 'PT. Dirgantara Indonesia', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `di_assets_log`
--

CREATE TABLE `di_assets_log` (
  `id` varchar(100) NOT NULL,
  `user_edit` varchar(100) DEFAULT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `di_assets_photo`
--

CREATE TABLE `di_assets_photo` (
  `id` varchar(100) NOT NULL,
  `gambar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `di_kapabilitas`
--

CREATE TABLE `di_kapabilitas` (
  `fungsi` varchar(100) NOT NULL,
  `jenis_material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `dimensi-kecil-panjang` float DEFAULT NULL,
  `dimensi-kecil-lebar` float DEFAULT NULL,
  `dimensi-kecil-tebal` float DEFAULT NULL,
  `dimensi-kecil-diameter` float DEFAULT NULL,
  `dimensi-besar-panjang` float DEFAULT NULL,
  `dimensi-besar-lebar` float DEFAULT NULL,
  `dimensi-besar-tebal` float DEFAULT NULL,
  `dimensi-besar-diameter` float DEFAULT NULL,
  `berat-kecil` float DEFAULT NULL,
  `berat-besar` float DEFAULT NULL,
  `panjang_kabel-pendek` float DEFAULT NULL,
  `panjang_kabel-panjang` float DEFAULT NULL,
  `kapasitas_daya-kecil` float DEFAULT NULL,
  `kapasitas_daya-besar` float DEFAULT NULL,
  `ketinggian_jatuh-kecil` float DEFAULT NULL,
  `ketinggian_jatuh-besar` float DEFAULT NULL,
  `frekuensi-kecil` float DEFAULT NULL,
  `frekuensi-besar` float DEFAULT NULL,
  `acceleration-kecil` float DEFAULT NULL,
  `acceleration-besar` float DEFAULT NULL,
  `load-5g-kecil` float DEFAULT NULL,
  `load-5g-besar` float DEFAULT NULL,
  `load-10g-kecil` float DEFAULT NULL,
  `load-10g-besar` float DEFAULT NULL,
  `load-20g-kecil` float DEFAULT NULL,
  `load-20g-besar` float DEFAULT NULL,
  `load-30g-kecil` float DEFAULT NULL,
  `load-30-besar` float DEFAULT NULL,
  `temperature-kecil` float DEFAULT NULL,
  `temperature-besar` float DEFAULT NULL,
  `humidity-kecil` float DEFAULT NULL,
  `humidity-besar` float DEFAULT NULL,
  `pulsa-kecil` float DEFAULT NULL,
  `pulsa-besar` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_log`
--

CREATE TABLE `global_log` (
  `user_edit` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_log`
--

INSERT INTO `global_log` (`user_edit`, `keterangan`, `date_edit`) VALUES
('1', 'Mengupdate data 30', '2023-09-10 01:44:30'),
('1', 'Mengupdate data 30 pada tabel undefined', '2023-09-10 01:46:12'),
('1', 'Mengupdate data 30 pada tabel undefined', '2023-09-10 01:46:38'),
('1', 'Mengupdate data 30 pada tabel len_assets', '2023-09-10 01:46:59'),
('1', 'Mengupdate data 30 pada tabel len_assets', '2023-09-10 03:02:43'),
('1', 'Mengupdate data 30 pada tabel len_assets', '2023-09-10 03:05:40'),
('1', 'Menambahkan data kitaa bersama pada tabel len_assets', '2023-09-10 03:17:40'),
('admin', 'Menambahkan data kitaa bersama pada tabel len_assets', '2023-09-10 03:22:08'),
('username', 'Mengupdate data 30 pada tabel len_assets', '2023-09-10 03:23:20'),
('username', 'Mengupdate data 30 pada tabel len_assets', '2023-09-10 08:27:13'),
('username', 'Menambahkan foto pada asset 30 pada tabel len_assets', '2023-09-10 08:28:01'),
('username', 'Menghapus foto pada asset 30 pada tabel len_assets', '2023-09-10 09:12:13'),
('admin', 'Menambahkan data kitaa bersima pada tabel len_assets', '2023-09-10 09:52:05'),
('admin', 'Menambahkan data kitaa bersima pada tabel len_assets', '2023-09-10 10:02:06'),
('admin', 'Menambahkan data kitaa bersima pada tabel len_assets', '2023-09-10 10:02:26'),
('admin', 'Menambahkan data kitaa bersima pada tabel len_assets', '2023-09-10 10:05:02'),
('admin', 'Menambahkan data kitaa bersima pada tabel len_assets', '2023-09-10 10:05:36'),
('admin', 'Menambahkan data kitaa bersima pada tabel len_assets', '2023-09-10 10:06:57'),
('admin', 'Menambahkan data kitaa bersima pada tabel len_assets', '2023-09-10 10:07:56'),
('username', 'Mengupdate data 30 pada tabel len_assets', '2023-09-18 03:40:09'),
('admin', 'Menambahkan data ada yang baru nih pada tabel len_assets', '2023-09-18 03:45:55'),
('username01', 'Menambahkan foto pada asset 33 pada tabel len_assets', '2023-09-19 05:27:48'),
('username01', 'Menambahkan foto pada asset 33 pada tabel len_assets', '2023-09-19 05:35:29'),
('username01', 'Menambahkan foto pada asset 33 pada tabel len_assets', '2023-09-26 05:53:04'),
('username01', 'Menambahkan foto pada asset 33 pada tabel len_assets', '2023-09-26 05:54:09'),
('username01', 'Menambahkan foto pada asset 33 pada tabel len_assets', '2023-09-26 05:55:10'),
('username01', 'Menambahkan foto pada asset 33 pada tabel len_assets', '2023-09-26 06:21:08'),
('username01', 'Menambahkan foto pada asset 41 pada tabel len_assets', '2023-09-26 06:25:58'),
('30', '30 mengupdate data kalii ketiga  pada tabel len_assets', '2023-10-05 04:57:39'),
('id_bawru', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-05 05:28:24'),
('userinamee', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-05 05:37:46'),
('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-05 05:40:13'),
('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-05 06:09:52'),
('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-05 06:10:54'),
('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-05 06:11:33'),
('41', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-05 06:18:31'),
('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-05 06:24:20'),
('id_45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-05 06:29:41'),
('id_45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-05 06:30:41'),
('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-05 06:31:12'),
('id_45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-05 06:31:32'),
('id_45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-05 06:35:42'),
('id_45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-05 06:41:09'),
('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-06 00:54:37'),
('id45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 00:55:31'),
('id45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 00:59:37'),
('id45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:01:34'),
('id45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:03:10'),
('id45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:08:17'),
('id45', 'userinamee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:13:20'),
('id45', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:19:11'),
('id45', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:19:34'),
('id45', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:25:57'),
('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-06 01:45:33'),
('id48', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:46:48'),
('id49', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:54:47'),
('id49', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:56:02'),
('id49', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:58:03'),
('id49', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 01:59:44'),
('id49', 'usermee mengupdate data kalii ketiga  pada tabel undefined', '2023-10-06 02:00:12'),
('username01', 'username01 menambahkan foto pada undefined pada tabel len_assets', '2023-10-06 07:01:49'),
('darrelTesting', 'darrelTesting menambahkan foto pada undefined pada tabel undefined', '2023-10-09 03:06:01'),
('darrelCoba', 'darrelCoba menambahkan data percobaanUploadKartuMesin pada tabel undefined', '2023-10-10 04:36:10'),
('darrelCoba', 'darrelCoba menambahkan data percobaanUploadKartuMesin pada tabel undefined', '2023-10-10 04:39:05'),
('darrelCoba', 'darrelCoba menambahkan data percobaanUploadKartuMesin pada tabel undefined', '2023-10-10 04:41:52'),
('41', 'darrelTester mengupdate data \"updateCobaDataSheet pada tabel undefined', '2023-10-10 04:45:43'),
('darrelCoba', 'darrelCoba menambahkan data percobaanUploadKartuMesin pada tabel undefined', '2023-10-10 21:59:05'),
('darrelCoba', 'darrelCoba menambahkan data percobaanUploadKartuMesin pada tabel undefined', '2023-10-10 21:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `global_mail-in`
--

CREATE TABLE `global_mail-in` (
  `id_surat` int(10) NOT NULL,
  `nomor_surat` varchar(100) DEFAULT NULL,
  `link_file` varchar(100) DEFAULT NULL,
  `nama_file` varchar(100) DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `date_edit` timestamp(6) NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_mail-in`
--

INSERT INTO `global_mail-in` (`id_surat`, `nomor_surat`, `link_file`, `nama_file`, `mime_type`, `url`, `date_edit`) VALUES
(1, '100', 'Darrel Johan_1303200056_Tether_Tugas1.pdf', 'Darrel Johan_1303200056_Tether_Tugas1.pdf', 'application/pdf', 'https://drive.google.com/file/d/11gMw4T5hGwFH1g9Tm6FwyqM4fby4ztOR/view?usp=sharing', NULL),
(2, '200', 'Dokumen tanpa judul', 'Dokumen tanpa judul', 'application/vnd.google-apps.document', 'https://docs.google.com/document/d/19NfR58VM_FuY5G1_2pXkUHPy58Ec4hK-7gSOLfLbkD4/edit?usp=sharing', NULL),
(3, '300', 'flow FL.xlsx', 'flow FL.xlsx', 'application/vnd.ms-excel', 'https://docs.google.com/spreadsheets/d/1I_xbLkuMGiwMDPugQJFZ9LU6RIkf40Y1/edit?usp=sharing&ouid=10265', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `global_mail-out`
--

CREATE TABLE `global_mail-out` (
  `id_surat` int(10) NOT NULL,
  `nomor_surat` varchar(100) DEFAULT NULL,
  `link_file` varchar(100) DEFAULT NULL,
  `nama_file` varchar(100) DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `date_edit` timestamp(6) NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_mail-out`
--

INSERT INTO `global_mail-out` (`id_surat`, `nomor_surat`, `link_file`, `nama_file`, `mime_type`, `url`, `date_edit`) VALUES
(1, '100', 'Darrel Johan_1303200056_Tether_Tugas1.pdf', 'Darrel Johan_1303200056_Tether_Tugas1.pdf', 'application/pdf', 'https://drive.google.com/file/d/11gMw4T5hGwFH1g9Tm', NULL),
(2, '200', 'Dokumen tanpa judul', 'Dokumen tanpa judul', 'application/vnd.google-apps.document', 'https://docs.google.com/document/d/19NfR58VM_FuY5G', NULL),
(3, '300', 'flow FL.xlsx', 'flow FL.xlsx', 'application/vnd.ms-excel', 'https://docs.google.com/spreadsheets/d/1I_xbLkuMGi', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `global_news`
--

CREATE TABLE `global_news` (
  `id_surat` int(11) NOT NULL,
  `nomor_surat` varchar(100) DEFAULT NULL,
  `link_file` varchar(100) DEFAULT NULL,
  `nama_file` varchar(100) DEFAULT NULL,
  `mime_type` varchar(100) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `date_edit` timestamp(6) NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_news`
--

INSERT INTO `global_news` (`id_surat`, `nomor_surat`, `link_file`, `nama_file`, `mime_type`, `url`, `date_edit`) VALUES
(1, '100', 'Darrel Johan_1303200056_Tether_Tugas1.pdf', 'Darrel Johan_1303200056_Tether_Tugas1.pdf', 'application/pdf', 'https://drive.google.com/file/d/11gMw4T5hGwFH1g9Tm6FwyqM4fby4ztOR/view?usp=sharing', NULL),
(2, '200', 'Dokumen tanpa judul', 'Dokumen tanpa judul', 'application/vnd.google-apps.document', 'https://docs.google.com/document/d/19NfR58VM_FuY5G1_2pXkUHPy58Ec4hK-7gSOLfLbkD4/edit?usp=sharing', NULL),
(3, '300', 'flow FL.xlsx', 'flow FL.xlsx', 'application/vnd.ms-excel', 'https://docs.google.com/spreadsheets/d/1I_xbLkuMGiwMDPugQJFZ9LU6RIkf40Y1/edit?usp=sharing&ouid=10265', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `global_user-request`
--

CREATE TABLE `global_user-request` (
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_user-request`
--

INSERT INTO `global_user-request` (`username`, `email`, `jabatan`, `password`, `user_date_created`) VALUES
('pengguna1', 'pengguna2', 'pengguna', 'pengguna', '2023-09-18 08:47:03'),
('pengguna1', 'pengguna3', 'pengguna', 'pengguna', '2023-09-18 09:17:17'),
('pengguna3', 'pengguna6', 'pengguna', 'pengguna', '2023-10-09 11:09:34'),
('pengguna3', 'pengguna7', 'pengguna', 'pengguna', '2023-10-09 11:13:32'),
('tester01', 'tester01@email.com', 'jabatan1', '12345', '2023-09-08 08:18:59'),
('undefined', 'undefined', 'jabatan1', 'undefined', '2023-09-08 08:18:59'),
('userbaru1', 'userbaru1@email.com', 'Admin fesbuk', '12345678', '2023-09-08 08:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `global_users`
--

CREATE TABLE `global_users` (
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `user_date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_users`
--

INSERT INTO `global_users` (`username`, `email`, `jabatan`, `password`, `user_date_created`) VALUES
(NULL, 'cobapostman31@email.com', NULL, '12345678', '2023-09-18 09:28:18');

-- --------------------------------------------------------

--
-- Table structure for table `len_assets`
--

CREATE TABLE `len_assets` (
  `id` varchar(11) NOT NULL,
  `nama_asset` varchar(100) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `tipe_mesin` varchar(100) DEFAULT NULL,
  `kategori_fungsi_mesin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`kategori_fungsi_mesin`)),
  `raw_material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`raw_material`)),
  `jenis_asset` varchar(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL,
  `status_pemakaian` varchar(100) DEFAULT NULL,
  `utilisasi` int(10) DEFAULT NULL,
  `tahun_perolehan` year(4) DEFAULT NULL,
  `umur_teknis` int(10) DEFAULT NULL,
  `sumber_dana` varchar(100) DEFAULT NULL,
  `nilai_perolehan` int(10) DEFAULT NULL,
  `nilai_perolehan_dollar` int(10) DEFAULT NULL,
  `nilai_buku` int(10) DEFAULT NULL,
  `rencana_optimisasi` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `data_sheet` varchar(500) DEFAULT NULL,
  `kartu_mesin` varchar(500) DEFAULT NULL,
  `kartu_elektronik` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `len_assets`
--

INSERT INTO `len_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('1', 'Mesin Bor Duduk/Bench Drill', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '0000', 0, 'Investasi Perusahaan Sendiri', 0, NULL, 1, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('10', 'Air Cooled MIG Welding Guns', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2008', 0, 'Investasi Perusahaan Sendiri', 2350000, NULL, 1, '', '08. OpProd/Gd.O/R.Catkecil', NULL, NULL, NULL),
('11', 'Mesin Bor Duduk/Bench Drill', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '0000', 0, 'Investasi Perusahaan Sendiri', 2403204, NULL, 1, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('12', 'Cutting Wheel', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2015', 0, 'Investasi Perusahaan Sendiri', 2500000, NULL, 479167, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('13', 'Mesin Las MIG Kemppi Master MLS 3500', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2014', 0, 'Investasi Perusahaan Sendiri', 35806500, NULL, 4177425, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('14', 'Mesin Las MIG Kemppi Master MLS 3500', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2014', 0, 'Investasi Perusahaan Sendiri', 35806500, NULL, 4177425, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('15', 'Mesin Bor Duduk/Bench Drill West Lake ZQ4132', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2019', 0, 'Investasi Perusahaan Sendiri', 8866500, NULL, 5246012, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('16', 'Mesin Bor Duduk/Bench Drill West Lake ZQD4132', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2019', 0, 'Investasi Perusahaan Sendiri', 9736000, NULL, 5760467, '', '08. OpProd/Gd.E Lt.1', NULL, NULL, NULL),
('17', 'Mesin Las MIG ESAB Buddi 500i', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2015', 0, 'Investasi Perusahaan Sendiri', 39450000, NULL, 7890000, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('18', 'Mesin Las Listrik SAF-Fro Buffalo 650X', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2018', 0, 'Investasi Perusahaan Sendiri', 87289650, NULL, 50191549, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('19', 'Mesin Las Listrik SAF-Fro Buffalo 650X', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2018', 0, 'Investasi Perusahaan Sendiri', 87289650, NULL, 50191549, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('2', 'Mesin Bor Frais', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '0000', 0, 'Investasi Perusahaan Sendiri', 0, NULL, 1, '', '08. OpProd/Gd.O', NULL, NULL, NULL),
('20', 'Bandsaw Machine Mega BS400SA', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2018', 0, 'Investasi Perusahaan Sendiri', 260000000, NULL, 147333333, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('3', 'Mesin Gerinda Duduk', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '0000', 0, 'Investasi Perusahaan Sendiri', 0, NULL, 1, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('30', 'kalii ketiga ', NULL, NULL, '[\"bubut\",\"cutting\",\"Tester\"]', '[\"bubut\",\"cutting\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('33', 'kamyuu u nya 2', NULL, NULL, NULL, NULL, 'kita', 'sehat', 'hebat', 50, '0000', 5, 'sumbangan', 3, NULL, 3, 'tahun depan', 'jepang', NULL, NULL, NULL),
('4', 'Mesin Las Listrik Hitachi SS 5', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '0000', 0, 'Investasi Perusahaan Sendiri', 0, NULL, 1, '', '08. OpProd/Gd.B Lt.1', NULL, NULL, NULL),
('41', '\"updateCobaDataSheet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:3000/preview/fileStorage/data_sheet&kartu_mesin/1696938343364-Absen DQlab 1.jpg', '\"linkGoogol\"', NULL),
('42', 'kitaa bersima', NULL, NULL, '[\"bubut\",\"cutting\"]', '[\"bubut\",\"cutting\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('43', 'ada yang baru nih', NULL, NULL, '[\"bubut\",\"cutting\"]', '[\"bubut\",\"cutting\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('5', 'Mesin Potong/Shearing INOUE / F 250-3', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '1981', 0, 'Investasi Perusahaan Sendiri', 0, NULL, 1, '', '08. OpProd/Gd.O', NULL, NULL, NULL),
('6', 'Mesin Sand Blasting KMI', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '0000', 0, 'Investasi Perusahaan Sendiri', 0, NULL, 1, '', '08.OpProd/Gd.O', NULL, NULL, NULL),
('7', 'Mesin Gergaji/Hack Saw Machine', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2012', 0, 'Investasi Perusahaan Sendiri', 266750, NULL, 1, '', '08. OpProd/Gd.O', NULL, NULL, NULL),
('8', 'Air Cooled MIG Welding Guns', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2008', 0, 'Investasi Perusahaan Sendiri', 2350000, NULL, 1, '', '08. OpProd/Gd.O/R.Catkecil', NULL, NULL, NULL),
('9', 'Air Cooled MIG Welding Guns', NULL, NULL, NULL, NULL, '', 'Baik Tidak dipakai', 'Unutilized', 0, '2008', 0, 'Investasi Perusahaan Sendiri', 2350000, NULL, 1, '', '08. OpProd/Gd.O/R.Catkecil', NULL, NULL, NULL),
('id36725', 'percobaanUploadKartuMesin', NULL, NULL, '[\"bubut\", \"cutting\", \"kategori\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:3000/preview/fileStorage/data_sheet&kartu_mesin/1697000345969-1303200056.pdf'),
('id367675', 'percobaanUploadKartuMesin', NULL, NULL, '[\"bubut\", \"cutting\", \"kategori\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://localhost:3000/preview/fileStorage/data_sheet&kartu_mesin/1697000354906-1303200056.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `len_assets_log`
--

CREATE TABLE `len_assets_log` (
  `id` varchar(100) NOT NULL,
  `user_edit` varchar(100) DEFAULT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `len_assets_log`
--

INSERT INTO `len_assets_log` (`id`, `user_edit`, `date_edit`) VALUES
('id36723', 'darrelCoba', '2023-10-10 04:39:05'),
('id36725', 'darrelCoba', '2023-10-10 04:41:52'),
('id36746', 'darrelCoba', '2023-10-10 04:36:10'),
('id367675', 'darrelCoba', '2023-10-10 21:59:14'),
('id45', 'usermee', '2023-10-06 01:25:57'),
('id46', 'admin', '2023-10-06 01:45:33'),
('id_45', 'saya', '2023-10-05 13:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `len_assets_photo`
--

CREATE TABLE `len_assets_photo` (
  `id` varchar(100) NOT NULL,
  `gambar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`gambar`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `len_assets_photo`
--

INSERT INTO `len_assets_photo` (`id`, `gambar`) VALUES
('43', '[\"http://localhost:3000/preview/fileStorage/photo/1696845961059-KTM Digital.jpg\"]'),
('id45', '[\"hwehwe\", \"new_value\", \"new_value\"]');

-- --------------------------------------------------------

--
-- Table structure for table `len_kapabilitas`
--

CREATE TABLE `len_kapabilitas` (
  `fungsi` varchar(100) NOT NULL,
  `jenis_material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `dimensi-kecil-panjang` float DEFAULT NULL,
  `dimensi-kecil-lebar` float DEFAULT NULL,
  `dimensi-kecil-tebal` float DEFAULT NULL,
  `dimensi-kecil-diameter` float DEFAULT NULL,
  `dimensi-besar-panjang` float DEFAULT NULL,
  `dimensi-besar-lebar` float DEFAULT NULL,
  `dimensi-besar-tebal` float DEFAULT NULL,
  `dimensi-besar-diameter` float DEFAULT NULL,
  `berat-kecil` float DEFAULT NULL,
  `berat-besar` float DEFAULT NULL,
  `panjang_kabel-pendek` float DEFAULT NULL,
  `panjang_kabel-panjang` float DEFAULT NULL,
  `kapasitas_daya-kecil` float DEFAULT NULL,
  `kapasitas_daya-besar` float DEFAULT NULL,
  `ketinggian_jatuh-kecil` float DEFAULT NULL,
  `ketinggian_jatuh-besar` float DEFAULT NULL,
  `frekuensi-kecil` float DEFAULT NULL,
  `frekuensi-besar` float DEFAULT NULL,
  `acceleration-kecil` float DEFAULT NULL,
  `acceleration-besar` float DEFAULT NULL,
  `load-5g-kecil` float DEFAULT NULL,
  `load-5g-besar` float DEFAULT NULL,
  `load-10g-kecil` float DEFAULT NULL,
  `load-10g-besar` float DEFAULT NULL,
  `load-20g-kecil` float DEFAULT NULL,
  `load-20g-besar` float DEFAULT NULL,
  `load-30g-kecil` float DEFAULT NULL,
  `load-30-besar` float DEFAULT NULL,
  `temperature-kecil` float DEFAULT NULL,
  `temperature-besar` float DEFAULT NULL,
  `humidity-kecil` float DEFAULT NULL,
  `humidity-besar` float DEFAULT NULL,
  `pulsa-kecil` float DEFAULT NULL,
  `pulsa-besar` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `len_kapabilitas`
--

INSERT INTO `len_kapabilitas` (`fungsi`, `jenis_material`, `metode`, `dimensi-kecil-panjang`, `dimensi-kecil-lebar`, `dimensi-kecil-tebal`, `dimensi-kecil-diameter`, `dimensi-besar-panjang`, `dimensi-besar-lebar`, `dimensi-besar-tebal`, `dimensi-besar-diameter`, `berat-kecil`, `berat-besar`, `panjang_kabel-pendek`, `panjang_kabel-panjang`, `kapasitas_daya-kecil`, `kapasitas_daya-besar`, `ketinggian_jatuh-kecil`, `ketinggian_jatuh-besar`, `frekuensi-kecil`, `frekuensi-besar`, `acceleration-kecil`, `acceleration-besar`, `load-5g-kecil`, `load-5g-besar`, `load-10g-kecil`, `load-10g-besar`, `load-20g-kecil`, `load-20g-besar`, `load-30g-kecil`, `load-30-besar`, `temperature-kecil`, `temperature-besar`, `humidity-kecil`, `humidity-besar`, `pulsa-kecil`, `pulsa-besar`) VALUES
('Cutting', 'Steel', NULL, 150, 5, 5, 10, 3000, 400, 310, 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Cutting', 'Aluminium', NULL, 150, 5, 5, 10, 3000, 400, 310, 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Drilling', 'Steel', NULL, NULL, NULL, 1, 1, NULL, NULL, 50, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Drilling', 'Aluminium', NULL, NULL, NULL, 1, 1, NULL, 50, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Welding', 'Steel', NULL, NULL, NULL, 1, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Welding', 'Aluminium', NULL, NULL, NULL, 1, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Welding', 'Stainless Steel', NULL, NULL, NULL, 1, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Laser Marking', '', NULL, 65, 65, NULL, NULL, 205, 205, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Soldering', 'Board', NULL, 50, 50, 1, NULL, 650, 370, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Soldering', 'Component', NULL, 2, 1, 1, NULL, 150, 50, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Packing', '', NULL, 10, 10, 10, NULL, 1200, 1050, 2000, NULL, 0.5, 1650, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Cutting Cable', 'Raw Material Diameter', NULL, NULL, NULL, NULL, 0.33, NULL, NULL, NULL, 8, NULL, NULL, 46, 1000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Cutting Cable', 'Conductor Cross Section', NULL, NULL, NULL, NULL, 0.05, NULL, NULL, NULL, 8, NULL, NULL, 46, 1000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Modul Surya', '', NULL, NULL, NULL, NULL, NULL, 1990, 1120, NULL, NULL, NULL, NULL, NULL, NULL, 17, 390, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Drop Test', '', 'Free Drop', 10, 10, 10, NULL, 800, 800, 800, NULL, 0.5, 85, NULL, NULL, NULL, NULL, 300, 2000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Vibration Test', '', 'Vertical Table', NULL, NULL, NULL, NULL, 550, 550, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3000, NULL, 980, 0.5, 190, 0.5, 90, 0.5, 40, 0.5, 23, NULL, NULL, NULL, NULL, NULL, NULL),
('Vibration Test', '', 'Horizontal Table', NULL, NULL, NULL, NULL, 550, 550, 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 3000, NULL, 980, 0.5, 190, 0.5, 90, 0.5, 40, 0.5, 23, NULL, NULL, NULL, NULL, NULL, NULL),
('Environmental Stress Screening (ESS) Chambers', '', NULL, NULL, NULL, NULL, NULL, 1000, 1000, 800, NULL, 0.25, 250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -70, 180, 20, 98, NULL, NULL),
('Shock Test', '', NULL, NULL, NULL, NULL, NULL, 700, 700, NULL, NULL, 0.5, 100, NULL, NULL, NULL, NULL, 5, 1500, NULL, NULL, 100, 6000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 30),
('SHOCK TEST', '', 'Sawtooth', NULL, NULL, NULL, NULL, 700, 700, NULL, NULL, 0.5, 100, NULL, NULL, NULL, NULL, 5, 1500, NULL, NULL, 15, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 20);

-- --------------------------------------------------------

--
-- Table structure for table `pal_assets`
--

CREATE TABLE `pal_assets` (
  `id` varchar(100) NOT NULL,
  `nama_asset` varchar(100) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `tipe_mesin` varchar(100) DEFAULT NULL,
  `kategori_fungsi_mesin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`kategori_fungsi_mesin`)),
  `raw_material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`raw_material`)),
  `jenis_asset` varchar(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL,
  `status_pemakaian` varchar(100) DEFAULT NULL,
  `utilisasi` int(10) DEFAULT NULL,
  `tahun_perolehan` year(4) DEFAULT NULL,
  `umur_teknis` int(10) DEFAULT NULL,
  `sumber_dana` varchar(100) DEFAULT NULL,
  `nilai_perolehan` int(10) DEFAULT NULL,
  `nilai_perolehan_dollar` int(10) DEFAULT NULL,
  `nilai_buku` int(10) DEFAULT NULL,
  `rencana_optimisasi` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `data_sheet` varchar(500) DEFAULT NULL,
  `kartu_mesin` varchar(500) DEFAULT NULL,
  `kartu_elektronik` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pal_assets`
--

INSERT INTO `pal_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('1', 'CUTTING NIBBLING SHEAR.MERK : TRUMF TYPE : CS 75-1550 S/N : 1366', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1983', 30, 'Investasi Perusahaan Sendiri', 39785720, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('10', 'Roller Conv. For NC Cutting Flame & CM FA 08', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 425924666, NULL, 28394373, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('11', 'Working table for cutting FA 24', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 100416483, NULL, 6694261, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('12', 'Working table for cutting FA 27', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 16732567, NULL, 1115584, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('13', 'HIFH SPEED CUTTING MACHINE M455/1250 TP03', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 11106586, NULL, 740331, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('14', 'PIPE DISC CUTTING OXYT/D', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 751036334, NULL, 50067937, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('15', 'PIPE CUTTING OXYT/P', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 751036334, NULL, 50067937, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('16', 'AUTO GAS CUTTING / P', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 751036334, NULL, 50067937, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('17', 'AUTO GAS CUTTING / P', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 751036334, NULL, 50067937, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('18', 'PORTABLE GAS CUTTINGMACHINE TYPE PC2, RAIL 1,8, CABLE POWER SUPPLY CUTTING TIP NOZZLE CUT CIRCLE CUT', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1997', 30, 'Investasi Perusahaan Sendiri', 33455219, NULL, 5575941, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('19', 'THERMAL CUTTING MACHINE', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1998', 30, 'Investasi Perusahaan Sendiri', 44000000, NULL, 8433418, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('2', 'GAS CUTTINGTURN TABLE', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1983', 30, 'Investasi Perusahaan Sendiri', 3404784, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('20', 'Rehab NC Plasma Cutting FA10 (F02MAR03)', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '2004', 30, 'Investasi Perusahaan Sendiri', 1185918235, NULL, 474366715, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('21', 'PENGANGKATAN ASSET GUN PLASMA CUTTING D.12000 COMPLET SET REF OTC', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2008', 30, 'Investasi Perusahaan Sendiri', 14574560, NULL, 7773080, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('22', 'Rehab. Mesin Potong NC Plasma Cutting', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '2009', 30, 'Investasi Perusahaan Sendiri', 1302579566, NULL, 738128042, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('23', 'PENGADAAN PORTABLE MULTI-PURPOSE OXY FUEL CUTTING MACHINE (SKATOR); TYPE WEASEL; C/W_F14EAV04', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 14650000, NULL, 10824764, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('24', 'PENGADAAN CUTTING MACHINE FOR MULTI PURPOSE; TYPE HANDY AUTO SERIES; C/W REGULATOR OXY-ACY_F14EAV04', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 9250000, NULL, 6834764, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('25', 'PENGADAAN CUTTING MACHINE FOR MULTI PURPOSE; TYPE HANDY AUTO SERIES; C/W REGULATOR OXY-ACY_F14EAV04', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 9250000, NULL, 6834764, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('26', 'PENGADAAN CUTTING MACHINE FOR MULTI PURPOSE; TYPE HANDY AUTO PLUS SERIES (Semi- Motorized O_F14EAV04', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 10500000, NULL, 7758302, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('27', 'PENGADAAN CUTTING MACHINE FOR MULTI PURPOSE; TYPE HANDY AUTO PLUS SERIES (Semi- Motorized O_F14EAV04', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 14650000, NULL, 10824764, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('28', 'PENGADAAN CUTTING MACHINE FOR MULTI PURPOSE; TYPE HANDY AUTO PLUS SERIES (Semi- Motorized O_F14EAV04', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 14650000, NULL, 10824764, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('29', 'PENGADAAN CUTTING MACHINE FOR MULTI PURPOSE; TYPE HANDY AUTO PLUS SERIES (Semi- Motorized O_F14EAV04', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 14650000, NULL, 10824764, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('3', 'FLASMA ARC CUTTINGTORCHTYPE : PMC.250 LENGKAP DENGAN SPARE PARTS BESERTA PEMBUATAN SYSTEM SALURAN', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1985', 30, 'Investasi Perusahaan Sendiri', 1838900, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('30', 'PENGADAAN CUTTING MACHINE FOR MULTI PURPOSE; TYPE HANDY AUTO PLUS SERIES (Semi- Motorized O_F14EAV04', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 14650000, NULL, 10824764, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('31', 'CUTTING MACHINE, OXYGEN; TYPE HANDY AUTO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 8156950, NULL, 6117730, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('32', 'CUTTING MACHINE, OXYGEN; TYPE HANDY AUTO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 8156950, NULL, 6117730, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('33', 'CUTTING MACHINE, OXYGEN; TYPE HANDY AUTO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 8156950, NULL, 6117730, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('34', 'CUTTING MACHINE, OXYGEN; TYPE HANDY AUTO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 8156950, NULL, 6117730, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('35', 'CUTTING MACHINE, OXYGEN; TYPE HANDY AUTO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 8156950, NULL, 6117730, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('36', 'CUTTING MACHINE,OXYGEN; STRAIGHT CUTTING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 12710250, NULL, 9532710, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('37', 'CUTTING MACHINE,OXYGEN; STRAIGHT CUTTING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 12710250, NULL, 9532710, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('38', 'CUTTING MACHINE,OXYGEN; STRAIGHT CUTTING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 12710250, NULL, 9532710, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('39', 'CUTTING MACHINE,OXYGEN; STRAIGHT CUTTING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 12710250, NULL, 9532710, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('4', 'PORTAL CRANE (FABRIKASIFPB 28). SERTA CUTTING UNIT RBC.', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '1985', 30, 'Investasi Perusahaan Sendiri', 1602134, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('40', 'CUTTING MACHINE,OXYGEN; STRAIGHT CUTTING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 12710250, NULL, 9532710, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('41', 'CUTTING MACHINE,OXYGEN; STRAIGHT CUTTING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 12710250, NULL, 9532710, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('42', 'CUTTING MACHINE,OXYGEN; STRAIGHT CUTTING MACHINE', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 12710250, NULL, 9532710, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('43', 'CUTTING MACHINE, OXYGEN; MODEL IK - 72T, SEMI AUTO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 38013000, NULL, 28509720, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('44', 'CUTTING MACHINE, OXYGEN; MODEL IK - 72T, SEMI AUTO', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 38013000, NULL, 28509720, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('45', 'DUST COLLECTOR UNTUK NC CUTTING MACHINE BENGKEL FABRIKASI', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 1070000000, NULL, 802499750, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('46', 'MESIN NC PLASMA CUTTING TYPE DRY PLASMA C/W DUST COLLECTOR', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 2147483647, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('47', 'CUTTING MACHINE, OXYGEN; PORTABLE AUTOMATIC GAS CUTTING MACHINE MERK KOIKE TYPE WEASEL 220 V COMPLET', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 15000000, NULL, 11374971, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Harkan', NULL, NULL, NULL),
('48', 'CUTTING MACHINE, OXYGEN; PORTABLE AUTOMATIC GAS CUTTING MACHINE MERK KOIKE TYPE WEASEL 220 V COMPLET', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 15000000, NULL, 11374971, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Harkan', NULL, NULL, NULL),
('49', 'CUTTING MACHINE, OXYGEN; TYPE PLASMA CUTTING, 220V/380V, CAP. CUTTING 20MM STAINLESS STEEL, IP 23, W', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 31000000, NULL, 23508343, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Harkan', NULL, NULL, NULL),
('5', 'COORDIATE DRIVE CUTTINGMACHINE SUPRAREX. MERK : E S A B TYPE : SMB 25/30 AMP : 300 BESERTA', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1986', 30, 'Investasi Perusahaan Sendiri', 63602056, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('50', 'MESIN CUTTING SCATOR', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2015', 30, 'Investasi Perusahaan Sendiri', 169440000, NULL, 129903972, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('51', 'RETROFIT CNC PLASMA CUTTING', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Utilized', 1, '2020', 30, 'Investasi Perusahaan Sendiri', 1244000000, NULL, 1157611050, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('6', 'PLASMA CUTTING PLANT RPC.250 MERK : E S A B .', NULL, NULL, NULL, NULL, '', 'Rusak Ringan', 'Utilized', 1, '1987', 30, 'Investasi Perusahaan Sendiri', 34747574, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Perang', NULL, NULL, NULL),
('7', 'MESIN NC.CUTTING', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1990', 30, 'Investasi Perusahaan Sendiri', 25452243, NULL, 0, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL),
('8', 'AIR PLASMA METALCUTTINGMERK : S A F NERTAZIP : 520 SR. CAP : 0,5 - 20 MM. POWER INPUT : 110 WATT', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1991', 30, 'Investasi Perusahaan Sendiri', 8201876, NULL, 130686, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Rekayasa Umum', NULL, NULL, NULL),
('9', 'NC Plasma cutting machine FA 10', NULL, NULL, NULL, NULL, '', 'Rusak Sedang', 'Utilized', 1, '1994', 30, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 388433896, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kapal Niaga', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pal_assets_log`
--

CREATE TABLE `pal_assets_log` (
  `id` varchar(100) NOT NULL,
  `user_edit` varchar(100) DEFAULT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pal_assets_photo`
--

CREATE TABLE `pal_assets_photo` (
  `id` varchar(100) NOT NULL,
  `gambar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pal_kapabilitas`
--

CREATE TABLE `pal_kapabilitas` (
  `fungsi` varchar(100) NOT NULL,
  `jenis_material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `dimensi-kecil-panjang` float DEFAULT NULL,
  `dimensi-kecil-lebar` float DEFAULT NULL,
  `dimensi-kecil-tebal` float DEFAULT NULL,
  `dimensi-kecil-diameter` float DEFAULT NULL,
  `dimensi-besar-panjang` float DEFAULT NULL,
  `dimensi-besar-lebar` float DEFAULT NULL,
  `dimensi-besar-tebal` float DEFAULT NULL,
  `dimensi-besar-diameter` float DEFAULT NULL,
  `berat-kecil` float DEFAULT NULL,
  `berat-besar` float DEFAULT NULL,
  `panjang_kabel-pendek` float DEFAULT NULL,
  `panjang_kabel-panjang` float DEFAULT NULL,
  `kapasitas_daya-kecil` float DEFAULT NULL,
  `kapasitas_daya-besar` float DEFAULT NULL,
  `ketinggian_jatuh-kecil` float DEFAULT NULL,
  `ketinggian_jatuh-besar` float DEFAULT NULL,
  `frekuensi-kecil` float DEFAULT NULL,
  `frekuensi-besar` float DEFAULT NULL,
  `acceleration-kecil` float DEFAULT NULL,
  `acceleration-besar` float DEFAULT NULL,
  `load-5g-kecil` float DEFAULT NULL,
  `load-5g-besar` float DEFAULT NULL,
  `load-10g-kecil` float DEFAULT NULL,
  `load-10g-besar` float DEFAULT NULL,
  `load-20g-kecil` float DEFAULT NULL,
  `load-20g-besar` float DEFAULT NULL,
  `load-30g-kecil` float DEFAULT NULL,
  `load-30-besar` float DEFAULT NULL,
  `temperature-kecil` float DEFAULT NULL,
  `temperature-besar` float DEFAULT NULL,
  `humidity-kecil` float DEFAULT NULL,
  `humidity-besar` float DEFAULT NULL,
  `pulsa-kecil` float DEFAULT NULL,
  `pulsa-besar` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pindad_assets`
--

CREATE TABLE `pindad_assets` (
  `id` varchar(100) NOT NULL,
  `nama_asset` varchar(100) NOT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `tipe_mesin` varchar(100) DEFAULT NULL,
  `kategori_fungsi_mesin` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`kategori_fungsi_mesin`)),
  `raw_material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`raw_material`)),
  `jenis_asset` varchar(100) DEFAULT NULL,
  `kondisi` varchar(100) DEFAULT NULL,
  `status_pemakaian` varchar(100) DEFAULT NULL,
  `utilisasi` int(10) DEFAULT NULL,
  `tahun_perolehan` year(4) DEFAULT NULL,
  `umur_teknis` int(10) DEFAULT NULL,
  `sumber_dana` varchar(100) DEFAULT NULL,
  `nilai_perolehan` int(10) DEFAULT NULL,
  `nilai_perolehan_dollar` int(10) DEFAULT NULL,
  `nilai_buku` int(10) DEFAULT NULL,
  `rencana_optimisasi` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `data_sheet` varchar(500) DEFAULT NULL,
  `kartu_mesin` varchar(500) DEFAULT NULL,
  `kartu_elektronik` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pindad_assets`
--

INSERT INTO `pindad_assets` (`id`, `nama_asset`, `merk`, `tipe_mesin`, `kategori_fungsi_mesin`, `raw_material`, `jenis_asset`, `kondisi`, `status_pemakaian`, `utilisasi`, `tahun_perolehan`, `umur_teknis`, `sumber_dana`, `nilai_perolehan`, `nilai_perolehan_dollar`, `nilai_buku`, `rencana_optimisasi`, `lokasi`, `data_sheet`, `kartu_mesin`, `kartu_elektronik`) VALUES
('1', 'Rotary Welding Demmeler Robotix IP16', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1905', 15, '', 2147483647, NULL, 2147483647, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kendaraan Khusus', NULL, NULL, NULL),
('2', 'Rotary Welding Demmeler Robotix IP16', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1905', 15, '', 2147483647, NULL, 2147483647, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kendaraan Khusus', NULL, NULL, NULL),
('3', 'MESIN LASER CUTTING CNC L22', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1905', 15, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1539680936, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kendaraan Khusus', NULL, NULL, NULL),
('4', 'MESIN SHOT BLASTING MERK WEBLAST', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1905', 15, 'Investasi Perusahaan Sendiri', 2147483647, NULL, 1431404829, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kendaraan Khusus', NULL, NULL, NULL),
('5', 'MESIN HYDRAULIC CNC PRESS BRAKE PPED-5 135/30', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1905', 15, '', 1766227224, NULL, 869097355, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kendaraan Khusus', NULL, NULL, NULL),
('6', 'Painting Booth | Guangli - GL | 10 15 x 7 x 5 m', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1905', 10, '', 1624700000, NULL, 610020693, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kendaraan Khusus', NULL, NULL, NULL),
('7', 'PAINTING BOOTH', NULL, NULL, NULL, NULL, '', 'Baik Digunakan', 'Unutilized', 0, '1905', 15, 'Investasi Perusahaan Sendiri', 1408000000, NULL, 336607344, 'Pemanfaatan oleh Perusahaan Sendiri', 'Divisi Kendaraan Khusus', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pindad_assets_log`
--

CREATE TABLE `pindad_assets_log` (
  `id` varchar(100) NOT NULL,
  `user_edit` varchar(100) DEFAULT NULL,
  `date_edit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pindad_assets_photo`
--

CREATE TABLE `pindad_assets_photo` (
  `id` varchar(100) NOT NULL,
  `gambar` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pindad_kapabilitas`
--

CREATE TABLE `pindad_kapabilitas` (
  `fungsi` varchar(100) NOT NULL,
  `jenis_material` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `metode` varchar(100) DEFAULT NULL,
  `dimensi-kecil-panjang` float DEFAULT NULL,
  `dimensi-kecil-lebar` float DEFAULT NULL,
  `dimensi-kecil-tebal` float DEFAULT NULL,
  `dimensi-kecil-diameter` float DEFAULT NULL,
  `dimensi-besar-panjang` float DEFAULT NULL,
  `dimensi-besar-lebar` float DEFAULT NULL,
  `dimensi-besar-tebal` float DEFAULT NULL,
  `dimensi-besar-diameter` float DEFAULT NULL,
  `berat-kecil` float DEFAULT NULL,
  `berat-besar` float DEFAULT NULL,
  `panjang_kabel-pendek` float DEFAULT NULL,
  `panjang_kabel-panjang` float DEFAULT NULL,
  `kapasitas_daya-kecil` float DEFAULT NULL,
  `kapasitas_daya-besar` float DEFAULT NULL,
  `ketinggian_jatuh-kecil` float DEFAULT NULL,
  `ketinggian_jatuh-besar` float DEFAULT NULL,
  `frekuensi-kecil` float DEFAULT NULL,
  `frekuensi-besar` float DEFAULT NULL,
  `acceleration-kecil` float DEFAULT NULL,
  `acceleration-besar` float DEFAULT NULL,
  `load-5g-kecil` float DEFAULT NULL,
  `load-5g-besar` float DEFAULT NULL,
  `load-10g-kecil` float DEFAULT NULL,
  `load-10g-besar` float DEFAULT NULL,
  `load-20g-kecil` float DEFAULT NULL,
  `load-20g-besar` float DEFAULT NULL,
  `load-30g-kecil` float DEFAULT NULL,
  `load-30-besar` float DEFAULT NULL,
  `temperature-kecil` float DEFAULT NULL,
  `temperature-besar` float DEFAULT NULL,
  `humidity-kecil` float DEFAULT NULL,
  `humidity-besar` float DEFAULT NULL,
  `pulsa-kecil` float DEFAULT NULL,
  `pulsa-besar` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dahana_assets`
--
ALTER TABLE `dahana_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `di_assets`
--
ALTER TABLE `di_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_mail-in`
--
ALTER TABLE `global_mail-in`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `global_mail-out`
--
ALTER TABLE `global_mail-out`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `global_news`
--
ALTER TABLE `global_news`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `global_user-request`
--
ALTER TABLE `global_user-request`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `global_users`
--
ALTER TABLE `global_users`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `len_assets`
--
ALTER TABLE `len_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `len_assets_log`
--
ALTER TABLE `len_assets_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `len_assets_photo`
--
ALTER TABLE `len_assets_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pal_assets`
--
ALTER TABLE `pal_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pindad_assets`
--
ALTER TABLE `pindad_assets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `global_mail-in`
--
ALTER TABLE `global_mail-in`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `global_mail-out`
--
ALTER TABLE `global_mail-out`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `global_news`
--
ALTER TABLE `global_news`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
