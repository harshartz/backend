-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2024 at 02:43 PM
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
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_09_12_120844_create_personal_access_tokens_table', 2);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aglae Waters', 'ljones@example.net', '2024-09-12 06:36:14', '$2y$12$OkjE9wp/BG7gsjnqt/G7oOYiPrtXSBtnixqO6wEhIheRD41.fP61K', 'AtTxMfg6EW', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(2, 'Lisa Balistreri', 'serenity00@example.org', '2024-09-12 06:36:15', '$2y$12$PTM8NnWHFRmQoLgx6zb2p.Jm3qO/LzVYttvUWS.i1/gjFzMq48PSO', 'htxxv6a8Np', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(3, 'Kaycee Metz Jr.', 'antoinette.hettinger@example.com', '2024-09-12 06:36:15', '$2y$12$hobFuZ7K3ZcpAFYzJ5Ves.oG72F1SOl0fZftvBDJgsHS.L/QlEqTu', 'tp624xPoBS', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(4, 'Annabel Feest', 'dheller@example.com', '2024-09-12 06:36:15', '$2y$12$i7lKZvbMWQ3PyX6up1ZadOcJ3GIMDuzYy.RmFr5Xjx.qCXtIMI1iy', 'IDY4t72xcG', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(5, 'William Bartoletti', 'arielle.harber@example.net', '2024-09-12 06:36:15', '$2y$12$zTp.VpDQ5mrIQH1nwfl88eg9ttjQLzoxLuamc8ueI6vLA7RG6Adxm', 'Gy8GCJTaT4', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(6, 'Vena Dickens', 'lindsey35@example.net', '2024-09-12 06:36:16', '$2y$12$2k7k7CfL0fVyBrtDOk.kIeEH3UrkLYg7NwZ85oXPVuB50VNFHyppK', 'ooDKRjCt83', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(7, 'Bill Blanda', 'haley.reuben@example.org', '2024-09-12 06:36:16', '$2y$12$S3QxrovvBW.MpVbdKs5McuNZo.iXuEdCFxI1zP8J.vHHnyMvLxS7q', 'EadG4EboDE', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(8, 'Robert Schmitt DDS', 'katlyn97@example.org', '2024-09-12 06:36:16', '$2y$12$vLIVgK/jbxdm/nPeoe3LdO/D7ksb8mYplbRPz05Bn7Z9GKstlQDCS', 'XatjcFtNDe', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(9, 'Keaton Kutch', 'gilberto03@example.net', '2024-09-12 06:36:16', '$2y$12$MnZ8notntX4wJjPbFYMMUeDNfKQ956gOdi7jxCsKgTjLnxg0kpoXi', 'MoXAcam2CC', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(10, 'Kylee DuBuque', 'amely.ward@example.net', '2024-09-12 06:36:17', '$2y$12$MJEhjOXiiplldY6JtvUvjesDxRmDhDjqQ5FWhMcy1qCK6ed0L7YTC', 'stOGfN7KTT', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(11, 'Braulio Dicki', 'armando64@example.org', '2024-09-12 06:36:17', '$2y$12$1j317mRFA4NWQ1lG.b.NtedeahXdjmWOJHa9sOWRCF2e57k.cHUwS', 'GXYzsWOCTR', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(12, 'Dr. Pierce Nitzsche', 'antonietta85@example.com', '2024-09-12 06:36:17', '$2y$12$YSvPiXejoZGnSpuOzkJJF.BrP9lQ98N8EYkeNehZwdSnsYtOAX7Hm', 'Aj7vk2huKY', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(13, 'Henry Beahan', 'kimberly57@example.com', '2024-09-12 06:36:17', '$2y$12$AfzqsZfRWuqgwaQvMlryjuwMkH2.zg/m0nNp93ODRx8nPKKl/6oHS', 'U3Yej4v0x4', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(14, 'Vita Gaylord', 'wintheiser.rebeca@example.net', '2024-09-12 06:36:18', '$2y$12$gP08e/moT2IJRF8xGhTwmOItybmujAzQ4Ut7LvSUsWZJnvqKAhaO6', 'W0U5SRwAJ4', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(15, 'Kayla Leannon', 'jewell55@example.net', '2024-09-12 06:36:18', '$2y$12$dqOF0vGqFyFIKypO/b3fM.sTrn8UIjYi475n/o.D/WumVhIeLdmku', 'YdYAzPXQrw', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(16, 'Annie Stanton', 'josefa.mclaughlin@example.com', '2024-09-12 06:36:18', '$2y$12$Ce.FF8hEBIOl0lLJ3.QuSuYQeYTahCeo1L6nQfRMNm54VzM5ON2fa', 'euQI347ON7', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(17, 'Leora Bins', 'cfay@example.net', '2024-09-12 06:36:18', '$2y$12$3pKEbvs1voT8L0t7kAqt1OghsvXBj1eos4V/ougwrIwQrZ97FsswO', 'SDZExhPVq1', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(18, 'Lea Kuphal', 'preston.auer@example.com', '2024-09-12 06:36:19', '$2y$12$Fd/tuMdcObSbEBpKMbCBp.XqmUJ1l.Jrpn6DJFsQ99vA9q5HNYhJe', 'zA6xQ2uxiX', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(19, 'Hayden Weissnat', 'estevan74@example.com', '2024-09-12 06:36:19', '$2y$12$U7pH3NzgcHQO4RjMLwbuCO5pkWeASWZkd5BL5z2VY8pnUe68HUJua', 'kEwHmNL6u4', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(20, 'Maryam Wolff', 'suzanne.hayes@example.net', '2024-09-12 06:36:19', '$2y$12$Nlec66Z44i6rapSS8yLWhOfwf8fo/ZA8IYrCzMNwhPGquKvwpbEQS', 's6WOcBh85L', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(21, 'Savannah Grady', 'ogreenholt@example.com', '2024-09-12 06:36:19', '$2y$12$50wpuJo68cDHWm0vl1GYs.g8Y4ZfgXImeNrAI5OhCdW80fXCPeEAC', 'MEipahQWOX', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(22, 'Jevon Jacobi', 'rachelle73@example.com', '2024-09-12 06:36:19', '$2y$12$KZEmND/PRMkxjpGnV89Oce/YQvLQ/H/Z.d6BKNQnZARkKJyPxvrLu', 'uppQedGVdM', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(23, 'Ms. Amelia Hirthe', 'champlin.willis@example.org', '2024-09-12 06:36:20', '$2y$12$VGjMtWawRsT6RS/k0CWjdex3OAI6LwhqAU8z9ZIpIikO9kOu0KikO', 'qDZ1bTz662', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(24, 'Mathilde Cassin', 'madilyn.hayes@example.com', '2024-09-12 06:36:20', '$2y$12$XuVy4PaFLYzZchFsjcX.8ecC12T6ZhnJ3ohb/aMPKh6HqBF6jM7Jy', 'Iu3Xrq0vwk', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(25, 'Ms. Adelia Abbott', 'zosinski@example.com', '2024-09-12 06:36:20', '$2y$12$sZwhK2IRtQkkfrCTLVUBOuj8RfQ6R7wDPprawpVqC1nZQueRW6LOu', '6Fry62Bd2S', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(26, 'Guy Kohler', 'armstrong.pete@example.net', '2024-09-12 06:36:20', '$2y$12$1LrsEr6ivLK3sTe3ijnasO/sNtUMRPgkUkvi2u2vKtfxp0BCafQke', 'xIl9yiRBvB', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(27, 'Eddie Keebler I', 'milo04@example.com', '2024-09-12 06:36:21', '$2y$12$FI3VZDT00j30K.PoqAfoweWvynoFS3/h/Y8S/V3ipDthkhsF4e0pq', '6BpR03xhmn', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(28, 'Claire Dibbert', 'lfisher@example.org', '2024-09-12 06:36:21', '$2y$12$ST8aIITRgSyuD./.J4TPJOZWZRgnkdl7D99tM1f0EcFOz2Np6YcZW', 'a0mkbYPIsN', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(29, 'Bulah Schaefer', 'njohnson@example.net', '2024-09-12 06:36:21', '$2y$12$3K6ozGmvkuXL0t/0d9zYbu2ol1683fwhuqW1Mq4J8tEhvFFO2w8te', 'J8aJ837j74', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(30, 'Carmine Langworth', 'bauch.octavia@example.com', '2024-09-12 06:36:21', '$2y$12$fVe80MIYjPELDCCdj7MSC.mMJ50Skwi8wZkZ1YHeFSko3F6fLoe9y', 'R3a9Xjqhar', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(31, 'Mr. Talon Walter PhD', 'zmclaughlin@example.org', '2024-09-12 06:36:22', '$2y$12$v.nThRUuOcvsQDzIb3aybOqllkCpdqcVY2zYiHD8GmIt/cS.fiHLy', 'JHBikEJrVx', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(32, 'Mr. Oswaldo Bode', 'bonita.hudson@example.org', '2024-09-12 06:36:22', '$2y$12$5MW1G7hJ0/C/X55s3xdUa.HQ11LlkeZISCov8npQSxCsUpg3geVGy', 'JyupQEKPmr', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(33, 'Abelardo Emmerich', 'lewis.blanda@example.net', '2024-09-12 06:36:22', '$2y$12$HPzK6n2YNw8Zx8mNX5/8reo5VkhvLbnT/ckITAofDiz/KauVD7ek2', 'OAqEPJ09mB', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(34, 'Prof. Dorian Mitchell', 'dietrich.shannon@example.org', '2024-09-12 06:36:22', '$2y$12$p/BCBP9ETD/x7dkxiamioeOok4TTfI69qWXmx2kNteh73WoK8IMqW', 'meZefU7da4', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(35, 'Damion Feest', 'julio87@example.net', '2024-09-12 06:36:23', '$2y$12$yl1//CGi.Ec8btRkNT0Qd.qKbVrc5HepvSowjDANu5HnXyfzC5IRW', 'ubJJteL7Ks', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(36, 'Vance Emmerich Jr.', 'srempel@example.org', '2024-09-12 06:36:23', '$2y$12$O8ifz4F.kowgaB4DvvlRGOWtEDAGDgOhEY8BtPB2p3nFl6.8Blmfy', 'EubnwZQXR5', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(37, 'Nova Bayer', 'fkshlerin@example.net', '2024-09-12 06:36:23', '$2y$12$k7DRCyJ9fkOw3VtpbjllmOGtoULY6pW/grLQ7F4JJWZ.F9pLmroOa', '9lu0SJXUix', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(38, 'Lonny Kuphal', 'andreane.reinger@example.org', '2024-09-12 06:36:23', '$2y$12$L1SN2BplEJE7o106r6bl1OM0jtc4hoXt8wFU6P6fo67LPWMhR7D9u', 'Y6suVGjPL9', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(39, 'Emmanuel Dooley III', 'xdibbert@example.com', '2024-09-12 06:36:24', '$2y$12$LLSclkRuQOjNtgpL5L9x6uiHRMeoIaPQbwieY4tSUGarY701jWmxu', 'fmvviraNLz', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(40, 'Arturo Wehner III', 'koss.madeline@example.com', '2024-09-12 06:36:24', '$2y$12$DYVfPhR2FR34Fr6OmBqUdOfGG/.uh8jK5KlRWPtREXnLd2mLZbax2', 'uLBUGV4JL8', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(41, 'Prof. Earlene Beahan', 'cdurgan@example.com', '2024-09-12 06:36:24', '$2y$12$nFVQOPPlGCT1z.Nb3daHKev/.MgDH7/wBFf46DeBxq5U6DuVaeAs.', 'Hx2VS7HSb1', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(42, 'Shea West', 'rebekah.hagenes@example.com', '2024-09-12 06:36:24', '$2y$12$8WoQo0s1Ph4hdJw2nN1r2udcfdjIB8IvbElXciMJ/OIEnwqQvwTlu', 'rcWL6jJIfg', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(43, 'Prof. Macey Stiedemann PhD', 'moore.timmothy@example.net', '2024-09-12 06:36:25', '$2y$12$6ZqJd3izYbhdIrGZaZfJE.hqylUrcCUW9lF3E4ur.pZ0XhPbH8Xuy', 'yswNEt939N', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(44, 'Karianne Rempel', 'ygoodwin@example.net', '2024-09-12 06:36:25', '$2y$12$RQ7mLTY/HXp0Xy4bi4hZGOqqnkQo1i7IwB42bJvao54rO9PvSG2AG', 'i0b35MrT3z', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(45, 'Imani Tromp DVM', 'blick.jorge@example.com', '2024-09-12 06:36:25', '$2y$12$Lz.zaLwAoaKqOk8KlAcgguEDEQNeEqECt4UGkTVAFu6JhP6G.Op/y', 'o2b1H4wi3m', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(46, 'Eldridge Ledner', 'dorris94@example.org', '2024-09-12 06:36:25', '$2y$12$wevhkcI5SFWZ26nvr/dXj.1Q1wGQ5gX1l4nwRA6VeMkQgiV.QKb/u', 'wQ9iOlyddS', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(47, 'Ms. Everette Mayer Jr.', 'josefa.bode@example.org', '2024-09-12 06:36:25', '$2y$12$sxRV37CphixoXHnGhtHNT.3aMDvsI70nwKghKT2gj8DljuZLc2sMq', 'Nhn9q8kc5V', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(48, 'Mr. Cordell Bogan', 'mona.barrows@example.net', '2024-09-12 06:36:26', '$2y$12$7DJiBcSOfb0ap6dFNLoNHedHaiJejNEd6d3dSctTLWRAf2jA8Mo7i', 'g8fYhbyFxT', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(49, 'Jadyn Satterfield III', 'adolfo.bruen@example.net', '2024-09-12 06:36:26', '$2y$12$nVAuFGhtQ.W4BStDqwd4COvXAUMuINRwlm.SdjLAZ0KIpx0W41Hh.', 'EnJIjwB87E', '2024-09-12 06:36:27', '2024-09-12 06:36:27'),
(50, 'Emilio Price', 'edythe39@example.net', '2024-09-12 06:36:26', '$2y$12$lqs833IC4RVLdeGDDv09OONKBXR19AJhIgMqFO5qMq/6mpOitUivW', 'fOR8dJDq3n', '2024-09-12 06:36:27', '2024-09-12 06:36:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
