--
-- Database: `homestead`
--
CREATE DATABASE IF NOT EXISTS `homestead` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `homestead`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Biographies', 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23'),
(2, 'Business', 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23'),
(3, 'Children\'s', 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23'),
(4, 'History', 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23'),
(5, 'Religion & Spirituality', 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23'),
(6, 'Self-Help', 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23'),
(7, 'Literature & Fiction', 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23'),
(8, 'Educational Textbooks', 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Helsinki', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(2, 'Espoo', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(3, 'Tampere', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(4, 'Vantaa', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(5, 'Turku', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(6, 'Oulu', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(7, 'Lahti', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(8, 'Kuopio', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(9, 'Jyväskylä', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(10, 'Pori', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(11, 'Lappeenranta', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(12, 'Vaasa', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(13, 'Kotka', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(14, 'Joensuu', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(15, 'Hämeenlinna', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(16, 'Porvoo', 1, 1, '2018-09-11 10:55:58', '2018-09-11 10:55:58'),
(17, 'Mikkeli', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(18, 'Hyvinge', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(19, 'Järvenpää', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(20, 'Nurmijärvi', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(21, 'Rauma', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(22, 'Lohja', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(23, 'Kokkola', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(24, 'Kajaani', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(25, 'Rovaniemi', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(26, 'Tuusula', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(27, 'Kirkkonummi', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(28, 'Seinäjoki', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(29, 'Kerava', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(30, 'ouvola', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(31, 'Imatra', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(32, 'Nokia', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(33, 'Savonlinna', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(34, 'Riihimäki', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(35, 'Vihti', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(36, 'Salo', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(37, 'Kangasala', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(38, 'Raisio', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(39, 'Karhula', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(40, 'Kemi', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(41, 'Iisalmi', 1, 1, '2018-09-11 10:55:59', '2018-09-11 10:55:59'),
(42, 'Varkaus', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(43, 'Raahe', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(44, 'Ylöjärvi', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(45, 'Hamina', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(46, 'Kaarina', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(47, 'Tornio', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(48, 'Heinola', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(49, 'Hollola', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(50, 'Valkeakoski', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(51, 'Siilinjärvi', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(52, 'Sibbo', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(53, 'Jakobstad', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(54, 'Lempäälä', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(55, 'Mäntsälä', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(56, 'Forssa', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(57, 'Kuusamo', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(58, 'Haukipudas', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(59, 'Korsholm', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(60, 'Laukaa', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(61, 'Anjala', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(62, 'Uusikaupunki', 1, 1, '2018-09-11 10:56:00', '2018-09-11 10:56:00'),
(63, 'Janakkala', 1, 1, '2018-09-11 10:56:01', '2018-09-11 10:56:01'),
(64, 'Pirkkala', 1, 1, '2018-09-11 10:56:01', '2018-09-11 10:56:01'),
(65, 'Lansi-Turunmaa', 1, 1, '2018-09-11 10:56:01', '2018-09-11 10:56:01'),
(66, 'Lovisa', 1, 1, '2018-09-11 10:56:01', '2018-09-11 10:56:01'),
(67, 'Jämsä', 1, 1, '2018-09-11 10:56:01', '2018-09-11 10:56:01'),
(68, 'Lieto', 1, 1, '2018-09-11 10:56:01', '2018-09-11 10:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Finland', 1, '2018-07-23 09:16:22', '2018-07-23 09:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2018_07_22_112138_create_cities_table', 1),
(10, '2018_07_22_112344_create_countries_table', 1),
(11, '2018_07_23_072652_create_categories_table', 1),
(12, '2018_07_23_072939_create_sub_categories_table', 1),
(14, '2014_10_12_000000_create_users_table', 1),
(19, '2018_07_27_101525_create_product__requests_table', 1),
(20, '2018_07_24_102216_create_products_table', 1),
(21, '2018_09_24_102344_create_product_statuses_table', 1),
(22, '2018_09_28_173757_create_ratings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('zafar.hamza881@gmail.com', '$2y$10$umx/4zARhDTIlJHkQ5tI...NU2jksnmKD4pa3dzI.Df8g.Gm2TLB.', '2018-10-03 22:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `product__requests`
--

CREATE TABLE `product__requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `lent_user` int(10) UNSIGNED NOT NULL,
  `borrow_user` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `viewstatus` tinyint(4) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `date_borrowal` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product__requests`
--

INSERT INTO `product__requests` (`id`, `lent_user`, `borrow_user`, `product_id`, `viewstatus`, `status`, `date_borrowal`, `due_date`, `created_at`, `updated_at`) VALUES
(1, 9, 8, 5, 1, 5, '2018-10-12 08:00:30', '2018-12-14 08:00:30', '2018-10-08 22:18:47', '2018-10-21 14:11:08'),
(2, 9, 8, 6, 1, 2, NULL, NULL, '2018-10-12 11:59:35', '2018-10-21 14:11:14'),
(3, 8, 9, 15, 1, 5, '2018-10-28 12:21:57', '2018-12-02 12:21:57', '2018-10-28 12:18:01', '2018-10-28 12:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `product_statuses`
--

CREATE TABLE `product_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_statuses`
--

INSERT INTO `product_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES
(0, 'Pending', '2018-09-24 05:33:21', '2018-09-24 05:33:21'),
(1, 'Accepted', '2018-09-24 05:33:21', '2018-09-24 05:33:21'),
(2, 'Rejected', '2018-09-24 05:33:21', '2018-09-24 05:33:21'),
(3, 'Lent', '2018-09-24 05:33:22', '2018-09-24 05:33:22'),
(4, 'Confirm Borrowal', '2018-09-24 05:33:21', '2018-09-24 05:33:21'),
(5, 'Returned', '2018-09-24 05:33:21', '2018-09-24 05:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `lending_duration` mediumint(8) UNSIGNED NOT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `viewstatus` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `rental_count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `author`, `sub_category_id`, `lending_duration`, `image`, `user_id`, `viewstatus`, `status`, `rental_count`, `created_at`, `updated_at`) VALUES
(1, 'Steve Jobs', 'Walter Isaacson', 7, 14, 'ii_8_1537856695.jpg', 8, 1, 1, 2, '2018-09-25 13:24:56', '2018-10-06 02:52:48'),
(2, 'Flashpoints - The emerging crisis in Europe', 'George Friedman', 35, 27, 'ii_8_1537856785.jpg', 8, 1, 1, 0, '2018-09-25 13:26:26', '2018-09-25 13:26:26'),
(3, 'Down and Out in Paris and London', 'George Orwell', 74, 12, 'ii_8_1537856829.jpg', 8, 1, 1, 1, '2018-09-25 13:27:10', '2018-09-30 13:48:58'),
(4, 'abc book', 'Ali', 2, 7, 'ii_3_1537857270.jpg', 3, 1, 1, 0, '2018-09-25 13:34:30', '2018-09-25 13:34:30'),
(5, 'The Swerve', 'Stephen Greenbalt', 35, 9, 'ii_9_1537942853.jpg', 9, 1, 1, 3, '2018-09-26 13:20:54', '2018-10-21 14:11:08'),
(6, 'Expert Systems', 'Peter Jackson', 95, 31, 'ii_9_1537942928.jpg', 9, 1, 1, 0, '2018-09-26 13:22:09', '2018-09-26 13:22:09'),
(7, 'Raman Sall', 'daman', 4, 5, 'ii_8_1539409641.png', 8, 1, 1, 0, '2018-10-13 08:47:22', '2018-10-13 08:47:22'),
(8, 'MGA', 'raman', 4, 5, 'ii_8_1539409716.jpeg', 8, 1, 1, 0, '2018-10-13 08:48:36', '2018-10-13 08:48:36'),
(9, 'dsf', 'sdf', 2, 5, 'ii_8_1539409750.jpg', 8, 1, 1, 0, '2018-10-13 08:49:10', '2018-10-13 08:49:10'),
(10, 'Raman Sall', 'daman', 2, 5, 'ii_8_1539410001.jpg', 8, 1, 1, 0, '2018-10-13 08:53:21', '2018-10-13 08:53:21'),
(11, 'Raman Sall', 'daman', 3, 5, 'ii_8_1539415233.jpeg', 8, 1, 1, 0, '2018-10-13 10:20:34', '2018-10-13 10:20:34'),
(12, 'Raman Sall', 'daman', 4, 6, 'ii_8_1539425508.jpeg', 8, 1, 1, 0, '2018-10-13 13:11:48', '2018-10-13 13:11:48'),
(13, 'Raman Sall', 'daman', 3, 5, 'ii_8_1539430689.jpeg', 8, 1, 1, 0, '2018-10-13 14:38:09', '2018-10-13 14:38:09'),
(14, 'Raman Sall', 'daman', 3, 5, 'ii_8_1539430705.jpeg', 8, 1, 1, 0, '2018-10-13 14:38:25', '2018-10-13 14:38:25'),
(15, '待產媽咪', 'daman', 3, 5, 'ii_8_1539430718.jpeg', 8, 1, 1, 1, '2018-10-13 14:38:38', '2018-10-28 12:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `borrow_user` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `rating`, `borrow_user`, `request_id`, `review`, `created_at`, `updated_at`) VALUES
(1, 5, 9, 3, 'This book was great.', '2018-10-28 12:23:06', '2018-10-28 12:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Arts & Literature', 1, 1, '2018-09-03 06:25:23', '2018-09-03 06:25:23'),
(2, 'Cultural', 1, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(3, 'European', 1, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(4, 'Historical', 1, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(5, 'Leaders & Notble People', 1, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(6, 'Military', 1, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(7, 'Modern', 1, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(8, 'Sports', 1, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(9, 'Women', 1, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(10, 'Careers', 2, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(11, 'Economics', 2, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(12, 'Finance', 2, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(13, 'Industries', 2, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(14, 'International', 2, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(15, 'Management', 2, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(16, 'Marketing', 2, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(17, 'Action & Adventure', 3, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(18, 'Activity Books', 3, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(19, 'Animals', 3, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(20, 'Cars & Trucks', 3, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(21, 'Classics', 3, 1, '2018-09-03 06:25:24', '2018-09-03 06:25:24'),
(22, 'Comedy', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(23, 'Cookbooks', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(24, 'Education & Reference', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(25, 'Fairy Tales', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(26, 'Geography & Cultures', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(27, 'Growing Up', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(28, 'History', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(29, 'Mystery & Suspense', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(30, 'Sci-Fi & Fantasy', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(31, 'Science & Nature', 3, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(32, 'Ancient', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(33, 'Asian', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(34, 'Caribbean', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(35, 'European', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(36, 'Exploration', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(37, 'Medieval', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(38, 'Modern', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(39, 'Native', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(40, 'Religious', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(41, 'Renaissance', 4, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(42, 'Agnosticism', 5, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(43, 'Astrology', 5, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(44, 'Atheism', 5, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(45, 'Buddhism', 5, 1, '2018-09-03 06:25:25', '2018-09-03 06:25:25'),
(46, 'Christian', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(47, 'Christian Living', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(48, 'Comparative Religion', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(49, 'Earth-Based Religions', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(50, 'Hinduism', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(51, 'History of Religion', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(52, 'Inspirational', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(53, 'Islam', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(54, 'Judaism', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(55, 'New Age', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(56, 'Occult', 5, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(57, 'Abuse', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(58, 'Addictions', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(59, 'Anger Management', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(60, 'Death & Grief', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(61, 'Depression', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(62, 'Meditation', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(63, 'Mid-Life', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(64, 'Motivational', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(65, 'Personal Transformation', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(66, 'Psychology', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(67, 'Relationships', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(68, 'Self-Esteem', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(69, 'Sex', 6, 1, '2018-09-03 06:25:26', '2018-09-03 06:25:26'),
(70, 'Social Skills', 6, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(71, 'Stress', 6, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(72, 'Success', 6, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(73, 'Anthologies', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(74, 'Classics', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(75, 'Contemporary', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(76, 'Foreign Language', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(77, 'History & Criticism', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(78, 'Poetry', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(79, 'World Literature', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(80, 'Crime & Detective', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(81, 'Mysteries & Conspiracy', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(82, 'Suspense & Thrillers', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(83, 'Sci-Fi & Fantasy', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(84, 'Horror', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(85, 'Romance', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(86, 'Superhero', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(87, 'Erotica', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(88, 'Fantasy', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(89, 'Comedy', 7, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(90, 'Arts', 8, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(91, 'Architecture & Design', 8, 1, '2018-09-03 06:25:27', '2018-09-03 06:25:27'),
(92, 'Business & Finance', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(93, 'Business & Investing', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(94, 'Computer Science', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(95, 'Computers & Technology', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(96, 'Education', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(97, 'Economics', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(98, 'History', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(99, 'Humanities', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(100, 'Languages', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(101, 'Law', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(102, 'Literature & Fiction', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(103, 'Mathematics', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(104, 'Medicine & Health Sciences', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(105, 'Politics & Government', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(106, 'Social Sciences', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(107, 'Schools & Teaching', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(108, 'Science & Math', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28'),
(109, 'Social Sciences', 8, 1, '2018-09-03 06:25:28', '2018-09-03 06:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `gender` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pimage` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `up_points` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `down_points` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lname`, `email`, `password`, `phone`, `city_id`, `gender`, `pimage`, `up_points`, `remember_token`, `created_at`, `updated_at`, `down_points`) VALUES
(1, 'Hamza', 'Zafar', 'hamza@gmail.com', '$2y$10$JK9Q.X4iEPZzpQJVSpALxeuwmEZmQufjSj9KMWUElfdu5UeFfvtFy', '3589696969', 1, 'male', 'ii_0_.png', 0, 'vFVbaLoS4UPDbTuVyARjJ8pPAuVYTWBJn2iwCyYGjvfg0hvLk6vihsomLwPv', '2018-07-24 05:19:11', '2018-07-24 05:19:11', 0),
(2, 'diamond', 'dog', 'ddog@gmail.com', '$2y$10$YPaQT814RJWk6wVSK1Eq/.f1Veh5uiVkv/.MOKinXHJILl.EBEZOm', '3589745874', 21, 'male', 'ii_0_.png', 0, '4iUmzXiS0DdnPot8HEZ7OmaCECy5RJF8mUi4ZNg1aamQgJpoSsdPuIXFKbhB', '2018-07-27 06:18:04', '2018-07-27 06:18:04', 0),
(3, 'tayyab', 'ul islam', 'tayyabulislam16@gmail.com', '$2y$10$5kG6T3r2vwLT/Ug7o3Lf2.Zio63O/DFgvxQEEOlSB3S7S/3unVdVO', '3589345354', 18, 'male', 'ii_0_.png', 0, 'p97htFjmskprgXZxZqvk7NAnXu7FhJ1NMf40PLH0WG6pDRVvUC9D6V5n2JLk', '2018-07-27 22:20:07', '2018-08-29 13:34:17', 0),
(4, 'shabhi', 'naqvi', 'syeds759@hotmail.com', '$2y$10$CbarnlR5JlXMc6cjk5nm/.3SQKqz57UExitSepz79/CgQuV7g/VmK', '3589000000', 18, 'male', 'ii_0_.png', 0, 'pUF0eHGASDuojRNtMzVLd93EB8RP90TdQBJodcESmFpZwgip3Xa1BJH7ah3P', '2018-07-28 00:32:35', '2018-07-28 00:32:35', 0),
(5, 'Juha', 'Matti', 'juhamatti@gmail.com', '$2y$10$sll8GQ8sFRfHWxKMCG193.5IB52ZCeqaf1UflSEMz4vCRbvrVO1iC', '3589123456', 2, 'male', 'ii_0_.png', 0, 'B7hjWzpvbXyPqgmqNRC8Ykqi8a7WI8Sx7gdpfYRceqCfCv2RPzwbwk94T1LA', '2018-07-29 13:21:23', '2018-07-29 13:21:23', 0),
(6, 'tayyab', 'tayyab', 'tayyabulislam@gmail.com', '$2y$10$mt85pLqklsGX0bw3lj.Yc.j4PRQ8mvgkNWVrPJpaHLKM/PAmoQcau', '3589345354', 1, 'male', 'ii_0_.png', 0, NULL, '2018-07-29 13:47:36', '2018-07-29 13:47:36', 0),
(7, 'hhh', 'hhh', 'hhh@gmail.com', '$2y$10$r5oVNsHAvI4D0ewV5s5Jh.jQcBlAj89CrKW0fotyWo9AsLyjacuBO', '3589745774', 1, 'male', 'ii_0_.png', 0, NULL, '2018-07-29 13:47:49', '2018-07-29 13:47:49', 0),
(8, 'Markku', 'Hovi', 'markkuhovi@gmail.com', '$2y$10$ul72KhWy/sb8VwxUmRFgeuCZ33q30NMB.ugQFRvrWwzJHptWez6em', '3589654321', 7, 'male', 'ii_8_1539408280.jpg', 60, 'Ep9PMagzpdHj3mQCTk7b9uQXLMhyPc0ZVpBq4VHfJ5BJaP92sPyZEzhN2Ile', '2018-07-29 13:49:48', '2018-10-28 12:22:20', 15),
(9, 'Sara', 'Nuno', 'saranuno@gmail.com', '$2y$10$BznlFKTHZ0fWDPXgaycdWuv2is35rkaRzN8ihfOHSx5B8G0aIQh2G', '3589111111', 17, 'female', 'ii_0_.png', 35, '9aELkVcDnpxnSbI6X5RT1A6lkFeKRHocS7GEXp0oQoSNagsHIsbBKwLQxhit', '2018-07-30 14:36:00', '2018-10-28 12:23:06', 35),
(10, 'deepak', 'saini', 'dsaini.sit@gmail.com', '$2y$10$qk6IWxk8x0iYL780VXyYZuIzXHp2/Y5RawRX6gwPbBHDTlcyK5hBi', '3589124820', 14, 'male', 'ii_0_.png', 0, NULL, '2018-08-17 12:09:05', '2018-08-17 12:09:05', 0),
(11, 'Ashan', 'Perera', 'nawin.perera@gmail.com', '$2y$10$ZxRK/ploHD8mjH3kMkk35eYFf07t/IRWzj2RTcbXflhP8GqUPvwBS', '3589203606', 1, 'male', 'ii_11_1538281730.jpg', 0, 'IhDXVJnrM9TyPXo00dQ7IPDpZKfukWKDLJ6lo1oPZa9NxgC179ThSBS49Bkg', '2018-09-05 00:07:07', '2018-09-30 11:28:50', 0),
(12, 'Dewni', 'Perera', 'dewniperera@gmail.com', '$2y$10$tRksbSlUnUJ1ovDBM0lnJOahw2FJg0Oz.yv0k4/QLyEQe6TmgqCpC', '3589577295', 3, 'female', 'ii_0_.png', 0, 'SJ6WkpM8BFBLc9MvmJV5wlr4aooHofBFiae1ZBVlxrnq1rdkdgirhMb9ach0', '2018-09-09 22:19:36', '2018-09-09 22:19:36', 0),
(13, 'Naween', 'Banuka', 'naweenwork@gmail.com', '$2y$10$rU6uoBE9bu.sKdRO9N/dUOZJfAA9.oE6pJCAD5znF5fRF.HyxNtwy', '3589123456', 1, 'male', NULL, 0, NULL, '2018-09-26 08:01:39', '2018-09-26 08:01:39', 0),
(14, 'sandeep', 'pathak', 'sandeep@zabius.com', '$2y$10$iteYO6ewPZhYXYSzfDMP4.bESTB9y1o83HaZHtfzNDLaVPAm2o57S', '3589545454', 15, 'male', NULL, 0, 'g4jjznPplWah5xlqFCeuTP1re9gP3uS4PB2nEhmqQ5UefmogBHvbmuCXz74y', '2018-10-23 11:40:26', '2018-10-23 11:40:26', 0),
(15, 'tr2', 'er2', 'sdfsd@er.com', '$2y$10$.azKffrIhmRaXrjlD7gIWOwaFmP.sSy4OseYu/W.1V.uyAsvpFN7.', '3589000000', 56, 'male', 'ii_15_1540878647.jpg', 0, 'ZfJBaVJRFYU5M94JeFY5rT2SnG1m4xsXdqJckKTQKcNoALh2a6cPS0KJCKZ8', '2018-10-30 07:50:28', '2018-10-30 07:50:47', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `product__requests`
--
ALTER TABLE `product__requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product__requests_id_index` (`id`),
  ADD KEY `product__requests_product_id_index` (`product_id`);

--
-- Indexes for table `product_statuses`
--
ALTER TABLE `product_statuses`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_borrow_user_index` (`borrow_user`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `product__requests`
--
ALTER TABLE `product__requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;--
-- Database: `homestead_test`
--
CREATE DATABASE IF NOT EXISTS `homestead_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `homestead_test`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Biographies', 1, NULL, NULL),
(3, 'Business', 1, NULL, NULL),
(4, 'Childrens', 1, NULL, NULL),
(5, 'History', 1, NULL, NULL),
(6, 'Piliyandala', 1, NULL, NULL),
(7, 'Religion & Spirituality', 1, NULL, NULL),
(8, 'Self-Help', 1, NULL, NULL),
(9, 'Literature & Fiction', 1, NULL, NULL),
(10, 'Educational Textbooks', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(61, 'Anjala', 1, 1, NULL, NULL),
(63, 'Nugegoda', 1, 1, NULL, NULL),
(64, 'Colombo', 1, 1, NULL, NULL),
(65, 'Dehiwala', 1, 1, NULL, NULL),
(66, 'Kottawa', 1, 1, NULL, NULL),
(67, 'Piliyandala', 1, 1, NULL, NULL),
(68, 'Angoda', 1, 1, NULL, NULL),
(69, 'Athurugiriya', 1, 1, NULL, NULL),
(70, 'Avissawella', 1, 1, NULL, NULL),
(71, 'Battaramulla', 1, 1, NULL, NULL),
(72, 'Boralesgamuwa', 1, 1, NULL, NULL),
(73, 'Hanwella', 1, 1, NULL, NULL),
(74, 'Homagama', 1, 1, NULL, NULL),
(75, 'Kaduwela', 1, 1, NULL, NULL),
(76, 'Kesbewa', 1, 1, NULL, NULL),
(77, 'Kohuwala', 1, 1, NULL, NULL),
(78, 'Kolonnawa', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Finland', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_22_112138_create_cities_table', 1),
(4, '2018_07_22_112344_create_countries_table', 1),
(5, '2018_07_23_072652_create_categories_table', 1),
(6, '2018_07_23_072939_create_sub_categories_table', 1),
(7, '2018_07_24_102216_create_products_table', 1),
(8, '2018_07_27_101525_create_product__requests_table', 1),
(9, '2018_09_24_102344_create_product_statuses_table', 1),
(10, '2018_09_28_173757_create_ratings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product__requests`
--

CREATE TABLE `product__requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `lent_user` int(10) UNSIGNED NOT NULL,
  `borrow_user` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `viewstatus` tinyint(4) NOT NULL DEFAULT '0',
  `date_borrowal` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_date` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_statuses`
--

CREATE TABLE `product_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_category_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `viewstatus` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `rental_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lending_duration` mediumint(8) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `borrow_user` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `name`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Arts & Literature', 2, 1, NULL, NULL),
(3, 'Cultural', 2, 1, NULL, NULL),
(4, 'European', 2, 1, NULL, NULL),
(5, 'Historical', 2, 1, NULL, NULL),
(6, 'Leaders & Notable People', 2, 1, NULL, NULL),
(7, 'Military', 2, 1, NULL, NULL),
(8, 'Modern', 2, 1, NULL, NULL),
(9, 'Sports', 2, 1, NULL, NULL),
(10, 'Women', 2, 1, NULL, NULL),
(11, 'Careers', 3, 1, NULL, NULL),
(12, 'Economics', 3, 1, NULL, NULL),
(13, 'Finance', 3, 1, NULL, NULL),
(14, 'Industries', 3, 1, NULL, NULL),
(15, 'International', 3, 1, NULL, NULL),
(16, 'Management', 3, 1, NULL, NULL),
(17, 'Marketing', 3, 1, NULL, NULL),
(18, 'Action & Adventure', 4, 1, NULL, NULL),
(19, 'Activity Books', 4, 1, NULL, NULL),
(20, 'Animals', 4, 1, NULL, NULL),
(21, 'Cars & Trucks', 4, 1, NULL, NULL),
(22, 'Classics', 4, 1, NULL, NULL),
(23, 'Comedy', 4, 1, NULL, NULL),
(24, 'Cookbooks', 4, 1, NULL, NULL),
(25, 'Education & Reference', 4, 1, NULL, NULL),
(26, 'Fairy Tales', 4, 1, NULL, NULL),
(27, 'Geography & Cultures', 4, 1, NULL, NULL),
(28, 'History', 4, 1, NULL, NULL),
(29, 'Mystery & Suspense', 4, 1, NULL, NULL),
(30, 'Sci-Fi & Fantasy Up', 4, 1, NULL, NULL),
(31, 'Science & Nature', 4, 1, NULL, NULL),
(32, 'Ancient', 5, 1, NULL, NULL),
(33, 'Asian', 5, 1, NULL, NULL),
(34, 'Caribbean', 5, 1, NULL, NULL),
(35, 'European', 5, 1, NULL, NULL),
(36, 'Exploration', 5, 1, NULL, NULL),
(37, 'Medieval', 5, 1, NULL, NULL),
(38, 'Modern', 5, 1, NULL, NULL),
(39, 'Native', 5, 1, NULL, NULL),
(40, 'Religious', 5, 1, NULL, NULL),
(41, 'Renaissance', 5, 1, NULL, NULL),
(52, 'Agnosticism', 7, 1, NULL, NULL),
(53, 'Astrology', 7, 1, NULL, NULL),
(54, 'Atheism', 7, 1, NULL, NULL),
(55, 'Buddhism', 7, 1, NULL, NULL),
(56, 'Christian', 7, 1, NULL, NULL),
(57, 'Christian Living', 7, 1, NULL, NULL),
(58, 'Comparative Religion', 7, 1, NULL, NULL),
(59, 'Earth-Based Religions', 7, 1, NULL, NULL),
(60, 'Hinduism', 7, 1, NULL, NULL),
(61, 'History of Religion', 7, 1, NULL, NULL),
(62, 'Inspirational', 7, 1, NULL, NULL),
(63, 'Islam', 7, 1, NULL, NULL),
(64, 'Judaism', 7, 1, NULL, NULL),
(65, 'New Age', 7, 1, NULL, NULL),
(66, 'Occult', 7, 1, NULL, NULL),
(67, 'Abuse', 8, 1, NULL, NULL),
(68, 'Addictions', 8, 1, NULL, NULL),
(69, 'Anger Management', 8, 1, NULL, NULL),
(70, 'Death & Grief', 8, 1, NULL, NULL),
(71, 'Depression', 8, 1, NULL, NULL),
(72, 'Meditation', 8, 1, NULL, NULL),
(73, 'Mid-Life', 8, 1, NULL, NULL),
(74, 'Motivational', 8, 1, NULL, NULL),
(75, 'Personal Transformation', 8, 1, NULL, NULL),
(76, 'Psychology', 8, 1, NULL, NULL),
(77, 'Relationships', 8, 1, NULL, NULL),
(78, 'Self-Esteem', 8, 1, NULL, NULL),
(79, 'Sex', 8, 1, NULL, NULL),
(80, 'Social Skills', 8, 1, NULL, NULL),
(81, 'Success', 8, 1, NULL, NULL),
(82, 'Stress', 8, 1, NULL, NULL),
(83, 'Anthologies', 9, 1, NULL, NULL),
(84, 'Classics', 9, 1, NULL, NULL),
(85, 'Contemporary', 9, 1, NULL, NULL),
(86, 'Foreign Language', 9, 1, NULL, NULL),
(87, 'History & Criticism', 9, 1, NULL, NULL),
(88, 'Meditation', 9, 1, NULL, NULL),
(89, 'Poetry', 9, 1, NULL, NULL),
(90, 'World Literature', 9, 1, NULL, NULL),
(91, 'Crime & Detective', 9, 1, NULL, NULL),
(92, 'Mysteries & Conspiracy', 9, 1, NULL, NULL),
(93, 'Anthologies', 9, 1, NULL, NULL),
(94, 'Classics', 9, 1, NULL, NULL),
(95, 'Contemporary', 9, 1, NULL, NULL),
(96, 'Foreign Language', 9, 1, NULL, NULL),
(97, 'History & Criticism', 9, 1, NULL, NULL),
(98, 'Meditation', 9, 1, NULL, NULL),
(99, 'Poetry', 9, 1, NULL, NULL),
(100, 'World Literature', 9, 1, NULL, NULL),
(101, 'Crime & Detective', 9, 1, NULL, NULL),
(102, 'Mysteries & Conspiracy', 9, 1, NULL, NULL),
(103, 'Suspense & Thrillers', 9, 1, NULL, NULL),
(104, 'Sci-Fi & Fantasy', 9, 1, NULL, NULL),
(105, 'Romance', 9, 1, NULL, NULL),
(106, 'Superhero', 9, 1, NULL, NULL),
(107, 'Erotica', 9, 1, NULL, NULL),
(108, 'Comedy', 9, 1, NULL, NULL),
(109, 'Fantasy', 9, 1, NULL, NULL),
(110, 'Arts', 10, 1, NULL, NULL),
(111, 'Architecture & Design', 10, 1, NULL, NULL),
(112, 'Business & Finance', 10, 1, NULL, NULL),
(113, 'Business & Investing', 10, 1, NULL, NULL),
(114, 'Computer Science', 10, 1, NULL, NULL),
(115, 'Computers & Technology', 10, 1, NULL, NULL),
(116, 'Education', 10, 1, NULL, NULL),
(117, 'Economics', 10, 1, NULL, NULL),
(118, 'History', 10, 1, NULL, NULL),
(119, 'Humanities', 10, 1, NULL, NULL),
(120, 'Languages', 10, 1, NULL, NULL),
(121, 'Law', 10, 1, NULL, NULL),
(122, 'Literature & Fiction', 10, 1, NULL, NULL),
(123, 'Medicine & Health Sciences', 10, 1, NULL, NULL),
(124, 'Politics & Government', 10, 1, NULL, NULL),
(125, 'Social Sciences', 10, 1, NULL, NULL),
(126, 'Science & Math', 10, 1, NULL, NULL),
(127, 'Social Sciences', 10, 1, NULL, NULL),
(128, 'Schools & Teaching', 10, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `gender` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pimage` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `up_points` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `down_points` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lname`, `email`, `password`, `phone`, `city_id`, `gender`, `pimage`, `up_points`, `down_points`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'gurpreet', 'singh', 'gur@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9915174050', 1234, 'male', NULL, 2, 8, NULL, '2018-10-24 00:00:00', '2018-10-10 00:00:00'),
(2, 'Raman', 'Sall', 'raman.zabius@gmail.com', '$2y$10$Q96DsdxML19f6Qst72Uyquq5i5EjEe3NtTp3nTPwxsbHzeKGJSbwu', '3589233333', 61, 'female', 'ii_2_1539239763.jpeg', 0, 0, 'jRaOyHtlOzDmwVTBACjLF8CQ9WlwMKC13fldxFwD3TK4R3L15TILI9zmQ3W3', '2018-10-11 09:19:16', '2018-10-11 09:36:03'),
(3, 'Markku', 'Hovi', 'markkuhovi@gmail.com', '$2y$10$A5TdtBuZsYRS51jSf.9mCedO7G5/eZDzXvMq15yASzPQEwoZaKF2O', '3589577295', 61, 'male', NULL, 0, 0, 'MhL2mozhsEcrrZnBuolVRwda0DscZfWOuVLX4kW7w3egUB6Oe6R7jYJJ4vys', '2018-10-11 15:27:46', '2018-10-11 15:27:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
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
-- Indexes for table `product__requests`
--
ALTER TABLE `product__requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product__requests_id_index` (`id`),
  ADD KEY `product__requests_product_id_index` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_borrow_user_index` (`borrow_user`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `product__requests`
--
ALTER TABLE `product__requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
  