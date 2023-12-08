-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 05:20 PM
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
-- Database: `phpshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `prod_id` int(255) NOT NULL,
  `prod_qty` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`) VALUES
(3, 2, 6, 3, '2022-12-15 08:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(1, 'Men', 'men', 'Đồ quần áo dành cho nam', 0, 1, '1677651749.jpg', 'Đồ quần áo dành cho nam', 'men', 'men', '2022-11-09 10:55:34'),
(2, 'Women', 'women', 'Dành cho nữ', 0, 1, '1677651760.jpg', 'Dành cho nữ', 'nữ', 'nữ', '2022-11-09 10:58:19'),
(3, 'Shoes', 'shoes', 'Bán giày', 0, 1, '1677651772.jpg', 'giày', 'Bán giày', 'giày', '2022-11-09 10:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `user_id` int(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address` mediumtext NOT NULL,
  `pincode` int(191) NOT NULL,
  `total_price` int(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `address`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
(1, 'vu7384258743784', 1, 'cc', 'ckxlnhea@gmail.com', '09258743784', 'kon tum', 123, 590000, 'COD', '', 1, NULL, '2022-12-15 02:47:43'),
(2, 'vu92403123', 2, 'asda', 'admin@gmail.com', '123123', '123123', 123123, 36, 'COD', '', 1, NULL, '2022-12-15 08:35:15'),
(3, 'vu39933', 1, '123', '123@gmail.com', '123', '123', 123, 369, 'COD', '', 2, NULL, '2022-12-15 14:28:21'),
(4, 'vu753835873784', 1, 'vu tramn', 'vucute775@gmail.com', '0935873784', 'vietnam', 0, 6266470, 'COD', '', 0, NULL, '2023-02-20 07:21:56'),
(5, 'vu646435873784', 1, 'Tran Le Anh Vu', 'vucute775@gmail.com', '0935873784', 'khoi 8 thi tran dak to', 0, 120369, 'COD', '', 1, NULL, '2023-03-01 10:13:56'),
(6, 'vu298835873784', 1, '3213', 'vucute775@gmail.com', '0935873784', '113', 0, 615, 'COD', '', 0, NULL, '2023-12-08 16:02:27'),
(7, 'vu8915345', 1, '3213', 'vucute775@gmail.com', '12345', '113', 0, 123, 'COD', '', 0, NULL, '2023-12-08 16:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(191) NOT NULL,
  `prod_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` int(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(1, 1, 1, 2, 295000, '2022-12-15 02:47:43'),
(2, 2, 6, 3, 12, '2022-12-15 08:35:15'),
(3, 3, 6, 3, 123, '2022-12-15 14:28:21'),
(4, 4, 9, 4, 1566556, '2023-02-20 07:21:56'),
(5, 4, 6, 2, 123, '2023-02-20 07:21:56'),
(6, 5, 8, 3, 123, '2023-03-01 10:13:56'),
(7, 5, 9, 1, 120000, '2023-03-01 10:13:56'),
(8, 6, 6, 2, 123, '2023-12-08 16:02:27'),
(9, 6, 8, 3, 123, '2023-12-08 16:02:27'),
(10, 7, 8, 1, 123, '2023-12-08 16:04:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `original_price` int(255) NOT NULL,
  `selling_price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `status` tinyint(255) NOT NULL,
  `trending` tinyint(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`) VALUES
(6, 1, 'asda', 'asdas', 'asdas', 'asdas', 0, 123, '1671090705.png         ', 113, 0, 1, 'asdas', 'asdasasdasd', 'asdas', '2022-12-15 07:51:45'),
(8, 3, 'qwe', 'qweqw', 'qweqw', 'qweqw', 123, 123, '1676055772.png', 116, 0, 1, '123', '123', '123', '2022-12-16 01:03:12'),
(9, 2, 'Japan T-Shirt abc', '123', '- Cổ Tròn \r\n<br>- Tay Ngắn\r\n<br>- Vạt Ngang \r\n<br>- Hình Thêu Trước\r\n<br>- 100% Cotton', 'THƯƠNG HIỆU <br>\r\nTừ đầu năm 2016, THE K300 bắt đầu cho ra những sản phẩm made in Vietnam mang xu\r\nhướng mới mẻ cùng chất lượng tốt nhất và được bán trên toàn quốc.\r\n<br>\r\nCác sản phẩm của THE K300 hầu như được lấy cảm hứng từ văn hóa thời trang đường\r\nphố, tự do hoặc mang hơi hướng retro.', 150000, 120000, '1676055798.png   ', 118, 0, 1, 'T-shirt', 'AT645-L', 'Japan', '2023-02-10 18:22:43'),
(10, 1, 'cc', 'cc', 'cc', '213123', 123, 123, '1676055814.jpg ', 123, 1, 0, '123', '123', '23', '2023-02-10 18:39:12'),
(12, 1, 'hheeleo', 'asdasdasd', 'asdasdas', 'dasdasdasdasdasd', 0, 250000, '1677596661.webp', 213, 0, 1, '123123', '123123', '312123', '2023-02-28 15:04:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role_as`, `created_at`) VALUES
(1, 'Tran Le Anh Vu', 'admin@gmail.com', 113, 'admin', 1, '2022-10-27 06:33:28'),
(2, 'vu', 'vucute775@gmail.com', 123, '123', 0, '2022-10-27 06:30:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
