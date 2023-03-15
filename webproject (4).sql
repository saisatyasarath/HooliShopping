-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 07:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `suid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `itemname` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `imagepath` varchar(100) NOT NULL,
  `aid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`bid`, `uid`, `suid`, `price`, `time`, `category`, `email`, `itemname`, `description`, `imagepath`, `aid`) VALUES
(1, 10, 11, 70000, '1628523779', 'laptops', 'sarathchandhra365@gmail.com', 'Laptop', 'Very unique laptop with unique features', 'bidding/laptop1.jpg', 4),
(2, 10, 11, 11000, '1629217858', 'home ', 'sarathchandhra365@gmail.com', 'Oxymeter', 'jsd', 'bidding/387645.jpg', 3),
(3, 10, 11, 34000, '1629306626', 'laptop', 'sarathchandhra365@gmail.com', 'Laptop', 'unique', 'bidding/laptop2.jpg', 0),
(4, 11, 11, 500, '1639808491', 'clothes', 'scssreddy.gudimetla@vitap.ac.i', 'Shirt', 'Colour:Black\r\nSize : XL', 'bidding/download.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`uid`, `pid`) VALUES
(10, 6),
(10, 10),
(10, 9),
(10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `cid` int(11) NOT NULL,
  `cname` varchar(250) NOT NULL,
  `ccode` varchar(250) NOT NULL,
  `fid` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `itemname` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `imagepath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `sid`, `category`, `email`, `itemname`, `quantity`, `price`, `description`, `imagepath`) VALUES
(6, 10, 'mobiles', 'sarathchandhra365@gmail.com', 'Honor 5X', '0', '15000', '3GB RAM,32GB ROM', 'uploads/phone.jpg'),
(7, 10, 'laptops', 'sarathchandhra365@gmail.com', 'Dell Inspiron', '0', '60000', '12GB RAM,1TB ROM', 'uploads/laptop1.jpg'),
(9, 10, 'laptops', 'sarathchandhra365@gmail.com', 'MAC ', '2', '200000', '2TB ROM,12GB RAM', 'uploads/laptop2.jpg'),
(10, 10, 'mobile', 'sarathchandhra365@gmail.com', 'Honor 7X', '7', '20000', '4GB RAM,64GB ROM', 'uploads/phone.jpg'),
(13, 10, '', 'sarathchandhra365@gmail.com', 'rhkvf', 'jdnew', '123', 'kdfcguewk', 'uploads/laptop3.jpg'),
(15, 10, 'laptops', 'sarathchandhra365@gmail.com', 'Dell Inspiron', '10', '100000', 'sdhvbksd', 'uploads/download (8).jpg'),
(16, 11, 'slippers', 'scssreddy.gudimetla@vitap.ac.in', 'Paragon', '1', '250', 'size:10', 'uploads/images (2).jpg'),
(17, 16, 'slippers', 'saideep.s@gmail.com', 'Slipper', '1', '300', 'pure leather size 10', 'uploads/download (9).jpg'),
(18, 16, 'mobiles', 'saideep.s@gmail.com', 'oneplus', '0', '20000', 'neversettle', 'uploads/oneplu7t.jpg'),
(19, 18, 'laptop', 'manoj.mouli@gmail.com', 'Dell', '4', '50000', 'RAM : 8GB\r\nROM : 1TB', 'uploads/New Doc 2018-08-07 (2).jpg'),
(20, 10, 'laptop', 'sarathchandhra365@gmail.com', 'Laptop', '5', '40589', 'jfekdc', 'uploads/81+d6eSA0eL._UY445_.jpg'),
(21, 10, 'medical', 'sarathchandhra365@gmail.com', 'Oxymeter', '6', '1999', 'wdkjcbewjkr', 'uploads/387645.jpg'),
(22, 10, 'clothes', 'sarathchandhra365@gmail.com', 'Shirt', '5', '1000', 'Colour : Red\r\nSize : XL', 'uploads/download.png');

-- --------------------------------------------------------

--
-- Table structure for table `sellersandusers`
--

CREATE TABLE `sellersandusers` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uaid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellersandusers`
--

INSERT INTO `sellersandusers` (`id`, `uid`, `sid`, `pid`, `uaid`) VALUES
(1, 10, 10, 6, 1),
(2, 11, 10, 6, 3),
(3, 11, 10, 9, 3),
(4, 11, 10, 6, 3),
(5, 10, 11, 16, 1),
(6, 11, 10, 7, 3),
(7, 16, 10, 7, 5),
(8, 11, 16, 17, 4),
(9, 17, 11, 16, 6),
(10, 16, 11, 16, 5),
(11, 17, 16, 18, 6),
(12, 18, 10, 7, 7),
(13, 10, 18, 19, 1),
(14, 11, 10, 9, 4),
(15, 11, 10, 10, 3),
(16, 10, 11, 16, 2),
(17, 10, 11, 16, 1),
(18, 10, 16, 17, 1),
(19, 11, 10, 22, 8);

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `ind` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `houseno` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `ind`, `name`, `houseno`, `city`, `state`, `phone`) VALUES
(10, 1, 'sarath', '3/4', 'Kommara,WestGodavari District', 'Andhra Pradesh', '08790360069'),
(10, 2, 'iofvjgvdhoigvndfk', '1234', 'jkdfvnfdlj', 'kfjnvdol', '795566984534'),
(11, 3, 'SatyaNarayana Reddy Gudimetla', '1234', 'Kommara,WestGodavari District', 'Andhra Pradesh', '08790360069'),
(11, 4, 'sai', '12/3', 'vijayawada', 'AndhraPradesh', '9554225019'),
(16, 5, 'saideep', '123/4', 'vijayawada', 'AndhraPradesh', '1234567890'),
(17, 6, 'susanth', '1/2/334', 'vijayawada', 'Andhra Pradesh', '08790360069'),
(18, 7, 'manoj', '2/4', 'Amaravathi', 'AP', '9870564732'),
(11, 8, 'SatyaNarayana Reddy Gudimetla', '2/4', 'Kommara,WestGodavari District', 'Andhra Pradesh', '08790360069'),
(19, 9, 'Bannu', '2/4', 'Tadepalli', 'AP', '1374838123'),
(19, 10, 'Sandeep', '2/4', 'gadida', 'AP', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(10, 'sarathchandhra365@gmail.com', 'sarath'),
(11, 'scssreddy.gudimetla@vitap.ac.in', 'sar'),
(12, 'edarasanthan.1999@gmail.com', 'sss'),
(13, 'dhcdh', 'dcb'),
(14, 'pavansai@gmail.com', 'pavan'),
(15, 'abc@gmail.com', 'abc'),
(16, 'saideep.s@gmail.com', 'sai12345'),
(17, 'susanth.nsks@gmail.com', '123456'),
(18, 'manoj.mouli@gmail.com', 'manoj'),
(19, 'bannu@gmail.com', 'bannu'),
(20, 'gudimetlavr11@gmail.com', 'veer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sid` (`id`);

--
-- Indexes for table `sellersandusers`
--
ALTER TABLE `sellersandusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`ind`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sellersandusers`
--
ALTER TABLE `sellersandusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `ind` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
