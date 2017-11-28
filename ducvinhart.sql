-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 10:30 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ducvinhart`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `parent_id` varchar(50) DEFAULT NULL,
  `sort_order` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `status`, `level`, `parent_id`, `sort_order`) VALUES
(1, 1, 0, '', '1'),
(18, 1, 1, '27', '2.1'),
(19, 1, 1, '27', '2.6'),
(20, 1, 1, '27', '2.2'),
(21, 1, 2, '18', '2.1.1'),
(27, 1, 0, '', '2'),
(28, 1, 0, '', '3'),
(29, 1, 1, '27', '2.3'),
(30, 1, 1, '27', '2.4'),
(31, 1, 1, '27', '2.5'),
(32, 1, 1, '28', '3.1'),
(33, 1, 1, '28', '3.2'),
(34, 1, 1, '28', '3.3'),
(35, 1, 0, '', '4'),
(36, 1, 1, '35', '4.1'),
(38, 1, 1, '35', '4.2'),
(39, 1, 0, '', '5');

-- --------------------------------------------------------

--
-- Table structure for table `category_translation`
--

CREATE TABLE `category_translation` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `lang_slug` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_slug` varchar(255) NOT NULL,
  `description` text,
  `url_slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_translation`
--

INSERT INTO `category_translation` (`id`, `cate_id`, `lang_slug`, `name`, `name_slug`, `description`, `url_slug`, `image`, `meta_keyword`, `meta_description`, `created_date`, `modified_date`) VALUES
(7, 18, 'vi', 'Nội thất sơn mài', 'noi-that-son-mai', NULL, '', NULL, 'nội thất', 'nội thất', '2017-11-23 14:01:11', '2017-11-28 08:30:53'),
(8, 19, 'vi', 'Trang trí', 'trang-tri', NULL, '', NULL, 'trang trí nội thất', 'trang trí nội thất', '2017-11-23 14:01:26', '2017-11-27 10:50:21'),
(9, 20, 'vi', 'Tranh quạt', 'tranh-quat', NULL, '', NULL, 'tranh quạt', 'tranh quạt', '2017-11-23 14:03:00', '2017-11-27 10:35:37'),
(10, 21, 'vi', 'Nội thất nhà bếp', 'noi-that-nha-bep', NULL, '', NULL, 'Nội thất nhà bếp', 'Nội thất nhà bếp', '2017-11-23 14:03:21', '2017-11-27 10:49:50'),
(15, 1, 'vi', 'Trang chủ', '', NULL, '', NULL, '', '', '2017-11-26 14:49:45', '2017-11-26 20:37:06'),
(16, 27, 'vi', 'Sản Phẩm', '', NULL, '', NULL, '', '', '2017-11-26 19:56:19', '2017-11-26 20:26:49'),
(17, 28, 'vi', 'Dịch vụ', 'dich-vu', NULL, '', NULL, '', '', '2017-11-26 20:22:59', '2017-11-27 10:50:16'),
(18, 29, 'vi', 'Tranh sơn mài', 'tranh-son-mai', NULL, '', NULL, '', '', '2017-11-26 20:40:46', '2017-11-27 10:50:01'),
(19, 30, 'vi', 'Khung tranh', 'khung-tranh', NULL, '', NULL, '', '', '2017-11-26 20:41:08', '2017-11-27 10:50:05'),
(20, 31, 'vi', 'Thủ công mỹ nghệ', 'thu-cong-my-nghe', NULL, '', NULL, '', '', '2017-11-26 20:41:25', '2017-11-27 10:50:09'),
(21, 32, 'vi', 'Trang trí', '', NULL, '', NULL, '', '', '2017-11-26 20:46:01', '2017-11-26 20:46:16'),
(22, 33, 'vi', 'Thiết kế nội thất', 'thiet-ke-noi-that', NULL, '', NULL, '', '', '2017-11-26 20:46:39', '2017-11-27 10:50:46'),
(23, 34, 'vi', 'Vẽ tranh', 've-tranh', NULL, '', NULL, '', '', '2017-11-26 20:47:01', '2017-11-27 10:50:50'),
(24, 35, 'vi', 'Chuyên đề', 'chuyen-de', NULL, '', NULL, '', '', '2017-11-26 20:47:35', '2017-11-27 10:50:54'),
(25, 36, 'vi', 'Nội thất', 'noi-that', NULL, '', NULL, '', '', '2017-11-26 20:47:54', '2017-11-27 10:50:58'),
(27, 38, 'vi', 'Tranh ảnh', 'tranh-anh', NULL, '', NULL, '', '', '2017-11-26 20:48:15', '2017-11-27 10:51:03'),
(28, 39, 'vi', 'Liên hệ', 'lien-he', NULL, '', NULL, '', '', '2017-11-27 10:51:37', '2017-11-27 10:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_date`, `modified_date`) VALUES
(1, 'admin', 'administrator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'members', 'members', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `lang_name` varchar(100) NOT NULL,
  `slug` varchar(2) NOT NULL,
  `lang_directory` varchar(100) NOT NULL,
  `lang_code` varchar(10) NOT NULL,
  `default` tinyint(1) DEFAULT NULL,
  `modified_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `lang_slug` varchar(2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `cate_id`, `title`, `short_content`, `content`, `meta_keyword`, `meta_description`, `image`, `lang_slug`, `status`, `created_date`, `modified_date`) VALUES
(3, 34, 'Vẽ Tranh hình cưới', 'Vẽ Tranh hình cưới', '<p>Vẽ Tranh h&igrave;nh cưới</p>\r\n\r\n<p>Vẽ Tranh h&igrave;nh cưới</p>\r\n\r\n<p>Vẽ Tranh h&igrave;nh cướiVẽ Tranh h&igrave;nh cưới</p>\r\n\r\n<p><img alt=\"\" src=\"/public/upload/images/tranh-son-dau-phong-canh.png\" style=\"height:675px; width:1000px\" /></p>', 'asdf ad fasdf asd fasd f', 'asdf asdf asd fasdf ', '/public/upload/images/son-dau-vung-que.PNG', 'vi', 1, '0000-00-00 00:00:00', '2017-11-28 08:16:14'),
(4, 32, 'Trang trí tiệc cưới', 'Trang trí tiệc cưới', '<p>Trang tr&iacute; tiệc cưới</p>\r\n\r\n<p>&nbsp;</p>', 'Trang trí tiệc cưới', 'Trang trí tiệc cưới', '/public/upload/images/Decoration-600W-x-600Hpx.jpg', 'vi', 1, '0000-00-00 00:00:00', '2017-11-28 08:26:41'),
(5, 36, 'Nội thất sơn mài - Nét mới trong thiết kế nội nhất', 'Nội thất sơn mài - Nét mới trong thiết kế nội nhất thiết kế nội nhất mới trong thiết kế nội nhất thiết kế nội nhất  mới trong thiết kế nội nhất thiết kế nội nhất', '<p>Nội thất sơn m&agrave;i - N&eacute;t mới trong thiết kế nội nhất</p>', '', '', '/public/upload/images/tranh-son-mai-phong-khach1.png', 'vi', 1, '0000-00-00 00:00:00', '2017-11-28 11:13:07'),
(6, 36, 'ádfasdfasdf', 'asdfasdfas', '<p>dfasdf</p>', '', '', '/public/upload/images/Consulting-design-600W-x-600Hpx.jpg', 'vi', 1, '0000-00-00 00:00:00', '2017-11-28 11:13:57'),
(7, 32, 'Trang trí quán Cafe', 'Chúng tôi cam kết mang đến không gian quán hài lòng theo bản thiết kế cho quý khách', '<p>Dịch vụ trang tr&iacute; qu&aacute;n cafe</p>', 'Dịch vụ trang trí quán cafe', 'Dịch vụ trang trí quán cafe', '/public/upload/images/son-mai-hien-dai/tranh1.png', 'vi', 1, '0000-00-00 00:00:00', '2017-11-28 13:08:43'),
(8, 32, 'aaaaaaaaaaaa', 'ấdfasdfasdf', '<p>&aacute;dfasdf</p>', 'ádfsadf', 'ádfasdfasdf', '/public/upload/images/son-mai-hien-dai/GM%20%20(6).png', 'vi', 1, '2017-11-28 13:16:59', '2017-11-28 13:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

CREATE TABLE `page_content` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `lang_slug` varchar(2) NOT NULL,
  `class` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `note` text,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_detail`
--

CREATE TABLE `payment_detail` (
  `id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `model_id` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dimensions` varchar(100) DEFAULT NULL,
  `length_class` varchar(50) NOT NULL,
  `weight` varchar(100) DEFAULT NULL,
  `weight_class` int(11) NOT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `cate_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(100) NOT NULL,
  `rating` int(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `model_id`, `status`, `sort_order`, `quantity`, `dimensions`, `length_class`, `weight`, `weight_class`, `manufacturer_id`, `cate_id`, `image`, `price`, `rating`, `created_date`, `modified_date`) VALUES
(8, '12123a', 1, 0, 0, '12312313', '', '123123123', 0, NULL, 20, '/public/upload/images/tranh-quat/IMG_005.png', '123123', 0, '2017-11-25 23:42:00', '2017-11-27 11:24:11'),
(12, 'ho01101', 1, 0, 0, '1x2x3', '', '100g', 0, NULL, 20, '/public/upload/images/tranh-quat/ho.png', '1200000', 0, '2017-11-27 10:48:38', '2017-11-27 11:28:16'),
(13, 'DUCME001', 1, 0, 0, '10x22x2', '', '100g', 0, NULL, 20, '/public/upload/images/tranh-quat/duc%20me02.png', '1500000', 0, '2017-11-27 13:09:18', '2017-11-27 13:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `sort_order` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`) VALUES
(62, 8, '/public/upload/images/scan0002.jpg', ''),
(63, 12, '/public/upload/images/tranh-quat/ho.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_translation`
--

CREATE TABLE `product_translation` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `lang_slug` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `detail` text,
  `material` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `trademark` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_translation`
--

INSERT INTO `product_translation` (`id`, `product_id`, `lang_slug`, `name`, `description`, `detail`, `material`, `color`, `trademark`, `meta_keyword`, `meta_description`, `created_date`, `modified_date`) VALUES
(6, 8, 'vi', 'quạt màu vàng', 'asf', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'đá', 'xám nhạt kết hợp xanh ngọc', 'Đức Vinh Art', '123123', '1asdfasdfasdf', '2017-11-25 23:42:00', '2017-11-27 11:24:11'),
(10, 12, 'vi', 'Quạt hình hổ', 'Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm\r\nAssembly Type: Pre Assembled\r\nMaterial: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On ', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'Giấy, Tre', 'Xanh nõn chuối', 'Đức Vinh Art', '', '', '2017-11-27 10:48:39', '2017-11-27 11:28:16'),
(11, 13, 'vi', 'Quạt hình Đức Mẹ', 'Được vẽ từng chi tiết bằng sơn mài, tranh quạt tạo ra sự khác biệt giữa các loại quạt bình thường được vẽ bằng các công nghệ vi tính', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'Giấy', 'xanh', 'Đức Vinh Art', '', '', '2017-11-27 13:09:18', '2017-11-27 13:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `cate_id`, `name`, `image_url`, `link`, `status`, `created_date`, `modified_date`) VALUES
(4, 1, '', '/public/upload/images/slider1.jpg', '', 1, '2017-11-27 08:56:24', '2017-11-27 08:56:24'),
(5, 1, '', '/public/upload/images/tranh-quat-banner.png', '', 1, '2017-11-27 08:56:53', '2017-11-27 08:56:53'),
(6, 18, '', '/public/upload/images/slider2.jpg', '', 1, '2017-11-27 08:57:28', '2017-11-27 08:58:27'),
(7, 20, '', '/public/upload/images/tranh-quat-banner.png', '', 1, '2017-11-27 10:56:26', '2017-11-27 10:56:26'),
(8, 39, '', '/public/upload/images/tranh-son-mai-banner.png', '', 1, '2017-11-27 13:42:25', '2017-11-27 13:42:25'),
(9, 34, '', '/public/upload/images/tranh-quat-banner.png', '', 1, '2017-11-28 08:20:38', '2017-11-28 08:20:38'),
(10, 36, '', '/public/upload/images/slider2.jpg', '', 1, '2017-11-28 10:57:28', '2017-11-28 10:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `birth_day` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `profile` text,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `birth_day`, `phone`, `address`, `profile`, `modified_date`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$06$WlemzmFke/8WR4CYUF8AfeJ3spy721g9wbglozzS1wZ/ZEZJLwF6W', '', 'minhsu0602@gmail.com', '', NULL, NULL, NULL, 1268889823, 1511330952, 1, 'Sự', 'Lê Minh', 'ADMIN', '2017-09-14', '0936122222', '', NULL, '2017-09-20 21:39:03'),
(2, '172.21.6.196', 'minhsu', '$2y$08$HmSap9ZOGJzYUplFSkAyWO9bBlx3AmCBNKrByCdBJv656GQOH4j9q', NULL, 'minhsu57@gmail.com', NULL, NULL, NULL, 'o3tHI3CsDO6lTLrW.dfv3e', 1490858515, 1511849017, 1, 'Sự', 'Lê', NULL, '06/02/1992', '01677035176', 'đồng tháp 11', NULL, '2017-09-20 09:03:17'),
(16, '::1', 'suSu', '$2y$08$tgBbtbmxeZTCF86A9mTIv.hy6ZLnWT35weBEAW/sCPx7iTCIU7mnu', NULL, 'susu@gmail.com', NULL, NULL, NULL, NULL, 1505876099, 1505876110, 1, 'Lê nguyễn văn bé', 'gà', NULL, '', '12312', '', NULL, '2017-09-20 11:28:49'),
(17, '::1', 'minhminh', '$2y$08$09WaiQeoZj84mSBllneBk.t85ImIFJ22GOFZxIHooM0Xc1eFxhzk2', NULL, 'minhminh@gmail.com', NULL, NULL, NULL, NULL, 1505878488, 1506042990, 1, 'minh', 'minh', NULL, '15/09/2017', '123123', 'trị an', '<p>hihi</p>\r\n', '2017-09-21 15:27:20'),
(18, '::1', 'vanloi', '$2y$08$uqYwXM65Y1k2nYOsyPRoQul.k5topd2i2.k2SCQw.aMYtsyCgFs56', NULL, 'vanloi@gmail.co', NULL, NULL, NULL, NULL, 1505982486, 1506158246, 0, 'lợi', 'văn', NULL, '22/09/1989', '098756483489', 'dak lak', '<p>Lợi đẹp trai</p>\r\n', '2017-09-21 15:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`, `created_date`) VALUES
(1, 1, 1, '2017-11-22 00:00:00'),
(2, 2, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `website`
--

CREATE TABLE `website` (
  `id` varchar(100) NOT NULL,
  `language_slug` varchar(2) NOT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `sidebar` text,
  `phone` varchar(150) DEFAULT NULL,
  `mobile_phone` varchar(150) DEFAULT NULL,
  `google_map` text,
  `email` varchar(255) DEFAULT NULL,
  `admin_email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `keyword` text,
  `meta_description` varchar(255) NOT NULL,
  `visitor` int(11) DEFAULT NULL,
  `footer_content_1` text NOT NULL,
  `footer_content_2` text NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `language_slug`, `website_name`, `favicon`, `facebook`, `youtube`, `google_plus`, `twitter`, `sidebar`, `phone`, `mobile_phone`, `google_map`, `email`, `admin_email`, `address`, `slogan`, `keyword`, `meta_description`, `visitor`, `footer_content_1`, `footer_content_2`, `modified_date`) VALUES
('common-info-en', 'en', 'EHOUSE COFFEE', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '', '', '0000-00-00 00:00:00'),
('common-info-vi', 'vi', 'Đức Vinh Art Workshop', '/public/upload/images/logo/logo.png', 'https://www.facebook.com/mythuatducvinh', '#', '#', '#', '<p><strong>VIDEO</strong></p>\r\n\r\n<p><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://www.youtube.com/embed/ejXrGoHFGJQ\"></iframe></p>\r\n\r\n<p><strong>Luyện Nh&oacute;m</strong></p>\r\n\r\n<p><a href=\"/english/luyen-noi-nhom-4-5-ban-cung-100-gvnn\"><img alt=\"\" src=\"/public/upload/images/slider2.jpg\" style=\"width:300px\" /></a></p>\r\n', ' 028 3939 0811 - 0906 911 022', '', '10.789931, 106.693402', 'ducvinhart@gmail.com', 'minhsu57@gmail.com,minhsu0602@gmail.com', 'Số 123, Trung Dũng, Biên Hòa, Đồng Nai', 'vì mái ấm gia đình bạn', 'Tranh quạt, Nội thất sơn mài, Tranh sơn mài, Khung tranh, Thủ công mỹ nghệ, Trang trí', '', NULL, '<ul>\r\n	<li><a href=\"#\">Mỹ thuật Đức Vinh</a></li>\r\n	<li><a href=\"#\">Điện thoại - 0936 777 170</a></li>\r\n	<li><a href=\"#\">Địa chỉ - x&atilde; Trị an, huyện Vĩnh Cửu, tỉnh Đồng Nai</a></li>\r\n</ul>\r\n', '<ul>\r\n	<li><a href=\"#\">Trang chủ</a></li>\r\n	<li><a href=\"product.html\">Sản phẩm</a></li>\r\n	<li><a href=\"#\">Chuy&ecirc;n đề</a></li>\r\n	<li><a href=\"contact.html\">Li&ecirc;n hệ</a></li>\r\n</ul>\r\n', '2017-11-27 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translation`
--
ALTER TABLE `category_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_translation`
--
ALTER TABLE `product_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `category_translation`
--
ALTER TABLE `category_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
