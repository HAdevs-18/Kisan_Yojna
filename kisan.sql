-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2018 at 06:28 PM
-- Server version: 5.7.9
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kisan`
--

-- --------------------------------------------------------

--
-- Table structure for table `ky_example`
--

DROP TABLE IF EXISTS `ky_example`;
CREATE TABLE IF NOT EXISTS `ky_example` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_image` varchar(500) NOT NULL,
  `data_title` varchar(100) NOT NULL,
  `data_subtitle` varchar(100) NOT NULL,
  `data_date` varchar(50) NOT NULL,
  `data_content` varchar(5000) NOT NULL,
  `url_to_execute` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ky_example`
--

INSERT INTO `ky_example` (`id`, `data_image`, `data_title`, `data_subtitle`, `data_date`, `data_content`, `url_to_execute`) VALUES
(1, 'http://192.168.43.49/kisan/uploads/1.jpg', 'Testing', 'Bla Bla Bla', 'Third June', 'gggfehdfguydgfhjfgygyfgg', 'http://192.168.43.49/kisan/MH01.html'),
(2, 'http://192.168.43.49/kisan/uploads/2.jpg', 'bsjfjkkj', 'ghfdb', 'dsbdbdb', 'cbhjsdjdfydgfdg', ''),
(3, 'http://192.168.43.49/kisan/uploads/4.jpg', 'jdhgkjfbgfbj', 'jkjhckjvbd,m', 'dkjvdjvnjh', 'scjhdgfdgfjdbchdgcbdcdg', '');

-- --------------------------------------------------------

--
-- Table structure for table `ky_images`
--

DROP TABLE IF EXISTS `ky_images`;
CREATE TABLE IF NOT EXISTS `ky_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(500) NOT NULL,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ky_images`
--

INSERT INTO `ky_images` (`id`, `image`, `state`) VALUES
(1, 'http://192.168.43.49/kisan/uploads/1.jpg', 'Maharashtra'),
(2, 'http://192.168.43.49/kisan/uploads/2.jpg', 'Gujarat'),
(3, 'http://192.168.43.49/kisan/uploads/3.jpg', 'Gujarat'),
(4, 'http://192.168.43.49/kisan/uploads/4.jpg', 'Maharashtra'),
(5, 'http://192.168.43.49/kisan/uploads/5.jpg', 'Maharashtra'),
(6, 'http://192.168.43.49/kisan/uploads/6.jpg', 'Andhra Pradesh'),
(7, 'http://192.168.43.49/kisan/uploads/7.jpg', 'Gujarat'),
(8, 'http://192.168.43.49/kisan/uploads/8.jpg', 'Maharashtra'),
(9, 'http://192.168.43.49/kisan/uploads/9.jpg', 'Gujarat'),
(10, 'http://192.168.43.49/kisan/uploads/10.jpg', 'Andhra Pradesh');

-- --------------------------------------------------------

--
-- Table structure for table `ky_info`
--

DROP TABLE IF EXISTS `ky_info`;
CREATE TABLE IF NOT EXISTS `ky_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(20) DEFAULT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `title` text,
  `des` text,
  `img` text,
  `webinfo` longtext,
  `weblink` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='info in details';

--
-- Dumping data for table `ky_info`
--

INSERT INTO `ky_info` (`id`, `state`, `menu`, `title`, `des`, `img`, `webinfo`, `weblink`, `timestamp`) VALUES
(1, 'Marathi', 'home', 'Hello', 'world', 'banner/apple.png', '<h2>WYSIWYG Editor</h2>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam ullamcorper sapien non nisl facilisis bibendum in quis tellus. Duis in urna bibendum turpis pretium fringilla. Aenean neque velit, porta eget mattis ac, imperdiet quis nisi. Donec non dui et tortor vulputate luctus. Praesent consequat rhoncus velit, ut molestie arcu venenatis sodales.</p>\r\n\r\n<p>Maecenas quis ante ante. Nunc adipiscing rhoncus rutrum. Pellentesque adipiscing urna mi, ut tempus lacus ultrices ac. Pellentesque sodales, libero et mollis interdum, dui odio vestibulum dolor, eu pellentesque nisl nibh quis nunc. Sed porttitor leo adipiscing venenatis vehicula. Aenean quis viverra enim. Praesent porttitor ut ipsum id ornare.</p>\r\n', NULL, '2018-06-12 18:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `ky_users`
--

DROP TABLE IF EXISTS `ky_users`;
CREATE TABLE IF NOT EXISTS `ky_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `email` varchar(5000) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `state` varchar(50) NOT NULL,
  `url_to_execute` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='Kisan yojna users when logged in the user information saves in this table.';

--
-- Dumping data for table `ky_users`
--

INSERT INTO `ky_users` (`id`, `uname`, `email`, `phone`, `state`, `url_to_execute`) VALUES
(46, 'HA Devs', 'hadevs18@gmail.com harish rahangdale Harish Rahangdale sdhgdshgh sfjhgdhfdh sfhgdfbdngfhd sjfgdshvfdshgyj djhcgsdhvchdgc jhdgchdsb', '8237061139', 'Maharashtra/à¤®à¤¹à¤¾à¤°à¤¾à¤·à¥à¤Ÿà¥à¤°', 'http://192.168.43.49/kisan/MH01.html');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
