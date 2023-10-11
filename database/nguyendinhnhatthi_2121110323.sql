-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2023 at 03:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dinhthi_doan`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_brand`
--

CREATE TABLE `db_brand` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_brand`
--

INSERT INTO `db_brand` (`id`, `name`, `slug`, `image`, `sort_order`, `metakey`, `metadesc`, `created_at`, `updated_at`, `create_by`, `update_by`, `status`) VALUES
(3, 'Asus', 'asus', 'asus.jpg', 0, 'asus', 'asus', '2023-10-04 05:46:15', '2023-10-04 05:46:15', 1, NULL, 1),
(4, 'rrrrrr', 'rrrrrr', 'acer.png', 0, 'acer', 'acer', '2023-10-04 05:50:01', '2023-10-04 05:50:34', 1, 1, 1),
(5, 'Apple', 'apple', 'apple.jpg', 0, 'apple', 'apple', '2023-10-04 05:50:24', '2023-10-04 05:50:24', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(10) UNSIGNED NOT NULL,
  `metekey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `slug`, `image`, `parent_id`, `sort_order`, `metekey`, `metadesc`, `created_at`, `updated_at`, `create_by`, `update_by`, `status`) VALUES
(2, 'Apple', 'apple', 'apple.jpg', 0, 0, '213', '213', '2023-10-04 00:31:38', '2023-10-04 03:16:17', 1, 1, 1),
(3, 'Lenovo', 'lenovo', 'lenovo.png', 0, 0, '213', '213', '2023-10-04 00:31:45', '2023-10-04 03:16:27', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `content` mediumtext NOT NULL,
  `replay_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_menu`
--

CREATE TABLE `db_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `table_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_post`
--

CREATE TABLE `db_post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `detail` mediumtext NOT NULL,
  `image` varchar(1000) NOT NULL,
  `type` varchar(100) NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `price` double(10,2) NOT NULL,
  `price_sale` double(10,2) NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `detail` mediumtext NOT NULL,
  `metekey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `price`, `price_sale`, `image`, `qty`, `detail`, `metekey`, `metadesc`, `created_at`, `updated_at`, `create_by`, `update_by`, `status`) VALUES
(1, 2, 1, 'Apple MacBook Air M1 256GB 2020', 'apple-macbook-air-m1-256gb-2020', 123.00, 123.00, 'apple-macbook-air-m1-256gb-2020.webp', 123, 'ácxc', 'q1', 'ád', '2023-10-04 03:18:41', '2023-10-04 03:18:41', 1, NULL, 1),
(2, 3, 5, 'Laptop Lenovo Gaming Legion 5 15ARH7 82RE002VVN', 'laptop-lenovo-gaming-legion-5-15arh7-82re002vvn', 123123.00, 123.00, 'laptop-lenovo-gaming-legion-5-15arh7-82re002vvn.webp', 1, '12321', '123', '123', '2023-10-04 03:19:38', '2023-10-04 03:19:38', 1, NULL, 1),
(3, 2, 3, 'Apple Macbook Pro 13 M2 2022 8GB 256GB', 'apple-macbook-pro-13-m2-2022-8gb-256gb', 11.00, 2.00, 'apple-macbook-pro-13-m2-2022-8gb-256gb.webp', 44, 'qwewe', 'ew', 'e', '2023-10-04 03:28:00', '2023-10-04 03:28:00', 1, NULL, 1),
(4, 2, 5, 'Macbook Pro 14 M1 Pro 10', 'macbook-pro-14-m1-pro-10', 65990000.00, 46990000.00, 'macbook-pro-14-m1-pro-10.webp', 12, 'fjdfj', 'ma', 'mac', '2023-10-04 03:47:29', '2023-10-04 03:47:29', 1, NULL, 1),
(5, 2, 5, 'Macbook Air 15 inch M2 2023 8GB 256GB', 'macbook-air-15-inch-m2-2023-8gb-256gb', 32990000.00, 30990000.00, 'macbook-air-15-inch-m2-2023-8gb-256gb.webp', 12, 'fjdfj', 'ma', 'mac', '2023-10-04 03:36:11', '2023-10-04 03:36:11', 1, NULL, 1),
(6, 3, 412, 'Laptop Lenovo Ideapad 5 Pro 16ARH7', 'laptop-lenovo-ideapad-5-pro-16arh7', 21990000.00, 19990000.00, 'laptop-lenovo-ideapad-5-pro-16arh7.webp', 3, 'af', 'sadasd', 'ádasd', '2023-10-04 03:41:05', '2023-10-04 03:41:05', 1, NULL, 1),
(7, 3, 4, 'Laptop Lenovo IdeaPad 3 14ITL6 82H701QYVN', 'laptop-lenovo-ideapad-3-14itl6-82h701qyvn', 15490000.00, 13490000.00, 'laptop-lenovo-ideapad-3-14itl6-82h701qyvn.webp', 4, 'kgjkdjk', 'kjaskjasdkj', 'kjfdsfjsfj', '2023-10-04 03:45:13', '2023-10-04 03:45:13', 1, NULL, 1),
(8, 3, 44, 'Laptop Lenovo Yoga Slim 7 Pro 14IHU5 O 82NH00BDVN', 'laptop-lenovo-yoga-slim-7-pro-14ihu5-o-82nh00bdvn', 22300000.00, 19990000.00, 'laptop-lenovo-yoga-slim-7-pro-14ihu5-o-82nh00bdvn.webp', 4, 'loẻgjkd', 'ádad', 'sdkjnfkjsd', '2023-10-04 03:46:37', '2023-10-04 03:46:37', 1, NULL, 1),
(9, 2, 4, 'MacBook Pro 14 inch M2 Pro 2023', 'macbook-pro-14-inch-m2-pro-2023', 52990000.00, 48790000.00, 'macbook-pro-14-inch-m2-pro-2023.webp', 4, 'mac', 'mac', 'mac', '2023-10-05 06:01:01', '2023-10-05 06:01:01', 1, NULL, 1),
(10, 3, 4, 'Laptop Lenovo Ideapad Gaming 3 15IHU6 82K101HGVN', 'laptop-lenovo-ideapad-gaming-3-15ihu6-82k101hgvn', 19600000.00, 17590000.00, 'laptop-lenovo-ideapad-gaming-3-15ihu6-82k101hgvn.webp', 4, 'lenovo', 'lenovo', 'lenovo', '2023-10-05 06:03:20', '2023-10-05 06:03:20', 1, NULL, 1),
(11, 3, 4, 'Laptop Lenovo Ideapad Gaming Legion 5 15IAH7H 82RC008LVN', 'laptop-lenovo-ideapad-gaming-legion-5-15iah7h-82rc008lvn', 28880000.00, 26000000.00, 'laptop-lenovo-ideapad-gaming-legion-5-15iah7h-82rc008lvn.webp', 4, 'lenovo', 'lenovo', 'lenovo', '2023-10-05 06:12:44', '2023-10-05 06:12:44', 1, NULL, 1),
(12, 3, 3, 'Laptop Lenovo Ideapad Gaming 3 15IAH7 82S9006YVN', 'laptop-lenovo-ideapad-gaming-3-15iah7-82s9006yvn', 22300000.00, 18900000.00, 'laptop-lenovo-ideapad-gaming-3-15iah7-82s9006yvn.webp', 4, 'lenovo', 'len', 'lenovo', '2023-10-05 06:15:52', '2023-10-05 06:15:52', 1, NULL, 1),
(13, 3, 3, 'Laptop Lenovo Legion LOQ 15IRH8 82XV000PVN', 'laptop-lenovo-legion-loq-15irh8-82xv000pvn', 30990000.00, 28900000.00, 'laptop-lenovo-legion-loq-15irh8-82xv000pvn.webp', 4, 'lenovo', 'lenovo', 'lenovo', '2023-10-05 06:17:18', '2023-10-05 06:17:18', 1, NULL, 1),
(14, 3, 3, 'Laptop Lenovo Ideapad 3 14IAU7 82RJ001BVN', 'laptop-lenovo-ideapad-3-14iau7-82rj001bvn', 16300000.00, 15300000.00, 'laptop-lenovo-ideapad-3-14iau7-82rj001bvn.webp', 4, 'lenovo', 'lenovo', 'lenovo', '2023-10-05 06:18:17', '2023-10-05 06:18:17', 1, NULL, 1),
(15, 3, 3, 'Laptop Lenovo Ideapad 15IAU7 82RK001NVN', 'laptop-lenovo-ideapad-15iau7-82rk001nvn', 13600000.00, 12600000.00, 'laptop-lenovo-ideapad-15iau7-82rk001nvn.webp', 4, 'lenovo', 'lenovo', 'lenovo', '2023-10-05 06:19:40', '2023-10-05 06:19:40', 1, NULL, 1),
(16, 2, 2, 'Apple Macbook Air M2 2022 16GB 512GB', 'apple-macbook-air-m2-2022-16gb-512gb', 39490000.00, 33000000.00, 'apple-macbook-air-m2-2022-16gb-512gb.webp', 4, 'mac', 'mac', 'mac', '2023-10-05 06:22:14', '2023-10-05 06:22:14', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `link` varchar(1000) NOT NULL,
  `sort_order` tinyint(3) UNSIGNED NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `update_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_topic`
--

CREATE TABLE `db_topic` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `metakey` varchar(255) NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `roles` varchar(255) NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `name`, `email`, `phone`, `username`, `password`, `address`, `roles`, `created_by`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'buibui', 'asdasd', '132', 'buibui', '123', 'asdsad1', '1', 1, '2023-10-05 04:01:33', '2023-10-05 04:01:33', NULL, 1),
(2, 'tihthi', 'adjasdh', '123', 'tihthi', '123', 'fjkahjkf', '2', 1, '2023-10-05 04:03:28', '2023-10-05 04:03:28', NULL, 1);

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
(5, '2023_05_31_112034_create_post_table', 1),
(6, '2023_05_31_112044_create_topic_table', 1),
(7, '2023_09_21_125219_create_category_table', 1),
(8, '2023_09_21_125410_create_contact_table', 1),
(9, '2023_09_21_125429_create_menu_table', 1),
(10, '2023_09_21_125520_create_order_table', 1),
(11, '2023_09_21_125705_create_orderdetail_table', 1),
(12, '2023_09_21_125727_create_product_table', 1),
(13, '2023_09_21_125753_create_slider_table', 1),
(14, '2023_09_21_125812_create_user_table', 1),
(15, '2023_09_23_083536_create_brand_table', 1),
(16, '2023_10_05_105940_create_user_table', 2);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `db_brand`
--
ALTER TABLE `db_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_post`
--
ALTER TABLE `db_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_topic`
--
ALTER TABLE `db_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_user_email_unique` (`email`),
  ADD UNIQUE KEY `db_user_username_unique` (`username`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_brand`
--
ALTER TABLE `db_brand`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_post`
--
ALTER TABLE `db_post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_topic`
--
ALTER TABLE `db_topic`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
