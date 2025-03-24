-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2025 at 08:40 PM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isumax_db_isumax`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Habib Bank Limited (HBL)', 1, '2024-10-29 02:20:34', '2024-10-29 02:20:34'),
(2, 'United Bank Limited (UBL)', 1, '2024-10-29 02:20:34', '2024-10-29 12:20:56'),
(5, 'Muslim Comercial Bank', 1, '2024-10-31 11:46:22', '2024-10-31 11:46:22'),
(6, 'Qatar National Bank', 1, '2024-10-31 11:46:53', '2024-10-31 11:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `blogcategorys`
--

CREATE TABLE `blogcategorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` mediumblob DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `bank_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Branch -1', 1, '2024-10-29 02:23:58', '2024-10-29 02:23:58'),
(2, 1, 'Branch -2', 1, '2024-10-29 02:23:58', '2024-10-29 02:23:58'),
(3, 2, 'Branch -1', 1, '2024-10-29 02:23:58', '2024-10-29 02:23:58'),
(4, 2, 'Branch -2', 1, '2024-10-29 02:23:58', '2024-10-29 02:23:58'),
(5, 2, 'Branch -3', 1, '2024-10-29 02:23:58', '2024-10-29 02:23:58'),
(6, 2, 'Branch -4', 1, '2024-10-29 02:23:58', '2024-10-29 02:23:58'),
(8, 5, 'Gouri Town branch', 1, '2024-11-04 13:24:14', '2024-11-04 13:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `image` text NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ford', 'ford', '/backend/brandimage/1709112624.webp', 1, '2024-02-28 13:02:21', '2024-02-28 09:30:24'),
(2, 'Chevrolet', 'chevrolet', '/backend/brandimage/1709112652.webp', 1, '2024-02-28 14:12:23', '2024-02-28 09:30:52'),
(3, 'Hundai', 'hundai', '/backend/brandimage/1709112667.webp', 1, '2024-02-28 15:24:37', '2024-02-28 09:31:07'),
(4, 'Audi', 'audi', '/backend/brandimage/1709112691.webp', 1, '2024-02-28 15:31:31', '2024-02-28 15:31:31'),
(5, 'Addidas', 'addidas', '/backend/brandimage/1709127557.png', 1, '2024-02-28 19:27:00', '2024-02-28 13:39:17'),
(6, 'Nestle', 'nestle', '/backend/brandimage/1709127896.png', 1, '2024-02-28 19:44:56', '2024-02-28 19:44:56');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_review`
--

CREATE TABLE `buyer_review` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `orderId` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buy_token`
--

CREATE TABLE `buy_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `usdt_amount` double(10,2) DEFAULT NULL,
  `current_price` varchar(255) DEFAULT NULL COMMENT 'cp',
  `get_token` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cancel_orders`
--

CREATE TABLE `cancel_orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `sellerId` int(11) DEFAULT NULL,
  `buyerId` int(11) DEFAULT NULL,
  `selectedPrice` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `commission` int(11) DEFAULT NULL,
  `fixcommission` varchar(255) DEFAULT NULL,
  `product_sell_qty` int(11) DEFAULT NULL,
  `getAmount` decimal(10,5) DEFAULT NULL COMMENT 'Admin get commission amount ',
  `sort_order` int(11) DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `speacial_status` int(11) DEFAULT NULL,
  `mobile_view_class` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `percentage_amt` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `commission`, `fixcommission`, `product_sell_qty`, `getAmount`, `sort_order`, `file`, `status`, `speacial_status`, `mobile_view_class`, `keyword`, `percentage_amt`, `created_at`, `updated_at`) VALUES
(1, 'Graphics & Design', 'graphics-design', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Website Development', 'website-development', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:28:40'),
(3, 'App Development', 'app-development', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:29:00'),
(4, 'Writing & Translation', 'writing-translation', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:29:20'),
(5, 'Digital Marketing', 'digital-marketing', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:29:41'),
(6, 'Video & Animation', 'video-animation', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:30:06'),
(7, 'Business & Finance', 'business-finance', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:30:38'),
(8, 'Voice & Audio', 'voice-audio', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:31:09'),
(9, 'Virtual Assistance', 'virtual-assistance', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:31:28'),
(10, 'Data Services', 'data-services', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 11:40:23'),
(11, 'Cybersecurity & IT Services', 'cybersecurity-it-services', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-10 06:58:42'),
(12, 'Logo Design', 'logo-design', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Business Cards & Stationery', 'business-cards', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Illustration & Drawing', 'illustration-drawing', '', 'null', 'null', 'null', 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:05:08'),
(15, 'Cartoons & Caricatures', 'cartoons-caricatures', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Flyers & Brochures', 'flyers-brochures', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Book & eBook Covers', 'book-ebook-covers', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Packaging & Labels', 'packaging-labels', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Frontend Development', 'frontend-development', '', 'null', 'null', 'null', 2, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:11:05'),
(20, 'Backend Development', 'backend-development', '', 'null', 'null', 'null', 2, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:11:30'),
(21, 'E-Commerce Website Development', 'e-commerce-website-development', '', 'null', 'null', 'null', 2, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:12:01'),
(22, 'Shopify Development', 'shopify-development', '', 'null', 'null', 'null', 2, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:14:41'),
(23, 'Custom CMS Development', 'custom-cms-development', '', 'null', 'null', 'null', 2, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:15:41'),
(24, 'iOS App Development', 'ios-app-development', '', 'null', 'null', 'null', 3, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:18:29'),
(25, 'Android App Development', 'android-app-development', '', 'null', 'null', 'null', 3, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:18:52'),
(26, 'Hybrid App Development (Flutter, React Native)', 'hybrid-app-development-flutter-react-native-', '', 'null', 'null', 'null', 3, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:19:24'),
(27, 'AR/VR App Development', 'ar-vr-app-development', '', 'null', 'null', 'null', 3, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:20:51'),
(28, 'AI-Powered Apps', 'ai-powered-apps', '', 'null', 'null', 'null', 3, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:21:12'),
(29, 'App UI/UX Design', 'app-ui-ux-design', '', 'null', 'null', 'null', 3, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:21:34'),
(30, 'Content Writing', 'content-writing', '', 'null', 'null', 'null', 4, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:58:35'),
(31, 'SEO Content Writing', 'seo-content-writing', '', 'null', 'null', 'null', 4, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:59:02'),
(32, 'Copywriting & Sales Writing', 'copywriting-sales-writing', '', 'null', 'null', 'null', 4, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:59:31'),
(33, 'Business & Technical Writing', 'business-technical-writing', '', 'null', 'null', 'null', 4, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:59:58'),
(34, 'Creative Writing', 'creative-writing', '', 'null', 'null', 'null', 4, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:00:24'),
(35, 'Translation & Localization', 'translation-localization', '', 'null', 'null', 'null', 4, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:00:51'),
(36, 'Motion Graphics', 'motion-graphics', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:25:28'),
(37, 'Stop Motion Animation', 'stop-motion-animation', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:27:21'),
(38, 'Intro & Outro Videos', 'intro-outro-videos', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:27:54'),
(39, 'Product Promotion Videos', 'product-promotion-videos', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:28:31'),
(40, 'Music Videos', 'music-videos', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:29:06'),
(41, 'YouTube Video Editing', 'youtube-video-editing', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 19:29:37'),
(42, 'Video Editing', 'video-editing', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:04:03'),
(43, 'Whiteboard Animation', 'whiteboard-animation', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:06:11'),
(44, '3D Animation', '3d-animation', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:07:29'),
(45, 'Explainer Videos', 'explainer-videos', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:08:46'),
(46, 'E-Learning & Training Videos', 'e-learning-training-videos', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:18:51'),
(47, 'AR & VR Video Production', 'ar-vr-video-production', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:19:16'),
(48, 'Event Coverage & Highlights', 'event-coverage-highlights', '', 'null', 'null', 'null', 6, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:19:40'),
(49, 'SEO (Search Engine Optimization)', 'seo-search-engine-optimization-', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:13:44'),
(50, 'PPC Advertising (Google Ads, Facebook Ads)', 'ppc-advertising-google-ads-facebook-ads-', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:14:10'),
(51, 'Social Media Marketing & Management', 'social-media-marketing-management', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:14:36'),
(52, 'Email Marketing', 'email-marketing', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:15:01'),
(53, 'Content Marketing', 'content-marketing', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:15:24'),
(54, 'Affiliate Marketing', 'affiliate-marketing', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:15:47'),
(55, 'Influencer Marketing', 'influencer-marketing', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:16:26'),
(56, 'Growth Hacking Strategies', 'growth-hacking-strategies', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:17:12'),
(57, 'Conversion Rate Optimization (CRO)', 'conversion-rate-optimization-cro-', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:17:37'),
(58, 'E-Commerce Marketing', 'e-commerce-marketing', '', 'null', 'null', 'null', 5, NULL, NULL, NULL, NULL, 0, NULL, 1, NULL, NULL, 'null', 0, NULL, '2025-03-07 20:18:23'),
(59, 'Photography & Stock Media', 'photography-stock-media', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 11:32:24', '2025-03-07 11:32:24'),
(60, 'Crypto & blockchain services', 'crypto-blockchain-services', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-07 11:32:38', '2025-03-10 07:05:41'),
(61, 'E-Book & Digital Products/Downloads', 'e-book-digital-products-downloads', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-07 11:33:15', '2025-03-07 21:01:51'),
(62, 'AI Services', 'ai-services', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-07 11:33:42', '2025-03-07 11:41:02'),
(63, 'Life-Style/Growth', 'life-style-growth', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-07 11:36:48', '2025-03-07 11:38:36'),
(64, 'Consultant Services', 'consultant-services', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 11:37:41', '2025-03-07 11:37:41'),
(65, 'UI/UX Design', 'ui-ux-design', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 18:27:19', '2025-03-07 18:27:19'),
(66, 'Branding & Identity', 'branding-identity', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 18:37:32', '2025-03-07 18:37:32'),
(67, 'Social Media Design', 'social-media-design', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 18:44:43', '2025-03-07 18:44:43'),
(68, 'Print Design (Flyers, Brochures, Business Cards)', 'print-design-flyers-brochures-business-cards-', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 18:56:11', '2025-03-07 18:56:11'),
(69, '3D Modeling & Rendering', '3d-modeling-rendering', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:05:43', '2025-03-07 19:05:43'),
(70, 'Infographic Design', 'infographic-design', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:06:16', '2025-03-07 19:06:16'),
(71, 'Presentation Design', 'presentation-design', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:08:17', '2025-03-07 19:08:17'),
(72, 'NFT Art Creation', 'nft-art-creation', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:08:37', '2025-03-07 19:08:37'),
(73, 'Full-Stack Web Development', 'full-stack-web-development', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:10:35', '2025-03-07 19:10:35'),
(74, 'Website Maintenance & Debugging', 'website-maintenance-debugging', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:16:09', '2025-03-07 19:16:09'),
(75, 'Web App Development', 'web-app-development', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:16:35', '2025-03-07 19:16:35'),
(76, 'Landing Page Design', 'landing-page-design', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:16:54', '2025-03-07 19:16:54'),
(77, 'API Integration & Development', 'api-integration-development', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:17:14', '2025-03-07 19:17:14'),
(78, 'App Maintenance & Bug Fixes', 'app-maintenance-bug-fixes', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:22:03', '2025-03-07 19:22:03'),
(79, 'Blockchain & Crypto Apps', 'blockchain-crypto-apps', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:22:23', '2025-03-07 19:22:23'),
(80, 'IoT App Development', 'iot-app-development', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:22:49', '2025-03-07 19:22:49'),
(82, 'Business Plan Writing', 'business-plan-writing', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:40:45', '2025-03-07 19:40:45'),
(83, 'Financial Consulting & Planning', 'financial-consulting-planning', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:52:12', '2025-03-07 19:52:12'),
(84, 'Startup Consulting', 'startup-consulting', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:52:43', '2025-03-07 19:52:43'),
(85, 'Market Research', 'market-research', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:53:23', '2025-03-07 19:53:23'),
(86, 'Business Registration & Legal Assistance', 'business-registration-legal-assistance', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:53:43', '2025-03-07 19:53:43'),
(87, 'Accounting & Bookkeeping', 'accounting-bookkeeping', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:54:03', '2025-03-07 19:54:03'),
(88, 'Tax Consultation', 'tax-consultation', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:54:22', '2025-03-07 19:54:22'),
(89, 'Investment Advisory', 'investment-advisory', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:54:42', '2025-03-07 19:54:42'),
(90, 'Crowdfunding Strategy', 'crowdfunding-strategy', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:56:30', '2025-03-07 19:56:30'),
(91, 'Business Proposal Writing', 'business-proposal-writing', NULL, NULL, NULL, NULL, 7, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 19:57:05', '2025-03-07 19:57:05'),
(92, 'Editing & Proofreading', 'editing-proofreading', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:01:26', '2025-03-07 20:01:26'),
(93, 'Plagiarism Checking & Rewriting', 'plagiarism-checking-rewriting', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:01:55', '2025-03-07 20:01:55'),
(94, 'Document Translation', 'document-translation', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:02:16', '2025-03-07 20:02:16'),
(95, 'Whitepapers & Case Studies', 'whitepapers-case-studies', NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:02:34', '2025-03-07 20:02:34'),
(96, 'WordPress Development', 'wordpress-development', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:11:51', '2025-03-07 20:11:51'),
(97, 'Game Development', 'game-development', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:12:45', '2025-03-07 20:12:45'),
(98, 'Voice Over (Commercials, Narration, Characters)', 'voice-over-commercials-narration-characters-', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:21:45', '2025-03-07 20:21:45'),
(99, 'Podcast Editing', 'podcast-editing', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:22:03', '2025-03-07 20:22:03'),
(100, 'Audiobook Production', 'audiobook-production', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:22:20', '2025-03-07 20:22:20'),
(101, 'Sound Design', 'sound-design', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:22:41', '2025-03-07 20:22:41'),
(102, 'Jingle & Song Production', 'jingle-song-production', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:23:03', '2025-03-07 20:23:03'),
(103, 'Music Mixing & Mastering', 'music-mixing-mastering', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:23:25', '2025-03-07 20:23:25'),
(104, 'AI Voice Generation', 'ai-voice-generation', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:23:42', '2025-03-07 20:23:42'),
(105, 'Audio Restoration & Enhancement', 'audio-restoration-enhancement', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:23:59', '2025-03-07 20:23:59'),
(106, 'DJ Drops & Radio Imaging', 'dj-drops-radio-imaging', NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:24:16', '2025-03-07 20:24:16'),
(107, 'Data Entry & Management', 'data-entry-management', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:25:02', '2025-03-07 20:25:02'),
(108, 'Customer Support Services', 'customer-support-services', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:25:17', '2025-03-07 20:25:17'),
(109, 'Calendar & Email Management', 'calendar-email-management', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:25:33', '2025-03-07 20:25:33'),
(110, 'Personal Assistance', 'personal-assistance', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:25:48', '2025-03-07 20:25:48'),
(111, 'Social Media Management', 'social-media-management', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:26:05', '2025-03-07 20:26:05'),
(112, 'E-Commerce Store Assistance', 'e-commerce-store-assistance', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:26:23', '2025-03-07 20:26:23'),
(113, 'Travel Planning', 'travel-planning', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:26:37', '2025-03-07 20:26:37'),
(114, 'Online Research', 'online-research', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:26:52', '2025-03-07 20:26:52'),
(115, 'Live Chat Support', 'live-chat-support', NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:27:09', '2025-03-07 20:27:09'),
(116, 'Data Entry & Processing', 'data-entry-processing', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:27:50', '2025-03-07 20:27:50'),
(117, 'Data Mining & Scraping', 'data-mining-scraping', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:28:05', '2025-03-07 20:28:05'),
(118, 'Database Management', 'database-management', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:28:20', '2025-03-07 20:28:20'),
(119, 'Data Visualization', 'data-visualization', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:28:37', '2025-03-07 20:28:37'),
(120, 'Big Data Analysis', 'big-data-analysis', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:28:54', '2025-03-07 20:28:54'),
(121, 'Data Cleaning & Formatting', 'data-cleaning-formatting', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:30:14', '2025-03-07 20:30:14'),
(122, 'Excel Automation & Macros', 'excel-automation-macros', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:32:08', '2025-03-07 20:32:08'),
(123, 'Website Security & Penetration Testing', 'website-security-penetration-testing', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:33:25', '2025-03-07 20:33:25'),
(124, 'Ethical Hacking', 'ethical-hacking', '', 'null', 'null', 'null', 11, NULL, NULL, NULL, NULL, 0, '', 0, NULL, NULL, 'null', 0, '2025-03-07 20:33:42', '2025-03-13 11:56:27'),
(125, 'Network Security', 'network-security', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:33:59', '2025-03-07 20:33:59'),
(126, 'Malware Removal', 'malware-removal', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:34:50', '2025-03-07 20:34:50'),
(127, 'IT Support & Troubleshooting', 'it-support-troubleshooting', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:35:05', '2025-03-07 20:35:05'),
(128, 'Cloud Security', 'cloud-security', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:35:22', '2025-03-07 20:35:22'),
(129, 'Cyber Threat Intelligence', 'cyber-threat-intelligence', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:35:39', '2025-03-07 20:35:39'),
(130, 'Data Recovery & Backup Solutions', 'data-recovery-backup-solutions', NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:35:56', '2025-03-07 20:35:56'),
(131, 'Professional Photography', 'professional-photography', NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:36:46', '2025-03-07 20:36:46'),
(132, 'Photo Editing & Retouching', 'photo-editing-retouching', NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:37:09', '2025-03-07 20:37:09'),
(133, 'Stock Photos & Videos', 'stock-photos-videos', NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:37:24', '2025-03-07 20:37:24'),
(134, 'Product Photography', 'product-photography', NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:37:40', '2025-03-07 20:37:40'),
(135, 'Event Photography', 'event-photography', NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:37:53', '2025-03-07 20:37:53'),
(136, 'Real Estate Photography', 'real-estate-photography', NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:38:13', '2025-03-07 20:38:13'),
(137, 'Drone Photography & Videography', 'drone-photography-videography', NULL, NULL, NULL, NULL, 59, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:38:31', '2025-03-07 20:38:31'),
(138, 'Blockchain/ Crypto Service', 'blockchain-crypto-service', '', 'null', 'null', 'null', 60, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-07 20:39:12', '2025-03-10 07:18:39'),
(139, 'Smart Contract Development', 'smart-contract-development', NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:39:29', '2025-03-07 20:39:29'),
(140, 'Blockchain Development', 'blockchain-development', '', 'null', 'null', 'null', 60, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-07 20:39:49', '2025-03-08 08:52:50'),
(141, 'Crypto Wallet Development', 'crypto-wallet-development', NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:40:05', '2025-03-07 20:40:05'),
(142, 'NFT Marketplace Development', 'nft-marketplace-development', NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:40:21', '2025-03-07 20:40:21'),
(143, 'Tokenomics & Whitepaper Writing', 'tokenomics-whitepaper-writing', NULL, NULL, NULL, NULL, 60, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:40:37', '2025-03-07 20:40:37'),
(144, 'AI Chatbot Development', 'ai-chatbot-development', NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:45:10', '2025-03-07 20:45:10'),
(145, 'AI Content Generation', 'ai-content-generation', NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:45:43', '2025-03-07 20:45:43'),
(146, 'Machine Learning Solutions', 'machine-learning-solutions', NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:46:03', '2025-03-07 20:46:03'),
(147, 'AI-Powered Image & Video Editing', 'ai-powered-image-video-editing', NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:46:25', '2025-03-07 20:46:25'),
(148, 'AI-Powered SEO & Marketing', 'ai-powered-seo-marketing', NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:46:48', '2025-03-07 20:46:48'),
(149, 'AI Voice & Speech Recognition', 'ai-voice-speech-recognition', NULL, NULL, NULL, NULL, 62, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:47:11', '2025-03-07 20:47:11'),
(150, 'Life Coaching', 'life-coaching', NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:48:04', '2025-03-07 20:48:04'),
(151, 'Productivity Hacks', 'productivity-hacks', NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:48:25', '2025-03-07 20:48:25'),
(152, 'Meditation & Mindfulness', 'meditation-mindfulness', NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:48:42', '2025-03-07 20:48:42'),
(153, 'Fitness & Wellness Coaching', 'fitness-wellness-coaching', NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:51:17', '2025-03-07 20:51:17'),
(154, 'Personal Development Strategies', 'personal-development-strategies', NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:51:38', '2025-03-07 20:51:38'),
(155, 'Career Guidance', 'career-guidance', NULL, NULL, NULL, NULL, 63, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:51:57', '2025-03-07 20:51:57'),
(156, 'Legal Consulting', 'legal-consulting', NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:52:37', '2025-03-07 20:52:37'),
(157, 'Business Growth Strategies', 'business-growth-strategies', NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:53:10', '2025-03-07 20:53:10'),
(158, 'Marketing Consultation', 'marketing-consultation', NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:53:37', '2025-03-07 20:53:37'),
(159, 'HR & Recruitment Consulting', 'hr-recruitment-consulting', NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:54:06', '2025-03-07 20:54:06'),
(160, 'Technology Consulting', 'technology-consulting', NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:54:37', '2025-03-07 20:54:37'),
(161, 'Real Estate Investment Advice', 'real-estate-investment-advice', NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:55:10', '2025-03-07 20:55:10'),
(162, 'Sales & Negotiation Strategies', 'sales-negotiation-strategies', NULL, NULL, NULL, NULL, 64, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 20:55:39', '2025-03-07 20:55:39'),
(163, 'E-Book Writing & Formatting', 'e-book-writing-formatting', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 21:10:51', '2025-03-07 21:10:51'),
(164, 'PDF Creation & Conversion', 'pdf-creation-conversion', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 21:43:44', '2025-03-07 21:43:44'),
(166, 'Digital Course Creation', 'digital-course-creation', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 21:44:17', '2025-03-07 21:44:17'),
(167, 'Print-on-Demand Services', 'print-on-demand-services', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 21:44:49', '2025-03-07 21:44:49'),
(168, 'Digital Templates & Tools', 'digital-templates-tools', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-07 21:45:14', '2025-03-07 21:45:14'),
(169, 'Audio & voice file', 'audio-voice-file', '', 'null', 'null', 'null', 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-07 21:45:36', '2025-03-10 06:43:09'),
(188, 'Gaming Video Editing & Trailers', 'gaming-video-editing-trailers', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 08:09:14', '2025-03-08 08:09:14'),
(189, '360° & Aerial Drone Videos', '360-aerial-drone-videos', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 08:09:51', '2025-03-08 08:09:51'),
(211, 'E-Learning', 'e-learning', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 08:21:25', '2025-03-08 08:21:25'),
(212, 'Online Courses & Tutorials', 'online-courses-tutorials', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 08:25:59', '2025-03-08 08:25:59'),
(213, 'E-Learning Content', 'e-learning-content', NULL, NULL, NULL, NULL, 61, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 08:26:27', '2025-03-08 08:26:27'),
(214, 'Minimalist Logo', 'minimalist-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:45:32', '2025-03-08 09:45:32'),
(215, 'Mascot Logo', 'mascot-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:54:03', '2025-03-08 09:54:03'),
(216, 'Vintage/Retro Logo', 'vintage-retro-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:54:32', '2025-03-08 09:54:32'),
(217, 'Lettermark & Wordmark Logo', 'lettermark-wordmark-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:55:04', '2025-03-08 09:55:04'),
(218, 'Abstract & Geometric Logo', 'abstract-geometric-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:55:29', '2025-03-08 09:55:29'),
(219, 'Hand-Drawn Logo', 'hand-drawn-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:55:56', '2025-03-08 09:55:56'),
(220, '3D Logo Design', '3d-logo-design', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:56:21', '2025-03-08 09:56:21'),
(221, 'Signature & Typography Logo', 'signature-typography-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:56:47', '2025-03-08 09:56:47'),
(222, 'Business & Corporate Logo', 'business-corporate-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:57:42', '2025-03-08 09:57:42'),
(223, 'Gaming & Esports Logo', 'gaming-esports-logo', NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:58:08', '2025-03-08 09:58:08'),
(224, 'Business Card Design', 'business-card-design', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:59:00', '2025-03-08 09:59:00'),
(225, 'Letterhead Design', 'letterhead-design', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:59:24', '2025-03-08 09:59:24'),
(226, 'Envelope Design', 'envelope-design', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 09:59:52', '2025-03-08 09:59:52'),
(227, 'Notepad & Memo Design', 'notepad-memo-design', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:00:28', '2025-03-08 10:00:28'),
(228, 'Presentation Folder Design', 'presentation-folder-design', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:00:56', '2025-03-08 10:00:56'),
(229, 'Invoice & Receipt Design', 'invoice-receipt-design', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:01:21', '2025-03-08 10:01:21'),
(230, 'ID Card & Badge Design', 'id-card-badge-design', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:01:56', '2025-03-08 10:01:56'),
(231, 'Thank You Cards', 'thank-you-cards', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:02:26', '2025-03-08 10:02:26'),
(232, 'Corporate Stationery Set', 'corporate-stationery-set', NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:02:48', '2025-03-08 10:02:48'),
(233, 'Digital Illustration', 'digital-illustration', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:04:01', '2025-03-08 10:04:01'),
(234, 'Hand-Drawn Illustrations', 'hand-drawn-illustrations', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:04:24', '2025-03-08 10:04:24'),
(235, 'Other Services', 'other-services', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 10:04:43', '2025-03-13 11:50:32'),
(250, 'Vector Illustrations', 'vector-illustrations', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:12:41', '2025-03-08 10:12:41'),
(273, 'Watercolor Illustrations', 'watercolor-illustrations', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:18:55', '2025-03-08 10:18:55'),
(274, 'Line Art & Sketches', 'line-art-sketches', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:19:33', '2025-03-08 10:19:33'),
(275, 'Concept Art', 'concept-art', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:20:07', '2025-03-08 10:20:07'),
(277, 'Fantasy & Sci-Fi Illustration', 'fantasy-sci-fi-illustration', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:21:05', '2025-03-08 10:21:05'),
(278, 'Portrait Illustration', 'portrait-illustration', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:23:58', '2025-03-08 10:23:58'),
(279, 'Technical Illustration', 'technical-illustration', NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:24:47', '2025-03-08 10:24:47'),
(280, 'Traditional Hand-Drawn Caricatures', 'traditional-hand-drawn-caricatures', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:33:54', '2025-03-08 10:33:54'),
(283, 'Digital Caricatures', 'digital-caricatures', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:36:32', '2025-03-08 10:36:32'),
(284, 'Comic Strip & Storyboard Design', 'comic-strip-storyboard-design', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:37:19', '2025-03-08 10:37:19'),
(285, 'Cartoon Logo & Mascots', 'cartoon-logo-mascots', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:38:09', '2025-03-08 10:38:09'),
(286, 'Political Cartoons', 'political-cartoons', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:38:58', '2025-03-08 10:38:58'),
(287, 'Avatar & Profile Caricatures', 'avatar-profile-caricatures', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:39:27', '2025-03-08 10:39:27'),
(288, 'Family & Pet Caricatures', 'family-pet-caricatures', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:40:12', '2025-03-08 10:40:12'),
(289, 'Anime & Manga Style', 'anime-manga-style', NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:41:04', '2025-03-08 10:41:04'),
(290, 'Single-Sided Flyers', 'single-sided-flyers', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:42:39', '2025-03-08 10:42:39'),
(291, 'Bi-Fold & Tri-Fold Brochures', 'bi-fold-tri-fold-brochures', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:43:14', '2025-03-08 10:43:14'),
(292, 'Corporate Brochures', 'corporate-brochures', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:43:42', '2025-03-08 10:43:42'),
(293, 'Event & Party Flyers', 'event-party-flyers', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:44:25', '2025-03-08 10:44:25'),
(294, 'Product & Service Brochures', 'product-service-brochures', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:44:52', '2025-03-08 10:44:52'),
(295, 'Travel & Tourism Flyers', 'travel-tourism-flyers', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:45:19', '2025-03-08 10:45:19'),
(296, 'Restaurant & Food Menus', 'restaurant-food-menus', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:46:00', '2025-03-08 10:46:00'),
(297, 'Real Estate Brochures', 'real-estate-brochures', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:46:26', '2025-03-08 10:46:26'),
(298, 'Fiction & Non-Fiction Book Covers', 'fiction-non-fiction-book-covers', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:48:32', '2025-03-08 10:48:32'),
(299, 'eBook Covers (Kindle, PDF, etc.)', 'ebook-covers-kindle-pdf-etc-', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:49:47', '2025-03-08 10:49:47'),
(300, 'Children’s Book Covers', 'children-s-book-covers', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:51:09', '2025-03-08 10:51:09'),
(301, 'Sci-Fi & Fantasy Covers', 'sci-fi-fantasy-covers', '', 'null', 'null', 'null', 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 10:51:49', '2025-03-08 10:52:26'),
(302, 'Business & Self-Help Covers', 'business-self-help-covers', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:53:10', '2025-03-08 10:53:10'),
(303, 'Illustrated Covers', 'illustrated-covers', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:54:31', '2025-03-08 10:54:31'),
(304, 'Horror & Thriller Covers', 'horror-thriller-covers', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:55:16', '2025-03-08 10:55:16'),
(305, 'Product Packaging', 'product-packaging', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:56:20', '2025-03-08 10:56:20'),
(306, 'Box & Bag Packaging', 'box-bag-packaging', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:56:49', '2025-03-08 10:56:49'),
(307, 'Bottle & Can Labels', 'bottle-can-labels', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:57:26', '2025-03-08 10:57:26'),
(308, 'Food & Beverage Packaging', 'food-beverage-packaging', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:58:23', '2025-03-08 10:58:23'),
(309, 'Cosmetics & Beauty Packaging', 'cosmetics-beauty-packaging', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 10:59:59', '2025-03-08 10:59:59'),
(310, 'Retail & Luxury Packaging', 'retail-luxury-packaging', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:01:00', '2025-03-08 11:01:00'),
(311, 'Eco-Friendly Packaging', 'eco-friendly-packaging', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:02:31', '2025-03-08 11:02:31'),
(312, 'Sticker & Decal Design', 'sticker-decal-design', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:03:12', '2025-03-08 11:03:12'),
(313, 'Mobile App UI/UX', 'mobile-app-ui-ux', '', 'null', 'null', 'null', 65, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:06:34', '2025-03-08 11:18:09'),
(314, 'Website UI/UX', 'website-ui-ux', '', 'null', 'null', 'null', 65, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:07:35', '2025-03-08 11:18:31'),
(315, 'SaaS Dashboard Design', 'saas-dashboard-design', '', 'null', 'null', 'null', 65, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:08:29', '2025-03-08 11:18:50'),
(316, 'Landing Page UI Design', 'landing-page-ui-design', '', 'null', 'null', 'null', 65, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:10:11', '2025-03-08 11:19:10'),
(317, 'E-commerce UI Design', 'e-commerce-ui-design', '', 'null', 'null', 'null', 65, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:11:04', '2025-03-08 11:19:28'),
(318, 'Game UI Design', 'game-ui-design', '', 'null', 'null', 'null', 65, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:12:03', '2025-03-08 11:19:46'),
(319, 'Wireframing & Prototyping', 'wireframing-prototyping', '', 'null', 'null', 'null', 65, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:12:45', '2025-03-08 11:20:05'),
(320, 'Dark & Light Theme UI', 'dark-light-theme-ui', '', 'null', 'null', 'null', 65, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:13:17', '2025-03-08 11:20:21'),
(321, 'Brand Style Guide', 'brand-style-guide', NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:16:26', '2025-03-08 11:16:26'),
(322, 'Logo Variations & Mockups', 'logo-variations-mockups', NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:25:47', '2025-03-08 11:25:47'),
(323, 'Business Branding Kits', 'business-branding-kits', NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:27:21', '2025-03-08 11:27:21'),
(324, 'Social Media Branding', 'social-media-branding', NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:28:05', '2025-03-08 11:28:05'),
(325, 'Color Palette & Typography', 'color-palette-typography', NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:28:52', '2025-03-08 11:28:52'),
(326, 'Corporate Identity Design', 'corporate-identity-design', NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:29:24', '2025-03-08 11:29:24'),
(327, 'Rebranding Services', 'rebranding-services', NULL, NULL, NULL, NULL, 66, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:30:01', '2025-03-08 11:30:01'),
(328, 'Instagram & Facebook Posts', 'instagram-facebook-posts', NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:33:47', '2025-03-08 11:33:47'),
(329, 'YouTube Thumbnails & Banners', 'youtube-thumbnails-banners', NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:35:17', '2025-03-08 11:35:17'),
(330, 'Twitter & LinkedIn Graphics', 'twitter-linkedin-graphics', NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:35:58', '2025-03-08 11:35:58'),
(331, 'TikTok & Reel Covers', 'tiktok-reel-covers', NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:37:59', '2025-03-08 11:37:59'),
(332, 'Pinterest & Blog Graphics', 'pinterest-blog-graphics', NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:38:39', '2025-03-08 11:38:39'),
(333, 'Social Media Advertisements', 'social-media-advertisements', NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:39:24', '2025-03-08 11:39:24'),
(334, 'Podcast Cover Art', 'podcast-cover-art', NULL, NULL, NULL, NULL, 67, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:40:01', '2025-03-08 11:40:01'),
(335, 'Corporate Marketing Materials', 'corporate-marketing-materials', NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:42:17', '2025-03-08 11:42:17'),
(336, 'Posters & Banners', 'posters-banners', NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:43:16', '2025-03-08 11:43:16'),
(337, 'Postcards & Invitation Cards', 'postcards-invitation-cards', NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:44:23', '2025-03-08 11:44:23'),
(338, 'Trade Show & Expo Materials', 'trade-show-expo-materials', NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:45:32', '2025-03-08 11:45:32'),
(339, 'Newspaper & Magazine Ads', 'newspaper-magazine-ads', NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:46:03', '2025-03-08 11:46:03'),
(340, 'Wedding & Event Invitations', 'wedding-event-invitations', NULL, NULL, NULL, NULL, 68, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:46:58', '2025-03-08 11:46:58'),
(341, 'Product 3D Modeling', 'product-3d-modeling', NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:48:10', '2025-03-08 11:48:10'),
(342, 'Architectural Visualization', 'architectural-visualization', NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:48:35', '2025-03-08 11:48:35'),
(343, 'Character 3D Modeling', 'character-3d-modeling', NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:49:07', '2025-03-08 11:49:07'),
(344, 'Interior & Exterior 3D Rendering', 'interior-exterior-3d-rendering', NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:49:33', '2025-03-08 11:49:33'),
(345, 'Industrial & Mechanical Modeling', 'industrial-mechanical-modeling', NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:50:01', '2025-03-08 11:50:01'),
(346, 'Game Asset 3D Modeling', 'game-asset-3d-modeling', NULL, NULL, NULL, NULL, 69, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:50:26', '2025-03-08 11:50:26'),
(347, 'Business Infographics', 'business-infographics', NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:51:23', '2025-03-08 11:51:23'),
(353, 'Timeline & Process Infographics', 'timeline-process-infographics', NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:52:31', '2025-03-08 11:52:31');
INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `commission`, `fixcommission`, `product_sell_qty`, `getAmount`, `sort_order`, `file`, `status`, `speacial_status`, `mobile_view_class`, `keyword`, `percentage_amt`, `created_at`, `updated_at`) VALUES
(354, 'Health & Medical Infographics', 'health-medical-infographics', NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:53:49', '2025-03-08 11:53:49'),
(355, 'Social Media Infographics', 'social-media-infographics', NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:54:18', '2025-03-08 11:54:18'),
(356, 'Educational & Training Infographics', 'educational-training-infographics', NULL, NULL, NULL, NULL, 70, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:54:46', '2025-03-08 11:54:46'),
(357, 'Corporate & Business Presentations', 'corporate-business-presentations', NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:55:56', '2025-03-08 11:55:56'),
(358, 'Pitch Deck Design', 'pitch-deck-design', NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:56:25', '2025-03-08 11:56:25'),
(359, 'Investor Presentations', 'investor-presentations', NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:56:48', '2025-03-08 11:56:48'),
(360, 'Training & Educational Presentations', 'training-educational-presentations', NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:57:12', '2025-03-08 11:57:12'),
(361, 'Webinar & Online Course Slides', 'webinar-online-course-slides', NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:57:38', '2025-03-08 11:57:38'),
(362, 'Animated Presentations', 'animated-presentations', NULL, NULL, NULL, NULL, 71, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:58:12', '2025-03-08 11:58:12'),
(363, '2D & 3D NFT Art', '2d-3d-nft-art', '', 'null', 'null', 'null', 72, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-08 11:59:12', '2025-03-08 18:48:09'),
(364, 'AI-Generated NFTs', 'ai-generated-nfts', NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 11:59:36', '2025-03-08 11:59:36'),
(365, 'Hand-Drawn NFT Collections', 'hand-drawn-nft-collections', NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:00:01', '2025-03-08 12:00:01'),
(366, 'Pixel Art NFTs', 'pixel-art-nfts', NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:00:24', '2025-03-08 12:00:24'),
(367, 'Animated NFT Designs', 'animated-nft-designs', NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:00:48', '2025-03-08 12:00:48'),
(368, 'Character & Avatar NFTs', 'character-avatar-nfts', NULL, NULL, NULL, NULL, 72, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:01:12', '2025-03-08 12:01:12'),
(369, 'MERN, MEAN, LAMP Stack Development', 'mern-mean-lamp-stack-development', NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:02:46', '2025-03-08 12:02:46'),
(370, 'Django, Ruby on Rails, .NET Full-Stack Solutions', 'django-ruby-on-rails-net-full-stack-solutions', NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:03:05', '2025-03-08 12:03:05'),
(371, 'Serverless & Cloud-Based Development (AWS, Firebase, Google Cloud)', 'serverless-cloud-based-development-aws-firebase-google-cloud-', NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:03:24', '2025-03-08 12:03:24'),
(372, 'JAMstack (JavaScript, APIs, Markup) Development', 'jamstack-javascript-apis-markup-development', NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:04:02', '2025-03-08 12:04:02'),
(373, 'Progressive Web Apps (PWA) Development', 'progressive-web-apps-pwa-development', NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:04:57', '2025-03-08 12:04:57'),
(374, 'Cross-Platform Web Application Development', 'cross-platform-web-application-development', NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:05:42', '2025-03-08 12:05:42'),
(375, 'Headless CMS & API-Based Development', 'headless-cms-api-based-development', NULL, NULL, NULL, NULL, 73, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:06:06', '2025-03-08 12:06:06'),
(376, 'HTML, CSS, JavaScript (React.js, Vue.js, Angular)', 'html-css-javascript-react-js-vue-js-angular-', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:08:00', '2025-03-08 12:08:00'),
(377, 'Tailwind CSS, Bootstrap, and Material UI Styling', 'tailwind-css-bootstrap-and-material-ui-styling', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:08:29', '2025-03-08 12:08:29'),
(378, 'Single Page Applications (SPA) & Static Site Development', 'single-page-applications-spa-static-site-development', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:09:12', '2025-03-08 12:09:12'),
(379, 'Frontend Performance & Speed Optimization', 'frontend-performance-speed-optimization', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:09:54', '2025-03-08 12:09:54'),
(380, 'UI/UX Enhancements for Web & Mobile', 'ui-ux-enhancements-for-web-mobile', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:10:36', '2025-03-08 12:10:36'),
(381, 'Accessibility & Responsive Design Implementation', 'accessibility-responsive-design-implementation', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:11:29', '2025-03-08 12:11:29'),
(382, 'Animations & Interactive Web Elements (GSAP, Framer Motion)', 'animations-interactive-web-elements-gsap-framer-motion-', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:11:50', '2025-03-08 12:11:50'),
(383, 'Node.js, Laravel, Django, Ruby on Rails, .NET Core', 'node-js-laravel-django-ruby-on-rails-net-core', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:13:00', '2025-03-08 12:13:00'),
(384, 'RESTful API & GraphQL Development', 'restful-api-graphql-development', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:13:30', '2025-03-08 12:13:30'),
(385, 'Microservices & Scalable Backend Architecture', 'microservices-scalable-backend-architecture', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:14:09', '2025-03-08 12:14:09'),
(386, 'Database Management (MySQL, PostgreSQL, MongoDB, Firebase)', 'database-management-mysql-postgresql-mongodb-firebase-', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:14:31', '2025-03-08 12:14:31'),
(387, 'Authentication & Authorization (JWT, OAuth, Firebase Auth)', 'authentication-authorization-jwt-oauth-firebase-auth-', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:14:51', '2025-03-08 12:14:51'),
(388, 'Serverless Backend Development (AWS Lambda, Firebase Functions)', 'serverless-backend-development-aws-lambda-firebase-functions-', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:15:13', '2025-03-08 12:15:13'),
(389, 'Caching & Performance Optimization (Redis, Memcached)', 'caching-performance-optimization-redis-memcached-', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:15:43', '2025-03-08 12:15:43'),
(390, 'Shopify, WooCommerce, Magento, OpenCart, PrestaShop Development', 'shopify-woocommerce-magento-opencart-prestashop-development', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:17:33', '2025-03-08 12:17:33'),
(391, 'Multi-Vendor Marketplace & Custom Store Setup', 'multi-vendor-marketplace-custom-store-setup', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:18:08', '2025-03-08 12:18:08'),
(392, 'Dropshipping & Subscription-Based Store Development', 'dropshipping-subscription-based-store-development', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:20:20', '2025-03-08 12:20:20'),
(393, 'Headless E-Commerce & API Integration', 'headless-e-commerce-api-integration', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:21:18', '2025-03-08 12:21:18'),
(394, 'Payment Gateway Integration (Stripe, PayPal, Razorpay, Crypto)', 'payment-gateway-integration-stripe-paypal-razorpay-crypto-', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:21:39', '2025-03-08 12:21:39'),
(395, 'Custom Product Pages & Checkout Optimization', 'custom-product-pages-checkout-optimization', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:22:04', '2025-03-08 12:22:04'),
(396, 'Conversion Rate Optimization (CRO) for E-Commerce', 'conversion-rate-optimization-cro-for-e-commerce', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:22:27', '2025-03-08 12:22:27'),
(397, 'Custom WordPress Theme & Plugin Development', 'custom-wordpress-theme-plugin-development', NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:23:31', '2025-03-08 12:23:31'),
(398, 'WooCommerce Store Customization', 'woocommerce-store-customization', NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:24:58', '2025-03-08 12:24:58'),
(399, 'Speed Optimization & Security Enhancement', 'speed-optimization-security-enhancement', NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:25:22', '2025-03-08 12:25:22'),
(400, 'WordPress Multisite Setup & Migration', 'wordpress-multisite-setup-migration', NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:26:23', '2025-03-08 12:26:23'),
(401, 'SEO Optimization & Schema Markup Implementation', 'seo-optimization-schema-markup-implementation', NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:26:50', '2025-03-08 12:26:50'),
(402, 'WordPress API & Headless CMS Integration', 'wordpress-api-headless-cms-integration', NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:27:14', '2025-03-08 12:27:14'),
(403, 'Elementor, Divi, and Gutenberg Customization', 'elementor-divi-and-gutenberg-customization', NULL, NULL, NULL, NULL, 96, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:27:37', '2025-03-08 12:27:37'),
(404, 'Shopify Store Setup & Theme Customization', 'shopify-store-setup-theme-customization', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:40:02', '2025-03-08 12:40:02'),
(405, 'Shopify App Development (Public & Private Apps)', 'shopify-app-development-public-private-apps-', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:40:22', '2025-03-08 12:40:22'),
(406, 'Shopify API & Third-Party Integrations', 'shopify-api-third-party-integrations', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:40:48', '2025-03-08 12:40:48'),
(407, 'Shopify Payment Gateway & POS Integration', 'shopify-payment-gateway-pos-integration', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:41:17', '2025-03-08 12:41:17'),
(408, 'Shopify Plus Customization & Optimization', 'shopify-plus-customization-optimization', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:41:48', '2025-03-08 12:41:48'),
(409, 'Custom Checkout & Cart Abandonment Solutions', 'custom-checkout-cart-abandonment-solutions', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:42:17', '2025-03-08 12:42:17'),
(410, 'Shopify Speed Optimization & SEO', 'shopify-speed-optimization-seo', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:42:50', '2025-03-08 12:42:50'),
(411, 'Laravel, Django, Node.js, and PHP-Based CMS', 'laravel-django-node-js-and-php-based-cms', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 12:49:07', '2025-03-08 12:49:07'),
(412, 'Sales Page & Funnel Copy', 'sales-page-funnel-copy', NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 13:59:11', '2025-03-08 13:59:11'),
(413, 'Headless CMS Solutions (Strapi, Contentful, Sanity)', 'headless-cms-solutions-strapi-contentful-sanity-', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 13:59:36', '2025-03-08 13:59:36'),
(414, 'Custom Admin Panel & Dashboard Development', 'custom-admin-panel-dashboard-development', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:00:13', '2025-03-08 14:00:13'),
(415, 'API-Based CMS Solutions & Integrations', 'api-based-cms-solutions-integrations', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:00:51', '2025-03-08 14:00:51'),
(416, 'Content Moderation & Management Systems', 'content-moderation-management-systems', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:01:19', '2025-03-08 14:01:19'),
(417, 'Multi-User Role & Access Control Development', 'multi-user-role-access-control-development', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:01:46', '2025-03-08 14:01:46'),
(418, 'Secure & Scalable CMS Architecture', 'secure-scalable-cms-architecture', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:02:11', '2025-03-08 14:02:11'),
(419, 'Email Sequences & Drip Campaigns', 'email-sequences-drip-campaigns', NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:02:52', '2025-03-08 14:02:52'),
(420, 'Direct Response Copywriting', 'direct-response-copywriting', NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:03:22', '2025-03-08 14:03:22'),
(421, 'Ad Copywriting (Google, Facebook, Instagram)', 'ad-copywriting-google-facebook-instagram-', NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:03:57', '2025-03-08 14:03:57'),
(422, 'Video Sales Letter (VSL) Scripts', 'video-sales-letter-vsl-scripts', NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:04:31', '2025-03-08 14:04:31'),
(423, 'Cold Email & Outreach Copy', 'cold-email-outreach-copy', NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:05:12', '2025-03-08 14:05:12'),
(425, 'Speed Optimization & Security Enhancements', 'speed-optimization-security-enhancements', NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:06:47', '2025-03-08 14:06:47'),
(426, 'Brand Messaging & Tagline Creation', 'brand-messaging-tagline-creation', NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:09:04', '2025-03-08 14:09:04'),
(427, 'Bug Fixing & Debugging for Performance Issues', 'bug-fixing-debugging-for-performance-issues', NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:21:00', '2025-03-08 14:21:00'),
(428, 'Hosting, Backup, & Server Management', 'hosting-backup-server-management', NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:21:24', '2025-03-08 14:21:24'),
(429, 'CMS & Plugin Updates & Compatibility Fixes', 'cms-plugin-updates-compatibility-fixes', NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:21:44', '2025-03-08 14:21:44'),
(430, 'Malware Removal & Website Recovery', 'malware-removal-website-recovery', NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:22:05', '2025-03-08 14:22:05'),
(431, 'Mobile Responsiveness & Browser Compatibility Fixes', 'mobile-responsiveness-browser-compatibility-fixes', NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:22:30', '2025-03-08 14:22:30'),
(432, 'SEO Improvements & Broken Link Fixing', 'seo-improvements-broken-link-fixing', NULL, NULL, NULL, NULL, 74, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:23:02', '2025-03-08 14:23:02'),
(433, 'Educational & Training Videos', 'educational-training-videos', NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:23:09', '2025-03-08 14:23:09'),
(434, 'Custom Web Applications (SaaS, Enterprise Solutions)', 'custom-web-applications-saas-enterprise-solutions-', NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:24:04', '2025-03-08 14:24:04'),
(435, 'Business & Corporate Explainer Videos', 'business-corporate-explainer-videos', NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:24:13', '2025-03-08 14:24:13'),
(436, 'Real-Time Web Apps (Chat, Streaming, Collaborative Tools)', 'real-time-web-apps-chat-streaming-collaborative-tools-', NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:24:24', '2025-03-08 14:24:24'),
(437, 'Hand-Drawn & Digital Whiteboard Animations', 'hand-drawn-digital-whiteboard-animations', NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:24:34', '2025-03-08 14:24:34'),
(438, 'AI & Machine Learning-Based Web Apps', 'ai-machine-learning-based-web-apps', NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:24:43', '2025-03-08 14:24:43'),
(439, 'Storyboard & Script Development', 'storyboard-script-development', NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:24:56', '2025-03-08 14:24:56'),
(440, 'Business Process Automation Web Apps', 'business-process-automation-web-apps', NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:25:08', '2025-03-08 14:25:08'),
(441, 'Character & Scene Design', 'character-scene-design', NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:25:17', '2025-03-08 14:25:17'),
(442, 'Admin Dashboards & Reporting Portals', 'admin-dashboards-reporting-portals', NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:25:26', '2025-03-08 14:25:26'),
(443, 'Voiceover & Background Music Integration', 'voiceover-background-music-integration', NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:25:34', '2025-03-08 14:25:34'),
(444, 'Multi-Language Whiteboard Animations', 'multi-language-whiteboard-animations', NULL, NULL, NULL, NULL, 43, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:25:48', '2025-03-08 14:25:48'),
(445, 'Progressive Web Apps (PWA) for Mobile & Desktop', 'progressive-web-apps-pwa-for-mobile-desktop', NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:25:49', '2025-03-08 14:25:49'),
(446, 'API-Driven & Headless Web Applications', 'api-driven-headless-web-applications', NULL, NULL, NULL, NULL, 75, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:26:10', '2025-03-08 14:26:10'),
(447, 'High-Converting Sales & Lead Generation Pages', 'high-converting-sales-lead-generation-pages', NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:26:46', '2025-03-08 14:26:46'),
(448, 'Business Idea Validation', 'business-idea-validation', NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:28:13', '2025-03-08 14:28:13'),
(450, 'MVP (Minimum Viable Product) Development', 'mvp-minimum-viable-product-development', NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:28:43', '2025-03-08 14:28:43'),
(451, 'Business Model & Revenue Strategy', 'business-model-revenue-strategy', NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:30:24', '2025-03-08 14:30:24'),
(452, 'Pitch Deck & Fundraising Strategy', 'pitch-deck-fundraising-strategy', NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:34:16', '2025-03-08 14:34:16'),
(453, 'Go-to-Market Strategy', 'go-to-market-strategy', NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:34:58', '2025-03-08 14:34:58'),
(454, 'Webinar & Event Registration Pages', 'webinar-event-registration-pages', NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:36:59', '2025-03-08 14:36:59'),
(455, 'E-Commerce Product & Promo Pages', 'e-commerce-product-promo-pages', NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:37:22', '2025-03-08 14:37:22'),
(456, 'Custom HTML, CSS, and React-Based Landing Pages', 'custom-html-css-and-react-based-landing-pages', NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:38:04', '2025-03-08 14:38:04'),
(457, 'A/B Testing & Conversion Optimization Landing Pages', 'a-b-testing-conversion-optimization-landing-pages', NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:38:23', '2025-03-08 14:38:23'),
(458, 'Mobile-Optimized & Fast-Loading Pages', 'mobile-optimized-fast-loading-pages', NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:38:44', '2025-03-08 14:38:44'),
(459, 'ClickFunnels & Other Landing Page Builders Customization', 'clickfunnels-other-landing-page-builders-customization', NULL, NULL, NULL, NULL, 76, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:39:04', '2025-03-08 14:39:04'),
(460, 'Third-Party API Integration (Google Maps, Stripe, PayPal, Twilio)', 'third-party-api-integration-google-maps-stripe-paypal-twilio-', NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:42:52', '2025-03-08 14:42:52'),
(461, 'RESTful & GraphQL API Development', 'restful-graphql-api-development', NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:43:18', '2025-03-08 14:43:18'),
(462, 'Payment Gateway API Integration (PayPal, Stripe, Crypto)', 'payment-gateway-api-integration-paypal-stripe-crypto-', NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:43:44', '2025-03-08 14:43:44'),
(464, 'Social Media API Integration (Facebook, Instagram, Twitter, TikTok)', 'social-media-api-integration-facebook-instagram-twitter-tiktok-', NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:44:36', '2025-03-08 14:44:36'),
(465, 'Cloud & Storage API Integration (AWS S3, Firebase, Google Drive)', 'cloud-storage-api-integration-aws-s3-firebase-google-drive-', NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:45:00', '2025-03-08 14:45:00'),
(466, 'Custom API Development for Web & Mobile Apps', 'custom-api-development-for-web-mobile-apps', NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:46:14', '2025-03-08 14:46:14'),
(467, 'Secure API Authentication (OAuth, JWT, API Keys)', 'secure-api-authentication-oauth-jwt-api-keys-', NULL, NULL, NULL, NULL, 77, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:46:53', '2025-03-08 14:46:53'),
(468, 'Native iOS Development (Swift, Objective-C)', 'native-ios-development-swift-objective-c-', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:51:51', '2025-03-08 14:51:51'),
(469, 'iPhone & iPad App Development', 'iphone-ipad-app-development', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:52:19', '2025-03-08 14:52:19'),
(470, 'Apple Watch & tvOS App Development', 'apple-watch-tvos-app-development', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:52:41', '2025-03-08 14:52:41'),
(471, 'Product-Market Fit Analysis', 'product-market-fit-analysis', NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:52:57', '2025-03-08 14:52:57'),
(472, 'App Store Optimization (ASO)', 'app-store-optimization-aso-', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:53:02', '2025-03-08 14:53:02'),
(473, 'Growth & Scaling Strategy', 'growth-scaling-strategy', NULL, NULL, NULL, NULL, 84, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:53:29', '2025-03-08 14:53:29'),
(474, 'iOS App UI/UX Design', 'ios-app-ui-ux-design', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:53:30', '2025-03-08 14:53:30'),
(475, 'In-App Purchases & Subscription Integration', 'in-app-purchases-subscription-integration', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:54:15', '2025-03-08 14:54:15'),
(476, 'Narration & Storytelling Voice Overs', 'narration-storytelling-voice-overs', NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:54:30', '2025-03-08 14:54:30'),
(477, 'iOS App Security & Performance Optimization', 'ios-app-security-performance-optimization', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:54:38', '2025-03-08 14:54:38'),
(478, 'Audiobook Editing & Mastering', 'audiobook-editing-mastering', NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:55:11', '2025-03-08 14:55:11'),
(479, 'ACX & Audible-Ready Formatting', 'acx-audible-ready-formatting', NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:55:47', '2025-03-08 14:55:47'),
(480, 'Native Android Development (Kotlin, Java)', 'native-android-development-kotlin-java-', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:55:55', '2025-03-08 14:55:55'),
(481, 'Android Tablet & Wear OS App Development', 'android-tablet-wear-os-app-development', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:56:32', '2025-03-08 14:56:32'),
(482, 'Sound Effects & Background Ambience', 'sound-effects-background-ambience', NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:56:43', '2025-03-08 14:56:43'),
(485, 'Google Play Store Optimization (ASO)', 'google-play-store-optimization-aso-', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:56:58', '2025-03-08 14:56:58'),
(487, 'Android App UI/UX Design', 'android-app-ui-ux-design', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:57:24', '2025-03-08 14:57:24'),
(490, 'Firebase Integration (Auth, Firestore, Push Notifications)', 'firebase-integration-auth-firestore-push-notifications-', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:57:50', '2025-03-08 14:57:50'),
(491, 'In-App Purchases & Google Pay Integration', 'in-app-purchases-google-pay-integration', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:58:16', '2025-03-08 14:58:16'),
(493, 'Performance Optimization & Security', 'performance-optimization-security', NULL, NULL, NULL, NULL, 25, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:59:27', '2025-03-08 14:59:27'),
(494, 'Manuscript Adaptation for Audio', 'manuscript-adaptation-for-audio', NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 14:59:40', '2025-03-08 14:59:40'),
(495, 'Royalty-Free Background Music Integration', 'royalty-free-background-music-integration', NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:00:41', '2025-03-08 15:00:41'),
(498, 'Flutter Mobile App Development', 'flutter-mobile-app-development', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:01:07', '2025-03-08 15:01:07'),
(499, 'React Native Cross-Platform Apps', 'react-native-cross-platform-apps', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:01:38', '2025-03-08 15:01:38'),
(500, 'Hybrid App Performance Optimization', 'hybrid-app-performance-optimization', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:02:11', '2025-03-08 15:02:11'),
(501, 'Native Module Integration for Hybrid Apps', 'native-module-integration-for-hybrid-apps', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:03:43', '2025-03-08 15:03:43'),
(502, 'UI/UX Design for Hybrid Apps', 'ui-ux-design-for-hybrid-apps', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:04:11', '2025-03-08 15:04:11'),
(503, 'App Deployment on Play Store & App Store', 'app-deployment-on-play-store-app-store', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:04:38', '2025-03-08 15:04:38'),
(504, 'API & Third-Party Service Integration', 'api-third-party-service-integration', NULL, NULL, NULL, NULL, 26, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:05:02', '2025-03-08 15:05:02'),
(505, '2D & 3D Mobile Game Development', '2d-3d-mobile-game-development', NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:05:41', '2025-03-08 15:05:41'),
(506, 'Unity & Unreal Engine Game Development', 'unity-unreal-engine-game-development', NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:06:28', '2025-03-08 15:06:28'),
(507, 'Casual, Hyper-Casual & Arcade Game Development', 'casual-hyper-casual-arcade-game-development', NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:06:53', '2025-03-08 15:06:53'),
(508, 'AR/VR-Based Game Development', 'ar-vr-based-game-development', NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:07:35', '2025-03-08 15:07:35'),
(509, 'Blockchain & NFT Games Development', 'blockchain-nft-games-development', NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:08:06', '2025-03-08 15:08:06'),
(510, 'Multiplayer & Online Gaming Apps', 'multiplayer-online-gaming-apps', NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:08:52', '2025-03-08 15:08:52'),
(511, 'Game UI/UX Design & Animation', 'game-ui-ux-design-animation', NULL, NULL, NULL, NULL, 97, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:09:15', '2025-03-08 15:09:15'),
(512, 'Augmented Reality (AR) Apps (ARKit, ARCore)', 'augmented-reality-ar-apps-arkit-arcore-', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:10:24', '2025-03-08 15:10:24'),
(513, 'Virtual Reality (VR) App Development (Oculus, HTC Vive)', 'virtual-reality-vr-app-development-oculus-htc-vive-', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:11:06', '2025-03-08 15:11:06'),
(514, 'Mixed Reality (MR) Solutions', 'mixed-reality-mr-solutions', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:11:39', '2025-03-08 15:11:39'),
(515, '3D Object & Motion Tracking Apps', '3d-object-motion-tracking-apps', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:12:12', '2025-03-08 15:12:12'),
(516, 'AR/VR Game & Entertainment Apps', 'ar-vr-game-entertainment-apps', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:12:36', '2025-03-08 15:12:36'),
(517, 'AR-Based E-Commerce & Retail Apps', 'ar-based-e-commerce-retail-apps', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:13:13', '2025-03-08 15:13:13'),
(519, 'Healthcare & Training Apps Using AR/VR', 'healthcare-training-apps-using-ar-vr', NULL, NULL, NULL, NULL, 27, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:13:44', '2025-03-08 15:13:44'),
(520, 'AI Chatbot & Virtual Assistant Apps', 'ai-chatbot-virtual-assistant-apps', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:15:05', '2025-03-08 15:15:05'),
(521, 'Image & Speech Recognition Apps', 'image-speech-recognition-apps', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:15:37', '2025-03-08 15:15:37'),
(522, 'AI-Powered Predictive Analytics Apps', 'ai-powered-predictive-analytics-apps', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:16:01', '2025-03-08 15:16:01'),
(523, 'Machine Learning-Based Mobile Apps', 'machine-learning-based-mobile-apps', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:16:25', '2025-03-08 15:16:25'),
(524, 'AI-Powered Personalization & Recommendation Apps', 'ai-powered-personalization-recommendation-apps', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:16:50', '2025-03-08 15:16:50'),
(525, 'AI-Based Automation Apps for Businesses', 'ai-based-automation-apps-for-businesses', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:17:13', '2025-03-08 15:17:13'),
(526, 'Computer Vision & Face Detection Apps', 'computer-vision-face-detection-apps', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:17:38', '2025-03-08 15:17:38'),
(527, 'Wireframing & Prototyping (Figma, Adobe XD, Sketch)', 'wireframing-prototyping-figma-adobe-xd-sketch-', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:19:09', '2025-03-08 15:19:09'),
(528, 'User Research & Mobile App UI/UX Optimization', 'user-research-mobile-app-ui-ux-optimization', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:19:33', '2025-03-08 15:19:33'),
(529, 'Interactive App Prototyping & Testing', 'interactive-app-prototyping-testing', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:19:58', '2025-03-08 15:19:58'),
(530, 'Mobile App Branding & Icon Design', 'mobile-app-branding-icon-design', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:20:16', '2025-03-08 15:20:16'),
(531, 'Custom Animations & Microinteractions', 'custom-animations-microinteractions', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:20:59', '2025-03-08 15:20:59'),
(532, 'Dark Mode & Accessibility UI Design', 'dark-mode-accessibility-ui-design', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:21:24', '2025-03-08 15:21:24'),
(533, 'Conversion-Optimized Mobile UI Design', 'conversion-optimized-mobile-ui-design', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:21:49', '2025-03-08 15:21:49'),
(534, 'Performance Optimization & Speed Improvement', 'performance-optimization-speed-improvement', NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:23:13', '2025-03-08 15:23:13'),
(535, 'Bug Fixing & Crash Handling', 'bug-fixing-crash-handling', NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:23:45', '2025-03-08 15:23:45'),
(537, 'Compatibility Updates for New OS Versions', 'compatibility-updates-for-new-os-versions', NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:24:13', '2025-03-08 15:24:13'),
(538, 'App Security Updates & Malware Removal', 'app-security-updates-malware-removal', NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:24:45', '2025-03-08 15:24:45'),
(539, 'UI/UX Improvements & Feature Enhancements', 'ui-ux-improvements-feature-enhancements', NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:25:22', '2025-03-08 15:25:22'),
(540, 'App Data Backup & Recovery Services', 'app-data-backup-recovery-services', NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:26:20', '2025-03-08 15:26:20'),
(541, 'App Store & Play Store Policy Compliance', 'app-store-play-store-policy-compliance', NULL, NULL, NULL, NULL, 78, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:26:45', '2025-03-08 15:26:45'),
(542, 'Crypto Wallet App Development (BTC, ETH, USDT, UIC)', 'crypto-wallet-app-development-btc-eth-usdt-uic-', NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:28:20', '2025-03-08 15:28:20'),
(543, 'NFT Marketplace & Trading Apps', 'nft-marketplace-trading-apps', NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:28:58', '2025-03-08 15:28:58'),
(544, 'Smart Contract-Based Decentralized Apps (DApps)', 'smart-contract-based-decentralized-apps-dapps-', NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:29:21', '2025-03-08 15:29:21'),
(545, 'Blockchain-Powered Fintech & Payment Apps', 'blockchain-powered-fintech-payment-apps', NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:29:45', '2025-03-08 15:29:45'),
(547, 'Appointment Scheduling & Reminders', 'appointment-scheduling-reminders', NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:30:25', '2025-03-08 15:30:25'),
(549, 'Web3 & Metaverse App Development', 'web3-metaverse-app-development', NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:30:41', '2025-03-08 15:30:41'),
(550, 'Secure Crypto Exchange & Staking Apps', 'secure-crypto-exchange-staking-apps', NULL, NULL, NULL, NULL, 79, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:31:13', '2025-03-08 15:31:13'),
(556, 'Smart Home & IoT Device Control Apps', 'smart-home-iot-device-control-apps', NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:37:27', '2025-03-08 15:37:27'),
(557, 'Inbox Organization & Email Filtering', 'inbox-organization-email-filtering', NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:38:20', '2025-03-08 15:38:20'),
(558, 'Responding to Emails on Behalf of Clients', 'responding-to-emails-on-behalf-of-clients', NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:38:46', '2025-03-08 15:38:46'),
(559, 'Meeting Coordination & Follow-Ups', 'meeting-coordination-follow-ups', NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:39:17', '2025-03-08 15:39:17'),
(560, 'Wearable & Smartwatch App Development', 'wearable-smartwatch-app-development', NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:39:20', '2025-03-08 15:39:20'),
(561, 'Drafting & Proofreading Emails', 'drafting-proofreading-emails', NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:39:51', '2025-03-08 15:39:51'),
(562, 'Travel & Event Scheduling', 'travel-event-scheduling', NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:40:16', '2025-03-08 15:40:16'),
(563, 'Task Prioritization & Productivity Management', 'task-prioritization-productivity-management', NULL, NULL, NULL, NULL, 109, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:40:58', '2025-03-08 15:40:58'),
(564, 'Industrial IoT (IIoT) Applications', 'industrial-iot-iiot-applications', NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:41:33', '2025-03-08 15:41:33'),
(565, 'Healthcare & Fitness IoT Solutions', 'healthcare-fitness-iot-solutions', NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:42:22', '2025-03-08 15:42:22'),
(566, 'Real-Time IoT Data Monitoring Apps', 'real-time-iot-data-monitoring-apps', NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:42:43', '2025-03-08 15:42:43'),
(567, 'Connected Car & Automotive IoT Apps', 'connected-car-automotive-iot-apps', NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:43:08', '2025-03-08 15:43:08'),
(568, 'Database Creation & Setup', 'database-creation-setup', NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:43:09', '2025-03-08 15:43:09'),
(569, 'IoT Security & Cloud Integration', 'iot-security-cloud-integration', NULL, NULL, NULL, NULL, 80, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:43:30', '2025-03-08 15:43:30'),
(570, 'SQL & NoSQL Database Management', 'sql-nosql-database-management', NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:43:34', '2025-03-08 15:43:34'),
(571, 'Cloud Database Solutions (AWS, Firebase, Google Cloud)', 'cloud-database-solutions-aws-firebase-google-cloud-', NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:43:58', '2025-03-08 15:43:58'),
(572, 'Data Migration & Integration', 'data-migration-integration', NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:44:21', '2025-03-08 15:44:21'),
(573, 'On-Page SEO (Meta Tags, Keyword Optimization, Internal Linking)', 'on-page-seo-meta-tags-keyword-optimization-internal-linking-', NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:44:25', '2025-03-08 15:44:25'),
(574, 'Backup & Disaster Recovery Planning', 'backup-disaster-recovery-planning', NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:44:42', '2025-03-08 15:44:42'),
(575, 'Off-Page SEO (Backlink Building, Guest Posting, Outreach)', 'off-page-seo-backlink-building-guest-posting-outreach-', NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:44:55', '2025-03-08 15:44:55'),
(576, 'Performance Optimization & Indexing', 'performance-optimization-indexing', NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:45:04', '2025-03-08 15:45:04'),
(577, 'Technical SEO (Website Speed, Schema Markup, Mobile Optimization)', 'technical-seo-website-speed-schema-markup-mobile-optimization-', NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:45:16', '2025-03-08 15:45:16'),
(578, 'Custom Database Development', 'custom-database-development', NULL, NULL, NULL, NULL, 118, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:45:24', '2025-03-08 15:45:24'),
(579, 'Local SEO (Google My Business, Citation Building, Local Listings)', 'local-seo-google-my-business-citation-building-local-listings-', NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:45:40', '2025-03-08 15:45:40'),
(580, 'Network Vulnerability Assessment', 'network-vulnerability-assessment', NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:45:57', '2025-03-08 15:45:57'),
(581, 'E-Commerce SEO (Product Page Optimization, Amazon SEO)', 'e-commerce-seo-product-page-optimization-amazon-seo-', NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:46:07', '2025-03-08 15:46:07'),
(582, 'Secure VPN Setup & Configuration', 'secure-vpn-setup-configuration', NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:46:24', '2025-03-08 15:46:24'),
(583, 'SEO Audits & Competitor Analysis', 'seo-audits-competitor-analysis', NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:46:37', '2025-03-08 15:46:37'),
(584, 'Firewall Implementation & Configuration', 'firewall-implementation-configuration', NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:46:50', '2025-03-08 15:46:50'),
(585, 'Multilingual & International SEO', 'multilingual-international-seo', NULL, NULL, NULL, NULL, 49, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:47:00', '2025-03-08 15:47:00'),
(586, 'Wireless Network Security Auditing', 'wireless-network-security-auditing', NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:47:26', '2025-03-08 15:47:26'),
(587, 'Intrusion Detection & Prevention Systems (IDS/IPS)', 'intrusion-detection-prevention-systems-ids-ips-', NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:47:55', '2025-03-08 15:47:55'),
(588, 'Secure Remote Access Solutions', 'secure-remote-access-solutions', NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:48:29', '2025-03-08 15:48:29'),
(589, 'Google Ads Campaign Setup & Management', 'google-ads-campaign-setup-management', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:48:33', '2025-03-08 15:48:33'),
(590, 'Zero Trust Security Model Implementation', 'zero-trust-security-model-implementation', NULL, NULL, NULL, NULL, 125, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:48:51', '2025-03-08 15:48:51'),
(591, 'Facebook & Instagram Ads (Meta Ads)', 'facebook-instagram-ads-meta-ads-', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:48:54', '2025-03-08 15:48:54'),
(592, 'YouTube Video Ads & Display Ads', 'youtube-video-ads-display-ads', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:49:21', '2025-03-08 15:49:21'),
(593, 'TikTok & Snapchat Ads', 'tiktok-snapchat-ads', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:49:45', '2025-03-08 15:49:45'),
(594, 'LinkedIn & Twitter Ads Management', 'linkedin-twitter-ads-management', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:50:08', '2025-03-08 15:50:08'),
(595, 'Remarketing & Retargeting Campaigns', 'remarketing-retargeting-campaigns', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:50:30', '2025-03-08 15:50:30'),
(596, 'Custom Stock Photo Creation', 'custom-stock-photo-creation', NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:50:51', '2025-03-08 15:50:51'),
(597, 'PPC Conversion Tracking & Analytics', 'ppc-conversion-tracking-analytics', NULL, NULL, NULL, NULL, 50, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:50:52', '2025-03-08 15:50:52'),
(598, 'Social Media Strategy & Planning', 'social-media-strategy-planning', NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:52:13', '2025-03-08 15:52:13');
INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `commission`, `fixcommission`, `product_sell_qty`, `getAmount`, `sort_order`, `file`, `status`, `speacial_status`, `mobile_view_class`, `keyword`, `percentage_amt`, `created_at`, `updated_at`) VALUES
(599, 'Royalty-Free Image Licensing', 'royalty-free-image-licensing', NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:52:26', '2025-03-08 15:52:26'),
(600, 'Facebook, Instagram, LinkedIn, Twitter Marketing', 'facebook-instagram-linkedin-twitter-marketing', NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:52:29', '2025-03-08 15:52:29'),
(601, 'TikTok & Snapchat Marketing', 'tiktok-snapchat-marketing', NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:52:51', '2025-03-08 15:52:51'),
(602, 'Social Media Account Growth & Engagement', 'social-media-account-growth-engagement', NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:53:13', '2025-03-08 15:53:13'),
(603, 'Community Management & Social Listening', 'community-management-social-listening', NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:53:34', '2025-03-08 15:53:34'),
(604, 'Nature & Landscape Stock Photography', 'nature-landscape-stock-photography', NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:54:08', '2025-03-08 15:54:08'),
(605, 'Hashtag Research & Trend Analysis', 'hashtag-research-trend-analysis', NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:54:28', '2025-03-08 15:54:28'),
(606, 'Content Creation for Social Media (Graphics, Videos, Reels)', 'content-creation-for-social-media-graphics-videos-reels-', NULL, NULL, NULL, NULL, 51, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:54:48', '2025-03-08 15:54:48'),
(607, 'Business & Corporate Stock Photos', 'business-corporate-stock-photos', NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:55:10', '2025-03-08 15:55:10'),
(608, 'AI-Generated Stock Photography', 'ai-generated-stock-photography', NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:55:42', '2025-03-08 15:55:42'),
(609, 'Email List Building & Lead Generation', 'email-list-building-lead-generation', NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:56:00', '2025-03-08 15:56:00'),
(610, 'Email Campaign Setup & Automation (Mailchimp, Klaviyo, ActiveCampaign)', 'email-campaign-setup-automation-mailchimp-klaviyo-activecampaign-', NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:56:44', '2025-03-08 15:56:44'),
(611, 'Newsletter & Drip Campaigns', 'newsletter-drip-campaigns', NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:57:10', '2025-03-08 15:57:10'),
(612, 'Cold Email Outreach & B2B Lead Generation', 'cold-email-outreach-b2b-lead-generation', NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:57:47', '2025-03-08 15:57:47'),
(613, 'Email Copywriting & A/B Testing', 'email-copywriting-a-b-testing', NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:58:07', '2025-03-08 15:58:07'),
(614, 'Transactional Email Setup & Optimization', 'transactional-email-setup-optimization', NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:58:31', '2025-03-08 15:58:31'),
(615, 'Email Deliverability & Spam Protection', 'email-deliverability-spam-protection', NULL, NULL, NULL, NULL, 52, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 15:59:01', '2025-03-08 15:59:01'),
(616, 'Blog Writing & Article Marketing', 'blog-writing-article-marketing', NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:00:17', '2025-03-08 16:00:17'),
(617, 'SEO-Optimized Content Creation', 'seo-optimized-content-creation', NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:00:39', '2025-03-08 16:00:39'),
(618, 'Abstract & Conceptual Stock Images', 'abstract-conceptual-stock-images', NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:01:01', '2025-03-08 16:01:01'),
(619, 'Video Content Marketing (YouTube, Reels, Shorts)', 'video-content-marketing-youtube-reels-shorts-', NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:01:35', '2025-03-08 16:01:35'),
(620, 'Podcast Content Marketing & Distribution', 'podcast-content-marketing-distribution', NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:02:14', '2025-03-08 16:02:14'),
(621, 'Infographic & Visual Content Marketing', 'infographic-visual-content-marketing', NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:02:41', '2025-03-08 16:02:41'),
(622, 'Press Release Writing & Distribution', 'press-release-writing-distribution', NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:03:06', '2025-03-08 16:03:06'),
(623, 'HD & 4K Stock Video Footage', 'hd-4k-stock-video-footage', NULL, NULL, NULL, NULL, 133, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:03:29', '2025-03-08 16:03:29'),
(624, 'Whitepapers & Case Study Creation', 'whitepapers-case-study-creation', NULL, NULL, NULL, NULL, 53, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:03:31', '2025-03-08 16:03:31'),
(625, 'Affiliate Program Setup & Strategy', 'affiliate-program-setup-strategy', NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:05:07', '2025-03-08 16:05:07'),
(626, 'Affiliate Network Management (Amazon Associates, ClickBank, CJ, Rakuten)', 'affiliate-network-management-amazon-associates-clickbank-cj-rakuten-', NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:05:38', '2025-03-08 16:05:38'),
(627, 'Influencer & Blogger Affiliate Partnerships', 'influencer-blogger-affiliate-partnerships', NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:06:02', '2025-03-08 16:06:02'),
(628, 'Performance Tracking & Analytics', 'performance-tracking-analytics', NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:06:24', '2025-03-08 16:06:24'),
(629, 'Private & Public Blockchain Development', 'private-public-blockchain-development', NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:06:29', '2025-03-08 16:06:29'),
(630, 'Commission & Payout Management', 'commission-payout-management', NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:06:49', '2025-03-08 16:06:49'),
(631, 'Landing Page & Sales Funnel Optimization', 'landing-page-sales-funnel-optimization', NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:07:12', '2025-03-08 16:07:12'),
(632, 'Layer 2 Scaling Solutions (Polygon, Arbitrum)', 'layer-2-scaling-solutions-polygon-arbitrum-', NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:07:27', '2025-03-08 16:07:27'),
(633, 'Affiliate Email Outreach & Recruitment', 'affiliate-email-outreach-recruitment', NULL, NULL, NULL, NULL, 54, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:07:36', '2025-03-08 16:07:36'),
(634, 'Cross-Chain Bridge Development', 'cross-chain-bridge-development', NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:07:51', '2025-03-08 16:07:51'),
(635, 'Decentralized Finance (DeFi) App Development', 'decentralized-finance-defi-app-development', NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:08:33', '2025-03-08 16:08:33'),
(637, 'Influencer Outreach & Collaboration Strategy', 'influencer-outreach-collaboration-strategy', NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:08:57', '2025-03-08 16:08:57'),
(638, 'Blockchain Game Development', 'blockchain-game-development', NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:09:19', '2025-03-08 16:09:19'),
(640, 'Sponsored Post Campaigns (Instagram, YouTube, TikTok)', 'sponsored-post-campaigns-instagram-youtube-tiktok-', NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:09:39', '2025-03-08 16:09:39'),
(641, 'Brand Ambassador Program Management', 'brand-ambassador-program-management', NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:10:01', '2025-03-08 16:10:01'),
(643, 'Decentralized Autonomous Organization (DAO) Development', 'decentralized-autonomous-organization-dao-development', NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:10:11', '2025-03-08 16:10:11'),
(644, 'Influencer Contract & Payment Management', 'influencer-contract-payment-management', NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:10:28', '2025-03-08 16:10:28'),
(645, 'Web3 Integration & DApp Development', 'web3-integration-dapp-development', NULL, NULL, NULL, NULL, 140, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:10:39', '2025-03-08 16:10:39'),
(647, 'Influencer Analytics & Performance Tracking', 'influencer-analytics-performance-tracking', NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:11:29', '2025-03-08 16:11:29'),
(648, 'UGC (User-Generated Content) Campaigns', 'ugc-user-generated-content-campaigns', NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:11:47', '2025-03-08 16:11:47'),
(649, 'Custom Book Cover Design', 'custom-book-cover-design', NULL, NULL, NULL, NULL, 167, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:11:55', '2025-03-08 16:11:55'),
(651, 'Print-Ready Layout Formatting', 'print-ready-layout-formatting', NULL, NULL, NULL, NULL, 167, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:12:31', '2025-03-08 16:12:31'),
(653, 'POD Product Mockups (Mugs, T-Shirts, Posters)', 'pod-product-mockups-mugs-t-shirts-posters-', NULL, NULL, NULL, NULL, 167, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:12:59', '2025-03-08 16:12:59'),
(655, 'Micro & Nano Influencer Marketing', 'micro-nano-influencer-marketing', NULL, NULL, NULL, NULL, 55, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:13:10', '2025-03-08 16:13:10'),
(656, 'Low-Content Books (Planners, Journals, Coloring Books)', 'low-content-books-planners-journals-coloring-books-', NULL, NULL, NULL, NULL, 167, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:14:11', '2025-03-08 16:14:11'),
(658, 'Viral Marketing & Referral Campaigns', 'viral-marketing-referral-campaigns', NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:14:36', '2025-03-08 16:14:36'),
(659, 'Community Building & Engagement Tactics', 'community-building-engagement-tactics', NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:14:55', '2025-03-08 16:14:55'),
(660, 'AI Image Upscaling & Enhancement', 'ai-image-upscaling-enhancement', NULL, NULL, NULL, NULL, 147, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:15:10', '2025-03-08 16:15:10'),
(662, 'A/B Testing & Data-Driven Growth Experiments', 'a-b-testing-data-driven-growth-experiments', NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:15:24', '2025-03-08 16:15:24'),
(663, 'AI-Based Background Removal & Object Detection', 'ai-based-background-removal-object-detection', NULL, NULL, NULL, NULL, 147, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:15:41', '2025-03-08 16:15:41'),
(669, 'AI-Generated Video Editing & Animation', 'ai-generated-video-editing-animation', NULL, NULL, NULL, NULL, 147, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:16:09', '2025-03-08 16:16:09'),
(671, 'Product Launch & Pre-Sale Marketing', 'product-launch-pre-sale-marketing', NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:16:15', '2025-03-08 16:16:15'),
(672, 'Gamification & Loyalty Program Strategies', 'gamification-loyalty-program-strategies', NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:16:36', '2025-03-08 16:16:36'),
(673, 'Deepfake & Face-Swap Video Creation', 'deepfake-face-swap-video-creation', NULL, NULL, NULL, NULL, 147, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:16:42', '2025-03-08 16:16:42'),
(674, 'Leveraging AI & Automation for Growth', 'leveraging-ai-automation-for-growth', NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:16:56', '2025-03-08 16:16:56'),
(675, 'Paid & Organic Growth Strategies', 'paid-organic-growth-strategies', NULL, NULL, NULL, NULL, 56, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:17:20', '2025-03-08 16:17:20'),
(677, 'Landing Page Optimization & A/B Testing', 'landing-page-optimization-a-b-testing', NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:18:37', '2025-03-08 16:18:37'),
(678, 'Personalized Workout Plans', 'personalized-workout-plans', NULL, NULL, NULL, NULL, 153, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:18:43', '2025-03-08 16:18:43'),
(680, 'Sales Funnel Optimization (Lead Capture, Checkout Flow)', 'sales-funnel-optimization-lead-capture-checkout-flow-', NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:18:56', '2025-03-08 16:18:56'),
(681, 'Nutrition & Diet Planning', 'nutrition-diet-planning', NULL, NULL, NULL, NULL, 153, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:19:09', '2025-03-08 16:19:09'),
(683, 'Heatmap & User Behavior Analysis', 'heatmap-user-behavior-analysis', NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:19:18', '2025-03-08 16:19:18'),
(684, 'UX/UI Optimization for Higher Conversions', 'ux-ui-optimization-for-higher-conversions', NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:19:43', '2025-03-08 16:19:43'),
(685, 'Mental Health & Emotional Well-Being', 'mental-health-emotional-well-being', NULL, NULL, NULL, NULL, 153, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:19:46', '2025-03-08 16:19:46'),
(687, 'Mobile Optimization for Better Engagement', 'mobile-optimization-for-better-engagement', NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:20:13', '2025-03-08 16:20:13'),
(688, 'Weight Loss & Strength Training', 'weight-loss-strength-training', NULL, NULL, NULL, NULL, 153, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:20:31', '2025-03-08 16:20:31'),
(690, 'Call-to-Action (CTA) Testing & Improvements', 'call-to-action-cta-testing-improvements', NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:20:42', '2025-03-08 16:20:42'),
(691, 'Form & Lead Magnet Optimization', 'form-lead-magnet-optimization', NULL, NULL, NULL, NULL, 57, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:21:03', '2025-03-08 16:21:03'),
(692, 'Shopify & WooCommerce Marketing Strategies', 'shopify-woocommerce-marketing-strategies', NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:21:51', '2025-03-08 16:21:51'),
(693, 'Amazon & eBay Store Optimization', 'amazon-ebay-store-optimization', NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:22:21', '2025-03-08 16:22:21'),
(694, 'Employee Hiring & Talent Acquisition', 'employee-hiring-talent-acquisition', NULL, NULL, NULL, NULL, 159, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:22:24', '2025-03-08 16:22:24'),
(696, 'HR Policies & Compliance Consulting', 'hr-policies-compliance-consulting', NULL, NULL, NULL, NULL, 159, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:22:42', '2025-03-08 16:22:42'),
(698, 'Dropshipping & Print-on-Demand (POD) Marketing', 'dropshipping-print-on-demand-pod-marketing', NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:22:43', '2025-03-08 16:22:43'),
(699, 'Influencer Marketing for E-Commerce', 'influencer-marketing-for-e-commerce', NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:23:25', '2025-03-08 16:23:25'),
(700, 'Workplace Diversity & Inclusion Strategies', 'workplace-diversity-inclusion-strategies', NULL, NULL, NULL, NULL, 159, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:23:37', '2025-03-08 16:23:37'),
(702, 'Cart Abandonment Recovery Strategies', 'cart-abandonment-recovery-strategies', NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:24:20', '2025-03-08 16:24:20'),
(703, 'Performance Management & Employee Retention', 'performance-management-employee-retention', NULL, NULL, NULL, NULL, 159, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:24:45', '2025-03-08 16:24:45'),
(705, 'Facebook & Google Ads for E-Commerce', 'facebook-google-ads-for-e-commerce', NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:24:50', '2025-03-08 16:24:50'),
(706, 'Email & SMS Marketing for Online Stores', 'email-sms-marketing-for-online-stores', NULL, NULL, NULL, NULL, 58, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:25:18', '2025-03-08 16:25:18'),
(707, 'Blog & Article Writing', 'blog-article-writing', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:27:12', '2025-03-08 16:27:12'),
(708, 'Website Content & Landing Pages', 'website-content-landing-pages', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:27:33', '2025-03-08 16:27:33'),
(709, 'Social Media & Ad Copywriting', 'social-media-ad-copywriting', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:27:55', '2025-03-08 16:27:55'),
(710, 'Product Descriptions & Reviews', 'product-descriptions-reviews', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:28:15', '2025-03-08 16:28:15'),
(711, 'Press Release Writing', 'press-release-writing', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:28:34', '2025-03-08 16:28:34'),
(712, 'Script Writing for Videos & Podcasts', 'script-writing-for-videos-podcasts', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:28:53', '2025-03-08 16:28:53'),
(713, 'Business Proposals & Reports', 'business-proposals-reports', NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:29:11', '2025-03-08 16:29:11'),
(715, 'Newsletter & Email Content', 'newsletter-email-content', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:29:35', '2025-03-08 16:29:35'),
(716, 'Technical Documentation & User Manuals', 'technical-documentation-user-manuals', NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:29:45', '2025-03-08 16:29:45'),
(718, 'Keyword Research & Optimization', 'keyword-research-optimization', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:30:45', '2025-03-08 16:30:45'),
(719, 'Long-Form SEO Content (Guides, Tutorials)', 'long-form-seo-content-guides-tutorials-', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:31:06', '2025-03-08 16:31:06'),
(722, 'Local & Niche-Specific SEO Content', 'local-niche-specific-seo-content', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:31:24', '2025-03-08 16:31:24'),
(724, 'Affiliate & Amazon SEO Articles', 'affiliate-amazon-seo-articles', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:31:44', '2025-03-08 16:31:44'),
(725, 'SEO-Optimized Product Pages', 'seo-optimized-product-pages', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:32:04', '2025-03-08 16:32:04'),
(726, 'Topic Clusters & Pillar Content', 'topic-clusters-pillar-content', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:32:24', '2025-03-08 16:32:24'),
(727, 'Competitor Analysis & Content Strategy', 'competitor-analysis-content-strategy', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:32:43', '2025-03-08 16:32:43'),
(728, 'Grant Writing & Funding Proposals', 'grant-writing-funding-proposals', NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:34:31', '2025-03-08 16:34:31'),
(730, 'Resume & Cover Letter Coaching', 'resume-cover-letter-coaching', NULL, NULL, NULL, NULL, 155, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:36:34', '2025-03-08 16:36:34'),
(731, 'Interview Preparation & Mock Interviews', 'interview-preparation-mock-interviews', NULL, NULL, NULL, NULL, 155, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:37:20', '2025-03-08 16:37:20'),
(732, 'Career Change & Transition Strategies', 'career-change-transition-strategies', NULL, NULL, NULL, NULL, 155, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:37:56', '2025-03-08 16:37:56'),
(733, 'Professional Networking & Personal Branding', 'professional-networking-personal-branding', NULL, NULL, NULL, NULL, 155, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:38:25', '2025-03-08 16:38:25'),
(734, 'Overcoming Limiting Beliefs', 'overcoming-limiting-beliefs', NULL, NULL, NULL, NULL, 154, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:39:28', '2025-03-08 16:39:28'),
(735, 'Emotional Intelligence & Self-Awareness', 'emotional-intelligence-self-awareness', NULL, NULL, NULL, NULL, 154, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:39:58', '2025-03-08 16:39:58'),
(736, 'Public Speaking & Communication Skills', 'public-speaking-communication-skills', NULL, NULL, NULL, NULL, 154, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:40:45', '2025-03-08 16:40:45'),
(737, 'Leadership & Decision-Making Skills', 'leadership-decision-making-skills', NULL, NULL, NULL, NULL, 154, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:41:08', '2025-03-08 16:41:08'),
(753, 'Guided Meditation Sessions', 'guided-meditation-sessions', NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:45:23', '2025-03-08 16:45:23'),
(754, 'Mindfulness for Stress Reduction', 'mindfulness-for-stress-reduction', NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:46:08', '2025-03-08 16:46:08'),
(755, 'Breathing Exercises & Relaxation Techniques', 'breathing-exercises-relaxation-techniques', NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:46:34', '2025-03-08 16:46:34'),
(756, 'Sleep & Deep Focus Meditation', 'sleep-deep-focus-meditation', NULL, NULL, NULL, NULL, 152, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:47:33', '2025-03-08 16:47:33'),
(757, 'Time Management Strategies', 'time-management-strategies', NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:49:13', '2025-03-08 16:49:13'),
(758, 'Habit Formation & Daily Routines', 'habit-formation-daily-routines', NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:49:39', '2025-03-08 16:49:39'),
(759, 'Focus & Concentration Techniques', 'focus-concentration-techniques', NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:50:33', '2025-03-08 16:50:33'),
(760, 'Digital Productivity Tools & Automation', 'digital-productivity-tools-automation', NULL, NULL, NULL, NULL, 151, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:51:04', '2025-03-08 16:51:04'),
(761, 'SOPs (Standard Operating Procedures)', 'sops-standard-operating-procedures-', NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 16:58:23', '2025-03-08 16:58:23'),
(767, 'Research & Market Analysis Reports', 'research-market-analysis-reports', NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:00:07', '2025-03-08 17:00:07'),
(769, 'Goal Setting & Achievement Coaching', 'goal-setting-achievement-coaching', NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:08:59', '2025-03-08 17:08:59'),
(770, 'Stress & Anxiety Management', 'stress-anxiety-management', NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:09:20', '2025-03-08 17:09:20'),
(776, 'Confidence & Self-Esteem Building', 'confidence-self-esteem-building', NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:10:48', '2025-03-08 17:10:48'),
(777, 'Work-Life Balance Coaching', 'work-life-balance-coaching', NULL, NULL, NULL, NULL, 150, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:11:14', '2025-03-08 17:11:14'),
(778, 'Customer Support Chatbots', 'customer-support-chatbots', NULL, NULL, NULL, NULL, 144, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:12:26', '2025-03-08 17:12:26'),
(779, 'E-Commerce & Sales Chatbots', 'e-commerce-sales-chatbots', NULL, NULL, NULL, NULL, 144, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:12:56', '2025-03-08 17:12:56'),
(780, 'AI-Powered WhatsApp & Messenger Bots', 'ai-powered-whatsapp-messenger-bots', NULL, NULL, NULL, NULL, 144, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:13:52', '2025-03-08 17:13:52'),
(781, 'Custom GPT & NLP-Based Chatbots', 'custom-gpt-nlp-based-chatbots', NULL, NULL, NULL, NULL, 144, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:14:28', '2025-03-08 17:14:28'),
(782, 'AI-Generated Blog & Article Writing', 'ai-generated-blog-article-writing', NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:15:11', '2025-03-08 17:15:11'),
(783, 'AI-Powered Copywriting & Ad Creatives', 'ai-powered-copywriting-ad-creatives', NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:15:40', '2025-03-08 17:15:40'),
(784, 'AI Scriptwriting for Videos & Podcasts', 'ai-scriptwriting-for-videos-podcasts', NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:16:07', '2025-03-08 17:16:07'),
(785, 'AI-Assisted Resume & Cover Letter Writing', 'ai-assisted-resume-cover-letter-writing', NULL, NULL, NULL, NULL, 145, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:16:41', '2025-03-08 17:16:41'),
(786, 'Predictive Analytics & Data Modeling', 'predictive-analytics-data-modeling', NULL, NULL, NULL, NULL, 146, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:17:32', '2025-03-08 17:17:32'),
(787, 'AI-Based Recommendation Systems', 'ai-based-recommendation-systems', NULL, NULL, NULL, NULL, 146, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:18:04', '2025-03-08 17:18:04'),
(788, 'Image & Speech Recognition Models', 'image-speech-recognition-models', NULL, NULL, NULL, NULL, 146, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:18:25', '2025-03-08 17:18:25'),
(789, 'Custom Machine Learning Algorithms', 'custom-machine-learning-algorithms', NULL, NULL, NULL, NULL, 146, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:18:47', '2025-03-08 17:18:47'),
(790, 'AI-Powered Keyword Research & SEO Optimization', 'ai-powered-keyword-research-seo-optimization', NULL, NULL, NULL, NULL, 148, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:21:51', '2025-03-08 17:21:51'),
(791, 'AI-Driven Social Media Post Generation', 'ai-driven-social-media-post-generation', NULL, NULL, NULL, NULL, 148, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:22:25', '2025-03-08 17:22:25'),
(792, 'Automated Ad Copy & Campaign Optimization', 'automated-ad-copy-campaign-optimization', NULL, NULL, NULL, NULL, 148, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:23:35', '2025-03-08 17:23:35'),
(793, 'AI-Powered Email Marketing & Personalization', 'ai-powered-email-marketing-personalization', NULL, NULL, NULL, NULL, 148, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:24:43', '2025-03-08 17:24:43'),
(794, 'AI Text-to-Speech (TTS) & Voice Cloning', 'ai-text-to-speech-tts-voice-cloning', NULL, NULL, NULL, NULL, 149, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:25:33', '2025-03-08 17:25:33'),
(796, 'AI Speech-to-Text Transcription', 'ai-speech-to-text-transcription', NULL, NULL, NULL, NULL, 149, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:26:22', '2025-03-08 17:26:22'),
(797, 'AI-Powered Virtual Assistants & Call Automation', 'ai-powered-virtual-assistants-call-automation', NULL, NULL, NULL, NULL, 149, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:27:33', '2025-03-08 17:27:33'),
(798, 'AI Voiceover & Podcast Narration', 'ai-voiceover-podcast-narration', NULL, NULL, NULL, NULL, 149, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:28:09', '2025-03-08 17:28:09'),
(799, 'Fiction & Non-Fiction Writing', 'fiction-non-fiction-writing', NULL, NULL, NULL, NULL, 163, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:30:08', '2025-03-08 17:30:08'),
(800, 'Business & Self-Help E-Books', 'business-self-help-e-books', NULL, NULL, NULL, NULL, 163, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:31:09', '2025-03-08 17:31:09'),
(801, 'E-Book Editing & Proofreading', 'e-book-editing-proofreading', NULL, NULL, NULL, NULL, 163, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:31:57', '2025-03-08 17:31:57'),
(802, 'Kindle Direct Publishing (KDP) Formatting', 'kindle-direct-publishing-kdp-formatting', NULL, NULL, NULL, NULL, 163, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:32:26', '2025-03-08 17:32:26'),
(803, 'PDF to EPUB & MOBI Conversion', 'pdf-to-epub-mobi-conversion', NULL, NULL, NULL, NULL, 164, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:33:16', '2025-03-08 17:33:16'),
(804, 'Interactive & Fillable PDFs', 'interactive-fillable-pdfs', NULL, NULL, NULL, NULL, 164, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:33:41', '2025-03-08 17:33:41'),
(805, 'Business Reports & Whitepapers', 'business-reports-whitepapers', NULL, NULL, NULL, NULL, 164, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:34:06', '2025-03-08 17:34:06'),
(806, 'Print-Ready PDF Formatting', 'print-ready-pdf-formatting', NULL, NULL, NULL, NULL, 164, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:34:25', '2025-03-08 17:34:25'),
(807, 'Course Content Writing & Scripting', 'course-content-writing-scripting', NULL, NULL, NULL, NULL, 166, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:35:06', '2025-03-08 17:35:06'),
(808, 'E-Learning Video Production', 'e-learning-video-production', NULL, NULL, NULL, NULL, 166, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:35:32', '2025-03-08 17:35:32'),
(809, 'Online Course Presentation Design', 'online-course-presentation-design', NULL, NULL, NULL, NULL, 166, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:35:56', '2025-03-08 17:35:56'),
(810, 'Course PDF & Workbook Development', 'course-pdf-workbook-development', NULL, NULL, NULL, NULL, 166, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:36:25', '2025-03-08 17:36:25'),
(820, 'Resume & Business Proposal Templates', 'resume-business-proposal-templates', NULL, NULL, NULL, NULL, 168, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:39:16', '2025-03-08 17:39:16'),
(821, 'Social Media & Marketing Templates', 'social-media-marketing-templates', NULL, NULL, NULL, NULL, 168, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:44:52', '2025-03-08 17:44:52'),
(822, 'Infographic & Presentation Templates', 'infographic-presentation-templates', NULL, NULL, NULL, NULL, 168, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:46:00', '2025-03-08 17:46:00'),
(823, 'UI/UX Design Kits', 'ui-ux-design-kits', NULL, NULL, NULL, NULL, 168, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:46:44', '2025-03-08 17:46:44'),
(824, 'Educational Explainer Videos', 'educational-explainer-videos', NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:53:06', '2025-03-08 17:53:06'),
(825, 'Employee Training & Compliance Videos', 'employee-training-compliance-videos', NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:53:53', '2025-03-08 17:53:53'),
(826, 'Animated Learning Modules', 'animated-learning-modules', NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:54:28', '2025-03-08 17:54:28'),
(827, 'Webinar Recording & Editing', 'webinar-recording-editing', NULL, NULL, NULL, NULL, 46, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:55:40', '2025-03-08 17:55:40'),
(828, 'Wedding & Corporate Event Videos', 'wedding-corporate-event-videos', NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:57:24', '2025-03-08 17:57:24'),
(829, 'Conference & Seminar Highlights', 'conference-seminar-highlights', NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:58:26', '2025-03-08 17:58:26'),
(830, 'Sports & Live Event Recaps', 'sports-live-event-recaps', NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 17:59:45', '2025-03-08 17:59:45'),
(831, 'Behind-the-Scenes & Documentary Editing', 'behind-the-scenes-documentary-editing', NULL, NULL, NULL, NULL, 48, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:00:29', '2025-03-08 18:00:29'),
(832, 'Gameplay Highlight Reels', 'gameplay-highlight-reels', NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:02:31', '2025-03-08 18:02:31'),
(833, 'Esports Tournament Edits', 'esports-tournament-edits', NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:03:03', '2025-03-08 18:03:03'),
(834, 'Game Promo & Teaser Videos', 'game-promo-teaser-videos', NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:03:25', '2025-03-08 18:03:25'),
(835, 'Custom Overlays & Stream Graphics', 'custom-overlays-stream-graphics', NULL, NULL, NULL, NULL, 188, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:03:48', '2025-03-08 18:03:48'),
(836, 'Virtual Tour Video Creation', 'virtual-tour-video-creation', NULL, NULL, NULL, NULL, 189, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:05:10', '2025-03-08 18:05:10'),
(837, 'Real Estate Aerial Footage', 'real-estate-aerial-footage', NULL, NULL, NULL, NULL, 189, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:05:29', '2025-03-08 18:05:29'),
(838, 'Drone Videography for Events', 'drone-videography-for-events', NULL, NULL, NULL, NULL, 189, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:06:03', '2025-03-08 18:06:03'),
(839, 'Travel & Landscape 360° Videos', 'travel-landscape-360-videos', NULL, NULL, NULL, NULL, 189, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:06:31', '2025-03-08 18:06:31'),
(840, '2D & 3D NFT Art Design', '2d-3d-nft-art-design', NULL, NULL, NULL, NULL, 363, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:27:23', '2025-03-08 18:27:23'),
(841, 'AI-Generated NFT Artwork', 'ai-generated-nft-artwork', NULL, NULL, NULL, NULL, 363, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:28:12', '2025-03-08 18:28:12'),
(842, 'Pixel & Anime-Style NFT Art', 'pixel-anime-style-nft-art', NULL, NULL, NULL, NULL, 363, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:28:32', '2025-03-08 18:28:32'),
(843, 'Hand-Drawn & Illustrated NFTs', 'hand-drawn-illustrated-nfts', NULL, NULL, NULL, NULL, 363, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:28:54', '2025-03-08 18:28:54'),
(844, 'NFT Collection & Generative Art Creation', 'nft-collection-generative-art-creation', NULL, NULL, NULL, NULL, 363, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:29:14', '2025-03-08 18:29:14'),
(845, 'GIF & Animated NFT Design', 'gif-animated-nft-design', NULL, NULL, NULL, NULL, 363, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:29:42', '2025-03-08 18:29:42'),
(846, 'NFT Minting on Ethereum, Solana, Polygon', 'nft-minting-on-ethereum-solana-polygon', NULL, NULL, NULL, NULL, 363, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 18:30:08', '2025-03-08 18:30:08'),
(875, 'Ethereum & Solidity Smart Contracts', 'ethereum-solidity-smart-contracts', NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-08 19:07:14', '2025-03-08 19:07:14'),
(876, 'Solana Smart Contract Development (Rust)', 'solana-smart-contract-development-rust-', NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 06:53:15', '2025-03-09 06:53:15'),
(877, 'Binance Smart Chain (BSC) Contracts', 'binance-smart-chain-bsc-contracts', NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 06:53:37', '2025-03-09 06:53:37'),
(878, 'Smart Contract Auditing & Security Testing', 'smart-contract-auditing-security-testing', NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 06:53:58', '2025-03-09 06:53:58'),
(879, 'NFT Smart Contract Creation & Deployment', 'nft-smart-contract-creation-deployment', NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 06:54:17', '2025-03-09 06:54:17'),
(880, 'Custom Token Smart Contracts (ERC-20, BEP-20)', 'custom-token-smart-contracts-erc-20-bep-20-', NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 06:54:36', '2025-03-09 06:54:36'),
(881, 'DAO Smart Contract Development', 'dao-smart-contract-development', NULL, NULL, NULL, NULL, 139, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 06:55:01', '2025-03-09 06:55:01'),
(888, 'Multi-Currency Crypto Wallets (Bitcoin, Ethereum, BSC, Solana)', 'multi-currency-crypto-wallets-bitcoin-ethereum-bsc-solana-', NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 06:59:31', '2025-03-09 06:59:31'),
(889, 'Web & Mobile Wallet Development', 'web-mobile-wallet-development', NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:00:08', '2025-03-09 07:00:08'),
(890, 'NFT Wallet Integration & Development', 'nft-wallet-integration-development', NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:01:08', '2025-03-09 07:01:08'),
(892, 'Crypto Payment Gateway Integration', 'crypto-payment-gateway-integration', NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:02:54', '2025-03-09 07:02:54'),
(893, 'Cold & Hot Wallet Security Solutions', 'cold-hot-wallet-security-solutions', NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:04:52', '2025-03-09 07:04:52'),
(894, 'Custodial & Non-Custodial Wallet Development', 'custodial-non-custodial-wallet-development', NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:05:20', '2025-03-09 07:05:20'),
(895, 'Private Key & Seed Phrase Security Solutions', 'private-key-seed-phrase-security-solutions', NULL, NULL, NULL, NULL, 141, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:05:52', '2025-03-09 07:05:52'),
(896, 'Custom NFT Marketplace Development', 'custom-nft-marketplace-development', NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:07:18', '2025-03-09 07:07:18'),
(897, 'White-Label NFT Marketplace Solutions', 'white-label-nft-marketplace-solutions', NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:08:31', '2025-03-09 07:08:31'),
(898, 'OpenSea API & Smart Contract Integration', 'opensea-api-smart-contract-integration', NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:09:40', '2025-03-09 07:09:40'),
(899, 'Multi-Chain NFT Marketplaces (Ethereum, Solana, Polygon)', 'multi-chain-nft-marketplaces-ethereum-solana-polygon-', NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:10:16', '2025-03-09 07:10:16'),
(900, 'NFT Auction & Bidding System Development', 'nft-auction-bidding-system-development', NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:10:47', '2025-03-09 07:10:47'),
(901, 'NFT Staking & Yield Farming Features', 'nft-staking-yield-farming-features', NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:11:09', '2025-03-09 07:11:09'),
(902, 'Fractionalized NFT Platforms', 'fractionalized-nft-platforms', NULL, NULL, NULL, NULL, 142, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:11:40', '2025-03-09 07:11:40'),
(903, 'Tokenomics Model Development', 'tokenomics-model-development', NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:13:10', '2025-03-09 07:13:10'),
(904, 'Token Supply & Utility Planning', 'token-supply-utility-planning', NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:13:33', '2025-03-09 07:13:33'),
(905, 'Play-to-Earn (P2E) Tokenomics Strategy', 'play-to-earn-p2e-tokenomics-strategy', NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:13:54', '2025-03-09 07:13:54'),
(906, 'Crypto Project Whitepaper Writing', 'crypto-project-whitepaper-writing', NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:14:14', '2025-03-09 07:14:14'),
(907, 'Roadmap & Business Model Development', 'roadmap-business-model-development', NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:14:37', '2025-03-09 07:14:37'),
(908, 'Pitch Decks for Crypto & NFT Startups', 'pitch-decks-for-crypto-nft-startups', NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:15:10', '2025-03-09 07:15:10'),
(910, 'Compliance & Legal Documentation for Crypto Projects', 'compliance-legal-documentation-for-crypto-projects', NULL, NULL, NULL, NULL, 143, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:15:30', '2025-03-09 07:15:30'),
(911, 'Portrait & Headshot Photography', 'portrait-headshot-photography', NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:20:20', '2025-03-09 07:20:20'),
(912, 'Fashion & Lifestyle Photography', 'fashion-lifestyle-photography', NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:21:59', '2025-03-09 07:21:59'),
(913, 'Corporate & Business Photography', 'corporate-business-photography', NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:22:33', '2025-03-09 07:22:33'),
(914, 'Commercial & Advertising Photography', 'commercial-advertising-photography', NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:22:59', '2025-03-09 07:22:59'),
(915, 'Wedding & Engagement Photography', 'wedding-engagement-photography', NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:23:25', '2025-03-09 07:23:25'),
(916, 'Travel & Documentary Photography', 'travel-documentary-photography', NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:24:11', '2025-03-09 07:24:11'),
(917, 'Food & Beverage Photography', 'food-beverage-photography', NULL, NULL, NULL, NULL, 131, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:24:35', '2025-03-09 07:24:35'),
(918, 'Background Removal & Image Cutout', 'background-removal-image-cutout', NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:25:37', '2025-03-09 07:25:37'),
(919, 'Color Correction & Image Enhancement', 'color-correction-image-enhancement', NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:26:40', '2025-03-09 07:26:40'),
(920, 'High-End Beauty & Skin Retouching', 'high-end-beauty-skin-retouching', NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:27:12', '2025-03-09 07:27:12'),
(921, 'Photo Manipulation & Creative Editing', 'photo-manipulation-creative-editing', NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:27:38', '2025-03-09 07:27:38'),
(922, 'Old Photo Restoration & Repair', 'old-photo-restoration-repair', NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:28:05', '2025-03-09 07:28:05'),
(923, 'Product Photo Retouching for E-Commerce', 'product-photo-retouching-for-e-commerce', NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:28:40', '2025-03-09 07:28:40'),
(924, 'HDR & Panorama Image Editing', 'hdr-panorama-image-editing', NULL, NULL, NULL, NULL, 132, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:29:37', '2025-03-09 07:29:37'),
(929, 'E-Commerce Product Photography', 'e-commerce-product-photography', NULL, NULL, NULL, NULL, 134, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:45:07', '2025-03-09 07:45:07'),
(930, 'Amazon & eBay Product Images', 'amazon-ebay-product-images', NULL, NULL, NULL, NULL, 134, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:45:45', '2025-03-09 07:45:45'),
(931, 'Jewelry & Luxury Product Photography', 'jewelry-luxury-product-photography', '', 'null', 'null', 'null', 134, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-09 07:49:56', '2025-03-09 07:55:38'),
(932, 'Packshot & White Background Product Photos', 'packshot-white-background-product-photos', '', 'null', 'null', 'null', 134, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-09 07:50:34', '2025-03-09 07:55:05'),
(933, '360-Degree Product Photography', '360-degree-product-photography', '', 'null', 'null', 'null', 134, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-09 07:51:08', '2025-03-09 07:54:34'),
(934, 'Creative Product Styling & Composition', 'creative-product-styling-composition', '', 'null', 'null', 'null', 134, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-09 07:51:47', '2025-03-09 07:53:53'),
(935, 'Food & Beverage Product Shoots', 'food-beverage-product-shoots', '', 'null', 'null', 'null', 134, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2025-03-09 07:52:09', '2025-03-09 07:53:19');
INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `commission`, `fixcommission`, `product_sell_qty`, `getAmount`, `sort_order`, `file`, `status`, `speacial_status`, `mobile_view_class`, `keyword`, `percentage_amt`, `created_at`, `updated_at`) VALUES
(936, 'Wedding & Reception Photography', 'wedding-reception-photography', NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:59:12', '2025-03-09 07:59:12'),
(937, 'Corporate & Business Events', 'corporate-business-events', NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 07:59:49', '2025-03-09 07:59:49'),
(938, 'Birthday & Party Photography', 'birthday-party-photography', NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:00:21', '2025-03-09 08:00:21'),
(939, 'Concert & Festival Photography', 'concert-festival-photography', NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:01:53', '2025-03-09 08:01:53'),
(940, 'Sports & Action Event Photography', 'sports-action-event-photography', NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:02:29', '2025-03-09 08:02:29'),
(941, 'Behind-The-Scenes (BTS) Photography', 'behind-the-scenes-bts-photography', NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:03:13', '2025-03-09 08:03:13'),
(942, 'Live Event Streaming & Photography', 'live-event-streaming-photography', NULL, NULL, NULL, NULL, 135, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:04:33', '2025-03-09 08:04:33'),
(943, 'Interior & Exterior Property Photography', 'interior-exterior-property-photography', NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:06:10', '2025-03-09 08:06:10'),
(944, '3D Virtual Tours & Matterport Services', '3d-virtual-tours-matterport-services', NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:06:28', '2025-03-09 08:06:28'),
(945, 'Aerial Real Estate Photography', 'aerial-real-estate-photography', NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:06:47', '2025-03-09 08:06:47'),
(946, 'Real Estate Video Walkthroughs', 'real-estate-video-walkthroughs', NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:07:11', '2025-03-09 08:07:11'),
(947, 'HDR & Twilight Real Estate Photos', 'hdr-twilight-real-estate-photos', NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:07:37', '2025-03-09 08:07:37'),
(948, 'Apartment & Airbnb Listing Photography', 'apartment-airbnb-listing-photography', NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:08:01', '2025-03-09 08:08:01'),
(949, 'Commercial Property Photography', 'commercial-property-photography', NULL, NULL, NULL, NULL, 136, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:08:21', '2025-03-09 08:08:21'),
(950, 'Aerial Photography for Real Estate', 'aerial-photography-for-real-estate', NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:11:30', '2025-03-09 08:11:30'),
(951, 'Drone Videography for Events & Weddings', 'drone-videography-for-events-weddings', NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:11:55', '2025-03-09 08:11:55'),
(952, 'Landscape & Nature Aerial Shots', 'landscape-nature-aerial-shots', NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:12:23', '2025-03-09 08:12:23'),
(953, 'Industrial & Construction Site Monitoring', 'industrial-construction-site-monitoring', NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:12:53', '2025-03-09 08:12:53'),
(954, 'Drone Photography for Tourism & Travel', 'drone-photography-for-tourism-travel', NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:13:22', '2025-03-09 08:13:22'),
(955, 'FPV Drone Cinematic Shots', 'fpv-drone-cinematic-shots', NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:13:46', '2025-03-09 08:13:46'),
(956, 'Agriculture & Land Survey Drone Services', 'agriculture-land-survey-drone-services', NULL, NULL, NULL, NULL, 137, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:14:52', '2025-03-09 08:14:52'),
(957, 'Web Application Security Testing', 'web-application-security-testing', NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:17:00', '2025-03-09 08:17:00'),
(958, 'SQL Injection & XSS Vulnerability Testing', 'sql-injection-xss-vulnerability-testing', NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:17:27', '2025-03-09 08:17:27'),
(959, 'Server & Hosting Security Hardening', 'server-hosting-security-hardening', NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:18:02', '2025-03-09 08:18:02'),
(960, 'API Security Testing', 'api-security-testing', NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:18:27', '2025-03-09 08:18:27'),
(961, 'Security Patching & Updates', 'security-patching-updates', NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:18:56', '2025-03-09 08:18:56'),
(962, 'Compliance & Security Audits', 'compliance-security-audits', NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:19:17', '2025-03-09 08:19:17'),
(963, 'Website Firewall & DDoS Protection', 'website-firewall-ddos-protection', NULL, NULL, NULL, NULL, 123, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:19:45', '2025-03-09 08:19:45'),
(964, 'White Hat Hacking & Security Assessment', 'white-hat-hacking-security-assessment', NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:20:41', '2025-03-09 08:20:41'),
(965, 'Social Engineering Penetration Testing', 'social-engineering-penetration-testing', NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:21:15', '2025-03-09 08:21:15'),
(966, 'Mobile App Security Testing', 'mobile-app-security-testing', NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:21:38', '2025-03-09 08:21:38'),
(967, 'IoT Device Security Testing', 'iot-device-security-testing', NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:21:59', '2025-03-09 08:21:59'),
(968, 'Reverse Engineering & Exploit Testing', 'reverse-engineering-exploit-testing', NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:22:21', '2025-03-09 08:22:21'),
(969, 'Red Teaming & Cyber Attack Simulations', 'red-teaming-cyber-attack-simulations', NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:22:44', '2025-03-09 08:22:44'),
(970, 'Bug Bounty Hunting & Security Research', 'bug-bounty-hunting-security-research', NULL, NULL, NULL, NULL, 124, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:23:05', '2025-03-09 08:23:05'),
(975, 'WordPress & CMS Malware Cleanup', 'wordpress-cms-malware-cleanup', NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:24:58', '2025-03-09 08:24:58'),
(976, 'Ransomware Detection & Recovery', 'ransomware-detection-recovery', NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:25:19', '2025-03-09 08:25:19'),
(977, 'Spyware & Keylogger Removal', 'spyware-keylogger-removal', NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:25:38', '2025-03-09 08:25:38'),
(978, 'Website & Server Malware Scanning', 'website-server-malware-scanning', NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:25:59', '2025-03-09 08:25:59'),
(979, 'Rootkit & Trojan Removal', 'rootkit-trojan-removal', NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:26:16', '2025-03-09 08:26:16'),
(980, 'Security Monitoring & Incident Response', 'security-monitoring-incident-response', NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:26:38', '2025-03-09 08:26:38'),
(981, 'Antivirus & Endpoint Protection Solutions', 'antivirus-endpoint-protection-solutions', NULL, NULL, NULL, NULL, 126, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:26:58', '2025-03-09 08:26:58'),
(982, 'Software Installation & Configuration', 'software-installation-configuration', NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:27:35', '2025-03-09 08:27:35'),
(983, 'Remote IT Support & Help Desk Services', 'remote-it-support-help-desk-services', NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:27:52', '2025-03-09 08:27:52'),
(984, 'OS & System Performance Optimization', 'os-system-performance-optimization', NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:28:20', '2025-03-09 08:28:20'),
(986, 'Hardware & Peripheral Troubleshooting', 'hardware-peripheral-troubleshooting', NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:28:35', '2025-03-09 08:28:35'),
(987, 'Email & Server Configuration', 'email-server-configuration', NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:28:54', '2025-03-09 08:28:54'),
(988, 'Enterprise IT Infrastructure Support', 'enterprise-it-infrastructure-support', NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:29:12', '2025-03-09 08:29:12'),
(989, 'SaaS & Cloud Software Support', 'saas-cloud-software-support', NULL, NULL, NULL, NULL, 127, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:29:29', '2025-03-09 08:29:29'),
(990, 'AWS, Azure & Google Cloud Security Audits', 'aws-azure-google-cloud-security-audits', NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:30:16', '2025-03-09 08:30:16'),
(991, 'Cloud Access Management & Security Policies', 'cloud-access-management-security-policies', NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:30:33', '2025-03-09 08:30:33'),
(992, 'Secure Cloud Backup & Data Protection', 'secure-cloud-backup-data-protection', NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:31:08', '2025-03-09 08:31:08'),
(993, 'Container Security (Docker, Kubernetes)', 'container-security-docker-kubernetes-', NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:31:49', '2025-03-09 08:31:49'),
(994, 'Cloud Firewall & DDoS Protection', 'cloud-firewall-ddos-protection', NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:32:17', '2025-03-09 08:32:17'),
(995, 'Identity & Access Management (IAM)', 'identity-access-management-iam-', NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:32:45', '2025-03-09 08:32:45'),
(996, 'Cloud Compliance & Governance', 'cloud-compliance-governance', NULL, NULL, NULL, NULL, 128, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:33:18', '2025-03-09 08:33:18'),
(997, 'Dark Web Monitoring & Threat Analysis', 'dark-web-monitoring-threat-analysis', NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:34:25', '2025-03-09 08:34:25'),
(998, 'Real-Time Cyber Attack Monitoring', 'real-time-cyber-attack-monitoring', NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:34:56', '2025-03-09 08:34:56'),
(999, 'Phishing & Ransomware Attack Prevention', 'phishing-ransomware-attack-prevention', NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:35:21', '2025-03-09 08:35:21'),
(1000, 'Incident Response & Forensic Investigation', 'incident-response-forensic-investigation', NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:35:50', '2025-03-09 08:35:50'),
(1001, 'Threat Modeling & Risk Assessment', 'threat-modeling-risk-assessment', NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:36:16', '2025-03-09 08:36:16'),
(1002, 'Threat Intelligence Reporting & Alerts', 'threat-intelligence-reporting-alerts', NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:36:46', '2025-03-09 08:36:46'),
(1003, 'AI & Machine Learning-Based Threat Detection', 'ai-machine-learning-based-threat-detection', NULL, NULL, NULL, NULL, 129, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:37:17', '2025-03-09 08:37:17'),
(1004, 'Hard Drive & SSD Data Recovery', 'hard-drive-ssd-data-recovery', NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:37:53', '2025-03-09 08:37:53'),
(1005, 'RAID & Server Data Restoration', 'raid-server-data-restoration', NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:38:24', '2025-03-09 08:38:24'),
(1006, 'Cloud Backup Solutions & Automation', 'cloud-backup-solutions-automation', NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:39:19', '2025-03-09 08:39:19'),
(1007, 'Deleted File & Partition Recovery', 'deleted-file-partition-recovery', NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:39:42', '2025-03-09 08:39:42'),
(1008, 'Encrypted & Corrupt File Recovery', 'encrypted-corrupt-file-recovery', NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:40:10', '2025-03-09 08:40:10'),
(1009, 'Disaster Recovery Planning', 'disaster-recovery-planning', NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:40:34', '2025-03-09 08:40:34'),
(1010, 'Data Encryption & Secure Storage', 'data-encryption-secure-storage', NULL, NULL, NULL, NULL, 130, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:40:56', '2025-03-09 08:40:56'),
(1011, 'Manual Data Entry & Typing', 'manual-data-entry-typing', NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:43:21', '2025-03-09 08:43:21'),
(1012, 'Copy-Pasting & Data Transfer', 'copy-pasting-data-transfer', NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:43:42', '2025-03-09 08:43:42'),
(1013, 'Data Formatting & Cleanup', 'data-formatting-cleanup', NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:44:02', '2025-03-09 08:44:02'),
(1014, 'PDF/Image to Excel/Word Conversion', 'pdf-image-to-excel-word-conversion', NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:44:24', '2025-03-09 08:44:24'),
(1015, 'CRM & ERP Data Entry', 'crm-erp-data-entry', NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:44:45', '2025-03-09 08:44:45'),
(1016, 'Survey & Form Data Entry', 'survey-form-data-entry', NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:45:15', '2025-03-09 08:45:15'),
(1017, 'E-Commerce Product Data Entry', 'e-commerce-product-data-entry', NULL, NULL, NULL, NULL, 116, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:45:38', '2025-03-09 08:45:38'),
(1018, 'Web Scraping & Data Extraction', 'web-scraping-data-extraction', NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:46:31', '2025-03-09 08:46:31'),
(1019, 'Lead Generation & Contact List Building', 'lead-generation-contact-list-building', NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:47:23', '2025-03-09 08:47:23'),
(1020, 'Competitor & Market Research Scraping', 'competitor-market-research-scraping', NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:47:48', '2025-03-09 08:47:48'),
(1021, 'Social Media & E-Commerce Data Scraping', 'social-media-e-commerce-data-scraping', NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:48:23', '2025-03-09 08:48:23'),
(1022, 'Email & Phone Number Scraping', 'email-phone-number-scraping', NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:48:48', '2025-03-09 08:48:48'),
(1023, 'Python & AI-Based Web Scraping', 'python-ai-based-web-scraping', NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:49:08', '2025-03-09 08:49:08'),
(1024, 'API-Based Data Extraction', 'api-based-data-extraction', NULL, NULL, NULL, NULL, 117, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:49:34', '2025-03-09 08:49:34'),
(1028, 'Dashboard Design (Power BI, Tableau, Google Data Studio)', 'dashboard-design-power-bi-tableau-google-data-studio-', NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:51:26', '2025-03-09 08:51:26'),
(1029, 'Graphs & Chart Creation', 'graphs-chart-creation', NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:51:50', '2025-03-09 08:51:50'),
(1030, 'Infographic Reports & Presentations', 'infographic-reports-presentations', NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:52:16', '2025-03-09 08:52:16'),
(1031, 'Real-Time Data Monitoring Dashboards', 'real-time-data-monitoring-dashboards', NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:52:41', '2025-03-09 08:52:41'),
(1032, 'Business Intelligence (BI) Reporting', 'business-intelligence-bi-reporting', NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:53:02', '2025-03-09 08:53:02'),
(1033, 'Financial & Market Data Visualization', 'financial-market-data-visualization', NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:53:36', '2025-03-09 08:53:36'),
(1034, 'Custom Interactive Data Visuals', 'custom-interactive-data-visuals', NULL, NULL, NULL, NULL, 119, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:54:13', '2025-03-09 08:54:13'),
(1035, 'Machine Learning-Based Data Processing', 'machine-learning-based-data-processing', NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:55:20', '2025-03-09 08:55:20'),
(1036, 'Large-Scale Data Processing with Hadoop & Spark', 'large-scale-data-processing-with-hadoop-spark', NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:55:45', '2025-03-09 08:55:45'),
(1037, 'Predictive Analytics & Forecasting', 'predictive-analytics-forecasting', NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:56:08', '2025-03-09 08:56:08'),
(1038, 'Sentiment Analysis & Social Media Analytics', 'sentiment-analysis-social-media-analytics', NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:56:30', '2025-03-09 08:56:30'),
(1039, 'Business & Financial Data Analysis', 'business-financial-data-analysis', NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:56:52', '2025-03-09 08:56:52'),
(1040, 'Data Warehousing & Management', 'data-warehousing-management', NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:57:20', '2025-03-09 08:57:20'),
(1041, 'AI-Driven Decision-Making Reports', 'ai-driven-decision-making-reports', NULL, NULL, NULL, NULL, 120, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 08:57:43', '2025-03-09 08:57:43'),
(1042, 'Duplicate Removal & Error Checking', 'duplicate-removal-error-checking', NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:08:23', '2025-03-09 09:08:23'),
(1043, 'Data Standardization & Normalization', 'data-standardization-normalization', NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:08:48', '2025-03-09 09:08:48'),
(1044, 'CSV, JSON, XML Data Formatting', 'csv-json-xml-data-formatting', NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:09:16', '2025-03-09 09:09:16'),
(1045, 'Merging & Splitting Data Files', 'merging-splitting-data-files', NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:09:44', '2025-03-09 09:09:44'),
(1046, 'Null Value & Inconsistency Resolution', 'null-value-inconsistency-resolution', NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:10:16', '2025-03-09 09:10:16'),
(1047, 'Large Dataset Optimization', 'large-dataset-optimization', NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:10:36', '2025-03-09 09:10:36'),
(1048, 'Automated Data Cleaning Scripts', 'automated-data-cleaning-scripts', NULL, NULL, NULL, NULL, 121, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:11:01', '2025-03-09 09:11:01'),
(1049, 'Excel VBA & Macro Development', 'excel-vba-macro-development', NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:12:07', '2025-03-09 09:12:07'),
(1050, 'Google Sheets Script Automation', 'google-sheets-script-automation', NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:12:28', '2025-03-09 09:12:28'),
(1051, 'Data Sorting, Filtering & Lookup Automation', 'data-sorting-filtering-lookup-automation', NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:12:53', '2025-03-09 09:12:53'),
(1052, 'Custom Formulas & Functions Creation', 'custom-formulas-functions-creation', NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:13:15', '2025-03-09 09:13:15'),
(1053, 'Report & Dashboard Automation', 'report-dashboard-automation', NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:13:37', '2025-03-09 09:13:37'),
(1054, 'Data Entry Form Development in Excel', 'data-entry-form-development-in-excel', NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:13:59', '2025-03-09 09:13:59'),
(1055, 'Spreadsheet to Database Integration', 'spreadsheet-to-database-integration', NULL, NULL, NULL, NULL, 122, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:14:20', '2025-03-09 09:14:20'),
(1056, 'Manual Data Entry & Formatting', 'manual-data-entry-formatting', NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:15:55', '2025-03-09 09:15:55'),
(1057, 'Excel & Google Sheets Data Processing', 'excel-google-sheets-data-processing', NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:16:16', '2025-03-09 09:16:16'),
(1058, 'CRM Data Entry & Management', 'crm-data-entry-management', NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:16:37', '2025-03-09 09:16:37'),
(1064, 'PDF to Word/Excel Conversion', 'pdf-to-word-excel-conversion', NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:20:11', '2025-03-09 09:20:11'),
(1065, 'Product Data Entry for E-Commerce', 'product-data-entry-for-e-commerce', NULL, NULL, NULL, NULL, 107, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:20:58', '2025-03-09 09:20:58'),
(1066, 'Email & Ticket Support', 'email-ticket-support', NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:21:59', '2025-03-09 09:21:59'),
(1067, 'Phone Call Handling & Follow-Ups', 'phone-call-handling-follow-ups', NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:22:23', '2025-03-09 09:22:23'),
(1068, 'Technical Support Assistance', 'technical-support-assistance', NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:22:46', '2025-03-09 09:22:46'),
(1069, 'Order Processing & Refund Handling', 'order-processing-refund-handling', NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:23:22', '2025-03-09 09:23:22'),
(1070, 'Customer Query Resolution', 'customer-query-resolution', NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:23:45', '2025-03-09 09:23:45'),
(1071, 'Complaint Management & Feedback Collection', 'complaint-management-feedback-collection', NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:24:15', '2025-03-09 09:24:15'),
(1072, 'Multilingual Customer Support', 'multilingual-customer-support', NULL, NULL, NULL, NULL, 108, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:25:01', '2025-03-09 09:25:01'),
(1078, 'Daily Task Management & To-Do Lists', 'daily-task-management-to-do-lists', NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:27:27', '2025-03-09 09:27:27'),
(1079, 'Lifestyle & Shopping Assistance', 'lifestyle-shopping-assistance', NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:27:56', '2025-03-09 09:27:56'),
(1080, 'Online Reservations & Bookings', 'online-reservations-bookings', NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:28:21', '2025-03-09 09:28:21'),
(1081, 'Document Preparation & Organization', 'document-preparation-organization', NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:28:58', '2025-03-09 09:28:58'),
(1082, 'Personal Reminders & Notifications', 'personal-reminders-notifications', NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:29:21', '2025-03-09 09:29:21'),
(1083, 'Gift Research & Purchase Assistance', 'gift-research-purchase-assistance', NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:30:06', '2025-03-09 09:30:06'),
(1084, 'Virtual Concierge Services', 'virtual-concierge-services', NULL, NULL, NULL, NULL, 110, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:30:33', '2025-03-09 09:30:33'),
(1086, 'Content Scheduling & Posting', 'content-scheduling-posting', NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:32:59', '2025-03-09 09:32:59'),
(1087, 'Community Engagement & Comment Moderation', 'community-engagement-comment-moderation', NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:33:20', '2025-03-09 09:33:20'),
(1088, 'Hashtag & Trend Research', 'hashtag-trend-research', NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:33:47', '2025-03-09 09:33:47'),
(1089, 'Profile Setup & Optimization', 'profile-setup-optimization', NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:34:11', '2025-03-09 09:34:11'),
(1090, 'Social Media Analytics & Performance Reports', 'social-media-analytics-performance-reports', NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:34:43', '2025-03-09 09:34:43'),
(1091, 'Social Media Inbox & DM Handling', 'social-media-inbox-dm-handling', NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:35:06', '2025-03-09 09:35:06'),
(1093, 'Influencer Outreach & Collaboration Management', 'influencer-outreach-collaboration-management', NULL, NULL, NULL, NULL, 111, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:35:28', '2025-03-09 09:35:28'),
(1094, 'Product Listing & Descriptions', 'product-listing-descriptions', NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:36:35', '2025-03-09 09:36:35'),
(1095, 'Order Processing & Inventory Updates', 'order-processing-inventory-updates', NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:36:54', '2025-03-09 09:36:54'),
(1096, 'Customer Query Handling & Live Chat Support', 'customer-query-handling-live-chat-support', NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:37:18', '2025-03-09 09:37:18'),
(1097, 'Storefront Customization & Optimization', 'storefront-customization-optimization', NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:37:40', '2025-03-09 09:37:40'),
(1098, 'Price & Competitor Research', 'price-competitor-research', NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:38:01', '2025-03-09 09:38:01'),
(1099, 'Sales & Discount Management', 'sales-discount-management', NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:38:32', '2025-03-09 09:38:32'),
(1100, 'Refund & Return Processing', 'refund-return-processing', NULL, NULL, NULL, NULL, 112, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:38:56', '2025-03-09 09:38:56'),
(1101, 'Flight & Hotel Booking Assistance', 'flight-hotel-booking-assistance', NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:39:44', '2025-03-09 09:39:44'),
(1102, 'Itinerary Planning & Budget Management', 'itinerary-planning-budget-management', NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:40:03', '2025-03-09 09:40:03'),
(1103, 'Visa & Travel Document Assistance', 'visa-travel-document-assistance', NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:40:36', '2025-03-09 09:40:36'),
(1104, 'Local Activity & Tour Research', 'local-activity-tour-research', NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:41:16', '2025-03-09 09:41:16'),
(1105, 'Travel Insurance & Rental Car Booking', 'travel-insurance-rental-car-booking', NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:43:16', '2025-03-09 09:43:16'),
(1106, 'Business & Work Travel Planning', 'business-work-travel-planning', NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:43:58', '2025-03-09 09:43:58'),
(1107, 'Personalized Travel Recommendations', 'personalized-travel-recommendations', NULL, NULL, NULL, NULL, 113, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:44:28', '2025-03-09 09:44:28'),
(1108, 'Market & Competitor Research', 'market-competitor-research', NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:45:34', '2025-03-09 09:45:34'),
(1109, 'Product & Service Comparisons', 'product-service-comparisons', NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:46:22', '2025-03-09 09:46:22'),
(1113, 'Industry Trends & Insights Reports', 'industry-trends-insights-reports', NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:46:58', '2025-03-09 09:46:58'),
(1117, 'Academic & Business Research', 'academic-business-research', NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:48:25', '2025-03-09 09:48:25'),
(1118, 'Keyword & SEO Research', 'keyword-seo-research', NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:48:59', '2025-03-09 09:48:59'),
(1119, 'Brand & Reputation Monitoring', 'brand-reputation-monitoring', NULL, NULL, NULL, NULL, 114, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:49:30', '2025-03-09 09:49:30'),
(1120, '24/7 Chat Support Services', '24-7-chat-support-services', NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:50:41', '2025-03-09 09:50:41'),
(1121, 'Website & App Chat Assistance', 'website-app-chat-assistance', NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:51:11', '2025-03-09 09:51:11'),
(1122, 'Lead Qualification & Conversion Assistance', 'lead-qualification-conversion-assistance', NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:51:31', '2025-03-09 09:51:31'),
(1123, 'Technical Support & Troubleshooting', 'technical-support-troubleshooting', NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:51:52', '2025-03-09 09:51:52'),
(1124, 'Pre-Sales & Upselling Support', 'pre-sales-upselling-support', NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:52:21', '2025-03-09 09:52:21'),
(1125, 'Multilingual Live Chat Support', 'multilingual-live-chat-support', NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:52:41', '2025-03-09 09:52:41'),
(1126, 'AI Chatbot Management & Optimization', 'ai-chatbot-management-optimization', NULL, NULL, NULL, NULL, 115, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:53:10', '2025-03-09 09:53:10'),
(1132, 'Foley & Custom Sound Effects', 'foley-custom-sound-effects', NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:58:40', '2025-03-09 09:58:40'),
(1136, 'Cinematic & Theatrical Sound Design', 'cinematic-theatrical-sound-design', NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 09:59:44', '2025-03-09 09:59:44'),
(1137, 'UI & App Sound Effects', 'ui-app-sound-effects', NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:00:23', '2025-03-09 10:00:23'),
(1138, 'Horror, Sci-Fi & Fantasy Sound Design', 'horror-sci-fi-fantasy-sound-design', NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:00:59', '2025-03-09 10:00:59'),
(1139, 'Background Ambience & Environmental Sounds', 'background-ambience-environmental-sounds', NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:01:27', '2025-03-09 10:01:27'),
(1140, 'Game & VR Audio Production', 'game-vr-audio-production', NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:02:39', '2025-03-09 10:02:39'),
(1141, 'Film & Animation Sound Effects', 'film-animation-sound-effects', NULL, NULL, NULL, NULL, 101, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:03:30', '2025-03-09 10:03:30'),
(1142, 'Custom Business Jingles & Ad Music', 'custom-business-jingles-ad-music', NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:11:11', '2025-03-09 10:11:11'),
(1143, 'Brand & Corporate Theme Songs', 'brand-corporate-theme-songs', NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:11:37', '2025-03-09 10:11:37'),
(1144, 'Radio & Podcast Intro Music', 'radio-podcast-intro-music', NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:12:01', '2025-03-09 10:12:01'),
(1145, 'YouTube & Social Media Background Tracks', 'youtube-social-media-background-tracks', NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:12:20', '2025-03-09 10:12:20'),
(1146, 'Kids & Educational Song Production', 'kids-educational-song-production', NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:12:42', '2025-03-09 10:12:42'),
(1147, 'EDM, Hip-Hop & Pop Jingles', 'edm-hip-hop-pop-jingles', NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:13:02', '2025-03-09 10:13:02'),
(1148, 'Acoustic & Instrumental Songwriting', 'acoustic-instrumental-songwriting', NULL, NULL, NULL, NULL, 102, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:13:23', '2025-03-09 10:13:23'),
(1149, 'Stereo & Dolby Atmos Mixing', 'stereo-dolby-atmos-mixing', NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:14:16', '2025-03-09 10:14:16'),
(1150, 'Vocal Tuning & Auto-Tune Effects', 'vocal-tuning-auto-tune-effects', NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:14:36', '2025-03-09 10:14:36'),
(1151, 'EQ & Compression Balancing', 'eq-compression-balancing', NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:14:57', '2025-03-09 10:14:57'),
(1152, 'Analog & Digital Mastering', 'analog-digital-mastering', NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:15:15', '2025-03-09 10:15:15'),
(1153, 'Beat & Instrumental Mixing', 'beat-instrumental-mixing', NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:15:34', '2025-03-09 10:15:34'),
(1154, 'Podcast & Audiobook Mastering', 'podcast-audiobook-mastering', NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:15:58', '2025-03-09 10:15:58'),
(1155, 'Live Performance & Concert Audio Mixing', 'live-performance-concert-audio-mixing', NULL, NULL, NULL, NULL, 103, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:16:35', '2025-03-09 10:16:35'),
(1156, 'Animated Business Presentations', 'animated-business-presentations', NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:17:21', '2025-03-09 10:17:21'),
(1157, 'Text-to-Speech (TTS) AI Voiceovers', 'text-to-speech-tts-ai-voiceovers', NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:17:35', '2025-03-09 10:17:35'),
(1158, 'AI Voice Cloning & Customization', 'ai-voice-cloning-customization', NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:18:01', '2025-03-09 10:18:01'),
(1159, 'Synthetic Voice for Virtual Assistants', 'synthetic-voice-for-virtual-assistants', NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:18:27', '2025-03-09 10:18:27'),
(1160, 'Multilingual AI Voice Solutions', 'multilingual-ai-voice-solutions', NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:19:01', '2025-03-09 10:19:01'),
(1161, 'AI-Based IVR & Call Center Voices', 'ai-based-ivr-call-center-voices', NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:19:25', '2025-03-09 10:19:25'),
(1162, 'AI-Powered Voice Dubbing for Videos', 'ai-powered-voice-dubbing-for-videos', NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:19:52', '2025-03-09 10:19:52'),
(1163, 'Automated Audio Ad Creation', 'automated-audio-ad-creation', NULL, NULL, NULL, NULL, 104, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:20:14', '2025-03-09 10:20:14'),
(1164, 'Noise & Hiss Reduction', 'noise-hiss-reduction', NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:21:13', '2025-03-09 10:21:13'),
(1165, 'Echo & Reverb Removal', 'echo-reverb-removal', NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:22:34', '2025-03-09 10:22:34'),
(1166, 'Old Recording & Cassette Restoration', 'old-recording-cassette-restoration', NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:23:48', '2025-03-09 10:23:48'),
(1167, 'Volume & Clarity Boosting', 'volume-clarity-boosting', NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:24:48', '2025-03-09 10:24:48'),
(1168, 'Distorted Audio Repair', 'distorted-audio-repair', NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:25:57', '2025-03-09 10:25:57'),
(1169, 'Audio Synchronization with Video', 'audio-synchronization-with-video', NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:26:21', '2025-03-09 10:26:21'),
(1170, 'Forensic & Legal Audio Enhancement', 'forensic-legal-audio-enhancement', NULL, NULL, NULL, NULL, 105, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:26:44', '2025-03-09 10:26:44'),
(1171, 'Custom DJ Drops with Sound Effects', 'custom-dj-drops-with-sound-effects', NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:28:15', '2025-03-09 10:28:15'),
(1172, 'Radio Station Identifiers & Jingles', 'radio-station-identifiers-jingles', NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:28:36', '2025-03-09 10:28:36'),
(1173, 'Club & Event DJ Intros', 'club-event-dj-intros', NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:29:25', '2025-03-09 10:29:25'),
(1174, 'Hype Voiceovers & Crowd Sound Effects', 'hype-voiceovers-crowd-sound-effects', NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:29:50', '2025-03-09 10:29:50'),
(1176, 'EDM & Hip-Hop DJ Taglines', 'edm-hip-hop-dj-taglines', NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:30:15', '2025-03-09 10:30:15'),
(1178, 'Podcast & YouTube Channel Audio Branding', 'podcast-youtube-channel-audio-branding', NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:30:37', '2025-03-09 10:30:37'),
(1179, 'Power Intros & Sweepers', 'power-intros-sweepers', NULL, NULL, NULL, NULL, 106, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:31:02', '2025-03-09 10:31:02'),
(1180, 'Noise Reduction & Audio Cleanup', 'noise-reduction-audio-cleanup', NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:31:57', '2025-03-09 10:31:57'),
(1181, 'Episode Structuring & Audio Mixing', 'episode-structuring-audio-mixing', NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:32:20', '2025-03-09 10:32:20'),
(1182, 'Intros, Outros & Background Music', 'intros-outros-background-music', NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:32:38', '2025-03-09 10:32:38'),
(1183, 'Voice Leveling & Equalization', 'voice-leveling-equalization', NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:33:00', '2025-03-09 10:33:00'),
(1184, 'Podcast Transcription & Subtitling', 'podcast-transcription-subtitling', NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:33:25', '2025-03-09 10:33:25'),
(1185, 'Startup & Product Pitch Videos', 'startup-product-pitch-videos', NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:33:26', '2025-03-09 10:33:26'),
(1187, 'Ad & Sponsorship Integration', 'ad-sponsorship-integration', NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:33:43', '2025-03-09 10:33:43'),
(1188, 'Podcast Distribution & Metadata Optimization', 'podcast-distribution-metadata-optimization', NULL, NULL, NULL, NULL, 99, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:34:01', '2025-03-09 10:34:01'),
(1189, 'TV & Radio Commercial Voice Overs', 'tv-radio-commercial-voice-overs', NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:34:52', '2025-03-09 10:34:52'),
(1190, 'Corporate & Business Narration', 'corporate-business-narration', NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:35:12', '2025-03-09 10:35:12'),
(1191, 'Software & App Explainer Videos', 'software-app-explainer-videos', NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:35:42', '2025-03-09 10:35:42'),
(1192, 'Character & Animation Voice Acting', 'character-animation-voice-acting', NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:35:48', '2025-03-09 10:35:48'),
(1193, 'IVR & Phone System Recordings', 'ivr-phone-system-recordings', NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:36:10', '2025-03-09 10:36:10'),
(1194, 'Video Game & App Voice Acting', 'video-game-app-voice-acting', NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:36:35', '2025-03-09 10:36:35'),
(1195, 'Multilingual & Accent Voice Overs', 'multilingual-accent-voice-overs', NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:36:55', '2025-03-09 10:36:55'),
(1196, '2D & 3D Explainer Videos', '2d-3d-explainer-videos', NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:37:00', '2025-03-09 10:37:00'),
(1197, 'YouTube & Social Media Voice Narration', 'youtube-social-media-voice-narration', NULL, NULL, NULL, NULL, 98, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:37:15', '2025-03-09 10:37:15'),
(1198, 'Healthcare & Medical Explainers', 'healthcare-medical-explainers', NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:38:19', '2025-03-09 10:38:19'),
(1199, 'Financial & Crypto Explainer Videos', 'financial-crypto-explainer-videos', NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:39:15', '2025-03-09 10:39:15'),
(1200, 'Real Estate & Property Marketing Explainers', 'real-estate-property-marketing-explainers', NULL, NULL, NULL, NULL, 45, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:39:53', '2025-03-09 10:39:53'),
(1201, 'Startup Business Plan Development', 'startup-business-plan-development', NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:41:44', '2025-03-09 10:41:44'),
(1202, 'Investor & Funding Proposal Plans', 'investor-funding-proposal-plans', NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:42:15', '2025-03-09 10:42:15'),
(1203, 'Franchise Business Plans', 'franchise-business-plans', NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:42:39', '2025-03-09 10:42:39'),
(1204, 'Industry & Competitor Analysis', 'industry-competitor-analysis', NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:43:04', '2025-03-09 10:43:04'),
(1206, 'Business Expansion & Growth Plans', 'business-expansion-growth-plans', NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:43:15', '2025-03-09 10:43:15'),
(1207, 'Customer Demographics & Target Audience Research', 'customer-demographics-target-audience-research', NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:43:38', '2025-03-09 10:43:38'),
(1209, 'SBA & Bank Loan Business Plans', 'sba-bank-loan-business-plans', NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:43:39', '2025-03-09 10:43:39'),
(1210, 'Pitch Deck & Presentation Creation', 'pitch-deck-presentation-creation', NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:44:04', '2025-03-09 10:44:04');
INSERT INTO `categorys` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `commission`, `fixcommission`, `product_sell_qty`, `getAmount`, `sort_order`, `file`, `status`, `speacial_status`, `mobile_view_class`, `keyword`, `percentage_amt`, `created_at`, `updated_at`) VALUES
(1211, 'Trend Analysis & Consumer Behavior Insights', 'trend-analysis-consumer-behavior-insights', NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:44:06', '2025-03-09 10:44:06'),
(1213, 'Market & Competitive Analysis Reports', 'market-competitive-analysis-reports', NULL, NULL, NULL, NULL, 82, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:44:27', '2025-03-09 10:44:27'),
(1214, 'SWOT Analysis & Strategic Planning', 'swot-analysis-strategic-planning', NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:44:46', '2025-03-09 10:44:46'),
(1216, 'Feasibility Studies for New Businesses', 'feasibility-studies-for-new-businesses', NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:45:34', '2025-03-09 10:45:34'),
(1218, 'Personal Financial Planning', 'personal-financial-planning', NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:45:38', '2025-03-09 10:45:38'),
(1219, 'Business Financial Strategy', 'business-financial-strategy', NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:46:03', '2025-03-09 10:46:03'),
(1220, 'Budgeting & Forecasting', 'budgeting-forecasting', NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:46:29', '2025-03-09 10:46:29'),
(1221, 'Product & Service Demand Research', 'product-service-demand-research', NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:46:30', '2025-03-09 10:46:30'),
(1223, 'Financial Risk Assessment', 'financial-risk-assessment', NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:46:59', '2025-03-09 10:46:59'),
(1224, 'Survey Design & Data Collection', 'survey-design-data-collection', NULL, NULL, NULL, NULL, 85, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:47:20', '2025-03-09 10:47:20'),
(1226, 'Profitability & Cost Analysis', 'profitability-cost-analysis', NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:47:29', '2025-03-09 10:47:29'),
(1227, 'Retirement & Wealth Planning', 'retirement-wealth-planning', NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:47:48', '2025-03-09 10:47:48'),
(1228, 'Debt Management & Restructuring', 'debt-management-restructuring', NULL, NULL, NULL, NULL, 83, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:48:08', '2025-03-09 10:48:08'),
(1233, 'Company Formation (LLC, Corporation, Sole Proprietorship)', 'company-formation-llc-corporation-sole-proprietorship-', NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:50:28', '2025-03-09 10:50:28'),
(1234, 'Trademark & Copyright Registration', 'trademark-copyright-registration', NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:50:53', '2025-03-09 10:50:53'),
(1235, 'Business Licensing & Permits', 'business-licensing-permits', NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:51:19', '2025-03-09 10:51:19'),
(1236, 'Storytelling & Narrative Writing', 'storytelling-narrative-writing', NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:51:34', '2025-03-09 10:51:34'),
(1238, 'Contract Drafting & Legal Document Review', 'contract-drafting-legal-document-review', NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:51:39', '2025-03-09 10:51:39'),
(1239, 'Partnership & Shareholder Agreements', 'partnership-shareholder-agreements', NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:52:03', '2025-03-09 10:52:03'),
(1240, 'Compliance & Regulatory Consultation', 'compliance-regulatory-consultation', NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:52:25', '2025-03-09 10:52:25'),
(1241, 'eBook & Ghostwriting', 'ebook-ghostwriting', NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:52:30', '2025-03-09 10:52:30'),
(1243, 'Business Name & Branding Registration', 'business-name-branding-registration', NULL, NULL, NULL, NULL, 86, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:52:49', '2025-03-09 10:52:49'),
(1244, 'Poetry & Lyrics Writing', 'poetry-lyrics-writing', NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:53:12', '2025-03-09 10:53:12'),
(1246, 'Daily & Monthly Bookkeeping Services', 'daily-monthly-bookkeeping-services', NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:53:44', '2025-03-09 10:53:44'),
(1247, 'Accounts Payable & Receivable Management', 'accounts-payable-receivable-management', NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:54:06', '2025-03-09 10:54:06'),
(1248, 'Scriptwriting for Films, Shows & YouTube', 'scriptwriting-for-films-shows-youtube', NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:54:24', '2025-03-09 10:54:24'),
(1255, 'Payroll Processing & Salary Management', 'payroll-processing-salary-management', NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:55:48', '2025-03-09 10:55:48'),
(1256, 'Profit & Loss (P&L) Reporting', 'profit-loss-p-l-reporting', NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:56:13', '2025-03-09 10:56:13'),
(1257, 'QuickBooks & Xero Accounting Services', 'quickbooks-xero-accounting-services', NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:56:40', '2025-03-09 10:56:40'),
(1258, 'Cash Flow Management & Forecasting', 'cash-flow-management-forecasting', NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:57:06', '2025-03-09 10:57:06'),
(1259, 'Financial Statement Preparation', 'financial-statement-preparation', NULL, NULL, NULL, NULL, 87, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:57:30', '2025-03-09 10:57:30'),
(1266, 'Business Tax Filing & Preparation', 'business-tax-filing-preparation', NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:58:25', '2025-03-09 10:58:25'),
(1267, 'Individual Tax Return Assistance', 'individual-tax-return-assistance', NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:58:43', '2025-03-09 10:58:43'),
(1268, 'Sales Tax & VAT Compliance', 'sales-tax-vat-compliance', NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:59:01', '2025-03-09 10:59:01'),
(1269, 'International & Offshore Tax Planning', 'international-offshore-tax-planning', NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:59:23', '2025-03-09 10:59:23'),
(1270, 'IRS Audit Support & Tax Dispute Resolution', 'irs-audit-support-tax-dispute-resolution', NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 10:59:41', '2025-03-09 10:59:41'),
(1271, 'Crypto & Digital Asset Tax Consultation', 'crypto-digital-asset-tax-consultation', NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:00:05', '2025-03-09 11:00:05'),
(1272, 'Tax Deduction & Credit Optimization', 'tax-deduction-credit-optimization', NULL, NULL, NULL, NULL, 88, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:00:22', '2025-03-09 11:00:22'),
(1273, 'Children\'s Book Writing', 'children-s-book-writing', NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:02:41', '2025-03-09 11:02:41'),
(1275, 'Stock Market & Portfolio Investment Strategy', 'stock-market-portfolio-investment-strategy', NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:02:45', '2025-03-09 11:02:45'),
(1276, 'Real Estate Investment Planning', 'real-estate-investment-planning', NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:03:09', '2025-03-09 11:03:09'),
(1277, 'Comedy & Satire Writing', 'comedy-satire-writing', NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:03:28', '2025-03-09 11:03:28'),
(1279, 'Cryptocurrency & NFT Investment Consulting', 'cryptocurrency-nft-investment-consulting', NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:03:31', '2025-03-09 11:03:31'),
(1280, 'Mutual Funds & ETF Investment Advice', 'mutual-funds-etf-investment-advice', NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:04:07', '2025-03-09 11:04:07'),
(1281, 'Retirement Investment Strategies', 'retirement-investment-strategies', NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:04:37', '2025-03-09 11:04:37'),
(1282, 'Website & App Localization', 'website-app-localization', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:04:58', '2025-03-09 11:04:58'),
(1283, 'Private Equity & Venture Capital Consulting', 'private-equity-venture-capital-consulting', NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:04:58', '2025-03-09 11:04:58'),
(1285, 'Risk Assessment & Wealth Diversification', 'risk-assessment-wealth-diversification', NULL, NULL, NULL, NULL, 89, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:05:21', '2025-03-09 11:05:21'),
(1286, 'Multilingual SEO Content', 'multilingual-seo-content', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:05:46', '2025-03-09 11:05:46'),
(1288, 'Kickstarter & Indiegogo Campaign Strategy', 'kickstarter-indiegogo-campaign-strategy', NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:06:23', '2025-03-09 11:06:23'),
(1289, 'Business & Legal Document Translation', 'business-legal-document-translation', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:06:44', '2025-03-09 11:06:44'),
(1291, 'Crowdfunding Video & Pitch Deck Creation', 'crowdfunding-video-pitch-deck-creation', NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:06:50', '2025-03-09 11:06:50'),
(1292, 'Rewards & Perks Structuring', 'rewards-perks-structuring', NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:07:11', '2025-03-09 11:07:11'),
(1293, 'Marketing Material Translation', 'marketing-material-translation', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:07:23', '2025-03-09 11:07:23'),
(1295, 'Equity Crowdfunding Campaign Setup', 'equity-crowdfunding-campaign-setup', NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:07:35', '2025-03-09 11:07:35'),
(1296, 'Marketing & PR Strategy for Crowdfunding', 'marketing-pr-strategy-for-crowdfunding', NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:07:57', '2025-03-09 11:07:57'),
(1297, 'Community Engagement & Investor Relations', 'community-engagement-investor-relations', NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:08:20', '2025-03-09 11:08:20'),
(1311, 'Post-Campaign Fund Management', 'post-campaign-fund-management', NULL, NULL, NULL, NULL, 90, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:08:47', '2025-03-09 11:08:47'),
(1312, 'Certified Translation Services', 'certified-translation-services', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:09:39', '2025-03-09 11:09:39'),
(1314, 'Corporate & B2B Business Proposals', 'corporate-b2b-business-proposals', NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:09:40', '2025-03-09 11:09:40'),
(1315, 'Government & NGO Grant Proposals', 'government-ngo-grant-proposals', NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:10:04', '2025-03-09 11:10:04'),
(1316, 'Audio & Video Transcription & Subtitling', 'audio-video-transcription-subtitling', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:10:24', '2025-03-09 11:10:24'),
(1318, 'Game & Software Localization', 'game-software-localization', NULL, NULL, NULL, NULL, 35, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:10:55', '2025-03-09 11:10:55'),
(1320, 'Sales & Marketing Proposals', 'sales-marketing-proposals', NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:11:04', '2025-03-09 11:11:04'),
(1321, 'Strategic Partnership & Joint Venture Proposals', 'strategic-partnership-joint-venture-proposals', NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:11:28', '2025-03-09 11:11:28'),
(1322, 'Sponsorship & Endorsement Proposal Writing', 'sponsorship-endorsement-proposal-writing', NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:11:48', '2025-03-09 11:11:48'),
(1323, 'Proposal Editing & Proofreading', 'proposal-editing-proofreading', NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:12:12', '2025-03-09 11:12:12'),
(1324, 'Grammar & Spelling Correction', 'grammar-spelling-correction', NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:12:46', '2025-03-09 11:12:46'),
(1326, 'Custom RFP (Request for Proposal) Responses', 'custom-rfp-request-for-proposal-responses', NULL, NULL, NULL, NULL, 91, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:13:08', '2025-03-09 11:13:08'),
(1327, 'Structural & Developmental Editing', 'structural-developmental-editing', NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:13:41', '2025-03-09 11:13:41'),
(1328, 'Business Contracts & Agreements', 'business-contracts-agreements', NULL, NULL, NULL, NULL, 156, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:14:39', '2025-03-09 11:14:39'),
(1329, 'Intellectual Property & Trademark Guidance', 'intellectual-property-trademark-guidance', NULL, NULL, NULL, NULL, 156, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:15:02', '2025-03-09 11:15:02'),
(1330, 'Academic & Research Paper Editing', 'academic-research-paper-editing', NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:15:03', '2025-03-09 11:15:03'),
(1332, 'Employment & Labor Law Consulting', 'employment-labor-law-consulting', NULL, NULL, NULL, NULL, 156, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:15:23', '2025-03-09 11:15:23'),
(1333, 'Data Privacy & Compliance Consulting', 'data-privacy-compliance-consulting', NULL, NULL, NULL, NULL, 156, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:15:46', '2025-03-09 11:15:46'),
(1334, 'Business & Legal Document Proofreading', 'business-legal-document-proofreading', NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:15:55', '2025-03-09 11:15:55'),
(1336, 'Scaling & Expansion Planning', 'scaling-expansion-planning', NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:16:14', '2025-03-09 11:16:14'),
(1337, 'Competitive Market Analysis', 'competitive-market-analysis', NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:16:37', '2025-03-09 11:16:37'),
(1338, 'Business Process Optimization', 'business-process-optimization', NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:17:07', '2025-03-09 11:17:07'),
(1339, 'Manuscript Editing for Authors', 'manuscript-editing-for-authors', NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:17:13', '2025-03-09 11:17:13'),
(1341, 'Strategic Partnerships & Collaborations', 'strategic-partnerships-collaborations', NULL, NULL, NULL, NULL, 157, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:17:37', '2025-03-09 11:17:37'),
(1342, 'Digital & Social Media Marketing Strategies', 'digital-social-media-marketing-strategies', NULL, NULL, NULL, NULL, 158, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:18:05', '2025-03-09 11:18:05'),
(1343, 'Resume & Cover Letter Editing', 'resume-cover-letter-editing', NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:18:09', '2025-03-09 11:18:09'),
(1345, 'Brand Positioning & Awareness', 'brand-positioning-awareness', NULL, NULL, NULL, NULL, 158, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:18:36', '2025-03-09 11:18:36'),
(1346, 'Formatting & Style Guide Compliance', 'formatting-style-guide-compliance', NULL, NULL, NULL, NULL, 92, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:18:59', '2025-03-09 11:18:59'),
(1348, 'Performance Marketing & ROI Optimization', 'performance-marketing-roi-optimization', NULL, NULL, NULL, NULL, 158, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:19:10', '2025-03-09 11:19:10'),
(1349, 'Content & Influencer Marketing Guidance', 'content-influencer-marketing-guidance', NULL, NULL, NULL, NULL, 158, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:19:30', '2025-03-09 11:19:30'),
(1350, 'IT Infrastructure & Cloud Solutions', 'it-infrastructure-cloud-solutions', NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:20:14', '2025-03-09 11:20:14'),
(1351, 'Cybersecurity & Data Protection Strategies', 'cybersecurity-data-protection-strategies', NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:20:34', '2025-03-09 11:20:34'),
(1352, 'Software & SaaS Implementation Advice', 'software-saas-implementation-advice', NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:20:51', '2025-03-09 11:20:51'),
(1353, 'AI & Automation Solutions for Businesses', 'ai-automation-solutions-for-businesses', NULL, NULL, NULL, NULL, 160, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:21:09', '2025-03-09 11:21:09'),
(1354, 'Content Paraphrasing & Rewriting', 'content-paraphrasing-rewriting', NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:22:21', '2025-03-09 11:22:21'),
(1356, 'AI & Human Plagiarism Removal', 'ai-human-plagiarism-removal', NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:23:46', '2025-03-09 11:23:46'),
(1358, 'Citation & Reference Formatting', 'citation-reference-formatting', NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:30:08', '2025-03-09 11:30:08'),
(1360, 'Property Market Research & Analysis', 'property-market-research-analysis', NULL, NULL, NULL, NULL, 161, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:32:58', '2025-03-09 11:32:58'),
(1361, 'Academic & Research Paper Rewriting', 'academic-research-paper-rewriting', NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:33:43', '2025-03-09 11:33:43'),
(1363, 'Rental & Leasing Strategies', 'rental-leasing-strategies', NULL, NULL, NULL, NULL, 161, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:34:04', '2025-03-09 11:34:04'),
(1364, 'Commercial vs. Residential Investment Consulting', 'commercial-vs-residential-investment-consulting', NULL, NULL, NULL, NULL, 161, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:34:37', '2025-03-09 11:34:37'),
(1365, 'Real Estate Tax & Legal Compliance', 'real-estate-tax-legal-compliance', NULL, NULL, NULL, NULL, 161, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:34:59', '2025-03-09 11:34:59'),
(1366, 'B2B & B2C Sales Strategies', 'b2b-b2c-sales-strategies', NULL, NULL, NULL, NULL, 162, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:35:41', '2025-03-09 11:35:41'),
(1367, 'Lead Generation & Prospecting Techniques', 'lead-generation-prospecting-techniques', NULL, NULL, NULL, NULL, 162, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:36:06', '2025-03-09 11:36:06'),
(1368, 'High-Ticket Sales & Closing Deals', 'high-ticket-sales-closing-deals', NULL, NULL, NULL, NULL, 162, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:36:24', '2025-03-09 11:36:24'),
(1369, 'Negotiation & Persuasion Techniques', 'negotiation-persuasion-techniques', NULL, NULL, NULL, NULL, 162, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:36:42', '2025-03-09 11:36:42'),
(1370, 'Basic Video Cutting & Trimming', 'basic-video-cutting-trimming', NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:40:24', '2025-03-09 11:40:24'),
(1371, 'Advanced Editing (Color Grading, Transitions, VFX)', 'advanced-editing-color-grading-transitions-vfx-', NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:40:52', '2025-03-09 11:40:52'),
(1372, 'YouTube & Social Media Video Editing', 'youtube-social-media-video-editing', NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:41:16', '2025-03-09 11:41:16'),
(1373, 'Wedding & Event Video Editing', 'wedding-event-video-editing', NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:41:40', '2025-03-09 11:41:40'),
(1374, 'Corporate & Business Video Editing', 'corporate-business-video-editing', NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:42:00', '2025-03-09 11:42:00'),
(1375, 'Podcast & Interview Video Editing', 'podcast-interview-video-editing', NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:42:22', '2025-03-09 11:42:22'),
(1376, 'Cinematic & Documentary Editing', 'cinematic-documentary-editing', NULL, NULL, NULL, NULL, 42, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:42:59', '2025-03-09 11:42:59'),
(1377, 'Logo Animation & Kinetic Typography', 'logo-animation-kinetic-typography', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:43:59', '2025-03-09 11:43:59'),
(1378, '2D Motion Graphics & Infographics', '2d-motion-graphics-infographics', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:44:18', '2025-03-09 11:44:18'),
(1379, 'Animated Advertisements & Commercials', 'animated-advertisements-commercials', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:44:50', '2025-03-09 11:44:50'),
(1380, 'HUD & UI Motion Graphics', 'hud-ui-motion-graphics', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:45:08', '2025-03-09 11:45:08'),
(1381, 'Lower Thirds & Overlay Effects', 'lower-thirds-overlay-effects', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:45:25', '2025-03-09 11:45:25'),
(1382, 'Lottie Animations for Websites & Apps', 'lottie-animations-for-websites-apps', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:45:45', '2025-03-09 11:45:45'),
(1383, 'Animated Titles & Text Effects', 'animated-titles-text-effects', NULL, NULL, NULL, NULL, 36, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:46:03', '2025-03-09 11:46:03'),
(1384, 'Claymation & Handmade Stop Motion', 'claymation-handmade-stop-motion', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:47:47', '2025-03-09 11:47:47'),
(1385, 'Paper Cutout & Object Animation', 'paper-cutout-object-animation', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:48:07', '2025-03-09 11:48:07'),
(1386, 'Stop Motion for Product Marketing', 'stop-motion-for-product-marketing', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:48:42', '2025-03-09 11:48:42'),
(1387, 'Educational Stop Motion Videos', 'educational-stop-motion-videos', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:49:08', '2025-03-09 11:49:08'),
(1388, 'Mixed Media & Experimental Stop Motion', 'mixed-media-experimental-stop-motion', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:49:32', '2025-03-09 11:49:32'),
(1389, 'Frame-by-Frame Animation for Ads', 'frame-by-frame-animation-for-ads', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:49:54', '2025-03-09 11:49:54'),
(1390, 'Stop Motion for Social Media Content', 'stop-motion-for-social-media-content', NULL, NULL, NULL, NULL, 37, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:50:17', '2025-03-09 11:50:17'),
(1391, 'YouTube Channel Intro & Outro', 'youtube-channel-intro-outro', NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:51:14', '2025-03-09 11:51:14'),
(1392, 'Business & Brand Intro Videos', 'business-brand-intro-videos', NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:51:42', '2025-03-09 11:51:42'),
(1393, 'Podcast & Webinar Opening Clips', 'podcast-webinar-opening-clips', NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:52:18', '2025-03-09 11:52:18'),
(1394, 'Cinematic Logo Reveal Animations', 'cinematic-logo-reveal-animations', NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:52:46', '2025-03-09 11:52:46'),
(1395, 'Sports & Gaming Intro Videos', 'sports-gaming-intro-videos', NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:53:04', '2025-03-09 11:53:04'),
(1396, 'Lower Thirds & Animated Name Tags', 'lower-thirds-animated-name-tags', NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:53:25', '2025-03-09 11:53:25'),
(1397, 'Animated Call-to-Action (CTA) Outros', 'animated-call-to-action-cta-outros', NULL, NULL, NULL, NULL, 38, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:53:48', '2025-03-09 11:53:48'),
(1398, 'E-Commerce & Amazon Product Videos', 'e-commerce-amazon-product-videos', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:55:07', '2025-03-09 11:55:07'),
(1399, 'Social Media Promotional Ads', 'social-media-promotional-ads', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:55:29', '2025-03-09 11:55:29'),
(1400, 'Crowdfunding & Kickstarter Campaign Videos', 'crowdfunding-kickstarter-campaign-videos', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:55:47', '2025-03-09 11:55:47'),
(1401, 'Fashion & Apparel Promotional Videos', 'fashion-apparel-promotional-videos', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:56:06', '2025-03-09 11:56:06'),
(1402, 'Beauty & Skincare Product Demos', 'beauty-skincare-product-demos', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:56:28', '2025-03-09 11:56:28'),
(1403, 'Tech & Gadget Showcase Videos', 'tech-gadget-showcase-videos', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:56:48', '2025-03-09 11:56:48'),
(1404, 'Unboxing & Review Style Videos', 'unboxing-review-style-videos', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:57:08', '2025-03-09 11:57:08'),
(1405, 'Lyric Video Creation', 'lyric-video-creation', NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:57:52', '2025-03-09 11:57:52'),
(1406, 'Animated Music Videos', 'animated-music-videos', NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:58:16', '2025-03-09 11:58:16'),
(1407, 'Live Performance Video Editing', 'live-performance-video-editing', NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:58:36', '2025-03-09 11:58:36'),
(1408, 'Visual Effects (VFX) for Music Videos', 'visual-effects-vfx-for-music-videos', NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:58:57', '2025-03-09 11:58:57'),
(1409, 'Cinematic & Storytelling Music Videos', 'cinematic-storytelling-music-videos', NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:59:18', '2025-03-09 11:59:18'),
(1410, 'Choreographed Dance & Performance Videos', 'choreographed-dance-performance-videos', NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:59:37', '2025-03-09 11:59:37'),
(1411, '3D & Experimental Music Video Production', '3d-experimental-music-video-production', NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 11:59:54', '2025-03-09 11:59:54'),
(1412, 'Vlog Editing & Storytelling', 'vlog-editing-storytelling', NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:00:46', '2025-03-09 12:00:46'),
(1413, 'Gaming & Reaction Video Editing', 'gaming-reaction-video-editing', NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:01:04', '2025-03-09 12:01:04'),
(1414, 'ASMR & Relaxation Video Editing', 'asmr-relaxation-video-editing', NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:01:22', '2025-03-09 12:01:22'),
(1415, 'Challenge & Trend Video Editing', 'challenge-trend-video-editing', NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:01:41', '2025-03-09 12:01:41'),
(1416, 'YouTube Shorts & TikTok Video Creation', 'youtube-shorts-tiktok-video-creation', NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:01:59', '2025-03-09 12:01:59'),
(1417, 'Educational & How-To Video Editing', 'educational-how-to-video-editing', NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:02:14', '2025-03-09 12:02:14'),
(1418, 'Monetization & SEO-Optimized Video Formatting', 'monetization-seo-optimized-video-formatting', NULL, NULL, NULL, NULL, 41, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:02:32', '2025-03-09 12:02:32'),
(1419, 'Resume & Cover Letter Rewriting', 'resume-cover-letter-rewriting', NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:04:45', '2025-03-09 12:04:45'),
(1420, 'SEO Rewriting for Higher Rankings', 'seo-rewriting-for-higher-rankings', NULL, NULL, NULL, NULL, 93, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:05:07', '2025-03-09 12:05:07'),
(1421, 'Legal & Certified Document Translation', 'legal-certified-document-translation', NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:06:36', '2025-03-09 12:06:36'),
(1422, 'Financial & Business Document Translation', 'financial-business-document-translation', NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:07:19', '2025-03-09 12:07:19'),
(1423, 'Medical & Healthcare Translation', 'medical-healthcare-translation', NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:07:42', '2025-03-09 12:07:42'),
(1424, 'Technical & Engineering Translation', 'technical-engineering-translation', NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:08:19', '2025-03-09 12:08:19'),
(1425, 'eBook & Manuscript Translation', 'ebook-manuscript-translation', NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:08:43', '2025-03-09 12:08:43'),
(1426, 'Patent & Intellectual Property Translation', 'patent-intellectual-property-translation', NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:09:11', '2025-03-09 12:09:11'),
(1427, 'Academic Paper & Thesis Translation', 'academic-paper-thesis-translation', NULL, NULL, NULL, NULL, 94, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:09:32', '2025-03-09 12:09:32'),
(1428, 'Industry Research & Data Analysis', 'industry-research-data-analysis', NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:10:26', '2025-03-09 12:10:26'),
(1431, 'Thought Leadership Whitepapers', 'thought-leadership-whitepapers', NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:10:48', '2025-03-09 12:10:48'),
(1437, 'Blockchain & Crypto Whitepapers', 'blockchain-crypto-whitepapers', NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:11:10', '2025-03-09 12:11:10'),
(1438, 'Technology & SaaS Case Studies', 'technology-saas-case-studies', NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:11:35', '2025-03-09 12:11:35'),
(1439, 'E-Commerce & Business Case Studies', 'e-commerce-business-case-studies', NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:11:59', '2025-03-09 12:11:59'),
(1440, 'Financial & Investment Whitepapers', 'financial-investment-whitepapers', NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:12:26', '2025-03-09 12:12:26'),
(1441, 'Market Trend Reports & Analysis', 'market-trend-reports-analysis', NULL, NULL, NULL, NULL, 95, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-09 12:12:57', '2025-03-09 12:12:57'),
(1445, 'Public & Private Blockchain Development', 'public-private-blockchain-development', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 07:23:28', '2025-03-10 07:23:28'),
(1447, 'Custom Blockchain Protocols', 'custom-blockchain-protocols', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 08:09:23', '2025-03-10 08:09:23'),
(1449, 'Enterprise Blockchain Solutions', 'enterprise-blockchain-solutions', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 08:10:53', '2025-03-10 08:10:53'),
(1451, 'Interoperability & Cross-Chain Solutions', 'interoperability-cross-chain-solutions', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 08:11:20', '2025-03-10 08:11:20'),
(1453, 'DeFi & NFT Smart Contract Development', 'defi-nft-smart-contract-development', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 08:11:43', '2025-03-10 08:11:43'),
(1455, 'Security Auditing & Code Review', 'security-auditing-code-review', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 08:12:21', '2025-03-10 08:12:21'),
(1457, 'User Authentication & Wallet Integration', 'user-authentication-wallet-integration', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 08:12:54', '2025-03-10 08:12:54'),
(1459, 'NFT Marketplaces & Gaming dApps', 'nft-marketplaces-gaming-dapps', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 08:13:31', '2025-03-10 08:13:31'),
(1468, 'Listing on Crypto Exchange', 'listing-on-crypto-exchange', NULL, NULL, NULL, NULL, 138, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2025-03-10 08:15:30', '2025-03-10 08:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `categorys_backup`
--

CREATE TABLE `categorys_backup` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `commission` int(11) DEFAULT NULL,
  `fixcommission` varchar(255) DEFAULT NULL,
  `product_sell_qty` int(11) DEFAULT NULL,
  `getAmount` decimal(10,5) DEFAULT NULL COMMENT 'Admin get commission amount ',
  `sort_order` int(11) DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `speacial_status` int(11) DEFAULT NULL,
  `mobile_view_class` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `percentage_amt` int(11) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys_backup`
--

INSERT INTO `categorys_backup` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `commission`, `fixcommission`, `product_sell_qty`, `getAmount`, `sort_order`, `file`, `status`, `speacial_status`, `mobile_view_class`, `keyword`, `percentage_amt`, `created_at`, `updated_at`) VALUES
(1, 'Programming & Tech', 'programming-tech', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:23:22', '2024-10-19 09:23:22'),
(2, 'Graphics & Design', 'graphics-design', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:23:33', '2024-10-19 09:23:33'),
(3, 'Digital Marketing', 'digital-marketing', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:23:43', '2024-10-19 09:23:43'),
(4, 'Video & Animation', 'video-animation', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:23:55', '2024-10-19 09:23:55'),
(5, 'Writing & Translation', 'writing-translation', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:24:05', '2024-10-19 09:24:05'),
(6, 'Audio stuff', 'audio-stuff', '', 'null', 'null', 'null', 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-19 09:24:17', '2024-10-29 12:18:46'),
(7, 'Business Services', 'business-services', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:24:30', '2024-10-19 09:24:30'),
(8, 'Consulting', 'consulting', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:24:39', '2024-10-19 09:24:39'),
(9, 'AI Services', 'ai-services', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:24:49', '2024-10-19 09:24:49'),
(10, 'Personal Growth', 'personal-growth', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:24:58', '2024-10-19 09:24:58'),
(11, 'products /services', 'products-services', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:56:59', '2024-10-19 09:56:59'),
(12, 'Web & App Design', 'web-app-design', '', 'null', 'null', 'null', 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-19 09:57:26', '2024-10-29 09:59:17'),
(13, 'courses', 'courses', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 09:57:58', '2024-10-19 09:57:58'),
(14, 'App Design', 'app-design', '', 'null', 'null', 'null', 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-19 10:00:40', '2024-10-29 10:00:30'),
(15, 'UX Design', 'ux-design', '', 'null', 'null', 'null', 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-19 10:01:29', '2024-10-29 10:01:01'),
(16, 'Website Development', 'website-development', '', 'null', 'null', 'null', 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-19 10:01:57', '2024-10-29 10:15:52'),
(17, 'Website Maintenance', 'website-maintenance', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:02:21', '2024-10-19 10:02:21'),
(18, 'AI Development', 'ai-development', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:02:36', '2024-10-19 10:02:36'),
(19, 'Chatbot Development', 'chatbot-development', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:02:50', '2024-10-19 10:02:50'),
(20, 'Game Development', 'game-development', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:03:11', '2024-10-19 10:03:11'),
(21, 'Mobile App Development', 'mobile-app-development', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:03:25', '2024-10-19 10:03:25'),
(22, 'Cloud & Cybersecurity', 'cloud-cybersecurity', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:03:39', '2024-10-19 10:03:39'),
(23, 'Data Science & ML', 'data-science-ml', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:03:54', '2024-10-19 10:03:54'),
(24, 'Software Development', 'software-development', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:04:06', '2024-10-19 10:04:06'),
(25, 'Website Design', 'website-design', '', 'null', 'null', 'null', 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-19 10:04:42', '2024-10-29 10:01:25'),
(26, 'Landing Pages', 'landing-pages', '', 'null', 'null', 'null', 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-19 10:05:11', '2024-10-19 13:16:28'),
(28, 'Logo & Brand Identity', 'logo-brand-identity', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:05:30', '2024-10-19 10:05:30'),
(29, 'Icon Design', 'icon-design', '', 'null', 'null', 'null', 12, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-19 10:05:41', '2024-10-29 10:01:47'),
(30, 'Art & Illustration', 'art-illustration', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-19 10:05:44', '2024-10-19 10:05:44'),
(31, 'Product & Gaming', 'product-gaming', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:03:59', '2024-10-29 10:03:59'),
(32, 'Print Design', 'print-design', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:04:15', '2024-10-29 10:04:15'),
(33, 'Visual Design', 'visual-design', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:04:33', '2024-10-29 10:04:33'),
(34, 'Marketing Design', 'marketing-design', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:04:48', '2024-10-29 10:04:48'),
(35, 'Packaging & Covers', 'packaging-covers', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:05:06', '2024-10-29 10:05:06'),
(36, 'Architecture & Building Design', 'architecture-building-design', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:05:22', '2024-10-29 10:05:22'),
(37, 'Fashion & Merchandise', 'fashion-merchandise', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:05:42', '2024-10-29 10:05:42'),
(38, '3D Design', '3d-design', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:05:56', '2024-10-29 10:05:56'),
(39, 'Website Platforms', 'website-platforms', '', 'null', 'null', 'null', 1, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, 'null', 0, '2024-10-29 10:14:41', '2024-10-29 10:16:25'),
(40, 'Business Websites', 'business-websites', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:16:48', '2024-10-29 10:16:48'),
(41, 'E-Commerce Development', 'e-commerce-development', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:17:05', '2024-10-29 10:17:05'),
(50, 'Landing Page', 'landing-page', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:33:40', '2024-10-29 10:33:40'),
(51, 'Dropshipping Websites', 'dropshipping-websites', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:33:57', '2024-10-29 10:33:57'),
(52, 'Build a Complete Website', 'build-a-complete-website', NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:34:30', '2024-10-29 10:34:30'),
(53, 'WordPress', 'wordpress', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:35:13', '2024-10-29 10:35:13'),
(54, 'Shopify', 'shopify', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:35:48', '2024-10-29 10:35:48'),
(55, 'Wix', 'wix', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:36:04', '2024-10-29 10:36:04'),
(56, 'Custom Websites', 'custom-websites', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:36:19', '2024-10-29 10:36:19'),
(57, 'GoDaddy', 'godaddy', NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:36:36', '2024-10-29 10:36:36'),
(58, 'Website Customization', 'website-customization', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:37:16', '2024-10-29 10:37:16'),
(59, 'Backup & Migration', 'backup-migration', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:37:29', '2024-10-29 10:37:29'),
(60, 'Speed Optimization', 'speed-optimization', NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:37:42', '2024-10-29 10:37:42'),
(61, 'AI Chatbot', 'ai-chatbot', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:38:08', '2024-10-29 10:38:08'),
(62, 'AI Applications', 'ai-applications', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:38:32', '2024-10-29 10:38:32'),
(63, 'AI Integrations', 'ai-integrations', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:39:42', '2024-10-29 10:39:42'),
(64, 'AI Agents', 'ai-agents', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:39:57', '2024-10-29 10:39:57'),
(65, 'AI Fine-Tuning', 'ai-fine-tuning', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:40:10', '2024-10-29 10:40:10'),
(66, 'OpenAI GPT Storenew', 'openai-gpt-storenew', NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:40:26', '2024-10-29 10:40:26'),
(67, 'Discord Chat Service', 'discord-chat-service', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:40:46', '2024-10-29 10:40:46'),
(68, 'Telegram Chat Platform', 'telegram-chat-platform', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:41:01', '2024-10-29 10:41:01'),
(69, 'TikTok Short-Video App', 'tiktok-short-video-app', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:41:18', '2024-10-29 10:41:18'),
(70, 'Facebook Chat Service', 'facebook-chat-service', NULL, NULL, NULL, NULL, 19, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:41:34', '2024-10-29 10:41:34'),
(71, 'Player Experience and Feedback', 'player-experience-and-feedback', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:41:55', '2024-10-29 10:41:55'),
(72, 'Games for PC', 'games-for-pc', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:42:08', '2024-10-29 10:42:08'),
(73, 'Smartphone Games', 'smartphone-games', NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:42:21', '2024-10-29 10:42:21'),
(74, 'Cross-Device Development', 'cross-device-development', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:44:01', '2024-10-29 10:44:01'),
(75, 'Android Mobile App Creation', 'android-mobile-app-creation', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:44:14', '2024-10-29 10:44:14'),
(77, 'iOS Mobile App Creation', 'ios-mobile-app-creation', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:44:29', '2024-10-29 10:44:29'),
(78, 'Web-Based App Development', 'web-based-app-development', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:44:41', '2024-10-29 10:44:41'),
(79, 'Mobile App Management', 'mobile-app-management', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:44:53', '2024-10-29 10:44:53'),
(80, 'VR and AR Solutions', 'vr-and-ar-solutions', NULL, NULL, NULL, NULL, 21, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:45:04', '2024-10-29 10:45:04'),
(81, 'Cloud Services', 'cloud-services', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:45:27', '2024-10-29 10:45:27'),
(82, 'DevOps Solutions', 'devops-solutions', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:45:39', '2024-10-29 10:45:39'),
(83, 'Cybersecurity Services', 'cybersecurity-services', NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:45:51', '2024-10-29 10:45:51'),
(84, 'ML Solutions', 'ml-solutions', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:46:06', '2024-10-29 10:46:06'),
(85, 'Computer-Based Vision', 'computer-based-vision', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:46:26', '2024-10-29 10:46:26'),
(91, 'Computer-Based Visions', 'computer-based-visions', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:46:57', '2024-10-29 10:46:57'),
(92, 'Deep Learning Models', 'deep-learning-models', NULL, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:47:14', '2024-10-29 10:47:14'),
(93, 'Web App Solutions', 'web-app-solutions', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:47:27', '2024-10-29 10:47:27'),
(94, 'PC Applications', 'pc-applications', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:47:44', '2024-10-29 10:47:44'),
(95, 'API Solutions and Integration', 'api-solutions-and-integration', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:47:55', '2024-10-29 10:47:55'),
(96, 'Database Systems', 'database-systems', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:48:07', '2024-10-29 10:48:07'),
(97, 'Script Development', 'script-development', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:48:20', '2024-10-29 10:48:20'),
(98, 'Browser Modules', 'browser-modules', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:48:30', '2024-10-29 10:48:30'),
(99, 'Quality Control and Review', 'quality-control-and-review', NULL, NULL, NULL, NULL, 24, NULL, NULL, NULL, NULL, 0, '', 1, NULL, NULL, NULL, NULL, '2024-10-29 10:48:49', '2024-10-29 10:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `year` varchar(4) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `institute_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companyprofilesettings`
--

CREATE TABLE `companyprofilesettings` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `phone_number` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` text NOT NULL,
  `about` text DEFAULT NULL,
  `founded_year` varchar(255) DEFAULT NULL,
  `revenue` decimal(15,2) DEFAULT NULL,
  `employee_count` int(11) DEFAULT NULL,
  `industry` varchar(255) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `currency` varchar(3) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `setup_charge` decimal(15,2) DEFAULT NULL,
  `transaction_fee` decimal(15,2) DEFAULT NULL,
  `other_charges` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companyprofilesettings`
--

INSERT INTO `companyprofilesettings` (`id`, `company_id`, `company_name`, `logo`, `address`, `city`, `state`, `country`, `postal_code`, `phone_number`, `email`, `phone`, `about`, `founded_year`, `revenue`, `employee_count`, `industry`, `timezone`, `currency`, `language`, `setup_charge`, `transaction_fee`, `other_charges`, `created_at`, `updated_at`) VALUES
(1, 0, 'Ekroybd', '/backend/upload/1711747306.png', 'islamabad pakistan', '[value-6]', '[value-7]', '[value-8]', '[value-9]', '0', 'admin@ekroybd.com', '017010000000', 'about us here', '0000', 0.00, 0, 'Ecommerce', '[value-17]', '[va', '[value-19]', 0.00, 10.00, '00.00', '2024-03-29 05:13:07', '2024-04-12 04:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `countrycode` char(3) NOT NULL,
  `countryname` varchar(200) NOT NULL,
  `code` char(2) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `countrycode`, `countryname`, `code`, `status`) VALUES
(1, 'ABW', 'Aruba', 'AW', 1),
(2, 'AFG', 'Afghanistan', 'AF', 1),
(3, 'AGO', 'Angola', 'AO', 1),
(4, 'AIA', 'Anguilla', 'AI', 1),
(5, 'ALA', 'Åland', 'AX', 1),
(6, 'ALB', 'Albania', 'AL', 1),
(7, 'AND', 'Andorra', 'AD', 1),
(8, 'ARE', 'United Arab Emirates', 'AE', 1),
(9, 'ARG', 'Argentina', 'AR', 1),
(10, 'ARM', 'Armenia', 'AM', 1),
(11, 'ASM', 'American Samoa', 'AS', 1),
(12, 'ATA', 'Antarctica', 'AQ', 1),
(13, 'ATF', 'French Southern Territories', 'TF', 1),
(14, 'ATG', 'Antigua and Barbuda', 'AG', 1),
(15, 'AUS', 'Australia', 'AU', 1),
(16, 'AUT', 'Austria', 'AT', 1),
(17, 'AZE', 'Azerbaijan', 'AZ', 1),
(18, 'BDI', 'Burundi', 'BI', 1),
(19, 'BEL', 'Belgium', 'BE', 1),
(20, 'BEN', 'Benin', 'BJ', 1),
(21, 'BES', 'Bonaire', 'BQ', 1),
(22, 'BFA', 'Burkina Faso', 'BF', 1),
(23, 'BGD', 'Bangladesh', 'BD', 1),
(24, 'BGR', 'Bulgaria', 'BG', 1),
(25, 'BHR', 'Bahrain', 'BH', 1),
(26, 'BHS', 'Bahamas', 'BS', 1),
(27, 'BIH', 'Bosnia and Herzegovina', 'BA', 1),
(28, 'BLM', 'Saint Barthélemy', 'BL', 1),
(29, 'BLR', 'Belarus', 'BY', 1),
(30, 'BLZ', 'Belize', 'BZ', 1),
(31, 'BMU', 'Bermuda', 'BM', 1),
(32, 'BOL', 'Bolivia', 'BO', 1),
(33, 'BRA', 'Brazil', 'BR', 1),
(34, 'BRB', 'Barbados', 'BB', 1),
(35, 'BRN', 'Brunei', 'BN', 1),
(36, 'BTN', 'Bhutan', 'BT', 1),
(37, 'BVT', 'Bouvet Island', 'BV', 1),
(38, 'BWA', 'Botswana', 'BW', 1),
(39, 'CAF', 'Central African Republic', 'CF', 1),
(40, 'CAN', 'Canada', 'CA', 1),
(41, 'CCK', 'Cocos [Keeling] Islands', 'CC', 1),
(42, 'CHE', 'Switzerland', 'CH', 1),
(43, 'CHL', 'Chile', 'CL', 1),
(44, 'CHN', 'China', 'CN', 1),
(45, 'CIV', 'Ivory Coast', 'CI', 1),
(46, 'CMR', 'Cameroon', 'CM', 1),
(47, 'COD', 'Democratic Republic of the Congo', 'CD', 1),
(48, 'COG', 'Republic of the Congo', 'CG', 1),
(49, 'COK', 'Cook Islands', 'CK', 1),
(50, 'COL', 'Colombia', 'CO', 1),
(51, 'COM', 'Comoros', 'KM', 1),
(52, 'CPV', 'Cape Verde', 'CV', 1),
(53, 'CRI', 'Costa Rica', 'CR', 1),
(54, 'CUB', 'Cuba', 'CU', 1),
(55, 'CUW', 'Curacao', 'CW', 1),
(56, 'CXR', 'Christmas Island', 'CX', 1),
(57, 'CYM', 'Cayman Islands', 'KY', 1),
(58, 'CYP', 'Cyprus', 'CY', 1),
(59, 'CZE', 'Czech Republic', 'CZ', 1),
(60, 'DEU', 'Germany', 'DE', 1),
(61, 'DJI', 'Djibouti', 'DJ', 1),
(62, 'DMA', 'Dominica', 'DM', 1),
(63, 'DNK', 'Denmark', 'DK', 1),
(64, 'DOM', 'Dominican Republic', 'DO', 1),
(65, 'DZA', 'Algeria', 'DZ', 1),
(66, 'ECU', 'Ecuador', 'EC', 1),
(67, 'EGY', 'Egypt', 'EG', 1),
(68, 'ERI', 'Eritrea', 'ER', 1),
(69, 'ESH', 'Western Sahara', 'EH', 1),
(70, 'ESP', 'Spain', 'ES', 1),
(71, 'EST', 'Estonia', 'EE', 1),
(72, 'ETH', 'Ethiopia', 'ET', 1),
(73, 'FIN', 'Finland', 'FI', 1),
(74, 'FJI', 'Fiji', 'FJ', 1),
(75, 'FLK', 'Falkland Islands', 'FK', 1),
(76, 'FRA', 'France', 'FR', 1),
(77, 'FRO', 'Faroe Islands', 'FO', 1),
(78, 'FSM', 'Micronesia', 'FM', 1),
(79, 'GAB', 'Gabon', 'GA', 1),
(80, 'GBR', 'United Kingdom', 'GB', 1),
(81, 'GEO', 'Georgia', 'GE', 1),
(82, 'GGY', 'Guernsey', 'GG', 1),
(83, 'GHA', 'Ghana', 'GH', 1),
(84, 'GIB', 'Gibraltar', 'GI', 1),
(85, 'GIN', 'Guinea', 'GN', 1),
(86, 'GLP', 'Guadeloupe', 'GP', 1),
(87, 'GMB', 'Gambia', 'GM', 1),
(88, 'GNB', 'Guinea-Bissau', 'GW', 1),
(89, 'GNQ', 'Equatorial Guinea', 'GQ', 1),
(90, 'GRC', 'Greece', 'GR', 1),
(91, 'GRD', 'Grenada', 'GD', 1),
(92, 'GRL', 'Greenland', 'GL', 1),
(93, 'GTM', 'Guatemala', 'GT', 1),
(94, 'GUF', 'French Guiana', 'GF', 1),
(95, 'GUM', 'Guam', 'GU', 1),
(96, 'GUY', 'Guyana', 'GY', 1),
(97, 'HKG', 'Hong Kong', 'HK', 1),
(98, 'HMD', 'Heard Island and McDonald Islands', 'HM', 1),
(99, 'HND', 'Honduras', 'HN', 1),
(100, 'HRV', 'Croatia', 'HR', 1),
(101, 'HTI', 'Haiti', 'HT', 1),
(102, 'HUN', 'Hungary', 'HU', 1),
(103, 'IDN', 'Indonesia', 'ID', 1),
(104, 'IMN', 'Isle of Man', 'IM', 1),
(105, 'IND', 'India', 'IN', 1),
(106, 'IOT', 'British Indian Ocean Territory', 'IO', 1),
(107, 'IRL', 'Ireland', 'IE', 1),
(108, 'IRN', 'Iran', 'IR', 1),
(109, 'IRQ', 'Iraq', 'IQ', 1),
(110, 'ISL', 'Iceland', 'IS', 1),
(111, 'ISR', 'Israel', 'IL', 1),
(112, 'ITA', 'Italy', 'IT', 1),
(113, 'JAM', 'Jamaica', 'JM', 1),
(114, 'JEY', 'Jersey', 'JE', 1),
(115, 'JOR', 'Jordan', 'JO', 1),
(116, 'JPN', 'Japan', 'JP', 1),
(117, 'KAZ', 'Kazakhstan', 'KZ', 1),
(118, 'KEN', 'Kenya', 'KE', 1),
(119, 'KGZ', 'Kyrgyzstan', 'KG', 1),
(120, 'KHM', 'Cambodia', 'KH', 1),
(121, 'KIR', 'Kiribati', 'KI', 1),
(122, 'KNA', 'Saint Kitts and Nevis', 'KN', 1),
(123, 'KOR', 'South Korea', 'KR', 1),
(124, 'KWT', 'Kuwait', 'KW', 1),
(125, 'LAO', 'Laos', 'LA', 1),
(126, 'LBN', 'Lebanon', 'LB', 1),
(127, 'LBR', 'Liberia', 'LR', 1),
(128, 'LBY', 'Libya', 'LY', 1),
(129, 'LCA', 'Saint Lucia', 'LC', 1),
(130, 'LIE', 'Liechtenstein', 'LI', 1),
(131, 'LKA', 'Sri Lanka', 'LK', 1),
(132, 'LSO', 'Lesotho', 'LS', 1),
(133, 'LTU', 'Lithuania', 'LT', 1),
(134, 'LUX', 'Luxembourg', 'LU', 1),
(135, 'LVA', 'Latvia', 'LV', 1),
(136, 'MAC', 'Macao', 'MO', 1),
(137, 'MAF', 'Saint Martin', 'MF', 1),
(138, 'MAR', 'Morocco', 'MA', 1),
(139, 'MCO', 'Monaco', 'MC', 1),
(140, 'MDA', 'Moldova', 'MD', 1),
(141, 'MDG', 'Madagascar', 'MG', 1),
(142, 'MDV', 'Maldives', 'MV', 1),
(143, 'MEX', 'Mexico', 'MX', 1),
(144, 'MHL', 'Marshall Islands', 'MH', 1),
(145, 'MKD', 'Macedonia', 'MK', 1),
(146, 'MLI', 'Mali', 'ML', 1),
(147, 'MLT', 'Malta', 'MT', 1),
(148, 'MMR', 'Myanmar [Burma]', 'MM', 1),
(149, 'MNE', 'Montenegro', 'ME', 1),
(150, 'MNG', 'Mongolia', 'MN', 1),
(151, 'MNP', 'Northern Mariana Islands', 'MP', 1),
(152, 'MOZ', 'Mozambique', 'MZ', 1),
(153, 'MRT', 'Mauritania', 'MR', 1),
(154, 'MSR', 'Montserrat', 'MS', 1),
(155, 'MTQ', 'Martinique', 'MQ', 1),
(156, 'MUS', 'Mauritius', 'MU', 1),
(157, 'MWI', 'Malawi', 'MW', 1),
(158, 'MYS', 'Malaysia', 'MY', 1),
(159, 'MYT', 'Mayotte', 'YT', 1),
(160, 'NAM', 'Namibia', 'NA', 1),
(161, 'NCL', 'New Caledonia', 'NC', 1),
(162, 'NER', 'Niger', 'NE', 1),
(163, 'NFK', 'Norfolk Island', 'NF', 1),
(164, 'NGA', 'Nigeria', 'NG', 1),
(165, 'NIC', 'Nicaragua', 'NI', 1),
(166, 'NIU', 'Niue', 'NU', 1),
(167, 'NLD', 'Netherlands', 'NL', 1),
(168, 'NOR', 'Norway', 'NO', 1),
(169, 'NPL', 'Nepal', 'NP', 1),
(170, 'NRU', 'Nauru', 'NR', 1),
(171, 'NZL', 'New Zealand', 'NZ', 1),
(172, 'OMN', 'Oman', 'OM', 1),
(173, 'PAK', 'Pakistan', 'PK', 1),
(174, 'PAN', 'Panama', 'PA', 1),
(175, 'PCN', 'Pitcairn Islands', 'PN', 1),
(176, 'PER', 'Peru', 'PE', 1),
(177, 'PHL', 'Philippines', 'PH', 1),
(178, 'PLW', 'Palau', 'PW', 1),
(179, 'PNG', 'Papua New Guinea', 'PG', 1),
(180, 'POL', 'Poland', 'PL', 1),
(181, 'PRI', 'Puerto Rico', 'PR', 1),
(182, 'PRK', 'North Korea', 'KP', 1),
(183, 'PRT', 'Portugal', 'PT', 1),
(184, 'PRY', 'Paraguay', 'PY', 1),
(185, 'PSE', 'Palestine', 'PS', 1),
(186, 'PYF', 'French Polynesia', 'PF', 1),
(187, 'QAT', 'Qatar', 'QA', 1),
(188, 'REU', 'Réunion', 'RE', 1),
(189, 'ROU', 'Romania', 'RO', 1),
(190, 'RUS', 'Russia', 'RU', 1),
(191, 'RWA', 'Rwanda', 'RW', 1),
(192, 'SAU', 'Saudi Arabia', 'SA', 1),
(193, 'SDN', 'Sudan', 'SD', 1),
(194, 'SEN', 'Senegal', 'SN', 1),
(195, 'SGP', 'Singapore', 'SG', 1),
(196, 'SGS', 'South Georgia and the South Sandwich Islands', 'GS', 1),
(197, 'SHN', 'Saint Helena', 'SH', 1),
(198, 'SJM', 'Svalbard and Jan Mayen', 'SJ', 1),
(199, 'SLB', 'Solomon Islands', 'SB', 1),
(200, 'SLE', 'Sierra Leone', 'SL', 1),
(201, 'SLV', 'El Salvador', 'SV', 1),
(202, 'SMR', 'San Marino', 'SM', 1),
(203, 'SOM', 'Somalia', 'SO', 1),
(204, 'SPM', 'Saint Pierre and Miquelon', 'PM', 1),
(205, 'SRB', 'Serbia', 'RS', 1),
(206, 'SSD', 'South Sudan', 'SS', 1),
(207, 'STP', 'São Tomé and Príncipe', 'ST', 1),
(208, 'SUR', 'Suriname', 'SR', 1),
(209, 'SVK', 'Slovakia', 'SK', 1),
(210, 'SVN', 'Slovenia', 'SI', 1),
(211, 'SWE', 'Sweden', 'SE', 1),
(212, 'SWZ', 'Swaziland', 'SZ', 1),
(213, 'SXM', 'Sint Maarten', 'SX', 1),
(214, 'SYC', 'Seychelles', 'SC', 1),
(215, 'SYR', 'Syria', 'SY', 1),
(216, 'TCA', 'Turks and Caicos Islands', 'TC', 1),
(217, 'TCD', 'Chad', 'TD', 1),
(218, 'TGO', 'Togo', 'TG', 1),
(219, 'THA', 'Thailand', 'TH', 1),
(220, 'TJK', 'Tajikistan', 'TJ', 1),
(221, 'TKL', 'Tokelau', 'TK', 1),
(222, 'TKM', 'Turkmenistan', 'TM', 1),
(223, 'TLS', 'East Timor', 'TL', 1),
(224, 'TON', 'Tonga', 'TO', 1),
(225, 'TTO', 'Trinidad and Tobago', 'TT', 1),
(226, 'TUN', 'Tunisia', 'TN', 1),
(227, 'TUR', 'Turkey', 'TR', 1),
(228, 'TUV', 'Tuvalu', 'TV', 1),
(229, 'TWN', 'Taiwan', 'TW', 1),
(230, 'TZA', 'Tanzania', 'TZ', 1),
(231, 'UGA', 'Uganda', 'UG', 1),
(232, 'UKR', 'Ukraine', 'UA', 1),
(233, 'UMI', 'U.S. Minor Outlying Islands', 'UM', 1),
(234, 'URY', 'Uruguay', 'UY', 1),
(235, 'USA', 'United States', 'US', 1),
(236, 'UZB', 'Uzbekistan', 'UZ', 1),
(237, 'VAT', 'Vatican City', 'VA', 1),
(238, 'VCT', 'Saint Vincent and the Grenadines', 'VC', 1),
(239, 'VEN', 'Venezuela', 'VE', 1),
(240, 'VGB', 'British Virgin Islands', 'VG', 1),
(241, 'VIR', 'U.S. Virgin Islands', 'VI', 1),
(242, 'VNM', 'Vietnam', 'VN', 1),
(243, 'VUT', 'Vanuatu', 'VU', 1),
(244, 'WLF', 'Wallis and Futuna', 'WF', 1),
(245, 'WSM', 'Samoa', 'WS', 1),
(246, 'XKX', 'Kosovo', 'XK', 1),
(247, 'YEM', 'Yemen', 'YE', 1),
(248, 'ZAF', 'South Africa', 'ZA', 1),
(249, 'ZMB', 'Zambia', 'ZM', 1),
(250, 'ZWE', 'Zimbabwe', 'ZW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `promocode` varchar(255) NOT NULL,
  `code_type` varchar(255) NOT NULL,
  `min_shopping` int(11) NOT NULL,
  `d_percent` int(11) DEFAULT NULL,
  `d_fvalue` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `depositID` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deposit_amount` double(10,2) DEFAULT NULL,
  `receivable_amount` double(10,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `frm_wallet_address` varchar(255) DEFAULT NULL,
  `to_crypto_wallet_address` varchar(255) DEFAULT NULL,
  `trxId` varchar(255) DEFAULT NULL,
  `depscription` text DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `payerEmail` varchar(255) DEFAULT NULL COMMENT 'Paypal',
  `payerID` varchar(255) DEFAULT NULL COMMENT 'Paypal',
  `transactionID` varchar(255) DEFAULT NULL COMMENT 'Paypal',
  `status` int(11) DEFAULT NULL COMMENT '0=Review,2=Reject,1=Approved',
  `approved_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `gig`
--

CREATE TABLE `gig` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `insubcategory_Id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'title',
  `gig_slug` varchar(255) DEFAULT NULL,
  `thumbnail_images` varchar(255) DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL COMMENT '1=Single Gig\r\n2=Basic/Standard/Premium\r\n',
  `language_name` varchar(255) DEFAULT NULL,
  `language_type` varchar(255) DEFAULT NULL,
  `gig_description` text DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `delivery_day` int(11) DEFAULT NULL,
  `basic_price` double(10,2) DEFAULT NULL COMMENT 'Basic',
  `basic_description` text DEFAULT NULL COMMENT 'Basic',
  `basic_delivery_days` int(11) DEFAULT NULL COMMENT 'Basic',
  `source_file` text DEFAULT NULL COMMENT 'Basic (Yes/No)',
  `standard_price` double(10,2) DEFAULT NULL COMMENT 'Standard',
  `stn_descrition` text DEFAULT NULL COMMENT 'Standard',
  `stn_delivery_days` int(11) DEFAULT NULL COMMENT 'Standard',
  `order_rules` text DEFAULT NULL,
  `stn_source_file` varchar(255) DEFAULT NULL COMMENT 'Standard',
  `premium_price` double(10,2) DEFAULT NULL COMMENT 'Premium',
  `premium_description` text DEFAULT NULL COMMENT 'Premium',
  `premium_delivery_days` int(11) DEFAULT NULL COMMENT 'Premium',
  `premium_source_file` varchar(255) DEFAULT NULL COMMENT 'Premium',
  `reason_descriptoin` text DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '1=Active, 0=Inactive,2=Reject',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gigWish_list`
--

CREATE TABLE `gigWish_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gig_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gig_images_history`
--

CREATE TABLE `gig_images_history` (
  `id` int(11) NOT NULL,
  `gig_id` int(11) DEFAULT NULL,
  `image_path` varchar(233) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level_commission`
--

CREATE TABLE `level_commission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderId` varchar(255) DEFAULT NULL,
  `buyerId` bigint(20) UNSIGNED NOT NULL,
  `buyer_name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `commission_recev_frm` bigint(20) UNSIGNED NOT NULL,
  `commission_recv_frm_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `is_read` int(1) NOT NULL DEFAULT 0 COMMENT '1=read,0=unread',
  `files` varchar(255) DEFAULT NULL,
  `time_sent` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '2=Seller,3=buyer',
  `messages` text DEFAULT NULL,
  `seen` tinyint(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `gig_id` int(11) DEFAULT NULL,
  `buyerId` int(11) DEFAULT NULL,
  `sellerId` int(11) DEFAULT NULL,
  `selected_packages` varchar(255) DEFAULT NULL,
  `selected_price` varchar(255) DEFAULT NULL,
  `tips` int(11) DEFAULT NULL,
  `service_fee` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `delivery_day` int(11) DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL COMMENT '1=Order Placed, 2=In Progess, 3=Cancel, 4=Delivery, 5=Complete',
  `company_commission` int(11) DEFAULT NULL,
  `l_one_buyer` int(11) DEFAULT NULL,
  `lev_1` decimal(10,2) DEFAULT NULL,
  `l_two_buyer` int(11) DEFAULT NULL,
  `lev_2` decimal(10,2) DEFAULT NULL,
  `l_three_buyer` int(11) DEFAULT NULL,
  `lev_3` decimal(10,2) DEFAULT NULL,
  `l_four_buyer` int(11) DEFAULT NULL,
  `lev_4` decimal(10,2) DEFAULT NULL,
  `l_five_buyer` int(11) DEFAULT NULL,
  `lev_5` decimal(10,2) DEFAULT NULL,
  `seller_review_sts` int(11) DEFAULT 0,
  `return_status` text NOT NULL,
  `cancel_resion` text DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `delivery_day_convert_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_product`
--

CREATE TABLE `orders_product` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double(10,5) NOT NULL,
  `discount` double(10,5) NOT NULL,
  `discount_status` int(11) NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `vat_status` int(11) NOT NULL,
  `last_price` double(10,5) NOT NULL,
  `qty` float NOT NULL,
  `color` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `total` double(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Order Placed', 'Upon successful checkout, the system records the order details and assigns a unique order ID.', '2023-12-04 11:15:23', '2023-12-04 05:55:06'),
(2, 'In Progess', 'In Progess', '2023-12-04 11:15:23', '2023-12-04 05:55:48'),
(3, 'Cancel', 'Cancel', '2023-12-04 11:15:23', '2023-12-04 05:56:14'),
(4, 'Delivery', 'Delivery', '2023-12-04 11:15:23', '2023-12-04 05:56:45'),
(5, 'Complete', 'Complete', '2023-12-04 11:15:23', '2023-12-04 05:56:45');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_of_referell` varchar(255) DEFAULT NULL,
  `number_of_sales` varchar(255) DEFAULT NULL,
  `number_of_blogs` int(11) DEFAULT NULL,
  `salary_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT 'Payment_type',
  `working_hour` varchar(255) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description_short` text DEFAULT NULL,
  `description_full` text DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `likeCount` int(11) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `description_short`, `description_full`, `question`, `answer`, `likeCount`, `categoryId`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About us Isumax', 'about-us-isumax', NULL, '<div align=\"justify\"><ul><li><span id=\"docs-internal-guid-3ce2466f-7fff-25f1-ad9a-676ca6b99ee1\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 23pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">About Isumax – Empowering Freelancers &amp; Businesses Worldwide</span></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Where Talent Meets Opportunity, Securely &amp; Seamlessly</span></h2><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size: 21pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">Who We Are</span></h3><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Isumax is a next-generation freelance marketplace built to connect skilled professionals with businesses and individuals seeking high-quality services. Our platform is designed to empower freelancers by providing a secure, transparent, and growth-driven environment where talent meets opportunity.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">🚀 For Freelancers: Get access to global projects, secure payments, and career growth.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">🚀 For Businesses: Find top talent, ensure quality work, and pay securely with confidence.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">We’re not just a freelance marketplace—we’re a game-changer in the way people work and hire!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 19pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">🌍 Our Mission – Work Without Limits!</span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Our mission is to revolutionize the freelance industry by offering a seamless, secure, and efficient experience for both freelancers and clients.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✅ Empower freelancers to grow, earn, and succeed.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✅ Help businesses find and hire top professionals effortlessly.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✅ Ensure secure payments, transparency, and trust at every step.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✅ Break down barriers and create a truly global workforce without limitations.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">At Isumax, we believe in opportunities for all—no middlemen, no unfair policies, just pure talent and growth!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 21pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">🌟 Our Vision – The Future of Work</span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">We aim to become the world’s leading freelance marketplace, bridging the gap between businesses and skilled professionals through:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Innovation – A cutting-edge platform that makes work smarter.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Trust – A secure and transparent space for freelancers and clients.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Opportunity – A thriving marketplace for everyone, everywhere.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Isumax is shaping the future of freelancing—where success has no limits!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 20pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">💡 Why Choose Isumax? Because You Deserve the Best!</span></h2><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size: 19pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-style: italic; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">🔹 For Freelancers:</span></h3><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Higher Pay &amp; No Exploitation – Work with verified clients who respect your skills.</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Global Opportunities – No restrictions—work with businesses worldwide.</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Secure Payments – Get paid on time, every time.</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Career Growth – Work, learn, and succeed on your terms.</span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size: 20pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-style: italic; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">🔹 For Businesses:</span></h3><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Find the Best Talent Instantly – No more hiring delays.</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Verified &amp; Skilled Experts – Work only with top professionals.</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Safe &amp; Transparent Transactions – Pay securely, get results.</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✔ Dedicated Support – Our team ensures smooth hiring and project success.</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">🚀 Starx Program – More Exposure, More Earnings!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">The </span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Starx Program</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"> helps freelancers </span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">get free promotion</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"> within the Isumax community and on external platforms. More visibility means more clients, more orders, and higher earnings—without any extra effort!</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br><br></span></p><h3 dir=\"ltr\" style=\"line-height:1.38;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size: 18pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">💳 Yes-Deal – Secure &amp; Hassle-Free Transactions!</span></h3><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">With </span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Yes-Deal</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">, payments are </span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">100% secure</span><span style=\"font-size: 13.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">—funds are only released when both parties are satisfied. No scams, no risks—just smooth, transparent transactions for freelancers and businesses alike!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">🔥 At Isumax, you don’t just work—you build a future. You don’t just hire—you build success.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 20pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">🔒 Trust &amp; Security – Your Success, Our Priority!</span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 14.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">We know that trust and security matter. That’s why we’ve built powerful safety measures to protect every user:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✅ Payment System – Your funds are protected until work is completed.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✅ Verified Users &amp; Fraud Prevention – No scams, no fake accounts—only real professionals.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✅ Strict Quality Control – Only the best freelancers and reliable businesses get approved.</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">✅ 24/7 Support &amp; Dispute Resolution – We’re here whenever you need us!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">🚀 At Isumax, you work and hire with confidence!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">🌍 Join the Isumax Revolution – Work Smarter, Hire Faster!</span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">📌 Freelancers: The world is waiting for your skills. Start earning more today!</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">📌 Businesses: The best talent is just one click away. Hire smarter, not harder!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">🌍 Thousands are already thriving on Isumax. Don’t get left behind!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">➡ Sign Up Now &amp; Take Your Career or Business to the Next Level!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">📞 </span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-style: italic; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Have questions? Our support team is available 24/7 to assist you!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h3 dir=\"ltr\" style=\"line-height:1.38;text-align: center;margin-top:14pt;margin-bottom:4pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; text-decoration-line: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space-collapse: preserve;\">Isumax – Work. Earn. Grow. Succeed.</span></h3></span></li></ul></div>', NULL, NULL, NULL, 3, 23, NULL, 1, '2024-10-24 10:43:18', '2025-03-07 09:29:43');
INSERT INTO `posts` (`id`, `name`, `slug`, `description_short`, `description_full`, `question`, `answer`, `likeCount`, `categoryId`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Privacy & Policy', 'privacy-policy', NULL, '<ol><li><h2 class=\"\"></h2><h3 class=\"\"></h3><h1 class=\"\"><ol><li style=\"text-align: justify;\"><span id=\"docs-internal-guid-2981b908-7fff-0adb-78a9-d6359fb654c4\"><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:29pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Privacy Policy</span></p><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:29pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;margin-left: 36pt;\" aria-level=\"2\"><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><span style=\"font-size:29pt;font-family:Arial,sans-serif;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Last Updated: 02-03 2025</span></p></li></ol><ol style=\"margin-top:0;margin-bottom:0;padding-inline-start:48px;\" start=\"2\"><li dir=\"ltr\" style=\"list-style-type:decimal;font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height:1.38;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\" role=\"presentation\"><br></p></li><li dir=\"ltr\" style=\"list-style-type: decimal; font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre;\" aria-level=\"1\"><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; background-color: rgb(255, 255, 255); margin-top: 0pt; margin-bottom: 12pt;\" role=\"presentation\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Isumax and its affiliated entities are committed to protecting the personal information of users. Please read this Privacy Policy (this \"Policy\") carefully to understand how Isumax collects, processes, and secures your personal data.</span></p></li></ol><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 8pt;margin-right: 8pt;text-align: justify;margin-top:17pt;margin-bottom:0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">This Policy applies to Isumax website (https://isumax.com), mobile application, and other services. By registering an account, using our services, or accessing our platform, you acknowledge that you have read and understood this Policy. We may update this Policy from time to time, and any major changes will be communicated to you.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">1. Summary</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">What Information Do We Collect?</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We collect information that you provide directly (such as name, email, address, payment details, etc.) and information that is automatically collected (such as IP address, device information, cookies, etc.).</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">How Do We Use Your Information?</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We use your data to operate our platform, improve user experience, ensure security, comply with legal obligations, and offer customer support.</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">How Long Do We Retain Your Data?</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We keep your personal information for as long as necessary to fulfill the purpose for which it was collected, and as required by law.</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Children’s Privacy</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Isumax is only available to users who are at least 18 years old. Users aged 13–17 may use the platform under parental or guardian supervision. Children under 13 are not allowed to use our services.</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Do We Share Your Information?</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Yes, we may share your information with service providers, business partners, and law enforcement when legally required.</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Your Privacy Rights</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">You have the right to access, update, delete, or restrict the use of your personal data.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">2. Information We Collect</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space: pre-wrap;\">(i) Information You Provide:</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">When you register, use our services, or interact with our platform, we may collect:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Name, email, and contact details</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Payment and billing information</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Profile details (such as skills, experience, and services offered)</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Social media linked accounts (if connected)</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Communications with other users and customer support</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">(ii) Information Collected Automatically:</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">When you browse or use Isumax, we automatically collect:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">IP address and location data</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Device and browser details</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Cookies and website usage patterns</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">(iii) Information from Third Parties:</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We may receive additional user data from:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Payment service providers</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Fraud prevention and security vendors</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Marketing and analytics partners</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">3. Legal Basis for Processing Personal Information</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We process your personal data based on:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Consent – When you give us permission to use your data</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Contractual Obligation – To provide you services</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Legal Compliance – When required by law</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Legitimate Interests – To improve services and security</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">4. How We Use Your Information</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We use your personal data for:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Managing your account and transactions</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Providing customer support</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Ensuring security and fraud prevention</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Personalizing your experience on the platform</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Sending promotional communications (with an opt-out option)</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">5. Data Retention Policy</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We retain personal data as long as necessary for:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Service delivery and customer support</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Legal compliance and dispute resolution</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Fraud prevention and security monitoring</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">6. Children’s Privacy</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Isumax is only for users 18 years and older.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Users aged 13-17 must have parental consent.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We do not knowingly collect data from children under 13.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">7. Sharing Personal Data with Third Parties</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We may share your data with:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Service Providers (hosting, payment processing, security)</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Legal Authorities (if required by law)</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Business Partners (for analytics and marketing, with consent)</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">8. International Data Transfers</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Your data may be processed outside your country of residence, including in regions with different data protection laws. We ensure compliance with international data protection standards.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">9. Cookies and Tracking Technologies</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We use cookies and similar technologies to:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Improve user experience</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Analyze site performance</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Personalize content and ads</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Users can manage cookie preferences through browser settings.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">10. Do Not Track (DNT) Policy</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Our site does not respond to Do Not Track (DNT) signals. However, you can control cookie preferences manually.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">11. Security Measures</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">We implement industry-standard security measures, including:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Data encryption</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Secure payment processing</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Fraud detection and monitoring</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">However, no online platform can guarantee 100% security, so users must also take precautions.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">12. Your Privacy Rights</span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Depending on your location, you may have the right to:</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:15pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Access your data</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Correct inaccurate data</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Delete personal information</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Restrict or object to data processing</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;text-indent: -18pt;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 15pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">· </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Opt-out of marketing communications</span></p><p dir=\"ltr\" style=\"line-height: 1.38; text-align: justify; margin-top: 0pt; margin-bottom: 0pt; padding: 0pt 0pt 12pt;\"><span style=\"background-color: transparent; font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">To exercise your rights, contact us at</span><span style=\"background-color: transparent; font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"> </span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; font-weight: 700; font-style: normal; font-variant: normal; text-decoration: underline; text-decoration-skip-ink: none; vertical-align: baseline; white-space: pre-wrap; background-color: rgb(255, 255, 0);\"><font color=\"#295218\">Help@isumax.com</font></span><span style=\"background-color: transparent; font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); font-weight: 700; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"></p><hr><p></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt 0pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#212529;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:underline;-webkit-text-decoration-skip:none;text-decoration-skip-ink:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">13. Updates to This Policy</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:0pt;margin-bottom:0pt;\"><span id=\"docs-internal-guid-acec7d5d-7fff-5047-33bc-1102ed21bc6c\"></span></p><p dir=\"ltr\" style=\"line-height:1.38;text-align: justify;background-color:#ffffff;margin-top:0pt;margin-bottom:12pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(33, 37, 41); background-color: transparent; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">We may modify this Policy periodically. Significant changes will be communicated via email or platform notifications.</span></p></span></li></ol></h1></li></ol>', NULL, NULL, NULL, 1, 23, NULL, 1, '2024-10-24 10:49:10', '2025-03-13 06:09:38');
INSERT INTO `posts` (`id`, `name`, `slug`, `description_short`, `description_full`, `question`, `answer`, `likeCount`, `categoryId`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Terms of Services', 'terms-of-services', NULL, '<p><u><span style=\"font-family: &quot;Arial Black&quot;; letter-spacing: -0.5pt; font-size: 28pt;\"><b>Isumax\'s&nbsp;Te</b></span></u><span style=\"font-family: &quot;Arial Black&quot;;\">﻿</span><u><span style=\"font-family: &quot;Arial Black&quot;; letter-spacing: -0.5pt; font-size: 28pt;\"><b>rms of Service</b></span><b><span style=\"font-family: &quot;Calibri Light&quot;; letter-spacing: -0.5pt; font-size: 28pt;\"><o:p></o:p></span></b></u></p><p class=\"MsoNormal\"><br></p><p class=\"p\"><b><span style=\"font-family: &quot;Courier New&quot;; font-size: 12pt;\">The draft of the </span><span class=\"15\" style=\"font-family: &quot;Courier New&quot;;\">IsuMax Terms of Service</span><span style=\"font-family: &quot;Courier New&quot;; font-size: 12pt;\">&nbsp;is a legal agreement that sets the rules and conditions for using the IsuMax app, which connects freelancers with clients for various projects. Here\'s a breakdown of what each section means and how it functions:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';font-size:12.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"></p><hr size=\"2\" width=\"100%\" align=\"center\"><p></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">1. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Introduction (Welcome to IsuMax)</span></u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l0 level1 lfo1;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Arial Black&quot;; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">Purpose</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">: The introduction establishes that by using the IsuMax app, users (both freelancers and clients) agree to abide by the Terms of Service set by IsuMax. It functions as an acknowledgment that the user is entering into a binding agreement.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">2. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Definitions</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l5 level1 lfo2;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Arial Black&quot;; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">This section provides clear definitions of key terms used throughout the document to ensure all parties understand the terminology: </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l5 level2 lfo2;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Courier New&quot;; font-size: 10pt;\">o&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">User</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">: Anyone who uses the app.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l5 level2 lfo2;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Courier New&quot;; font-size: 10pt;\">o&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">Freelancer</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">: A user offering services through the app.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l5 level2 lfo2;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Courier New&quot;; font-size: 10pt;\">o&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">Client</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">: A user hiring a freelancer via the app.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l5 level2 lfo2;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Courier New&quot;; font-size: 10pt;\">o&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">Project</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">: The specific tasks that a client hires a freelancer for.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">3. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">User Agreement</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l11 level1 lfo3;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Arial Black&quot;; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">This section outlines the general rules all users must follow: </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l11 level2 lfo3;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Users must be 18 or older.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l11 level2 lfo3;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Users must provide accurate and complete information when signing up for the app.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l11 level2 lfo3;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">By using the app, users agree to follow these Terms.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">4. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Freelancer Terms</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l7 level1 lfo4;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Arial Black&quot;; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">This section is specifically for freelancers, explaining their rights and responsibilities: </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l7 level2 lfo4;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Freelancers are </span><span class=\"15\" style=\"font-family: Calibri;\">independent contractors</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">, meaning they are not employees of IsuMax.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l7 level2 lfo4;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">They are responsible for their </span><span class=\"15\" style=\"font-family: Calibri;\">own taxes</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;and </span><span class=\"15\" style=\"font-family: Calibri;\">benefits</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l7 level2 lfo4;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Freelancers must provide high-quality work and meet agreed-upon deadlines.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l7 level2 lfo4;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Freelancers must keep </span><span class=\"15\" style=\"font-family: Calibri;\">client information confidential</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">5. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Client Terms</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l2 level1 lfo5;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Arial Black&quot;; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">This section is for clients and outlines their obligations: </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l2 level2 lfo5;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Clients are responsible for </span><span class=\"15\" style=\"font-family: Calibri;\">paying freelancers</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;for their work.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l2 level2 lfo5;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Clients must provide </span><span class=\"15\" style=\"font-family: Calibri;\">clear instructions</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;for the freelancer to follow.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l2 level2 lfo5;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Payments must be made through the IsuMax platform.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l2 level2 lfo5;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Clients must maintain the confidentiality of the freelancer’s information.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">6. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Payment Terms</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l6 level1 lfo6;\"><!--[if !supportLists]--><b><span style=\"font-family:Symbol;mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">This section outlines how payments are handled on the platform: </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l6 level2 lfo6;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Courier New&quot;; font-size: 10pt;\">o&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">Clients pay freelancers</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;through the IsuMax payment system.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l6 level2 lfo6;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Freelancers set their own </span><span class=\"15\" style=\"font-family: Calibri;\">rates</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;and </span><span class=\"15\" style=\"font-family: Calibri;\">payment terms</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;(e.g., hourly or project-based).</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l6 level2 lfo6;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">IsuMax charges a </span><span class=\"15\" style=\"font-family: Calibri;\">service fee</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;to clients using the platform.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">7. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Intellectual Property</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l9 level1 lfo7;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Arial Black&quot;; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">This section addresses who owns the work produced by freelancers: </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l9 level2 lfo7;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Freelancers retain ownership of their work, unless there’s an agreement stating otherwise.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l9 level2 lfo7;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Clients are prohibited from using the freelancer’s work for anything other than the project it was created for.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">8. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Dispute Resolution</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l10 level1 lfo8;\"><!--[if !supportLists]--><b><span style=\"font-family:Symbol;mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">If disputes arise between freelancers and clients, this section outlines how they should be handled: </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l10 level2 lfo8;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Disputes must be resolved through the </span><span class=\"15\" style=\"font-family: Calibri;\">IsuMax dispute resolution process</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l10 level2 lfo8;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">IsuMax has the right to mediate disputes and make </span><span class=\"15\" style=\"font-family: Calibri;\">final decisions</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;regarding the issue.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">9. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Termination</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l1 level1 lfo9;\"><!--[if !supportLists]--><b><span style=\"font-family:Symbol;mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">This section explains the circumstances under which IsuMax can terminate or suspend a user’s account: </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l1 level2 lfo9;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">IsuMax can terminate or suspend any account for any reason.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l1 level2 lfo9;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Upon termination, users must </span><span class=\"15\" style=\"font-family: Calibri;\">immediately stop using</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;the IsuMax app.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">10.&nbsp;</span></u></b><strong data-start=\"121\" data-end=\"153\" style=\"color: inherit; font-family: inherit; font-size: 1.75rem;\"><u>Governing Law &amp; Jurisdiction</u></strong></h3>\r\n<p data-start=\"156\" data-end=\"378\">These Terms and Conditions shall be governed by and construed in accordance with the <strong data-start=\"241\" data-end=\"279\">laws of the State of New York, USA</strong>. Any disputes shall be subject to the exclusive jurisdiction of the <strong data-start=\"348\" data-end=\"375\">courts in New York, USA</strong>.</p><h3><b><u><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">11. </span><span class=\"15\" style=\"font-family: &quot;Arial Black&quot;;\">Changes to Terms of Service</span><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">:</span></u><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l4 level1 lfo11;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Arial Black&quot;; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">IsuMax reserves the right to modify or update the Terms of Service at any time. </span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:72.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l4 level2 lfo11;\"><!--[if !supportLists]--><b><span style=\"font-family:\'Courier New\';mso-fareast-font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:10.0000pt;\">o&nbsp;</span><!--[endif]--><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">Users are bound by any changes, so it’s essential to review the terms regularly.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-bottom:0.0000pt;\"></p><hr size=\"2\" width=\"100%\" align=\"center\"><p></p><h3><b><span style=\"font-family: &quot;Arial Black&quot;; color: rgb(30, 77, 120); font-size: 12pt;\">Key Takeaways:</span><span style=\"mso-spacerun:\'yes\';font-family:\'Calibri Light\';mso-fareast-font-family:\'等线 Light\';\r\nmso-bidi-font-family:\'Times New Roman\';color:rgb(30,77,120);font-size:12.0000pt;\"><o:p></o:p></span></b></h3><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l8 level1 lfo12;\"><!--[if !supportLists]--><b><span style=\"font-family: &quot;Arial Black&quot;; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">Freelancers and Clients</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;are both required to follow specific rules about providing services, paying for services, and maintaining confidentiality.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l8 level1 lfo12;\"><!--[if !supportLists]--><b><span style=\"font-family: Symbol; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">Dispute resolution</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;provides a structured process for solving issues between users.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l8 level1 lfo12;\"><!--[if !supportLists]--><b><span style=\"font-family: Symbol; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">Intellectual Property</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;protects freelancers’ work and limits how clients can use it.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\" style=\"margin-top:5.0000pt;margin-bottom:5.0000pt;margin-left:36.0000pt;\r\nmso-margin-top-alt:auto;mso-margin-bottom-alt:auto;text-indent:-18.0000pt;\r\nmso-list:l8 level1 lfo12;\"><!--[if !supportLists]--><b><span style=\"font-family: Symbol; font-size: 10pt;\">·&nbsp;</span><!--[endif]--><span class=\"15\" style=\"font-family: Calibri;\">IsuMax’s rights</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\">&nbsp;to terminate accounts and modify the Terms are explicitly stated, providing flexibility to handle issues or adapt to changes.</span><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><o:p></o:p></span></b></p><p class=\"p\"><b><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';font-size:12.0000pt;\">The document serves to ensure clarity and protect both freelancers and clients from potential conflicts, creating a safe environment for transactions on the IsuMax platform. It also emphasizes the importance of reading and understanding the agreement before using the service.</span><span style=\"mso-spacerun:\'yes\';font-family:\'Times New Roman\';font-size:12.0000pt;\"><o:p></o:p></span></b></p><p class=\"MsoNormal\"><span style=\"mso-spacerun:\'yes\';font-family:Calibri;mso-bidi-font-family:Arial;\r\nfont-size:11.0000pt;\"><b>&nbsp;</b></span></p>', NULL, NULL, NULL, 2, 23, NULL, 1, '2024-10-24 10:52:16', '2025-03-15 09:52:44');
INSERT INTO `posts` (`id`, `name`, `slug`, `description_short`, `description_full`, `question`, `answer`, `likeCount`, `categoryId`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Trist & Safety', 'trist-safety', NULL, '<p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size: 23pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-weight: 700; font-style: normal; font-variant: normal; vertical-align: baseline; white-space: pre-wrap;\"><u>🔒 Trust &amp; Safety at Isumax, Starx Program &amp; Yes-Deal</u></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">At Isumax, Starx Program, and Yes-Deal, security is at the core of everything we do. Our advanced safety measures, robust verification processes, and dedicated support ensure a fraud-free, transparent, and secure experience for freelancers, businesses, and buyers.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">✅ Secure Transactions | ✅ Verified Users | ✅ Fraud Prevention | ✅ 24/7 Support</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-weight: 700; font-style: normal; font-variant: normal; vertical-align: baseline; white-space: pre-wrap;\"><u>🛡️ Isumax: A Safe &amp; Reliable Freelance Marketplace</u></span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Work &amp; Hire with Confidence</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">At Isumax, we provide a trusted space where freelancers and clients can connect securely</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#980000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Escrow Payment Protection – Payments are securely held until the project is completed and approved.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 User Verification – Every freelancer and client undergoes strict identity verification to ensure credibility.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Transparent Ratings &amp; Reviews – Genuine feedback fosters a fair marketplace.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Dispute Resolution – If issues arise, our expert team ensures a fair and swift resolution.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Privacy &amp; Data Security – Your personal and financial information is fully encrypted and protected.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">At Isumax, trust fuels success. Work with peace of mind, knowing your transactions are secure.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">📌 </span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Need assistance? Our dedicated support team is here 24/7!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-weight: 700; font-style: normal; font-variant: normal; vertical-align: baseline; white-space: pre-wrap;\"><u>🚀 Starx Program: A Secure &amp; Transparent Affiliate System</u></span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:14.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Earn with Trust &amp; Security</span><span style=\"font-size:14.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:14.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The Starx Program is built on transparency, trust, and fairness, ensuring you get paid for your efforts safely and instantly.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Real-Time Tracking &amp; Verification – Commissions and referrals are monitored for accuracy.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Fraud Prevention – Strict measures ensure only genuine earnings are processed.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Secure Payouts – Withdraw your earnings smoothly through trusted payment channels.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Multi-Layer Protection – Advanced security safeguards prevent unauthorized access.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Dedicated Support Team – Get assistance anytime for account security and payout queries.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Earn with confidence—Starx ensures every commission is protected, verified, and paid on time.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">📌 </span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Have questions? Our expert support team is available 24/7!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-weight: 700; font-style: normal; font-variant: normal; vertical-align: baseline; white-space: pre-wrap;\"><u>💰 Yes-Deal: The Secure Social Trading Experience</u></span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Your Safety, Our Priority</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Yes-Deal is reinventing online transactions by ensuring 100% secure and transparent deals between buyers and sellers.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Escrow Payment Security – Payments are held safely until the buyer confirms product delivery.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Verified Buyers &amp; Sellers – A strict verification process reduces fraud and scams.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Dispute Resolution Support – If an issue arises, Yes-Deal ensures a fair outcome.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 End-to-End Transparency – Transactions happen in monitored WhatsApp groups for full visibility.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Risk-Free Transactions – No payment is released until both parties confirm deal completion.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Trade with trust—Yes-Deal ensures your transactions are fully secure and transparent.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">📌 </span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Need help? Our support team is always available!</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size: 17pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-weight: 700; font-style: italic; font-variant: normal; vertical-align: baseline; white-space: pre-wrap;\"><u>Why ISUMAX?</u></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">✅ 100% Secure Transactions – Your funds and data are protected with the highest security standards.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">✅ Verified &amp; Trusted Users – We ensure a fraud-free community with strict verification measures.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">✅ 24/7 Expert Support – Our dedicated team is always ready to assist you.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Join a community built on trust, security, and fairness. Work, earn, and trade with confidence!</span></p><p><span id=\"docs-internal-guid-9f0f1ab5-7fff-812f-7cf6-53133170515b\"></span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Let me know if you’d like any refinements or additional details. 🚀</span></p>', NULL, NULL, NULL, 6, 23, NULL, 1, '2024-10-24 10:57:26', '2025-03-07 11:49:39'),
(5, 'trust & Safety', 'trust-safety', NULL, '<p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:23pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔒 Trust &amp; Safety at Isumax, Starx Program &amp; Yes-Deal</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">At Isumax, Starx Program, and Yes-Deal, security is at the core of everything we do. Our advanced safety measures, robust verification processes, and dedicated support ensure a fraud-free, transparent, and secure experience for freelancers, businesses, and buyers.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">✅ Secure Transactions | ✅ Verified Users | ✅ Fraud Prevention | ✅ 24/7 Support</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🛡️ Isumax: A Safe &amp; Reliable Freelance Marketplace</span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Work &amp; Hire with Confidence</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">At Isumax, we provide a trusted space where freelancers and clients can connect securely</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#980000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Escrow Payment Protection – Payments are securely held until the project is completed and approved.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 User Verification – Every freelancer and client undergoes strict identity verification to ensure credibility.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Transparent Ratings &amp; Reviews – Genuine feedback fosters a fair marketplace.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Dispute Resolution – If issues arise, our expert team ensures a fair and swift resolution.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Privacy &amp; Data Security – Your personal and financial information is fully encrypted and protected.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">At Isumax, trust fuels success. Work with peace of mind, knowing your transactions are secure.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">📌 </span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Need assistance? Our dedicated support team is here 24/7!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🚀 Starx Program: A Secure &amp; Transparent Affiliate System</span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:14.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Earn with Trust &amp; Security</span><span style=\"font-size:14.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:14.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">The Starx Program is built on transparency, trust, and fairness, ensuring you get paid for your efforts safely and instantly.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Real-Time Tracking &amp; Verification – Commissions and referrals are monitored for accuracy.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Fraud Prevention – Strict measures ensure only genuine earnings are processed.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Secure Payouts – Withdraw your earnings smoothly through trusted payment channels.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Multi-Layer Protection – Advanced security safeguards prevent unauthorized access.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Dedicated Support Team – Get assistance anytime for account security and payout queries.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Earn with confidence—Starx ensures every commission is protected, verified, and paid on time.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">📌 </span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Have questions? Our expert support team is available 24/7!</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"></p><hr><p></p><h2 dir=\"ltr\" style=\"line-height:1.38;margin-top:18pt;margin-bottom:4pt;\"><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">💰 Yes-Deal: The Secure Social Trading Experience</span></h2><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Your Safety, Our Priority</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Yes-Deal is reinventing online transactions by ensuring 100% secure and transparent deals between buyers and sellers.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Escrow Payment Security – Payments are held safely until the buyer confirms product delivery.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Verified Buyers &amp; Sellers – A strict verification process reduces fraud and scams.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Dispute Resolution Support – If an issue arises, Yes-Deal ensures a fair outcome.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 End-to-End Transparency – Transactions happen in monitored WhatsApp groups for full visibility.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">🔹 Risk-Free Transactions – No payment is released until both parties confirm deal completion.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Trade with trust—Yes-Deal ensures your transactions are fully secure and transparent.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">📌 </span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Need help? Our support team is always available!</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:17pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:700;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Why ISUMAX?</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">✅ 100% Secure Transactions – Your funds and data are protected with the highest security standards.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">✅ Verified &amp; Trusted Users – We ensure a fraud-free community with strict verification measures.</span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">✅ 24/7 Expert Support – Our dedicated team is always ready to assist you.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-top:12pt;margin-bottom:12pt;\"><span style=\"font-size:16.5pt;font-family:Arial,sans-serif;color:#000000;background-color:#ffffff;font-weight:400;font-style:italic;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Join a community built on trust, security, and fairness. Work, earn, and trade with confidence!</span></p><p><span id=\"docs-internal-guid-4d6c744e-7fff-c96a-feca-e35f1db0afff\"><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-style: italic; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\">Let me know if you’d like any refinements or additional details. 🚀</span><span style=\"font-size: 16.5pt; font-family: Arial, sans-serif; color: rgb(0, 0, 0); font-weight: 700; font-style: italic; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-variant-position: normal; font-variant-emoji: normal; vertical-align: baseline; white-space-collapse: preserve;\"><br></span></span></p>', NULL, NULL, NULL, 4, 23, NULL, 1, '2024-10-24 11:00:18', '2025-03-07 09:33:39'),
(6, 'Selellin on ISUMAAX', 'selellin-on-isumaax', NULL, '<p>Help &amp; Support<br><br>At Isumax, we are committed to providing exceptional support to our users. Whether you’re a freelancer looking for guidance or a client seeking assistance, our Help &amp; Support section is here to address your needs.<br><br>1. **Knowledge Base**<br>Explore our comprehensive knowledge base, where you can find articles, tutorials, and FAQs covering various topics related to using Isumax. This resource is designed to help you navigate the platform efficiently and answer common questions.<br><br>2. **Contact Support**<br>If you can’t find the answers you’re looking for in our knowledge base, our dedicated support team is here to help. You can reach us through the following channels:<br>- **Email Support:** Send us an email at support@isumax.com for inquiries or assistance.<br>- **Live Chat:** Use our live chat feature on the website for real-time assistance during business hours.<br><br>&nbsp;3. **Submit a Ticket**<br>For more complex issues, you can submit a support ticket through our Help Center. Provide detailed information about your concern, and our team will respond promptly to resolve your issue.<br><br>&nbsp;4. **Community Forum**<br>Join our community forum to connect with other Isumax users. Share tips, ask questions, and engage in discussions about freelancing and the services offered on our platform. Our community is a great resource for finding support and networking with fellow users.<br><br>5. **Feedback and Suggestions**<br>We value your input! If you have any feedback or suggestions on how we can improve our services or platform, please let us know. Your insights help us enhance the user experience for everyone on Isumax.<br><br>&nbsp;6. **Updates and Announcements**<br>Stay informed about the latest updates, features, and announcements from Isumax. Follow our blog and social media channels to receive news and tips on how to maximize your experience on the platform.<br><br>&nbsp;7. **Safety and Security**<br>We prioritize the safety and security of our users. If you encounter any suspicious activity or have concerns regarding your account, please contact our support team immediately. We take all reports seriously and will investigate any issues promptly.<br><br>&nbsp;8. **Help Center Accessibility**<br>Our Help Center is accessible 24/7, ensuring that you can find assistance whenever you need it. We are dedicated to ensuring that your experience on Isumax is seamless and enjoyable.<br><br>At Isumax, we are here to support you every step of the way. Your success is our priority, and we look forward to helping you achieve your goals!<br><br>---<br><br>Feel free to modify any sections or add specific contact details that are relevant to Isumax!<br></p>', NULL, NULL, NULL, 5, 1, NULL, 1, '2024-10-24 11:03:16', '2024-10-24 11:03:16');
INSERT INTO `posts` (`id`, `name`, `slug`, `description_short`, `description_full`, `question`, `answer`, `likeCount`, `categoryId`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Buyers on Isumax', 'buyers-on-isumax', NULL, '<p><br></p><p><b>Buyers on Isumax</b><br><br>Welcome to Isumax! As a buyer, you have access to a diverse pool of talented freelancers ready to help you achieve your project goals. Here’s everything you need to know to make the most of your experience on our platform:<br><br>1. **Finding the Right Freelancer**<br>&nbsp;&nbsp; - **Search Functionality:** Utilize our advanced search feature to filter freelancers by skills, experience, ratings, and price range. This helps you find the best match for your specific project needs.<br>&nbsp;&nbsp; - **Categories and Tags:** Browse through various categories and tags to discover freelancers who specialize in areas relevant to your project, from graphic design to web development.<br><br>&nbsp;2. **Review Profiles and Portfolios**<br>&nbsp;&nbsp; - **Freelancer Profiles:** Each freelancer has a detailed profile showcasing their skills, experience, and previous work. Take the time to read their bios and review their portfolios to ensure they align with your expectations.<br>&nbsp;&nbsp; - **Ratings and Reviews:** Check out feedback from previous clients. Ratings and reviews provide insights into a freelancer\'s reliability and quality of work, helping you make informed decisions.<br><br>&nbsp;3. **Communicate Effectively**<br>&nbsp;&nbsp; - **Direct Messaging:** Use Isumax’s messaging feature to communicate directly with freelancers. Discuss project details, clarify requirements, and gauge their responsiveness before hiring.<br>&nbsp;&nbsp; - **Set Clear Expectations:** Clearly outline your project goals, timelines, and budget to ensure that both you and the freelancer are on the same page.<br><br>&nbsp;4. **Making an Order**<br>&nbsp;&nbsp; - **Custom Offers:** If you have a unique project in mind, request a custom offer from a freelancer. This allows you to negotiate terms and ensure the freelancer understands your specific requirements.<br>&nbsp;&nbsp; - **Order Confirmation:** Once you agree on the project details, confirm the order through Isumax to protect both parties and ensure a smooth transaction.<br><br>&nbsp;5. **Payment Security**<br>&nbsp;&nbsp; - **Secure Payments:** Isumax offers secure payment options to protect your financial information. Funds are held in escrow until the project is completed to your satisfaction, ensuring peace of mind.<br>&nbsp;&nbsp; - **Refund Policy:** Familiarize yourself with our refund policy in case the project does not meet your expectations or if there are issues with delivery.<br><br>&nbsp;6. **Providing Feedback**<br>&nbsp;&nbsp; - **Rate Your Experience:** After the project is completed, take a moment to leave feedback for the freelancer. Your insights help others make informed decisions and contribute to the overall quality of the Isumax community.<br>&nbsp;&nbsp; - **Dispute Resolution:** If you encounter any issues with a freelancer, reach out to our support team for assistance. We have processes in place to help resolve disputes fairly.<br><br>&nbsp;7. **Stay Informed**<br>&nbsp;&nbsp; - **Updates and Notifications:** Keep an eye on your notifications for updates about your orders and any messages from freelancers. Staying engaged ensures timely communication throughout your projects.<br><br>&nbsp;8. **Explore Resources**<br>&nbsp;&nbsp; - **Help Center:** Visit our Help Center for articles, guides, and tips on how to navigate the Isumax platform effectively. We are committed to supporting you in your buying journey.<br><br>At Isumax, we strive to provide a seamless experience for buyers seeking quality freelance services. Whether you\'re launching a new project or looking to enhance your existing business, you’ll find the right talent here. Happy hiring!<br><br>---<br><br>Feel free to adjust any sections to better fit the specific features and policies of Isumax!<br></p>', NULL, NULL, NULL, 7, 12, NULL, 1, '2024-10-24 11:06:57', '2024-10-28 13:37:02'),
(10, 'Help and Support', 'help-and-support', NULL, '<p><b>&nbsp;Help and Support</b><br><br>### Welcome to Our Help and Support Center!<br><br>We understand that sometimes you may need assistance while using our services. Our dedicated team is here to help you with any questions or issues you may encounter. Below, you’ll find a variety of resources designed to provide you with the support you need.<br><br>### Frequently Asked Questions (FAQ)<br><br>**Q: How can I reset my password?** &nbsp;<br>A: To reset your password, go to the login page and click on \"Forgot Password?\" Follow the prompts to reset your password via email.<br><br>**Q: How can I contact customer support?** &nbsp;<br>A: You can reach our customer support team via email at support@example.com or by filling out the contact form on our website. Our team is available 24/7 to assist you.<br><br>**Q: What should I do if I encounter a technical issue?** &nbsp;<br>A: If you experience any technical issues, please check our [Troubleshooting Guide](#) for common solutions. If the problem persists, contact our support team for further assistance.<br><br>### Live Chat Support<br><br>Need immediate assistance? Our live chat support is available from 9 AM to 9 PM (GMT). Click the chat icon in the bottom right corner of your screen to get started.<br><br>### Contact Us<br><br>If you have any questions or need further assistance, please don’t hesitate to reach out to us:<br><br>- **Email:** support@example.com<br>- **Phone:** +1 (800) 123-4567<br>- **Business Hours:** Monday - Friday, 9 AM - 5 PM (GMT)<br><br>### Community Forum<br><br>Join our community forum to connect with other users and share your experiences. You can ask questions, provide feedback, and receive tips from fellow users and our support team.<br><br>### Thank You!<br><br>We appreciate your patience and understanding as we work to provide you with the best support possible. Your satisfaction is our top priority, and we’re here to help you every step of the way.<br><br></p>', NULL, NULL, NULL, 8, 1, NULL, 1, '2024-10-25 10:52:07', '2024-10-25 10:52:07'),
(12, 'Affiliate', 'affiliate', NULL, '<p>If you\'re interested in affiliate marketing and programs that can help maximize your earnings, a range of affiliate platforms offer great opportunities. For example, **Amazon Associates** provides access to millions of products with commission rates of up to 20%, making it ideal if you\'re targeting a broad audience or consumer-driven content. Alternatively, **Shopify\'s Affiliate Program** is well-suited for promoting e-commerce and entrepreneurial content, offering up to $150 per referral and a 30-day cookie duration for tracking conversions.</p><p><br></p><p>For a more niche approach, **Semrush** (focused on SEO tools) provides substantial commissions, including $200 per paid subscription, making it a great option if your audience is in digital marketing or SEO. Similarly, **Fiverr** offers multiple commission structures that include both flat rates and revenue-sharing options, which can be profitable if you\'re targeting freelancers or businesses in need of services like graphic design, copywriting, and more.</p><p><br></p><p>Programs like **ClickFunnels** and **Leadpages** are also popular among affiliates looking to promote digital marketing tools, as they provide recurring commissions on subscriptions. They’re beneficial if your audience includes small businesses and marketers looking for conversion optimization solutions.</p><p><br></p><p>Each program varies in commission rates, payout thresholds, and cookie durations, so it\'s worth considering which program best aligns with your audience and content style. For more details on these and other top programs, you can check resources like Shopify\'s affiliate marketing guide and others.</p>', NULL, NULL, NULL, 9, 1, NULL, 1, '2024-10-26 03:44:02', '2024-10-26 03:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `short_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `product_tag` varchar(255) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `cash_dev_status` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `stock_mini_qty` int(11) DEFAULT NULL,
  `stock_status` int(11) DEFAULT NULL,
  `manufacturer` int(11) DEFAULT NULL,
  `download_link` varchar(255) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `discount_status` int(11) DEFAULT NULL,
  `shipping_days` int(11) DEFAULT NULL,
  `free_shopping` int(11) DEFAULT NULL,
  `delivery_days` varchar(255) DEFAULT NULL,
  `flat_rate_status` int(11) DEFAULT NULL,
  `flat_rate_price` double(10,5) DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `vat_status` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_status` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `professions`
--

CREATE TABLE `professions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `professions`
--

INSERT INTO `professions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Accountant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(2, 'Actor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(3, 'Architect', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(4, 'Artist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(5, 'Chef', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(6, 'Civil Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(7, 'Dentist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(8, 'Doctor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(9, 'Electrician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(10, 'Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(11, 'Graphic Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(12, 'Lawyer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(13, 'Nurse', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(14, 'Photographer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(15, 'Physicist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(16, 'Software Developer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(17, 'Teacher', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(18, 'Web Developer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(19, 'Writer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(20, 'Veterinarian', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(21, 'Pharmacist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(22, 'Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(23, 'Mechanic', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(24, 'Plumber', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(25, 'Project Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(26, 'Data Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(27, 'Business Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(28, 'Marketing Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(29, 'Sales Executive', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(30, 'Human Resources Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(31, 'IT Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(32, 'Research Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(33, 'Financial Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(34, 'Web Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(35, 'Customer Service Representative', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(36, 'Database Administrator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(37, 'Network Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(38, 'Systems Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(39, 'Software Tester', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(40, 'Cybersecurity Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(41, 'Content Writer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(42, 'SEO Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(43, 'Social Media Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(44, 'UI/UX Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(45, 'Operations Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(46, 'Logistics Coordinator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(47, 'Supply Chain Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(48, 'Quality Assurance Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(49, 'Training Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(50, 'Brand Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(51, 'Public Relations Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(52, 'Product Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(53, 'Copywriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(54, 'Creative Director', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(55, 'Art Director', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(56, 'Digital Marketing Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(57, 'Event Planner', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(58, 'Market Research Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(59, 'Real Estate Agent', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(60, 'Investment Banker', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(61, 'Actuary', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(62, 'Biomedical Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(63, 'Construction Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(64, 'Environmental Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(65, 'Fashion Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(66, 'Interior Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(67, 'Marine Biologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(68, 'Occupational Therapist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(69, 'Physical Therapist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(70, 'Speech-Language Pathologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(71, 'Chiropractor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(72, 'Pediatrician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(73, 'Surgeon', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(74, 'Anesthesiologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(75, 'Oncologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(76, 'Cardiologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(77, 'Dermatologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(78, 'Psychiatrist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(79, 'Radiologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(80, 'Neurologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(81, 'Orthopedic Surgeon', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(82, 'Dentist Hygienist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(83, 'Dental Assistant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(84, 'Veterinary Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(85, 'Pharmacy Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(86, 'Surgical Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(87, 'Emergency Medical Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(88, 'Paramedic', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(89, 'Nurse Practitioner', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(90, 'Clinical Psychologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(91, 'Clinical Social Worker', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(92, 'Health Services Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(93, 'Medical Laboratory Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(94, 'Medical Assistant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(95, 'Health Information Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(96, 'Nutritionist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(97, 'Dietitian', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(98, 'Fitness Trainer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(99, 'Personal Trainer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(100, 'Yoga Instructor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(101, 'Massage Therapist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(102, 'Cosmetologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(103, 'Esthetician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(104, 'Barber', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(105, 'Makeup Artist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(106, 'Fashion Merchandiser', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(107, 'Jewelry Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(108, 'Textile Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(109, 'Graphic Artist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(110, 'Animator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(111, 'Video Game Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(112, '3D Modeler', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(113, 'Sound Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(114, 'Music Producer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(115, 'Composer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(116, 'Lyricist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(117, 'Record Producer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(118, 'Film Director', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(119, 'Film Editor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(120, 'Cinematographer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(121, 'Scriptwriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(122, 'Production Assistant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(123, 'Art Curator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(124, 'Gallery Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(125, 'Museum Director', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(126, 'Archivist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(127, 'Librarian', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(128, 'Research Librarian', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(129, 'School Librarian', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(130, 'Corporate Trainer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(131, 'E-Learning Developer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(132, 'Technical Writer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(133, 'Policy Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(134, 'Legislative Assistant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(135, 'Lobbyist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(136, 'Community Organizer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(137, 'Nonprofit Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(138, 'Social Worker', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(139, 'Family Therapist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(140, 'Substance Abuse Counselor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(141, 'Psychotherapist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(142, 'Marriage Counselor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(143, 'Forensic Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(144, 'Crime Scene Investigator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(145, 'Private Investigator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(146, 'Security Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(147, 'Loss Prevention Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(148, 'Customs Officer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(149, 'Immigration Officer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(150, 'Federal Agent', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(151, 'Police Officer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(152, 'Firefighter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(153, 'Emergency Management Director', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(154, 'Safety Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(155, 'Environmental Health and Safety Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(156, 'Occupational Health Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(157, 'Risk Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(158, 'Insurance Underwriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(159, 'Claims Adjuster', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(160, 'Insurance Agent', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(161, 'Financial Planner', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(162, 'Tax Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(163, 'Auditor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(164, 'Bookkeeper', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(165, 'Payroll Clerk', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(166, 'Cashier', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(167, 'Stock Clerk', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(168, 'Warehouse Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(169, 'Forklift Operator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(170, 'Shipping and Receiving Clerk', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(171, 'Inventory Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(172, 'Purchasing Agent', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(173, 'Procurement Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(174, 'Sales Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(175, 'Account Executive', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(176, 'Market Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(177, 'Sales Representative', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(178, 'Retail Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(179, 'Store Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(180, 'Merchandising Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(181, 'Visual Merchandiser', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(182, 'Customer Experience Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(183, 'Customer Retention Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(184, 'Technical Support Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(185, 'Help Desk Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(186, 'Field Service Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(187, 'Installation Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(188, 'Maintenance Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(189, 'Quality Control Inspector', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(190, 'Research Associate', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(191, 'Laboratory Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(192, 'Chemist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(193, 'Chemical Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(194, 'Petroleum Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(195, 'Mining Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(196, 'Agricultural Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(197, 'Manufacturing Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(198, 'Industrial Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(199, 'Material Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(200, 'Nuclear Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(201, 'Electrical Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(202, 'Mechanical Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(203, 'Civil Drafting Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(204, 'Cartographer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(205, 'Geographer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(206, 'Urban Planner', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(207, 'Surveyor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(208, 'Construction Laborer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(209, 'Heavy Equipment Operator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(210, 'Electric Line Installer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(211, 'Plumbing Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(212, 'Welding Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(213, 'Pipefitter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(214, 'Carpenter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(215, 'Mason', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(216, 'Roofer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(217, 'Drywall Installer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(218, 'Painter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(219, 'Flooring Installer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(220, 'Landscape Architect', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(221, 'Environmental Planner', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(222, 'Health and Safety Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(223, 'Water Resource Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(224, 'Transportation Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(225, 'Air Quality Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(226, 'Hydraulic Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(227, 'Geotechnical Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(228, 'Structural Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(229, 'Construction Inspector', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(230, 'Quality Control Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(231, 'Manufacturing Supervisor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(232, 'Production Planner', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(233, 'Process Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(234, 'Production Worker', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(235, 'Assembler', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(236, 'Machinist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(237, 'CNC Operator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(238, 'Electrician Apprentice', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(239, 'Heavy Machinery Operator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(240, 'Line Cook', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(241, 'Restaurant Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(242, 'Food Service Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(243, 'Bartender', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(244, 'Waiter/Waitress', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(245, 'Host/Hostess', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(246, 'Barista', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(247, 'Fast Food Worker', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(248, 'Catering Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(249, 'Baker', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(250, 'Pastry Chef', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(251, 'Food Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(252, 'Dietetic Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(253, 'Food Safety Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(254, 'Health Inspector', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(255, 'Hospitality Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(256, 'Hotel Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(257, 'Resort Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(258, 'Travel Agent', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(259, 'Tour Guide', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(260, 'Event Coordinator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(261, 'Casino Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(262, 'Entertainment Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(263, 'Theme Park Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(264, 'Amusement Park Operator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(265, 'Sports Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(266, 'Athletic Trainer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(267, 'Sports Official', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(268, 'Fitness Coordinator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(269, 'Recreation Director', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(270, 'Park Ranger', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(271, 'Wildlife Biologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(272, 'Conservation Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(273, 'Forester', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(274, 'Fisheries Biologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(275, 'Environmental Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(276, 'Natural Resource Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(277, 'Soil Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(278, 'Hydrologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(279, 'Meteorologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(280, 'Climatologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(281, 'Astronomer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(282, 'Geologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(283, 'Geophysicist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(284, 'Seismologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(285, 'Marine Geologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(286, 'Oceanographer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(287, 'Paleontologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(288, 'Archaeologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(289, 'Anthropologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(290, 'Sociologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(291, 'Psychologist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(292, 'Political Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(293, 'Economist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(294, 'Historian', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(295, 'Philosopher', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(296, 'Theologian', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(297, 'Social Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(298, 'Statistical Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(299, 'Data Scientist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(300, 'Big Data Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(301, 'Artificial Intelligence Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(302, 'Machine Learning Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(303, 'Robotics Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(304, 'Cybersecurity Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(305, 'Blockchain Developer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(306, 'Cloud Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(307, 'DevOps Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(308, 'Web Architect', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(309, 'System Administrator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(310, 'IT Support Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(311, 'Help Desk Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(312, 'Digital Marketing Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(313, 'E-commerce Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(314, 'Affiliate Marketing Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(315, 'Brand Strategist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(316, 'Content Strategist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(317, 'User Experience Researcher', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(318, 'Business Development Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(319, 'Sales Operations Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(320, 'Customer Insights Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(321, 'Pricing Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(322, 'Inventory Control Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(323, 'Market Development Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(324, 'Franchise Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(325, 'Retail Analyst', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(326, 'Trade Marketing Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(327, 'Direct Marketing Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(328, 'Mobile Marketing Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(329, 'Email Marketing Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(330, 'Performance Marketing Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(331, 'Lead Generation Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(332, 'Creative Copywriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(333, 'Direct Response Copywriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(334, 'Web Content Writer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(335, 'SEO Copywriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(336, 'Technical Content Writer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(337, 'UX Copywriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(338, 'Brand Journalist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(339, 'Social Media Copywriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(340, 'Podcast Producer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(341, 'Video Producer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(342, 'Web Producer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(343, 'Content Editor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(344, 'Marketing Editor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(345, 'Social Media Editor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(346, 'Creative Strategist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(347, 'Advertising Account Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(348, 'Media Buyer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(349, 'Media Planner', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(350, 'Digital Ad Operations Specialist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(351, 'Print Production Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(352, 'Broadcast Producer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(353, 'Film Production Manager', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(354, 'Audio Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(355, 'Visual Effects Supervisor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(356, 'Post-Production Supervisor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(357, 'Live Sound Engineer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(358, 'Broadcast Technician', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(359, 'Talent Agent', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(360, 'Casting Director', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(361, 'Production Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(362, 'Set Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(363, 'Costume Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(364, 'Makeup Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(365, 'Sound Designer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(366, 'Script Supervisor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(367, 'Gaffer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(368, 'Grip', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(369, 'Camera Operator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(370, 'Drone Operator', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(371, 'Video Editor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(372, 'Colorist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(373, 'Screenwriter', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(374, 'Author', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(375, 'Novelist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(376, 'Poet', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(377, 'Playwright', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(378, 'Journalist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(379, 'Columnist', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(380, 'Blogger', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(381, 'Vlogger', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(382, 'Social Media Influencer', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(383, 'Public Speaker', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(384, 'Motivational Speaker', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(385, 'Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(386, 'Advisor', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(387, 'Business Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(388, 'Life Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(389, 'Career Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(390, 'Health Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(391, 'Fitness Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(392, 'Nutrition Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(393, 'Parenting Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(394, 'Relationship Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(395, 'Executive Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(396, 'Financial Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(397, 'Sales Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(398, 'Customer Service Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(399, 'Leadership Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(400, 'Team Building Coach', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(401, 'Change Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(402, 'Organizational Development Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(403, 'Strategy Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(404, 'Business Process Improvement Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(405, 'IT Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(406, 'HR Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(407, 'Legal Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(408, 'Marketing Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(409, 'Communications Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(410, 'Nonprofit Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(411, 'Philanthropy Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(412, 'Social Impact Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(413, 'Sustainability Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(414, 'Environmental Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(415, 'Risk Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(416, 'Crisis Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(417, 'Cultural Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(418, 'Diversity and Inclusion Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(419, 'Employee Engagement Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(420, 'Talent Acquisition Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(421, 'Training and Development Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(422, 'Learning and Development Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(423, 'Sales Training Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(424, 'Negotiation Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(425, 'Compensation Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(426, 'Benefits Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(427, 'Workforce Planning Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(428, 'Succession Planning Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(429, 'Employee Relations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(430, 'Performance Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(431, 'Change Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(432, 'HR Technology Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(433, 'Payroll Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(434, 'Recruitment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(435, 'Executive Search Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(436, 'Outplacement Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(437, 'Retirement Planning Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(438, 'Financial Services Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(439, 'Insurance Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(440, 'Tax Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(441, 'Investment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(442, 'Estate Planning Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(443, 'Wealth Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(444, 'Real Estate Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(445, 'Property Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(446, 'Facility Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(447, 'Supply Chain Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(448, 'Logistics Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(449, 'Operations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(450, 'Quality Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(451, 'Project Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(452, 'Program Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(453, 'Portfolio Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(454, 'Agile Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(455, 'Lean Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(456, 'Six Sigma Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(457, 'Scrum Master', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(458, 'Product Owner', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(459, 'Business Analyst Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(460, 'Systems Analyst Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(461, 'Database Administrator Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(462, 'Software Engineer Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(463, 'DevOps Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(464, 'Network Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(465, 'Security Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(466, 'Cloud Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(467, 'Big Data Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(468, 'AI Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(469, 'Data Science Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(470, 'Blockchain Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(471, 'Digital Transformation Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(472, 'IT Strategy Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(473, 'IT Governance Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(474, 'IT Risk Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(475, 'IT Compliance Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(476, 'IT Security Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(477, 'IT Infrastructure Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(478, 'IT Architecture Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(479, 'IT Operations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(480, 'IT Service Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(481, 'IT Vendor Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(482, 'IT Project Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(483, 'IT Change Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(484, 'IT Budgeting Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(485, 'IT Cost Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(486, 'IT Performance Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(487, 'IT Capacity Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(488, 'IT Incident Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(489, 'IT Problem Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(490, 'IT Service Desk Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(491, 'IT Service Level Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(492, 'IT Knowledge Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(493, 'IT Asset Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(494, 'IT Configuration Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(495, 'IT Release Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(496, 'IT Availability Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(497, 'IT Continuity Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(498, 'IT Security Operations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(499, 'IT Network Operations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(500, 'IT Server Operations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(501, 'IT Storage Operations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(502, 'IT Cloud Operations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(503, 'IT Data Center Operations Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(504, 'IT Disaster Recovery Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(505, 'IT Business Continuity Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(506, 'IT Service Improvement Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(507, 'IT Service Transition Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(508, 'IT Service Design Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(509, 'IT Service Operation Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(510, 'IT Service Strategy Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(511, 'IT Service Portfolio Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(512, 'IT Service Value Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(513, 'IT Service Risk Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(514, 'IT Service Quality Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(515, 'IT Service Process Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(516, 'IT Service Communication Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(517, 'IT Service Relationship Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(518, 'IT Service Performance Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(519, 'IT Service Knowledge Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(520, 'IT Service Capacity Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(521, 'IT Service Configuration Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(522, 'IT Service Availability Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(523, 'IT Service Continuity Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(524, 'IT Service Security Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(525, 'IT Service Improvement Plan Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(526, 'IT Service Roadmap Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(527, 'IT Service Maturity Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(528, 'IT Service Best Practices Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(529, 'IT Service Industry Standards Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(530, 'IT Service Benchmarking Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(531, 'IT Service Metrics Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(532, 'IT Service Reporting Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(533, 'IT Service Audit Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(534, 'IT Service Assessment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(535, 'IT Service Evaluation Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(536, 'IT Service Monitoring Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(537, 'IT Service Analytics Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(538, 'IT Service Management Tools Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(539, 'IT Service Management Software Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(540, 'IT Service Management Framework Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(541, 'IT Service Management Process Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(542, 'IT Service Management Strategy Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(543, 'IT Service Management Implementation Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(544, 'IT Service Management Transformation Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(545, 'IT Service Management Optimization Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(546, 'IT Service Management Governance Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(547, 'IT Service Management Training Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(548, 'IT Service Management Communication Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(549, 'IT Service Management Stakeholder Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(550, 'IT Service Management Culture Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(551, 'IT Service Management Leadership Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(552, 'IT Service Management Team Development Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(553, 'IT Service Management Skills Development Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(554, 'IT Service Management Knowledge Development Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(555, 'IT Service Management Capability Development Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(556, 'IT Service Management Competency Development Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(557, 'IT Service Management Performance Improvement Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(558, 'IT Service Management Results Measurement Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(559, 'IT Service Management Value Realization Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(560, 'IT Service Management Impact Assessment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(561, 'IT Service Management Return on Investment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(562, 'IT Service Management Business Case Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(563, 'IT Service Management Funding Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(564, 'IT Service Management Financial Management Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(565, 'IT Service Management Budgeting Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(566, 'IT Service Management Cost Control Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(567, 'IT Service Management Pricing Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(568, 'IT Service Management Revenue Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(569, 'IT Service Management Profitability Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(570, 'IT Service Management Sustainability Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(571, 'IT Service Management Scalability Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(572, 'IT Service Management Growth Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(573, 'IT Service Management Development Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(574, 'IT Service Management Innovation Model Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(575, 'IT Service Management Future Vision Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(576, 'IT Service Management Strategic Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(577, 'IT Service Management Business Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(578, 'IT Service Management Organizational Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(579, 'IT Service Management Team Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(580, 'IT Service Management Cultural Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(581, 'IT Service Management Change Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(582, 'IT Service Management Process Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(583, 'IT Service Management Quality Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(584, 'IT Service Management Value Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(585, 'IT Service Management Outcome Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(586, 'IT Service Management Impact Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(587, 'IT Service Management Strategy Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(588, 'IT Service Management Governance Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(589, 'IT Service Management Leadership Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(590, 'IT Service Management Stakeholder Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(591, 'IT Service Management Communication Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(592, 'IT Service Management Engagement Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(593, 'IT Service Management Collaboration Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(594, 'IT Service Management Partnership Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(595, 'IT Service Management Relationship Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(596, 'IT Service Management Trust Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(597, 'IT Service Management Credibility Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(598, 'IT Service Management Reputation Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(599, 'IT Service Management Integrity Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(600, 'IT Service Management Ethics Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(601, 'IT Service Management Accountability Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(602, 'IT Service Management Responsibility Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(603, 'IT Service Management Empowerment Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(604, 'IT Service Management Enablement Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(605, 'IT Service Management Support Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(606, 'IT Service Management Guidance Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(607, 'IT Service Management Mentoring Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(608, 'IT Service Management Coaching Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(609, 'IT Service Management Feedback Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(610, 'IT Service Management Recognition Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(611, 'IT Service Management Reward Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(612, 'IT Service Management Motivation Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(613, 'IT Service Management Inspiration Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(614, 'IT Service Management Innovation Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(615, 'IT Service Management Creativity Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36');
INSERT INTO `professions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(616, 'IT Service Management Collaboration Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(617, 'IT Service Management Teamwork Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(618, 'IT Service Management Productivity Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(619, 'IT Service Management Performance Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(620, 'IT Service Management Quality Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(621, 'IT Service Management Success Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(622, 'IT Service Management Excellence Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(623, 'IT Service Management Improvement Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(624, 'IT Service Management Development Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(625, 'IT Service Management Growth Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(626, 'IT Service Management Scalability Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(627, 'IT Service Management Sustainability Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(628, 'IT Service Management Value Creation Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(629, 'IT Service Management Value Proposition Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(630, 'IT Service Management Business Model Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(631, 'IT Service Management Innovation Model Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(632, 'IT Service Management Strategic Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(633, 'IT Service Management Transformation Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(634, 'IT Service Management Optimization Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(635, 'IT Service Management Assessment Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(636, 'IT Service Management Evaluation Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(637, 'IT Service Management Monitoring Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(638, 'IT Service Management Reporting Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(639, 'IT Service Management Communication Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(640, 'IT Service Management Engagement Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(641, 'IT Service Management Collaboration Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(642, 'IT Service Management Partnership Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(643, 'IT Service Management Relationship Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(644, 'IT Service Management Trust Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(645, 'IT Service Management Credibility Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(646, 'IT Service Management Reputation Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(647, 'IT Service Management Integrity Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(648, 'IT Service Management Ethics Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(649, 'IT Service Management Accountability Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(650, 'IT Service Management Responsibility Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(651, 'IT Service Management Empowerment Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(652, 'IT Service Management Enablement Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(653, 'IT Service Management Support Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(654, 'IT Service Management Guidance Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(655, 'IT Service Management Mentoring Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(656, 'IT Service Management Coaching Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(657, 'IT Service Management Feedback Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(658, 'IT Service Management Recognition Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(659, 'IT Service Management Reward Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(660, 'IT Service Management Motivation Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(661, 'IT Service Management Inspiration Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(662, 'IT Service Management Change Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(663, 'IT Service Management Process Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(664, 'IT Service Management Quality Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(665, 'IT Service Management Outcome Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(666, 'IT Service Management Impact Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(667, 'IT Service Management Strategy Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(668, 'IT Service Management Governance Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(669, 'IT Service Management Leadership Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(670, 'IT Service Management Stakeholder Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(671, 'IT Service Management Business Alignment Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(672, 'IT Service Management Organizational Alignment Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(673, 'IT Service Management Team Alignment Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(674, 'IT Service Management Cultural Alignment Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(675, 'IT Service Management Trust Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(676, 'IT Service Management Credibility Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(677, 'IT Service Management Reputation Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(678, 'IT Service Management Integrity Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(679, 'IT Service Management Ethics Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(680, 'IT Service Management Accountability Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(681, 'IT Service Management Responsibility Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(682, 'IT Service Management Empowerment Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(683, 'IT Service Management Enablement Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(684, 'IT Service Management Support Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(685, 'IT Service Management Guidance Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(686, 'IT Service Management Mentoring Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(687, 'IT Service Management Coaching Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(688, 'IT Service Management Feedback Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(689, 'IT Service Management Recognition Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(690, 'IT Service Management Reward Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(691, 'IT Service Management Motivation Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(692, 'IT Service Management Inspiration Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(693, 'IT Service Management Innovation Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(694, 'IT Service Management Creativity Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(695, 'IT Service Management Collaboration Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(696, 'IT Service Management Teamwork Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(697, 'IT Service Management Productivity Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(698, 'IT Service Management Performance Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(699, 'IT Service Management Quality Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(700, 'IT Service Management Success Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(701, 'IT Service Management Excellence Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(702, 'IT Service Management Improvement Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(703, 'IT Service Management Development Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(704, 'IT Service Management Growth Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(705, 'IT Service Management Scalability Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(706, 'IT Service Management Sustainability Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(707, 'IT Service Management Value Creation Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(708, 'IT Service Management Value Proposition Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(709, 'IT Service Management Business Model Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(710, 'IT Service Management Innovation Model Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(711, 'IT Service Management Strategic Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(712, 'IT Service Management Transformation Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(713, 'IT Service Management Optimization Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(714, 'IT Service Management Assessment Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(715, 'IT Service Management Evaluation Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(716, 'IT Service Management Monitoring Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(717, 'IT Service Management Reporting Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(718, 'IT Service Management Communication Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(719, 'IT Service Management Engagement Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(720, 'IT Service Management Collaboration Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(721, 'IT Service Management Partnership Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(722, 'IT Service Management Relationship Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(723, 'IT Service Management Trust Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(724, 'IT Service Management Credibility Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(725, 'IT Service Management Reputation Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(726, 'IT Service Management Integrity Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(727, 'IT Service Management Ethics Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(728, 'IT Service Management Accountability Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(729, 'IT Service Management Responsibility Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(730, 'IT Service Management Empowerment Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(731, 'IT Service Management Enablement Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(732, 'IT Service Management Support Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(733, 'IT Service Management Guidance Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(734, 'IT Service Management Mentoring Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(735, 'IT Service Management Coaching Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(736, 'IT Service Management Feedback Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(737, 'IT Service Management Recognition Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(738, 'IT Service Management Reward Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(739, 'IT Service Management Motivation Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(740, 'IT Service Management Inspiration Plan Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(741, 'IT Service Management Change Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(742, 'IT Service Management Process Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(743, 'IT Service Management Quality Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(744, 'IT Service Management Outcome Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(745, 'IT Service Management Impact Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(746, 'IT Service Management Strategy Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(747, 'IT Service Management Governance Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(748, 'IT Service Management Leadership Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(749, 'IT Service Management Stakeholder Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(750, 'IT Service Management Business Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(751, 'IT Service Management Organizational Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(752, 'IT Service Management Team Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(753, 'IT Service Management Cultural Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(754, 'IT Service Management Trust Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(755, 'IT Service Management Credibility Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(756, 'IT Service Management Reputation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(757, 'IT Service Management Integrity Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(758, 'IT Service Management Ethics Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(759, 'IT Service Management Accountability Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(760, 'IT Service Management Responsibility Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(761, 'IT Service Management Empowerment Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(762, 'IT Service Management Enablement Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(763, 'IT Service Management Support Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(764, 'IT Service Management Guidance Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(765, 'IT Service Management Mentoring Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(766, 'IT Service Management Coaching Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(767, 'IT Service Management Feedback Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(768, 'IT Service Management Recognition Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(769, 'IT Service Management Reward Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(770, 'IT Service Management Motivation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(771, 'IT Service Management Inspiration Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(772, 'IT Service Management Innovation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(773, 'IT Service Management Creativity Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(774, 'IT Service Management Collaboration Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(775, 'IT Service Management Teamwork Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(776, 'IT Service Management Productivity Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(777, 'IT Service Management Performance Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(778, 'IT Service Management Quality Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(779, 'IT Service Management Success Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(780, 'IT Service Management Excellence Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(781, 'IT Service Management Improvement Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(782, 'IT Service Management Development Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(783, 'IT Service Management Growth Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(784, 'IT Service Management Scalability Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(785, 'IT Service Management Sustainability Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(786, 'IT Service Management Value Creation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(787, 'IT Service Management Value Proposition Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(788, 'IT Service Management Business Model Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(789, 'IT Service Management Innovation Model Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(790, 'IT Service Management Strategic Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(791, 'IT Service Management Transformation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(792, 'IT Service Management Optimization Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(793, 'IT Service Management Assessment Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(794, 'IT Service Management Evaluation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(795, 'IT Service Management Monitoring Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(796, 'IT Service Management Reporting Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(797, 'IT Service Management Communication Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(798, 'IT Service Management Engagement Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(799, 'IT Service Management Collaboration Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(800, 'IT Service Management Partnership Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(801, 'IT Service Management Relationship Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(802, 'IT Service Management Trust Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(803, 'IT Service Management Credibility Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(804, 'IT Service Management Reputation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(805, 'IT Service Management Integrity Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(806, 'IT Service Management Ethics Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(807, 'IT Service Management Accountability Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(808, 'IT Service Management Responsibility Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(809, 'IT Service Management Empowerment Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(810, 'IT Service Management Enablement Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(811, 'IT Service Management Support Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(812, 'IT Service Management Guidance Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(813, 'IT Service Management Mentoring Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(814, 'IT Service Management Coaching Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(815, 'IT Service Management Feedback Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(816, 'IT Service Management Recognition Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(817, 'IT Service Management Reward Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(818, 'IT Service Management Motivation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(819, 'IT Service Management Inspiration Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(820, 'IT Service Management Innovation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(821, 'IT Service Management Creativity Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(822, 'IT Service Management Collaboration Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(823, 'IT Service Management Teamwork Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(824, 'IT Service Management Productivity Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(825, 'IT Service Management Performance Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(826, 'IT Service Management Quality Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(827, 'IT Service Management Success Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(828, 'IT Service Management Excellence Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(829, 'IT Service Management Improvement Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(830, 'IT Service Management Development Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(831, 'IT Service Management Growth Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(832, 'IT Service Management Scalability Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(833, 'IT Service Management Sustainability Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(834, 'IT Service Management Value Creation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(835, 'IT Service Management Value Proposition Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(836, 'IT Service Management Business Model Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(837, 'IT Service Management Innovation Model Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(838, 'IT Service Management Strategic Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(839, 'IT Service Management Transformation Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(840, 'IT Service Management Optimization Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(841, 'IT Service Management Assessment Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(842, 'IT Service Management Evaluation Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(843, 'IT Service Management Monitoring Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(844, 'IT Service Management Reporting Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(845, 'IT Service Management Communication Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(846, 'IT Service Management Engagement Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(847, 'IT Service Management Collaboration Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(848, 'IT Service Management Partnership Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(849, 'IT Service Management Relationship Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(850, 'IT Service Management Trust Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(851, 'IT Service Management Credibility Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(852, 'IT Service Management Reputation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(853, 'IT Service Management Integrity Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(854, 'IT Service Management Ethics Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(855, 'IT Service Management Accountability Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(856, 'IT Service Management Responsibility Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(857, 'IT Service Management Empowerment Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(858, 'IT Service Management Enablement Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(859, 'IT Service Management Support Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(860, 'IT Service Management Guidance Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(861, 'IT Service Management Mentoring Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(862, 'IT Service Management Coaching Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(863, 'IT Service Management Feedback Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(864, 'IT Service Management Recognition Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(865, 'IT Service Management Reward Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(866, 'IT Service Management Motivation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(867, 'IT Service Management Inspiration Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(868, 'IT Service Management Innovation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(869, 'IT Service Management Creativity Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(870, 'IT Service Management Collaboration Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(871, 'IT Service Management Teamwork Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(872, 'IT Service Management Productivity Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(873, 'IT Service Management Performance Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(874, 'IT Service Management Quality Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(875, 'IT Service Management Success Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(876, 'IT Service Management Excellence Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(877, 'IT Service Management Improvement Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(878, 'IT Service Management Development Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(879, 'IT Service Management Growth Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(880, 'IT Service Management Scalability Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(881, 'IT Service Management Sustainability Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(882, 'IT Service Management Value Creation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(883, 'IT Service Management Value Proposition Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(884, 'IT Service Management Business Model Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(885, 'IT Service Management Innovation Model Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(886, 'IT Service Management Strategic Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(887, 'IT Service Management Transformation Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(888, 'IT Service Management Optimization Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(889, 'IT Service Management Assessment Plan Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(890, 'IT Service Management Evaluation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(891, 'IT Service Management Monitoring Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(892, 'IT Service Management Reporting Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(893, 'IT Service Management Communication Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(894, 'IT Service Management Engagement Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(895, 'IT Service Management Collaboration Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(896, 'IT Service Management Partnership Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(897, 'IT Service Management Relationship Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(898, 'IT Service Management Trust Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(899, 'IT Service Management Credibility Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(900, 'IT Service Management Reputation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(901, 'IT Service Management Integrity Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(902, 'IT Service Management Ethics Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(903, 'IT Service Management Accountability Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(904, 'IT Service Management Responsibility Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(905, 'IT Service Management Empowerment Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(906, 'IT Service Management Enablement Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(907, 'IT Service Management Support Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(908, 'IT Service Management Guidance Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(909, 'IT Service Management Mentoring Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(910, 'IT Service Management Coaching Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(911, 'IT Service Management Feedback Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(912, 'IT Service Management Recognition Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(913, 'IT Service Management Reward Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(914, 'IT Service Management Motivation Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(915, 'IT Service Management Inspiration Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(916, 'IT Service Management Change Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(917, 'IT Service Management Process Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(918, 'IT Service Management Quality Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(919, 'IT Service Management Outcome Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(920, 'IT Service Management Impact Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(921, 'IT Service Management Strategy Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(922, 'IT Service Management Governance Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(923, 'IT Service Management Leadership Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(924, 'IT Service Management Stakeholder Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(925, 'IT Service Management Business Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(926, 'IT Service Management Organizational Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(927, 'IT Service Management Team Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(928, 'IT Service Management Cultural Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(929, 'IT Service Management Trust Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(930, 'IT Service Management Credibility Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(931, 'IT Service Management Reputation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(932, 'IT Service Management Integrity Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(933, 'IT Service Management Ethics Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(934, 'IT Service Management Accountability Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(935, 'IT Service Management Responsibility Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(936, 'IT Service Management Empowerment Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(937, 'IT Service Management Enablement Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(938, 'IT Service Management Support Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(939, 'IT Service Management Guidance Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(940, 'IT Service Management Mentoring Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(941, 'IT Service Management Coaching Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(942, 'IT Service Management Feedback Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(943, 'IT Service Management Recognition Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(944, 'IT Service Management Reward Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(945, 'IT Service Management Motivation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(946, 'IT Service Management Inspiration Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(947, 'IT Service Management Innovation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(948, 'IT Service Management Creativity Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(949, 'IT Service Management Collaboration Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(950, 'IT Service Management Teamwork Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(951, 'IT Service Management Productivity Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(952, 'IT Service Management Performance Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(953, 'IT Service Management Quality Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(954, 'IT Service Management Success Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(955, 'IT Service Management Excellence Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(956, 'IT Service Management Improvement Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(957, 'IT Service Management Development Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(958, 'IT Service Management Growth Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(959, 'IT Service Management Scalability Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(960, 'IT Service Management Sustainability Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(961, 'IT Service Management Value Creation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(962, 'IT Service Management Value Proposition Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(963, 'IT Service Management Business Model Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(964, 'IT Service Management Innovation Model Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(965, 'IT Service Management Strategic Plan Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(966, 'IT Service Management Transformation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(967, 'IT Service Management Optimization Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(968, 'IT Service Management Assessment Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(969, 'IT Service Management Evaluation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(970, 'IT Service Management Monitoring Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(971, 'IT Service Management Reporting Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(972, 'IT Service Management Communication Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(973, 'IT Service Management Engagement Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(974, 'IT Service Management Collaboration Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(975, 'IT Service Management Partnership Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(976, 'IT Service Management Relationship Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(977, 'IT Service Management Trust Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(978, 'IT Service Management Credibility Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(979, 'IT Service Management Reputation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(980, 'IT Service Management Integrity Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(981, 'IT Service Management Ethics Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(982, 'IT Service Management Accountability Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(983, 'IT Service Management Responsibility Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(984, 'IT Service Management Empowerment Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(985, 'IT Service Management Enablement Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(986, 'IT Service Management Support Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(987, 'IT Service Management Guidance Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(988, 'IT Service Management Mentoring Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(989, 'IT Service Management Coaching Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(990, 'IT Service Management Feedback Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(991, 'IT Service Management Recognition Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(992, 'IT Service Management Reward Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(993, 'IT Service Management Motivation Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(994, 'IT Service Management Inspiration Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(995, 'IT Service Management Change Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(996, 'IT Service Management Process Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(997, 'IT Service Management Quality Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(998, 'IT Service Management Outcome Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(999, 'IT Service Management Impact Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1000, 'IT Service Management Strategy Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1001, 'IT Service Management Governance Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1002, 'IT Service Management Leadership Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1003, 'IT Service Management Stakeholder Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1004, 'IT Service Management Business Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1005, 'IT Service Management Organizational Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1006, 'IT Service Management Team Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1007, 'IT Service Management Cultural Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1008, 'IT Service Management Trust Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1009, 'IT Service Management Credibility Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1010, 'IT Service Management Reputation Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1011, 'IT Service Management Integrity Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36');
INSERT INTO `professions` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1012, 'IT Service Management Ethics Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1013, 'IT Service Management Accountability Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1014, 'IT Service Management Responsibility Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1015, 'IT Service Management Empowerment Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1016, 'IT Service Management Enablement Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1017, 'IT Service Management Support Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1018, 'IT Service Management Guidance Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1019, 'IT Service Management Mentoring Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1020, 'IT Service Management Coaching Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1021, 'IT Service Management Feedback Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1022, 'IT Service Management Recognition Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1023, 'IT Service Management Reward Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1024, 'IT Service Management Motivation Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1025, 'IT Service Management Inspiration Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1026, 'IT Service Management Innovation Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1027, 'IT Service Management Creativity Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1028, 'IT Service Management Collaboration Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1029, 'IT Service Management Teamwork Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1030, 'IT Service Management Productivity Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1031, 'IT Service Management Performance Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1032, 'IT Service Management Quality Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1033, 'IT Service Management Success Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1034, 'IT Service Management Excellence Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1035, 'IT Service Management Improvement Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1036, 'IT Service Management Development Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1037, 'IT Service Management Growth Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1038, 'IT Service Management Scalability Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1039, 'IT Service Management Sustainability Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1040, 'IT Service Management Value Creation Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1041, 'IT Service Management Value Proposition Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1042, 'IT Service Management Business Model Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1043, 'IT Service Management Innovation Model Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1044, 'IT Service Management Strategic Plan Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1045, 'IT Service Management Transformation Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1046, 'IT Service Management Optimization Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1047, 'IT Service Management Assessment Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1048, 'IT Service Management Evaluation Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1049, 'IT Service Management Monitoring Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1050, 'IT Service Management Reporting Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1051, 'IT Service Management Communication Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1052, 'IT Service Management Engagement Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1053, 'IT Service Management Collaboration Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1054, 'IT Service Management Partnership Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1055, 'IT Service Management Relationship Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1056, 'IT Service Management Trust Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1057, 'IT Service Management Credibility Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1058, 'IT Service Management Reputation Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1059, 'IT Service Management Integrity Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1060, 'IT Service Management Ethics Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1061, 'IT Service Management Accountability Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1062, 'IT Service Management Responsibility Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1063, 'IT Service Management Empowerment Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1064, 'IT Service Management Enablement Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1065, 'IT Service Management Support Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1066, 'IT Service Management Guidance Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1067, 'IT Service Management Mentoring Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1068, 'IT Service Management Coaching Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1069, 'IT Service Management Feedback Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1070, 'IT Service Management Recognition Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1071, 'IT Service Management Reward Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1072, 'IT Service Management Motivation Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36'),
(1073, 'IT Service Management Inspiration Management Management Plan Alignment Consultant', 1, '2024-09-28 17:21:36', '2024-09-28 17:21:36');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `name`, `status`) VALUES
(1, 'Admin', 1),
(2, 'Seller', 1),
(3, 'Buyer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `number_of_referell` varchar(255) DEFAULT NULL,
  `number_of_sales` varchar(255) DEFAULT NULL,
  `number_of_blogs` int(11) DEFAULT NULL,
  `salary_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_ads`
--

CREATE TABLE `seller_ads` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_review`
--

CREATE TABLE `seller_review` (
  `id` bigint(20) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `seller_id` bigint(20) NOT NULL,
  `buyer_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `send_message`
--

CREATE TABLE `send_message` (
  `id` int(11) NOT NULL,
  `candidate_name` varchar(255) DEFAULT NULL,
  `candidate_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `candidate_cc` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `send_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL COMMENT 'primary key of project table',
  `emp_id` varchar(255) DEFAULT NULL COMMENT 'primary key of employee table',
  `type` tinyint(4) DEFAULT 1,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `done_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Pending, 2 = Processing, 3 = Done',
  `email_files` varchar(3) DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `forSellerCommission` int(11) DEFAULT NULL,
  `forBuyerCommission` int(11) DEFAULT NULL,
  `deposit_service_charge` int(11) DEFAULT NULL COMMENT '%',
  `convert_php_amt` float DEFAULT NULL,
  `withdraw_service_charge` int(11) DEFAULT NULL COMMENT '%',
  `withdraw_minimum_amount` int(11) DEFAULT NULL,
  `minimum_trade_amount` int(11) DEFAULT NULL,
  `minimum_deposit_amount` int(11) DEFAULT NULL,
  `level_1_bonus` int(11) DEFAULT NULL,
  `level_2_bonus` int(11) DEFAULT NULL,
  `level_3_bonus` int(11) DEFAULT NULL,
  `level_4_bonus` int(11) DEFAULT NULL,
  `level_5_bonus` int(11) DEFAULT NULL,
  `trade_fee` int(11) DEFAULT NULL COMMENT '%',
  `first_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `second_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `third_up_lin_com` int(11) DEFAULT NULL COMMENT '%',
  `trade_percent` int(11) DEFAULT NULL COMMENT '%',
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `emergency` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_photo` varchar(244) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `pphoto` varchar(255) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `currency` varchar(150) DEFAULT NULL,
  `openinig_balance_date` date DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `openinig_balance_comments` text DEFAULT NULL,
  `fblink` varchar(255) DEFAULT NULL,
  `twitterlink` varchar(255) DEFAULT NULL,
  `linkdinlink` varchar(255) DEFAULT NULL,
  `instragramlink` varchar(255) DEFAULT NULL,
  `store_policy` longtext DEFAULT NULL,
  `crypto_wallet_address` varchar(255) DEFAULT NULL,
  `master_pass_acc_no` varchar(255) DEFAULT NULL,
  `whatsApp` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `register_bonus` int(11) DEFAULT NULL,
  `setting_id` int(11) NOT NULL,
  `mininmum_deposit_amount` varchar(255) DEFAULT NULL,
  `maximum_deposit_amount` int(11) DEFAULT NULL,
  `daily_max_withdraw_request` int(11) DEFAULT NULL,
  `withdrawal_free_amount` int(11) DEFAULT NULL,
  `service_fee` int(11) DEFAULT NULL,
  `withdrawal_free_on_percentage` int(11) DEFAULT NULL,
  `minimum_withdrawal` int(11) DEFAULT NULL,
  `maximum_withdrawal` int(11) DEFAULT NULL,
  `mimumun_transfer_amount_to_other_user` int(11) DEFAULT NULL,
  `maximum_transfer_amount_to_other_user` int(11) DEFAULT NULL,
  `gig_limit` int(11) DEFAULT NULL,
  `transfer_fee_fixed_amount` int(11) DEFAULT NULL,
  `traansfer_fee_on_percentage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `name`, `forSellerCommission`, `forBuyerCommission`, `deposit_service_charge`, `convert_php_amt`, `withdraw_service_charge`, `withdraw_minimum_amount`, `minimum_trade_amount`, `minimum_deposit_amount`, `level_1_bonus`, `level_2_bonus`, `level_3_bonus`, `level_4_bonus`, `level_5_bonus`, `trade_fee`, `first_up_lin_com`, `second_up_lin_com`, `third_up_lin_com`, `trade_percent`, `tel`, `email`, `address`, `hotline`, `emergency`, `photo`, `description`, `copyright`, `status`, `admin_photo`, `admin_name`, `admin_email`, `admin_phone`, `meta_keywords`, `meta_description`, `pphoto`, `bg_color`, `currency`, `openinig_balance_date`, `reffer_bonus`, `openinig_balance_comments`, `fblink`, `twitterlink`, `linkdinlink`, `instragramlink`, `store_policy`, `crypto_wallet_address`, `master_pass_acc_no`, `whatsApp`, `website`, `telegram`, `register_bonus`, `setting_id`, `mininmum_deposit_amount`, `maximum_deposit_amount`, `daily_max_withdraw_request`, `withdrawal_free_amount`, `service_fee`, `withdrawal_free_on_percentage`, `minimum_withdrawal`, `maximum_withdrawal`, `mimumun_transfer_amount_to_other_user`, `maximum_transfer_amount_to_other_user`, `gig_limit`, `transfer_fee_fixed_amount`, `traansfer_fee_on_percentage`) VALUES
(1, 'TRADING', 20, 10, 0, 64, 6, 10, 5, 10, 20, 11, 9, 7, 5, 6, 9, 4, 3, 10, '+44245454545', 'info@abcd.com', 'Addres', '000000', '+000000', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Business Description', 'Copyright © 2025 Isumax Inc. All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '$', '2020-05-13', 5, NULL, 'isumax.com', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '', 'TPpMvdKfhENfJqYZsDJQLgEopMRBy15jeU', '225588996633', '5989899', '22', '222', 0, 1, '5200', 3333, 4544, 45, 5, 4, 34, 333, 22, 22, 5, 22, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `invite_code` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `join_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(225) DEFAULT NULL,
  `phone_number` varchar(225) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `country_1` varchar(255) DEFAULT NULL,
  `country_2` varchar(255) DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `address_3` text DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL,
  `github` varchar(225) DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `linkdin` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `business_owner_name` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_name_slug` varchar(255) DEFAULT NULL,
  `business_register_num` varchar(255) DEFAULT NULL,
  `business_address` varchar(255) DEFAULT NULL,
  `business_warehouse_address` varchar(255) DEFAULT NULL,
  `phone_1` varchar(255) DEFAULT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `business_email` varchar(255) DEFAULT NULL,
  `business_phone` varchar(255) DEFAULT NULL,
  `profession_name` varchar(255) DEFAULT NULL,
  `business_return_name` varchar(255) DEFAULT NULL,
  `birthdate` varchar(255) DEFAULT NULL,
  `business_return_email` varchar(255) DEFAULT NULL,
  `landmark_2` varchar(255) DEFAULT NULL,
  `landmark_1` varchar(255) DEFAULT NULL,
  `introduce_yourself` text DEFAULT NULL,
  `business_return_address` varchar(255) DEFAULT NULL,
  `business_return_phone` varchar(255) DEFAULT NULL,
  `business_logo` varchar(255) DEFAULT NULL,
  `verification_code` int(11) DEFAULT NULL,
  `verification_code_expires_at` varchar(255) DEFAULT NULL,
  `verification_status` int(1) DEFAULT 0,
  `show_password` varchar(225) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `login_in_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `profile_status` int(1) DEFAULT 0,
  `home_status` int(11) DEFAULT NULL,
  `city_1` varchar(255) DEFAULT NULL,
  `city_2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `employee_id`, `invite_code`, `userType`, `reffer_bonus`, `join_id`, `name`, `slug`, `first_name`, `last_name`, `email`, `image`, `phone_number`, `address`, `address_1`, `country_1`, `country_2`, `address_2`, `address_3`, `website`, `github`, `twitter`, `instagram`, `facebook`, `linkdin`, `whatsapp`, `business_owner_name`, `business_name`, `business_name_slug`, `business_register_num`, `business_address`, `business_warehouse_address`, `phone_1`, `phone_2`, `gender`, `business_email`, `business_phone`, `profession_name`, `business_return_name`, `birthdate`, `business_return_email`, `landmark_2`, `landmark_1`, `introduce_yourself`, `business_return_address`, `business_return_phone`, `business_logo`, `verification_code`, `verification_code_expires_at`, `verification_status`, `show_password`, `email_verified_at`, `password`, `remember_token`, `entry_by`, `login_in_time`, `created_at`, `updated_at`, `status`, `profile_status`, `home_status`, `city_1`, `city_2`) VALUES
(1, 1, NULL, NULL, NULL, 75, 2, 'Developer', 'developer', '', '', '_mdbijon@gmail.com', '/backend/files/QghrRIJF2QIUpvBdeuQj.png', NULL, '', '', '', '', '', '', 'Web', 'git', 'Twitter', 'instgr', 'face', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', 'Web Developer', '', '', '', '', '', NULL, '', '', NULL, 0, '', 1, 'bangladesh@123', NULL, '$2y$10$P0qvNbiQ2vKn18KpP4Pnkevkh0BU7C7A9h0fCU/51Se81vrpk6O02', NULL, NULL, '2025-03-12 00:02:55', '2023-12-17 02:13:10', '2025-03-12 13:13:09', 1, 0, NULL, '', ''),
(2, 3, NULL, '1742665674', 3, NULL, 0, 'Bijon', 'bijon', NULL, NULL, '__mdbijon@gmail.com', NULL, '019157289821', NULL, NULL, '23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '85', NULL, NULL, NULL, NULL, NULL, 'Test', NULL, NULL, NULL, NULL, NULL, 0, 'mdbijon@yahoo.com', NULL, '$2y$10$Z2tPsmVeMpXNvBiYqAUjHuOiVD9tEjzNe7kTGH2bgFYldIrqRaaga', NULL, NULL, '2025-03-23 00:06:14', '2025-03-22 17:47:54', '2025-03-22 18:06:15', 1, 1, NULL, NULL, NULL),
(3, 3, NULL, '1742679235', 3, NULL, 0, 'M NAWAZ', 'm-nawaz', NULL, NULL, 'NAWAZISUMAX@GMAIL.COM', NULL, NULL, NULL, NULL, '235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'Nawaz@911', NULL, '$2y$10$FFM7g/3W3bE98fAWedy7aOvVJX6r7wiYt4qpAi/nttGUrcDJ3499i', NULL, NULL, NULL, '2025-03-22 21:33:55', '2025-03-22 21:33:55', 0, 0, NULL, NULL, NULL),
(4, 3, NULL, '1742717518', 3, NULL, 0, 'Allmobiledata7', 'allmobiledata7', NULL, NULL, 'allmobiledata7@gmail.com', NULL, '+923425556466', NULL, NULL, '173', NULL, NULL, NULL, 'null', '', '', NULL, NULL, 'null', 'null', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', NULL, NULL, '408', NULL, NULL, NULL, NULL, NULL, '🌟 Digital Marketing Expert | Growth Strategist | Brand Builder<br />\r\n<br />\r\n🚀 Helping businesses grow with result-driven marketing strategies! With [X] years of experience in digital marketing, social media, SEO, and paid ads, I specialize in:<br />\r\n<br />\r\n✅ Social Media Marketing (Facebook, Instagram, LinkedIn, Twitter)<br />\r\n✅ Google & Facebook Ads (PPC, Lead Generation, E-commerce)<br />\r\n✅ SEO & Content Marketing (On-page & Off-page, Blog Writing)<br />\r\n✅ Brand Awareness & Engagement (Influencer Marketing, PR)<br />\r\n✅ Email & SMS Marketing (Lead Nurturing, Conversions)<br />\r\n<br />\r\n🔹 Why Work With Me?<br />\r\n✔ Data-Driven & ROI-Focused Strategies<br />\r\n✔ Personalized Marketing Plans<br />\r\n✔ Transparent Communication & Reporting<br />\r\n<br />\r\n📈 Ready to take your business to the next level? Let’s connect and grow together! 🚀<br />\r\n<br />\r\n📩 Contact me today!', NULL, NULL, NULL, NULL, NULL, 0, 'Pakistan@7890', NULL, '$2y$10$BPBsugUOUAugn6VqL0/e4eCR6TDmt0wMmThVpR8JDjX3C1c8P05Qm', NULL, NULL, '2025-03-23 13:17:07', '2025-03-23 08:11:58', '2025-03-23 08:17:09', 1, 1, NULL, NULL, NULL),
(5, 3, NULL, '1742730565', 3, NULL, 0, 'JONS', 'jons', NULL, NULL, 'mdbijon@gmail.com', NULL, '01915728982', NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6', NULL, NULL, NULL, NULL, NULL, 'JONS', NULL, NULL, NULL, NULL, NULL, 0, 'mdbijon@gmail.com', NULL, '$2y$10$yL5v2N61VevvRw3EZNiL7uUvRq5MctY32CaiNLKH3Q8iZwPbE3uWG', NULL, NULL, '2025-03-23 22:43:43', '2025-03-23 11:49:25', '2025-03-23 16:43:44', 1, 1, NULL, NULL, NULL),
(6, 3, NULL, '1742736498', 3, NULL, 0, 'Md Mamunur Rashid', 'md-mamunur-rashid', NULL, NULL, 'mmdmamun@gmail.com', NULL, '8801753828855', NULL, NULL, '23', NULL, NULL, NULL, '', '', '', NULL, NULL, '', '+971 544524435', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, 'Welcome! I\'m Md Mamunur Rashid – Your Expert Project Manager<br />\r\n<br />\r\nAre you looking for a skilled **Project Manager** to bring your ideas to life, streamline your workflows, and ensure timely delivery? You’re in the right place!  <br />\r\n<br />\r\nWith 8 years of experience managing projects across diverse industries, I specialize in:  <br />\r\n✅ **Project Planning & Execution** – Turning concepts into actionable roadmaps  <br />\r\n✅ **Agile & Scrum Methodologies** – Ensuring efficiency and adaptability  <br />\r\n✅ **Team Coordination & Communication** – Keeping everyone aligned and on track  <br />\r\n✅ **Risk & Budget Management** – Delivering quality results within time and budget  <br />\r\n<br />\r\nI thrive on helping businesses and entrepreneurs **stay organized, meet deadlines, and achieve their goals.** Whether it’s a startup or a large-scale operation, I bring **clarity, structure, and efficiency** to your projects.  <br />\r\n<br />\r\n📩 **Let’s discuss how I can help your business succeed!**', NULL, NULL, NULL, NULL, NULL, 0, 'Bangladesh2107', NULL, '$2y$10$ONRuS0nDhf8ygK/mIka72eq48jC/RPA2SaAhsDC1YbS7WQ7UZkN7a', NULL, NULL, '2025-03-23 23:53:19', '2025-03-23 13:28:18', '2025-03-23 17:53:20', 1, 1, NULL, NULL, NULL),
(7, 3, NULL, '1742740136', 3, NULL, 0, 'Tmcwallet', 'tmcwallet', NULL, NULL, 'tmcwallet@gmail.com', NULL, '34b', NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '18', NULL, NULL, NULL, NULL, NULL, 'Bdhxh', NULL, NULL, NULL, NULL, NULL, 0, 'Pakistan@4200', NULL, '$2y$10$2/iDkfY2QIjf9RK8ucRAlO7BTqH8RmsKucEzLKAt/F2mxD2W1nnci', NULL, NULL, '2025-03-23 20:24:11', '2025-03-23 14:28:57', '2025-03-23 15:24:14', 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `withdrawID` varchar(255) DEFAULT NULL,
  `depscription` text DEFAULT NULL,
  `withdrawal_amount` varchar(255) DEFAULT NULL,
  `selected_type` int(11) DEFAULT NULL COMMENT '1=Crypto\r\n2=Paypal\r\n3=Payooner\r\n4=Bank',
  `type` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_num` varchar(255) DEFAULT NULL,
  `ibn_no` varchar(255) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `method_id` int(11) DEFAULT NULL,
  `receivable_amount` int(11) DEFAULT NULL,
  `crypto_wallet_type` varchar(255) DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `withdrawal_pin` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `transection_fee` int(11) NOT NULL COMMENT '%',
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'After 5% deduction amount',
  `status` int(11) DEFAULT NULL COMMENT ' 	0=Review,2=Reject,1=Approved 	',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_method`
--

CREATE TABLE `withdrawal_method` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `countryName` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL COMMENT 'Paypal or Payoneer email id use ',
  `account_name` varchar(255) DEFAULT NULL,
  `account_num` varchar(255) DEFAULT NULL,
  `ibn_no` varchar(255) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `swift_bic` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogcategorys`
--
ALTER TABLE `blogcategorys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug_unique` (`slug`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_review`
--
ALTER TABLE `buyer_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_token`
--
ALTER TABLE `buy_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancel_orders`
--
ALTER TABLE `cancel_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `categorys_backup`
--
ALTER TABLE `categorys_backup`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_buyer_id` (`buyer_id`),
  ADD KEY `idx_seller_id` (`seller_id`),
  ADD KEY `idx_sender_id` (`sender_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gig`
--
ALTER TABLE `gig`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gig_slug` (`gig_slug`);

--
-- Indexes for table `gigWish_list`
--
ALTER TABLE `gigWish_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gig_images_history`
--
ALTER TABLE `gig_images_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_commission`
--
ALTER TABLE `level_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_product`
--
ALTER TABLE `orders_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sku` (`sku`);

--
-- Indexes for table `professions`
--
ALTER TABLE `professions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_ads`
--
ALTER TABLE `seller_ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_review`
--
ALTER TABLE `seller_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_message`
--
ALTER TABLE `send_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `business_name_slug` (`business_name_slug`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_method`
--
ALTER TABLE `withdrawal_method`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_number` (`account_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogcategorys`
--
ALTER TABLE `blogcategorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `buyer_review`
--
ALTER TABLE `buyer_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buy_token`
--
ALTER TABLE `buy_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cancel_orders`
--
ALTER TABLE `cancel_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1470;

--
-- AUTO_INCREMENT for table `categorys_backup`
--
ALTER TABLE `categorys_backup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gig`
--
ALTER TABLE `gig`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gigWish_list`
--
ALTER TABLE `gigWish_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gig_images_history`
--
ALTER TABLE `gig_images_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level_commission`
--
ALTER TABLE `level_commission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders_product`
--
ALTER TABLE `orders_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professions`
--
ALTER TABLE `professions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1074;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_ads`
--
ALTER TABLE `seller_ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_review`
--
ALTER TABLE `seller_review`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `send_message`
--
ALTER TABLE `send_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_method`
--
ALTER TABLE `withdrawal_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
