-- phpMyAdmin SQL Dump
-- version 4.2.3deb1.trusty~ppa.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-06-25 18:44:45
-- 服务器版本： 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kaohe`
--

-- --------------------------------------------------------

--
-- 表的结构 `dm_order_checkout`
--

CREATE TABLE IF NOT EXISTS `dm_order_checkout` (
`order_checkout_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `model` int(10) NOT NULL DEFAULT '-1000',
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_paid` datetime DEFAULT NULL,
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `if_count` tinyint(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=515 ;

--
-- 转存表中的数据 `dm_order_checkout`
--

INSERT INTO `dm_order_checkout` (`order_checkout_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `date_paid`, `tax`, `if_count`, `sort_order`) VALUES
(1, 3, 20, '现金付款', -1000, 0, 40.6000, 40.6000, NULL, 0.0000, 0, 0),
(2, 3, 20, '现金付款', -1000, 0, -12.8000, -12.8000, NULL, 0.0000, 0, 0),
(3, 4, 20, '现金付款', -1000, 0, 9.8000, 9.8000, NULL, 0.0000, 0, 0),
(4, 5, 20, '现金付款', -1000, 0, 41.9000, 41.9000, NULL, 0.0000, 0, 0),
(10, 6, 20, '现金付款', -1000, 0, -19.0800, -19.0800, NULL, 0.0000, 0, 0),
(6, 6, 20, '现金付款', -1000, 0, 28.8800, 28.8800, NULL, 0.0000, 0, 0),
(7, 6, 20, '现金付款', -1000, 0, -9.8000, -9.8000, NULL, 0.0000, 0, 0),
(11, 1, 3, '金额调整', -3, 0, -10.0000, -10.0000, NULL, 0.0000, 0, 0),
(12, 1, 20, '现金付款', -1000, 0, 29.1000, 29.1000, NULL, 0.0000, 0, 0),
(13, 4, 20, '现金付款', -1000, 0, 0.0000, 0.0000, NULL, 0.0000, 0, 0),
(14, 7, 20, '现金付款', -1000, 0, 22.3000, 22.3000, NULL, 0.0000, 0, 0),
(15, 1, 20, '现金付款', -1000, 0, 9.8000, 9.8000, NULL, 0.0000, 0, 0),
(17, 10, 20, '现金付款', -1000, 0, 10.8000, 10.8000, NULL, 0.0000, 0, 0),
(18, 11, 20, '现金付款', -1000, 0, -10.8000, -10.8000, NULL, 0.0000, 0, 0),
(19, 12, 20, '现金付款', -1000, 0, 21.6000, 21.6000, NULL, 0.0000, 0, 0),
(20, 13, 20, '现金付款', -1000, 0, 10.8000, 10.8000, NULL, 0.0000, 0, 0),
(21, 14, 20, '现金付款', -1000, 0, -10.8000, -10.8000, NULL, 0.0000, 0, 0),
(22, 9, 20, '现金付款', -1000, 0, 10.8000, 10.8000, NULL, 0.0000, 0, 0),
(23, 15, 20, '现金付款', -1000, 0, -10.8000, -10.8000, NULL, 0.0000, 0, 0),
(24, 16, 20, '现金付款', -1000, 0, 19.6000, 19.6000, NULL, 0.0000, 0, 0),
(25, 17, 20, '现金付款', -1000, 0, 9.8000, 9.8000, NULL, 0.0000, 0, 0),
(26, 18, 20, '现金付款', -1000, 0, -9.8000, -9.8000, NULL, 0.0000, 0, 0),
(27, 8, 20, '现金付款', -1000, 0, 10.8000, 10.8000, NULL, 0.0000, 0, 0),
(28, 19, 20, '现金付款', -1000, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(29, 21, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(30, 22, 20, '现金付款', -1000, 0, 13.0000, 13.0000, NULL, 0.0000, 0, 0),
(31, 23, 20, '现金付款', -1000, 0, 20.6000, 20.6000, NULL, 0.0000, 0, 0),
(32, 25, 20, '现金付款', -1000, 0, 19.6000, 19.6000, NULL, 0.0000, 0, 0),
(33, 26, 20, '现金付款', -1000, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(34, 27, 20, '现金付款', -1000, 0, 12.5000, 12.5000, NULL, 0.0000, 0, 0),
(35, 28, 20, '现金付款', -1000, 0, 45.0000, 45.0000, NULL, 0.0000, 0, 0),
(36, 24, 20, '现金付款', -1000, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(37, 29, 20, '现金付款', -1000, 0, 21.5000, 21.5000, NULL, 0.0000, 0, 0),
(38, 30, 20, '现金付款', -1000, 0, 20.5000, 20.5000, NULL, 0.0000, 0, 0),
(39, 31, 20, '现金付款', -1000, 0, 10.0000, 10.0000, NULL, 0.0000, 0, 0),
(40, 32, 20, '现金付款', -1000, 0, 0.0000, 0.0000, NULL, 0.0000, 0, 0),
(41, 33, 20, '现金付款', -1000, 0, 20.0000, 20.0000, NULL, 0.0000, 0, 0),
(42, 34, 20, '现金付款', -1000, 0, 27.1000, 27.1000, NULL, 0.0000, 0, 0),
(43, 35, 20, '现金付款', -1000, 0, 20.0000, 20.0000, NULL, 0.0000, 0, 0),
(44, 36, 20, '现金付款', -1000, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(45, 36, 20, '现金付款', -1000, 0, -5.5000, -5.5000, NULL, 0.0000, 0, 0),
(46, 37, 20, '现金付款', -1000, 0, 16.8000, 16.8000, NULL, 0.0000, 0, 0),
(47, 39, 20, '现金付款', -1000, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(48, 39, 20, '现金付款', -1000, 0, -5.5000, -5.5000, NULL, 0.0000, 0, 0),
(49, 40, 20, '现金付款', -1000, 0, 16.5000, 16.5000, NULL, 0.0000, 0, 0),
(50, 40, 20, '现金付款', -1000, 0, -5.5000, -5.5000, NULL, 0.0000, 0, 0),
(51, 41, 20, '现金付款', -1000, 0, 28.0000, 28.0000, NULL, 0.0000, 0, 0),
(52, 42, 20, '现金付款', -1000, 0, 21.6000, 21.6000, NULL, 0.0000, 0, 0),
(54, 44, 20, '现金付款', -1000, 0, -5.5000, -5.5000, NULL, 0.0000, 0, 0),
(55, 45, 20, '现金付款', -1000, 0, -10.0000, -10.0000, NULL, 0.0000, 0, 0),
(56, 46, 20, '现金付款', -1000, 0, 48.1000, 48.1000, NULL, 0.0000, 0, 0),
(57, 47, 20, '现金付款', -1000, 0, 29.4000, 29.4000, NULL, 0.0000, 0, 0),
(58, 47, 20, '现金付款', -1000, 0, -9.8000, -9.8000, NULL, 0.0000, 0, 0),
(59, 49, 20, '现金付款', -1000, 0, 0.0000, 0.0000, NULL, 0.0000, 0, 0),
(60, 50, 20, '现金付款', -1000, 0, 7.5000, 7.5000, NULL, 0.0000, 0, 0),
(61, 50, 20, '现金付款', -1000, 0, -7.5000, -7.5000, NULL, 0.0000, 0, 0),
(62, 48, 20, '现金付款', -1000, 0, 45.7000, 45.7000, NULL, 0.0000, 0, 0),
(63, 53, 3, '金额调整', -3, 0, -0.5000, -0.5000, NULL, 0.0000, 0, 0),
(64, 53, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(65, 54, 20, '现金付款', -1000, 0, 0.0000, 0.0000, NULL, 0.0000, 0, 0),
(66, 55, 20, '现金付款', -1000, 0, 20.0000, 20.0000, NULL, 0.0000, 0, 0),
(67, 56, 20, '现金付款', -1000, 0, 20.5000, 20.5000, NULL, 0.0000, 0, 0),
(68, 57, 20, '现金付款', -1000, 0, 16.8000, 16.8000, NULL, 0.0000, 0, 0),
(69, 58, 20, '现金付款', -1000, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(70, 61, 20, '现金付款', -1000, 0, 10.0000, 10.0000, NULL, 0.0000, 0, 0),
(71, 62, 20, '现金付款', -1000, 0, 11.5000, 11.5000, NULL, 0.0000, 0, 0),
(72, 62, 20, '现金付款', -1000, 0, -1.5000, -1.5000, NULL, 0.0000, 0, 0),
(73, 64, 20, '现金付款', -1000, 0, 21.0000, 21.0000, NULL, 0.0000, 0, 0),
(74, 63, 20, '现金付款', -1000, 0, 44.0000, 44.0000, NULL, 0.0000, 0, 0),
(75, 65, 20, '现金付款', -1000, 0, 23.0000, 23.0000, NULL, 0.0000, 0, 0),
(76, 65, 20, '现金付款', -1000, 0, -11.5000, -11.5000, NULL, 0.0000, 0, 0),
(77, 66, 20, '现金付款', -1000, 0, 23.0000, 23.0000, NULL, 0.0000, 0, 0),
(78, 68, 20, '现金付款', -1000, 0, 13.0000, 13.0000, NULL, 0.0000, 0, 0),
(79, 68, 20, '现金付款', -1000, 0, -6.5000, -6.5000, NULL, 0.0000, 0, 0),
(80, 70, 20, '现金付款', -1000, 0, 17.0000, 17.0000, NULL, 0.0000, 0, 0),
(81, 71, 22, '银行卡付款', -1002, 0, 23.0000, 23.0000, NULL, 0.0000, 0, 0),
(82, 71, 20, '现金付款', -1000, 0, -11.5000, -11.5000, NULL, 0.0000, 0, 0),
(83, 72, 20, '现金付款', -1000, 0, 23.8000, 23.8000, NULL, 0.0000, 0, 0),
(84, 72, 20, '现金付款', -1000, 0, -11.9000, -11.9000, NULL, 0.0000, 0, 0),
(85, 73, 20, '现金付款', -1000, 0, 6.4000, 6.4000, NULL, 0.0000, 0, 0),
(86, 73, 20, '现金付款', -1000, 0, -2.8000, -2.8000, NULL, 0.0000, 0, 0),
(87, 74, 20, '现金付款', -1000, 0, 24.0000, 24.0000, NULL, 0.0000, 0, 0),
(88, 74, 20, '现金付款', -1000, 0, 13.8000, 13.8000, NULL, 0.0000, 0, 0),
(89, 75, 20, '现金付款', -1000, 0, 26.6000, 26.6000, NULL, 0.0000, 0, 0),
(90, 76, 20, '现金付款', -1000, 0, 26.6000, 26.6000, NULL, 0.0000, 0, 0),
(91, 74, 20, '现金付款', -1000, 0, -11.5000, -11.5000, NULL, 0.0000, 0, 0),
(92, 70, 20, '现金付款', -1000, 0, -8.5000, -8.5000, NULL, 0.0000, 0, 0),
(93, 66, 20, '现金付款', -1000, 0, -11.5000, -11.5000, NULL, 0.0000, 0, 0),
(94, 77, 20, '现金付款', -1000, 0, 15.8000, 15.8000, NULL, 0.0000, 0, 0),
(95, 78, 20, '现金付款', -1000, 0, 11.9000, 11.9000, NULL, 0.0000, 0, 0),
(96, 78, 20, '现金付款', -1000, 0, 0.0000, 0.0000, NULL, 0.0000, 0, 0),
(97, 77, 20, '现金付款', -1000, 0, 5.0000, 5.0000, NULL, 0.0000, 0, 0),
(98, 79, 20, '现金付款', -1000, 0, 34.1000, 34.1000, NULL, 0.0000, 0, 0),
(99, 79, 20, '现金付款', -1000, 0, -5.5000, -5.5000, NULL, 0.0000, 0, 0),
(100, 82, 20, '现金付款', -1000, 0, 27.0000, 27.0000, NULL, 0.0000, 0, 0),
(101, 85, 20, '现金付款', -1000, 0, 10.0000, 10.0000, NULL, 0.0000, 0, 0),
(102, 85, 20, '现金付款', -1000, 0, -5.0000, -5.0000, NULL, 0.0000, 0, 0),
(103, 86, 2, '折扣', -2, 0, -0.0500, -0.8200, NULL, 0.0000, 0, 0),
(104, 86, 20, '现金付款', -1000, 0, 15.4800, 15.4800, NULL, 0.0000, 0, 0),
(105, 90, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(106, 94, 20, '现金付款', -1000, 0, 36.7000, 36.7000, NULL, 0.0000, 0, 0),
(107, 95, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(108, 96, 20, '现金付款', -1000, 0, 13.0000, 13.0000, NULL, 0.0000, 0, 0),
(109, 98, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(110, 100, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(111, 102, 20, '现金付款', -1000, 0, 20.0000, 20.0000, NULL, 0.0000, 0, 0),
(112, 104, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(113, 105, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(114, 106, 20, '现金付款', -1000, 0, 16.5000, 16.5000, NULL, 0.0000, 0, 0),
(115, 89, 20, '现金付款', -1000, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(116, 109, 20, 'Cash Payment', -1000, 0, 6.0000, 6.0000, NULL, 0.0000, 0, 0),
(117, 110, 20, 'Cash Payment', -1000, 0, 16.2000, 16.2000, NULL, 0.0000, 0, 0),
(118, 112, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(119, 113, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(120, 115, 20, '现金付款', -1000, 0, 16.5000, 16.5000, NULL, 0.0000, 0, 0),
(121, 116, 20, '现金付款', -1000, 0, 16.5000, 16.5000, NULL, 0.0000, 0, 0),
(122, 117, 20, '现金付款', -1000, 0, 53.4000, 53.4000, NULL, 0.0000, 0, 0),
(123, 118, 20, '现金付款', -1000, 0, 53.4000, 53.4000, NULL, 0.0000, 0, 0),
(124, 119, 20, '现金付款', -1000, 0, 20.5000, 20.5000, NULL, 0.0000, 0, 0),
(125, 122, 20, '现金付款', -1000, 0, 23.0000, 23.0000, NULL, 0.0000, 0, 0),
(126, 122, 20, '现金付款', -1000, 0, -11.5000, -11.5000, NULL, 0.0000, 0, 0),
(127, 120, 20, '现金付款', -1000, 0, 41.1000, 41.1000, NULL, 0.0000, 0, 0),
(128, 81, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(129, 111, 20, '现金付款', -1000, 0, 10.5000, 10.5000, NULL, 0.0000, 0, 0),
(130, 97, 3, '金额调整', -3, 0, 5.0000, 5.0000, NULL, 0.0000, 0, 0),
(131, 97, 20, '现金付款', -1000, 0, 28.0000, 28.0000, NULL, 0.0000, 0, 0),
(132, 125, 20, '现金付款', -1000, 0, 15.0000, 15.0000, NULL, 0.0000, 0, 0),
(133, 125, 20, '现金付款', -1000, 0, -7.5000, -7.5000, NULL, 0.0000, 0, 0),
(134, 129, 20, '现金付款', -1000, 0, 40.4000, 40.4000, NULL, 0.0000, 0, 0),
(135, 130, 20, '现金付款', -1000, 0, 89.0000, 89.0000, NULL, 0.0000, 0, 0),
(136, 133, 20, '现金付款', -1000, 0, 9.0000, 9.0000, NULL, 0.0000, 0, 0),
(137, 134, 20, '现金付款', -1000, 0, 6.5000, 6.5000, NULL, 0.0000, 0, 0),
(138, 135, 20, '现金付款', -1000, 0, 6.0000, 6.0000, NULL, 0.0000, 0, 0),
(139, 132, 20, '现金付款', -1000, 0, 2.0000, 2.0000, NULL, 0.0000, 0, 0),
(140, 136, 20, '现金付款', -1000, 0, 4.0000, 4.0000, NULL, 0.0000, 0, 0),
(141, 137, 20, '现金付款', -1000, 0, 6.1000, 6.1000, NULL, 0.0000, 0, 0),
(142, 138, 20, '现金付款', -1000, 0, 8.5000, 8.5000, NULL, 0.0000, 0, 0),
(143, 139, 22, '银行卡付款', -1002, 0, 4.0000, 4.0000, NULL, 0.0000, 0, 0),
(144, 124, 20, '现金付款', -1000, 0, 30.5000, 30.5000, NULL, 0.0000, 0, 0),
(145, 140, 20, '现金付款', -1000, 0, 12.7000, 12.7000, NULL, 0.0000, 0, 0),
(146, 141, 20, '现金付款', -1000, 0, 12.1000, 12.1000, NULL, 0.0000, 0, 0),
(147, 142, 20, '现金付款', -1000, 0, 4.5000, 4.5000, NULL, 0.0000, 0, 0),
(148, 77, 20, '现金付款', -1000, 0, 61.3000, 61.3000, NULL, 0.0000, 0, 0),
(149, 143, 20, '现金付款', -1000, 0, 6.0000, 6.0000, NULL, 0.0000, 0, 0),
(150, 144, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(151, 145, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(152, 146, 20, '现金付款', -1000, 0, 29.0000, 29.0000, NULL, 0.0000, 0, 0),
(153, 147, 20, '现金付款', -1000, 0, 16.5000, 16.5000, NULL, 0.0000, 0, 0),
(154, 148, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(155, 149, 20, '现金付款', -1000, 0, 29.0000, 29.0000, NULL, 0.0000, 0, 0),
(156, 124, 20, '现金付款', -1000, 0, -8.5000, -8.5000, NULL, 0.0000, 0, 0),
(157, 150, 20, '现金付款', -1000, 0, 16.5000, 16.5000, NULL, 0.0000, 0, 0),
(159, 151, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(160, 152, 2, '折扣', -2, 0, -0.5000, -4.1300, NULL, 0.0000, 0, 0),
(161, 152, 3, '金额调整', -3, 0, -2.0000, -2.0000, NULL, 0.0000, 0, 0),
(162, 152, 3, '金额调整', -3, 0, 1.0000, 1.0000, NULL, 0.0000, 0, 0),
(163, 152, 20, '现金付款', -1000, 0, 3.1200, 3.1200, NULL, 0.0000, 0, 0),
(164, 157, 20, '现金付款', -1000, 0, 22.0000, 22.0000, NULL, 0.0000, 0, 0),
(165, 159, 20, '现金付款', -1000, 0, 22.0000, 22.0000, NULL, 0.0000, 0, 0),
(166, 160, 20, '现金付款', -1000, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(167, 162, 22, '银行卡付款', -1002, 0, 11.5000, 11.5000, NULL, 0.0000, 0, 0),
(168, 163, 22, '银行卡付款', -1002, 0, 5.5000, 5.5000, NULL, 0.0000, 0, 0),
(169, 131, 20, '现金付款', -1000, 0, 0.0000, 0.0000, NULL, 0.0000, 0, 0),
(170, 89, 20, '现金付款', -1000, 0, 10.0000, 10.0000, NULL, 0.0000, 0, 0),
(171, 153, 20, '现金付款', -1000, 0, 21.3000, 21.3000, NULL, 0.0000, 0, 0),
(172, 169, 20, '现金付款', -1000, 0, 43.0000, 43.0000, NULL, 0.0000, 0, 0),
(173, 120, 20, '现金付款', -1000, 0, 14.6000, 14.6000, NULL, 0.0000, 0, 0),
(174, 171, 20, '现金付款', -1000, 0, 33.3000, 33.3000, NULL, 0.0000, 0, 0),
(175, 173, 20, '现金付款', -1000, 0, 55.7000, 55.7000, NULL, 0.0000, 0, 0),
(176, 80, 20, '现金付款', -1000, 0, 33.5000, 33.5000, NULL, 0.0000, 0, 0),
(177, 128, 20, '现金付款', -1000, 0, 35.5000, 35.5000, NULL, 0.0000, 0, 0),
(178, 87, 20, '现金付款', -1000, 0, 31.7000, 31.7000, NULL, 0.0000, 0, 0),
(179, 179, 20, '现金付款', -1000, 0, 11.5000, 11.5000, NULL, 0.0000, 0, 0),
(180, 179, 20, '现金付款', -1000, 0, -11.5000, -11.5000, NULL, 0.0000, 0, 0),
(181, 181, 20, '现金付款', -1000, 0, 11.5000, 11.5000, NULL, 0.0000, 0, 0),
(182, 183, 20, '现金付款', -1000, 0, 23.0000, 23.0000, NULL, 0.0000, 0, 0),
(195, 196, 20, '现金付款', -1000, 0, 19.2000, 19.2000, NULL, 0.0000, 0, 0),
(199, 201, 20, '现金付款', -1000, 0, 7.1000, 7.1000, NULL, 0.0000, 0, 0),
(203, 207, 20, '现金付款', -1000, 0, 5.6000, 5.6000, NULL, 0.0000, 0, 0),
(204, 208, 20, '现金付款', -1000, 0, 12.4000, 12.4000, NULL, 0.0000, 0, 0),
(207, 211, 20, '现金付款', -1000, 0, 8.6000, 8.6000, NULL, 0.0000, 0, 0),
(209, 214, 20, '现金付款', -1000, 0, 7.5000, 7.5000, NULL, 0.0000, 0, 0),
(210, 215, 20, '现金付款', -1000, 0, 10.7000, 10.7000, NULL, 0.0000, 0, 0),
(211, 216, 20, '现金付款', -1000, 0, 11.4000, 11.4000, NULL, 0.0000, 0, 0),
(212, 217, 20, '现金付款', -1000, 0, 12.4000, 12.4000, NULL, 0.0000, 0, 0),
(213, 218, 20, '现金付款', -1000, 0, 11.4000, 11.4000, NULL, 0.0000, 0, 0),
(214, 219, 20, '现金付款', -1000, 0, 10.8000, 10.8000, NULL, 0.0000, 0, 0),
(215, 220, 20, '现金付款', -1000, 0, 7.0000, 7.0000, NULL, 0.0000, 0, 0),
(216, 221, 20, '现金付款', -1000, 0, 6.1000, 6.1000, NULL, 0.0000, 0, 0),
(217, 222, 20, '现金付款', -1000, 0, 9.2000, 9.2000, NULL, 0.0000, 0, 0),
(218, 223, 20, '现金付款', -1000, 0, 8.8000, 8.8000, NULL, 0.0000, 0, 0),
(219, 224, 20, '现金付款', -1000, 0, 11.4000, 11.4000, NULL, 0.0000, 0, 0),
(220, 225, 20, '现金付款', -1000, 0, 6.2000, 6.2000, NULL, 0.0000, 0, 0),
(221, 226, 20, '现金付款', -1000, 0, 4.3000, 4.3000, NULL, 0.0000, 0, 0),
(222, 227, 20, '现金付款', -1000, 0, 5.4000, 5.4000, NULL, 0.0000, 0, 0),
(223, 228, 20, '现金付款', -1000, 0, 6.2000, 6.2000, NULL, 0.0000, 0, 0),
(224, 230, 20, '现金付款', -1000, 0, 30.6000, 30.6000, NULL, 0.0000, 0, 0),
(225, 231, 20, '现金付款', -1000, 0, 16.5000, 16.5000, NULL, 0.0000, 0, 0),
(226, 232, 20, '现金付款', -1000, 0, 16.5000, 16.5000, NULL, 0.0000, 0, 0),
(227, 233, 20, '现金付款', -1000, 0, 4.6000, 4.6000, NULL, 0.0000, 0, 0),
(228, 234, 20, '现金付款', -1000, 0, 8.5000, 8.5000, NULL, 0.0000, 0, 0),
(229, 235, 20, '现金付款', -1000, 0, 10.5000, 10.5000, NULL, 0.0000, 0, 0),
(230, 236, 20, '现金付款', -1000, 0, 6.1000, 6.1000, NULL, 0.0000, 0, 0),
(231, 237, 20, '现金付款', -1000, 0, 15.0000, 15.0000, NULL, 0.0000, 0, 0),
(232, 238, 20, '现金付款', -1000, 0, 15.6000, 15.6000, NULL, 0.0000, 0, 0),
(233, 239, 20, '现金付款', -1000, 0, 13.9000, 13.9000, NULL, 0.0000, 0, 0),
(234, 240, 20, '现金付款', -1000, 0, 10.2000, 10.2000, NULL, 0.0000, 0, 0),
(235, 241, 20, '现金付款', -1000, 0, 11.9000, 11.9000, NULL, 0.0000, 0, 0),
(236, 242, 20, '现金付款', -1000, 0, 6.1000, 6.1000, NULL, 0.0000, 0, 0),
(237, 243, 20, '现金付款', -1000, 0, 6.6000, 6.6000, NULL, 0.0000, 0, 0),
(238, 244, 20, '现金付款', -1000, 0, 11.9000, 11.9000, NULL, 0.0000, 0, 0),
(239, 245, 20, '现金付款', -1000, 0, 8.6000, 8.6000, NULL, 0.0000, 0, 0),
(240, 246, 20, '现金付款', -1000, 0, 6.5000, 6.5000, NULL, 0.0000, 0, 0),
(241, 247, 20, '现金付款', -1000, 0, 22.0000, 22.0000, NULL, 0.0000, 0, 0),
(242, 248, 20, '现金付款', -1000, 0, 11.0000, 11.0000, NULL, 0.0000, 0, 0),
(243, 249, 20, '现金付款', -1000, 0, 11.9000, 11.9000, NULL, 0.0000, 0, 0),
(244, 250, 20, '现金付款', -1000, 0, 27.8000, 27.8000, NULL, 0.0000, 0, 0),
(245, 251, 22, '银行卡付款', -1002, 0, 9.8000, 9.8000, NULL, 0.0000, 0, 0),
(246, 252, 22, '银行卡付款', -1002, 0, 9.8000, 9.8000, NULL, 0.0000, 0, 0),
(247, 254, 20, '现金付款', -1000, 0, 19.6000, 19.6000, NULL, 0.0000, 0, 0),
(248, 263, 22, '银行卡付款', -1002, 0, 19.6000, 19.6000, NULL, 0.0000, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dm_order_checkout`
--
ALTER TABLE `dm_order_checkout`
 ADD PRIMARY KEY (`order_checkout_id`), ADD KEY `idx_orders_checkout_orders_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dm_order_checkout`
--
ALTER TABLE `dm_order_checkout`
MODIFY `order_checkout_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=515;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
