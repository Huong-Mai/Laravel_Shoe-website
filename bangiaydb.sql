-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2020 lúc 07:50 AM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bangiaydb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(15, 'ADIDAS', 'adidas', 1, '2019-12-11 08:10:48', '2019-12-11 08:10:48'),
(16, 'NIKE', 'nike', 1, '2019-12-11 08:12:01', '2019-12-11 08:12:01'),
(17, 'LACOSTE', 'lacoste', 1, '2019-12-11 08:12:55', '2019-12-11 08:12:55'),
(18, 'ASICS', 'asics', 1, '2019-12-11 08:13:40', '2019-12-11 08:13:40'),
(19, 'PUMA', 'puma', 1, '2019-12-11 08:15:01', '2019-12-11 08:15:01'),
(20, 'GIÀY THỂ THAO', 'giay-the-thao', 1, '2019-12-11 08:17:27', '2019-12-14 09:48:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `idUser` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `idUser`, `email`, `address`, `phone`, `active`, `created_at`, `updated_at`) VALUES
(1, 1, 'hvtrung241298@gmail.com', 'Quế Lâm - Nông Sơn -Quảng Nam', '0332755831', 0, '2019-12-23 06:51:28', '2019-12-23 06:52:01'),
(2, 1, 'hvtrung241298@gmail.com', 'quang nam', '034577667', 1, '2019-12-23 06:52:01', '2019-12-23 06:52:01'),
(3, 3, 'chien@gmail.com', 'Quảng Trị', '012345678', 1, '2019-12-23 07:01:28', '2019-12-23 07:01:28'),
(4, 2, 'trungho098@gmail.com', 'quang nam', '332755831', 1, '2019-12-23 09:39:28', '2019-12-23 09:39:28'),
(5, 5, 'hvtrung.18it4@sict.udn.vn', 'eeee', '0332755831', 1, '2019-12-23 09:50:12', '2019-12-23 09:50:12'),
(6, 8, 'admin@gmail.com', 'Đà nẵng', '123456', 1, '2019-12-27 01:11:26', '2019-12-27 01:11:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_11_10_030204_create_categories_table', 1),
(3, '2019_11_10_030525_create_products_table', 1),
(4, '2019_11_10_030608_create_orders_table', 1),
(5, '2019_11_10_030657_create_order_details_table', 1),
(6, '2019_11_10_030729_create_contacts_table', 1),
(7, '2019_11_10_031015_create_customers_table', 1),
(8, '2019_11_10_041316_create_users_table', 1),
(9, '2019_11_10_041405_create_product_type_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `id` int(10) UNSIGNED NOT NULL,
  `code_order` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idUser` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monney` float NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`id`, `code_order`, `idUser`, `name`, `address`, `email`, `phone`, `monney`, `message`, `status`, `created_at`, `updated_at`) VALUES
(9, 'order1407267997', 1, 'Hồ Văn Trung', 'quang nam', 'hvtrung241298@gmail.com', '034577667', 3000000, 'cảm ơn shop', 0, '2019-12-23 08:23:45', '2019-12-23 08:23:45'),
(10, 'order304489549', 1, 'Hồ Văn Trung', 'quang nam', 'hvtrung241298@gmail.com', '034577667', 4780000, 'gfgfgdf', 0, '2019-12-23 08:24:59', '2019-12-23 08:24:59'),
(11, 'order466245993', 1, 'Hồ Văn Trung', 'quang nam', 'hvtrung241298@gmail.com', '034577667', 1800000, NULL, 0, '2019-12-23 09:13:26', '2019-12-23 09:13:26'),
(12, 'order2095334158', 1, 'Hồ Văn Trung', 'quang nam', 'hvtrung241298@gmail.com', '034577667', 1800000, 'cc', 0, '2019-12-23 09:15:24', '2019-12-23 09:15:24'),
(13, 'order125546418', 1, 'Hồ Văn Trung', 'quang nam', 'hvtrung241298@gmail.com', '034577667', 1800000, 'cc', 0, '2019-12-23 09:16:29', '2019-12-23 09:16:29'),
(14, 'order581861874', 1, 'Hồ Văn Trung', 'quang nam', 'hvtrung241298@gmail.com', '034577667', 1800000, 'aa', 0, '2019-12-23 09:23:49', '2019-12-23 09:23:49'),
(15, 'order685804162', 2, 'Hồ Văn Trung1', 'quang nam', 'trungho098@gmail.com', '332755831', 4780000, NULL, 0, '2019-12-23 09:39:38', '2019-12-23 09:39:38'),
(16, 'order8704167', 2, 'Hồ Văn Trung1', 'quang nam', 'trungho098@gmail.com', '332755831', 4780000, NULL, 0, '2019-12-23 09:39:50', '2019-12-23 09:39:50'),
(17, 'order1691250098', 2, 'Hồ Văn Trung1', 'quang nam', 'trungho098@gmail.com', '332755831', 4780000, NULL, 0, '2019-12-23 09:45:18', '2019-12-23 09:45:18'),
(18, 'order731279647', 5, 'Hồ Văn Tá', 'eeee', 'hvtrung.18it4@sict.udn.vn', '0332755831', 1800000, 'aa', 0, '2019-12-23 09:50:25', '2019-12-23 09:50:25'),
(19, 'order100889049', 5, 'Hồ Văn Tá', 'eeee', 'hvtrung.18it4@sict.udn.vn', '0332755831', 1520000, 'dđ', 0, '2019-12-23 09:55:12', '2019-12-23 09:55:12'),
(20, 'order777610165', 2, 'Hồ Văn Trung1', 'quang nam', 'trungho098@gmail.com', '332755831', 4500000, 'eeeeeeee', 0, '2019-12-23 10:02:59', '2019-12-23 10:02:59'),
(21, 'order1033281886', 5, 'Hồ Văn Tá', 'eeee', 'hvtrung.18it4@sict.udn.vn', '0332755831', 1800000, 'gggg', 0, '2019-12-23 10:07:11', '2019-12-23 10:07:11'),
(22, 'order519715916', 5, 'Hồ Văn Tá', 'eeee', 'hvtrung.18it4@sict.udn.vn', '0332755831', 20000, NULL, 0, '2019-12-23 10:11:21', '2019-12-23 10:11:21'),
(23, 'order1916567477', 5, 'Hồ Văn Tá', 'eeee', 'hvtrung.18it4@sict.udn.vn', '0332755831', 20000, NULL, 0, '2019-12-23 10:12:13', '2019-12-23 10:12:13'),
(24, 'order1368884658', 8, 'admin', 'Đà nẵng', 'admin@gmail.com', '123456', 3000000, NULL, 0, '2019-12-27 01:19:57', '2019-12-27 01:19:57'),
(25, 'order1707393793', 8, 'admin', 'Đà nẵng', 'admin@gmail.com', '123456', 3000000, NULL, 0, '2019-12-27 01:19:59', '2019-12-27 01:19:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderdetail`
--

CREATE TABLE `orderdetail` (
  `id` int(10) UNSIGNED NOT NULL,
  `idOrder` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderdetail`
--

INSERT INTO `orderdetail` (`id`, `idOrder`, `idProduct`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(7, 9, 60, 1, 2980000, '2019-12-23 08:23:45', '2019-12-23 08:23:45'),
(8, 10, 60, 1, 2980000, '2019-12-23 08:24:59', '2019-12-23 08:24:59'),
(9, 10, 59, 1, 1780000, '2019-12-23 08:24:59', '2019-12-23 08:24:59'),
(10, 11, 59, 1, 1780000, '2019-12-23 09:13:26', '2019-12-23 09:13:26'),
(11, 12, 59, 1, 1780000, '2019-12-23 09:15:24', '2019-12-23 09:15:24'),
(12, 13, 59, 1, 1780000, '2019-12-23 09:16:29', '2019-12-23 09:16:29'),
(13, 14, 59, 1, 1780000, '2019-12-23 09:23:49', '2019-12-23 09:23:49'),
(14, 15, 59, 1, 1780000, '2019-12-23 09:39:38', '2019-12-23 09:39:38'),
(15, 15, 60, 1, 2980000, '2019-12-23 09:39:38', '2019-12-23 09:39:38'),
(16, 16, 59, 1, 1780000, '2019-12-23 09:39:51', '2019-12-23 09:39:51'),
(17, 16, 60, 1, 2980000, '2019-12-23 09:39:51', '2019-12-23 09:39:51'),
(18, 17, 59, 1, 1780000, '2019-12-23 09:45:18', '2019-12-23 09:45:18'),
(19, 17, 60, 1, 2980000, '2019-12-23 09:45:18', '2019-12-23 09:45:18'),
(20, 18, 59, 1, 1780000, '2019-12-23 09:50:25', '2019-12-23 09:50:25'),
(21, 19, 58, 1, 1500000, '2019-12-23 09:55:12', '2019-12-23 09:55:12'),
(22, 20, 60, 1, 2980000, '2019-12-23 10:03:00', '2019-12-23 10:03:00'),
(23, 20, 58, 1, 1500000, '2019-12-23 10:03:00', '2019-12-23 10:03:00'),
(24, 21, 59, 1, 1780000, '2019-12-23 10:07:11', '2019-12-23 10:07:11'),
(25, 24, 60, 1, 2980000, '2019-12-27 01:19:57', '2019-12-27 01:19:57'),
(26, 25, 60, 1, 2980000, '2019-12-27 01:19:59', '2019-12-27 01:19:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `promotional` float NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCategory` int(11) NOT NULL,
  `idProductType` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `description`, `quantity`, `price`, `promotional`, `image`, `idCategory`, `idProductType`, `status`, `created_at`, `updated_at`) VALUES
(19, 'GIÀY NIKE ODYSSEY REACT 2 FLYKNIT - NỮ ĐEN TRẮNG', 'giay-nike-odyssey-react-2-flyknit-nu-den-trang', '<h2>&nbsp;</h2>\r\n\r\n<p>Ở phi&ecirc;n bản n&agrave;y thứ 2, c&aacute;c nh&agrave; sản xuất vẫn giữ nguy&ecirc;n c&aacute;c c&ocirc;ng nghệ ưu việt ở phi&ecirc;n bản thứ nhất. Tuy nhi&ecirc;n, ở phi&ecirc;n bản n&agrave;y th&igrave; Nike cũng đ&atilde; n&acirc;ng cấp th&ecirc;m một số c&ocirc;ng nghệ nhằm gi&uacute;p người sử dụng c&oacute; được những trải nghiệm mới mẻ, thoải m&aacute;i hơn. Điều đầu ti&ecirc;n đấy ch&iacute;nh l&agrave; phần Upper ph&iacute;a tr&ecirc;n đ&atilde; được may dệt trở n&ecirc;n chắc hơn nhằm gi&uacute;p cho đ&ocirc;i gi&agrave;y của bạn giữ được form l&acirc;u hơn nhưng vẫn kh&ocirc;ng l&agrave;m mất đi sự th&ocirc;ng tho&aacute;ng, kh&ocirc; r&aacute;o của b&agrave;n ch&acirc;n khi sử dụng. Lưỡi g&agrave; được l&agrave;m ho&agrave;n to&agrave;n mới, co gi&atilde;n gi&uacute;p &ocirc;m s&aacute;t với mọi loại cổ ch&acirc;n. Một phần hai th&acirc;n gi&agrave;y đến g&oacute;t gi&agrave;y đ&atilde; được thay bằng da tăng t&iacute;nh thời trang, sang chảnh cho đ&ocirc;i gi&agrave;y. G&oacute;t gi&agrave;y được trang bị th&ecirc;m lớp nhựa lớn hơn tăng sự cố định cho b&agrave;n ch&acirc;n của bạn, giảm chấn thương kể cả&nbsp; l&uacute;c hoạt động thể thao với tần suất lớn.</p>\r\n\r\n<p><strong>Gi&agrave;y Nike Odyssey React 2 Flyknit&nbsp; ch&iacute;nh h&atilde;ng tại được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày Nike Odyssey React 2 Flyknit - Nữ  Đen Trắng\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-odyssey-react-2-flyknit-nu-den-trang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Odyssey React 2 Flyknit - Nữ  Đen Trắng\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-odyssey-react-2-flyknit-nu-den-trang-02.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>', 100, 1000000, 0, '1073876324-nike_den_nu.jpg', 16, 14, 1, '2019-12-11 08:42:01', '2019-12-14 09:27:43'),
(21, 'Giày Nike Zoom Gravity Nam - Xám Xanh', 'giay-nike-zoom-gravity-nam-xam-xanh', '<p>Những đ&ocirc;i gi&agrave;y được thiết kế với mục đ&iacute;ch gi&uacute;p c&aacute;c thượng đế đi nhanh hơn nhưng với Nike Zoom Gravity bạn sẽ gi&uacute;p bạn c&oacute; những bước chạy khỏe hơn, tr&ecirc;n những chặng đường d&agrave;i hơn tiến gần hơn với những chiến thắng của cuộc đua hơn. Với c&ocirc;ng nghệ đế Zoom sẽ cung cấp cho bạn to&agrave;n bộ lực đẩy trong suốt qu&aacute; tr&igrave;nh sử dụng. Khi bạn cho đi c&agrave;ng nhiều lực th&igrave; bạn nhận lại được c&agrave;ng nhiều lực, sẽ kh&ocirc;ng c&ograve;n lo lắng với việc phải mất qu&aacute; nhiều sức trong l&uacute;c bạn chạy. Đế giữa tạo cảm gi&aacute;c &ecirc;m &aacute;i. Đế ngo&agrave;i chắc chắn b&aacute;m mặt đường, tăng ma s&aacute;t, giảm chấn thương. Phần Upper, được chia l&agrave;m hai phần: Phần tr&ecirc;n sẽ l&agrave; dạng Nylon gi&uacute;p bạn cản được nước, phần dưới l&agrave; vải lưới .M&agrave;u sắc tươi s&aacute;ng, trẻ trung n&ecirc;n sẽ l&agrave; thiếu s&oacute;t nếu bạn kh&ocirc;ng d&ugrave;ng n&oacute; để kết hợp với c&aacute;c trang phục thường ng&agrave;y.</p>\r\n\r\n<p><strong>Gi&agrave;y Thể Thao Nike Zoom Gravity Nam ch&iacute;nh h&atilde;ng tại&nbsp;</strong>Myshoes.vn<strong>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện</strong></p>\r\n\r\n<p><img alt=\"Giày Nike Zoom Gravity Nam - Xám Xanh \" src=\"https://myshoes.vn/image/data/nike%202019/thang7/giay-nike-zoom-gravity-nam-xam-xanh-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Zoom Gravity Nam - Xám Xanh \" src=\"https://myshoes.vn/image/data/nike%202019/thang7/giay-nike-zoom-gravity-nam-xam-xanh-02.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Zoom Gravity Nam - Xám Xanh \" src=\"https://myshoes.vn/image/data/nike%202019/thang7/giay-nike-zoom-gravity-nam-xam-xanh-03.jpg\" /></p>', 100, 2000000, 0, '1824517685-nike_den_nam.jpg', 16, 13, 1, '2019-12-11 09:37:47', '2019-12-11 09:49:20'),
(22, 'GIÀY NIKE ODYSSEY REACT 2 FLYKNIT - NỮ TRẮNG TÍM', 'giay-nike-odyssey-react-2-flyknit-nu-trang-tim', '<h2>Gi&agrave;y Nike Odyssey React 2 Flyknit - Nữ Trắng T&iacute;m</h2>\r\n\r\n<p>Ở phi&ecirc;n bản n&agrave;y thứ 2, c&aacute;c nh&agrave; sản xuất vẫn giữ nguy&ecirc;n c&aacute;c c&ocirc;ng nghệ ưu việt ở phi&ecirc;n bản thứ nhất. Tuy nhi&ecirc;n, ở phi&ecirc;n bản n&agrave;y th&igrave; Nike cũng đ&atilde; n&acirc;ng cấp th&ecirc;m một số c&ocirc;ng nghệ nhằm gi&uacute;p người sử dụng c&oacute; được những trải nghiệm mới mẻ, thoải m&aacute;i hơn. Điều đầu ti&ecirc;n đấy ch&iacute;nh l&agrave; phần Upper ph&iacute;a tr&ecirc;n đ&atilde; được may dệt trở n&ecirc;n chắc hơn nhằm gi&uacute;p cho đ&ocirc;i gi&agrave;y của bạn giữ được form l&acirc;u hơn nhưng vẫn kh&ocirc;ng l&agrave;m mất đi sự th&ocirc;ng tho&aacute;ng, kh&ocirc; r&aacute;o của b&agrave;n ch&acirc;n khi sử dụng. Lưỡi g&agrave; được l&agrave;m ho&agrave;n to&agrave;n mới, co gi&atilde;n gi&uacute;p &ocirc;m s&aacute;t với mọi loại cổ ch&acirc;n. Một phần hai th&acirc;n gi&agrave;y đến g&oacute;t gi&agrave;y đ&atilde; được thay bằng da tăng t&iacute;nh thời trang, sang chảnh cho đ&ocirc;i gi&agrave;y. G&oacute;t gi&agrave;y được trang bị th&ecirc;m lớp nhựa lớn hơn tăng sự cố định cho b&agrave;n ch&acirc;n của bạn, giảm chấn thương kể cả&nbsp; l&uacute;c hoạt động thể thao với tần suất lớn.</p>\r\n\r\n<p><strong>Gi&agrave;y Nike Odyssey React 2 Flyknit&nbsp; ch&iacute;nh h&atilde;ng tại&nbsp;Myshoes.vn&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày Nike Odyssey React 2 Flyknit - Nữ Trắng Tím\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-odyssey-react-2-flyknit-nu-trang-tim-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Odyssey React 2 Flyknit - Nữ Trắng Tím\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-odyssey-react-2-flyknit-nu-trang-tim-02.jpg\" /></p>', 100, 1600000, 0, '1365633621-nike_tim.jpg', 16, 14, 1, '2019-12-11 10:03:50', '2019-12-11 10:06:04'),
(23, 'Giày Nike Air Zoom Pegasus 36 Nữ- Xanh', 'giay-nike-air-zoom-pegasus-36-nu-xanh', '<p>Gi&agrave;y Nike Air Zoom Pegasus 36 l&agrave; mẫu gi&agrave;y phi&ecirc;n bản thứ 36 của d&ograve;ng gi&agrave;y huyền thoại Nike Air Zoom Pegasus, đ&atilde; c&oacute; truyền thống từ năm 1983. Đến nay c&aacute;c nh&agrave; sản xuất của Nike đ&atilde; cải tiến, n&acirc;ng cấp những c&ocirc;ng nghệ v&agrave; cho ra đời si&ecirc;u phẩm 2019 Nike Air Zoom Pegasus 36.</p>\r\n\r\n<p>V&agrave; sau đ&acirc;y h&atilde;y để Myshoes.vn - Gi&agrave;y Ch&iacute;nh H&atilde;ng review đ&ocirc;i gi&agrave;y cực phẩm n&agrave;y cho c&aacute;c bạn nh&eacute;!</p>\r\n\r\n<p>Đầu ti&ecirc;n khi nh&igrave;n v&agrave;o Nike Air Zoom Pegasus 36 ch&uacute;ng ta c&oacute; thể thấy ở phi&ecirc;n bản mới n&agrave;y được thừa hưởng kiểu d&aacute;ng thiết kế từ người anh&nbsp;<a href=\"https://myshoes.vn/giay-nike-pegasus-35-nam-xam\">Pegasus 35</a>. Song c&aacute;c c&ocirc;ng nghệ đ&atilde; được n&acirc;ng cấp l&ecirc;n một tầm cao mới.</p>\r\n\r\n<p><img alt=\"Giày Nike Air Zoom Pegasus 36 Nữ- Xanh\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-air-zoom-pegasus-36-nu-xanh-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Air Zoom Pegasus 36 Nữ- Xanh\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-air-zoom-pegasus-36-nu-xanh-02.jpg\" /></p>\r\n\r\n<p>Thứ nhất ở phần MIDSOLE với c&ocirc;ng nghệ FULL-LENGTH ZOOM AIR tiếp tục được trao sự t&iacute;n nhiệm. C&ocirc;ng nghệ n&agrave;y trang bị cho đ&ocirc;i gi&agrave;y một lớp đệm cao su từ đầu mũi cho đến cuối g&oacute;t gi&agrave;y gi&uacute;p bạn cảm nhận được sự đ&agrave;n hồi đến mức tối đa, khi bạn cho đi c&agrave;ng nhiều lực th&igrave; bạn sẽ được nhận lại được sự phản hồi lực từ bộ đệm . Đấy ch&iacute;nh l&agrave; điểm ưu việt của c&ocirc;ng nghệ n&agrave;y, n&oacute; sẽ hỗ trợ sức lực cho người sử dụng l&ecirc;n tới 200%.</p>\r\n\r\n<p><img alt=\"Giày Nike Air Zoom Pegasus 36 Nữ- Xanh\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-air-zoom-pegasus-36-nu-xanh-04.jpg\" /></p>', 100, 1000000, 0, '310984983-nike-xanh.jpg', 16, 14, 1, '2019-12-14 08:13:53', '2019-12-14 08:13:53'),
(24, 'Giày Nike Legend React Nữ -Trắng Xanh', 'giay-nike-legend-react-nu-trang-xanh', '<p>&nbsp;Nike Legend React -một mẫu gi&agrave;y chạy bộ được coi l&agrave; huyền thoại trong l&agrave;ng chạy bộ của c&aacute;c gi&agrave;y thể thao. Với thiết kế lu&ocirc;n n&acirc;ng cao t&iacute;nh đơn giản, gọn v&agrave; đặc biệt nhẹ. Nike Legend React sẽ gi&uacute;p bạn trải nghiệm nhiều hơn một đ&ocirc;i gi&agrave;y thể thao b&igrave;nh thường. Phần vải Upper, được sử dụng vải Mesh gi&uacute;p cho b&agrave;n ch&acirc;n lu&ocirc;n kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t, kh&ocirc;ng b&iacute; b&aacute;ch. Đế React, chưa bao giờ l&agrave;m thất vọng một kh&aacute;ch h&agrave;ng n&agrave;o của Nike. M&agrave;u sắc trẻ trung, hiện đại sẽ gi&uacute;p bạn phối hợp được nhiều kiểu quẩn &aacute;o để biến tấu n&oacute; th&agrave;nh một đ&ocirc;i gi&agrave;y đi thời trang h&agrave;ng ng&agrave;y.</p>\r\n\r\n<p><strong>Gi&agrave;y Nike Leagend React&nbsp; ch&iacute;nh h&atilde;ng tại&nbsp;<a href=\"https://myshoes.vn/\" target=\"_blank\">Myshoes.vn</a>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Giày Nike Legend React Nữ -Trắng Xanh\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-legend-react-nu-trang-xanh-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Legend React Nữ -Trắng Xanh\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-legend-react-nu-trang-xanh-02.jpg\" /></p>', 100, 2000000, 0, '310297990-nike_legended_nu.jpg', 16, 14, 1, '2019-12-14 08:17:30', '2019-12-14 08:17:30'),
(25, 'Giày Nike Air Zoom Pegasus 36 Nữ- Hồng Đất', 'giay-nike-air-zoom-pegasus-36-nu-hong-dat', '<p>Gi&agrave;y Nike Air Zoom Pegasus 36 l&agrave; mẫu gi&agrave;y phi&ecirc;n bản thứ 36 của d&ograve;ng gi&agrave;y huyền thoại Nike Air Zoom Pegasus, đ&atilde; c&oacute; truyền thống từ năm 1983. Đến nay c&aacute;c nh&agrave; sản xuất của Nike đ&atilde; cải tiến, n&acirc;ng cấp những c&ocirc;ng nghệ v&agrave; cho ra đời si&ecirc;u phẩm 2019 Nike Air Zoom Pegasus 36.</p>\r\n\r\n<p>V&agrave; sau đ&acirc;y h&atilde;y để Myshoes.vn - Gi&agrave;y Ch&iacute;nh H&atilde;ng review đ&ocirc;i gi&agrave;y cực phẩm n&agrave;y cho c&aacute;c bạn nh&eacute;!</p>\r\n\r\n<p>Đầu ti&ecirc;n khi nh&igrave;n v&agrave;o Nike Air Zoom Pegasus 36 ch&uacute;ng ta c&oacute; thể thấy ở phi&ecirc;n bản mới n&agrave;y được thừa hưởng kiểu d&aacute;ng thiết kế từ người anh&nbsp;<a href=\"https://myshoes.vn/giay-nike-pegasus-35-nam-xam\">Pegasus 35</a>. Song c&aacute;c c&ocirc;ng nghệ đ&atilde; được n&acirc;ng cấp l&ecirc;n một tầm cao mới.</p>\r\n\r\n<p><img alt=\"Giày Nike Air Zoom Pegasus 36 Nữ- Hồng Đất \" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-air-zoom-pegasus-nu-hong-dat-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Air Zoom Pegasus 36 Nữ- Hồng Đất \" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-air-zoom-pegasus-nu-hong-dat-02.jpg\" /></p>\r\n\r\n<p>Thứ nhất ở phần MIDSOLE với c&ocirc;ng nghệ FULL-LENGTH ZOOM AIR tiếp tục được trao sự t&iacute;n nhiệm. C&ocirc;ng nghệ n&agrave;y trang bị cho đ&ocirc;i gi&agrave;y một lớp đệm cao su từ đầu mũi cho đến cuối g&oacute;t gi&agrave;y gi&uacute;p bạn cảm nhận được sự đ&agrave;n hồi đến mức tối đa, khi bạn cho đi c&agrave;ng nhiều lực th&igrave; bạn sẽ được nhận lại được sự phản hồi lực từ bộ đệm . Đấy ch&iacute;nh l&agrave; điểm ưu việt của c&ocirc;ng nghệ n&agrave;y, n&oacute; sẽ hỗ trợ sức lực cho người sử dụng l&ecirc;n tới 200%.</p>\r\n\r\n<p><img alt=\"Giày Nike Air Zoom Pegasus 36 Nữ- Hồng Đất \" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-air-zoom-pegasus-nu-hong-dat-04.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>', 100, 3490000, 0, '911844564-nike_airzoom.jpg', 16, 14, 1, '2019-12-14 08:33:44', '2019-12-14 08:33:44'),
(26, 'Giày Nike Zoom Gravity Nữ- Xám Hồng', 'giay-nike-zoom-gravity-nu-xam-hong', '<p>Những đ&ocirc;i gi&agrave;y được thiết kế với mục đ&iacute;ch gi&uacute;p c&aacute;c thượng đế đi nhanh hơn nhưng với Nike Zoom Gravity bạn sẽ gi&uacute;p bạn c&oacute; những bước chạy khỏe hơn, tr&ecirc;n những chặng đường d&agrave;i hơn tiến gần hơn với những chiến thắng của cuộc đua hơn. Với c&ocirc;ng nghệ đế Zoom sẽ cung cấp cho bạn to&agrave;n bộ lực đẩy trong suốt qu&aacute; tr&igrave;nh sử dụng. Khi bạn cho đi c&agrave;ng nhiều lực th&igrave; bạn nhận lại được c&agrave;ng nhiều lực, sẽ kh&ocirc;ng c&ograve;n lo lắng với việc phải mất qu&aacute; nhiều sức trong l&uacute;c bạn chạy. Đế giữa tạo cảm gi&aacute;c &ecirc;m &aacute;i. Đế ngo&agrave;i chắc chắn b&aacute;m mặt đường, tăng ma s&aacute;t, giảm chấn thương. Phần Upper, được chia l&agrave;m hai phần: Phần tr&ecirc;n sẽ l&agrave; dạng Nylon gi&uacute;p bạn cản được nước, phần dưới l&agrave; vải lưới .M&agrave;u sắc tươi s&aacute;ng, trẻ trung n&ecirc;n sẽ l&agrave; thiếu s&oacute;t nếu bạn kh&ocirc;ng d&ugrave;ng n&oacute; để kết hợp với c&aacute;c trang phục thường ng&agrave;y.</p>\r\n\r\n<p><strong>Gi&agrave;y Thể Thao Nike Zoom Gravity Nữ ch&iacute;nh h&atilde;ng tại&nbsp;</strong><a href=\"httpss://myshoes.vn\" target=\"_blank\">Myshoes.vn</a><strong>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện</strong></p>\r\n\r\n<p><img alt=\"Giày Nike Zoom Gravity Nữ- Xám Hồng\" src=\"https://myshoes.vn/image/data/nike%202019/thang7/giay-nike-zoom-gravity-nu-xam-hong-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Zoom Gravity Nữ- Xám Hồng\" src=\"https://myshoes.vn/image/data/nike%202019/thang7/giay-nike-zoom-gravity-nu-xam-hong-02.jpg\" /></p>', 100, 1939000, 0, '1578416552-giay-nike-zoom-gravity-nu-xam-hong-01-600x600_0.jpg', 16, 14, 1, '2019-12-14 08:41:19', '2019-12-14 08:41:19'),
(27, 'Giày Nike Zoom Rival Fly Nữ- Hồng', 'giay-nike-zoom-rival-fly-nu-hong', '<p>Nike Zoom Rival Fly cuối c&ugrave;ng c&oacute; mặt tại Myshoes.vn-Gi&agrave;y Ch&iacute;nh H&atilde;ng. Đ&ocirc;i gi&agrave;y được c&aacute;c nh&agrave; sản xuất ưu &aacute;i lựa chọn cho rất nhiều c&ocirc;ng nghệ t&acirc;n tiến, hiện đ&acirc;ị nhất!</p>\r\n\r\n<p>Về mặt kiểu d&aacute;ng th&igrave; Nike Zoom Rival Fly được thừa hưởng từ c&aacute;c đ&agrave;n anh đi trước như&nbsp;<strong>Vomero 14 hay Pegasus 36 .</strong>Với thiết kế gọn nhẹ nhưng vẫn kh&ocirc;ng mất đi sự khỏe khoắn vốn c&oacute; của Nike. Phần Upper, ph&iacute;a tr&ecirc;n được thiết kế mỏng với chất liệu vải Mesh gi&uacute;p bạn thoải m&aacute;i vận động m&agrave; kh&ocirc;ng lo t&igrave;nh trạng b&agrave;n ch&acirc;n bị b&iacute; b&aacute;ch hay kh&oacute; chịu.Phần đế l&agrave; c&ocirc;ng nghệ Full Lenght Zoom Air sẽ hỗ trợ sức lực của người sử dụng đến mức tối đa, nhẹ v&agrave; thoải m&aacute;i giống như đang bay , đ&uacute;ng như t&ecirc;n gọi của n&oacute;&nbsp;Nike Zoom Rival Fly .</p>\r\n\r\n<p><strong>Gi&agrave;y Thể Thao Nike Zoom Rival Fly Nữ ch&iacute;nh h&atilde;ng tại&nbsp;</strong><a href=\"httpss://myshoes.vn\" target=\"_blank\">Myshoes.vn</a><strong>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện</strong></p>\r\n\r\n<p><img alt=\"Giày Nike Zoom Rival Fly Nữ- Hòng\" src=\"https://myshoes.vn/image/data/nike%202019/thang7/giay-nike-zoom-rival-fly-nu-hong-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Zoom Rival Fly Nữ- Hòng\" src=\"https://myshoes.vn/image/data/nike%202019/thang7/giay-nike-zoom-rival-fly-nu-hong-02.jpg\" /></p>', 100, 1849000, 0, '1834479119-giay-nike-zoom-rival-fly-nu-hong-01-600x600_0.jpg', 16, 14, 1, '2019-12-14 08:42:47', '2019-12-14 08:42:47'),
(28, 'Giày Nike Revolution 5 Nam - Trắng Xanh', 'giay-nike-revolution-5-nam-trang-xanh', '<h2>Bạn đang t&igrave;m kiếm cho m&igrave;nh một đ&ocirc;i gi&agrave;y chạy bộ, tập thể thao nhẹ nh&agrave;ng nhưng vẫn c&oacute; mức gi&aacute; tốt th&igrave; h&atilde;y để Myshoes.vn- Gi&agrave;y Ch&iacute;nh H&atilde;ng gi&uacute;p bạn. Mẫu gi&agrave;y Nike Revolution 5 sẽ l&agrave; lựa chọn ho&agrave;n hảo, hợp l&yacute;,ch&iacute;nh x&aacute;c cho bạn. Với c&ocirc;ng nghệ được thiết kế để vừa chạy vừa c&oacute; thể tập được thể thao nhưng lại kh&ocirc;ng qu&aacute; đắt như Zoom hay React. Nike Revolution 5 sẽ l&agrave; mẫu gi&agrave;y m&agrave; c&aacute;c t&iacute;n đồ y&ecirc;u th&iacute;ch thể thao n&ecirc;n c&oacute; cho m&igrave;nh một đ&ocirc;i. Đồng thời với lối thiết kế trẻ trung, hiện đại th&igrave; bạn c&oacute; thể d&ugrave;ng ch&iacute;nh đ&ocirc;i gi&agrave;y n&agrave;y để kết hợp với c&aacute;c Outfit thường ng&agrave;y.</h2>\r\n\r\n<p><strong>Gi&agrave;y Thể Thao Nike Revolution 5 Nam ch&iacute;nh h&atilde;ng tại&nbsp;</strong><a href=\"httpss://myshoes.vn\" target=\"_blank\">Myshoes.vn</a><strong>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng</strong><strong>. Full box, đầy đủ phụ kiện</strong></p>\r\n\r\n<p><img alt=\"Giày Nike Revolution 5 Nam - Trắng Xanh \" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-revolution-5-nam-trang-xanh-01.jpg\" /></p>\r\n\r\n<p><strong><img alt=\"​ Giày Nike Revolution 5 Nam - Xanh Navy\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-revolution-5-nam-xanh-navy-01.jpg\" /></strong></p>', 100, 3990000, 0, '14-12-19191919-1381383622-giay-nike-revolution-5-nam-trang-xanh-01-800x800_0.jpg', 16, 13, 1, '2019-12-14 08:45:47', '2019-12-14 08:45:47'),
(29, 'Giày Nike Ebernon Low Nam - Trắng Full', 'giay-nike-ebernon-low-nam-trang-full', '<h2>&nbsp;</h2>\r\n\r\n<p>Bạn đang t&igrave;m kiếm một mẫu gi&agrave;y thời trang vừa c&oacute; thể đi l&agrave;m, vừa đi chơi- Nike Ebernon Low sẽ .l&agrave; một lựa chọn kh&ocirc;ng n&ecirc;n bỏ qua. Với m&agrave;u trắng full, v&ocirc; c&ugrave;ng thời trang, phong c&aacute;ch gi&uacute;p bạn dễ d&agrave;ng phối hợp với c&aacute;c kiểu quần &aacute;o kh&aacute;c nhau. Phần Upper được sử dụng l&agrave; da b&oacute;ng, sẽ gi&uacute;p bạn kh&ocirc;ng c&ograve;n phải lo t&igrave;nh trạng b&aacute;m bẩn, kh&oacute; vệ sinh như ở c&aacute;c mẫu gi&agrave;y kh&aacute;c. C&ograve;n chần chờ g&igrave; nữa, m&agrave; kh&ocirc;ng tậu ngay một em cho bản th&acirc;n.</p>\r\n\r\n<p><img alt=\"Giày Nike Ebernon Low Nam - Trắng Full\" src=\"https://myshoes.vn/image/data/nike%202019/3.5.19/giay-nike-ebernon-low-nam-trang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Ebernon Low Nam - Trắng Full\" src=\"https://myshoes.vn/image/data/nike%202019/3.5.19/giay-nike-ebernon-low-nam-trang-02.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Ebernon Low Nam - Trắng Full\" src=\"https://myshoes.vn/image/data/nike%202019/3.5.19/giay-nike-ebernon-low-nam-trang-03.jpg\" /></p>', 100, 1990000, 0, '14-12-19191919-564542633-giay-nike-ebernon-low-nam-trang-01-600x600_0.jpg', 16, 13, 1, '2019-12-14 08:47:41', '2019-12-14 08:47:41'),
(30, 'Giày Nike Epic React Flyknit 2 Nam - Xám Xanh', 'giay-nike-epic-react-flyknit-2-nam-xam-xanh', '<p>Mẫu gi&agrave;y Nike Epic React Flyknit 2 cuối c&ugrave;ng cũng đổ bộ tại Myshoes.vn-Gi&agrave;y Ch&iacute;nh H&atilde;ng. Ở phi&ecirc;n bản thứ 2 n&agrave;y được c&aacute;c nh&agrave; sản xuất của Nike thiết kế n&acirc;ng cấp hơn so với phi&ecirc;n bản thứ nhất. Điều thứ nhất phần Upper ,chất liệu Flykint được dệt liền một mạch đồng thời c&ocirc;ng nghệ cũng gi&uacute;p cho b&agrave;n ch&acirc;n của bạn sẽ được th&ocirc;ng tho&aacute;ng, thoải m&aacute;i ngay cả l&uacute;c bạn đang hoạt động ở cường độ cao. Ở phi&ecirc;n bản thứ hai n&agrave;y hệ thống buộc d&acirc;y gi&agrave;y được chia l&agrave;m hai mảng kh&aacute;c hẳn so với liền mạch giống như ở phi&ecirc;n bản thứ nhất. Đặc biệt, phi&ecirc;n bản mới n&agrave;y n&oacute; c&oacute; th&ecirc;m phần kếp nhựa gi&uacute;p người sử dụng cố định được g&oacute;t ch&acirc;n cũng như giảm chấn thương l&uacute;c bạn vận động.Phần m&oacute;c logo của Nike ở phi&ecirc;n bản được th&ecirc;u trực tiếp v&agrave;o phần m&aacute; gi&agrave;y gi&uacute;p cho đ&ocirc;i gi&agrave;y trở n&ecirc;n nổi bật hơn. Đến với phần cổ gi&agrave;y l&agrave; đường viền gi&uacute;p ph&ugrave; hợp với mọi b&agrave;n ch&acirc;n.Tiếp tục c&ocirc;ng nghệ đế React lại được c&aacute;c nh&agrave; sản xuất tin tưởng.Ở đế ngo&agrave;i được trang bị th&ecirc;m đệm cao su ở g&oacute;t v&agrave; mũi đ&ocirc;i gi&agrave;y n&oacute; sẽ gi&uacute;p cho bạn chuyển bước từ g&oacute;t đến đầu mũi cũng dễ d&agrave;ng hơn. Nếu như ai l&agrave; t&iacute;n đồ của gi&agrave;y Nike th&igrave; sẽ kh&ocirc;ng c&ograve;n phải b&agrave;n c&atilde;i về độ &ecirc;m &aacute;i cũng như sự đ&agrave;n hồi tới mức tối đa của n&oacute;.Thiết kế trẻ trung, năng động gi&uacute;p bạn dễ d&agrave;ng phối hợp với c&aacute;c loại quần&nbsp; jean cho đến kiểu trang phục kh&aacute;c.Một đ&ocirc;i gi&agrave;y ho&agrave;n hảo về cả hiệu suất lẫn ngoại h&igrave;nh th&igrave; đ&acirc;y sẽ l&agrave; lựa chọn m&agrave; bạn chắc chắn kh&ocirc;ng thể bỏ lỡ được.&nbsp;</p>\r\n\r\n<p><img alt=\"Giày Nike Epic React Flyknit 2 Nam - Xám Xanh\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-epic-react-2%20flyknit-nam-xam-xanh-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Epic React Flyknit 2 Nam - Xám Xanh\" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-epic-react-2%20flyknit-nam-xam-xanh-02.jpg\" /></p>', 100, 1990000, 0, '14-12-19191919-1419159128-giay-nike-epic-react-2-flyknit-nam-xam-xanh-01-600x600_0.jpg', 16, 13, 1, '2019-12-14 08:49:20', '2019-12-14 08:49:20'),
(31, 'Giày Nike Air Zoom Pegasus 36 Nam - Xanh Bạc', 'giay-nike-air-zoom-pegasus-36-nam-xanh-bac', '<p>Gi&agrave;y Nike Air Zoom Pegasus 36 l&agrave; mẫu gi&agrave;y phi&ecirc;n bản thứ 36 của d&ograve;ng gi&agrave;y huyền thoại Nike Air Zoom Pegasus, đ&atilde; c&oacute; truyền thống từ năm 1983. Đến nay c&aacute;c nh&agrave; sản xuất của Nike đ&atilde; cải tiến, n&acirc;ng cấp những c&ocirc;ng nghệ v&agrave; cho ra đời si&ecirc;u phẩm 2019 Nike Air Zoom Pegasus 36.</p>\r\n\r\n<p>V&agrave; sau đ&acirc;y h&atilde;y để Myshoes.vn - Gi&agrave;y Ch&iacute;nh H&atilde;ng review đ&ocirc;i gi&agrave;y cực phẩm n&agrave;y cho c&aacute;c bạn nh&eacute;!</p>\r\n\r\n<p>Đầu ti&ecirc;n khi nh&igrave;n v&agrave;o Nike Air Zoom Pegasus 36 ch&uacute;ng ta c&oacute; thể thấy ở phi&ecirc;n bản mới n&agrave;y được thừa hưởng kiểu d&aacute;ng thiết kế từ người anh&nbsp;<a href=\"https://myshoes.vn/giay-nike-pegasus-35-nam-xam\">Pegasus 35</a>. Song c&aacute;c c&ocirc;ng nghệ đ&atilde; được n&acirc;ng cấp l&ecirc;n một tầm cao mới.</p>\r\n\r\n<p><img alt=\"Giày Nike Air Zoom Pegasus 36 Nam - Xanh Bạc \" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-air-zoom-pegasus-36-nam-xanh-bac-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Air Zoom Pegasus 36 Nam - Xanh Bạc \" src=\"https://myshoes.vn/image/data/nike%202019/7.6.19/giay-nike-air-zoom-pegasus-36-nam-xanh-bac-02.jpg\" /></p>\r\n\r\n<p>Thứ nhất ở phần MIDSOLE với c&ocirc;ng nghệ FULL-LENGTH ZOOM AIR tiếp tục được trao sự t&iacute;n nhiệm. C&ocirc;ng nghệ n&agrave;y trang bị cho đ&ocirc;i gi&agrave;y một lớp đệm cao su từ đầu mũi cho đến cuối g&oacute;t gi&agrave;y gi&uacute;p bạn cảm nhận được sự đ&agrave;n hồi đến mức tối đa, khi bạn cho đi c&agrave;ng nhiều lực th&igrave; bạn sẽ được nhận lại được sự phản hồi lực từ bộ đệm . Đấy ch&iacute;nh l&agrave; điểm ưu việt của c&ocirc;ng nghệ n&agrave;y, n&oacute; sẽ hỗ trợ sức lực cho người sử dụng l&ecirc;n tới 200%.</p>', 99, 2430000, 500000, '1637885916-giay-nike-air-zoom-pegasus-36-nam-xanh-bac-01-800x800_0.jpg', 16, 13, 1, '2019-12-14 08:51:05', '2019-12-14 08:51:05'),
(32, 'Giày Nike Jordan 89 Racer Nam - Đen', 'giay-nike-jordan-89-racer-nam-den', '<p>Với một tổng thể cấu tr&uacute;c được thiết kế nhẹ nh&agrave;ng, gọn g&agrave;ng song vẫn rất h&uacute;t mắt. V&acirc;ng đ&oacute; ch&iacute;nh l&agrave; Nike Jordan 89 Racer. Phần Midsole được sử dụng c&ocirc;ng nghệ tối t&acirc;n hỗ trợ bạn trong c&aacute;c hoạt động thể thao nhẹ nh&agrave;ng cũng như đi bộ tập luyện h&agrave;ng ng&agrave;y.Đế ngo&agrave;i được trang bị c&ocirc;ng nghệ WaffleSkin tăng độ b&aacute;m , chống trơn trượt cho người sử dụng . Phối m&agrave;u trẻ trung, năng động gi&uacute;p bạn tự tin sải bước cũng như dễ d&agrave;ng kết hợp được với nhiều kiểu quần &aacute;o.</p>\r\n\r\n<p><img alt=\"Giày Nike Jordan 89 Racer Nam - Đen \" src=\"https://myshoes.vn/image/data/nike%202019/th%C3%A1ng/giaynike/giay-nike-jordan-89-racer-nam-den-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Jordan 89 Racer Nam - Đen \" src=\"https://myshoes.vn/image/data/nike%202019/th%C3%A1ng/giaynike/giay-nike-jordan-89-racer-nam-den-02.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Jordan 89 Racer Nam - Đen \" src=\"https://myshoes.vn/image/data/nike%202019/th%C3%A1ng/giaynike/giay-nike-jordan-89-racer-nam-den-03.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nike Jordan 89 Racer Nam - Đen \" src=\"https://myshoes.vn/image/data/nike%202019/th%C3%A1ng/giaynike/giay-nike-jordan-89-racer-nam-den-04.jpg\" /></p>', 99, 2450000, 0, '14-12-19191919-550944450-giay-nike-jordan-89-racer-nam-den-01-600x600_0.jpg', 16, 13, 1, '2019-12-14 08:52:48', '2019-12-14 08:52:48'),
(33, 'Giày adidas MarathonX5923 Nam - Xanh', 'giay-adidas-marathonx5923-nam-xanh', '<p>Một mẫu gi&agrave;y được thiết kế kết hợp giữa cổ đại v&agrave; hiện đại. Adidas MarathonX5923 ngay ở c&aacute;i t&ecirc;n của n&oacute; l&agrave; ch&uacute;ng ta c&oacute; thể biết được mục đ&iacute;ch sử dụng của n&oacute;. Bạn ho&agrave;n to&agrave;n c&oacute; thể sử dụng chạy bộ vừa c&oacute; thể l&agrave;m một đ&ocirc;i gi&agrave;y thời trang h&agrave;ng ng&agrave;y. C&ocirc;ng nghệ đế Boost &quot;xịn x&ograve;&quot; th&igrave; kh&ocirc;ng cần phải n&oacute;i nhiều về độ &ecirc;m &aacute;i nữa chỉ cần mang n&oacute; v&agrave;o ch&acirc;n l&agrave; biết em n&oacute; như n&agrave;o.</p>\r\n\r\n<p><strong>Gi&agrave;y adidas MarathonX5923 ch&iacute;nh h&atilde;ng tại&nbsp;<a href=\"https://myshoes.vn/\" target=\"_blank\">Myshoes.vn</a>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày adidas MarathonX5923 Nam - Xanh\" src=\"https://myshoes.vn/image/data/adidas%202019/THANG8/giay-adidas-marathonx5923-nam-xanh-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas MarathonX5923 Nam - Xanh\" src=\"https://myshoes.vn/image/data/adidas%202019/THANG8/giay-adidas-marathonx5923-nam-xanh-02.jpg\" /></p>', 100, 3999000, 0, '14-12-19191919-484046422-giay-adidas-marathonx5923-nam-xanh-01-600x600_0.jpg', 15, 11, 1, '2019-12-14 08:56:13', '2019-12-14 08:56:13'),
(34, 'Giày adidas Continental 80 - Đen Đỏ', 'giay-adidas-continental-80-den-do', '<p>Với một tổng thể cấu tr&uacute;c được thiết kế nhẹ nh&agrave;ng, gọn g&agrave;ng song vẫn rất h&uacute;t mắt. V&acirc;ng đ&oacute; ch&iacute;nh l&agrave; Nike Jordan 89 Racer. Phần Midsole được sử dụng c&ocirc;ng nghệ tối t&acirc;n hỗ trợ bạn trong c&aacute;c hoạt động thể thao nhẹ nh&agrave;ng cũng như đi bộ tập luyện h&agrave;ng ng&agrave;y.Đế ngo&agrave;i được trang bị c&ocirc;ng nghệ WaffleSkin tăng độ b&aacute;m , chống trơn trượt cho người sử dụng . Phối m&agrave;u trẻ trung, năng động gi&uacute;p bạn tự tin sải bước cũng như dễ d&agrave;ng kết hợp được với nhiều kiểu quần &aacute;o</p>\r\n\r\n<p><img alt=\"Giày adidas Continental 80 - Đen Đỏ \" src=\"https://myshoes.vn/image/data/adidas%202019/THANG8/giay-adidas-continental-80-nam-den-do-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas Continental 80 - Đen Đỏ \" src=\"https://myshoes.vn/image/data/adidas%202019/THANG8/giay-adidas-continental-80-nam-den-do-02.jpg\" /></p>', 70, 2390000, 0, '14-12-19191919-1396088044-giay-adidas-continental-80-nam-den-do-01-800x800_0.jpg', 15, 11, 1, '2019-12-14 08:57:56', '2019-12-14 08:57:56'),
(35, 'Giày adidas Edgebounce W Nữ - Trắng Kem', 'giay-adidas-edgebounce-w-nu-trang-kem', '<p>Adidas Edgebounce W - mẫu gi&agrave;y thể thao được thiết kế trong h&igrave;nh d&aacute;ng rất thời trang.<br />\r\nEdgebounce W l&agrave; mẫu gi&agrave;y sẽ đem đến cho bạn sự vừa vặn, thoải m&aacute;i nhờ những c&ocirc;ng nghệ ưu việt đến từ thương hiệu trứ danh Adidas. Cấu tr&uacute;c gi&agrave;y chắc chắn sẽ hạn chế sự chấn thương về ch&acirc;n cho người sử dụng. Đặc biệt phối m&agrave;u rất khỏe khoắn nhưng kh&ocirc;ng hề l&agrave;m mất đi sự sang chảnh-gi&uacute;p c&aacute;c t&iacute;n đồ của nh&agrave; Adidas ngo&agrave;i sử dụng cho mục đ&iacute;ch ch&iacute;nh l&agrave; tập thể thao n&acirc;ng cao sức khỏe, th&igrave; đ&acirc;y cũng ch&iacute;nh l&agrave; một mẫu gi&agrave;y bạn c&oacute; thế d&ugrave;ng để kết hợp với c&aacute;c kiểu OOTD kh&aacute;c nhau!</p>\r\n\r\n<p><strong>Gi&agrave;y adidas EdgeBounce W ch&iacute;nh h&atilde;ng tại&nbsp;<a href=\"https://myshoes.vn/\" target=\"_blank\">Myshoes.vn</a>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày adidas Edgebounce W Nữ - Trắng Kem \" src=\"https://myshoes.vn/image/data/adidas%202019/adidasnu/giay-adidas-edgebounce-w-nu-trang-kem-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas Edgebounce W Nữ - Trắng Kem \" src=\"https://myshoes.vn/image/data/adidas%202019/adidasnu/giay-adidas-edgebounce-w-nu-trang-kem-02.jpg\" /></p>', 55, 2990000, 0, '14-12-19191919-124576510-giay-adidas-edgebounce-w-nu-trang-kem-01-800x800_0.jpg', 15, 12, 1, '2019-12-14 08:59:45', '2019-12-14 08:59:45'),
(36, 'Giày adidas Adge Lux 3 Nữ- Đen Trắng', 'giay-adidas-adge-lux-3-nu-den-trang', '<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\"><strong><em>Mẫu gi&agrave;y thể thao nhưng vẫn giữ được n&eacute;t mềm mại, nhẹ nh&agrave;ng, thanh tho&aacute;t d&agrave;nh cho ph&aacute;i yếu- đ&atilde; c&oacute; mặt tại Myshoes.vn-Gi&agrave;y Ch&iacute;nh H&atilde;ng.&nbsp;</em></strong></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-size:16px\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\">Với Adidas Adge Lux 3 th&igrave; c&aacute;c qu&yacute; c&ocirc; c&oacute; thể d&ugrave;ng để tập thể dục, thể thao nhẹ nh&agrave;ng, chạy bộ h&agrave;ng ng&agrave;y. Đặc biệt, lối thiết kế rất trẻ trung, năng động, khỏe khoắn kh&ocirc;ng hề tạo cảm gi&aacute;c nam t&iacute;nh. Với c&ocirc;ng nghệ đế hiện đại, bạn sẽ kh&ocirc;ng phải lo lắng việc gan b&agrave;n ch&acirc;n bị đau trong suốt qu&aacute; tr&igrave;nh tập luyện hay sử dụng h&agrave;ng ng&agrave;y. M&agrave;u sắc rất sang trọng hơn nữa bạn ho&agrave;n to&agrave;n c&oacute; thể d&ugrave;ng ch&iacute;nh đ&ocirc;i gi&agrave;y n&agrave;y để thay thế cho c&aacute;c đ&ocirc;i cao g&oacute;t ch&ocirc;ng ch&ecirc;nh để kết hợp với c&aacute;c kiểu quần &aacute;o kh&aacute;c nhau ! Adidas Adge Lux 3 sẽ l&agrave; đ&ocirc;i gi&agrave;y gi&uacute;p bạn tự tin sải bước tr&ecirc;n mọi cung đường.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"color:#6e6e6e\"><span style=\"font-family:Oxygen,sans-serif\"><strong><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><span style=\"font-size:16px\">Gi&agrave;y adidas Adge Lux 3 ch&iacute;nh h&atilde;ng tại&nbsp;<a href=\"https://myshoes.vn/\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; padding:0px; border:0px; outline:0px; color:#2c5989; text-decoration:none; cursor:pointer; box-sizing:border-box\" target=\"_blank\">Myshoes.vn</a>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày adidas Adge Lux 3 Nữ- Đen Trắng \" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-adge-lux-3-nu-den-trang-01.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày adidas Adge Lux 3 Nữ- Đen Trắng \" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-adge-lux-3-nu-den-trang-02.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>', 55, 1990000, 0, '14-12-19191919-1883079491-giay-adidas-adge-lux-3-nu-den-trang-01-600x600_0.jpg', 15, 12, 1, '2019-12-14 09:01:06', '2019-12-14 09:01:06'),
(37, 'Giày adidas Advantage Nam - Trắng Xanh Navy', 'giay-adidas-advantage-nam-trang-xanh-navy', '<p>Được thừa hưởng lối thiết kế của đ&agrave;n anh Gi&agrave;y adidas VS Advantage CL&nbsp;song vẫn c&oacute; th&ecirc;m nhiều điểm mới cải thiện.Với thiết kế đơn giản nhưng lại v&ocirc; c&ugrave;ng thanh lịch. Phần Upper của gi&agrave;y được c&aacute;c nh&agrave; thiết kế của Adidas sử dụng bằng da bạn tăng th&ecirc;m độ lịch l&atilde;m khi mang. Với c&aacute;c đường kim mũi chỉ ho&agrave;n hảo đến từng chi tiết gi&uacute;p bạn tự tin sải bước. Đ&acirc;y quả thật l&agrave; một lựa chọn m&agrave; c&aacute;c phải mạnh kh&ocirc;ng n&ecirc;n bỏ lỡ.&nbsp;</p>\r\n\r\n<p><strong>Gi&agrave;y adidas Advantage ch&iacute;nh h&atilde;ng tại&nbsp;<a href=\"https://myshoes.vn/\" target=\"_blank\">Myshoes.vn</a>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày adidas Advantage Nam - Trắng Xanh Navy\" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-advantage-nam-tranh-xanh-navy-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas Advantage Nam - Trắng Xanh Navy\" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-advantage-nam-tranh-xanh-navy-02.jpg\" /></p>', 100, 1490000, 0, '14-12-19191919-342783738-giay-adidas-advantage-nam-tranh-xanh-navy-01-800x800_0.jpg', 15, 11, 1, '2019-12-14 09:03:05', '2019-12-14 09:03:05'),
(38, 'Giày adidas Coast Star Nữ Trắng Xanh Mint', 'giay-adidas-coast-star-nu-trang-xanh-mint', '<p>Một mẫu gi&agrave;y thời trang basic, trẻ trung, rất dễ phối hợp đồ với c&aacute;c kiểu quần &aacute;o kh&aacute;c nhau. Adidas Coast Star l&agrave; mẫu gi&agrave;y sẽ chiều l&ograve;ng được rất nhiều t&iacute;n đồ y&ecirc;u thời trang. Bạn sẽ kh&ocirc;ng bao giờ phải lo lắng về đ&ocirc;i gi&agrave;y của bạn sẽ bị lỗi mốt qua thời gian. Chất liệu da sang trọng, tinh tế.&nbsp;</p>\r\n\r\n<p><strong><em>Gi&agrave;y adidas Coast Star -&nbsp; ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</em></strong></p>\r\n\r\n<p><img alt=\"Giày adidas Coast Star Nữ Trắng Xanh Mint\" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-coast-star-nu-trang-xanh-mint-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas Coast Star Nữ Trắng Xanh Mint\" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-coast-star-nu-trang-xanh-mint-02.jpg\" /></p>', 100, 1790000, 1690000, '14-12-19191919-2059365410-giay-adidas-coast-star-nu-trang-xanh-mint-01-800x800_0.jpg', 15, 12, 1, '2019-12-14 09:04:38', '2019-12-14 09:04:38'),
(39, 'Giày adidas Coast Star Nam Trắng Xanh', 'giay-adidas-coast-star-nam-trang-xanh', '<p>Một mẫu gi&agrave;y thời trang basic, trẻ trung, rất dễ phối hợp đồ với c&aacute;c kiểu quần &aacute;o kh&aacute;c nhau. Adidas Coast Star l&agrave; mẫu gi&agrave;y sẽ chiều l&ograve;ng được rất nhiều t&iacute;n đồ y&ecirc;u thời trang. Bạn sẽ kh&ocirc;ng bao giờ phải lo lắng về đ&ocirc;i gi&agrave;y của bạn sẽ bị lỗi mốt qua thời gian. Chất liệu da sang trọng, tinh tế.&nbsp;</p>\r\n\r\n<p><strong><em>Gi&agrave;y adidas Coast Star -&nbsp; ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</em></strong></p>\r\n\r\n<p><img alt=\"Giày adidas Coast Star Nam Trắng Xanh \" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-coast-star-nam-trang-xanh-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas Coast Star Nam Trắng Xanh \" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-coast-star-nam-trang-xanh-02.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas Coast Star Nam Trắng Xanh \" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-coast-star-nam-trang-xanh-03.jpg\" /></p>', 50, 1690000, 1600000, '14-12-19191919-1765524855-giay-adidas-coast-star-nam-trang-xanh-01-800x800_0.jpg', 15, 11, 1, '2019-12-14 09:06:48', '2019-12-14 09:06:48'),
(40, 'Giày adidas Superstar Nữ - Golden', 'giay-adidas-superstar-nu-golden', '<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><strong><em><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><span style=\"font-size:16px\">Gi&agrave;y&nbsp;<a href=\"https://myshoes.vn/giay-adidas\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; padding:0px; border:0px; outline:0px; color:#2c5989; text-decoration:none; cursor:pointer; box-sizing:border-box\" target=\"_blank\">adidas</a>&nbsp;Superstar l&agrave; mẫu gi&agrave;y mang t&iacute;nh biểu tượng của adidas v&agrave; c&oacute; l&agrave; một trong những sản phẩm c&oacute; ảnh hưởng lớn nhất trong lịch sử ng&agrave;nh gi&agrave;y d&eacute;p.</span></span></em></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\">Với thiết kế đơn giản nhưng đẹp mắt, gi&agrave;y adidas Superstar cho bạn nữ những c&aacute;ch phối đồ thời trang đa dạng v&agrave; ấn tượng. Chất lượng đến từ c&ocirc;ng nghệ sản xuất gi&agrave;y của adidas lu&ocirc;n cho bạn sự y&ecirc;n t&acirc;m v&agrave; tự tin mọi l&uacute;c mọi nơi.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><strong><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><span style=\"font-size:16px\">Gi&agrave;y adidas Superstar Nữ ch&iacute;nh h&atilde;ng tại&nbsp;Myshoes.vn&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày adidas Superstar Nữ - Golden\" src=\"https://myshoes.vn/image/data/adidas%202019/thang%206/giay-adidas-super-star-golden-nu-01.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày adidas Superstar Nữ - Golden\" src=\"https://myshoes.vn/image/data/adidas%202019/thang%206/giay-adidas-super-star-golden-nu-02.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 66, 2340000, 2200000, '14-12-19191919-1935871023-giay-adidas-super-star-golden-nu-01-800x800_0.jpg', 15, 12, 1, '2019-12-14 09:09:15', '2019-12-14 09:09:15'),
(41, 'Giày Lacoste Bayliss Premium 319 Nam - Đen', 'giay-lacoste-bayliss-premium-319-nam-den', '<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:times new roman,times,serif\"><span style=\"font-size:16px\">Với lối thiết kế sang trọng, tinh tế từ l&acirc;u Lacoste chưa bao giờ khiến bạn phải thất vọng! Một mẫu gi&agrave;y m&agrave; bạn c&oacute; thể dễ d&agrave;ng đa dạng kết hợp với c&aacute;c loại kiểu d&aacute;ng quần &aacute;o kh&aacute;c nhau- Lacoste Bayliss Premium 319. M&agrave;u sắc trẻ trung,năng động, tươi trẻ. Chất liệu da mềm mại được c&aacute;c nh&agrave; sản xuất tin tưởng lựa chọn.Đặc biệt, logo h&igrave;nh C&aacute; Sấu được in ch&igrave;m l&ecirc;n phần th&acirc;n gi&agrave;y tạo cảm gi&aacute;c v&ocirc; c&ugrave;ng nổi bật, sang chảnh cho đ&ocirc;i gi&agrave;y.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><strong><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><span style=\"font-size:16px\">Gi&agrave;y Lacoste Bayliss Premium 319 ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</span></span></strong></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày Lacoste Bayliss Premium 319 Nam - Đen \" src=\"https://myshoes.vn/image/data/lacoste%202019/thang%206/giay-lacoste-bayliss-premium-319-nam-den-01.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày Lacoste Bayliss Premium 319 Nam - Đen \" src=\"https://myshoes.vn/image/data/lacoste%202019/thang%206/giay-lacoste-bayliss-premium-319-nam-den-02.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 78, 2590000, 2400000, '14-12-19191919-1431851945-giay-lacoste-bayliss-premium-319-nam-den-01-800x800_0.jpg', 17, 15, 1, '2019-12-14 09:11:43', '2019-12-14 09:11:43'),
(42, 'Giày Lacoste Chaymon 119 Nam - Trắng Navy', 'giay-lacoste-chaymon-119-nam-trang-navy', '<p>Gi&agrave;y Lacoste Chaymon 119&nbsp;<em>&nbsp;được thiết kế với phong c&aacute;ch cổ điển sang trọng đặc trưng của thương hiệu Lacoste.&nbsp;</em>Gi&agrave;y Lacoste Chaymon 119&nbsp;được lấy cảm hứng từ Lacoste Nivolor 119<em>&nbsp;được l&agrave;m từ da cao cấp, mềm v&agrave; c&oacute; độ bền cao, kh&ocirc;ng nhăn kh&ocirc;ng thấm nước. C&aacute;c đường chỉ kh&acirc;u thẳng h&agrave;ng rất tinh tế v&agrave; chắc chắn. Phần đế gi&agrave;y được l&agrave;m từ cao su lưu h&oacute;a được h&atilde;ng Lacoste nghi&ecirc;n cứu v&agrave; thử nghiệm mang lại độ bền v&agrave; độ &ecirc;m tuyệt đối cho đ&ocirc;i ch&acirc;n của bạn.</em></p>\r\n\r\n<p>Lacoste&nbsp;Chaymon 119 Nam - Trắng l&agrave; lựa chọn tuyệt vời cho bạn phong c&aacute;ch qu&yacute; &ocirc;ng lịch l&atilde;m m&agrave; kh&ocirc;ng k&eacute;m phần trẻ trung, c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img alt=\"Giày Lacoste Chaymon 119 Nam - Trắng Navy \" src=\"https://myshoes.vn/image/data/lacoste%202019/thang%206/giay-lacoste-chaymon-119-nam-trang-navy-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Lacoste Chaymon 119 Nam - Trắng Navy \" src=\"https://myshoes.vn/image/data/lacoste%202019/thang%206/giay-lacoste-chaymon-119-nam-trang-navy-02.jpg\" /></p>', 55, 1500000, 1290000, '14-12-19191919-2050823787-giay-lacoste-chaymon-119-nam-trang-navy-01-600x600_0.jpg', 17, 15, 1, '2019-12-14 09:14:43', '2019-12-14 09:14:43'),
(43, 'Giày Lacoste Europa 319 Nam - Trắng', 'giay-lacoste-europa-319-nam-trang', '<p><strong><em>Gi&agrave;y Lacoste Europa 319 mang phong c&aacute;ch cổ điển v&agrave; v&ocirc; c&ugrave;ng lịch l&atilde;m. Đ&acirc;y l&agrave; một trong những mẫu gi&agrave;y rất nổi tiếng của Lacoste v&agrave; được h&agrave;ng triệu người tr&ecirc;n thế giới y&ecirc;u th&iacute;ch.</em></strong></p>\r\n\r\n<p>Lacoste Europa được l&agrave; từ da cao cấp với viền kẻ được may cầu kỳ đẹp mắt đặc trưng của Lacoste, đế gi&agrave;y bằng cao su tự nhi&ecirc;n cho độ bền chắc l&acirc;u d&agrave;i.&nbsp;Đ&acirc;y l&agrave; mẫy gi&agrave;y c&oacute; thể kết hợp với rất nhiều trang phục cả quần jean lẫn quần &acirc;u, d&ugrave; trường hợp n&agrave;o đều to&aacute;t n&ecirc;n vẻ lịch l&atilde;m rất Ch&acirc;u &Acirc;u.</p>\r\n\r\n<p><strong>Gi&agrave;y Lacoste Europa 319 ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày Lacoste Europa 319 Nam - Trắng\" src=\"https://myshoes.vn/image/data/lacoste%202019/thang%206/giay-lacoste-europa-319-nam-trang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Lacoste Europa 319 Nam - Trắng\" src=\"https://myshoes.vn/image/data/lacoste%202019/thang%206/giay-lacoste-europa-319-nam-trang-02.jpg\" /></p>', 99, 2450000, 0, '14-12-19191919-1019399374-giay-lacoste-europa-319-nam-trang-01-600x600_0.jpg', 17, 15, 1, '2019-12-14 09:16:28', '2019-12-14 09:16:28'),
(44, 'Giày Lacoste Giron - Trắng', 'giay-lacoste-giron-trang', '<p>Gi&agrave;y Lacoste Giron l&agrave; đ&ocirc;i gi&agrave;y thời trang c&oacute; thiết kế mang hơi thở hiện đại v&agrave; kiểu d&aacute;ng thể thao cực k&igrave; bắt mắt. Upper của gi&agrave;y được sử dụng chất liệu da cao cấp kết hợp c&ugrave;ng c&aacute;c chi tiết bằng da lộn ở ph&iacute;a trước v&agrave; sau g&oacute;t. Đệm giữa của đ&ocirc;i gi&agrave;y v&ocirc; c&ugrave;ng &ecirc;m &aacute;i c&ugrave;ng với đế ngo&agrave;i bền bỉ chắc chắn, bạn c&oacute; thể mang đ&ocirc;i gi&agrave;y suốt cả ng&agrave;y m&agrave; vẫn cảm thấy thoải m&aacute;i v&agrave; dễ chịu.&nbsp;</p>\r\n\r\n<p><strong>Gi&agrave;y Lacoste Giron ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product/lacoste/Giay-Lacoste-Giron-Trang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product/lacoste/Giay-Lacoste-Giron-Trang-02.jpg\" /></p>', 55, 1999000, 0, '14-12-19191919-562950511-giay-lacoste-giron-trang-01-600x600_0.jpg', 17, 16, 1, '2019-12-14 09:18:46', '2019-12-14 09:18:46'),
(45, 'Giày Puma Drift Cat 7 Nam - Đen Trắng', 'giay-puma-drift-cat-7-nam-den-trang', '<p>Với thiết kế thon gọn nhưng vẫn rất thời thượng, trẻ trung. Phần Upper ph&iacute;a tr&ecirc;n được sử dụng l&agrave; bằng da mang lại sự sang chảnh, trẻ trung. Đặc biệt ph&iacute;a trước c&ograve;n c&oacute; logo của Puma gi&uacute;p cho đ&ocirc;i gi&agrave;y đ&atilde; đẹp b&acirc;y giờ c&ograve;n nổi bật hơn nữa. Phần đế cao su gi&uacute;p bạn tự tin sải bước lan toả kh&iacute; chất.</p>\r\n\r\n<p>Gi&agrave;y Puma Drift Cat 7 Nam ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</p>\r\n\r\n<p><img alt=\"Giày Puma Drift Cat 7 Nam - Đen Trắng\" src=\"https://myshoes.vn/image/data/PUMA%202019/thang7/giay-puma-bmw-mms-drift-cat-7-nam-den-trang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Puma Drift Cat 7 Nam - Đen Trắng\" src=\"https://myshoes.vn/image/data/PUMA%202019/thang7/giay-puma-bmw-mms-drift-cat-7-nam-den-trang-02.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Puma Drift Cat 7 Nam - Đen Trắng\" src=\"https://myshoes.vn/image/data/PUMA%202019/thang7/giay-puma-bmw-mms-drift-cat-7-nam-den-trang-03.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>', 199, 2790000, 2590000, '14-12-19191919-2091540718-giay-puma-bmw-mms-drift-cat-7-nam-den-trang-01-600x600_0.jpg', 19, 19, 1, '2019-12-14 09:21:16', '2019-12-14 09:21:16');
INSERT INTO `product` (`id`, `name`, `slug`, `description`, `quantity`, `price`, `promotional`, `image`, `idCategory`, `idProductType`, `status`, `created_at`, `updated_at`) VALUES
(46, 'GIÀY PUMA VISTA NAM- ĐỎ', 'giay-puma-vista-nam-do', '<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><span style=\"font-size:16px\">Gi&agrave;y&nbsp;Puma Vista</span></span><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><span style=\"font-size:16px\">&nbsp;với kiểu d&aacute;ng v&ocirc; c&ugrave;ng thon gọn v&agrave; đẹp mắt, quả thật n&oacute; l&agrave; một đ&ocirc;i gi&agrave;y thời trang m&agrave; ch&uacute;ng ta n&ecirc;n c&oacute; trong tủ gi&agrave;y của m&igrave;nh. Đ&ocirc;i gi&agrave;y sử dụng chất liệu da lộn tr&ecirc;n upper v&agrave; đế gi&agrave;y cao su nguy&ecirc;n chất v&ocirc; c&ugrave;ng mềm v&agrave; &ecirc;m &aacute;i. Logo Puma được đặt tại lưỡi g&agrave; v&agrave; g&oacute;t gi&agrave;y l&agrave;m tăng sự thời thượng cho phong c&aacute;ch của bạn.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><strong>Gi&agrave;y Puma</strong><strong><span style=\"color:#6e6e6e\">&nbsp;</span><span style=\"color:#808080\">Vista</span></strong>&nbsp;<strong>Nam ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><strong>&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày Puma Vista Nam- Đỏ\" src=\"https://myshoes.vn/image/data/PUMA%202019/giay-puma-vista-nam-do-01.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày Puma Vista Nam- Đỏ\" src=\"https://myshoes.vn/image/data/PUMA%202019/giay-puma-vista-nam-do-02.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày Puma Vista Nam- Đỏ\" src=\"https://myshoes.vn/image/data/PUMA%202019/giay-puma-vista-nam-do-03.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>', 88, 2100000, 1990000, '14-12-19191919-9397203-puma-vista-nam-do-01-600x600_0.jpg', 19, 19, 1, '2019-12-14 09:22:54', '2019-12-14 09:22:54'),
(47, 'Giày Puma Vista Nam- Xanh Camo', 'giay-puma-vista-nam-xanh-camo', '<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><span style=\"font-size:16px\">Gi&agrave;y&nbsp;Puma Vista</span></span><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><span style=\"font-size:16px\">&nbsp;với kiểu d&aacute;ng v&ocirc; c&ugrave;ng thon gọn v&agrave; đẹp mắt, quả thật n&oacute; l&agrave; một đ&ocirc;i gi&agrave;y thời trang m&agrave; ch&uacute;ng ta n&ecirc;n c&oacute; trong tủ gi&agrave;y của m&igrave;nh. Đ&ocirc;i gi&agrave;y sử dụng chất liệu da lộn tr&ecirc;n upper v&agrave; đế gi&agrave;y cao su nguy&ecirc;n chất v&ocirc; c&ugrave;ng mềm v&agrave; &ecirc;m &aacute;i. Logo Puma được đặt tại lưỡi g&agrave; v&agrave; g&oacute;t gi&agrave;y l&agrave;m tăng sự thời thượng cho phong c&aacute;ch của bạn.</span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><strong>Gi&agrave;y Puma</strong><strong><span style=\"color:#6e6e6e\">&nbsp;</span><span style=\"color:#808080\">Vista</span></strong>&nbsp;<strong>Nam ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><span style=\"font-family:&quot;times new roman&quot;,times,serif\"><strong>&nbsp;</strong></span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày Puma Vista Nam- Xanh Camo\" src=\"https://myshoes.vn/image/data/PUMA%202019/thang7/giay-puma-vista-nam-xanh-camo-01.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-size:13px\"><span style=\"color:#333745\"><span style=\"font-family:Helvetica,Arial,sans-serif\"><img alt=\"Giày Puma Vista Nam- Xanh Camo\" src=\"https://myshoes.vn/image/data/PUMA%202019/thang7/giay-puma-vista-nam-xanh-camo-02.jpg\" style=\"-webkit-font-smoothing:antialiased; -webkit-tap-highlight-color:transparent; border:0px; box-sizing:border-box; height:auto; max-width:100%; outline:0px; padding:0px\" /></span></span></span></p>', 50, 1890000, 1790000, '14-12-19191919-2075644808-puma-vista-nam-xanh-camo-01-600x600_0.jpg', 19, 19, 1, '2019-12-14 09:24:44', '2019-12-14 09:24:44'),
(48, 'Giày Puma BMW MMS Speed Cat Evo Synth Nam - Trắng', 'giay-puma-bmw-mms-speed-cat-evo-synth-nam-trang', '<p>Gi&agrave;y Puma BMW MMS Speed Cat Evo Synth Nam&nbsp;l&agrave; mẫu gi&agrave;y được thiết kế rất độc đ&aacute;o với kiểu d&aacute;ng đẹp v&agrave; thời trang. Đ&ocirc;i gi&agrave;y nổi bật với upper bằng da, thiết kế cổ điển v&agrave; c&oacute; độ thoải m&aacute;i tuyệt vời khi mang.Đặc biệt với phần đế ngo&agrave;i cao su sẽ đem lại cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.Với phong c&aacute;ch thể thao khoẻ khoắn được lấy cảm hứng từ những chiếc m&ocirc; t&ocirc; BMW. Đ&acirc;y chắc chắn&nbsp;sẽ l&agrave; một sự lựa chọn ho&agrave;n hảo cho phong c&aacute;ch vừa lịch l&atilde;m, vừa năng động thể thao.</p>\r\n\r\n<p><strong>Gi&agrave;y Puma BMW MMS Speed Cat Evo Synth Nam ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>', 100, 2990000, 2790000, '14-12-19191919-1795079472-puma-bmw-mms-speed-cat-evo-synth-trang-01-800x800_0.jpg', 19, 19, 1, '2019-12-14 09:27:05', '2019-12-14 09:27:05'),
(49, 'Giày Puma BMW MMS Court Perf Nữ - Trắng Đen', 'giay-puma-bmw-mms-court-perf-nu-trang-den', '<p>Gi&agrave;y&nbsp;Puma BMW MMS Court Perf Nam&nbsp;l&agrave; mẫu gi&agrave;y được thiết kế rất độc đ&aacute;o với kiểu d&aacute;ng đẹp v&agrave; thời trang. Đ&ocirc;i gi&agrave;y nổi bật với upper bằng da, thiết kế cổ điển v&agrave; c&oacute; độ thoải m&aacute;i tuyệt vời khi mang.Đặc biệt với phần đế ngo&agrave;i cao su sẽ đem lại cảm gi&aacute;c thoải m&aacute;i cho người sử dụng.Với phong c&aacute;ch thể thao khoẻ khoắn được lấy cảm hứng từ những chiếc m&ocirc; t&ocirc; BMW. Đ&acirc;y chắc chắn sẽ l&agrave; mẫu gi&agrave;y thời trang sẽ gi&uacute;p bạn sải bước tự tin tr&ecirc;n mọi cung đường.&nbsp;</p>\r\n\r\n<p><img alt=\"GIÀY PUMA BMW MMS COURT PERF NAM - TRẮNG ĐEN\" src=\"https://myshoes.vn/image/data/nike%202019/PUMA%202019/giay-puma-bmw-mms-court-perf-trang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"GIÀY PUMA BMW MMS COURT PERF NAM - TRẮNG ĐEN\" src=\"https://myshoes.vn/image/data/nike%202019/PUMA%202019/giay-puma-bmw-mms-court-perf-trang-02.jpg\" /></p>\r\n\r\n<p><img alt=\"GIÀY PUMA BMW MMS COURT PERF NAM - TRẮNG ĐEN\" src=\"https://myshoes.vn/image/data/nike%202019/PUMA%202019/giay-puma-bmw-mms-court-perf-trang-03.jpg\" /></p>', 50, 2490000, 0, '14-12-19191919-2114118167-1giay-puma-bmw-mms-court-perf-trang-01-600x600_0.jpg', 19, 20, 1, '2019-12-14 09:32:02', '2019-12-14 09:32:02'),
(50, 'GIÀY THỂ THAO PUMA CARSON RUNNER Nữ - ĐEN TRẮNG', 'giay-the-thao-puma-carson-runner-nu-den-trang', '<p><em>Gi&agrave;y Thể Thao Puma Carson Runner c&oacute; thiết kế đẹp mắt, rất c&aacute; t&iacute;nh v&agrave; v&ocirc; c&ugrave;ng thời trang. Đ&ocirc;i gi&agrave;y đi rất nhẹ v&agrave; đem lại cảm gi&aacute;c thật sự thoải m&aacute;i khi sử dụng đ&ocirc;i gi&agrave;y h&agrave;ng ng&agrave;y.</em></p>\r\n\r\n<p><strong>Gi&agrave;y Thể Thao Puma Carson Runner Nam ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product10/19.7.16/giay-puma-carson-runner-den-trang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product10/19.7.16/giay-puma-carson-runner-den-trang-02.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product10/19.7.16/giay-puma-carson-runner-den-trang-03.jpg\" /></p>', 50, 1790000, 1590000, '14-12-19191919-1523748353-2giay-puma-carson-runner-den-trang-01-600x600_0.jpg', 19, 19, 1, '2019-12-14 09:33:50', '2019-12-14 09:33:50'),
(51, 'Giày ASICS GEL-GAME 5 Nữ', 'giay-asics-gel-game-5-nu', '<p><em>Gi&agrave;y ASICS GEL-GAME 5 l&agrave; mẫu gi&agrave;y đặc biệt hỗ trợ cho m&ocirc;n thể thao tennis, gi&uacute;p bạn được chơi hết m&igrave;nh, thể hiện hết m&igrave;nh với tất cả khả năng tốt nhất của bản th&acirc;n tr&ecirc;n s&acirc;n.</em><br />\r\nNổi bật hơn cả l&agrave; phần upper của gi&agrave;y được thiết kế mang lại sự tho&aacute;ng kh&iacute; m&agrave; vẫn bền bỉ, hỗ trợ tuyệt vời cho b&agrave;n ch&acirc;n, mang lại sự ổn định khi luyện tập. Ngo&agrave;i ra,&nbsp;ASICS GEL-GAME 5 &nbsp;l&agrave; sự t&iacute;ch hợp của nhiều c&ocirc;ng nghệ, với n&oacute; bạn sẽ c&oacute; được những trải nghiệm tuyệt vời v&agrave; thoải m&aacute;i nhất, cho hiệu suất luyện tập tốt nhất.</p>\r\n\r\n<p><strong>Gi&agrave;y ASICS GEL-GAME 5 ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày ASICS GEL-GAME 5 Nữ\" src=\"https://myshoes.vn/image/data/product/10.5.16/Giay-nu-ASICS-GEL-GAME-5-655Y0193-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày ASICS GEL-GAME 5 Nữ\" src=\"https://myshoes.vn/image/data/product/10.5.16/Giay-nu-ASICS-GEL-GAME-5-655Y0193-02.jpg\" /></p>', 20, 1780000, 1690000, '14-12-19191919-1508047406-agiay-nu-asics-gel-game-5-655y0193-01-800x800_0.jpg', 18, 18, 1, '2019-12-14 09:35:50', '2019-12-14 09:35:50'),
(52, 'GIÀY ASICS GEL-QUANTUM 360 NỮ (T5J6Q-073)', 'giay-asics-gel-quantum-360-nu-(t5j6q-073)', '<p><em>Gi&agrave;y Nữ Asics GEL-Quantum 360 thật sự l&agrave; đ&ocirc;i gi&agrave;y của sự s&aacute;ng tạo, phong c&aacute;ch v&agrave; chuy&ecirc;n nghiệp. Đ&acirc;y l&agrave; mẫu gi&agrave;y chạy bộ tuyệt vời của Asics - g&atilde; khổng lồ đến từ Nhật Bản.</em></p>\r\n\r\n<p>Asics GEL-Quantum 360 ở phần Midsole được trang bị c&ocirc;ng nghệ đệm Gel hỗ trợ lực sock tốt chưa từng c&oacute;, đ&ocirc;i gi&agrave;y n&agrave;y tạo cho người chạy một sự ổn định đến kinh ngạc. C&oacute; lẽ, nếu bạn đ&atilde; từng xỏ đ&ocirc;i gi&agrave;y n&agrave;y chạy thử chắc sẽ kh&ocirc;ng c&ograve;n muốn quay lại sử dụng đ&ocirc;i gi&agrave;y cũ nữa.</p>\r\n\r\n<p>Kh&ocirc;ng c&ograve;n nghi ngờ g&igrave; nữa, Asics GEL-Quantum 360 l&agrave; một trong những đ&ocirc;i gi&agrave;y chạy bộ tốt nhất b&ecirc;n cạnh c&aacute;c sản phẩm gi&agrave;y chạy bộ của&nbsp;<a href=\"https://myshoes.vn/giay-nike\" target=\"_blank\">Nike</a>.</p>\r\n\r\n<p><strong>Gi&agrave;y Asics GEL-Quantum 360 ch&iacute;nh h&atilde;ng tại&nbsp;<a href=\"https://myshoes.vn/\" target=\"_blank\">Myshoes.vn</a>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày Nữ Asics GEL-Quantum 360\" src=\"https://myshoes.vn/image/data/product/8.3.16/T5J6Q_073_P1.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Nữ Asics GEL-Quantum 360\" src=\"https://myshoes.vn/image/data/product/8.3.16/T5J6Q_073_P2.jpg\" /></p>', 49, 1980000, 0, '14-12-19191919-721852580-t5j6q_073_p1-600x600_0.jpg', 18, 18, 1, '2019-12-14 09:37:09', '2019-12-14 09:37:09'),
(53, 'Giày Asics GEL-Quantum 360 Nữ (T5J6Q-938)', 'giay-asics-gel-quantum-360-nu-(t5j6q-938)', '<p><em>Gi&agrave;y Nữ Asics GEL-Quantum 360 thật sự l&agrave; đ&ocirc;i gi&agrave;y của sự s&aacute;ng tạo, phong c&aacute;ch v&agrave; chuy&ecirc;n nghiệp. Đ&acirc;y l&agrave; mẫu gi&agrave;y chạy bộ tuyệt vời của Asics - g&atilde; khổng lồ đến từ Nhật Bản.</em></p>\r\n\r\n<p>Asics GEL-Quantum 360 ở phần Midsole được trang bị c&ocirc;ng nghệ đệm Gel hỗ trợ lực sock tốt chưa từng c&oacute;, đ&ocirc;i gi&agrave;y n&agrave;y tạo cho người chạy một sự ổn định đến kinh ngạc. C&oacute; lẽ, nếu bạn đ&atilde; từng xỏ đ&ocirc;i gi&agrave;y n&agrave;y chạy thử chắc sẽ kh&ocirc;ng c&ograve;n muốn quay lại sử dụng đ&ocirc;i gi&agrave;y cũ nữa.</p>\r\n\r\n<p>Kh&ocirc;ng c&ograve;n nghi ngờ g&igrave; nữa, Asics GEL-Quantum 360 l&agrave; một trong những đ&ocirc;i gi&agrave;y chạy bộ tốt nhất b&ecirc;n cạnh c&aacute;c sản phẩm gi&agrave;y chạy bộ của&nbsp;<a href=\"https://myshoes.vn/giay-nike\" target=\"_blank\">Nike</a>.</p>\r\n\r\n<p><strong>Gi&agrave;y Asics GEL-Quantum 360 ch&iacute;nh h&atilde;ng tại&nbsp;<a href=\"https://myshoes.vn/\" target=\"_blank\">Myshoes.vn</a>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày nữ Asics GEL-Quantum 360\" src=\"https://myshoes.vn/image/data/product/8.3.16/giay-nu-Asics-GEL-Quantum-360%20-T5J6Q-938-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày nữ Asics GEL-Quantum 360\" src=\"https://myshoes.vn/image/data/product/8.3.16/giay-nu-Asics-GEL-Quantum-360%20-T5J6Q-938-02.jpg\" /></p>', 50, 1990000, 1890000, '14-12-19191919-1137547763-bgiay-nu-asics-gel-quantum-360-t5j6q-938-01-800x800_0.jpg', 18, 18, 1, '2019-12-14 09:38:50', '2019-12-14 09:38:50'),
(54, 'Giày Asics GEL-Lyte III - Đen', 'giay-asics-gel-lyte-iii-den', '<p><strong><em>Gi&agrave;y Asics GEL-Lyte III được người y&ecirc;u gi&agrave;y tr&ecirc;n to&agrave;n thế giới nhắc đến như l&agrave; một mẫu sneaker kinh điển m&agrave; bạn kh&ocirc;ng thể bỏ qua.</em></strong></p>\r\n\r\n<p>Asics GEL-Lyte III ra đời lần đầu ti&ecirc;n v&agrave;o những năm 90s, đ&acirc;y l&agrave; một mẫu gi&agrave;y v&ocirc; c&ugrave;ng s&aacute;ng tạo v&agrave; đột ph&aacute; trong c&ocirc;ng nghệ thiết kế v&agrave; sản xuất. Điểm nổi bật nhất phải nhắc đến l&agrave; đ&acirc;y l&agrave; mẫu gi&agrave;y đầu ti&ecirc;n thiết kế lưỡi g&agrave; k&eacute;p gi&uacute;p cho việc xỏ gi&agrave;y dễ d&agrave;ng v&agrave; kh&ocirc;ng bị lệch. Phần Midsole được thiết kế v&ocirc; c&ugrave;ng phức tạp với c&aacute;c với độ d&agrave;y tăng dần từ thấp đến cao.</p>\r\n\r\n<p>&nbsp;Asics GEL-Lyte III gần như trở th&agrave;nh một biểu tượng của h&atilde;ng gi&agrave;y nổi tiếng Asics n&oacute; đ&atilde; gi&uacute;p danh tiếng của h&atilde;ng gi&agrave;y Nhật bản vang xa tr&ecirc;n to&agrave;n cầu.</p>\r\n\r\n<p><strong>Gi&agrave;y Asics GEL-Lyte III ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product/asics/Giay-Ascis-LyteIII-Nam-Den-01.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product/asics/Giay-Ascis-LyteIII-Nam-Den-02.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product/asics/Giay-Ascis-LyteIII-Nam-Den-03.jpg\" /></p>', 70, 1870000, 0, '14-12-19191919-637816610-sgiay-ascis-lyteiii-nam-den-01-800x800_0.jpg', 18, 17, 1, '2019-12-14 09:40:21', '2019-12-14 09:40:21'),
(55, 'Giày Asics GEL-Nimbus19 Nam - Xanh Đỏ', 'giay-asics-gel-nimbus19-nam-xanh-do', '<p>Gi&agrave;y Asics GEL-Nimbus&nbsp;19 l&agrave; đ&ocirc;i gi&agrave;y được ứng dụng c&ocirc;ng nghệ FlyteFoam&trade; sau khi được thay đổi ho&agrave;n to&agrave;n, mang lại sự thoải m&aacute;i tối ưu nhất v&agrave; một bộ đệm đ&agrave;n hồi cho b&agrave;n ch&acirc;n người sử dụng. Upper lưới dệt 3D độc đ&aacute;o, kh&ocirc;ng đường may, c&oacute; thể linh hoạt theo từng chuyển động ch&acirc;n một c&aacute;ch tự nhi&ecirc;n nhất.<strong>Gi&agrave;y Asics GEL-Nimbus&reg; 19 Nam&nbsp;ch&iacute;nh h&atilde;ng tại&nbsp;Myshoes.vn&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product10/8.8.17/giay-asics-gel-nimbus-19-nam-xanh-do-01.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product10/8.8.17/giay-asics-gel-nimbus-19-nam-xanh-do-02.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product10/8.8.17/giay-asics-gel-nimbus-19-nam-xanh-do-03.jpg\" /></p>', 100, 2850000, 2500000, '14-12-19191919-1852081129-ssgiay-asics-gel-nimbus-19-nam-xanh-do-01-800x800_0.jpg', 18, 17, 1, '2019-12-14 09:44:09', '2019-12-14 09:44:09'),
(56, 'GIÀY ASICS GEL-KAYANO 24 NAM - ĐEN VÀNG', 'giay-asics-gel-kayano-24-nam-den-vang', '<p>Gi&agrave;y Asics Gel-Kayano 24 l&agrave; thiết kế gi&agrave;y cho những cuộc đua d&agrave;i. Đ&ocirc;i gi&agrave;y đặc biệt với thiết kế nhẹ kh&ocirc;ng ngờ, sự thoải m&aacute;i đến từ bộ đệm đặc biệt bền bỉ với c&ocirc;ng nghệ FlyteFoam, vừa nhẹ vừa linh hoạt với khả năng hỗ trợ đ&aacute;ng ngạc nhi&ecirc;n. B&ecirc;n cạnh đ&oacute;, Asics Gel-Kayano 24 c&ograve;n được thiết kế gi&uacute;p điều chỉnh t&igrave;nh trạng lật m&aacute; trong của b&agrave;n ch&acirc;n, cho mỗi bước ch&acirc;n được vững v&agrave;ng v&agrave; ổn định.<strong>Gi&agrave;y Asics Gel-Kayano 24 Nam&nbsp;ch&iacute;nh h&atilde;ng tại&nbsp;Myshoes.vn&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày Asics Gel-Kayano 24\" src=\"https://myshoes.vn/image/data/product10/8.8.17/giay-asics-gel-kayano-24-nam-den-vang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Asics Gel-Kayano 24\" src=\"https://myshoes.vn/image/data/product10/8.8.17/giay-asics-gel-kayano-24-nam-den-vang-02.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Asics Gel-Kayano 24\" src=\"https://myshoes.vn/image/data/product10/8.8.17/giay-asics-gel-kayano-24-nam-den-vang-03.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày Asics Gel-Kayano 24\" src=\"https://myshoes.vn/image/data/product10/8.8.17/giay-asics-gel-kayano-24-nam-den-vang-04.jpg\" /></p>', 100, 2890000, 2700000, '14-12-19191919-1507709545-asgiay-asics-gel-kayano-24-nam-den-vang-01-600x600_0.jpg', 18, 17, 1, '2019-12-14 09:45:32', '2019-12-14 09:45:32'),
(57, 'GIÀY ASICS GEL-CLASSIC NAM - ĐEN', 'giay-asics-gel-classic-nam-den', '<p>Gi&agrave;y Asics GEL-Classic l&agrave; một mẫu gi&agrave;y mang phong c&aacute;ch cổ điển v&agrave; l&agrave; một trong những thiết kế c&oacute; t&iacute;nh lưu trữ nguy&ecirc;n bản của thương hiệu Asics. Đ&ocirc;i gi&agrave;y mang d&aacute;ng vẻ khiến người h&acirc;m mộ li&ecirc;n tưởng đến mẫu gi&agrave;y GEL-Trendy từ những năm 90 của thế kỉ trước. Tuy nhi&ecirc;n, n&oacute; đ&atilde; được cải tiến từ chất liệu đến c&ocirc;ng nghệ để đem lại sự thoải m&aacute;i cho người sử dụng.</p>\r\n\r\n<p><strong>Gi&agrave;y Asics GEL-Classic ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product8/2.12..16/giay-Asics-GEL-Classic-nam-den-01.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product8/2.12..16/giay-Asics-GEL-Classic-nam-den-02.jpg\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://myshoes.vn/image/data/product8/2.12..16/giay-Asics-GEL-Classic-nam-den-03.jpg\" /></p>', 100, 2584000, 0, '14-12-19191919-435313522-dgiay-asics-gel-classic-nam-den-01-800x800_0.jpg', 18, 17, 1, '2019-12-14 09:46:39', '2019-12-14 09:46:39'),
(58, 'GIÀY ADIDAS COASTs STAR NỮ TRẮNG XANH MINT', 'giay-adidas-coasts-star-nu-trang-xanh-mint', '<p>Một mẫu gi&agrave;y thời trang basic, trẻ trung, rất dễ phối hợp đồ với c&aacute;c kiểu quần &aacute;o kh&aacute;c nhau. Adidas Coast Star l&agrave; mẫu gi&agrave;y sẽ chiều l&ograve;ng được rất nhiều t&iacute;n đồ y&ecirc;u thời trang. Bạn sẽ kh&ocirc;ng bao giờ phải lo lắng về đ&ocirc;i gi&agrave;y của bạn sẽ bị lỗi mốt qua thời gian. Chất liệu da sang trọng, tinh tế.&nbsp;</p>\r\n\r\n<p><strong><em>Gi&agrave;y adidas Coast Star -&nbsp; ch&iacute;nh h&atilde;ng tại Myshoes.vn được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</em></strong></p>\r\n\r\n<p><img alt=\"Giày adidas Coast Star Nữ Trắng Xanh Mint\" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-coast-star-nu-trang-xanh-mint-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas Coast Star Nữ Trắng Xanh Mint\" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-coast-star-nu-trang-xanh-mint-02.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas Coast Star Nữ Trắng Xanh Mint\" src=\"https://myshoes.vn/image/data/adidas%202019/22.3.19/giay-adidas-coast-star-nu-trang-xanh-mint-03.jpg\" /></p>', 100, 1500000, 0, '14-12-19191919-1545085493-zgiay-adidas-coast-star-nu-trang-xanh-mint-01-600x600_0.jpg', 20, 22, 1, '2019-12-14 10:42:18', '2019-12-14 10:42:18'),
(59, 'GIÀY ADIDAS VS ADVANTAGE CLS NAM - TRẮNG', 'giay-adidas-vs-advantage-cls-nam-trang', '<p>Với thiết kế đơn giản nhưng lại v&ocirc; c&ugrave;ng thanh lịch. Phần Upper của gi&agrave;y được c&aacute;c nh&agrave; thiết kế của Adidas sử dụng bằng da bạn tăng th&ecirc;m độ lịch l&atilde;m khi mang. Với c&aacute;c đường kim mũi chỉ ho&agrave;n hảo đến từng chi tiết gi&uacute;p bạn tự tin sải bước. Đ&acirc;y quả thật l&agrave; một lựa chọn m&agrave; c&aacute;c phải mạnh kh&ocirc;ng n&ecirc;n bỏ lỡ.</p>\r\n\r\n<p><strong>Gi&agrave;y adidas VS Advantage CL&nbsp; ch&iacute;nh h&atilde;ng tại&nbsp;<a href=\"https://myshoes.vn/\" target=\"_blank\">Myshoes.vn</a>&nbsp;được nhập khẩu ch&iacute;nh h&atilde;ng qua đường h&agrave;ng kh&ocirc;ng. Full box, đầy đủ phụ kiện.</strong></p>\r\n\r\n<p><img alt=\"Giày adidas VS Advantage CL Nam - Trắng \" src=\"https://myshoes.vn/image/data/adidas%202019/thang%206/giay-adidas-vs-advantage-nam-trang-01.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas VS Advantage CL Nam - Trắng \" src=\"https://myshoes.vn/image/data/adidas%202019/thang%206/giay-adidas-vs-advantage-nam-trang-02.jpg\" /></p>\r\n\r\n<p><img alt=\"Giày adidas VS Advantage CL Nam - Trắng \" src=\"https://myshoes.vn/image/data/adidas%202019/thang%206/giay-adidas-vs-advantage-nam-trang-03.jpg\" /></p>', 100, 1780000, 0, '14-12-19191919-2069194894-ffgiay-adidas-vs-advantage-nam-trang-01-600x600_0.jpg', 20, 21, 1, '2019-12-14 10:43:36', '2019-12-14 10:43:36'),
(60, 'GIÀY NIKE AIR ZOOM PEGASUS 365 NỮ - ĐỎ', 'giay-nike-air-zoom-pegasus-365-nu-do', 'Giày Chạy Bộ Nữ Nike Air Zoom Pegasus 35 WMNS 942855-600 - Hàng Chính Hãng là bản cải tiến đáng mong đợi của Nike đã chính thức ra đời với nhiều tiện lợi.\r\nThân giày: sử dụng công nghệ sợi đan, vừa đảm bảo sự thông thoáng khí tối đa, giúp chân bạn được thở 1 cách tự nhiên ở tất cả mọi phần trên bàn chân. Ở cường độ vận động cao, mồ hôi chân của bạn vẫn được thoát ra ngoài 1 cách tự nhiên nhất, cảm giác mát mẻ khoan khoái khi đi giày này sẽ làm bạn muốn chinh phục quãng đường xa và dài hơn.\r\nĐế giày: loại bỏ chất liệu foam cũ thay bằng loại foarm mới, nhẹ hơn, êm hơn và đàn hồi tốt hơn. Đồng thời, đế giày được gọt bớt, giảm đi sư thô dày của những phiên bản trước, đế giày của Pegasus 35 đã gọn hơn rất nhiều.\r\nCông nghệ FLYWIRE tạo giúp chân luôn thẳng với thân giày, tránh cho chân bị trẹo qua trái hay phải khi sử dụng. Tuyệt đối an toàn khi vận động mạnh.\r\nLà mẫu giày thể thao có thể dùng để đi hàng ngày hay chạy bộ, từ người mới bắt đầu cho cả vận động viên chuyên nghiệp nhất.\r\nVới thiết kế thời trang, ấn tượng cùng công nghệ vượt trội, nếu bạn là người yêu thích thể thao, Nike Air Zoom Pegasus 35 sẽ là mẫu giày mà chắc chắn bạn nên có trong tủ của mình. ', 100, 2980000, 0, '14-12-19191919-485702891-vgiay-nike-pegasus-35-nu-do-01-copy-(2)-600x600_0v.jpg', 20, 22, 1, '2019-12-14 10:46:39', '2019-12-14 10:46:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttype`
--

CREATE TABLE `producttype` (
  `id` int(10) UNSIGNED NOT NULL,
  `idCategory` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producttype`
--

INSERT INTO `producttype` (`id`, `idCategory`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(11, 15, 'Giày Adidas Nam Chính Hãng', 'giay-adidas-nam-chinh-hang', 1, '2019-12-11 08:18:25', '2019-12-11 08:24:33'),
(12, 15, 'Giày Adidas Nữ Chính Hãng', 'giay-adidas-nu-chinh-hang', 1, '2019-12-11 08:19:22', '2019-12-11 08:24:52'),
(13, 16, 'Giày Nike Nam Chính Hãng', 'giay-nike-nam-chinh-hang', 1, '2019-12-11 08:20:35', '2019-12-11 08:25:12'),
(14, 16, 'Giày Nike Nữ Chính Hãng', 'giay-nike-nu-chinh-hang', 1, '2019-12-11 08:22:31', '2019-12-11 08:26:09'),
(15, 17, 'Giày Lacoste Nam Chính Hãng', 'giay-lacoste-nam-chinh-hang', 1, '2019-12-11 08:27:12', '2019-12-11 08:27:12'),
(16, 17, 'Giày Lacoste Nữ Chính Hãng', 'giay-lacoste-nu-chinh-hang', 1, '2019-12-11 08:27:55', '2019-12-11 08:27:55'),
(17, 18, 'Giày Asics Nam Chính Hãng', 'giay-asics-nam-chinh-hang', 1, '2019-12-11 08:28:54', '2019-12-11 08:28:54'),
(18, 18, 'Giày Asics Nữ Chính Hãng', 'giay-asics-nu-chinh-hang', 1, '2019-12-11 08:29:32', '2019-12-11 08:29:52'),
(19, 19, 'Giày Puma Nam Chính Hãng', 'giay-puma-nam-chinh-hang', 1, '2019-12-11 08:30:42', '2019-12-11 08:30:42'),
(20, 19, 'Giày Puma Nữ Chính Hãng', 'giay-puma-nu-chinh-hang', 1, '2019-12-11 08:31:43', '2019-12-11 08:31:43'),
(21, 20, 'Giày Thể Thao Nam Chính Hãng', 'giay-the-thao-nam-chinh-hang', 1, '2019-12-11 08:32:42', '2019-12-14 09:49:26'),
(22, 20, 'Giày Thể Thao Nữ Chính Hãng', 'giay-the-thao-nu-chinh-hang', 1, '2019-12-11 08:33:18', '2019-12-14 09:49:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruler` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `social_id`, `avatar`, `ruler`, `status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Văn Trung', 'hvtrung241298@gmail.com', '$2y$10$KROj1qgSubRaP0NoKJSDoe69nZ66YqtL3QiwsOxbXrSWtJliw3YE2', '130506935062586', 'https://graph.facebook.com/v3.3/130506935062586/picture?type=normal', 0, 0, NULL, 'bNpBLqScziQ6UdhWJR9HrfNF8RLZE6QbQjQnP8a6XKCVz07Ul3yIw7wMEAca', '2019-12-09 08:14:54', '2019-12-13 21:36:36'),
(2, 'Hồ Văn Trung1', 'trungho098@gmail.com', '$2y$10$hq6TH5.pjGKw3Zmz9jLobuQzEj5.21jpSKw0MWo5B/x90cKRcSxy2', NULL, NULL, 0, 0, NULL, 'Ne8zuDXx7lB3GJ4UbMCtOkEmg3v1IDNWFjQaiNIURGvkJuJ7qmRI4bSCHOfT', '2019-12-13 22:00:26', '2019-12-13 22:00:26'),
(3, 'Nguyễn Văn Chiến', 'chien@gmail.com', '$2y$10$EAFRyXxQr5UR0pfLHz6b0OezX7uUpm8fJpkpiUUFCHQSzSBJ6xef.', NULL, NULL, 0, 0, NULL, 'xcTYJB2prFBjATK8V1fHH1xB52867oId2ptPRVLlAPhWOewDGegROHzW5sHB', '2019-12-13 22:01:30', '2019-12-13 22:01:30'),
(4, 'nguyễn gia thuần', 'thuan@gmail.com', '$2y$10$d2UkYwbVL0VWubxhWfhPVuql2QQNTP7zVz.GNFi2bMG1XzTS.kJNy', NULL, NULL, 0, 0, NULL, 'NDpwOqfq6NdygAEQfzgAzgvu9JxNjWlZ0IdWaD1wQbNZRVCkpNyKNJA5pcYn', '2019-12-13 22:14:16', '2019-12-13 22:14:16'),
(5, 'Hồ Văn Tá', 'hvtrung.18it4@sict.udn.vn', '$2y$10$Nxx88RXk0zd7ZoVlaCav1OFlj3nQjmFYPTfBGjaiOcMwA2DzrG59S', NULL, NULL, 0, 0, NULL, NULL, '2019-12-23 09:48:40', '2019-12-23 09:48:40'),
(6, 'Admin', 'admin', '$2y$10$OLMi/t2WjCoAuIv.Ne9UT.cexmPt5HqcqNWzPZ7Dx1G6Jt84a9iBS', NULL, NULL, 1, 0, NULL, 'F04RAFoG9QwvUAh4sbuz71bD1P9VbbSiFwfwQZYyIBuasSTZDqSsqJnzuQel', NULL, NULL),
(7, 'abc', 'abc@gmail.com', '$2y$10$O8UuX1bXNbGDjjITHEUMsOJEH0J2tYVJ7JCGsz3Sg8pUIams6ZdFW', NULL, NULL, 0, 0, NULL, 'jcaNR139d6QQrBDquQFkdcPY3Ok10K6bH109YmcqzPzSoMHTxUwHhnOq0Jav', '2019-12-26 07:33:09', '2019-12-26 07:33:09'),
(8, 'admin', 'admin@gmail.com', '$2y$10$b.igJT08VUqPfyy6MMOfbuX.KTTLTz2YFUHYAz5SzrrBg1fyen7ga', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `producttype`
--
ALTER TABLE `producttype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
