-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2024 at 09:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikm`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `kuesioner_id` bigint(20) UNSIGNED NOT NULL,
  `responden_id` bigint(20) UNSIGNED NOT NULL,
  `answer` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `uuid`, `kuesioner_id`, `responden_id`, `answer`, `created_at`, `updated_at`) VALUES
(59, '29054cf5-a9e8-4385-86d3-8613bb359842', 31, 5, 4, '2024-10-02 01:49:31', '2024-10-02 01:49:31'),
(60, '78eb7202-1371-4695-81df-4cda156e0eb5', 32, 5, 4, '2024-10-02 01:49:31', '2024-10-02 01:49:31'),
(61, '5516479d-941f-4baa-ab4c-0cb5c2aa3c41', 33, 5, 4, '2024-10-02 01:49:31', '2024-10-02 01:49:31'),
(62, 'fd502647-65ff-4bcd-b1be-bd3796c0971e', 31, 6, 4, '2024-10-02 01:55:41', '2024-10-02 01:55:41'),
(63, '5247b205-8096-4ae9-9cab-7c23bc67c9ca', 32, 6, 4, '2024-10-02 01:55:41', '2024-10-02 01:55:41'),
(64, '839e817a-d099-4c34-86a5-000cca7aca36', 33, 6, 4, '2024-10-02 01:55:41', '2024-10-02 01:55:41'),
(65, 'e6d986f4-fd41-478c-8bec-36a85c7a8141', 31, 7, 4, '2024-10-02 04:24:02', '2024-10-02 04:24:02'),
(66, '3932d07c-285e-4917-94ad-662e22955e1b', 32, 7, 4, '2024-10-02 04:24:02', '2024-10-02 04:24:02'),
(67, '44f71beb-4b4b-4500-9092-c8aaac84eb31', 33, 7, 4, '2024-10-02 04:24:02', '2024-10-02 04:24:02'),
(68, 'e0d524ab-d4ca-4150-a9b9-7ed1a3b03346', 31, 8, 4, '2024-10-02 04:33:39', '2024-10-02 04:33:39'),
(69, '06378039-97eb-4ac9-b3b4-838700c81f12', 32, 8, 3, '2024-10-02 04:33:39', '2024-10-02 04:33:39'),
(70, 'e36115ba-ebaa-4d40-8ce9-eb9cd67abb0a', 33, 8, 2, '2024-10-02 04:33:39', '2024-10-02 04:33:39'),
(71, '1ce80588-d5e6-4b13-836f-954f7896b55a', 34, 8, 1, '2024-10-02 04:33:39', '2024-10-02 04:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `responden_id` bigint(20) UNSIGNED NOT NULL,
  `feedback` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `uuid`, `responden_id`, `feedback`, `created_at`, `updated_at`) VALUES
(5, '8710c1f2-5b43-4f48-844b-728dd34700a5', 5, 'bagimana', '2024-10-02 01:49:31', '2024-10-02 01:49:31'),
(6, '8485290c-e873-497c-af61-61371d414a7c', 6, 'A', '2024-10-02 01:55:41', '2024-10-02 01:55:41'),
(7, 'b68729aa-0c6d-4c3d-b5b5-afd8c44de2be', 7, 'makasiiii', '2024-10-02 04:24:02', '2024-10-02 04:24:02'),
(8, '3cdcb822-1363-4f31-87c8-ed00b65ce4f1', 8, 'MAKASIII', '2024-10-02 04:33:39', '2024-10-02 04:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `kuesioners`
--

CREATE TABLE `kuesioners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `unsur_id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuesioners`
--

INSERT INTO `kuesioners` (`id`, `uuid`, `unsur_id`, `question`, `created_at`, `updated_at`) VALUES
(31, '3a36182b-05a5-48f2-a0c2-13082b874ca6', 4, 'BAGIMANA DAN GIMANA', '2024-10-02 01:45:52', '2024-10-02 01:45:52'),
(32, '0ef52d60-bd6e-4d0d-bc9a-ee890988a073', 1, 'BAGIMANA', '2024-10-02 01:46:02', '2024-10-02 01:46:02'),
(33, 'bccaeb36-2889-48dd-9868-597c561dee1d', 8, 'BAGAIMANA', '2024-10-02 01:46:09', '2024-10-02 01:46:09'),
(34, '1f58ea61-4eec-4d0b-90c1-40dc725d320c', 4, 'bagaimana biaya tarif nya?', '2024-10-02 04:33:11', '2024-10-02 04:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2019_12_14_000002_create_unsurs_table', 1),
(6, '2023_09_27_175259_create_villages_table', 1),
(7, '2023_09_27_175260_create_kuesioners_table', 1),
(8, '2023_09_29_175629_create_respondens_table', 1),
(9, '2023_09_29_175758_create_answers_table', 1),
(10, '2023_10_01_081531_create_feedback_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `respondens`
--

CREATE TABLE `respondens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `education` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `village_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `respondens`
--

INSERT INTO `respondens` (`id`, `uuid`, `name`, `gender`, `age`, `education`, `job`, `village_id`, `created_at`, `updated_at`) VALUES
(5, '01685156-3db3-4940-926a-0602b528185b', '0812812182121', 'Laki-laki', 12, 'SETUJU', 'SETUJU', 17, '2024-10-02 01:49:31', '2024-10-02 01:49:31'),
(6, '84c4ce80-8083-460c-ba55-466e3b838339', '0812812182121', 'Perempuan', 12, 'SETUJU', 'SETUJU', 17, '2024-10-02 01:55:41', '2024-10-02 01:55:41'),
(7, 'b4032842-f247-472e-a262-0cb61f5afdc0', '0191123456', 'Laki-laki', 12, 'SETUJU', 'SETUJU', 17, '2024-10-02 04:24:02', '2024-10-02 04:24:02'),
(8, 'bfd27292-a622-452a-b1c4-527c4dc81083', '0812812182121', 'Laki-laki', 12, 'SETUJU', 'SETUJU', 17, '2024-10-02 04:33:39', '2024-10-02 04:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `unsurs`
--

CREATE TABLE `unsurs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unsur` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unsurs`
--

INSERT INTO `unsurs` (`id`, `unsur`, `created_at`, `updated_at`) VALUES
(1, 'Persyaratan', '2024-01-14 22:06:09', '2024-01-14 22:06:09'),
(2, 'Prosedur', '2024-01-14 22:06:10', '2024-01-14 22:06:10'),
(3, 'Waktu Pelayanan', '2024-01-14 22:06:10', '2024-01-14 22:06:10'),
(4, 'Biaya Tarif', '2024-01-14 22:06:10', '2024-01-14 22:06:10'),
(5, 'Produk Layanan', '2024-01-14 22:06:10', '2024-01-14 22:06:10'),
(6, 'Kompetensi Pelaksana', '2024-01-14 22:06:10', '2024-01-14 22:06:10'),
(7, 'Perilaku Pelaksana', '2024-01-14 22:06:10', '2024-01-14 22:06:10'),
(8, 'Sarana dan Prasarana', '2024-01-14 22:06:10', '2024-01-14 22:06:10'),
(9, 'Penanganan Pengaduan', '2024-01-14 22:06:10', '2024-01-14 22:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin IKM', 'admin@admin.com', '2024-01-14 22:06:08', '$2y$10$sXNXZXsMsuYmbHK4xJEDBuNL.WIB7G973R9epG6RDIims5eRT17gq', 'https://www.gravatar.com/avatar/5d4ee428568d05b22f3eb71c1a23ac03d16c046d5b1b2a4cb094d7f2a876f467', 'V0VpEa8Wfz', '2024-01-14 22:06:08', '2024-01-14 22:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) NOT NULL,
  `village` varchar(25) NOT NULL,
  `allowDelete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `uuid`, `village`, `allowDelete`, `created_at`, `updated_at`) VALUES
(17, '3551a706-80bd-4ea3-bd07-3844913a2895', 'OAKBAREY', 0, '2024-10-02 01:49:04', '2024-10-02 01:49:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `answers_uuid_unique` (`uuid`),
  ADD KEY `answers_kuesioner_id_foreign` (`kuesioner_id`),
  ADD KEY `answers_responden_id_foreign` (`responden_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `feedback_uuid_unique` (`uuid`),
  ADD KEY `feedback_responden_id_foreign` (`responden_id`);

--
-- Indexes for table `kuesioners`
--
ALTER TABLE `kuesioners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kuesioners_uuid_unique` (`uuid`),
  ADD KEY `kuesioners_unsur_id_foreign` (`unsur_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `respondens`
--
ALTER TABLE `respondens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `respondens_uuid_unique` (`uuid`),
  ADD KEY `respondens_village_id_foreign` (`village_id`);

--
-- Indexes for table `unsurs`
--
ALTER TABLE `unsurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `villages_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `villages_village_unique` (`village`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kuesioners`
--
ALTER TABLE `kuesioners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respondens`
--
ALTER TABLE `respondens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `unsurs`
--
ALTER TABLE `unsurs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_kuesioner_id_foreign` FOREIGN KEY (`kuesioner_id`) REFERENCES `kuesioners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `answers_responden_id_foreign` FOREIGN KEY (`responden_id`) REFERENCES `respondens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_responden_id_foreign` FOREIGN KEY (`responden_id`) REFERENCES `respondens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kuesioners`
--
ALTER TABLE `kuesioners`
  ADD CONSTRAINT `kuesioners_unsur_id_foreign` FOREIGN KEY (`unsur_id`) REFERENCES `unsurs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `respondens`
--
ALTER TABLE `respondens`
  ADD CONSTRAINT `respondens_village_id_foreign` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
