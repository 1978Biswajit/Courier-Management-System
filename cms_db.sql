-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2022 at 12:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_db`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_admin` (`fullname` VARCHAR(50), `contact` INT(11), `city` VARCHAR(100), `email` VARCHAR(100), `password` VARCHAR(100), `repassword` VARCHAR(100))   INSERT INTO `admin`(`fullname`, `contact`, `city`, `email`, `password`, `repassword`) VALUES (fullname,contact,city,email,password,repassword)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_driver` (`fullname` VARCHAR(50), `contact` INT(11), `email` VARCHAR(100), `password` VARCHAR(100), `repassword` VARCHAR(100))   INSERT INTO `driver`(`fullname`, `contact`, `email`, `password`, `repassword`) VALUES (fullname,contact,email,password,repassword)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_feedback` (`name` VARCHAR(50), `email` VARCHAR(100), `message` VARCHAR(50))   INSERT INTO `feedback`(`name`, `email`, `message`) VALUES (name,email,message)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_user` (IN `fullname` VARCHAR(50), IN `contact` INT(11), IN `city` VARCHAR(100), IN `email` VARCHAR(100), IN `password` VARCHAR(100), IN `repassword` VARCHAR(100))   INSERT INTO `user`(`fullname`, `contact`, `city`, `email`, `password`, `repassword`) VALUES (fullname,contact,city,email,password,repassword)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `read_admin` ()   BEGIN
select * FROM admin;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `read_driver` ()   BEGIN
select * FROM driver;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `read_feedback` ()   BEGIN
SELECT * from feedback;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `read_user` ()   BEGIN
select * FROM user;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `repassword` varchar(100) NOT NULL,
  `datatime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `contact`, `city`, `email`, `password`, `repassword`, `datatime`) VALUES
(1, 'Biswajit Mallick', 123456789, 'Chattogram', 'admin@gmail.com', '123457', '123457', '2022-11-10 08:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `volume` varchar(20) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `sender_name` varchar(50) NOT NULL,
  `sender_email` varchar(50) NOT NULL,
  `sender_contact` varchar(50) NOT NULL,
  `sender_address` varchar(50) NOT NULL,
  `sender_city` varchar(50) NOT NULL,
  `receiver_name` varchar(50) NOT NULL,
  `receiver_email` varchar(50) NOT NULL,
  `receiver_contact` varchar(50) NOT NULL,
  `receiver_address` varchar(50) NOT NULL,
  `receiver_city` varchar(50) NOT NULL,
  `tracking_id` varchar(50) NOT NULL,
  `status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courier`
--

INSERT INTO `courier` (`id`, `user_id`, `driver_id`, `weight`, `volume`, `quantity`, `date`, `sender_name`, `sender_email`, `sender_contact`, `sender_address`, `sender_city`, `receiver_name`, `receiver_email`, `receiver_contact`, `receiver_address`, `receiver_city`, `tracking_id`, `status`) VALUES
(1, 1, 1, '80', '60', '10', '2022-04-12', 'Maruf Hasnat', 'mrfhasnat@gmail.com', '01889104482', 'Uttara Dhaka', 'Dhaka', 'Shakil Ahmed', 'shakil@gmail.com', '01759871555', 'Sonadighi Mosjid Rajshahi', 'Rajshahi', '0748aacb01da4dd1aa30ee5083295b7f', 2),
(2, 1, 2, '80', '20', '10', '2022-04-12', 'Maruf Hasnat', 'mrfhasnat@gmail.com', '01889104482', 'Uttara Dhaka', 'Dhaka', 'Sajib Sarker', 'sajib@gmail.com', '01759275731', 'Rangpur Town', 'Rangpur', '6238324c644fc582a0a264c48bdc395a', 2),
(3, 3, 1, '80', '80', '80', '2022-04-12', 'Ishaque Mahmud', 'ishaque@gmail.com', '01834931223', 'Chattogram Sadar', 'Chattogram', 'Maruf Hasnat', 'mrfhasnat@gmail.com', '01752276521', 'Uttara Dhaka', 'Dhaka', '21050382a1a5af889c238f02593b9be8', 2),
(4, 3, 2, '50', '80', '40', '2022-04-12', 'Ishaque Mahmud', 'ishaque@gmail.com', '01834931211', 'Chattogram Sadar', 'Chattogram', 'Salman Ali', 'salman@gmail.com', '01759871555', 'Dhaka Mirpur', 'Dhaka', 'da5c98913834fd48ddb77b68e938a3b2', 2),
(5, 8, 1, '60', '20', '10', '2022-04-12', 'Md. Omaer', 'omaer@gmail.com', '01832375322', 'Uttara Dhaka', 'Dhaka', 'Maruf Hasnat', 'maruf@gmail.com', '01752276521', 'Sonadighi Mosjid Rajshahi', 'Rajshahi', 'd7c4f9a6cb59af169751018f4f3f4a4e', 2),
(7, 10, 4, '80', '80', '20', '2022-10-29', 'Dola Barua', 'dol@gmail.com', '01704612626', 'bhaddarhat', 'Chattogram', 'Bappu mallick', 'bappu@gmail.com', '01591110222', '2no gate', 'Dhaka', 'f82fd68c5d2d703863a3d133ea2b605a', 2),
(8, 11, 1, '90', '120', '30', '2022-10-29', 'Payel Dev', 'p@gamil.com', '01707045126', 'cheragi', 'Khulna', 'Bappu mallick', 'bappu@gmail.com', '01591110212', '2no gate', 'Dhaka', '9d7bc9658781b7b48f04121a24a89dcf', 2),
(17, 14, 0, '90', '80', '20', '2022-10-30', 'Nodi', 'nodi@gmail.com', '01804567892', 'bhaddarhat', 'Chattogram', 'Bappu', 'bappu@gmail.com', '01744454556', 'uttara', 'Dhaka', '1bf4a5cd63dc178b49fb19a4df8c9725', 1),
(18, 15, 0, '80', '300', '50', '2022-11-01', 'Proshenjit Mallick', 'pm@gmail.com', '01317656992', 'Khulshi', 'Chattogram', 'Dola Barua', 'dol@gmail.com', '01804567890', 'uttara', 'Dhaka', 'b16716355695f81236509790de7669cd', 1),
(19, 16, 0, '100', '240', '60', '2022-11-05', 'Biswajit Mallick Bappu', 'bappu@gmail.com', '01704612629', 'khulshi', 'Mymensingh', 'Jossie', 'j@gmail.com', '01760615804', 'shahobag', 'Dhaka', 'fbcf5128c64c8bcbbb5847d70d92c16c', 1),
(20, 17, 0, '90', '360', '60', '2022-11-10', 'Lizzie das', 'li@gmail.com', '01804567894', 'rajshahi city', 'Rajshahi', 'priya das', 'pm@gmail.com', '01704612629', 'shahobag', 'Dhaka', 'a87737031ab05f7ba4a2b09bbb90aa72', 1);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `repassword` varchar(100) NOT NULL,
  `status` int(50) NOT NULL,
  `amount` int(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id`, `fullname`, `contact`, `email`, `password`, `repassword`, `status`, `amount`, `datetime`) VALUES
(1, 'Kuddus Mia', 1238492101, 'kuddus@gmail.com', '123456', '123456', 1, 5350, '2022-04-10 03:39:05'),
(2, 'Rajib Ali', 1556839213, 'rajib@gmail.com', '123456', '123456', 0, 0, '2022-04-10 03:41:43'),
(3, 'Sarder Ali', 1927267431, 'sarder@gmail.com', '123456', '123456', 0, 0, '2022-04-10 03:42:54'),
(4, 'Manik Dey', 1927328134, 'manik@gmail.com', '123456', '123456', 1, 650, '2022-04-10 03:44:12'),
(5, 'Mahmud Ali', 1678210391, 'mahmud@gmail.com', '123456', '123456', 0, 0, '2022-04-10 03:46:28'),
(6, 'Lizzie', 1879645623, 'liz@gmail.com', '123456789', '123456789', 1, 0, '2022-10-29 07:58:45'),
(7, 'Katpotti', 159555555, 'irezon@irezon.com', '123456', '123456', 0, 0, '2022-10-29 13:30:36'),
(8, 'Jossie', 1111111111, 'sunnygkp10@gmail.com', '123456', '123456', 0, 0, '2022-10-29 13:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`) VALUES
(4, 'MD. NAYEEM MIAH', 'nayeem@gmail.com', 'The service is awesome '),
(6, 'Nayeem Hyder', 'nayeem@gmail.com', 'The service is very good '),
(12, 'Proshenjit Mallick', 'pm@gmail.com', 'This is very nice courier service'),
(13, 'Biswajit Mallick Bappu', 'bappu@gmail.com', 'What a great project!');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `post_code` smallint(4) NOT NULL,
  `city` varchar(50) NOT NULL,
  `division` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `post_code`, `city`, `division`) VALUES
(1, 1230, 'Uttara, Dhaka', 'Dhaka'),
(2, 6000, 'Rajshahi Town', 'Rajshahi'),
(3, 9000, 'Khulna Town', 'Khulna'),
(4, 8200, 'Barisal Town', 'Barisal'),
(5, 3100, 'Sylhet Town', 'Sylhet'),
(6, 4000, 'Chattogram Town', 'Chattogram'),
(7, 5402, 'Rangpur Town', 'Rangpur'),
(8, 2200, 'Mymensingh Town', 'Mymensingh');

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `courier_id` int(11) NOT NULL,
  `basic_price` varchar(20) NOT NULL,
  `weight_price` varchar(20) NOT NULL,
  `volume_price` varchar(20) NOT NULL,
  `total_price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `user_id`, `courier_id`, `basic_price`, `weight_price`, `volume_price`, `total_price`) VALUES
(1, 1, 1, '1000', '1330', '1440', '3770'),
(2, 1, 2, '800', '1064', '888', '2752'),
(3, 3, 3, '1500', '1995', '1995', '5490'),
(4, 3, 4, '1500', '1995', '1995', '5490'),
(5, 8, 5, '700', '931', '777', '2408'),
(6, 9, 6, '700', '931', '854', '2485'),
(7, 10, 7, '1500', '1995', '1995', '5490'),
(8, 11, 0, '900', '1197', '1197', '3294'),
(9, 14, 16, '1500', '1995', '1995', '5490'),
(10, 14, 17, '1500', '1995', '1995', '5490'),
(11, 15, 18, '1500', '1995', '2160', '5655'),
(12, 16, 19, '600', '798', '864', '2262'),
(13, 2, 2, '700', '931', '1008', '2639'),
(14, 17, 20, '700', '931', '1008', '2639');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tracking_id` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`id`, `user_id`, `tracking_id`, `status`, `location`, `date`) VALUES
(1, 1, '0748aacb01da4dd1aa30ee5083295b7f', 'delivered', 'Rajshahi', '2022-04-13'),
(2, 1, '6238324c644fc582a0a264c48bdc395a', 'delivered', 'Rangpur', '2022-04-13'),
(3, 3, '21050382a1a5af889c238f02593b9be8', 'delivered', 'Dhaka, Bangladesh', '2022-04-13'),
(4, 3, 'da5c98913834fd48ddb77b68e938a3b2', 'delivered', 'Dhaka, Bangladesh', '2022-04-13'),
(5, 8, 'd7c4f9a6cb59af169751018f4f3f4a4e', 'delivered', 'Rajshahi', '2022-04-13'),
(7, 10, 'f82fd68c5d2d703863a3d133ea2b605a', 'delivered', 'Dhaka', '2022-10-29'),
(8, 11, '9d7bc9658781b7b48f04121a24a89dcf', 'delivered', 'Dhaka', '2022-10-29'),
(9, 14, '76abb86927d3a873420155d74d7a538e', 'pending', '', ''),
(10, 14, '1bf4a5cd63dc178b49fb19a4df8c9725', 'pending', '', ''),
(11, 15, 'b16716355695f81236509790de7669cd', 'pending', '', ''),
(12, 16, 'fbcf5128c64c8bcbbb5847d70d92c16c', 'pending', '', ''),
(13, 17, 'a87737031ab05f7ba4a2b09bbb90aa72', 'pending', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `city` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `repassword` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `contact`, `city`, `email`, `password`, `repassword`, `datetime`) VALUES
(8, 'Md. Omaer ', 1832375322, 'Chattogram', 'omaer@gmail.com', '123456', '123456', '2022-04-12 04:19:47'),
(10, 'Dola Barua', 1704612626, 'Chattogram', 'dol@gmail.com', '123456', '123456', '2022-10-29 02:27:02'),
(11, 'Payel Dev', 1707045126, 'Khulna', 'p@gamil.com', '123456', '123456', '2022-10-29 03:30:53'),
(12, 'Bappu', 1465445646, 'Dhaka', 'admin@admin.com', '123456', '123456', '2022-10-29 07:13:54'),
(13, 'Katpotti', 1805612364, 'Rajshahi', 'irezon@irezon.com', '123456', '123456', '2022-10-29 07:16:03'),
(15, 'Proshenjit Mallick', 1317656992, 'Chattogram', 'pm@gmail.com', '123456', '123456', '2022-11-01 05:25:52'),
(16, 'Biswajit Mallick Bappu', 1704612629, 'Mymensingh', 'bappu@gmail.com', '147147', '147147', '2022-11-04 22:59:30'),
(17, 'Lizzie das', 180456789, 'Rajshahi', 'li@gmail.com', '123456', '123456', '2022-11-10 11:17:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_fk` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courier`
--
ALTER TABLE `courier`
  ADD CONSTRAINT `courier_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
