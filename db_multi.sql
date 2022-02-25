-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 02:27 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_multi`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fasilitaskamars`
--

CREATE TABLE `fasilitaskamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipe_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fasilitaskamars`
--

INSERT INTO `fasilitaskamars` (`id`, `tipe_kamar`, `nama_fasilitas`, `created_at`, `updated_at`) VALUES
(1, 'Presidential Suite Room', 'Living Room', '2022-02-24 12:26:40', '2022-02-24 12:26:40'),
(2, 'Presidential Suite Room', 'Kitchen', '2022-02-24 12:26:46', '2022-02-24 12:26:46'),
(3, 'Presidential Suite Room', 'Private Pool', '2022-02-24 12:26:56', '2022-02-24 12:26:56'),
(4, 'Presidential Suite Room', 'Coffe Maker', '2022-02-24 12:27:02', '2022-02-24 12:27:02'),
(5, 'Presidential Suite Room', 'Billiards', '2022-02-24 12:27:12', '2022-02-24 12:27:12'),
(6, 'Presidential Suite Room', 'Restaurant', '2022-02-24 12:27:21', '2022-02-24 12:27:21'),
(7, 'Presidential Suite Room', 'Kulkas', '2022-02-24 12:27:28', '2022-02-24 12:27:28'),
(8, 'Presidential Suite Room', 'Wifi', '2022-02-24 12:27:34', '2022-02-24 12:27:34'),
(9, 'Presidential Suite Room', 'Kamar Mandi', '2022-02-24 12:27:46', '2022-02-24 12:27:46'),
(10, 'Presidential Suite Room', 'Sofa', '2022-02-24 12:27:53', '2022-02-24 12:27:53'),
(11, 'Presidential Suite Room', 'TV', '2022-02-24 12:27:58', '2022-02-24 12:27:58'),
(12, 'Presidential Suite Room', 'AC', '2022-02-24 12:28:04', '2022-02-24 12:28:04'),
(13, 'Suite Room', 'Coffe Maker', '2022-02-24 12:28:14', '2022-02-24 12:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitass`
--

CREATE TABLE `fasilitass` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_fasilitas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fasilitass`
--

INSERT INTO `fasilitass` (`id`, `nama_fasilitas`, `keterangan`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Living Room', 'Living Room untuk tempat bersantai anda dan keluarga', '20220224191713.jpg', '2022-02-24 12:17:13', '2022-02-24 12:17:13'),
(2, 'Kitchen', 'Dapur lengkap', '20220224191758.jpg', '2022-02-24 12:17:58', '2022-02-24 12:17:58'),
(3, 'Kolam Renang', 'Kolam Renang seluas 100m2 dengan kedalaman bertingkat', '20220224191832.jpg', '2022-02-24 12:18:32', '2022-02-24 12:18:32'),
(4, 'Coffe Maker', 'Satu set coffe maker', '20220224191920.jpg', '2022-02-24 12:19:20', '2022-02-24 12:19:20'),
(5, 'Ballroom Hotel', 'Ballroom untuk segala acara seluas 300m2', '20220224191957.jpg', '2022-02-24 12:19:57', '2022-02-24 12:19:57'),
(6, 'Billiards', 'Ruangan Billiards dengan 5 meja billiards', '20220224192028.jpg', '2022-02-24 12:20:28', '2022-02-24 12:20:28'),
(7, 'Meeting Room', 'Ruang meeting seluas 50m2 dengan fasilitas lengkap', '20220224192050.jpg', '2022-02-24 12:20:50', '2022-02-24 12:20:50'),
(8, 'Restaurant', 'Restaurant untuk waktu makan anda dengan view yang indah', '20220224192116.jpg', '2022-02-24 12:21:16', '2022-02-24 12:21:16'),
(9, 'Private Pool', 'Private Pool untuk tipe kamar Presidential Suite Room', '20220224192140.jpg', '2022-02-24 12:21:40', '2022-02-24 12:21:40'),
(10, 'Kulkas', 'Kulkas yang terdapat di dapur yang lengkap', '20220224192205.jpg', '2022-02-24 12:22:05', '2022-02-24 12:22:05'),
(11, 'Wifi', 'Free Wifi dengan kecepatan 10kbps', '20220224192242.png', '2022-02-24 12:22:42', '2022-02-24 12:22:42'),
(12, 'Kamar Mandi', 'Kamar mandi yang luas dengan Bathup & Shower', '20220224192315.jpg', '2022-02-24 12:23:15', '2022-02-24 12:23:15'),
(13, 'Sofa', 'Sofa untuk bersantai', '20220224192333.jpg', '2022-02-24 12:23:33', '2022-02-24 12:23:33'),
(14, 'TV', 'TV LED dengan berbaagi ukuran sesuai tpe kamar', '20220224192350.jpg', '2022-02-24 12:23:50', '2022-02-24 12:23:50'),
(15, 'AC', 'AC yang begitu sejuk', '20220224192405.jpg', '2022-02-24 12:24:05', '2022-02-24 12:24:05'),
(16, 'Kamar Mandi 2', 'Kamar mandi dengan Shower', '20220224192422.jpg', '2022-02-24 12:24:22', '2022-02-24 12:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `kamars`
--

CREATE TABLE `kamars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipe_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_kamar` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kamars`
--

INSERT INTO `kamars` (`id`, `tipe_kamar`, `jumlah_kamar`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Presidential Suite Room', 10, '20220224190315.jpg', '2022-02-24 12:03:15', '2022-02-24 12:03:15'),
(2, 'Suite Room', 20, '20220224191120.jpg', '2022-02-24 12:11:20', '2022-02-24 12:11:20'),
(3, 'Junior Suite Room', 20, '20220224191207.jpg', '2022-02-24 12:12:07', '2022-02-24 12:12:07'),
(4, 'Deluxe Room', 30, '20220224191226.jpg', '2022-02-24 12:12:26', '2022-02-24 12:12:26'),
(5, 'Superior Room', 30, '20220224191248.jpg', '2022-02-24 12:12:48', '2022-02-24 12:12:48'),
(6, 'Standard Room', 50, '20220224191311.jpg', '2022-02-24 12:13:11', '2022-02-24 12:13:11'),
(7, 'Triple Room', 50, '20220224191331.jpg', '2022-02-24 12:13:31', '2022-02-24 12:13:31'),
(8, 'Double Room', 50, '20220224191348.jpg', '2022-02-24 12:13:48', '2022-02-24 12:13:48'),
(9, 'Twin Room', 50, '20220224191413.jpg', '2022-02-24 12:14:13', '2022-02-24 12:14:13'),
(10, 'Single Room', 50, '20220224191433.jpg', '2022-02-24 12:14:33', '2022-02-24 12:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_21_022520_create_fasilitaskamars_table', 2),
(6, '2022_02_21_022547_create_fasilitass_table', 2),
(7, '2022_02_21_022613_create_kamars_table', 2),
(8, '2022_02_21_022640_create_pemesanans_table', 2),
(9, '2022_02_21_022701_create_reservasis_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanans`
--

CREATE TABLE `pemesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tamu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_kamar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_kamar` int(11) NOT NULL,
  `tgl_check_in` date NOT NULL,
  `tgl_check_out` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservasis`
--

CREATE TABLE `reservasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_tamu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_check_in` date NOT NULL,
  `tgl_check_out` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'salsa', 'salsa@gmail.com', NULL, '$2y$10$M7ts7XKmEb4VvZLojFQ5UeHuapBi/pPUx2IdCHFyyV3An8ctzmLbm', NULL, NULL, '2022-02-24 07:42:40', '2022-02-24 07:42:40'),
(6, 'admin', 'admin@gmail.com', NULL, '$2y$10$iPGyYpO5bG4WVi0o7v5aKOrNhdRdrL4IZgHd38j7qv25z1tIR/Bme', 1, NULL, '2022-02-24 07:43:07', '2022-02-24 07:43:07'),
(7, 'aul', 'aul@gmail.com', NULL, '$2y$10$JZ92WENktSNIHV6FO/1KguaJkDQbasVPmaDgjCXbu/AEml/7pso86', NULL, NULL, '2022-02-24 10:25:19', '2022-02-24 10:25:19'),
(8, 'adit', 'adit@gmail.com', NULL, '$2y$10$g/M6yhMKYBoMeKjSSlLxCuMNfoBmai3MwJkXusZay.HgnH3YNWXDq', NULL, NULL, '2022-02-24 12:33:47', '2022-02-24 12:33:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fasilitaskamars`
--
ALTER TABLE `fasilitaskamars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fasilitass`
--
ALTER TABLE `fasilitass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kamars`
--
ALTER TABLE `kamars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pemesanans`
--
ALTER TABLE `pemesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservasis`
--
ALTER TABLE `reservasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fasilitaskamars`
--
ALTER TABLE `fasilitaskamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `fasilitass`
--
ALTER TABLE `fasilitass`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kamars`
--
ALTER TABLE `kamars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pemesanans`
--
ALTER TABLE `pemesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservasis`
--
ALTER TABLE `reservasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
