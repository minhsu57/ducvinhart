-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2018 at 09:46 AM
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
  `level` int(1) NOT NULL,
  `parent_id` varchar(50) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `level`, `parent_id`, `image`, `sort_order`) VALUES
(1, 0, '', '/public/upload/images/introduce-pic.jpg', '1'),
(18, 1, '27', '/public/upload/images/noi-that-son-mai/p-bep---v3.png', '2.4'),
(19, 1, '27', '/public/upload/images/thu-phap/thu-phap-1.gif', '2.8'),
(20, 1, '27', '/public/upload/images/tranh-quat/ho.png', '2.2'),
(27, 0, '', '', '2'),
(28, 0, '', '', '3'),
(29, 1, '27', '/public/upload/images/son-mai-hien-dai/sen-son-mai-001.png', '2.3'),
(30, 1, '27', '/public/upload/images/khung-tranh-nghe-thuat/2007-01-18-23.58.png', '2.6'),
(31, 1, '27', '/public/upload/images/thu-cong-my-nghe/IMG_0548.png', '2.7'),
(32, 1, '28', '/public/upload/images/noi-that-son-mai/GIUONG-002-01.png', '3.3'),
(33, 1, '28', '/public/upload/images/noi-that-son-mai/10648979_10153187061568259_1659462773678488868_o.png', '3.1'),
(34, 1, '28', '/public/upload/images/noi-that-son-mai/cua-tu-Anh-Tien-2.png', '3.2'),
(35, 0, '', '', '4'),
(36, 1, '35', '/public/upload/images/noi-that-son-mai/11025677_10153187061573259_2251952327694919133_o.png', '4.2'),
(38, 1, '35', '/public/upload/images/chuyen-de/bo-anh-cuoi-xua.jpg', '4.1'),
(39, 0, '', '', '5'),
(42, 1, '35', '/public/upload/images/chuyen-de/Decoration-600W-x-600Hpx.jpg', '4.5'),
(43, 1, '27', '/public/upload/images/tranh-son-dau/tranh-hoa/10394068_878591975497378_1671423375966054871_n.png', '2.1'),
(44, 1, '27', '/public/upload/images/tran-phu-dieu/d2f89406dd1632486b07.png', '2.5'),
(46, 2, '43', '/public/upload/images/tranh-son-dau/10891943_862024087154167_8829379901705073035_n.png', '2.1.1'),
(47, 2, '43', '/public/upload/images/tranh-son-dau/IMG_0627.png', '2.1.2'),
(48, 2, '43', '/public/upload/images/tranh-son-dau/HTB1apFpGFXXXXbmaXXXq6xXFXXXE.png', '2.1.3'),
(49, 2, '43', '/public/upload/images/tranh-son-dau/tr4.png', '2.1.4'),
(50, 2, '43', '/public/upload/images/tranh-son-dau/Tattoo%20(3).png', '2.1.5'),
(51, 2, '43', '/public/upload/images/tranh-son-dau/Tattoo%20(3).png', '2.1.6'),
(52, 2, '43', '/public/upload/images/tranh-son-dau/11034283_889289041094338_2585095435060953040_n.png', '2.1.7'),
(53, 1, '35', '/public/upload/images/noi-that-son-mai/COFFEE-TABLE-01-03.png', '4.4'),
(54, 1, '35', '/public/upload/images/noi-that-son-mai/11082476_10153187061628259_528945926735537170_o.png', '4.3'),
(55, 2, '43', '/public/upload/images/tranh-son-dau/tranh-an-tuong/IMG_0089.png', '2.1.8');

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
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_translation`
--

INSERT INTO `category_translation` (`id`, `cate_id`, `lang_slug`, `name`, `name_slug`, `description`, `url_slug`, `meta_keyword`, `meta_description`, `created_date`, `modified_date`) VALUES
(7, 18, 'vi', 'Nội thất sơn mài', 'noi-that-son-mai', NULL, '', 'nội thất', 'nội thất', '2017-11-23 14:01:11', '2018-01-03 16:21:59'),
(8, 19, 'vi', 'Thư pháp Việt', 'thu-phap-viet', NULL, '', 'trang trí nội thất', 'trang trí nội thất', '2017-11-23 14:01:26', '2017-12-22 01:09:09'),
(9, 20, 'vi', 'Tranh Quạt', 'tranh-quat', NULL, '', 'tranh quạt', 'tranh quạt', '2017-11-23 14:03:00', '2017-12-22 01:10:28'),
(15, 1, 'vi', 'Trang chủ', 'trang-chu', NULL, '', 'Tranh quạt, thủ công mỹ nghệ, nội thất sơn mài, tranh sơn dầu', 'Đức Vinh Art workshop là trang trực tuyến chuyên cung cấp sản phẩm và dịch vụ về hội hoạ, Sản phẩm thủ công, Trang trí – Trưng bày', '2017-11-26 14:49:45', '2017-12-05 21:28:38'),
(16, 27, 'vi', 'Sản Phẩm', '', NULL, '', '', '', '2017-11-26 19:56:19', '2017-11-26 20:26:49'),
(17, 28, 'vi', 'Dịch vụ', 'dich-vu', NULL, '', '', '', '2017-11-26 20:22:59', '2017-11-27 10:50:16'),
(18, 29, 'vi', 'Tranh sơn mài', 'tranh-son-mai', NULL, '', '', '', '2017-11-26 20:40:46', '2017-12-30 16:25:12'),
(19, 30, 'vi', 'Khung tranh', 'khung-tranh', NULL, '', '', '', '2017-11-26 20:41:08', '2017-12-22 01:09:53'),
(20, 31, 'vi', 'Thủ công mỹ nghệ', 'thu-cong-my-nghe', NULL, '', 'Thủ công mỹ nghệ', 'Thủ công mỹ nghệ', '2017-11-26 20:41:25', '2017-12-21 23:14:57'),
(21, 32, 'vi', 'Trang trí - Trưng bài', 'trang-tri-trung-bai', NULL, '', '', '', '2017-11-26 20:46:01', '2017-12-22 00:53:12'),
(22, 33, 'vi', 'Thiết kế nội ngoại thất', 'thiet-ke-noi-ngoai-that', NULL, '', '', '', '2017-11-26 20:46:39', '2017-12-22 00:51:16'),
(23, 34, 'vi', 'Tạo cảnh quan sân vườn - non bộ', 'tao-canh-quan-san-vuon-non-bo', NULL, '', '', '', '2017-11-26 20:47:01', '2017-12-22 00:52:05'),
(24, 35, 'vi', 'Chuyên đề', 'chuyen-de', NULL, '', '', '', '2017-11-26 20:47:35', '2017-11-27 10:50:54'),
(25, 36, 'vi', 'Mỹ thuật', 'my-thuat', NULL, '', '', '', '2017-11-26 20:47:54', '2017-12-22 00:55:27'),
(27, 38, 'vi', 'Văn học', 'van-hoc', NULL, '', 'Tranh quạt, thủ công mỹ nghệ, nội thất sơn mài, tranh sơn dầu', 'Đức Vinh Art workshop là trang trực tuyến chuyên cung cấp sản phẩm và dịch vụ về hội hoạ, Sản phẩm thủ công, Trang trí – Trưng bày', '2017-11-26 20:48:15', '2017-12-22 00:56:58'),
(28, 39, 'vi', 'Liên hệ', 'lien-he', NULL, '', '', '', '2017-11-27 10:51:37', '2017-11-27 10:52:09'),
(31, 42, 'vi', 'Khác', 'khac', NULL, '', '', '', '2017-12-01 15:58:35', '2017-12-22 00:56:41'),
(32, 43, 'vi', 'Tranh Sơn Dầu', 'tranh-son-dau', NULL, '', '', '', '2017-12-21 23:11:24', '2018-01-03 16:20:59'),
(33, 44, 'vi', 'Tranh Phù Điêu', 'tranh-phu-dieu', NULL, '', '', '', '2017-12-22 00:17:52', '2018-01-03 16:22:28'),
(35, 46, 'vi', 'Tranh hoa', 'tranh-hoa', NULL, '', '', '', '2017-12-22 00:41:35', '2017-12-22 15:29:58'),
(36, 47, 'vi', 'Tranh phong cảnh', 'tranh-phong-canh', NULL, '', '', '', '2017-12-22 00:42:11', '2017-12-22 15:30:21'),
(37, 48, 'vi', 'Tranh ấn tượng', 'tranh-an-tuong', NULL, '', '', '', '2017-12-22 00:42:31', '2017-12-22 15:30:13'),
(38, 49, 'vi', 'Tranh trừu tượng', 'tranh-truu-tuong', NULL, '', '', '', '2017-12-22 00:43:04', '2017-12-22 15:30:30'),
(39, 50, 'vi', 'Tranh tĩnh vật', 'tranh-tinh-vat', NULL, '', '', '', '2017-12-22 00:43:48', '2017-12-22 15:30:42'),
(40, 51, 'vi', 'Chân dung và hình cưới', 'chan-dung-va-hinh-cuoi', NULL, '', '', '', '2017-12-22 00:44:33', '2017-12-22 15:30:51'),
(41, 52, 'vi', 'Tranh đương đại', 'tranh-duong-dai', NULL, '', '', '', '2017-12-22 00:44:56', '2017-12-22 15:30:59'),
(42, 53, 'vi', 'Ẩm thực', 'am-thuc', NULL, '', '', '', '2017-12-22 00:55:49', '2017-12-22 00:56:31'),
(43, 54, 'vi', 'Thiết kế', 'thiet-ke', NULL, '', '', '', '2017-12-22 00:57:33', '2017-12-22 00:57:33'),
(44, 55, 'vi', 'Tranh nghệ thuật', 'tranh-nghe-thuat', NULL, '', '', '', '2018-01-03 10:51:18', '2018-01-03 10:51:18');

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
(3, 32, 'Đức Vinh Art cung cấp các dịch vụ trang trí - trưng bài không gian nhà', 'Vẽ Tranh hình cưới', '<p><strong><span style=\"font-size:28px\"><span style=\"color:#27ae60\">Trang tr&iacute; - Trưng b&agrave;i tranh ảnh, nội thất</span></span></strong></p>', 'asdf ad fasdf asd fasd f', 'asdf asdf asd fasdf ', '/public/upload/images/chuyen-de/Decoration-600W-x-600Hpx.jpg', 'vi', 1, '2018-01-03 12:06:28', '2018-01-03 15:41:17'),
(5, 36, 'Nội thất sơn mài - Nét mới trong thiết kế nội nhất', 'Nội thất sơn mài - Nét mới trong thiết kế nội nhất thiết kế nội nhất mới trong thiết kế nội nhất thiết kế nội nhất  mới trong thiết kế nội nhất thiết kế nội nhất', '<p>Nội thất sơn m&agrave;i - N&eacute;t mới trong thiết kế nội nhất</p>', '', '', '/public/upload/images/noi-that-son-mai/noi-that-son-mai-trang-diem-001.png', 'vi', 1, '2018-01-03 12:06:28', '2018-01-03 14:24:14'),
(9, 38, 'SÀI GÒN 1995 – TP. HCM 2005 NHÌN TỪ TRÊN KHÔNG', 'Sinh năm 1920, Raymond Cauchetier đã đến với nhiếp ảnh ngay tại sài gòn khi đã 32 tuổi. Với một chiếc máy ảnh Rolleiflex, ông ghi lại hình ảnh về cuộc chiến cũng như những hình ảnh về dân tộc Việt nam. Các bức ảnh của ông tạo nên một tiếng vang lớn: một vài bức ảnh trong số đó đã đước ấn hành trên toàn thế giới. Tập ảnh về Sài Gòn của ông đã khiến André Malraux và Graham Green (tác giả của “Người Mỹ Thầm Lặng”) phải trầm trồ thán phục. Và triển lãm lưu động “Chân...', '<p><img alt=\"\" src=\"/public/upload/images/khung-tranh-1.png\" /></p>\r\n\r\n<p>Sinh năm 1920,&nbsp;<strong>Raymond Cauchetier</strong>&nbsp;đ&atilde; đến với nhiếp ảnh ngay tại s&agrave;i g&ograve;n khi đ&atilde; 32 tuổi. Với một chiếc m&aacute;y ảnh Rolleiflex, &ocirc;ng ghi lại h&igrave;nh ảnh về cuộc chiến cũng như những h&igrave;nh ảnh về d&acirc;n tộc Việt nam. C&aacute;c bức ảnh của &ocirc;ng tạo n&ecirc;n một tiếng vang lớn: một v&agrave;i bức ảnh trong số đ&oacute; đ&atilde; đước ấn h&agrave;nh tr&ecirc;n to&agrave;n thế giới. Tập ảnh về S&agrave;i G&ograve;n của &ocirc;ng đ&atilde; khiến Andr&eacute; Malraux v&agrave; Graham Green (t&aacute;c giả của &ldquo;Người Mỹ Thầm Lặng&rdquo;) phải trầm trồ th&aacute;n phục. V&agrave; triển l&atilde;m lưu động &ldquo;Ch&acirc;n dung Việt nam&rdquo; đ&atilde; được giới thiệu ở Mỹ trong nhiều năm kể từ năm 1964.</p>\r\n\r\n<p>Những bức ảnh tuyệt đẹp về S&agrave;i g&ograve;n- Tp. Hồ Ch&iacute; Minh được chụp c&aacute;ch nhau 50 năm phản &aacute;nh r&otilde; n&eacute;t những đổi thay kỳ diệu của th&agrave;nh phố trong 5 thập kỷ qua. Trong khoản thời gian đ&oacute;, s&agrave;i g&ograve;n đ&atilde; trở th&agrave;nh Th&agrave;nh phố Hồ ch&iacute; minh, một đ&ocirc; thị lớn với hơn 8 triệu d&acirc;n. Triển l&atilde;m bao h&agrave;m cả chiều k&iacute;ch kh&ocirc;ng gian v&agrave; thời gian: những bức ảnh đưa ch&uacute;ng ta bay bổng như những c&aacute;nh chim để kh&aacute;m ph&aacute; Th&agrave;nh phố, đồng thời cũng đưa ch&uacute;ng ta v&agrave;o cuộc du h&agrave;nh v&agrave;o giữa những năm 1950 v&agrave; hiện tại.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-8.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-8\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-8.jpg\" /></a></p>\r\n\r\n<p><em>Dinh Thống Nhất</em></p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-1.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-1\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-1.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>C&ocirc;ng trường M&ecirc; Linh, Đường Hai B&agrave; Trưng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-2.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-2\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-2.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>To&agrave;n cảnh cảng S&agrave;i g&ograve;n v&agrave; khu trung t&acirc;m</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-3.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-3\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-3.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>To&agrave;n cảnh TP. HCM, đường Phan Đ&igrave;nhph&ugrave;ng v&agrave; K&ecirc;nh Nhi&ecirc;u Lộc &ndash; Thị Ngh&egrave;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-4.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-4\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-4.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Chợ B&igrave;nh T&acirc;y</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>S&agrave;i g&ograve;n của năm 1955</em></strong>&nbsp;l&agrave; một đ&ocirc; thị tương đối bằng phẳng, trải d&agrave;i theo những con lộ rợp b&oacute;ng c&acirc;y xanh v&agrave; những k&ecirc;nh rạch đầy ấp thuyền b&egrave;. Theo d&ograve;ng thời gian, b&aacute;nh xe lịch sử đ&atilde; tăng tốc , k&eacute;o theo một loạt những biến đổi s&acirc;u sắc ở th&agrave;nh phố n&agrave;y. C&aacute;c n&eacute;t kiến tr&uacute;c đẹp của thời thuộc địa vẫn c&ograve;n được lưu giữ nơi đ&acirc;y nhưng tiến tr&igrave;nh ph&aacute;t triền đ&ocirc; thị ở th&agrave;nh phố đ&atilde; tiến đến một bước ngoặt quan trọng.</p>\r\n\r\n<p><strong><em>Th&agrave;nh phố Hồ Ch&iacute; Minh của năm 2005</em></strong>&nbsp;đ&atilde; vươn m&igrave;nh l&ecirc;n một đ&ocirc; thị lớn, hiện đại với hơn 8 triệu d&acirc;n v&agrave; tiến l&ecirc;n con đường ph&aacute;t triển c&ugrave;ng với đ&agrave; tăng trưởng kinh tế của cả nước. Th&agrave;nh phố hiện đang thay da đổi thịt. Ranh giới Th&agrave;nh phố đang ng&agrave;y c&agrave;ng gi&atilde;n ra với những nh&agrave; cao tầng nối tiếp nhau mọc l&ecirc;n v&agrave; những chiếc cầu mới lần lược kết nối c&aacute;c bờ k&ecirc;nh xanh trong l&ograve;ng th&agrave;nh phố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-5.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-5\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-5.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Cầu Mống, bến Chương Dương</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-7.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-7\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-7.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Nh&agrave; Thờ Đức b&agrave; (ch&iacute;nh diện), quảng trừơng c&ocirc;ng x&atilde; Paris</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-6.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-6\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-6.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Nh&agrave; Thờ Đức b&agrave; (sau lưng)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-9.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-9\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-9.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Bến Bạch Đằng nh&igrave;n từ xưởng Ba Son</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-10.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-10\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-10.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Bến Bạch Đằng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-11.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-11\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-11.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Đường Đồng Khởi, Kh&aacute;ch sạn Majestic</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-12.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-12\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-12.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Đại lộ H&agrave;m Nghi</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-13.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-13\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-13.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Đại lộ Nguyễn Huệ</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Như vậy, Cuốn s&aacute;ch gi&uacute;p ch&uacute;ng ta thực hiện hai giấc mơ cổ xưa nhất của lo&agrave;i người: l&agrave; bay l&ecirc;n kh&ocirc;ng trung v&agrave; du h&agrave;nh giữa c&aacute;c thời đại. Những bức h&igrave;nh n&agrave;y tự th&acirc;n đ&atilde; khơi gợi rất nhiều &yacute; nghĩa, v&igrave; vậy trong t&ocirc;i chỉ xin t&ocirc;n vinh một người, đ&oacute; l&agrave; &ocirc;ng Raymond Cauchetier, t&aacute;c giả của những bức ảnh chụp trong những năm 1950. &Ocirc;ng l&agrave; một người hết sức t&agrave;i năng v&agrave; hết sức khi&ecirc;m nhường. T&ocirc;i muốn nhấn mạnh rằng vượt l&ecirc;n tr&ecirc;n tr&aacute;ch nhiệm của một t&ugrave;y vi&ecirc;n b&aacute;o ch&iacute; của kh&ocirc;ng qu&acirc;n Ph&aacute;p thời ấy giờ, ch&iacute;nh t&igrave;nh cảm gi&agrave;nh cho đất nước n&agrave;y , cho th&agrave;nh phố n&agrave;y, đ&atilde; th&uacute;c dục &ocirc;ng thực hiện những bức ảnh n&oacute;i tr&ecirc;n.</p>\r\n\r\n<p><em>&nbsp;Theo</em>&nbsp;<strong>Nicolas Warnery</strong></p>', 'SÀI GÒN 1995 – TP. HCM 2005 NHÌN TỪ TRÊN KHÔNG', 'SÀI GÒN 1995 – TP. HCM 2005 NHÌN TỪ TRÊN KHÔNG', '/public/upload/images/chuyen-de/14B.jpg', 'vi', 1, '2017-11-29 08:01:19', '2017-12-01 15:57:55'),
(10, 34, 'Trồng hoa phù hợp thiết kế sân vườn', 'Việc thiết kế sân vườn nhằm tạo một không gian xanh cho khuôn viên nhà ở thêm sinh động và hấp dẫn. Để có một khu vườn ấn tượng thì việc thiết kế bố cục, lựa chọn cây trồng, vật liệu sử dụng hay chi tiết trang trí….là những công việc đòi hỏi tính chuyên môn và tối ưu nhất. Vườn là nơi tập trung rất nhiều loại cây, cho nên việc tìm hiểu về đặc tính của mỗi loại cây hoa mà gia đình có ý định trồng là điều quan trọng.', '<p><em>Việc thiết kế s&acirc;n vườn nhằm&nbsp;tạo một kh&ocirc;ng gian xanh cho khu&ocirc;n vi&ecirc;n nh&agrave; ở th&ecirc;m sinh động v&agrave; hấp dẫn. Để c&oacute; một khu vườn ấn tượng th&igrave; việc thiết kế bố cục, lựa chọn c&acirc;y trồng, vật liệu sử dụng hay chi tiết trang tr&iacute;&hellip;.l&agrave; những c&ocirc;ng việc đ&ograve;i hỏi t&iacute;nh chuy&ecirc;n m&ocirc;n v&agrave; tối ưu nhất. Vườn l&agrave; nơi tập trung&nbsp;rất nhiều loại c&acirc;y, cho n&ecirc;n việc t&igrave;m hiểu về đặc t&iacute;nh của mỗi loại c&acirc;y hoa&nbsp;m&agrave; gia đ&igrave;nh c&oacute; &yacute; định trồng l&agrave; điều quan trọng.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_284742593.jpg\"><img alt=\"shutterstock_284742593\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_284742593.jpg\" style=\"height:1181px; width:1772px\" /></a><em>N&ecirc;n trồng c&acirc;y con, c&acirc;y chiết c&agrave;nh từ nguồn giống tốt (H&igrave;nh minh họa hoa Hồng)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_385689214.jpg\"><img alt=\"shutterstock_385689214\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_385689214.jpg\" style=\"height:787px; width:1181px\" /></a><em>Sau khi c&acirc;y đ&atilde; b&eacute;n rể, nh&aacute;nh tốt, ra hoa. Bạn n&ecirc;n cắt tỉa v&agrave; b&oacute;n ph&acirc;n.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Backyard-Landscape-Design.png\"><img alt=\"Backyard-Landscape-Design\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Backyard-Landscape-Design.png\" style=\"height:833px; width:1250px\" /></a><em>Khu vườn được thiết kế với bố cục h&agrave;i h&ograve;a, mang n&eacute;t c&aacute; t&iacute;nh từ gia chủ</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_288055646.jpg\"><img alt=\"shutterstock_288055646\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_288055646.jpg\" style=\"height:1177px; width:1772px\" /></a><em>Khu vườn được thiết kế với c&acirc;y trồng ch&iacute;nh l&agrave; hồng leo</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_175322960.jpg\"><img alt=\"shutterstock_175322960\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_175322960.jpg\" style=\"height:1181px; width:1772px\" /></a><em>Bắp cải T&iacute;m được d&ugrave;ng l&agrave;m loại c&acirc;y chủ đạo, trang tr&iacute; khu vườn</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hầu hết bất cứ loại c&acirc;y n&agrave;o cũng c&oacute; thể trồng được trong chậu. Cần chọn chậu c&acirc;y trồng v&agrave; c&oacute; c&aacute;ch trồng c&acirc;y hoa cảnh v&agrave;o chậu đ&uacute;ng c&aacute;ch. T&ugrave;y theo từng m&ugrave;a v&agrave; thời điểm v&agrave; kiểu s&acirc;n vườn m&agrave; ch&uacute;ng ta c&oacute; những loại &nbsp;hoa&nbsp;chậu kh&aacute;c nhau.</p>\r\n\r\n<p><strong>S&acirc;n vườn thiết kế theo phong c&aacute;ch sang trọng</strong>.&nbsp;N&ecirc;n chọn những loại hoa c&oacute; m&agrave;u sắc tao nh&atilde;, đơn sắc v&agrave; nh&atilde; nhặn. Đ&oacute; l&agrave; một chậu lan hồ điệp , l&agrave; một bụi cẩm t&uacute; cầu sang trọng trong g&oacute;c vườn, hay đơn giản l&agrave; những chậu trầu b&agrave; treo lủng lẳng dọc lối đi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_185401610.jpg\"><img alt=\"shutterstock_185401610\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_185401610.jpg\" style=\"height:784px; width:1181px\" /></a><em>Hoa Cẩm t&uacute; cầu đa dạng m&agrave;u sắc</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_424408552.jpg\"><img alt=\"shutterstock_424408552\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_424408552.jpg\" style=\"height:789px; width:1181px\" /></a></p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>S&acirc;n vườn c&oacute; diện t&iacute;ch hẹp</strong>: trồng hoa chậu treo l&agrave; một lựa chọn th&ocirc;ng minh v&agrave; độc đ&aacute;o. ch&uacute;ng gi&uacute;p tận dụng tối đa&nbsp;diện t&iacute;ch b&ecirc;n dưới. Đồng thời, n&ecirc;n hạn chế c&acirc;y ph&aacute;t triển nhanh v&agrave; nhảy nh&aacute;nh nhanh như hoa chuối mỏ k&eacute;t, c&acirc;y hoa chuối ph&aacute;o, c&acirc;y chuối hoa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_353945105.jpg\"><img alt=\"shutterstock_353945105\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_353945105.jpg\" style=\"height:787px; width:1181px\" /></a><em>Hoa chuối mỏ k&eacute;t</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_190776695.jpg\"><img alt=\"shutterstock_190776695\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_190776695.jpg\" style=\"height:1772px; width:1181px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiều cao v&agrave; k&iacute;ch cỡ, m&agrave;u sắc&nbsp;của hoa trong tiểu cảnh cũng được ch&uacute; trọng. C&acirc;y cao n&ecirc;n đặt ph&iacute;a trong c&ugrave;ng,những c&acirc;y chịu b&oacute;ng sẽ được trồng xen kẽ với c&acirc;y c&oacute; t&aacute;n rộng. M&agrave;u sắc của c&aacute;c loại hoa được phối hợp so cho h&agrave;i ho&agrave; v&agrave; hợp l&iacute; nhất trong bức&nbsp;tranh s&acirc;n vườn tổng thể.</p>\r\n\r\n<p><em>Nguồn:&nbsp;<strong><a href=\"https://www.facebook.com/nongtraivuive.funnyfarm/\" target=\"_blank\">Nongtraivuive_funnyfarm</a></strong></em></p>', 'TRỒNG HOA PHÙ HỢP THIẾT KẾ SÂN VƯỜN', 'TRỒNG HOA PHÙ HỢP THIẾT KẾ SÂN VƯỜN', '/public/upload/images/chuyen-de/shutterstock_237573535.jpg', 'vi', 1, '2017-11-29 09:24:32', '2018-01-03 14:24:08'),
(11, 38, 'BỘ ẢNH TÁI HIỆN 100 NĂM LỊCH SỬ ĐÁM CƯỚI VIỆT NAM', 'Chủ nhân của bộ ảnh cưới này là chú rể Thế Trưởng, 28 tuổi, kinh doanh nhà hàng – khách sạn và cô dâu Quỳnh Anh, 25 tuổi, chủ một thương hiệu váy cưới ở Hà Nội. Vì yêu mến những thứ hoài cổ và luôn được lịch sử Việt Nam truyền cảm hứng, cặp đôi đã cho ra đời album ảnh cưới độc đáo. Bộ ảnh như một bản tổng kết sự phát triển trong phong tục, tập quán cưới hỏi, gu thẩm mỹ,', '<p>C&ocirc; d&acirc;u ch&uacute; rể t&igrave;m kiếm trang phục, bối cảnh để t&aacute;i hiện những dấu ấn văn ho&aacute; từ giai đoạn trước năm 1945.</p>\r\n\r\n<p>Chủ nh&acirc;n của bộ ảnh cưới n&agrave;y l&agrave; ch&uacute; rể Thế Trưởng, 28 tuổi, kinh doanh nh&agrave; h&agrave;ng &ndash; kh&aacute;ch sạn v&agrave; c&ocirc; d&acirc;u Quỳnh Anh, 25 tuổi, chủ một thương hiệu v&aacute;y cưới ở H&agrave; Nội. V&igrave; y&ecirc;u mến những thứ ho&agrave;i cổ v&agrave; lu&ocirc;n được lịch sử Việt Nam truyền cảm hứng, cặp đ&ocirc;i đ&atilde; cho ra đời album ảnh cưới độc đ&aacute;o. Bộ ảnh như một bản tổng kết sự ph&aacute;t triển trong phong tục, tập qu&aacute;n cưới hỏi, gu thẩm mỹ, trang phục cưới của người Việt từ xưa đến nay. Bộ ảnh cũng khắc hoạ c&aacute;c dấu mốc lịch sử c&ugrave;ng sự thay đổi, ph&aacute;t triển của thời đại v&agrave; x&atilde; hội.</p>\r\n\r\n<p>N&oacute;i về bộ ảnh đang khiến cộng đồng mạng truyền tay nhau n&agrave;y, cặp đ&ocirc;i cho biết ban đầu họ kh&ocirc;ng c&oacute; &yacute; định chụp ảnh cưới. Tuy nhi&ecirc;n, sau khi b&agrave;n bạc với bạn b&egrave; đồng nghiệp, cả &ecirc;kip đ&atilde; quyết định cho ra đời một dự &aacute;n t&acirc;m huyết, t&aacute;i hiện những dấu ấn văn ho&aacute; từ giai đoạn trước năm 1945.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/1.jpg\"><img alt=\"1\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/1.jpg\" style=\"height:629px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở việc lưu giữ những khoảnh khắc đẹp của c&ocirc; d&acirc;u, ch&uacute; rể, bộ ảnh c&ograve;n l&agrave; cuốn phim t&agrave;i liệu mang đến cho mọi người c&aacute;i nh&igrave;n to&agrave;n diện, cụ thể hơn về c&aacute;c phong tục cưới qua từng thời kỳ.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/2.jpg\"><img alt=\"2\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/2.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để truyền tải hết c&aacute;c th&ocirc;ng điệp, &yacute; tưởng của c&ocirc; d&acirc;u, ch&uacute; rể, điều quan trọng nhất l&agrave; sự đầu tư đến từng chi tiết nhỏ. Từ trang phục, bối cảnh, c&aacute;ch trang điểm, tạo d&aacute;ng&hellip; đều to&aacute;t l&ecirc;n vẻ ch&acirc;n thực v&agrave; ấm c&uacute;ng.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/3.jpg\"><img alt=\"3\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/3.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/4.jpg\"><img alt=\"4\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/4.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đối với c&ocirc; d&acirc;u Nguyễn Quỳnh Anh, những thứ ho&agrave;i cổ lu&ocirc;n l&agrave; nguồn cảm hứng bất tận. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; sự ủng hộ của bạn b&egrave;, đồng nghiệp, 9X đ&atilde; l&ecirc;n &yacute; tưởng tạo một bộ ảnh cưới khiến &ocirc;ng b&agrave;, cha mẹ cảm thấy th&acirc;n thuộc, những người trẻ cũng hứng th&uacute;.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/5.jpg\"><img alt=\"5\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/5.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để ho&agrave;n th&agrave;nh t&aacute;c phẩm n&agrave;y, cả c&ocirc; d&acirc;u, ch&uacute; rể v&agrave; &ecirc;-k&iacute;p phải d&agrave;nh ra hơn 3 tuần nghi&ecirc;n cứu lịch sử để c&oacute; h&igrave;nh dung ch&iacute;nh x&aacute;c với từng giai đoạn. Th&ecirc;m v&agrave;o đ&oacute;, họ cũng tham khảo c&aacute;c nguồn kiến thức kh&aacute;c, c&ugrave;ng lời kể từ &ocirc;ng b&agrave;, cha mẹ.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/7.jpg\"><img alt=\"7\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/7.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>Thời gian chụp bộ ảnh l&agrave; 3 ng&agrave;y, ở c&aacute;c địa điểm như biển Hải H&ograve;a, Thanh H&oacute;a, Đường L&acirc;m v&agrave; loanh quanh H&agrave; Nội. Quỳnh Anh tiết lộ bộ ảnh chỉ l&agrave; một bắt đầu cho chuỗi c&aacute;c hoạt động th&uacute; vị li&ecirc;n quan đến đ&aacute;m cưới. Đặc biệt, video cưới sẽ &ldquo;rất hay ho&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/9.jpg\"><img alt=\"9\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/9.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>Từ bối cảnh, trang phục, c&aacute;ch trang điểm, tạo d&aacute;ng&hellip; đều mang đặc trưng của phong c&aacute;ch thời kỳ đổi mới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/10.jpg\"><img alt=\"10\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/10.jpg\" style=\"height:819px; width:640px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giai đoạn hội nhập v&agrave; ph&aacute;t triển, biểu cảm của c&ocirc; d&acirc;u, ch&uacute; rể cũng c&oacute; phần tươi tắn hơn.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/11.jpg\"><img alt=\"11\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/11.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Từng bức ảnh đều được đầu tư chỉn chu v&agrave; tỉ mỉ.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/12.jpg\"><img alt=\"12\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/12.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&ocirc;ng qua 8 cột mốc, bộ ảnh&nbsp;<em>100 năm đ&aacute;m cưới Việt Nam</em>&nbsp;đ&atilde; t&aacute;i hiện ch&acirc;n thực v&agrave; kh&eacute;o l&eacute;o phong c&aacute;ch đ&aacute;m cưới từ thời &ldquo;&ocirc;ng b&agrave; anh&rdquo; cho đến hiện tại. Việc l&agrave;m mới &yacute; tưởng c&oacute; vẻ đ&atilde; cũ của đ&ocirc;i trẻ khiến d&acirc;n mạng th&iacute;ch th&uacute;.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/13.jpg\"><img alt=\"13\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/13.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo:&nbsp;<strong><em>Minh Minh-Ng&ocirc;i sao.net</em></strong></p>\r\n\r\n<p>Bộ ảnh được thực hiện bởi The Planners | Photographer: Cabo | Chuy&ecirc;n gia trang điểm:&nbsp;Nguyễn Ho&agrave; An.</p>', 'BỘ ẢNH TÁI HIỆN 100 NĂM LỊCH SỬ ĐÁM CƯỚI VIỆT NAM - Đức Vinh art', 'BỘ ẢNH TÁI HIỆN 100 NĂM LỊCH SỬ ĐÁM CƯỚI VIỆT NAM - Đức Vinh art', '/public/upload/images/chuyen-de/bo-anh-cuoi-xua.jpg', 'vi', 1, '2017-11-29 23:44:37', '2017-12-22 10:20:37'),
(12, 42, 'Phương thức thanh toán', 'Phương thức thanh toán', '<p>Phương thức thanh to&aacute;n</p>\r\n\r\n<p><img alt=\"\" src=\"/public/upload/images/chuyen-de/Ph%C6%B0%C6%A1ng-th%E1%BB%A9c-thanh-to%C3%A1n-v%C3%A0-chuy%E1%BB%83n-kho%E1%BA%A3n.jpg\" /></p>', 'Phương thức thanh toán', 'Phương thức thanh toán', '/public/upload/images/chuyen-de/thanh%20toan.jpg', 'vi', 1, '2017-12-01 16:00:25', '2017-12-01 16:00:25'),
(13, 33, 'Công ty thiết kế nội ngoại thất văn phòng Đồng Nai', 'Ngày nay, việc thiết kế nội ngoại  thất dành cho một văn phòng làm việc chuyên nghiệp, uy tín đã trở thành điều kiện cơ bản của bất kì doanh nghiệp nào khi thành lập và định hướng phát triển lâu dài. Hầu hết mọi người trước đây chưa tìm hiểu kĩ về', '<p>Ng&agrave;y nay, việc thiết kế nội thất d&agrave;nh cho một văn ph&ograve;ng l&agrave;m việc chuy&ecirc;n nghiệp, uy t&iacute;n đ&atilde; trở th&agrave;nh điều kiện cơ bản của bất k&igrave; doanh nghiệp n&agrave;o khi th&agrave;nh lập v&agrave; định hướng ph&aacute;t triển l&acirc;u d&agrave;i. Hầu hết mọi người trước đ&acirc;y chưa t&igrave;m hiểu kĩ về ảnh hưởng v&agrave; tầm quan trọng của văn ph&ograve;ng l&agrave;m việc t&aacute;c động đến năng suất lao động, khả năng k&iacute; kết văn bản, v&agrave; hồ sơ năng lực của mỗi doanh nghiệp. Thế nhưng, với c&ocirc;ng nghệ th&ocirc;ng tin ph&aacute;t triển như vũ b&atilde;o v&agrave; ng&agrave;y c&agrave;ng hiện đại, tiện nghi như hiện nay&nbsp;mọi người dễ d&agrave;ng&nbsp;tiếp cận với kho t&agrave;ng kiến thức khổng lồ từ Internet. Việc t&igrave;m kiếm&nbsp;<em><strong><a href=\"/dich-vu/32-trang-tri-trung-bai\"><span style=\"color:#2980b9\">c&ocirc;ng ty thiết kế nội n</span></a></strong></em><a href=\"/dich-vu/32-trang-tri-trung-bai\"><span style=\"color:#2980b9\"><em><strong>goại thất Đồng Nai</strong></em></span></a>&nbsp;chuy&ecirc;n nghiệp cũng l&agrave; vấn đề m&agrave; nhiều người gặp phải ? Vậy l&agrave;m sao để t&igrave;m được doanh nghiệp uy t&iacute;n để gửi gắm &yacute; tưởng v&agrave; th&agrave;nh c&ocirc;ng của doanh nghiệp bạn ?</p>\r\n\r\n<p><img alt=\"Công ty thiết kế nội thất văn phòng tphcm 1\" src=\"http://kienphucgia.com/upload/images/cong-ty-thiet-ke-noi-that-van-phong-tphcm-1.jpg\" /></p>\r\n\r\n<p><em><strong>H&igrave;nh 1. Giaỉ ph&aacute;p văn ph&ograve;ng l&agrave;m việc th&ocirc;ng minh, hiện đại</strong></em></p>\r\n\r\n<p>Ch&iacute;nh những điều kiện thuận lợi trong sự ph&aacute;t triển của truyền th&ocirc;ng quảng c&aacute;o, mọi người dễ d&agrave;ng bắt gặp v&agrave; t&igrave;m thấy h&agrave;ng loạt dịch vụ li&ecirc;n quan th&ocirc;ng qua c&aacute;c c&ocirc;ng cụ t&igrave;m kiếm v&agrave; diễn đ&agrave;n tr&ecirc;n internet. Với khối lượng th&ocirc;ng tin khổng lồ, chắc chắn bạn sẽ gặp phải những th&ocirc;ng tin thiếu ch&iacute;nh x&aacute;c hoặc sai lệch, điều đ&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc của bạn. Ch&iacute;nh v&igrave;&nbsp;vậy, lựa chọn v&agrave; chắt lọc th&ocirc;ng tin cần thiết l&agrave; giải ph&aacute;p tốt nhất gi&uacute;p bạn tr&aacute;nh gặp phải c&aacute;c dịch vụ v&agrave; c&ocirc;ng ty ma. Sau đ&acirc;y l&agrave; một số chia sẻ của ch&uacute;ng t&ocirc;i hy vọng bạn sẽ quan t&acirc;m v&agrave; thực hiện theo:</p>\r\n\r\n<p>+ Điều đầu ti&ecirc;n&nbsp;bạn cần quan t&acirc;m đ&oacute; ch&iacute;nh l&agrave; c&aacute;c th&ocirc;ng tin về doanh nghiệp với m&atilde; số thuế, địa chỉ doanh nghiệp, Website.</p>\r\n\r\n<p>+ Tiếp theo đ&oacute; ch&iacute;nh l&agrave; t&igrave;m hiểu c&aacute;c dự &aacute;n họ đ&atilde; thực hiện, từ đ&oacute; đ&aacute;nh gi&aacute; năng lực v&agrave; khả năng của từng đơn vị.</p>\r\n\r\n<p>+ Khi đ&atilde; chắc chắn v&agrave; lựa chọn được mẫu thiết kế bạn cần, h&atilde;y li&ecirc;n hệ với đội ngũ tư vấn từ c&aacute;c doanh nghiệp cung cấp dịch vụ để được hỗ trợ giải ph&aacute;p v&agrave; c&aacute;c lời khuy&ecirc;n tốt nhất.</p>\r\n\r\n<p>+ Tiếp nhận bản thiết kế 3D v&agrave; chi tiết b&aacute;o gi&aacute;, sau đ&oacute; so s&aacute;nh với c&aacute;c th&ocirc;ng tin bạn nhận được</p>\r\n\r\n<p><img alt=\"Công ty thiết kế nội thất văn phòng tphcm 2\" src=\"http://kienphucgia.com/upload/images/cong-ty-thiet-ke-noi-that-van-phong-tphcm-2.jpg\" /></p>\r\n\r\n<p><em><strong>H&igrave;nh 2. Văn ph&ograve;ng họp được thiết kế phong c&aacute;ch chuy&ecirc;n nghiệp v&agrave; tối giản nhất</strong></em></p>\r\n\r\n<p>Nếu bạn đang c&oacute; nhu cầu về thiết kế nội thất văn ph&ograve;ng, hay cần tư vấn giải ph&aacute;p tối ưu to&agrave;n diện hơn cho văn ph&ograve;ng l&agrave;m việc vậy h&atilde;y li&ecirc;n hệ ngay với Kiến Ph&uacute;c Gia -&nbsp;<strong>C&ocirc;ng ty&nbsp;<em><a href=\"http://kienphucgia.com/\"><span style=\"color:#2980b9\">thiết kế nội </span></a><a href=\"/dich-vu/32-trang-tri-trung-bai\"><span style=\"color:#2980b9\">ngoại thất văn ph&ograve;ng Đồng Nai</span></a>&nbsp;</em></strong>- được th&agrave;nh lập từ c&aacute;c kĩ sư chuy&ecirc;n m&ocirc;n kiến tr&uacute;c cao, gi&agrave;u kinh nghiệm trong thực hiện thiết kế v&agrave; thi c&ocirc;ng dự &aacute;n, ch&uacute;ng t&ocirc;i sẽ mang đến những &yacute; tưởng v&agrave; giải ph&aacute;p s&aacute;ng tạo, gi&uacute;p tối ưu hiệu quả l&agrave;m việc v&agrave; g&oacute;p phần v&agrave;o th&agrave;nh c&ocirc;ng chung của doanh nghiệp bạn.</p>\r\n\r\n<p>H&atilde;y li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i khi bạn cần c&aacute;c giải ph&aacute;p tốt nhất nh&eacute; !</p>', 'Công ty thiết kế nội ngoại thất văn phòng Đồng Nai', 'Công ty thiết kế nội ngoại thất văn phòng Đồng Nai', '/public/upload/images/dich-vu/thiet-ke-noi-ngoai-that/cong-ty-thiet-ke-noi-that-van-phong-tphcm-1.jpg', 'vi', 1, '2018-01-03 12:06:28', '2018-01-03 14:23:59');

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
  `is_view` tinyint(1) NOT NULL,
  `is_pay` tinyint(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `address`, `phone`, `email`, `note`, `is_view`, `is_pay`, `created_date`, `modified_date`) VALUES
(20, 'lê minh sự', 'đồng nai', 936777170, 'minhsu57@gmail.com', NULL, 0, 1, '2017-12-01 08:05:34', '0000-00-00 00:00:00'),
(21, 'sự', '12312312', 312313, 'minhsu57@gmail.com', NULL, 0, 0, '2017-12-01 22:56:33', '0000-00-00 00:00:00');

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

--
-- Dumping data for table `payment_detail`
--

INSERT INTO `payment_detail` (`id`, `payment_id`, `product_id`, `quantity`, `price`, `discount`, `created_date`, `modified_date`) VALUES
(10, 20, 12, 1, 1200000, '', '2017-12-01 08:05:34', '2017-12-01 08:05:34'),
(11, 20, 13, 1, 1500000, '', '2017-12-01 08:05:34', '2017-12-01 08:05:34'),
(13, 21, 14, 1, 300000, '', '2017-12-01 22:56:34', '2017-12-01 22:56:34');

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
(8, '12123a', 1, 0, 0, '12312313', '', '123123123', 0, NULL, 20, '/public/upload/images/tranh-quat/IMG_005.png', '123123', 0, '2017-11-25 23:42:00', '2017-12-22 08:16:49'),
(12, 'ho01101', 1, 0, 0, '1x2x3', '', '100g', 0, NULL, 20, '/public/upload/images/tranh-quat/ho.png', '1200000', 0, '2017-11-27 10:48:38', '2017-12-22 08:17:23'),
(13, 'DUCME001', 1, 0, 0, '10x22x2', '', '100g', 0, NULL, 20, '/public/upload/images/tranh-quat/duc%20me02.png', '1500000', 0, '2017-11-27 13:09:18', '2017-12-22 08:17:11'),
(15, 'tcmn001', 1, 0, 0, '0', '', '0', 0, NULL, 31, '/public/upload/images/thu-cong-my-nghe/bach-ma.png', '500000', 0, '2017-11-30 18:49:42', '2017-12-01 13:07:33'),
(16, 'tcmn002', 1, 0, 0, '0', '', '0', 0, NULL, 31, '/public/upload/images/thu-cong-my-nghe/hoa-hong.png', '0', 0, '2017-11-30 18:50:30', '2017-12-01 13:07:40'),
(17, 'tcmn003', 1, 0, 0, '0', '', '0', 0, NULL, 31, '/public/upload/images/thu-cong-my-nghe/hoa-mai.png', '0', 0, '2017-12-01 13:09:07', '2017-12-01 13:09:07'),
(18, 'tcmn004', 1, 0, 0, '0', '', '0', 0, NULL, 31, '/public/upload/images/thu-cong-my-nghe/IMG_0003.png', '0', 0, '2017-12-01 13:11:18', '2017-12-01 13:11:18'),
(19, 'tcmn005', 1, 0, 0, '0', '', '0', 0, NULL, 31, '/public/upload/images/thu-cong-my-nghe/IMG_0535.png', '0', 0, '2017-12-01 13:12:07', '2017-12-01 13:14:03'),
(20, 'tcmn006', 1, 0, 0, '0', '', '0', 0, NULL, 31, '/public/upload/images/thu-cong-my-nghe/IMG_0548.png', '0', 0, '2017-12-01 13:13:54', '2017-12-01 13:13:54'),
(21, 'khungtranh001', 1, 0, 0, '0', '', '0', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/100_0369.png', '0', 0, '2017-12-01 14:07:41', '2017-12-30 16:10:20'),
(22, 'khungtranh002', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/DV0401.png', '0', 0, '2017-12-01 14:18:35', '2017-12-01 14:18:53'),
(23, 'tusm001', 1, 0, 0, '', '', '0', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/100_0665.png', '0', 0, '2017-12-01 14:21:10', '2017-12-01 14:22:58'),
(24, 'bansm001', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/100APPLE_IMG_0388.png', '0', 0, '2017-12-01 14:23:55', '2017-12-01 14:23:55'),
(25, 'smhd01', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/GM%20%20(11).png', '0', 0, '2017-12-22 14:08:07', '2017-12-30 15:32:57'),
(26, 'smhd02', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/GM%20%20(6).png', '0', 0, '2017-12-22 14:08:46', '2017-12-22 14:09:07'),
(27, 'smhdcd01', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/hoa%201.png', '0', 0, '2017-12-22 14:09:46', '2017-12-22 14:10:13'),
(28, 'smhdcd02', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/hoa%202.png', '0', 0, '2017-12-22 14:11:19', '2017-12-22 14:11:30'),
(29, 'sonmaicodai', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/co-dai-001.png', '0', 0, '2017-12-22 14:13:49', '2017-12-30 15:23:30'),
(30, 'sms01', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/sen-son-mai-001.png', '0', 0, '2017-12-22 14:15:10', '2017-12-30 15:21:31'),
(31, 'sms02', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/hoa-son-mai-001.png', '0', 0, '2017-12-22 14:15:35', '2017-12-30 15:22:02'),
(32, 'sms03', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/IMG_20140629_083043.png', '0', 0, '2017-12-22 14:31:46', '2017-12-22 14:31:46'),
(33, 'smhh01', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/md.png', '0', 0, '2017-12-22 14:32:41', '2017-12-22 14:34:05'),
(34, 'khungtranh003', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/Bubh.png', '0', 0, '2017-12-22 15:17:09', '2017-12-22 15:17:24'),
(35, 'thuphap001', 1, 0, 0, '', '', '', 0, NULL, 19, '/public/upload/images/thu-phap/thu-phap-1.gif', '0', 0, '2017-12-22 15:22:55', '2017-12-22 15:23:12'),
(36, 'thuphap002', 1, 0, 0, '', '', '', 0, NULL, 19, '/public/upload/images/thu-phap/thu-phap-2.gif', '0', 0, '2017-12-22 15:23:39', '2017-12-22 15:23:39'),
(37, 'thuphap003', 1, 0, 0, '', '', '', 0, NULL, 19, '/public/upload/images/thu-phap/thu-phap-3.gif', '0', 0, '2017-12-22 15:24:21', '2017-12-22 15:24:30'),
(38, 'thuphap004', 1, 0, 0, '', '', '', 0, NULL, 19, '/public/upload/images/thu-phap/thu-phap-4.gif', '0', 0, '2017-12-22 15:24:52', '2017-12-22 15:24:58'),
(39, 'thuphap005', 1, 0, 0, '', '', '', 0, NULL, 19, '/public/upload/images/thu-phap/thu-phap-5.png', '0', 0, '2017-12-22 15:25:19', '2017-12-22 15:25:19'),
(40, 'sondauhoa001', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/10394068_878591975497378_1671423375966054871_n.png', '0', 0, '2017-12-22 15:32:01', '2018-01-03 08:28:38'),
(41, 'sondauhoa002', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/10615542_878600005496575_8012018072205505612_n.png', '0', 0, '2017-12-22 15:32:34', '2018-01-03 08:28:49'),
(42, 'sondauphongcanh001', 1, 0, 0, '', '', '', 0, NULL, 47, '/public/upload/images/tranh-son-dau/tranh-phong-canh/IMG_0159.png', '0', 0, '2017-12-22 15:33:17', '2018-01-03 09:23:04'),
(43, 'sondauphongcanh002', 1, 0, 0, '', '', '', 0, NULL, 47, '/public/upload/images/tranh-son-dau/tranh-phong-canh/IMG_0627.png', '0', 0, '2017-12-22 15:35:30', '2018-01-03 09:23:16'),
(44, 'sondauhoa003', 1, 0, 0, '', '', '', 0, NULL, 47, '/public/upload/images/tranh-son-dau/tranh-phong-canh/IMG_0700.png', '0', 0, '2017-12-22 15:36:15', '2018-01-03 09:23:26'),
(45, 'sondauhoa003', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/10891943_862024087154167_8829379901705073035_n.png', '0', 0, '2017-12-22 15:37:29', '2018-01-03 08:40:48'),
(46, 'sondauhoa004', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/10891943_862024087154167_8829379901705073035_n(1).png', '0', 0, '2017-12-22 15:37:52', '2018-01-03 08:40:57'),
(47, 'sondauhoa005', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/10974335_886479981375244_4642839519580934630_o.png', '0', 0, '2017-12-22 15:38:47', '2018-01-03 08:42:20'),
(48, 'sondauhoa006', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/10978489_878600548829854_3351260228625547369_n.png', '0', 0, '2017-12-22 15:40:09', '2018-01-03 08:42:34'),
(49, 'sondauhoa007', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/11034283_889289041094338_2585095435060953040_n.png', '0', 0, '2017-12-22 15:40:52', '2018-01-03 08:42:46'),
(50, 'sondauhoa008', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/1980-01-01-00.02.25.png', '0', 0, '2017-12-22 15:43:41', '2018-01-03 08:42:56'),
(51, 'sondauhoa009', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/1980-01-01-00.02.36.png', '0', 0, '2017-12-22 15:44:04', '2018-01-03 08:43:08'),
(52, 'sondauhoa010', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/1980-01-01-00.02.png', '0', 0, '2017-12-22 15:44:27', '2018-01-03 08:43:19'),
(53, 'sondautruutuong001', 1, 0, 0, '', '', '', 0, NULL, 49, '/public/upload/images/tranh-son-dau/tranh-truu-tuong/quy-ran.png', '0', 0, '2017-12-22 15:45:19', '2018-01-03 09:36:48'),
(54, 'sondauantuong', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/Bubh.png', '0', 0, '2017-12-22 15:45:55', '2018-01-03 09:37:27'),
(55, 'sondauantuong', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/Bubh2.png', '0', 0, '2017-12-22 15:46:21', '2018-01-03 09:39:24'),
(56, 'tranhquathoa001', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/1922207_808300302526546_3542043079976313382_n.png', '0', 0, '2017-12-26 10:00:21', '2017-12-26 10:00:46'),
(57, 'tranhquatdongque001', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/dong-que.png', '0', 0, '2017-12-26 10:04:06', '2017-12-26 10:04:06'),
(58, 'tranhquattinhthuonggiadinh', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/cau-ca-thuyen-song-nuoc.png', '0', 0, '2017-12-26 10:11:17', '2017-12-26 10:11:17'),
(59, 'tranhquatdonglua', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/dong-lua.png', '0', 0, '2017-12-26 16:26:53', '2017-12-26 16:27:04'),
(60, 'tranhquathinhcuoi', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/hinh-cuoi-001.png', '0', 0, '2017-12-26 16:28:25', '2017-12-26 16:28:25'),
(61, 'tranhquatdongque', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/dong-que-cau-be-thoi-sao.png', '0', 0, '2017-12-26 16:30:09', '2017-12-26 16:30:09'),
(62, 'tranhquatmanhho', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/manh-ho-thac-nuoc.png', '0', 0, '2017-12-29 15:52:02', '2017-12-29 15:52:02'),
(63, 'tranhquatsongdieu', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/song-dieu.png', '0', 0, '2017-12-29 16:12:38', '2017-12-29 16:12:38'),
(64, 'tranhquatducme', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/me.png', '0', 0, '2017-12-29 16:13:53', '2017-12-29 16:13:53'),
(65, 'tranhquatthacnuoc', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/thac%20moi.png', '0', 0, '2017-12-29 16:14:43', '2017-12-29 16:14:43'),
(66, 'tranhquatthacnuoc001', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/Thac%20TT.png', '0', 0, '2017-12-29 16:15:33', '2017-12-29 16:15:33'),
(67, 'tranhquatthuyen', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/thuyen-song-nuoc.png', '0', 0, '2017-12-29 16:15:59', '2017-12-29 16:15:59'),
(68, 'tranhquattiecly', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/Tiec%20ly.png', '0', 0, '2017-12-29 16:16:42', '2017-12-29 16:16:42'),
(69, 'tranhquattraunuoc', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/tranh-quat-trau.png', '0', 0, '2017-12-29 16:17:14', '2017-12-29 16:17:14'),
(70, 'tranhquattunghac', 1, 0, 0, '', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/tung%20hac.png', '0', 0, '2017-12-29 16:20:34', '2017-12-29 16:28:12'),
(71, 'tcmn007', 1, 0, 0, '', '', '', 0, NULL, 31, '/public/upload/images/thu-cong-my-nghe/IMG_0539.png', '0', 0, '2017-12-30 14:33:25', '2017-12-30 14:33:25'),
(72, 'sonmaihoasen', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/sen1.png', '0', 0, '2017-12-30 15:25:14', '2017-12-30 15:31:06'),
(73, 'sonmaihoasen', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/sen2.png', '0', 0, '2017-12-30 15:25:39', '2017-12-30 15:30:47'),
(74, 'sonmaihoasen', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/sen3.png', '0', 0, '2017-12-30 15:26:00', '2017-12-30 15:29:48'),
(75, 'sonmaila001', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/TRANH%20LA-04.png', '0', 0, '2017-12-30 15:26:28', '2017-12-30 15:26:28'),
(76, 'sonmaila', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/TRANH%20LA-05.png', '0', 0, '2017-12-30 15:26:50', '2017-12-30 15:26:50'),
(77, 'sonmaila003', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/TRANH%20LA-06.png', '0', 0, '2017-12-30 15:27:27', '2017-12-30 15:27:27'),
(78, 'sonmaicodai', 1, 0, 0, '', '', '', 0, NULL, 29, '/public/upload/images/son-mai-hien-dai/tranh1.png', '0', 0, '2017-12-30 15:27:56', '2017-12-30 15:28:29'),
(79, 'khungtranh', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/100_0375.png', '0', 0, '2017-12-30 15:49:17', '2017-12-30 15:55:56'),
(80, 'khungtranhphat', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/547447_557189024304343_1877318860_n.png', '0', 0, '2017-12-30 16:10:53', '2017-12-30 16:11:19'),
(81, 'khungtranhphat', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/Bubh3.png', '0', 0, '2017-12-30 16:12:35', '2017-12-30 16:12:35'),
(82, 'khungtranhphatme', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/DV1001.png', '0', 0, '2017-12-30 16:13:16', '2017-12-30 16:13:16'),
(83, 'khungtranhhinhmau', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/DV0501.png', '0', 0, '2017-12-30 16:14:02', '2017-12-30 16:14:02'),
(84, 'khungtranhhoahong', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/DV1501.png', '0', 0, '2017-12-30 16:14:38', '2017-12-30 16:14:38'),
(85, 'G1124', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/G1124.png', '0', 0, '2017-12-30 16:15:36', '2017-12-30 16:17:48'),
(86, 'G1134', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/G1134.png', '0', 0, '2017-12-30 16:16:33', '2017-12-30 16:17:58'),
(87, 'khungtranhhoavan', 1, 0, 0, '', '', '', 0, NULL, 30, '/public/upload/images/khung-tranh-nghe-thuat/IMG_20140225_143846.png', '0', 0, '2017-12-30 16:18:42', '2017-12-30 16:19:05'),
(88, 'noithatbinh&ban', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/100_0579.png', '0', 0, '2018-01-02 15:52:12', '2018-01-02 15:52:12'),
(89, 'bansonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/ban-son-mai-001.png', '0', 0, '2018-01-02 16:02:59', '2018-01-02 16:02:59'),
(90, 'bancoffee', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/COFFEE-TABLE-01-03.png', '0', 0, '2018-01-02 16:03:31', '2018-01-02 16:03:31'),
(91, 'bancoffeedo', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/COFFEE-TABLE-08-08.png', '0', 0, '2018-01-02 16:05:21', '2018-01-02 16:05:21'),
(92, 'cuatusonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/cua-tu-Anh-Tien-2.png', '0', 0, '2018-01-02 16:05:52', '2018-01-02 16:05:52'),
(93, 'giuongsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/GIUONG-002-01.png', '0', 0, '2018-01-02 16:06:17', '2018-01-02 16:06:17'),
(94, 'phongbephoa', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/hoa-11.png', '0', 0, '2018-01-02 16:06:48', '2018-01-02 16:06:48'),
(95, 'bansonmaihoa', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/hoa-19.png', '0', 0, '2018-01-02 16:07:34', '2018-01-02 16:07:34'),
(96, 'phongkhachsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/IMG029.png', '0', 0, '2018-01-02 16:10:28', '2018-01-02 16:10:28'),
(97, 'nhabepsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/IMG1122.png', '0', 0, '2018-01-02 16:12:01', '2018-01-02 16:12:01'),
(98, 'phongkhac', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/noi-that-003.png', '0', 0, '2018-01-02 16:12:46', '2018-01-02 16:12:46'),
(99, 'phongkhachsonmai', 1, 0, 0, 'aá', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/noi-that-son-mai-phong-khach-001.png', '0', 0, '2018-01-02 16:14:59', '2018-01-02 16:21:24'),
(100, 'phongkhachsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/noi-that-son-mai-phong-khach-002.png', '0', 0, '2018-01-02 16:18:47', '2018-01-02 16:21:16'),
(101, 'phongmaster', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/noi-that-son-mai-phong-ngu-001.png', '0', 0, '2018-01-02 16:21:05', '2018-01-02 16:21:05'),
(102, 'tusonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/noi-that-son-mai-phong-ngu-002.png', '0', 0, '2018-01-02 16:22:17', '2018-01-02 16:22:17'),
(103, 'kesonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/noi-that-son-mai-trang-diem-001.png', '0', 0, '2018-01-02 16:23:05', '2018-01-02 16:23:05'),
(104, 'tusonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/noi-that-son-mai-tu.png', '0', 0, '2018-01-02 16:23:47', '2018-01-02 16:23:47'),
(105, 'phongbepsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/p-bep---v2.png', '0', 0, '2018-01-02 16:24:14', '2018-01-02 16:24:14'),
(106, 'phongbepsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/p-bep---v3.png', '0', 0, '2018-01-02 16:24:33', '2018-01-02 16:24:52'),
(107, 'phongkhachsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/p-khach---v3.png', '0', 0, '2018-01-02 16:25:19', '2018-01-02 16:26:07'),
(109, 'phongkhachsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/p-khach---v4.png', '0', 0, '2018-01-02 16:27:10', '2018-01-02 16:27:39'),
(110, 'phongbepsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/P8161015.png', '0', 0, '2018-01-02 16:28:32', '2018-01-02 16:28:46'),
(111, 'phongkhachsonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/P8161017.png', '0', 0, '2018-01-03 07:59:47', '2018-01-03 07:59:47'),
(112, 'phongngu', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/phong-ngu-002.png', '0', 0, '2018-01-03 08:00:18', '2018-01-03 08:00:18'),
(113, 'tusonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/tu-son-mai-001.png', '0', 0, '2018-01-03 08:01:33', '2018-01-03 08:03:25'),
(114, 'tusonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/tu-son-mai-002.png', '0', 0, '2018-01-03 08:01:58', '2018-01-03 08:07:22'),
(115, 'tusonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/tu-son-mai-004.png', '0', 0, '2018-01-03 08:07:43', '2018-01-03 08:07:43'),
(116, 'tusonmai', 1, 0, 0, '', '', '', 0, NULL, 18, '/public/upload/images/noi-that-son-mai/tu-son-mai-005.png', '0', 0, '2018-01-03 08:08:02', '2018-01-03 08:08:02'),
(117, 'sondaulohoa', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/202178_464781453545101_1348805612_o.png', '0', 0, '2018-01-03 08:48:11', '2018-01-03 08:48:11'),
(118, 'sondausen', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/320241_463064373716809_2104705674_n.png', '0', 0, '2018-01-03 08:48:57', '2018-01-03 08:48:57'),
(119, 'sondauhoadai', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/984272_886480044708571_9037872830694048477_n.png', '0', 0, '2018-01-03 08:49:26', '2018-01-03 08:49:26'),
(120, 'tinhthaynghiaco', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/IMG_0721-(2).png', '0', 0, '2018-01-03 08:50:30', '2018-01-03 08:50:30'),
(121, 'sondauhoadai', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/IMG_0723.png', '0', 0, '2018-01-03 08:51:09', '2018-01-03 08:51:09'),
(122, 'sondauhoadai', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/IMG_0726.png', '0', 0, '2018-01-03 08:56:21', '2018-01-03 08:56:21'),
(123, 'sondauhoadai', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/IMG_0789.png', '0', 0, '2018-01-03 09:00:02', '2018-01-03 09:00:02'),
(124, 'sondauhoadai', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/IMG_0790.png', '0', 0, '2018-01-03 09:00:20', '2018-01-03 09:00:20'),
(125, 'sondauhoadai', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/IMG_0791.png', '0', 0, '2018-01-03 09:00:37', '2018-01-03 09:00:42'),
(127, 'sondauhoadai', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/IMG_0794.png', '0', 0, '2018-01-03 09:01:41', '2018-01-03 09:01:41'),
(128, 'sondauhoadai', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/IMG_0795.png', '0', 0, '2018-01-03 09:01:56', '2018-01-03 09:01:56'),
(129, 'sondauhoasen', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/Sen1.png', '0', 0, '2018-01-03 09:04:30', '2018-01-03 09:04:54'),
(130, 'sondauhoasen', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/sen2.png', '0', 0, '2018-01-03 09:13:58', '2018-01-03 09:13:58'),
(131, 'sondauhoasen', 1, 0, 0, '', '', '', 0, NULL, 46, '/public/upload/images/tranh-son-dau/tranh-hoa/sen3.png', '0', 0, '2018-01-03 09:14:20', '2018-01-03 09:14:20'),
(132, 'sondauantuong', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/Bubh3.png', '0', 0, '2018-01-03 09:41:20', '2018-01-03 09:41:20'),
(133, 'sondauantuong', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/HTB1apFpGFXXXXbmaXXXq6xXFXXXE.png', '0', 0, '2018-01-03 09:41:50', '2018-01-03 09:41:50'),
(134, 'giadinhthanhgia', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/IMG_0010.png', '0', 0, '2018-01-03 09:46:06', '2018-01-03 09:46:06'),
(135, 'giadinhthanhgia', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/IMG_0013.png', '0', 0, '2018-01-03 09:48:18', '2018-01-03 09:48:18'),
(136, 'sondauphatto', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/Phat%2045x60.png', '0', 0, '2018-01-03 09:48:51', '2018-01-03 09:48:51'),
(137, 'sondauphatba', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/phat-09.png', '0', 0, '2018-01-03 09:49:24', '2018-01-03 09:49:24'),
(138, 'sondaunhan', 1, 0, 0, '', '', '', 0, NULL, 48, '/public/upload/images/tranh-son-dau/tranh-an-tuong/IMG_0089.png', '0', 0, '2018-01-03 09:52:50', '2018-01-03 09:52:50'),
(139, 'phudieu', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/1a0902af4bbfa4e1fdae.png', '0', 0, '2018-01-03 15:52:03', '2018-01-03 15:52:03'),
(140, 'phudieu', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/1c676ac423d4cc8a95c5.png', '0', 0, '2018-01-03 15:52:22', '2018-01-03 15:52:22'),
(141, 'phudieuhoa', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/2057e0ffa9ef46b11ffe.png', '0', 0, '2018-01-03 15:52:41', '2018-01-03 15:52:41'),
(142, 'phudieuhoa', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/22ac3f0676169948c007.png', '0', 0, '2018-01-03 15:52:57', '2018-01-03 15:52:57'),
(143, 'phudieuphat', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/47ace356aa4645181c57.jpg', '1000000', 0, '2018-01-03 15:53:35', '2018-01-03 15:57:30'),
(144, 'phudieuannhien', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/62e7341c7d0c9252cb1d.png', '0', 0, '2018-01-03 15:57:21', '2018-01-03 15:57:21'),
(145, 'phudieuhoa', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/6ffd69072017cf499606.png', '0', 0, '2018-01-03 15:58:08', '2018-01-03 15:58:08'),
(146, 'phudieuhoa', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/7e0d8eaac7ba28e471ab.png', '0', 0, '2018-01-03 15:58:26', '2018-01-03 15:58:26'),
(147, 'phudieuphatto', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/8291ef6ea67e4920106f.png', '0', 0, '2018-01-03 15:58:52', '2018-01-03 15:58:52'),
(148, 'phudieuhoa', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/8b4f89e3c0f32fad76e2.png', '0', 0, '2018-01-03 16:00:02', '2018-01-03 16:00:02'),
(149, 'phudieuhoa', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/956bbbcff2df1d8144ce.png', '0', 0, '2018-01-03 16:00:26', '2018-01-03 16:00:26'),
(150, 'phudieu', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/a44884edcdfd22a37bec.png', '0', 0, '2018-01-03 16:00:53', '2018-01-03 16:00:53'),
(151, 'phudieu', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/ac8e6e722762c83c9173.png', '0', 0, '2018-01-03 16:01:25', '2018-01-03 16:01:39'),
(152, 'phudieuphat', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/bbbf663f2f2fc071993e.png', '0', 0, '2018-01-03 16:02:49', '2018-01-03 16:02:49'),
(153, 'phudieuhoa', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/c7651fc356d3b98de0c2.png', '0', 0, '2018-01-03 16:03:13', '2018-01-03 16:03:13'),
(154, 'phudieula', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/ca1-(2).png', '0', 0, '2018-01-03 16:03:57', '2018-01-03 16:03:57'),
(155, 'phudieuphat', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/d2f89406dd1632486b07.png', '0', 0, '2018-01-03 16:04:17', '2018-01-03 16:04:17'),
(156, 'hoavala', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/d4f1a4aee8be07e05eaf.png', '0', 0, '2018-01-03 16:04:45', '2018-01-03 16:05:23'),
(157, 'phudieuphat', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/d750e9ada0bd4fe316ac.png', '0', 0, '2018-01-03 16:05:46', '2018-01-03 16:05:46'),
(158, 'phudieu', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/d852bce1f1f11eaf47e0.png', '0', 0, '2018-01-03 16:07:02', '2018-01-03 16:07:02'),
(159, 'phudieu', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/edc5f98fb59f5ac1038e.png', '0', 0, '2018-01-03 16:07:21', '2018-01-03 16:07:21'),
(160, 'phudieucachep', 1, 0, 0, '', '', '', 0, NULL, 44, '/public/upload/images/tran-phu-dieu/f8af8034cd24227a7b35.png', '0', 0, '2018-01-03 16:07:52', '2018-01-03 16:07:52'),
(162, '', 1, 0, 0, '', '', '', 0, NULL, 1, '/public/upload/images/tran-phu-dieu/1a0902af4bbfa4e1fdae.png', '0', 0, '2018-01-04 07:54:00', '2018-01-04 07:54:00');

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
(71, 8, '/public/upload/images/scan0002.jpg', ''),
(73, 12, '/public/upload/images/tranh-quat/ho.png', ''),
(74, 33, '/public/upload/images/son-mai-hien-dai/GM%20%20(6).png', ''),
(79, 34, '/public/upload/images/khung-tranh-nghe-thuat/Bubh3.png', ''),
(92, 21, '/public/upload/images/khung-tranh-nghe-thuat/100_0372.png', ''),
(93, 21, '/public/upload/images/khung-tranh-nghe-thuat/2007-01-18-23.58.png', ''),
(94, 21, '/public/upload/images/khung-tranh-nghe-thuat/G1124.png', '');

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
(6, 8, 'vi', 'Tranh quạt màu vàng', 'asf', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'đá', 'xám nhạt kết hợp xanh ngọc', 'Đức Vinh Art', '123123', '1asdfasdfasdf', '2017-11-25 23:42:00', '2017-12-22 08:16:49'),
(10, 12, 'vi', 'Tranh quạt hình hổ', 'Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm\r\nAssembly Type: Pre Assembled\r\nMaterial: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On ', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'Giấy, Tre', 'Xanh nõn chuối', 'Đức Vinh Art', '', '', '2017-11-27 10:48:39', '2017-12-22 08:17:23'),
(11, 13, 'vi', 'Tranh quạt hình Đức Mẹ', 'Được vẽ từng chi tiết bằng sơn mài, tranh quạt tạo ra sự khác biệt giữa các loại quạt bình thường được vẽ bằng các công nghệ vi tính', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'Giấy', 'xanh', 'Đức Vinh Art', '', '', '2017-11-27 13:09:18', '2017-12-22 08:17:11'),
(13, 15, 'vi', 'Thủ công mỹ nghệ 001', '', '', 'Gỗ', '', 'Đức Vinh Art', '', '', '2017-11-30 18:49:42', '2017-12-01 13:07:34'),
(14, 16, 'vi', 'Thủ công mỹ nghệ 002', '', '', 'Gỗ', 'Xám', 'Đức Vinh Art', '', '', '2017-11-30 18:50:30', '2017-12-01 13:07:40'),
(15, 17, 'vi', 'Thủ công mỹ nghệ 003', '', '', 'Gỗ', '', 'Đức Vinh Art', '', '', '2017-12-01 13:09:07', '2017-12-01 13:09:07'),
(16, 18, 'vi', 'Thủ công mỹ nghệ 004', '', '', 'Gỗ', '', 'Đức Vinh Art', '', '', '2017-12-01 13:11:18', '2017-12-01 13:11:18'),
(17, 19, 'vi', 'Thủ công mỹ nghệ 005', '', '', 'Đất nung', 'Trắng', 'Đức Vinh Art', '', '', '2017-12-01 13:12:07', '2017-12-01 13:14:03'),
(18, 20, 'vi', 'Thủ công mỹ nghệ 006', '', '', 'Gỗ', 'Đỏ', 'Đức Vinh Art', '', '', '2017-12-01 13:13:54', '2017-12-01 13:13:54'),
(19, 21, 'vi', 'Khung tranh 001', '', '', 'Gỗ', 'Đỏ, Trắng, Đen, ...', 'Đức Vinh Art', 'Khung tranh 001', 'Khung tranh 001', '2017-12-01 14:07:41', '2017-12-30 16:10:20'),
(20, 22, 'vi', 'Khung tranh 002', '', '', 'Gỗ', 'Đỏ', 'Đức Vinh Art', 'Khung tranh 002', 'Khung tranh 002', '2017-12-01 14:18:35', '2017-12-01 14:18:53'),
(21, 23, 'vi', 'Tranh - tủ ảnh sơn mài', '', '', 'Gỗ', 'Trắng', '', '', '', '2017-12-01 14:21:10', '2017-12-01 14:22:58'),
(22, 24, 'vi', 'Bàn sơn mài', '', '', 'Đá', 'Trắng', 'Đức Vinh Art', 'Bàn sơn mài', 'Bàn sơn mài', '2017-12-01 14:23:55', '2017-12-01 14:23:55'),
(23, 25, 'vi', 'Tranh sơn mài hiện đại', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 14:08:07', '2017-12-30 15:32:57'),
(24, 26, 'vi', 'Sơn mài hiện đại 2', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 14:08:46', '2017-12-22 14:09:07'),
(25, 27, 'vi', 'Sơn mài cỏ dại 01', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 14:09:46', '2017-12-22 14:10:13'),
(26, 28, 'vi', 'Sơn mài cỏ dại 02', '', '', '', '', '', '', '', '2017-12-22 14:11:19', '2017-12-22 14:11:30'),
(27, 29, 'vi', 'Sơn mài cỏ dại', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 14:13:49', '2017-12-30 15:23:30'),
(28, 30, 'vi', 'Sơn mài sen 01', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 14:15:10', '2017-12-30 15:21:31'),
(29, 31, 'vi', 'Sơn mài sen 02', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 14:15:35', '2017-12-30 15:22:02'),
(30, 32, 'vi', 'Sơn mài sen 03', '', '', '', '', '', '', '', '2017-12-22 14:31:46', '2017-12-22 14:31:46'),
(31, 33, 'vi', 'Sơn mài hoa hồng', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 14:32:41', '2017-12-22 14:34:05'),
(32, 34, 'vi', 'Khung tranh 003', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:17:09', '2017-12-22 15:17:24'),
(33, 35, 'vi', 'Thư pháp Việt 001', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:22:55', '2017-12-22 15:23:12'),
(34, 36, 'vi', 'Thư pháp Việt 002', '', '', '', '', '', '', '', '2017-12-22 15:23:39', '2017-12-22 15:23:39'),
(35, 37, 'vi', 'Thư pháp Việt 003', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:24:21', '2017-12-22 15:24:30'),
(36, 38, 'vi', 'Thư pháp Việt 004', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:24:52', '2017-12-22 15:24:58'),
(37, 39, 'vi', 'Thư pháp Việt 005', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:25:19', '2017-12-22 15:25:19'),
(38, 40, 'vi', 'Tranh hoa 001', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:32:01', '2018-01-03 08:28:38'),
(39, 41, 'vi', 'Sơn dầu hoa 002', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:32:34', '2018-01-03 08:28:49'),
(40, 42, 'vi', 'Sơn dầu phong cảnh 001', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:33:17', '2018-01-03 09:23:04'),
(41, 43, 'vi', 'Sơn dầu phong cảnh 002', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:35:30', '2018-01-03 09:23:16'),
(42, 44, 'vi', 'Sơn dầu phong cảnh 003', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:36:15', '2018-01-03 09:23:26'),
(43, 45, 'vi', 'Sơn dầu hoa 003', '', '', '', '', '', '', '', '2017-12-22 15:37:30', '2018-01-03 08:40:48'),
(44, 46, 'vi', 'Sơn dầu hoa 004', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:37:53', '2018-01-03 08:40:57'),
(45, 47, 'vi', 'Sơn dầu hoa 005', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:38:47', '2018-01-03 08:42:20'),
(46, 48, 'vi', 'Sơn dầu hoa 006', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:40:10', '2018-01-03 08:42:34'),
(47, 49, 'vi', 'Sơn dầu hoa 007', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:40:53', '2018-01-03 08:42:46'),
(48, 50, 'vi', 'Sơn dầu hoa 008', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:43:41', '2018-01-03 08:42:57'),
(49, 51, 'vi', 'Sơn dầu hoa 009', '', '', '', '', '', '', '', '2017-12-22 15:44:04', '2018-01-03 08:43:08'),
(50, 52, 'vi', 'Sơn dầu hoa 010', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:44:27', '2018-01-03 08:43:19'),
(51, 53, 'vi', 'Sơn dầu trừu tượng 001', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:45:19', '2018-01-03 09:36:48'),
(52, 54, 'vi', 'Sơn dầu ấn tượng phật tổ', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:45:55', '2018-01-03 09:37:27'),
(53, 55, 'vi', 'Sơn dầu ấn tượng phật tổ', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-22 15:46:21', '2018-01-03 09:39:24'),
(54, 56, 'vi', 'Tranh quạt hoa 001', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-26 10:00:21', '2017-12-26 10:00:46'),
(55, 57, 'vi', 'Tranh quạt đồng quê 001', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-26 10:04:06', '2017-12-26 10:04:06'),
(56, 58, 'vi', 'Tranh quạt châm ngôn tình thương gia đình', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-26 10:11:17', '2017-12-26 10:11:17'),
(57, 59, 'vi', 'Tranh quạt đồng lúa', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-26 16:26:53', '2017-12-26 16:27:04'),
(58, 60, 'vi', 'Tranh quạt hình cưới 001', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-26 16:28:25', '2017-12-26 16:28:25'),
(59, 61, 'vi', 'Tranh quạt đồng quê', '', '', '', '', '', '', '', '2017-12-26 16:30:09', '2017-12-26 16:30:09'),
(60, 62, 'vi', 'Tranh quạt mãnh hổ', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-29 15:52:02', '2017-12-29 15:52:02'),
(61, 63, 'vi', 'Tranh quạt song điêu', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-29 16:12:38', '2017-12-29 16:12:38'),
(62, 64, 'vi', 'Tranh quạt đức mẹ', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-29 16:13:53', '2017-12-29 16:13:53'),
(63, 65, 'vi', 'Tranh quạt thác nước', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-29 16:14:43', '2017-12-29 16:14:43'),
(64, 66, 'vi', 'Tranh quạt thác nước', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-29 16:15:33', '2017-12-29 16:15:33'),
(65, 67, 'vi', 'Tranh quạt thuyền sông nước', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-29 16:15:59', '2017-12-29 16:15:59'),
(66, 68, 'vi', 'Tranh quạt tiệc ly', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-29 16:16:42', '2017-12-29 16:16:42'),
(67, 69, 'vi', 'Tranh quạt trâu nước', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-29 16:17:15', '2017-12-29 16:17:15'),
(68, 70, 'vi', 'Tranh quạt tùng hạc', '', '', '', '', '', '', '', '2017-12-29 16:20:34', '2017-12-29 16:28:13'),
(69, 71, 'vi', 'Thủ công mỹ nghệ 007', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 14:33:25', '2017-12-30 14:33:25'),
(70, 72, 'vi', 'Tranh sơn mài hoa sen', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 15:25:14', '2017-12-30 15:31:06'),
(71, 73, 'vi', 'Tranh sơn mài hoa sen', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 15:25:39', '2017-12-30 15:30:47'),
(72, 74, 'vi', 'Tranh sơn mài hoa sen', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 15:26:01', '2017-12-30 15:29:48'),
(73, 75, 'vi', 'Tranh sơn mài lá', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 15:26:28', '2017-12-30 15:26:28'),
(74, 76, 'vi', 'Tranh sơn mài lá', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 15:26:50', '2017-12-30 15:26:50'),
(75, 77, 'vi', 'Tranh sơn mài lá', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 15:27:27', '2017-12-30 15:27:27'),
(76, 78, 'vi', 'Tranh sơn mài cỏ dại', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 15:27:56', '2017-12-30 15:28:29'),
(77, 79, 'vi', 'Khung tranh 003', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 15:49:17', '2017-12-30 15:55:56'),
(78, 80, 'vi', 'Khung tranh phật', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 16:10:53', '2017-12-30 16:11:19'),
(79, 81, 'vi', 'Khung tranh phật 002', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 16:12:35', '2017-12-30 16:12:35'),
(80, 82, 'vi', 'Khung tranh phật mẹ 001', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 16:13:16', '2017-12-30 16:13:16'),
(81, 83, 'vi', 'Khung tranh hình mẫu', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 16:14:02', '2017-12-30 16:14:02'),
(82, 84, 'vi', 'Khung tranh hoa hồng', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 16:14:38', '2017-12-30 16:14:38'),
(83, 85, 'vi', 'Mảnh ghép khung tranh G1124', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 16:15:36', '2017-12-30 16:17:48'),
(84, 86, 'vi', 'Mảnh ghép khung tranh G1134', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 16:16:33', '2017-12-30 16:17:58'),
(85, 87, 'vi', 'Khung tranh hoa văn', '', '', '', '', 'Đức Vinh Art', '', '', '2017-12-30 16:18:42', '2017-12-30 16:19:05'),
(86, 88, 'vi', 'Nội thất sơn mài bình & bàn', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 15:52:12', '2018-01-02 15:52:12'),
(87, 89, 'vi', 'Bàn sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:02:59', '2018-01-02 16:02:59'),
(88, 90, 'vi', 'Bàn coffee', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:03:31', '2018-01-02 16:03:31'),
(89, 91, 'vi', 'Bàn coffee đỏ', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:05:21', '2018-01-02 16:05:21'),
(90, 92, 'vi', 'Cửa tủ sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:05:52', '2018-01-02 16:05:52'),
(91, 93, 'vi', 'Gường sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:06:17', '2018-01-02 16:06:17'),
(92, 94, 'vi', 'Phòng bếp - hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:06:49', '2018-01-02 16:06:49'),
(93, 95, 'vi', 'Bàn sơn mài - hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:07:34', '2018-01-02 16:07:34'),
(94, 96, 'vi', 'Phòng khách sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:10:28', '2018-01-02 16:10:28'),
(95, 97, 'vi', 'Nhà bếp - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:12:01', '2018-01-02 16:12:01'),
(96, 98, 'vi', 'Phòng khách sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:12:46', '2018-01-02 16:12:46'),
(97, 99, 'vi', 'Phòng khách - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:14:59', '2018-01-02 16:21:24'),
(98, 100, 'vi', 'Phòng khách - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:18:47', '2018-01-02 16:21:16'),
(99, 101, 'vi', 'Phòng master', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:21:05', '2018-01-02 16:21:05'),
(100, 102, 'vi', 'Tủ sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:22:17', '2018-01-02 16:22:17'),
(101, 103, 'vi', 'Kệ - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:23:05', '2018-01-02 16:23:05'),
(102, 104, 'vi', 'Tủ - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:23:47', '2018-01-02 16:23:47'),
(103, 105, 'vi', 'Phòng bếp - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:24:14', '2018-01-02 16:24:14'),
(104, 106, 'vi', 'Phòng bếp - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:24:33', '2018-01-02 16:24:52'),
(105, 107, 'vi', 'Phòng khách', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:25:19', '2018-01-02 16:26:07'),
(107, 109, 'vi', 'Phòng khách', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:27:10', '2018-01-02 16:27:39'),
(108, 110, 'vi', 'Phòng bếp - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-02 16:28:33', '2018-01-02 16:28:46'),
(109, 111, 'vi', 'Phòng khách - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 07:59:47', '2018-01-03 07:59:47'),
(110, 112, 'vi', 'Phòng ngủ', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:00:18', '2018-01-03 08:00:18'),
(111, 113, 'vi', 'Tủ - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:01:33', '2018-01-03 08:03:25'),
(112, 114, 'vi', 'Tủ - sơn mài', '', '', '', '', '', '', '', '2018-01-03 08:01:58', '2018-01-03 08:07:22'),
(113, 115, 'vi', 'Tủ - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:07:44', '2018-01-03 08:07:44'),
(114, 116, 'vi', 'Tủ - sơn mài', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:08:02', '2018-01-03 08:08:02'),
(115, 117, 'vi', 'Sơn dầu lọ hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:48:11', '2018-01-03 08:48:11'),
(116, 118, 'vi', 'Sơn dầu hoa sen', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:48:57', '2018-01-03 08:48:57'),
(117, 119, 'vi', 'Sơn dầu hoa dại', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:49:26', '2018-01-03 08:49:26'),
(118, 120, 'vi', 'Sơn dầu hoa dại - tình thầy nghĩa cô', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:50:30', '2018-01-03 08:50:30'),
(119, 121, 'vi', 'Sơn dầu hoa dại', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:51:09', '2018-01-03 08:51:09'),
(120, 122, 'vi', 'Sơn dầu hoa dại', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 08:56:21', '2018-01-03 08:56:21'),
(121, 123, 'vi', 'Sơn dầu hoa dại', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:00:02', '2018-01-03 09:00:02'),
(122, 124, 'vi', 'Sơn dầu hoa dại', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:00:20', '2018-01-03 09:00:20'),
(123, 125, 'vi', 'Sơn dầu hoa dại', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:00:37', '2018-01-03 09:00:42'),
(125, 127, 'vi', 'Sơn dầu hoa dại', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:01:41', '2018-01-03 09:01:41'),
(126, 128, 'vi', 'Sơn dầu hoa dại', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:01:57', '2018-01-03 09:01:57'),
(127, 129, 'vi', 'Sơn dầu hoa sen', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:04:30', '2018-01-03 09:04:54'),
(128, 130, 'vi', 'Sơn dầu hoa sen', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:13:58', '2018-01-03 09:13:58'),
(129, 131, 'vi', 'Sơn dầu hoa sen', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:14:20', '2018-01-03 09:14:20'),
(130, 132, 'vi', 'Sơn dầu ấn tượng phật tổ', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:41:20', '2018-01-03 09:41:20'),
(131, 133, 'vi', 'Sơn dầu ấn tượng phật tổ', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:41:50', '2018-01-03 09:41:50'),
(132, 134, 'vi', 'Sơn dầu gia đình thánh gia', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:46:06', '2018-01-03 09:46:06'),
(133, 135, 'vi', 'Sơn dầu gia đình thánh gia', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:48:18', '2018-01-03 09:48:18'),
(134, 136, 'vi', 'Sơn dầu ấn tượng phật tổ', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:48:51', '2018-01-03 09:48:51'),
(135, 137, 'vi', 'Sơn dầu phật bà', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:49:24', '2018-01-03 09:49:24'),
(136, 138, 'vi', 'Nhẫn - sơn dầu', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 09:52:50', '2018-01-03 09:52:50'),
(137, 139, 'vi', 'Tranh phù điêu', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:52:03', '2018-01-03 15:52:03'),
(138, 140, 'vi', 'Tranh phù điêu', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:52:22', '2018-01-03 15:52:22'),
(139, 141, 'vi', 'Tranh phù điêu hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:52:41', '2018-01-03 15:52:41'),
(140, 142, 'vi', 'Tranh phù điêu hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:52:57', '2018-01-03 15:52:57'),
(141, 143, 'vi', 'Tranh phù điêu phật', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:53:36', '2018-01-03 15:57:30'),
(142, 144, 'vi', 'Tranh phù điêu - an nhiên', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:57:22', '2018-01-03 15:57:22'),
(143, 145, 'vi', 'Tranh phù điêu hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:58:09', '2018-01-03 15:58:09'),
(144, 146, 'vi', 'Tranh phù điêu hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:58:26', '2018-01-03 15:58:26'),
(145, 147, 'vi', 'Tranh phù điêu phật tổ', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 15:58:52', '2018-01-03 15:58:52'),
(146, 148, 'vi', 'Phòng khách', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:00:02', '2018-01-03 16:00:02'),
(147, 149, 'vi', 'Tranh phù điêu hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:00:26', '2018-01-03 16:00:26'),
(148, 150, 'vi', 'Tranh phù điêu', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:00:53', '2018-01-03 16:00:53'),
(149, 151, 'vi', 'Tranh phù điêu - an nhiên - có khung', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:01:25', '2018-01-03 16:01:39'),
(150, 152, 'vi', 'Tranh phù điêu phật', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:02:49', '2018-01-03 16:02:49'),
(151, 153, 'vi', 'Tranh phù điêu hoa', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:03:13', '2018-01-03 16:03:13'),
(152, 154, 'vi', 'Tranh phù điêu - lá', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:03:57', '2018-01-03 16:03:57'),
(153, 155, 'vi', 'Tranh phù điêu phật', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:04:17', '2018-01-03 16:04:17'),
(154, 156, 'vi', 'Tranh phù điêu hoa và lá', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:04:45', '2018-01-03 16:05:23'),
(155, 157, 'vi', 'Tranh phù điêu phật', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:05:47', '2018-01-03 16:05:47'),
(156, 158, 'vi', 'Tranh phù điêu', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:07:02', '2018-01-03 16:07:02'),
(157, 159, 'vi', 'Tranh phù điêu', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:07:21', '2018-01-03 16:07:21'),
(158, 160, 'vi', 'Tranh phù điêu cá chép', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-03 16:07:52', '2018-01-03 16:07:52'),
(160, 162, 'vi', 'ăefawefawef', '', '', '', '', 'Đức Vinh Art', '', '', '2018-01-04 07:54:01', '2018-01-04 07:54:01');

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
(4, 1, '', '/public/upload/images/banner/tranh-quat-cut-ngua.png', '/san-pham/tranh-quat', 1, '2017-11-27 08:56:24', '2017-12-22 09:17:28'),
(5, 1, '', '/public/upload/images/banner/son-mai-hien-dai-1.png', '', 1, '2017-11-27 08:56:53', '2017-12-18 11:04:47'),
(6, 18, '', '/public/upload/images/banner/tranh-son-mai-banner.png', '', 1, '2017-11-27 08:57:28', '2017-12-01 12:56:16'),
(7, 20, '', '/public/upload/images/banner/tranh-quat-banner.png', '', 1, '2017-11-27 10:56:26', '2017-12-01 12:51:43'),
(8, 39, '', '/public/upload/images/banner/Top_Banner_09.jpg', '', 1, '2017-11-27 13:42:25', '2017-12-01 12:51:13'),
(9, 34, '', '/public/upload/images/banner/Top_Banner-183.jpg', '', 1, '2017-11-28 08:20:38', '2018-01-03 12:41:37'),
(10, 36, '', '/public/upload/images/banner/Top_Banner-10.jpg', '', 1, '2017-11-28 10:57:28', '2017-12-01 12:50:49'),
(11, 32, '', '/public/upload/images/banner/Top_Banner-11.jpg', '', 1, '2017-11-29 09:35:16', '2018-01-03 13:05:19'),
(13, 1, '', '/public/upload/images/banner/slider-2.png', '', 1, '2017-12-01 12:52:22', '2018-01-03 11:16:50'),
(14, 30, '', '/public/upload/images/banner/banner-khung-tranh.png', '', 1, '2017-12-01 14:06:19', '2017-12-22 15:19:04'),
(15, 1, '', '/public/upload/images/banner/son-mai-hien-dai-2.png', '', 1, '2017-12-18 11:06:21', '2017-12-18 11:06:21'),
(16, 1, '', '/public/upload/images/banner/banner-tranh-son-dau-1.png', '', 1, '2017-12-18 14:32:19', '2017-12-18 14:32:19'),
(18, 20, '', '/public/upload/images/banner/tranh-quat-cut-ngua.png', '/san-pham/tranh-quat', 1, '2017-12-22 09:17:12', '2017-12-22 09:17:12'),
(19, 29, '', '/public/upload/images/banner/slider-2.png', '', 1, '2017-12-22 15:13:50', '2017-12-22 15:13:50'),
(20, 19, '', '/public/upload/images/banner/slider-fix.png', '', 1, '2017-12-22 15:26:49', '2017-12-22 15:26:49'),
(21, 43, '', '/public/upload/images/banner/banner-tranh-son-dau-1.png', '', 1, '2017-12-22 15:48:24', '2017-12-22 15:48:24'),
(22, 46, '', '/public/upload/images/banner/banner-tranh-son-dau-1.png', '', 1, '2017-12-23 14:25:17', '2017-12-23 14:25:17'),
(23, 47, '', '/public/upload/images/banner/slider-fix.png', '/san-pham/tranh-phong-canh', 1, '2018-01-03 11:17:57', '2018-01-03 11:20:38'),
(24, 31, '', '/public/upload/images/banner/Top_Banner-071.jpg', '', 1, '2018-01-03 11:21:41', '2018-01-03 11:21:41'),
(25, 31, '', '/public/upload/images/banner/Top_Banner-081.jpg', '', 1, '2018-01-03 11:22:43', '2018-01-03 11:22:43'),
(26, 44, '', '/public/upload/images/banner/Top_Banner-081.jpg', '', 1, '2018-01-03 11:24:43', '2018-01-03 11:24:43'),
(29, 33, '', '/public/upload/images/banner/1507994251_slider2.jpg', '', 1, '2018-01-03 12:00:28', '2018-01-03 12:00:28'),
(30, 38, '', '/public/upload/images/banner/Top_Banner_09.jpg', '', 1, '2018-01-03 13:06:27', '2018-01-03 13:06:27'),
(31, 54, '', '/public/upload/images/banner/Top_Banner-071.jpg', '', 1, '2018-01-03 13:07:12', '2018-01-03 13:07:12'),
(32, 53, '', '/public/upload/images/banner/Top_Banner-071.jpg', '', 1, '2018-01-03 13:07:38', '2018-01-03 13:07:38'),
(33, 48, '', '/public/upload/images/banner/Top_Banner-11.jpg', '', 1, '2018-01-03 13:27:17', '2018-01-03 13:27:17'),
(34, 49, '', '/public/upload/images/banner/banner-tranh-son-dau-1.png', '', 1, '2018-01-03 13:27:49', '2018-01-03 13:27:49'),
(35, 50, '', '/public/upload/images/banner/Top_Banner-11.jpg', '', 1, '2018-01-03 13:28:07', '2018-01-03 13:28:07'),
(36, 51, '', '/public/upload/images/banner/Top_Banner-10.jpg', '', 1, '2018-01-03 13:28:25', '2018-01-03 13:28:25'),
(37, 52, '', '/public/upload/images/banner/Top_Banner_09.jpg', '', 1, '2018-01-03 13:28:39', '2018-01-03 13:28:39'),
(38, 55, '', '/public/upload/images/banner/Top_Banner_09.jpg', '', 1, '2018-01-03 13:29:12', '2018-01-03 13:29:12');

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
(1, '127.0.0.1', 'administrator', '$2a$06$WlemzmFke/8WR4CYUF8AfeJ3spy721g9wbglozzS1wZ/ZEZJLwF6W', '', 'minhsu0602@gmail.com', '', NULL, NULL, NULL, 1268889823, 1514964567, 1, 'Super', 'Admin', 'ADMIN', '2017-09-14', '0936122222', '', NULL, '2017-09-20 21:39:03'),
(19, '127.0.0.1', 'su', '$2y$08$IjV9Q8oWRskVsi4JknT.0uRCjS/4kgPZ8rF7YQ5148Wb7DBBFkAYu', NULL, 'minhsu57@gmail.com', NULL, NULL, NULL, NULL, 1512137861, 1515120092, 1, 'lê minh', 'sự', '', '06/02/1992', '0936777170', 'Trị an, Vĩnh Cửu, Đồng Nai', '', '2017-12-01 21:17:41'),
(20, '127.0.0.1', 'ducvinhart', '$2y$08$ZDxtMSyWgZ5sELEiMkQNfuFKdbCcS0A/0Xf6KSSGZmpTUl55oLPvm', NULL, 'tonhuyen@ducvinhart.com', NULL, NULL, NULL, NULL, 1512138626, 1512139771, 1, 'Mỹ thuật', 'Đức Vinh', 'ducvinhart', '', '123456', NULL, NULL, NULL);

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
(5, 20, 1, '0000-00-00 00:00:00'),
(6, 20, 2, '0000-00-00 00:00:00'),
(7, 19, 1, '0000-00-00 00:00:00');

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
  `footer_content_3` text NOT NULL,
  `home_introduce_image` varchar(255) NOT NULL,
  `home_introduce_content` text NOT NULL,
  `header_bg` varchar(255) NOT NULL,
  `body_bg` varchar(255) NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `website`
--

INSERT INTO `website` (`id`, `language_slug`, `website_name`, `favicon`, `facebook`, `youtube`, `google_plus`, `twitter`, `sidebar`, `phone`, `mobile_phone`, `google_map`, `email`, `admin_email`, `address`, `slogan`, `keyword`, `meta_description`, `visitor`, `footer_content_1`, `footer_content_2`, `footer_content_3`, `home_introduce_image`, `home_introduce_content`, `header_bg`, `body_bg`, `modified_date`) VALUES
('common-info-en', 'en', 'EHOUSE COFFEE', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '', '', '', '0', '', '', '', '0000-00-00 00:00:00'),
('common-info-vi', 'vi', 'ĐứcVinh <b>Art Store</b>', '/public/upload/images/logo/logo-2.png', 'https://www.facebook.com/Tranhquatducvinh/', '#', '#', '#', '<p><strong>VIDEO</strong></p>\r\n\r\n<p><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://www.youtube.com/embed/ejXrGoHFGJQ\"></iframe></p>\r\n\r\n<p><strong>Luyện Nh&oacute;m</strong></p>\r\n\r\n<p><a href=\"/english/luyen-noi-nhom-4-5-ban-cung-100-gvnn\"><img alt=\"\" src=\"/public/upload/images/slider2.jpg\" style=\"width:300px\" /></a></p>\r\n', '0919512920', '', '10.950106, 106.812736', 'ducvinhart77@gmail.com', 'ducvinhart77@gmail.com,minhsu0602@gmail.com', '388/68 Huỳnh Văn Lũy, P. Quang Vinh, TP. Biên Hòa, Đồng Nai', 'Vì mái ấm gia đình bạn', '<p><a href=\"/san-pham/tranh-son-dau\">Tranh sơn dầu</a><a href=\"/san-pham/tranh-quat\">Tranh quạt</a><a href=\"/san-pham/noi-that-son-mai\">Nội thất sơn m&agrave;i</a><a href=\"/san-pham/tranh-son-mai\">Tranh sơn m&agrave;i</a><a href=\"/san-pham/khung-tranh\">Khung tranh</a><a href=\"/san-pham/thu-cong-my-nghe\">Thủ c&ocirc;ng mỹ nghệ</a><a href=\"/san-pham/tranh-phu-dieu\">Tranh ph&ugrave; đi&ecirc;u</a><a href=\"/san-pham/thu-phap-viet\">Thư ph&aacute;p Việt</a></p>\r\n', '', NULL, '<ul>\r\n	<li><a href=\"#\">&gt; Bảng gi&aacute; tranh - khung tranh (Tham khảo)</a></li>\r\n	<li><a href=\"http://ducvinhart/chuyen-de/phuong-thuc-thanh-toan-12\">&gt; Phương thức thanh to&aacute;n - mua h&agrave;ng</a></li>\r\n	<li><a href=\"#\">&gt; Phương thức vận chuyển</a></li>\r\n	<li><a href=\"#\">&gt; Dịch vụ của ch&uacute;ng t&ocirc;i</a></li>\r\n</ul>\r\n', '<ul>\r\n	<li><a href=\"#\">Mỹ thuật Đức Vinh</a></li>\r\n	<li><a href=\"#\">Điện thoại - 0919512920</a></li>\r\n	<li><a href=\"#\">Địa chỉ -&nbsp;</a>388/68 Huỳnh Văn Lũy, P. Quang Vinh, TP. Bi&ecirc;n H&ograve;a, Đồng Nai</li>\r\n</ul>\r\n', '<ul>\r\n	<li><a href=\"#\">Trang chủ</a></li>\r\n	<li><a href=\"product.html\">T</a><a href=\"http://san-pham/tranh-quat\">ranh quạt</a></li>\r\n	<li><a href=\"#\">T</a><a href=\"/san-pham/tranh-son-dau\">ranh sơn dầu</a></li>\r\n	<li><a href=\"/san-pham/tranh-son-mai\">Tranh sơn m&agrave;i</a></li>\r\n	<li><a href=\"#\">Li&ecirc;n hệ</a></li>\r\n</ul>\r\n', '/public/upload/images/introduce-pic.jpg', '<p><strong>Giới thiệu:</strong></p>\r\n\r\n<p><strong>Xem c&aacute;i đẹp v&agrave; nghệ thuật n&acirc;ng tầm gi&aacute; trị sống,</strong><br />\r\n<em>Lu&ocirc;n s&aacute;ng tạo v&agrave; hiện thực &yacute; tưởng của qu&yacute; kh&aacute;ch.</em></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Đức Vinh Art workshop l&agrave; trang trực tuyến chuy&ecirc;n cung cấp sản phẩm v&agrave; dịch vụ về hội hoạ, Sản phẩm thủ c&ocirc;ng, Trang tr&iacute; &ndash; Trưng b&agrave;y. Ngo&agrave;i ra trang c&ograve;n phục vụ Tư vấn &ndash; Thiết kế &ndash; Thi c&ocirc;ng cảnh quan mang đến những dịch vụ đa dạng, phong ph&uacute; nhằm thoả m&atilde;n nhu cầu của qu&yacute; kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; Tầm nh&igrave;n:&nbsp;</strong><em>Nghệ thuật lu&ocirc;n hữu h&igrave;nh v&agrave; v&ocirc; tận &ndash; để mang những t&aacute;c phẩm n&acirc;ng tầm thẩm mĩ, gi&aacute; trị sống cho qu&yacute; kh&aacute;ch</em>. Đức Vinh Art workshop&nbsp; thấu hiểu nhu cầu cần thiết về trang tr&iacute; kh&ocirc;ng gian sống, nơi l&agrave;m việc &ndash; văn ph&ograve;ng kinh doanh. Trang l&agrave; nơi tập hợp, khuyến kh&iacute;ch c&aacute;c bạn hoạt động c&ugrave;ng ng&agrave;nh nghề cộng t&aacute;c, đồng thời l&agrave; đối t&aacute;c ti&ecirc;n phong ở c&aacute;c l&atilde;nh vực văn ho&aacute; nghệ thuật.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; C&aacute;c Sản phẩm v&agrave; Dịch vụ của ch&uacute;ng t&ocirc;i:&nbsp;<em>Tranh Sơn Dầu, Tranh Quạt, Tranh Sơn m&agrave;i, Nội thất sơn m&agrave;i, Tranh ph&ugrave; đi&ecirc;u, Khung tranh, Thủ c&ocirc;ng mỹ nghệ, Thư ph&aacute;p Việt, ...</em></p>\r\n', '/public/upload/images/background/header.png', '/public/upload/images/background/bg_body.jpg', '2018-01-03 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `category_translation`
--
ALTER TABLE `category_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
