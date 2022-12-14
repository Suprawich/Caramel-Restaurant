-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2022 at 07:22 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_application_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(50, 'Salad', 125, 'salad.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menuid` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `code` text NOT NULL,
  `imgindex` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `descriptionth` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `descriptionen` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menuid`, `name`, `code`, `imgindex`, `price`, `descriptionth`, `descriptionen`, `type`) VALUES
(1, 'Salad', '01', 'salad.png', 125, 'ผักคุณภาพดีคัดสรรค์จากธรรมชาติมาสู่มือคุณ ปราศจากการใช้สารเคมีทุกชนิด', 'Good quality vegetables selected from nature to your hand. Free from the use of all kinds of chemicals.', 'vegetarian'),
(2, 'Pizza', '02', 'pizza.png', 250, 'พิซซ่าสไตล์อิตาเลียนแท้ แป้งโฮมเมดหนานุ่มอบด้วยเตาถ่าน ทาด้วยซอสสูตรพิเศษของทางร้าน ท้อปปิ้งด้วยชีสและเห็ด', 'Real Italian style pizza Soft and fluffy homemade dough baked in a charcoal oven Brush with the shop\'s special recipe sauce. Topped with cheese and mushrooms.', 'italian'),
(3, 'Cheese Burger', '03', 'burger.png', 150, 'ชีสเบอร์เกอร์ เนื้อบดรสสัมผัสชุ่มฉ่ำ ความเค็มกำลังดีของชีสที่กำลังละลาย ความสดชื่นจากมะเขือเทศและผักต่างๆ รวมทั้งขนมปังที่ปิ้งสุกกำลังดี ทำให้ได้รสชาติที่สมบูรณ์แบบ', 'Juicy ground beef cheeseburger with just the right saltiness of the melting cheese. The freshness from tomatoes and vegetables. Including the well-toasted bread giving it a perfect taste.', 'fastfood'),
(4, 'Pad Kaprao', '04', 'kaprao.png', 80, 'ข้าวกระเพราหมูสับ ไข่ดาว ความอร่อบแบบง่าย ๆ รสชาติกลมกล่อมจัดจ้านตามแบบฉบับอาหารไทย ความเผ็ดกำลังดี ทานพร้อมข้าวหอมมะลิหุงร้อน ๆ', 'Rice with minced pork and basil, fried eggs, simple deliciousness, mellow and spicy taste typical of Thai food. good spiciness Eat with hot steamed rice.', 'thai'),
(5, 'Pancake', '05', 'pancake.png', 100, 'แพนเค้กแป้งหนานุ่มความสุกกำลังดี ท้อปปิ้งด้วยผลไม้สด เพิ่มความหวานกลมกล่อมด้วยเมเปิ้ลไซรัป', 'Fluffy pancakes with good ripeness. Topping with fresh fruit Add mellow sweetness with maple syrup.', 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(50) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` varchar(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(1, 'kgje', '6', 'pfjrjkpe@gmail.com', 'cash on delivery', 'pore', 'fkwmfe', 'l;gjfw', 'wgelrj', 'wfelkfmjwp', '10160', 'Salad (4) , Cheese Burger (3) , Pizza (1) , Pad Kaprao (1) ', '1280'),
(2, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(3, 'scdc', '32', 'c@gmail.com', 'cash on delivery', 'sxa', 'asxas', 'axsx', 'asxasx', 'asxas', 'xas', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(4, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(5, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(6, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(7, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(8, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(9, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(10, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(11, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(12, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(13, 'vwv', '4', 'sdv@gmail.com', 'cash on delivery', 'dvfw', 'fewf', 'efw', 'fwe', 'fw', 'few', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(14, 'scsdc', '32', 'sda@gmail.com', 'cash on delivery', 'acd', 'cd', 'dcs', 'sd', 'csd', 'ccdc', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(15, 'scdc', '32', 'c@gmail.com', 'cash on delivery', 'sxa', 'asxas', 'axsx', 'asxasx', 'asxas', 'xas', 'Salad (7) , Pancake (1) , Pad Kaprao (3) ', '1215'),
(16, 'vfvs', '43', 'fdvs@gmail.com', 'credit cart', 'fvsf', 'vsfv', 'sfvs', 'dfvs', 'fvsf', 'vsf', 'Salad (1) ', '125'),
(17, 'เำ', '42', 'fdvs@gmail.com', 'cash on delivery', 'ef', 'dff', 'ad', 'ad', 'da', 'ad', 'Salad (1) , Pizza (1) , Cheese Burger (1) , Pancake (1) , Pad Kaprao (1) ', '705'),
(18, 'Karn', '4', 'fdvs@gmail.com', 'cash on delivery', 'sxa', 'asxas', 'awd', 'ad', 'ad', 'da', 'Salad (1) , Pizza (1) , Cheese Burger (1) , Pancake (1) , Pad Kaprao (1) ', '705'),
(19, 'vf', '4', 'fdvs@gmail.com', 'cash on delivery', 'sxa', 'sdv', 'sdv', 'sdvs', 'vsdv', 'dvsd', 'Salad (3) ', '375'),
(20, 'ฟ', '4', 'fdvs@gmail.com', 'cash on delivery', '_ ไำ', 'ดำ', 'ดก ', 'กห', 'กห', 'ด', 'Salad (1) , Pizza (1) ', '375'),
(21, 'Karn', '4', 'a@gmail.com', 'cash on delivery', 'sv', 'ดำ', 'sfvs', 'sdvs', 'asxas', 'da', 'Salad (1) ', '125');

-- --------------------------------------------------------

--
-- Table structure for table `tbusers`
--

CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lastname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phonenumber` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postingdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbusers`
--

INSERT INTO `tbusers` (`id`, `firstname`, `lastname`, `email`, `phonenumber`, `address`, `postingdate`) VALUES
(3, 'korakot', 'Wattanasom', 'korakhot509@gmail.com', '0912901231', 'drakjoqj 4859358', '2022-12-10 04:27:58'),
(4, 'pim', 'manida', 'ergwrgqr@gmail.com', '0999999999', 'khj', '2022-12-10 04:58:38'),
(5, 'karn', 'karnnn', 'hjhvhfy@gmail.com', '0918860350', 'cgkugt.h;ujhkj/l;', '2022-12-10 08:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `discord_id` varchar(255) NOT NULL,
  `discord_username` varchar(255) NOT NULL,
  `discord_avatar` varchar(255) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `discord_id`, `discord_username`, `discord_avatar`, `create_at`) VALUES
(15, 'id001', 'user001', 'avatar001', '2022-12-10 16:59:03'),
(16, 'id002', 'user002', 'avatar002', '2022-12-10 17:00:07'),
(17, 'id003', 'user003', 'avatar003', '2022-12-10 17:00:29'),
(19, '705433664263291020', 'arunsawas', '098ad116ca941ea3759cfa058dd564fb', '2022-12-11 09:08:46'),
(20, '406058558967513089', 'karnpenkai', '8b5dd0e1d172bb5468961dbf9ef9cc23', '2022-12-11 16:49:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menuid`),
  ADD UNIQUE KEY `code` (`code`) USING HASH;

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbusers`
--
ALTER TABLE `tbusers`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbusers`
--
ALTER TABLE `tbusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
