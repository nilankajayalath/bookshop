-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2024 at 01:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(1, 6, 'happy lesson', 2222, 4, 'the_girl_of_ink_and_stars.jpg'),
(2, 6, 'happy lemonsdd', 33, 1, 'the_happy_lemon.jpg'),
(5, 11, 'wwwe', 444, 1, 'the_world.jpg'),
(11, 15, 'nilanka', 8, 1, 'the_girl_of_ink_and_stars.jpg'),
(12, 15, 'sahan', 110, 1, 'red_queen.jpg'),
(13, 16, 'happy lesson', 2222, 1, 'the_girl_of_ink_and_stars.jpg'),
(14, 16, 'sahan', 110, 1, 'red_queen.jpg'),
(15, 0, 'happy lesson', 2222, 1, 'the_girl_of_ink_and_stars.jpg'),
(16, 18, 'nilanka1`', 2, 1, 'the_world.jpg'),
(17, 18, 'happy lesson', 2222, 1, 'the_girl_of_ink_and_stars.jpg'),
(18, 19, 'Beast', 5, 1, 'beast.jpg'),
(21, 23, 'Madolduwa', 8, 1, 'madolduwa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` int(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 26, 'nilanka', 'nilanka33@gmail.com', 55555, 'Hello....'),
(9, 28, 'nilanka1', 'nilanka1@gmail.com', 22, 'Hiiiii.....'),
(10, 35, 'wq', 'w@gmail.com', 32, 'hhh'),
(12, 36, 'kasun', 'a@gmail.com', 21, 'hiii');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(8, 15, 'nilanka', '21121221', 'nilanka@gmail.com', 'cash on delivery', 'flat no. 21, klns, horana, Sri Lanka - 2', ', sahan (2) , nilanka (2) , happy lesson (1) ', 2458, '09-Mar-2024', 'completed'),
(9, 20, 'sa', '21', 'susa@gmail.com', 'credit card', 'flat no. 2, ew, kandy, lanka - 121', ', Madolduwa (2) ', 16, '10-Mar-2024', 'pending'),
(10, 22, 'nilanka', '3221', 'nilanka12@gmail.com', 'credit card', 'flat no. 11, klnshjbsx, horana, Sri Lanka - 212', ', Madolduwa (2) ', 16, '10-Mar-2024', 'pending'),
(11, 24, 'nilanka', '12122', 'nilanka@gmail.com', 'credit card', 'flat no. 21, klnswAS, Horana, Sri Lanka - 2', ', Madolduwa (2) ', 16, '10-Mar-2024', 'pending'),
(12, 26, 'nilanka33', '422', 'nilanka33@gmail.com', 'credit card', 'flat no. 12, horana, Horana, Sri lanka - 22222', ', Harry Potter (2) ', 8, '10-Mar-2024', 'completed'),
(13, 28, 'nilanka1', '32222', 'nilanka1@gmail.com', 'credit card', 'flat no. 21, eeeeee, horana, sri lanka - 89798', ', Holy Ghosts (2) ', 20, '10-Mar-2024', 'pending'),
(14, 35, 'x', '12', 'x@gmail.com', 'credit card', 'flat no. 1, 32, aa, lanka - 43', ', The Lord Of The Rings (1) ', 11, '15-Mar-2024', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(28, 'Madolduwa', 8, 'madolduwa.jpg'),
(29, 'Harry Potter', 4, 'harry_potter.jpg'),
(30, 'Beast', 5, 'beast.jpg'),
(31, 'Charlie Chaplin', 6, 'charlie_chaplin.jpg'),
(32, 'Darknet', 7, 'darknet.jpg'),
(33, 'The Kite Runner', 8, 'kite_runner.jpg'),
(34, 'Holy Ghosts', 10, 'holy_ghosts.jpg'),
(35, 'The Lord Of The Rings', 11, 'lord_rings.jpg'),
(36, 'Death Comes to Call', 12, 'death_comes_call.jpg'),
(37, 'THE APPRENTICE WITCH', 13, 'james_nicol.jpg'),
(38, 'DICK FRANCIS', 14, 'shattered.jpg'),
(39, 'NIGHT SHADE', 8, 'nightshade.jpg'),
(40, 'THE BOOK OF GOD', 12, 'the_book_of_god.jpg'),
(41, 'STEPHEN KING', 10, 'stephen_king.jpg'),
(42, 'The Monsters of Rookhaven', 13, 'rookhaven.jpg'),
(43, 'RICK RIORDAN', 6, 'percu_jackson.jpg'),
(44, 'RED QUEEN', 11, 'red_queen.jpg'),
(45, 'THE DIAMOND EYE', 14, 'diamond_eye.jpg'),
(48, 'happy lemons22', 3211, 'boring_girls_a_novel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(26, 'nilanka', 'nilanka33@gmail.com', 'fbade9e36a3f36d3d676c1b808451dd7', 'user'),
(27, 'admin3', 'admin3@gmail.com', '9dd4e461268c8034f5c8564e155c67a6', 'admin'),
(28, 'nilanka', 'nilanka9@gmail.com', 'cfcd208495d565ef66e7dff9f98764da', 'user'),
(29, 'nilanka32', 'admin@gmail.com', 'b6d767d2f8ed5d21a44b0e5886680cb9', 'admin'),
(30, 'nilanka11', 'nilanka11@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'admin'),
(31, 'nilanka', 'nilanka@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'user'),
(32, 'nilanka jayalath', 'nilanka99@gmail.com', '8613985ec49eb8f757ae6439e879bb2a', 'user'),
(33, 'nila1', 'nila1@gmail.com', 'c81e728d9d4c2f636f067f89cc14862c', 'user'),
(34, 'nilax', 'nilax@gmail.com', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'user'),
(35, 'woshan', 'woshan@gmail.com', 'a87ff679a2f3e71d9181a67b7542122c', 'user'),
(36, 'a', 'a@gmail.com', '83878c91171338902e0fe0fb97a8c47a', 'user'),
(37, 'm', 'm@gmail.com', '182be0c5cdcd5072bb1864cdee4d3d6e', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
