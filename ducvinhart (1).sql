-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2017 lúc 05:52 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ducvinhart`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `parent_id` varchar(50) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `status`, `level`, `parent_id`, `image`, `sort_order`) VALUES
(1, 1, 0, '', '', '1'),
(18, 1, 1, '27', '/public/upload/images/son-mai-hien-dai/IMG_20140622_130620.png', '2.1'),
(19, 1, 1, '27', '/public/upload/images/thu-cong-my-nghe/bach-ma.png', '2.6'),
(20, 1, 1, '27', '/public/upload/images/tranh-quat/IMG_0151.png', '2.2'),
(21, 1, 2, '18', '', '2.1.1'),
(27, 1, 0, '', '', '2'),
(28, 1, 0, '', '', '3'),
(29, 1, 1, '27', '/public/upload/images/son-mai-hien-dai/sen1.png', '2.3'),
(30, 1, 1, '27', '/public/upload/images/son-mai-hien-dai/md.png', '2.4'),
(31, 1, 1, '27', '/public/upload/images/thu-cong-my-nghe/IMG_0548.png', '2.5'),
(32, 1, 1, '28', '', '3.1'),
(33, 1, 1, '28', '', '3.2'),
(34, 1, 1, '28', '', '3.3'),
(35, 1, 0, '', '', '4'),
(36, 1, 1, '35', '', '4.1'),
(38, 1, 1, '35', '', '4.2'),
(39, 1, 0, '', '', '5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_translation`
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
-- Đang đổ dữ liệu cho bảng `category_translation`
--

INSERT INTO `category_translation` (`id`, `cate_id`, `lang_slug`, `name`, `name_slug`, `description`, `url_slug`, `meta_keyword`, `meta_description`, `created_date`, `modified_date`) VALUES
(7, 18, 'vi', 'Nội thất sơn mài', 'noi-that-son-mai', NULL, '', 'nội thất', 'nội thất', '2017-11-23 14:01:11', '2017-11-30 00:22:11'),
(8, 19, 'vi', 'Trang trí', 'trang-tri', NULL, '', 'trang trí nội thất', 'trang trí nội thất', '2017-11-23 14:01:26', '2017-11-30 00:24:49'),
(9, 20, 'vi', 'Tranh quạt', 'tranh-quat', NULL, '', 'tranh quạt', 'tranh quạt', '2017-11-23 14:03:00', '2017-11-30 00:23:08'),
(10, 21, 'vi', 'Nội thất nhà bếp', 'noi-that-nha-bep', NULL, '', 'Nội thất nhà bếp', 'Nội thất nhà bếp', '2017-11-23 14:03:21', '2017-11-27 10:49:50'),
(15, 1, 'vi', 'Trang chủ', '', NULL, '', '', '', '2017-11-26 14:49:45', '2017-11-26 20:37:06'),
(16, 27, 'vi', 'Sản Phẩm', '', NULL, '', '', '', '2017-11-26 19:56:19', '2017-11-26 20:26:49'),
(17, 28, 'vi', 'Dịch vụ', 'dich-vu', NULL, '', '', '', '2017-11-26 20:22:59', '2017-11-27 10:50:16'),
(18, 29, 'vi', 'Tranh sơn mài', 'tranh-son-mai', NULL, '', '', '', '2017-11-26 20:40:46', '2017-11-30 00:23:27'),
(19, 30, 'vi', 'Khung tranh', 'khung-tranh', NULL, '', '', '', '2017-11-26 20:41:08', '2017-11-30 00:23:48'),
(20, 31, 'vi', 'Thủ công mỹ nghệ', 'thu-cong-my-nghe', NULL, '', '', '', '2017-11-26 20:41:25', '2017-11-30 00:24:17'),
(21, 32, 'vi', 'Trang trí', '', NULL, '', '', '', '2017-11-26 20:46:01', '2017-11-26 20:46:16'),
(22, 33, 'vi', 'Thiết kế nội thất', 'thiet-ke-noi-that', NULL, '', '', '', '2017-11-26 20:46:39', '2017-11-27 10:50:46'),
(23, 34, 'vi', 'Vẽ tranh', 've-tranh', NULL, '', '', '', '2017-11-26 20:47:01', '2017-11-27 10:50:50'),
(24, 35, 'vi', 'Chuyên đề', 'chuyen-de', NULL, '', '', '', '2017-11-26 20:47:35', '2017-11-27 10:50:54'),
(25, 36, 'vi', 'Nội thất', 'noi-that', NULL, '', '', '', '2017-11-26 20:47:54', '2017-11-27 10:50:58'),
(27, 38, 'vi', 'Tranh ảnh', 'tranh-anh', NULL, '', '', '', '2017-11-26 20:48:15', '2017-11-27 10:51:03'),
(28, 39, 'vi', 'Liên hệ', 'lien-he', NULL, '', '', '', '2017-11-27 10:51:37', '2017-11-27 10:52:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_date`, `modified_date`) VALUES
(1, 'admin', 'administrator', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'members', 'members', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
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
-- Cấu trúc bảng cho bảng `manufacturer`
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
-- Cấu trúc bảng cho bảng `news`
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
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `title`, `short_content`, `content`, `meta_keyword`, `meta_description`, `image`, `lang_slug`, `status`, `created_date`, `modified_date`) VALUES
(3, 34, 'Vẽ Tranh hình cưới', 'Vẽ Tranh hình cưới', '<p>Vẽ Tranh h&igrave;nh cưới</p>\r\n\r\n<p>Vẽ Tranh h&igrave;nh cưới</p>\r\n\r\n<p>Vẽ Tranh h&igrave;nh cướiVẽ Tranh h&igrave;nh cưới</p>\r\n\r\n<p><img alt=\"\" src=\"/public/upload/images/tranh-son-dau-phong-canh.png\" style=\"height:675px; width:1000px\" /></p>', 'asdf ad fasdf asd fasd f', 'asdf asdf asd fasdf ', '/public/upload/images/hinh-cuoi-001.jpg', 'vi', 1, '0000-00-00 00:00:00', '2017-11-29 09:41:05'),
(4, 32, 'Trang trí tiệc cưới', 'Trang trí tiệc cưới', '<p>Trang tr&iacute; tiệc cưới</p>\r\n\r\n<p>&nbsp;</p>', 'Trang trí tiệc cưới', 'Trang trí tiệc cưới', '/public/upload/images/Decoration-600W-x-600Hpx.jpg', 'vi', 1, '0000-00-00 00:00:00', '2017-11-28 08:26:41'),
(5, 36, 'Nội thất sơn mài - Nét mới trong thiết kế nội nhất', 'Nội thất sơn mài - Nét mới trong thiết kế nội nhất thiết kế nội nhất mới trong thiết kế nội nhất thiết kế nội nhất  mới trong thiết kế nội nhất thiết kế nội nhất', '<p>Nội thất sơn m&agrave;i - N&eacute;t mới trong thiết kế nội nhất</p>', '', '', '/public/upload/images/NOI%20THAT%20SON%20MAI/100_0665.png', 'vi', 1, '0000-00-00 00:00:00', '2017-11-30 19:29:12'),
(6, 36, 'ádfasdfasdf', 'asdfasdfas', '<p>dfasdf</p>', '', '', '/public/upload/images/Consulting-design-600W-x-600Hpx.jpg', 'vi', 1, '0000-00-00 00:00:00', '2017-11-28 11:13:57'),
(7, 32, 'Trang trí quán Cafe', 'Chúng tôi cam kết mang đến không gian quán hài lòng theo bản thiết kế cho quý khách', '<p>Dịch vụ trang tr&iacute; qu&aacute;n cafe</p>', 'Dịch vụ trang trí quán cafe', 'Dịch vụ trang trí quán cafe', '/public/upload/images/son-mai-hien-dai/tranh1.png', 'vi', 1, '0000-00-00 00:00:00', '2017-11-28 13:08:43'),
(8, 32, 'Trang khí không gian nhà - văn phòng', 'Những bức ảnh tuyệt đẹp về Sài gòn- Tp. Hồ Chí Minh được chụp cách nhau 50 năm phản ánh rõ nét những đổi thay kỳ diệu của thành phố trong 5 thập kỷ qua.', '<p>Tp. Hồ Ch&iacute; Minh được chụp c&aacute;ch nhau 50 năm phản &aacute;nh r&otilde; n&eacute;t những đổi thay kỳ diệu</p>', 'ádfsadf', 'ádfasdfasdf', '/public/upload/images/tranh-son-mai-phong-khach2.png', 'vi', 1, '2017-11-28 13:16:59', '2017-11-29 09:36:12'),
(9, 38, 'SÀI GÒN 1995 – TP. HCM 2005 NHÌN TỪ TRÊN KHÔNG', 'Sinh năm 1920, Raymond Cauchetier đã đến với nhiếp ảnh ngay tại sài gòn khi đã 32 tuổi. Với một chiếc máy ảnh Rolleiflex, ông ghi lại hình ảnh về cuộc chiến cũng như những hình ảnh về dân tộc Việt nam. Các bức ảnh của ông tạo nên một tiếng vang lớn: một vài bức ảnh trong số đó đã đước ấn hành trên toàn thế giới. Tập ảnh về Sài Gòn của ông đã khiến André Malraux và Graham Green (tác giả của “Người Mỹ Thầm Lặng”) phải trầm trồ thán phục. Và triển lãm lưu động “Chân...', '<p><img alt=\"\" src=\"/public/upload/images/khung-tranh-1.png\" /></p>\r\n\r\n<p>Sinh năm 1920,&nbsp;<strong>Raymond Cauchetier</strong>&nbsp;đ&atilde; đến với nhiếp ảnh ngay tại s&agrave;i g&ograve;n khi đ&atilde; 32 tuổi. Với một chiếc m&aacute;y ảnh Rolleiflex, &ocirc;ng ghi lại h&igrave;nh ảnh về cuộc chiến cũng như những h&igrave;nh ảnh về d&acirc;n tộc Việt nam. C&aacute;c bức ảnh của &ocirc;ng tạo n&ecirc;n một tiếng vang lớn: một v&agrave;i bức ảnh trong số đ&oacute; đ&atilde; đước ấn h&agrave;nh tr&ecirc;n to&agrave;n thế giới. Tập ảnh về S&agrave;i G&ograve;n của &ocirc;ng đ&atilde; khiến Andr&eacute; Malraux v&agrave; Graham Green (t&aacute;c giả của &ldquo;Người Mỹ Thầm Lặng&rdquo;) phải trầm trồ th&aacute;n phục. V&agrave; triển l&atilde;m lưu động &ldquo;Ch&acirc;n dung Việt nam&rdquo; đ&atilde; được giới thiệu ở Mỹ trong nhiều năm kể từ năm 1964.</p>\r\n\r\n<p>Những bức ảnh tuyệt đẹp về S&agrave;i g&ograve;n- Tp. Hồ Ch&iacute; Minh được chụp c&aacute;ch nhau 50 năm phản &aacute;nh r&otilde; n&eacute;t những đổi thay kỳ diệu của th&agrave;nh phố trong 5 thập kỷ qua. Trong khoản thời gian đ&oacute;, s&agrave;i g&ograve;n đ&atilde; trở th&agrave;nh Th&agrave;nh phố Hồ ch&iacute; minh, một đ&ocirc; thị lớn với hơn 8 triệu d&acirc;n. Triển l&atilde;m bao h&agrave;m cả chiều k&iacute;ch kh&ocirc;ng gian v&agrave; thời gian: những bức ảnh đưa ch&uacute;ng ta bay bổng như những c&aacute;nh chim để kh&aacute;m ph&aacute; Th&agrave;nh phố, đồng thời cũng đưa ch&uacute;ng ta v&agrave;o cuộc du h&agrave;nh v&agrave;o giữa những năm 1950 v&agrave; hiện tại.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-8.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-8\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-8.jpg\" /></a></p>\r\n\r\n<p><em>Dinh Thống Nhất</em></p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-1.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-1\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-1.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>C&ocirc;ng trường M&ecirc; Linh, Đường Hai B&agrave; Trưng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-2.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-2\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-2.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>To&agrave;n cảnh cảng S&agrave;i g&ograve;n v&agrave; khu trung t&acirc;m</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-3.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-3\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-3.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>To&agrave;n cảnh TP. HCM, đường Phan Đ&igrave;nhph&ugrave;ng v&agrave; K&ecirc;nh Nhi&ecirc;u Lộc &ndash; Thị Ngh&egrave;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-4.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-4\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-4.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Chợ B&igrave;nh T&acirc;y</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>S&agrave;i g&ograve;n của năm 1955</em></strong>&nbsp;l&agrave; một đ&ocirc; thị tương đối bằng phẳng, trải d&agrave;i theo những con lộ rợp b&oacute;ng c&acirc;y xanh v&agrave; những k&ecirc;nh rạch đầy ấp thuyền b&egrave;. Theo d&ograve;ng thời gian, b&aacute;nh xe lịch sử đ&atilde; tăng tốc , k&eacute;o theo một loạt những biến đổi s&acirc;u sắc ở th&agrave;nh phố n&agrave;y. C&aacute;c n&eacute;t kiến tr&uacute;c đẹp của thời thuộc địa vẫn c&ograve;n được lưu giữ nơi đ&acirc;y nhưng tiến tr&igrave;nh ph&aacute;t triền đ&ocirc; thị ở th&agrave;nh phố đ&atilde; tiến đến một bước ngoặt quan trọng.</p>\r\n\r\n<p><strong><em>Th&agrave;nh phố Hồ Ch&iacute; Minh của năm 2005</em></strong>&nbsp;đ&atilde; vươn m&igrave;nh l&ecirc;n một đ&ocirc; thị lớn, hiện đại với hơn 8 triệu d&acirc;n v&agrave; tiến l&ecirc;n con đường ph&aacute;t triển c&ugrave;ng với đ&agrave; tăng trưởng kinh tế của cả nước. Th&agrave;nh phố hiện đang thay da đổi thịt. Ranh giới Th&agrave;nh phố đang ng&agrave;y c&agrave;ng gi&atilde;n ra với những nh&agrave; cao tầng nối tiếp nhau mọc l&ecirc;n v&agrave; những chiếc cầu mới lần lược kết nối c&aacute;c bờ k&ecirc;nh xanh trong l&ograve;ng th&agrave;nh phố.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-5.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-5\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-5.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Cầu Mống, bến Chương Dương</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-7.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-7\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-7.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Nh&agrave; Thờ Đức b&agrave; (ch&iacute;nh diện), quảng trừơng c&ocirc;ng x&atilde; Paris</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-6.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-6\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-6.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Nh&agrave; Thờ Đức b&agrave; (sau lưng)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-9.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-9\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-9.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Bến Bạch Đằng nh&igrave;n từ xưởng Ba Son</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-10.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-10\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-10.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Bến Bạch Đằng</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-11.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-11\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-11.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Đường Đồng Khởi, Kh&aacute;ch sạn Majestic</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-12.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-12\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-12.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Đại lộ H&agrave;m Nghi</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-13.jpg\"><img alt=\"Sai-gon-xua-nay-(10w-x-10h)cm-13\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Sai-gon-xua-nay-10w-x-10hcm-13.jpg\" style=\"height:475px; width:950px\" /></a></p>\r\n\r\n<p><em>Đại lộ Nguyễn Huệ</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Như vậy, Cuốn s&aacute;ch gi&uacute;p ch&uacute;ng ta thực hiện hai giấc mơ cổ xưa nhất của lo&agrave;i người: l&agrave; bay l&ecirc;n kh&ocirc;ng trung v&agrave; du h&agrave;nh giữa c&aacute;c thời đại. Những bức h&igrave;nh n&agrave;y tự th&acirc;n đ&atilde; khơi gợi rất nhiều &yacute; nghĩa, v&igrave; vậy trong t&ocirc;i chỉ xin t&ocirc;n vinh một người, đ&oacute; l&agrave; &ocirc;ng Raymond Cauchetier, t&aacute;c giả của những bức ảnh chụp trong những năm 1950. &Ocirc;ng l&agrave; một người hết sức t&agrave;i năng v&agrave; hết sức khi&ecirc;m nhường. T&ocirc;i muốn nhấn mạnh rằng vượt l&ecirc;n tr&ecirc;n tr&aacute;ch nhiệm của một t&ugrave;y vi&ecirc;n b&aacute;o ch&iacute; của kh&ocirc;ng qu&acirc;n Ph&aacute;p thời ấy giờ, ch&iacute;nh t&igrave;nh cảm gi&agrave;nh cho đất nước n&agrave;y , cho th&agrave;nh phố n&agrave;y, đ&atilde; th&uacute;c dục &ocirc;ng thực hiện những bức ảnh n&oacute;i tr&ecirc;n.</p>\r\n\r\n<p><em>&nbsp;Theo</em>&nbsp;<strong>Nicolas Warnery</strong></p>', 'SÀI GÒN 1995 – TP. HCM 2005 NHÌN TỪ TRÊN KHÔNG', 'SÀI GÒN 1995 – TP. HCM 2005 NHÌN TỪ TRÊN KHÔNG', '/public/upload/images/14B.jpg', 'vi', 1, '2017-11-29 08:01:19', '2017-11-29 08:53:00'),
(10, 38, 'TRỒNG HOA PHÙ HỢP THIẾT KẾ SÂN VƯỜN', 'Việc thiết kế sân vườn nhằm tạo một không gian xanh cho khuôn viên nhà ở thêm sinh động và hấp dẫn. Để có một khu vườn ấn tượng thì việc thiết kế bố cục, lựa chọn cây trồng, vật liệu sử dụng hay chi tiết trang trí….là những công việc đòi hỏi tính chuyên môn và tối ưu nhất. Vườn là nơi tập trung rất nhiều loại cây, cho nên việc tìm hiểu về đặc tính của mỗi loại cây hoa mà gia đình có ý định trồng là điều quan trọng.', '<p><em>Việc thiết kế s&acirc;n vườn nhằm&nbsp;tạo một kh&ocirc;ng gian xanh cho khu&ocirc;n vi&ecirc;n nh&agrave; ở th&ecirc;m sinh động v&agrave; hấp dẫn. Để c&oacute; một khu vườn ấn tượng th&igrave; việc thiết kế bố cục, lựa chọn c&acirc;y trồng, vật liệu sử dụng hay chi tiết trang tr&iacute;&hellip;.l&agrave; những c&ocirc;ng việc đ&ograve;i hỏi t&iacute;nh chuy&ecirc;n m&ocirc;n v&agrave; tối ưu nhất. Vườn l&agrave; nơi tập trung&nbsp;rất nhiều loại c&acirc;y, cho n&ecirc;n việc t&igrave;m hiểu về đặc t&iacute;nh của mỗi loại c&acirc;y hoa&nbsp;m&agrave; gia đ&igrave;nh c&oacute; &yacute; định trồng l&agrave; điều quan trọng.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_284742593.jpg\"><img alt=\"shutterstock_284742593\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_284742593.jpg\" style=\"height:1181px; width:1772px\" /></a><em>N&ecirc;n trồng c&acirc;y con, c&acirc;y chiết c&agrave;nh từ nguồn giống tốt (H&igrave;nh minh họa hoa Hồng)</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_385689214.jpg\"><img alt=\"shutterstock_385689214\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_385689214.jpg\" style=\"height:787px; width:1181px\" /></a><em>Sau khi c&acirc;y đ&atilde; b&eacute;n rể, nh&aacute;nh tốt, ra hoa. Bạn n&ecirc;n cắt tỉa v&agrave; b&oacute;n ph&acirc;n.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Backyard-Landscape-Design.png\"><img alt=\"Backyard-Landscape-Design\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/Backyard-Landscape-Design.png\" style=\"height:833px; width:1250px\" /></a><em>Khu vườn được thiết kế với bố cục h&agrave;i h&ograve;a, mang n&eacute;t c&aacute; t&iacute;nh từ gia chủ</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_288055646.jpg\"><img alt=\"shutterstock_288055646\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_288055646.jpg\" style=\"height:1177px; width:1772px\" /></a><em>Khu vườn được thiết kế với c&acirc;y trồng ch&iacute;nh l&agrave; hồng leo</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_175322960.jpg\"><img alt=\"shutterstock_175322960\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_175322960.jpg\" style=\"height:1181px; width:1772px\" /></a><em>Bắp cải T&iacute;m được d&ugrave;ng l&agrave;m loại c&acirc;y chủ đạo, trang tr&iacute; khu vườn</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hầu hết bất cứ loại c&acirc;y n&agrave;o cũng c&oacute; thể trồng được trong chậu. Cần chọn chậu c&acirc;y trồng v&agrave; c&oacute; c&aacute;ch trồng c&acirc;y hoa cảnh v&agrave;o chậu đ&uacute;ng c&aacute;ch. T&ugrave;y theo từng m&ugrave;a v&agrave; thời điểm v&agrave; kiểu s&acirc;n vườn m&agrave; ch&uacute;ng ta c&oacute; những loại &nbsp;hoa&nbsp;chậu kh&aacute;c nhau.</p>\r\n\r\n<p><strong>S&acirc;n vườn thiết kế theo phong c&aacute;ch sang trọng</strong>.&nbsp;N&ecirc;n chọn những loại hoa c&oacute; m&agrave;u sắc tao nh&atilde;, đơn sắc v&agrave; nh&atilde; nhặn. Đ&oacute; l&agrave; một chậu lan hồ điệp , l&agrave; một bụi cẩm t&uacute; cầu sang trọng trong g&oacute;c vườn, hay đơn giản l&agrave; những chậu trầu b&agrave; treo lủng lẳng dọc lối đi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_185401610.jpg\"><img alt=\"shutterstock_185401610\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_185401610.jpg\" style=\"height:784px; width:1181px\" /></a><em>Hoa Cẩm t&uacute; cầu đa dạng m&agrave;u sắc</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_424408552.jpg\"><img alt=\"shutterstock_424408552\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_424408552.jpg\" style=\"height:789px; width:1181px\" /></a></p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>S&acirc;n vườn c&oacute; diện t&iacute;ch hẹp</strong>: trồng hoa chậu treo l&agrave; một lựa chọn th&ocirc;ng minh v&agrave; độc đ&aacute;o. ch&uacute;ng gi&uacute;p tận dụng tối đa&nbsp;diện t&iacute;ch b&ecirc;n dưới. Đồng thời, n&ecirc;n hạn chế c&acirc;y ph&aacute;t triển nhanh v&agrave; nhảy nh&aacute;nh nhanh như hoa chuối mỏ k&eacute;t, c&acirc;y hoa chuối ph&aacute;o, c&acirc;y chuối hoa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_353945105.jpg\"><img alt=\"shutterstock_353945105\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_353945105.jpg\" style=\"height:787px; width:1181px\" /></a><em>Hoa chuối mỏ k&eacute;t</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_190776695.jpg\"><img alt=\"shutterstock_190776695\" src=\"http://thongsgallery.vn/wp-content/uploads/2016/06/shutterstock_190776695.jpg\" style=\"height:1772px; width:1181px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, chiều cao v&agrave; k&iacute;ch cỡ, m&agrave;u sắc&nbsp;của hoa trong tiểu cảnh cũng được ch&uacute; trọng. C&acirc;y cao n&ecirc;n đặt ph&iacute;a trong c&ugrave;ng,những c&acirc;y chịu b&oacute;ng sẽ được trồng xen kẽ với c&acirc;y c&oacute; t&aacute;n rộng. M&agrave;u sắc của c&aacute;c loại hoa được phối hợp so cho h&agrave;i ho&agrave; v&agrave; hợp l&iacute; nhất trong bức&nbsp;tranh s&acirc;n vườn tổng thể.</p>\r\n\r\n<p><em>Nguồn:&nbsp;<strong><a href=\"https://www.facebook.com/nongtraivuive.funnyfarm/\" target=\"_blank\">Nongtraivuive_funnyfarm</a></strong></em></p>', 'TRỒNG HOA PHÙ HỢP THIẾT KẾ SÂN VƯỜN', 'TRỒNG HOA PHÙ HỢP THIẾT KẾ SÂN VƯỜN', '/public/upload/images/shutterstock_237573535.jpg', 'vi', 1, '2017-11-29 09:24:32', '2017-11-29 09:24:32'),
(11, 38, 'BỘ ẢNH TÁI HIỆN 100 NĂM LỊCH SỬ ĐÁM CƯỚI VIỆT NAM', 'Chủ nhân của bộ ảnh cưới này là chú rể Thế Trưởng, 28 tuổi, kinh doanh nhà hàng – khách sạn và cô dâu Quỳnh Anh, 25 tuổi, chủ một thương hiệu váy cưới ở Hà Nội. Vì yêu mến những thứ hoài cổ và luôn được lịch sử Việt Nam truyền cảm hứng, cặp đôi đã cho ra đời album ảnh cưới độc đáo. Bộ ảnh như một bản tổng kết sự phát triển trong phong tục, tập quán cưới hỏi, gu thẩm mỹ,', '<p>C&ocirc; d&acirc;u ch&uacute; rể t&igrave;m kiếm trang phục, bối cảnh để t&aacute;i hiện những dấu ấn văn ho&aacute; từ giai đoạn trước năm 1945.</p>\r\n\r\n<p>Chủ nh&acirc;n của bộ ảnh cưới n&agrave;y l&agrave; ch&uacute; rể Thế Trưởng, 28 tuổi, kinh doanh nh&agrave; h&agrave;ng &ndash; kh&aacute;ch sạn v&agrave; c&ocirc; d&acirc;u Quỳnh Anh, 25 tuổi, chủ một thương hiệu v&aacute;y cưới ở H&agrave; Nội. V&igrave; y&ecirc;u mến những thứ ho&agrave;i cổ v&agrave; lu&ocirc;n được lịch sử Việt Nam truyền cảm hứng, cặp đ&ocirc;i đ&atilde; cho ra đời album ảnh cưới độc đ&aacute;o. Bộ ảnh như một bản tổng kết sự ph&aacute;t triển trong phong tục, tập qu&aacute;n cưới hỏi, gu thẩm mỹ, trang phục cưới của người Việt từ xưa đến nay. Bộ ảnh cũng khắc hoạ c&aacute;c dấu mốc lịch sử c&ugrave;ng sự thay đổi, ph&aacute;t triển của thời đại v&agrave; x&atilde; hội.</p>\r\n\r\n<p>N&oacute;i về bộ ảnh đang khiến cộng đồng mạng truyền tay nhau n&agrave;y, cặp đ&ocirc;i cho biết ban đầu họ kh&ocirc;ng c&oacute; &yacute; định chụp ảnh cưới. Tuy nhi&ecirc;n, sau khi b&agrave;n bạc với bạn b&egrave; đồng nghiệp, cả &ecirc;kip đ&atilde; quyết định cho ra đời một dự &aacute;n t&acirc;m huyết, t&aacute;i hiện những dấu ấn văn ho&aacute; từ giai đoạn trước năm 1945.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/1.jpg\"><img alt=\"1\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/1.jpg\" style=\"height:629px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng dừng lại ở việc lưu giữ những khoảnh khắc đẹp của c&ocirc; d&acirc;u, ch&uacute; rể, bộ ảnh c&ograve;n l&agrave; cuốn phim t&agrave;i liệu mang đến cho mọi người c&aacute;i nh&igrave;n to&agrave;n diện, cụ thể hơn về c&aacute;c phong tục cưới qua từng thời kỳ.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/2.jpg\"><img alt=\"2\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/2.jpg\" style=\"height:657px; width:668px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để truyền tải hết c&aacute;c th&ocirc;ng điệp, &yacute; tưởng của c&ocirc; d&acirc;u, ch&uacute; rể, điều quan trọng nhất l&agrave; sự đầu tư đến từng chi tiết nhỏ. Từ trang phục, bối cảnh, c&aacute;ch trang điểm, tạo d&aacute;ng&hellip; đều to&aacute;t l&ecirc;n vẻ ch&acirc;n thực v&agrave; ấm c&uacute;ng.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/3.jpg\"><img alt=\"3\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/3.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/4.jpg\"><img alt=\"4\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/4.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đối với c&ocirc; d&acirc;u Nguyễn Quỳnh Anh, những thứ ho&agrave;i cổ lu&ocirc;n l&agrave; nguồn cảm hứng bất tận. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; sự ủng hộ của bạn b&egrave;, đồng nghiệp, 9X đ&atilde; l&ecirc;n &yacute; tưởng tạo một bộ ảnh cưới khiến &ocirc;ng b&agrave;, cha mẹ cảm thấy th&acirc;n thuộc, những người trẻ cũng hứng th&uacute;.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/5.jpg\"><img alt=\"5\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/5.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Để ho&agrave;n th&agrave;nh t&aacute;c phẩm n&agrave;y, cả c&ocirc; d&acirc;u, ch&uacute; rể v&agrave; &ecirc;-k&iacute;p phải d&agrave;nh ra hơn 3 tuần nghi&ecirc;n cứu lịch sử để c&oacute; h&igrave;nh dung ch&iacute;nh x&aacute;c với từng giai đoạn. Th&ecirc;m v&agrave;o đ&oacute;, họ cũng tham khảo c&aacute;c nguồn kiến thức kh&aacute;c, c&ugrave;ng lời kể từ &ocirc;ng b&agrave;, cha mẹ.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/7.jpg\"><img alt=\"7\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/7.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>Thời gian chụp bộ ảnh l&agrave; 3 ng&agrave;y, ở c&aacute;c địa điểm như biển Hải H&ograve;a, Thanh H&oacute;a, Đường L&acirc;m v&agrave; loanh quanh H&agrave; Nội. Quỳnh Anh tiết lộ bộ ảnh chỉ l&agrave; một bắt đầu cho chuỗi c&aacute;c hoạt động th&uacute; vị li&ecirc;n quan đến đ&aacute;m cưới. Đặc biệt, video cưới sẽ &ldquo;rất hay ho&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/9.jpg\"><img alt=\"9\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/9.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>Từ bối cảnh, trang phục, c&aacute;ch trang điểm, tạo d&aacute;ng&hellip; đều mang đặc trưng của phong c&aacute;ch thời kỳ đổi mới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/10.jpg\"><img alt=\"10\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/10.jpg\" style=\"height:819px; width:640px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giai đoạn hội nhập v&agrave; ph&aacute;t triển, biểu cảm của c&ocirc; d&acirc;u, ch&uacute; rể cũng c&oacute; phần tươi tắn hơn.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/11.jpg\"><img alt=\"11\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/11.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Từng bức ảnh đều được đầu tư chỉn chu v&agrave; tỉ mỉ.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/12.jpg\"><img alt=\"12\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/12.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Th&ocirc;ng qua 8 cột mốc, bộ ảnh&nbsp;<em>100 năm đ&aacute;m cưới Việt Nam</em>&nbsp;đ&atilde; t&aacute;i hiện ch&acirc;n thực v&agrave; kh&eacute;o l&eacute;o phong c&aacute;ch đ&aacute;m cưới từ thời &ldquo;&ocirc;ng b&agrave; anh&rdquo; cho đến hiện tại. Việc l&agrave;m mới &yacute; tưởng c&oacute; vẻ đ&atilde; cũ của đ&ocirc;i trẻ khiến d&acirc;n mạng th&iacute;ch th&uacute;.</p>\r\n\r\n<p><a href=\"http://thongsgallery.vn/wp-content/uploads/2017/06/13.jpg\"><img alt=\"13\" src=\"http://thongsgallery.vn/wp-content/uploads/2017/06/13.jpg\" style=\"height:640px; width:960px\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo:&nbsp;<strong><em>Minh Minh-Ng&ocirc;i sao.net</em></strong></p>\r\n\r\n<p>Bộ ảnh được thực hiện bởi The Planners | Photographer: Cabo | Chuy&ecirc;n gia trang điểm:&nbsp;Nguyễn Ho&agrave; An.</p>', 'BỘ ẢNH TÁI HIỆN 100 NĂM LỊCH SỬ ĐÁM CƯỚI VIỆT NAM - Đức Vinh art', 'BỘ ẢNH TÁI HIỆN 100 NĂM LỊCH SỬ ĐÁM CƯỚI VIỆT NAM - Đức Vinh art', '/public/upload/images/chuyen-de/bo-anh-cuoi-xua.jpg', 'vi', 1, '2017-11-29 23:44:37', '2017-11-29 23:44:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page_content`
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
-- Cấu trúc bảng cho bảng `payment`
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

--
-- Đang đổ dữ liệu cho bảng `payment`
--

INSERT INTO `payment` (`id`, `name`, `address`, `phone`, `email`, `note`, `created_date`, `modified_date`) VALUES
(4, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:42:04', '0000-00-00 00:00:00'),
(5, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:42:13', '0000-00-00 00:00:00'),
(6, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:42:22', '0000-00-00 00:00:00'),
(7, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:43:02', '0000-00-00 00:00:00'),
(8, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:44:48', '0000-00-00 00:00:00'),
(9, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:44:51', '0000-00-00 00:00:00'),
(10, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:45:14', '0000-00-00 00:00:00'),
(11, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:45:30', '0000-00-00 00:00:00'),
(12, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:45:31', '0000-00-00 00:00:00'),
(13, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:46:26', '0000-00-00 00:00:00'),
(14, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:48:02', '0000-00-00 00:00:00'),
(15, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:48:04', '0000-00-00 00:00:00'),
(16, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:48:12', '0000-00-00 00:00:00'),
(17, 'Sfsadfasfd', 'ádfasdf', 123123123, 'asadfasdf@gmail.com', NULL, '2017-11-30 22:48:25', '0000-00-00 00:00:00'),
(18, 'ádfasdf', 'ádfasdf', 123123123, 'minhsu57@gmail.com', NULL, '2017-11-30 22:58:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_detail`
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
-- Đang đổ dữ liệu cho bảng `payment_detail`
--

INSERT INTO `payment_detail` (`id`, `payment_id`, `product_id`, `quantity`, `price`, `discount`, `created_date`, `modified_date`) VALUES
(1, 7, 14, 2, 300000, '', '2017-11-30 22:43:02', '2017-11-30 22:43:02'),
(2, 7, 13, 1, 1500000, '', '2017-11-30 22:43:02', '2017-11-30 22:43:02'),
(3, 18, 8, 1, 123123, '', '2017-11-30 22:58:00', '2017-11-30 22:58:00'),
(4, 18, 13, 2, 1500000, '', '2017-11-30 22:58:00', '2017-11-30 22:58:00'),
(5, 18, 12, 1, 1200000, '', '2017-11-30 22:58:01', '2017-11-30 22:58:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
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
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `model_id`, `status`, `sort_order`, `quantity`, `dimensions`, `length_class`, `weight`, `weight_class`, `manufacturer_id`, `cate_id`, `image`, `price`, `rating`, `created_date`, `modified_date`) VALUES
(8, '12123a', 1, 0, 0, '12312313', '', '123123123', 0, NULL, 20, '/public/upload/images/tranh-quat/IMG_005.png', '123123', 0, '2017-11-25 23:42:00', '2017-11-27 11:24:11'),
(12, 'ho01101', 1, 0, 0, '1x2x3', '', '100g', 0, NULL, 20, '/public/upload/images/tranh-quat/ho.png', '1200000', 0, '2017-11-27 10:48:38', '2017-11-27 11:28:16'),
(13, 'DUCME001', 1, 0, 0, '10x22x2', '', '100g', 0, NULL, 20, '/public/upload/images/tranh-quat/duc%20me02.png', '1500000', 0, '2017-11-27 13:09:18', '2017-11-27 13:11:45'),
(14, 'SM001', 1, 0, 0, '10x2x2', '', '', 0, NULL, 20, '/public/upload/images/tranh-quat/IMG1.png', '300000', 0, '2017-11-29 23:30:17', '2017-11-29 23:30:17'),
(15, 'tcmn001', 1, 0, 0, '0', '', '0', 0, NULL, 18, '/public/upload/images/thu-cong-my-nghe/bach-ma.png', '0', 0, '2017-11-30 18:49:42', '2017-11-30 20:25:34'),
(16, 'tcmn002', 1, 0, 0, '0', '', '0', 0, NULL, 18, '/public/upload/images/thu-cong-my-nghe/hoa-hong.png', '0', 0, '2017-11-30 18:50:30', '2017-11-30 20:25:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `sort_order` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`) VALUES
(62, 8, '/public/upload/images/scan0002.jpg', ''),
(63, 12, '/public/upload/images/tranh-quat/ho.png', ''),
(64, 14, '/public/upload/images/tranh-quat/IMG1.png', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_translation`
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
-- Đang đổ dữ liệu cho bảng `product_translation`
--

INSERT INTO `product_translation` (`id`, `product_id`, `lang_slug`, `name`, `description`, `detail`, `material`, `color`, `trademark`, `meta_keyword`, `meta_description`, `created_date`, `modified_date`) VALUES
(6, 8, 'vi', 'quạt màu vàng', 'asf', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'đá', 'xám nhạt kết hợp xanh ngọc', 'Đức Vinh Art', '123123', '1asdfasdfasdf', '2017-11-25 23:42:00', '2017-11-27 11:24:11'),
(10, 12, 'vi', 'Quạt hình hổ', 'Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm\r\nAssembly Type: Pre Assembled\r\nMaterial: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On ', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'Giấy, Tre', 'Xanh nõn chuối', 'Đức Vinh Art', '', '', '2017-11-27 10:48:39', '2017-11-27 11:28:16'),
(11, 13, 'vi', 'Quạt hình Đức Mẹ', 'Được vẽ từng chi tiết bằng sơn mài, tranh quạt tạo ra sự khác biệt giữa các loại quạt bình thường được vẽ bằng các công nghệ vi tính', '<ul>\r\n	<li>Dimensions: 3 Seater: Length 208 x Width 81 x Height 91.5 cm and 1 Seater: Length 99 x Width 81 x Height 91.5 cm</li>\r\n	<li>Assembly Type: Pre Assembled</li>\r\n	<li>Material: Wooden Structure, Chemical Treated And Seasoned Wood, 19 mm and 12 mm Commercial Ply and Mdf Used On Visible Parts</li>\r\n	<li>Looks amazing in a contemporary setting</li>\r\n	<li>Colour: Brown Jute, Sheron Brown</li>\r\n	<li>Type: Spencer 3 plus 1 plus 1 Sofa Set With 5 Big Cushions and 6 Small Cushions, Wooden Handle</li>\r\n	<li>Long lasting, durable and easy to use product</li>\r\n	<li>Contents: 3 Pc</li>\r\n	<li>Delivery Time: 7 to 10 days from the Day of Dispatch</li>\r\n	<li>Very classy and contemporary design</li>\r\n	<li>SUPC: SHG21458689652</li>\r\n	<li>Material: High Density Foam and Fabric</li>\r\n</ul>\r\n', 'Giấy', 'xanh', 'Đức Vinh Art', '', '', '2017-11-27 13:09:18', '2017-11-27 13:11:45'),
(12, 14, 'vi', 'Quạt sơn mài', '', '', 'gỗ', 'vàng', 'Đức Vinh Art', '', '', '2017-11-29 23:30:17', '2017-11-29 23:30:17'),
(13, 15, 'vi', 'Thủ công mỹ nghệ 001', '', '', 'Gỗ', '', 'Đức Vinh Art', '', '', '2017-11-30 18:49:42', '2017-11-30 20:25:34'),
(14, 16, 'vi', 'Thủ công mỹ nghệ 002', '', '', 'Gỗ', 'Xám', 'Đức Vinh Art', '', '', '2017-11-30 18:50:30', '2017-11-30 20:25:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
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
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `cate_id`, `name`, `image_url`, `link`, `status`, `created_date`, `modified_date`) VALUES
(4, 1, '', '/public/upload/images/slider1.jpg', '', 1, '2017-11-27 08:56:24', '2017-11-27 08:56:24'),
(5, 1, '', '/public/upload/images/tranh-quat-banner.png', '', 1, '2017-11-27 08:56:53', '2017-11-27 08:56:53'),
(6, 18, '', '/public/upload/images/slider2.jpg', '', 1, '2017-11-27 08:57:28', '2017-11-29 21:14:51'),
(7, 20, '', '/public/upload/images/tranh-quat-banner.png', '', 1, '2017-11-27 10:56:26', '2017-11-27 10:56:26'),
(8, 39, '', '/public/upload/images/tranh-son-mai-banner.png', '', 1, '2017-11-27 13:42:25', '2017-11-27 13:42:25'),
(9, 34, '', '/public/upload/images/tranh-quat-banner.png', '', 1, '2017-11-28 08:20:38', '2017-11-28 08:20:38'),
(10, 36, '', '/public/upload/images/slider2.jpg', '', 1, '2017-11-28 10:57:28', '2017-11-28 10:57:28'),
(11, 32, '', '/public/upload/images/hinh-cuoi-001.jpg', 'aaaaaaa', 1, '2017-11-29 09:35:16', '2017-11-29 21:18:52'),
(12, 21, '', '/public/upload/images/14B.jpg', '', 1, '2017-11-29 22:07:44', '2017-11-29 22:07:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
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
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `birth_day`, `phone`, `address`, `profile`, `modified_date`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$06$WlemzmFke/8WR4CYUF8AfeJ3spy721g9wbglozzS1wZ/ZEZJLwF6W', '', 'minhsu0602@gmail.com', '', NULL, NULL, NULL, 1268889823, 1511330952, 1, 'Sự', 'Lê Minh', 'ADMIN', '2017-09-14', '0936122222', '', NULL, '2017-09-20 21:39:03'),
(2, '172.21.6.196', 'minhsu', '$2y$08$HmSap9ZOGJzYUplFSkAyWO9bBlx3AmCBNKrByCdBJv656GQOH4j9q', NULL, 'minhsu57@gmail.com', NULL, NULL, NULL, 'o3tHI3CsDO6lTLrW.dfv3e', 1490858515, 1512053574, 1, 'Sự', 'Lê', NULL, '06/02/1992', '01677035176', 'đồng tháp 11', NULL, '2017-09-20 09:03:17'),
(16, '::1', 'suSu', '$2y$08$tgBbtbmxeZTCF86A9mTIv.hy6ZLnWT35weBEAW/sCPx7iTCIU7mnu', NULL, 'susu@gmail.com', NULL, NULL, NULL, NULL, 1505876099, 1505876110, 1, 'Lê nguyễn văn bé', 'gà', NULL, '', '12312', '', NULL, '2017-09-20 11:28:49'),
(17, '::1', 'minhminh', '$2y$08$09WaiQeoZj84mSBllneBk.t85ImIFJ22GOFZxIHooM0Xc1eFxhzk2', NULL, 'minhminh@gmail.com', NULL, NULL, NULL, NULL, 1505878488, 1506042990, 1, 'minh', 'minh', NULL, '15/09/2017', '123123', 'trị an', '<p>hihi</p>\r\n', '2017-09-21 15:27:20'),
(18, '::1', 'vanloi', '$2y$08$uqYwXM65Y1k2nYOsyPRoQul.k5topd2i2.k2SCQw.aMYtsyCgFs56', NULL, 'vanloi@gmail.co', NULL, NULL, NULL, NULL, 1505982486, 1506158246, 0, 'lợi', 'văn', NULL, '22/09/1989', '098756483489', 'dak lak', '<p>Lợi đẹp trai</p>\r\n', '2017-09-21 15:28:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`, `created_date`) VALUES
(1, 1, 1, '2017-11-22 00:00:00'),
(2, 2, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `website`
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
-- Đang đổ dữ liệu cho bảng `website`
--

INSERT INTO `website` (`id`, `language_slug`, `website_name`, `favicon`, `facebook`, `youtube`, `google_plus`, `twitter`, `sidebar`, `phone`, `mobile_phone`, `google_map`, `email`, `admin_email`, `address`, `slogan`, `keyword`, `meta_description`, `visitor`, `footer_content_1`, `footer_content_2`, `modified_date`) VALUES
('common-info-en', 'en', 'EHOUSE COFFEE', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, '', '', '0000-00-00 00:00:00'),
('common-info-vi', 'vi', 'Đức Vinh Art Workshop', '/public/upload/images/logo/logo.png', 'https://www.facebook.com/mythuatducvinh', '#', '#', '#', '<p><strong>VIDEO</strong></p>\r\n\r\n<p><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://www.youtube.com/embed/ejXrGoHFGJQ\"></iframe></p>\r\n\r\n<p><strong>Luyện Nh&oacute;m</strong></p>\r\n\r\n<p><a href=\"/english/luyen-noi-nhom-4-5-ban-cung-100-gvnn\"><img alt=\"\" src=\"/public/upload/images/slider2.jpg\" style=\"width:300px\" /></a></p>\r\n', ' 028 3939 0811 - 0906 911 022', '', '10.789931, 106.693402', 'ducvinhart@gmail.com', 'minhsu57@gmail.com,minhsu0602@gmail.com', 'Số 123, Trung Dũng, Biên Hòa, Đồng Nai', 'vì mái ấm gia đình bạn', 'Tranh quạt, Nội thất sơn mài, Tranh sơn mài, Khung tranh, Thủ công mỹ nghệ, Trang trí', '', NULL, '<ul>\r\n	<li><a href=\"#\">Mỹ thuật Đức Vinh</a></li>\r\n	<li><a href=\"#\">Điện thoại - 0936 777 170</a></li>\r\n	<li><a href=\"#\">Địa chỉ -&nbsp;</a>Trung Dũng, Bi&ecirc;n H&ograve;a, Đồng Nai</li>\r\n</ul>\r\n', '<ul>\r\n	<li><a href=\"#\">Trang chủ</a></li>\r\n	<li><a href=\"product.html\">T</a><a href=\"http://san-pham/tranh-quat\">ranh quạt</a></li>\r\n	<li><a href=\"#\">Chuy&ecirc;n đề</a></li>\r\n	<li><a href=\"#\">Li&ecirc;n hệ</a></li>\r\n</ul>\r\n', '2017-11-30 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_translation`
--
ALTER TABLE `category_translation`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_detail`
--
ALTER TABLE `payment_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_translation`
--
ALTER TABLE `product_translation`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `website`
--
ALTER TABLE `website`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT cho bảng `category_translation`
--
ALTER TABLE `category_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT cho bảng `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `payment_detail`
--
ALTER TABLE `payment_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT cho bảng `product_translation`
--
ALTER TABLE `product_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
