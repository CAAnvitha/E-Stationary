-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 11:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estat`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(3, 'Rizwan', 'rizwan@gmail.com', '$2y$10$Z1DnKbJRDFUTHMI7y1vSqeU3.Y9cgDyC4AeWx4.ucH34z/mkzL2E.', '0'),
(4, 'ajay', 'ajay@gmail.com', '$2y$10$UGzx/ODNB4ZSFruRF8BN2eC/NNE.6MBhfTTYKtUo.k4ZVHZFD85DO', '0'),
(5, 'Rizwan', 'rizwankhan@gmail.com', '$2y$10$qZ0OoyX8bhAVxDFM/fx8leZSZwlyq15c1C/KTnaqDLSx6eCDJ0VpC', '0'),
(6, 'Faizan', 'faizan@gmail.com', '$2y$10$Ll2.sETLuB8sdhh1LRK4e.cQqn4CtTEudFg.exhf76D6rGzSOwWNm', '0'),
(7, 'Ajay Kumar', 'ajaykumar@gmail.com', '$2y$10$8GlkawEDsNrOQr8Vgv0GceD/MhVpHAXM4xqtMo0.SUaHFXe03MRdi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(18, 2, '::1', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Arts and Crafts'),
(3, 'Arts Supplies'),
(4, 'Novels'),
(5, 'Notebooks'),
(6, 'Diaries'),
(12, 'Stationary');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 1, 1, '9L434522M7706801A', 'Completed'),
(2, 1, 2, 1, '9L434522M7706801A', 'Completed'),
(3, 1, 3, 1, '9L434522M7706801A', 'Completed'),
(4, 1, 1, 1, '8AT7125245323433N', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 3, 'Paint Brush', 200, 50, 'Painting Brushes', 'brush.jpg', 'brushes,brush,paint brush'),
(2, 3, 'Color pencils', 200, 5000, 'Color Pencils used for coloring', 'colorpencils.jpg', 'color pencils,pencils for coloring'),
(3, 2, 'Color Tapes', 50, 1000, 'Color tapes for crafts', 'colortape.jpg', 'tapes,colortapes'),
(4, 6, 'book1', 500, 100, 'Commando 2', 'book1.jpg', 'Its a good book'),
(5, 3, 'Crayons', 300, 5000, 'Crayons', 'crayons.jpg', 'samsung, mobile, s10'),
(6, 2, 'GlueGun', 600, 100, 'Glue gun used for craft', 'gluegun.jpg', 'glue,gun,gluegun'),
(7, 2, 'Tape', 100, 2000, 'Tapes ', 'colortape1.jpg', 'tapes'),
(8, 4, 'Commando ', 1500, 250, 'Commando is thriller', 'Commando.jpg', 'thriller'),
(9, 4, 'Mossad', 2000, 800, 'Mossad is comedy', 'Mossad.jpg', 'Mossad,comedy'),
(10, 4, 'Think and Grow Rich', 5000, 100, 'Think and Grow Rich', 'ThinkAndGrowrich.jpg', 'Inspirational'),
(11, 12, 'Blue Gel Pen', 150, 2000, 'Blue Gel pen', 'BlueGel(i).jpg', 'Gel Blue Pen'),
(12, 12, 'White Pen', 500, 5000, 'White coated pen', 'white(ii).jpg', 'white blue pen'),
(13, 5, 'Red Note', 400, 5000, 'Note book', 'rednote.jpg', 'note'),
(14, 5, 'Black note', 50, 500, 'Black notebook', 'blacknote.jpg', 'note'),
(15, 5, 'Papergrid note', 100, 500, 'notebook', 'papergridnote.jpg', 'note'),
(16, 5, 'Ruled note', 60, 1000, 'notebook', 'rulednote.jpg', 'note'),
(17, 5, 'Classmate notebook', 80, 1000, 'notebook', 'classmatenote.jpg', 'note'),
(18, 5, 'Navneet notebook', 40, 1000, 'notebook', 'navneetnote.jpg', 'note'),
(19, 6, 'Five year diary', 200, 100, 'Diary', '5yeardiar.jpg', 'diary'),
(20, 6, 'Clip diary', 200, 40, 'diary', 'clipdiar.jpg', 'diary'),
(21, 6, 'Design diary', 500, 20, 'diary', 'designdiar.jpg', 'diary'),
(22, 6, 'Unfold diary', 500, 20, 'diary', 'dualdiar.jpg', 'diary'),
(23, 6, 'Lock diary', 600, 15, 'diary', 'lockdiar.jpg', 'diary'),
(24, 6, 'Traditional diary', 400, 20, 'diary', 'traditionaldiar.jpg', 'diary'),
(25, 12, 'Apsara Eraser', 1, 500, 'eraser', 'apsaraera.jpg', 'apsara'),
(26, 12, 'Nataraj scale', 15, 1000, 'scale', 'natscale.jpg', 'scale'),
(27, 12, 'Nataraj sharpener', 5, 1000, 'sharpener', 'natsharp.jpg', 'sharpener'),
(28, 12, 'Nataraj Pencil', 10, 1000, 'pencil', 'pencil.jpg', 'pencil'),
(30, 12, 'Nataraj pencil', 0, 10, 'pencil', 'pencil1.jpg', 'pencil');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rizwan', 'Khan', 'rizwankhan.august16@gmail.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asansol'),
(2, 'Rizwan', 'Khan', 'rizwankhan.august16@yahoo.com', '25f9e794323b453885f5181f1b624d0b', '8389080183', 'Rahmat Nagar Burnpur Asansol', 'Asa'),
(3, 'Anvitha', 'C A', 'abc@gmail.com', '2a7d6940cb91dda5eb53cb7351dfe5c7', '9999999999', 'Banglore', 'Banglore'),
(4, 'Aish', 'nath', 'aishu@gmail.com', '5939d84e83aaae7d969ccf08dfa8fa3a', '7777777777', 'Mumbai', 'Mumbai'),
(5, 'Devika', 'V D', 'devika.vd1745@gmail.com', '32efaad37f132c68cdd6cd70327f8c87', '9071973196', 'Delhi', 'Delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
