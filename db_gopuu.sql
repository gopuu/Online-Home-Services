-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2019 at 11:09 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gopuu`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(5) NOT NULL,
  `msg` varchar(300) NOT NULL,
  `image_1` varchar(30) NOT NULL,
  `image_2` varchar(30) NOT NULL,
  `image_3` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `msg`, `image_1`, `image_2`, `image_3`) VALUES
(3, 'With an idea of “Smart Way Easy Life” <b><?=$website[\'name\'];?></b> is home solution providing company. With <b><?=$website[\'name\'];?></b> website you can book your desired home service like electrician, plumber, carpenter, cleaner, AC repair, Washing machine repair, and so many other services which', 'about_1.jpg', 'about_intro.jpg', 'portfolio_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_date` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `email`, `password`, `created_date`, `phone`, `image`) VALUES
(1, 'Gopal', 'admin', 'admin@admin.com', '$2y$10$XccGtNxSKo4Gz3f6c/wU5Oce8ZTZlJTUDs1Mah6/iL10V0z5eWaU6', '10-11-2018', '7567392027', '35 @gopuu__  farm 1.jpg'),
(10, 'Gopal Kushwaha', '123', 'kgopal8306@gmail.com', '$2y$10$kVReYJRYxMWswlcEO2FlYu.Qf6TJiQPCCvos7Q4AWyx1i.LnvzGy6', '24-02-2019 02:20:49pm', '7567392027', 'Cross.png');

-- --------------------------------------------------------

--
-- Table structure for table `back_images`
--

CREATE TABLE `back_images` (
  `id` int(5) NOT NULL,
  `page_name` varchar(15) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `back_images`
--

INSERT INTO `back_images` (`id`, `page_name`, `image`) VALUES
(1, 'product', 'f1.jpg'),
(3, 'blog', 'blog.jpg'),
(4, 'contact', 'contact.jpg'),
(5, 'cart', 'f6.jpeg'),
(7, 'orders', 'portfolio_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `bill_date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(5) NOT NULL,
  `subject` varchar(40) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `added_date` varchar(25) NOT NULL,
  `admin_id` int(5) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `subject`, `description`, `added_date`, `admin_id`, `image`) VALUES
(2, 'Plumbing Myths', 'In the plumbing industry, it can be hard to differentiate the facts from fiction. Is plumbing an easy fix? Do you need to call a professional? What classifies as a plumbing emergency?\r\n\r\nRighTime Home Services is here to debunk five common plumbing myths. We’ll share our expertise on how (and how not) to correctly maintain your plumbing system!\r\n\r\nMYTH: A Leaky Faucet is Common\r\nNot only can a small leak cost you big money, but it’s also bad for the environment. Being in California, the drought ', '07-03-2019 01:56:10pm', 1, 'AdobeStock_86055982-1024x683.jpeg'),
(4, 'Does Turning Your AC Off Save Money?', 'The summer temperatures cause everyone to fear the electric bill! There is one common HVAC myth we hear this time of year – that turning the air conditioner off while you are out of the house will save money, and cut the costs of your electric bill. So, is this myth true or false?\r\n\r\nWell, it depends. When it comes to this myth, everything from the size of your home, the age of your unit, the location and climate can affect how we truly say, “true or false.”\r\n\r\nFor a small apartment with a brand', '07-03-2019 07:45:58pm', 1, 'SWITCH-OFF-THE-AC-SWITCH-ON-THE-FAN.jpg'),
(5, 'Most Common Home Emergencies in the Summ', 'Summer is a great time to relax and enjoy the warm weather outside. But, it’s also a time when your home is more susceptible to harm. From the heat waves that can cause your HVAC to break down, to buildup in the bathroom, RighTime Home Services is here to help! When it comes to summer home emergencies, we know a thing or two.\r\n\r\nWith that, see below for two common issues to watch out for when it comes to your home’s HVAC and plumbing system:\r\n\r\n1. My Air Conditioning Unit Broke Down\r\nHaving your', '07-03-2019 08:15:03pm', 1, 'common-household-emergencies.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `images` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `images`) VALUES
(5, 'Home Cleaning', 'Domestic.png'),
(8, 'Carpenter', 'sofa.png'),
(9, 'Plumber', 'plumber.png'),
(10, 'Electricity', 'electrician.png');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `state_id` int(5) NOT NULL,
  `added_date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `state_id`, `added_date`) VALUES
(8, 'Surat', 8, '04-03-2019 05:25:46pm');

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `id` int(10) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_date` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL,
  `expert_category_id` int(5) NOT NULL,
  `shop_id` int(5) NOT NULL,
  `salary_per_order` int(2) NOT NULL,
  `city_id` int(5) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`id`, `name`, `email`, `password`, `created_date`, `phone`, `image`, `expert_category_id`, `shop_id`, `salary_per_order`, `city_id`, `address`) VALUES
(3, 'vishal pandey', 'vishal_pandey@gmail.com', '$2y$10$U9Nt9dmlVa6b3yNGrS8GoetgASGqp/4eGoBzVh.FoOy3qAGUs/tOi', '09-03-2019 09:04:59am', '9992224455', '111.jpg', 5, 11, 50, 8, ''),
(6, 'sai kiran', 'sai_kiran@gmail.com', '$2y$10$DJgwRbDMKmIEnSNn0Dkvletl3YCFjlr7phqb0bScZha1wD/Ve08ne', '09-03-2019 10:06:45am', '9292889912', 'emp 3.jpg', 10, 14, 0, 8, 'udhnaaaaa'),
(7, 'keshav dubey', 'keshav_dubey@gmail.com', '$2y$10$VTPTJJfbkoh0kmaEdiy9Yejkwzka/xKGr.RRw1E6msgSkh/8ThI0i', '09-03-2019 10:10:12am', '9292889913', 'emp 1.jpg', 8, 12, 0, 8, ''),
(8, 'srinu', 'srinu@gmail.com', '$2y$10$.Gm5VX0L.aplmfrUZg8uBuhPurneF.4Z238/1Grof2uRezPEP710u', '09-03-2019 10:33:58am', '9992224455', 'emp 2.jpg', 10, 15, 0, 8, ''),
(10, 'viral patil', 'viral_patil@gmail.com', '$2y$10$tR7spyZvM/eg5qT0XX.9cO4jbab738PQ32PlsZwb87koTc1q.pVyu', '09-03-2019 10:36:31am', '9292889912', 'emp 4.jpg', 0, 15, 0, 8, ''),
(11, 'roney shah', 'roney_shah@gmail.com', '$2y$10$dpHauOc8nPvuu5PZkTG0meMpn5AUGVQXUsV70nukIK3yKeZRpHJ0q', '09-03-2019 11:26:44am', '9292889920', 'emp 5.jpeg', 10, 16, 0, 8, ''),
(12, 'brijesh pandey', 'brijesh@gmail.com', '$2y$10$FfKppYnuck.a9TC7k8391uEGq41xgkzNl2zn7iDVbOU5VWioqypAy', '09-03-2019 11:33:31am', '9123453241', 'emp 6.jpg', 5, 21, 0, 8, ''),
(14, 'jay patel', 'jaypatel@gmail.com', '$2y$10$bJ.VAo2Gmaf8DdKvzDnqWuP0QFql4.kHZtbwfT3H9YgxdXvWa0V4G', '09-03-2019 11:37:05am', '7894563245', 'emp 8.png', 9, 17, 0, 8, ''),
(15, 'gopal patil', 'gopalpatil@gmail.com', '$2y$10$bwga5BCPjY51OBPPxmNToug440MP5an29DzEnX/.MNHZClqiTYhj6', '09-03-2019 11:38:04am', '8976342156', 'emp 9.jpg', 9, 18, 0, 8, ''),
(16, 'ajay patil', 'ajaypatil@gmail.com', '$2y$10$/eaKjMLXiRxf5E2Wi3uAzu1dh0O7z3HCA9kuyXLYRhpffXrq8ceQS', '09-03-2019 11:38:59am', '7778883422', 'emp 10.jpg', 9, 19, 0, 8, ''),
(18, 'faizal khan', 'faizal@gmail.com', '$2y$10$D/dE2.vjJCQizDKju60dButTC3NedMLJViBULCv3fL62qHaH/PQda', '09-03-2019 12:03:37pm', '9292321456', 'emp 11.jpg', 5, 20, 0, 8, '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `subject`, `date`) VALUES
(1, 'Gopal Kushwaha', 'kgopal8306@gmail.com', 'Welcome to Domestic Aid', 'Hello World', '05-03-2019 02:37:43pm'),
(2, '', 'kgopal8306@gmail.com', 'pc repair service', 'Unavailable Service !!', '07-03-2019 01:18:35am');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(5) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(1, 'portfolio_1.jpg'),
(2, 'portfolio_2.jpg'),
(3, 'portfolio_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `register_date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`, `register_date`) VALUES
(10, 'kgopal8306@gmail.com', '12-03-2019 01:53:17pm');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(5) NOT NULL,
  `cust_id` int(5) NOT NULL,
  `emp_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `shop_id` int(5) NOT NULL,
  `order_date` varchar(25) NOT NULL,
  `rate` int(4) NOT NULL,
  `status` int(5) NOT NULL,
  `payment_mode` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `location` varchar(8) NOT NULL,
  `city_id` int(5) NOT NULL,
  `deliver_time` varchar(5) NOT NULL,
  `qty` int(5) NOT NULL,
  `total` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cust_id`, `emp_id`, `product_id`, `shop_id`, `order_date`, `rate`, `status`, `payment_mode`, `address`, `location`, `city_id`, `deliver_time`, `qty`, `total`) VALUES
(3, 1, 3, 2, 11, '16-03-2019 11:48:48am', 100, 104, 'cash', 'surat', 'home', 8, '2', 2, 200),
(4, 1, 3, 2, 11, '16-03-2019 11:55:33am', 100, 104, 'cash', 'surat', 'home', 8, '3', 1, 100),
(11, 1, 3, 2, 11, '20-03-2019 12:40:53am', 100, 101, 'cash', '24/1, JUNA PRATAP NAGAR, NR.MARKENDESHWER MANDIR\r\n', 'home', 8, '2', 3, 400),
(12, 1, 0, 10, 11, '20-03-2019 12:40:53am', 100, 100, 'cash', '24/1, JUNA PRATAP NAGAR, NR.MARKENDESHWER MANDIR\r\n', 'home', 8, '2', 1, 400);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `rate` int(4) NOT NULL,
  `category_id` int(5) NOT NULL,
  `shop_id` int(5) NOT NULL,
  `service_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `rate`, `category_id`, `shop_id`, `service_id`) VALUES
(2, 'Cupboard', 'Bocado_Wardrobe_3d_00_LP.jpg', 100, 8, 11, 18),
(3, 'Cupboard', 'Bocado_Wardrobe_3d_00_LP.jpg', 50, 8, 11, 21),
(4, 'Cupboard', 'Bocado_Wardrobe_3d_00_LP.jpg', 70, 8, 11, 20),
(6, 'Sofa ', '1538403200_1759.jpg', 60, 8, 11, 18),
(7, 'Sofa Chair', '1538403200_1759.jpg', 60, 8, 11, 21),
(8, 'Sofa Bed', 'bedd.jpg', 150, 8, 11, 18),
(9, 'Sofa Bed', 'bedd.jpg', 100, 8, 11, 19),
(10, 'Sofa Bed', 'bedd.jpg', 100, 8, 11, 20),
(11, 'Fan', 'fan1.jpg', 99, 10, 14, 18),
(12, 'Tubelight', 'tubelight1.jpeg', 60, 10, 14, 18),
(13, 'Fan', 'fan1.jpg', 80, 10, 14, 19),
(14, 'Fan', 'fan1.jpg', 50, 10, 14, 20),
(15, 'Fan', 'fan1.jpg', 50, 10, 14, 21),
(16, 'Tubelight', 'tubelight2.jpeg', 89, 10, 14, 19),
(17, 'Tubelight', 'tubelight2.jpeg', 79, 10, 14, 20),
(18, 'Tubelight', 'tubelight1.jpeg', 69, 10, 14, 21),
(19, 'Geyser', 'geyser1.jpg', 120, 10, 14, 18),
(20, 'Geyser', 'geyser1.jpg', 89, 10, 14, 19),
(21, 'Geyser', 'geyser1.jpg', 99, 10, 14, 20),
(22, 'Geyser', 'geyser1.jpg', 129, 10, 14, 21),
(23, 'Study table', 'studytable.jpg', 150, 8, 11, 18),
(24, 'Study table', 'studytable.jpg', 120, 8, 11, 20),
(25, 'Study table', 'studytable.jpg', 99, 8, 11, 21),
(26, 'Study table', 'studytable.jpg', 60, 8, 11, 21),
(27, 'Door', 'door.jpg', 100, 8, 11, 18),
(28, 'Door', 'door.jpg', 80, 8, 11, 21),
(29, 'Door', 'door.jpg', 70, 8, 11, 20),
(30, 'Bathroom Cleaning', 'clean_bath.jpeg', 100, 5, 20, 19),
(31, 'Kitchen Cleaning', 'clean_kicthen.png', 120, 5, 20, 19),
(32, 'Sofa Cleaning', 'clean_sofa.png', 120, 5, 21, 19),
(33, 'Home Cleaning', 'clean_home.png', 110, 5, 21, 19),
(34, 'Bath Tub', 'bathtub.jpg', 180, 9, 17, 18),
(35, 'Bath Tub', 'bathtub.jpg', 120, 9, 17, 19),
(36, 'Bath Tub', 'bathtub.jpg', 120, 9, 17, 20),
(37, 'Bath Tub', 'bathtub.jpg', 100, 9, 17, 21),
(38, 'Shower', 'shower.jpg', 120, 9, 17, 18),
(39, 'Shower', 'shower.jpg', 100, 9, 17, 21),
(40, 'Shower', 'shower.jpg', 120, 9, 17, 20);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `userid` int(5) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `product_id`, `userid`, `msg`, `date`) VALUES
(1, 9, 1, 'nice service !!', '21-03-2019 06:12:56pm'),
(2, 9, 1, 'abc', '21-03-2019 06:15:26pm');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`) VALUES
(18, 'Install'),
(19, 'Maintenance'),
(20, 'Repair'),
(21, 'Remove');

-- --------------------------------------------------------

--
-- Table structure for table `service_time`
--

CREATE TABLE `service_time` (
  `id` int(5) NOT NULL,
  `time` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_time`
--

INSERT INTO `service_time` (`id`, `time`) VALUES
(1, '10am'),
(2, '11am'),
(3, '12am'),
(4, '1pm'),
(5, '2pm'),
(6, '3pm'),
(7, '4pm');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(10) NOT NULL,
  `shop_name` varchar(40) NOT NULL,
  `owner_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_date` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `image` varchar(100) NOT NULL,
  `rating` int(5) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city_id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `shop_name`, `owner_name`, `email`, `password`, `created_date`, `phone`, `image`, `rating`, `address`, `city_id`, `category_id`) VALUES
(11, 'nilkamal furniture mart', '', 'nilkamalfurniture@gmail.com', '$2y$10$N0R1E.h9LYTRQxJsUH4HnuhlmaclTe5Bx.grri29wOamKu/MJPLRi', '09-03-2019 11:12:54am', '7567392027', 'furniture-Shop3.jpg', 0, '', 8, 8),
(12, 'india furniture mart', '', 'indiafurniture@gmail.com', '$2y$10$UIvPpFdVH1dTRgvoz2eYL.M9V9HBlmTDgTkgNQZU.gn8AnAczu5vm', '09-03-2019 11:17:56am', '9292889912', 'furniture-Shop2.jpg', 0, '', 8, 8),
(13, 'ply furniture mart', '', 'plyfurniture@gmail.com', '$2y$10$JBKGpr.PEC.AjTjY/SwCZewWJmU.o0RVMcKQxLHciCTztUIQTu7Ki', '09-03-2019 11:18:49am', '9123498621', 'furniture-Shop1.jpg', 0, '', 8, 8),
(14, 'jtp electricity mart', '', 'jtp_electricity@gmail.com', '$2y$10$2fJJIcfagK1HvSWc62/cQ.gNtOpRF3ZyUMYYWoCrtjbEl.82OTroW', '09-03-2019 11:28:07am', '9992224455', 'elect-1.jpg', 0, '', 8, 10),
(15, 'popular electric co.', '', 'popular_electric@gmail.com', '$2y$10$TcAzQBHqLdK3kMxmH7izduyhFmcpF4RKowkfgLdB.8Ltb8MEb8GVi', '09-03-2019 11:29:32am', '9292889912', 'elect-2.jpg', 0, '', 8, 10),
(16, 'ebs electrical', '', 'ebs_electrical@gmail.com', '$2y$10$xoji19FUF6uJxlGgP3xZX.srj8sQADt.xlGgO/PblMysRew3OGEI.', '09-03-2019 11:30:17am', '9123498621', 'elect-3.jpg', 0, '', 8, 10),
(17, 'plumbwell mart', '', 'plumbwell_mart@gmail.com', '$2y$10$T.CDW4oPzzxWm02XFC2CM.4A2nlAD.DKNX70CGkM6Tq59c8mUdS1a', '09-03-2019 07:30:20am', '9992224455', 'plumb 1.jpg', 0, '', 8, 9),
(18, 'dnd plumbing', '', 'dnd_plumbing@gmail.com', '$2y$10$onBo5b6Qf4Qmy38hJqzTUe2Fob3kyflOfGY3qfGK9vMidbHNPvIHm', '09-03-2019 08:17:14am', '9292889912', 'plumb 2.jpg', 0, '', 8, 9),
(19, 'sanesh plumbers', '', 'sanesh_plumbers@gmail.com', '$2y$10$9mWKLy6AwkJV.les7kJh7u58EleSbX1d15W8svDHsL7LAhSgaI3f2', '09-03-2019 08:20:23am', '9123498621', 'plumb 3.jpg', 0, '', 8, 9),
(20, 'clean home services', '', 'clean_home_services@gmail.com', '$2y$10$krAlWryMO7gmdUajvOxwa./QhEO5jByBHwF4n9HPnrbP9ZfHJ44Ei', '09-03-2019 08:23:03am', '9992224455', 'home 2.PNG', 0, '', 8, 5),
(21, 'window home services', '', 'window_home_services@gmail.com', '$2y$10$zmtU4CNXU3flbFr9nGdEkuPwMGzDUsK2uRREe.uUOZu0MYVB9Np8m', '09-03-2019 08:25:06am', '9292889912', 'House_cleaning.png', 0, '', 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `signup_security`
--

CREATE TABLE `signup_security` (
  `id` int(5) NOT NULL,
  `question` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup_security`
--

INSERT INTO `signup_security` (`id`, `question`) VALUES
(3, 'What was your childhood nickname?? '),
(4, 'What is your favorite color?'),
(5, 'What is your favorite sport?'),
(6, 'What is your favorite animal?'),
(7, 'What is your username of instagram?'),
(8, 'What is your bike registration number?'),
(9, 'What is your car registration number?');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(3) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`) VALUES
(13, '122.jpg'),
(14, '21.jpg'),
(15, '31.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `added_date` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `name`, `added_date`) VALUES
(8, 'Gujarat', '25-02-2019 10:37:24pm');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(5) NOT NULL,
  `code` int(5) NOT NULL,
  `name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `code`, `name`) VALUES
(2, 100, 'New Order'),
(3, 101, 'Appointed'),
(4, 102, 'Active'),
(5, 103, 'Complete'),
(6, 104, 'Cancel');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(5) NOT NULL,
  `terms` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(5) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `date` varchar(25) NOT NULL,
  `admin_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `msg`, `date`, `admin_id`) VALUES
(1, 'EverShine has given me an opportunity to showcase my work through a convenient platform. It’s all One CLICK away.', '16-03-2019 09:39:56pm', 1),
(2, 'In the past one year EverShine has given me business worth Rs. 1 Lakh+ and has enabled me in quitting my MNC job and follow my passion.', '16-03-2019 09:41:25pm', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `address` varchar(50) NOT NULL,
  `created_date` varchar(25) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `city_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `address`, `created_date`, `phone`, `image`, `city_id`) VALUES
(1, 'Gopal Kushwaha', 'gopu', '$2y$10$Y9MzdjrOSUt7G/L08fhBs.Qo1kO76vaL.6hnMJFwpNlWdJYT0TaSq', 'kgopal8306@gmail.com', 'surat', '05-03-2019 04:44:04p', '7567392027', '12.jpg', 8),
(2, '', '', '$2y$10$q5WC1ZFO7Gbw2Rj7VV5wPOW.Rr3p1P95SznZ5brfObGSoDeADnqD2', 'kavisha@gamil.com', '', '17-03-2019 02:37:27pm', '7226989767', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `back_images`
--
ALTER TABLE `back_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
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
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_time`
--
ALTER TABLE `service_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup_security`
--
ALTER TABLE `signup_security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `back_images`
--
ALTER TABLE `back_images`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `emp`
--
ALTER TABLE `emp`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `service_time`
--
ALTER TABLE `service_time`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `signup_security`
--
ALTER TABLE `signup_security`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
