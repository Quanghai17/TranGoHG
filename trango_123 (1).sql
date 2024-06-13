-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 09:00 AM
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
-- Database: `trango_123`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', 'banners\\June2024\\JjYLvJ8nrUVTC5xV1ROh.jpg', '2024-06-10 20:42:53', '2024-06-10 20:42:53'),
(2, 'Banner 2', 'banners\\June2024\\KEMVgUecW3Bn0xW4APTv.jpg', '2024-06-10 20:43:03', '2024-06-10 20:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(2, NULL, 1, 'Category 2', 'category-2', '2024-06-10 20:19:23', '2024-06-10 20:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(61, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 8, 'title', 'text', 'Tên sản phẩm', 0, 1, 1, 1, 1, 1, '{}', 2),
(63, 8, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:products,slug\"}}', 3),
(64, 8, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{}', 4),
(65, 8, 'price', 'text', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 5),
(66, 8, 'body', 'rich_text_box', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(67, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(68, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 9, 'tile', 'text', 'Tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(71, 9, 'desc', 'text_area', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 3),
(72, 9, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(73, 9, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(76, 9, 'price', 'text', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 4),
(77, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(78, 10, 'name', 'text', 'Tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(79, 10, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:projects,slug\"}}', 3),
(80, 10, 'desc', 'text_area', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 4),
(81, 10, 'images', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(82, 10, 'body', 'rich_text_box', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(83, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(84, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(7, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photo', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-10 20:42:18', '2024-06-10 20:42:18'),
(8, 'products', 'products', 'Sản phẩm', 'Sản phẩm', 'voyager-list-add', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-10 20:58:38', '2024-06-10 20:58:38'),
(9, 'staticdatas', 'staticdatas', 'Loại gỗ', 'Loại gỗ', 'voyager-chat', 'App\\Staticdata', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-06-10 21:10:39', '2024-06-10 21:12:56'),
(10, 'projects', 'projects', 'Dự án', 'Dự án', 'voyager-list-add', 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-06-10 21:20:13', '2024-06-10 21:20:13');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(2, 'Home menu', '2024-06-10 20:39:23', '2024-06-10 20:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-06-10 20:19:22', '2024-06-10 20:19:22', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2024-06-10 20:19:22', '2024-06-10 21:20:25', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 6, '2024-06-10 20:19:22', '2024-06-10 21:20:28', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 7, '2024-06-10 20:19:22', '2024-06-10 21:20:28', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 13, '2024-06-10 20:19:22', '2024-06-10 23:47:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, NULL, 12, '2024-06-10 20:19:22', '2024-06-10 23:47:38', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 1, '2024-06-10 20:19:22', '2024-06-10 23:47:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 2, '2024-06-10 20:19:22', '2024-06-10 23:47:38', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2024-06-10 20:19:22', '2024-06-10 23:47:38', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2024-06-10 20:19:22', '2024-06-10 23:47:38', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2024-06-10 20:19:23', '2024-06-10 21:20:25', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2024-06-10 20:19:23', '2024-06-10 21:20:25', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2024-06-10 20:19:23', '2024-06-10 21:20:25', 'voyager.pages.index', NULL),
(14, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 15, '2024-06-10 20:39:33', '2024-06-10 23:48:02', NULL, ''),
(15, 2, 'Giới thiệu', '/about', '_self', NULL, '#000000', NULL, 16, '2024-06-10 20:39:42', '2024-06-10 23:45:38', NULL, ''),
(16, 2, 'Sản phẩm', '/products', '_self', NULL, '#000000', NULL, 17, '2024-06-10 20:39:49', '2024-06-10 23:47:51', NULL, ''),
(17, 2, 'Dự án', '/projects', '_self', NULL, '#000000', NULL, 18, '2024-06-10 20:39:55', '2024-06-10 23:51:37', NULL, ''),
(18, 2, 'Liên hệ', '/contact', '_self', NULL, '#000000', NULL, 19, '2024-06-10 20:40:02', '2024-06-10 23:51:44', NULL, ''),
(19, 1, 'Banners', '', '_self', 'voyager-photo', NULL, NULL, 2, '2024-06-10 20:42:18', '2024-06-10 20:42:27', 'voyager.banners.index', NULL),
(20, 1, 'Sản phẩm', '', '_self', 'voyager-list-add', NULL, NULL, 3, '2024-06-10 20:58:38', '2024-06-10 20:58:46', 'voyager.products.index', NULL),
(21, 1, 'Loại gỗ', '', '_self', 'voyager-chat', NULL, NULL, 4, '2024-06-10 21:10:39', '2024-06-10 21:20:28', 'voyager.staticdatas.index', NULL),
(22, 1, 'Dự án', '', '_self', 'voyager-list-add', NULL, NULL, 5, '2024-06-10 21:20:13', '2024-06-10 21:20:28', 'voyager.projects.index', NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Trần gỗ Hoàng Gia', 'Thừa kế nét đẹp tinh hoa của ông cha ta để lại, cho ra những sản phẩm tinh túy nhất. Cung cấp những sản phẩm và dịch vụ của làng nghề truyền thống Việt Nam một cách hoàn hảo nhất, giới thiệu vẻ đẹp truyền thống của Việt Nam với bạn bè quốc tế đó là mục tiêu và là kim chỉ nam để Trần gỗ Hoàng Gia không ngừng nỗ lực, sáng tạo và phát triển', '<p>Thừa kế nét đẹp tinh hoa của &ocirc;ng cha ta để lại, cho ra những sản phẩm tinh t&uacute;y nhất. Cung cấp những sản phẩm v&agrave; dịch vụ của l&agrave;ng nghề truyền thống Việt Nam một c&aacute;ch ho&agrave;n hảo nhất, giới thiệu vẻ đẹp truyền thống của Việt Nam với bạn b&egrave; quốc tế đó là mục ti&ecirc;u và là kim chỉ nam đ&ecirc;̉ Trần gỗ Ho&agrave;ng Gia kh&ocirc;ng ngừng n&ocirc;̃ lực, sáng tạo và phát tri&ecirc;̉n.</p>\r\n<p>&rdquo; Mười S&aacute;u Năm&rdquo; v&agrave; &rdquo; Một chặng đường &ldquo;, Trần gỗ Ho&agrave;ng Gia c&aacute;i t&ecirc;n ng&agrave;y một gần như quen thuộc với qu&yacute; kh&aacute;ch h&agrave;ng trải d&agrave;i từ Bắc ra Nam khi nhắc đến những d&ograve;ng sản phẩm đồ gỗ uy t&iacute;n, chất lượng tạo nền tảng vững chắc cho sứ mệnh chiếm lĩnh thị trường miền Bắc n&oacute;i ri&ecirc;ng v&agrave; thị trường Việt Nam n&oacute;i chung, tại đ&acirc;y c&oacute; thể n&oacute;i l&agrave; c&aacute;i n&ocirc;i đ&atilde; sinh ra số lượng lớn những thợ l&agrave;nh nghề tài ba với h&agrave;ng ng&agrave;n d&ograve;ng sản phẩm đồ gỗ c&oacute; gi&aacute; trị cao về mặt thẩm mỹ, độ bền v&agrave; gi&aacute; trị về mặt thương mại.</p>\r\n<p>Thế mạnh của Trần gỗ Ho&agrave;ng Gia l&agrave; quy tụ được đội ngũ thiết kế, thi c&ocirc;ng đầy t&acirc;m huyết. Những sản phẩm được c&aacute;c nh&agrave; thiết kế, họa sỹ v&agrave; c&aacute;c nghệ nh&acirc;n l&agrave;ng nghề thổi hồn v&agrave;o th&ocirc;ng qua những đ&ocirc;i tay chuy&ecirc;n nghiệp. Kh&ocirc;ng chỉ chăm ch&uacute;t vẻ đẹp b&ecirc;n ngo&agrave;i, sản phẩm của Trần gỗ Ho&agrave;ng Gia c&ograve;n được đảm bảo từ b&ecirc;n trong l&agrave; nguy&ecirc;n liệu gỗ. Qu&yacute; kh&aacute;ch c&oacute; thể đến xem phần th&ocirc; v&agrave; k&yacute; đảm bảo trước khi ch&uacute;ng t&ocirc;i ho&agrave;n thiện phần b&ecirc;n ngo&agrave;i.</p>\r\n<p>Với bản lĩnh của người ti&ecirc;n phong trong lĩnh vực thiết sản xuất đồ thủ c&ocirc;ng mỹ nghệ tại Việt Nam. Đội ngũ chuy&ecirc;n gia v&agrave; c&aacute;c nghệ &nbsp;nh&acirc;n của Trần gỗ Ho&agrave;ng Gia kh&ocirc;ng ngừng s&aacute;ng tạo, kh&ocirc;ng chỉ cho ra đời những sản phẩm tốt nhất cho kh&aacute;ch h&agrave;ng m&agrave; c&ograve;n biến mỗi thiết kế l&agrave; một phong c&aacute;ch ri&ecirc;ng cho từng ng&ocirc;i nh&agrave; của Qu&yacute; kh&aacute;ch.</p>\r\n<p><img src=\"http://localhost/TranGo123/public//storage/pages/June2024/crVsJyNi7nLuZu96o06L.jpg\" alt=\"\" width=\"100%\" height=\"100%\"></p>', 'pages\\June2024\\76Ac0ZNrcPHexjDPrYlm.jpg', 'tran-go-hoang-gia', 'Thừa kế nét đẹp tinh hoa của ông cha ta để lại, cho ra những sản phẩm tinh túy nhất. Cung cấp những sản phẩm và dịch vụ của làng nghề truyền thống Việt Nam một cách hoàn hảo nhất, giới thiệu vẻ đẹp truyền thống của Việt Nam với bạn bè quốc tế đó là mục tiêu và là kim chỉ nam để Trần gỗ Hoàng Gia không ngừng nỗ lực, sáng tạo và phát triển', 'Thừa kế nét đẹp tinh hoa của ông cha ta để lại, cho ra những sản phẩm tinh túy nhất. Cung cấp những sản phẩm và dịch vụ của làng nghề truyền thống Việt Nam một cách hoàn hảo nhất, giới thiệu vẻ đẹp truyền thống của Việt Nam với bạn bè quốc tế đó là mục tiêu và là kim chỉ nam để Trần gỗ Hoàng Gia không ngừng nỗ lực, sáng tạo và phát triển', 'ACTIVE', '2024-06-10 20:19:23', '2024-06-10 20:47:47');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(2, 'browse_bread', NULL, '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(3, 'browse_database', NULL, '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(4, 'browse_media', NULL, '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(5, 'browse_compass', NULL, '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(6, 'browse_menus', 'menus', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(7, 'read_menus', 'menus', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(8, 'edit_menus', 'menus', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(9, 'add_menus', 'menus', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(10, 'delete_menus', 'menus', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(11, 'browse_roles', 'roles', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(12, 'read_roles', 'roles', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(13, 'edit_roles', 'roles', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(14, 'add_roles', 'roles', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(15, 'delete_roles', 'roles', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(16, 'browse_users', 'users', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(17, 'read_users', 'users', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(18, 'edit_users', 'users', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(19, 'add_users', 'users', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(20, 'delete_users', 'users', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(21, 'browse_settings', 'settings', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(22, 'read_settings', 'settings', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(23, 'edit_settings', 'settings', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(24, 'add_settings', 'settings', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(25, 'delete_settings', 'settings', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(26, 'browse_categories', 'categories', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(27, 'read_categories', 'categories', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(28, 'edit_categories', 'categories', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(29, 'add_categories', 'categories', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(30, 'delete_categories', 'categories', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(31, 'browse_posts', 'posts', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(32, 'read_posts', 'posts', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(33, 'edit_posts', 'posts', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(34, 'add_posts', 'posts', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(35, 'delete_posts', 'posts', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(36, 'browse_pages', 'pages', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(37, 'read_pages', 'pages', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(38, 'edit_pages', 'pages', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(39, 'add_pages', 'pages', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(40, 'delete_pages', 'pages', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(41, 'browse_banners', 'banners', '2024-06-10 20:42:18', '2024-06-10 20:42:18'),
(42, 'read_banners', 'banners', '2024-06-10 20:42:18', '2024-06-10 20:42:18'),
(43, 'edit_banners', 'banners', '2024-06-10 20:42:18', '2024-06-10 20:42:18'),
(44, 'add_banners', 'banners', '2024-06-10 20:42:18', '2024-06-10 20:42:18'),
(45, 'delete_banners', 'banners', '2024-06-10 20:42:18', '2024-06-10 20:42:18'),
(46, 'browse_products', 'products', '2024-06-10 20:58:38', '2024-06-10 20:58:38'),
(47, 'read_products', 'products', '2024-06-10 20:58:38', '2024-06-10 20:58:38'),
(48, 'edit_products', 'products', '2024-06-10 20:58:38', '2024-06-10 20:58:38'),
(49, 'add_products', 'products', '2024-06-10 20:58:38', '2024-06-10 20:58:38'),
(50, 'delete_products', 'products', '2024-06-10 20:58:38', '2024-06-10 20:58:38'),
(51, 'browse_staticdatas', 'staticdatas', '2024-06-10 21:10:39', '2024-06-10 21:10:39'),
(52, 'read_staticdatas', 'staticdatas', '2024-06-10 21:10:39', '2024-06-10 21:10:39'),
(53, 'edit_staticdatas', 'staticdatas', '2024-06-10 21:10:39', '2024-06-10 21:10:39'),
(54, 'add_staticdatas', 'staticdatas', '2024-06-10 21:10:39', '2024-06-10 21:10:39'),
(55, 'delete_staticdatas', 'staticdatas', '2024-06-10 21:10:39', '2024-06-10 21:10:39'),
(56, 'browse_projects', 'projects', '2024-06-10 21:20:13', '2024-06-10 21:20:13'),
(57, 'read_projects', 'projects', '2024-06-10 21:20:13', '2024-06-10 21:20:13'),
(58, 'edit_projects', 'projects', '2024-06-10 21:20:13', '2024-06-10 21:20:13'),
(59, 'add_projects', 'projects', '2024-06-10 21:20:13', '2024-06-10 21:20:13'),
(60, 'delete_projects', 'projects', '2024-06-10 21:20:13', '2024-06-10 21:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1);

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
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts\\June2024\\KFwZXwpKXeZ6kt7exo0E.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-06-10 20:19:23', '2024-06-10 20:28:03'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2024-06-10 20:19:23', '2024-06-10 20:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `images`, `price`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Trần gỗ xoan', 'tran-go-xoan', '[\"products\\\\June2024\\\\gGa4eDO1rhliaJaRuHF9.jpg\"]', 2000000, NULL, '2024-06-10 20:59:31', '2024-06-10 20:59:31'),
(2, 'Trần gỗ tam cấp', 'tran-go-tam-cap', '[\"products\\\\June2024\\\\pHPDXoUERGYEJmqgYK3m.jpg\"]', 2000000, NULL, '2024-06-10 21:00:01', '2024-06-10 21:00:01'),
(3, 'Ốp chân tường', 'op-chan-tuong', '[\"products\\\\June2024\\\\yydXY8y8yTWR6mjz8aAg.jpg\"]', 1355000, NULL, '2024-06-10 21:00:31', '2024-06-10 21:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `images` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `slug`, `desc`, `images`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Trần gỗ nhà anh Minh Thái Bình', 'tran-go-nha-anh-minh-thai-binh', 'Trần gỗ nhà anh Minh Thái Bình', 'projects\\June2024\\PRk0QhorDqVP3Ip4hy1c.jpg', NULL, '2024-06-10 21:21:05', '2024-06-10 21:21:05'),
(2, 'Trần gỗ nhà chị Huệ Bắc Giang', 'tran-go-nha-chi-hue-bac-giang', NULL, 'projects\\June2024\\dII6rYu9ubhj8PnrDblX.jpg', NULL, '2024-06-10 21:21:00', '2024-06-10 21:27:05'),
(3, 'Trần gỗ nhà anh Long lục nam', 'tran-go-nha-anh-long-luc-nam', NULL, 'projects\\June2024\\DRhlzRbnNhKS38Vm63wZ.jpg', NULL, '2024-06-10 21:21:58', '2024-06-10 21:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-06-10 20:19:22', '2024-06-10 20:19:22'),
(2, 'user', 'Normal User', '2024-06-10 20:19:22', '2024-06-10 20:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Trần gỗ Hoàng Gia', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Trần gỗ Hoàng Gia sang trọng - đẳng cấp', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\June2024\\aBRxLUQLUbVBN43Gt4pG.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.phone', 'phone', '0989969222', NULL, 'text', 6, 'Site'),
(12, 'site.background', 'background', 'settings\\June2024\\1TObx2TlINeDT1UlXSpT.jpg', NULL, 'image', 7, 'Site'),
(13, 'site.link_Youtube', 'link_Youtube', 'https://www.youtube.com/watch?v=eRgA52ZIl3c', NULL, 'text', 8, 'Site'),
(14, 'site.address', 'address', 'xóm Trám - Mỹ Hà - Lạng Giang - Bắc Giang', NULL, 'text', 9, 'Site'),
(15, 'site.email', 'email', 'trangohoanggia@gmail.com', NULL, 'text', 10, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `staticdatas`
--

CREATE TABLE `staticdatas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tile` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staticdatas`
--

INSERT INTO `staticdatas` (`id`, `tile`, `desc`, `image`, `body`, `created_at`, `updated_at`, `price`) VALUES
(1, 'Gỗ xoan', 'Gỗ xoan', 'staticdatas\\June2024\\FayYnSKNZ76xCXDsX2Hg.jpg', NULL, '2024-06-10 21:11:00', '2024-06-10 21:13:14', 80000),
(2, 'Gỗ hương', 'Gỗ hương', 'staticdatas\\June2024\\4pbSsg8Zx55BmdPkt4vh.jpg', NULL, '2024-06-10 21:11:00', '2024-06-10 21:13:21', 1355000),
(3, 'Gỗ pơ mu đỏ', 'Gỗ pơ mu đỏ', 'staticdatas\\June2024\\oED3o5qoHlSxVE1ozNvF.jpg', NULL, '2024-06-10 21:11:00', '2024-06-10 21:13:08', 2000000);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2024-06-10 20:19:23', '2024-06-10 20:19:23'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2024-06-10 20:19:23', '2024-06-10 20:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$co2xqq4CrkS93mm723DC5uR7fgGgnpyLgDDAHdSObUvvldIge/XXW', 'tJzbndbqOdj9cayVykrsTzhyaAc6XLHbsC3a9TxmHme040qDzDfrl7R8TKuf', NULL, '2024-06-10 20:19:23', '2024-06-10 20:19:23');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `staticdatas`
--
ALTER TABLE `staticdatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `staticdatas`
--
ALTER TABLE `staticdatas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
