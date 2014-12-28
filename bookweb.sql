-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2014 at 07:35 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`id` int(11) NOT NULL,
  `cart_string` varchar(5000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` varchar(500) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `cart_string`, `user_id`, `time`, `state`) VALUES
(1, 'a:2:{s:32:"8043ee9a8a709da1cfd5114eeabee102";a:7:{s:5:"rowid";s:32:"8043ee9a8a709da1cfd5114eeabee102";s:2:"id";s:2:"24";s:3:"qty";s:1:"1";s:5:"price";s:8:"115.0000";s:4:"name";s:9:"HAVE FUN ";s:7:"options";a:1:{s:10:"image_link";s:6:"12.jpg";}s:8:"subtotal";d:115;}s:32:"be8e841d488de7a2e8ff958c4d1a2383";a:7:{s:5:"rowid";s:32:"be8e841d488de7a2e8ff958c4d1a2383";s:2:"id";s:2:"23";s:3:"qty";s:1:"2";s:5:"price";s:7:"50.0000";s:4:"name";s:12:"RETRO DESIGN";s:7:"options";a:1:{s:10:"image_link";s:6:"11.jpg";}s:8:"subtotal";d:100;}}', 2, '1419428299', 1),
(2, 'a:2:{s:32:"d172745aa67e56e545c4e31408af03c3";a:7:{s:5:"rowid";s:32:"d172745aa67e56e545c4e31408af03c3";s:2:"id";s:2:"25";s:3:"qty";s:1:"1";s:5:"price";s:7:"78.0000";s:4:"name";s:18:"PLACE YOUR MESSAGE";s:7:"options";a:1:{s:10:"image_link";s:6:"13.jpg";}s:8:"subtotal";d:78;}s:32:"b86b0abae994e682f5d6c869796e6f65";a:7:{s:5:"rowid";s:32:"b86b0abae994e682f5d6c869796e6f65";s:2:"id";s:2:"22";s:3:"qty";s:1:"1";s:5:"price";s:7:"80.0000";s:4:"name";s:16:"OLD STYLE DESIGN";s:7:"options";a:1:{s:10:"image_link";s:6:"10.jpg";}s:8:"subtotal";d:80;}}', 2, '1419428384', 0),
(3, 'a:3:{s:32:"ce3cc876da5e022cc83d55ad5a5b052b";a:7:{s:5:"rowid";s:32:"ce3cc876da5e022cc83d55ad5a5b052b";s:2:"id";s:2:"20";s:3:"qty";s:1:"1";s:5:"price";s:8:"115.0000";s:4:"name";s:15:"TOP DESTINATION";s:7:"options";a:1:{s:10:"image_link";s:5:"9.jpg";}s:8:"subtotal";d:115;}s:32:"eb935669c45405844c35aafbd5fe43d7";a:7:{s:5:"rowid";s:32:"eb935669c45405844c35aafbd5fe43d7";s:2:"id";s:1:"2";s:3:"qty";s:1:"1";s:5:"price";s:7:"90.0000";s:4:"name";s:5:"MYTHS";s:7:"options";a:1:{s:10:"image_link";s:5:"6.jpg";}s:8:"subtotal";d:90;}s:32:"cd7c06f64fc3d4ec9d913b8c1a7c8b92";a:7:{s:5:"rowid";s:32:"cd7c06f64fc3d4ec9d913b8c1a7c8b92";s:2:"id";s:2:"18";s:3:"qty";s:1:"1";s:5:"price";s:8:"100.0000";s:4:"name";s:7:"RECIPES";s:7:"options";a:1:{s:10:"image_link";s:5:"7.jpg";}s:8:"subtotal";d:100;}}', 1, '1419431195', 0),
(4, 'a:3:{s:32:"72bf200181fd9bbd5bc8ad5fe5599dee";a:7:{s:5:"rowid";s:32:"72bf200181fd9bbd5bc8ad5fe5599dee";s:2:"id";s:2:"19";s:3:"qty";s:1:"1";s:5:"price";s:8:"100.0000";s:4:"name";s:12:"LOREM IS SUM";s:7:"options";a:1:{s:10:"image_link";s:5:"8.jpg";}s:8:"subtotal";d:100;}s:32:"9ec47bb45abff9a3d65e163ae3cb206e";a:7:{s:5:"rowid";s:32:"9ec47bb45abff9a3d65e163ae3cb206e";s:2:"id";s:2:"17";s:3:"qty";s:1:"2";s:5:"price";s:7:"60.0000";s:4:"name";s:9:"COOK BOOK";s:7:"options";a:1:{s:10:"image_link";s:5:"4.jpg";}s:8:"subtotal";d:120;}s:32:"b86b0abae994e682f5d6c869796e6f65";a:7:{s:5:"rowid";s:32:"b86b0abae994e682f5d6c869796e6f65";s:2:"id";s:2:"22";s:3:"qty";s:1:"1";s:5:"price";s:7:"80.0000";s:4:"name";s:16:"OLD STYLE DESIGN";s:7:"options";a:1:{s:10:"image_link";s:6:"10.jpg";}s:8:"subtotal";d:80;}}', 3, '1419435212', 0),
(5, 'a:3:{s:32:"8043ee9a8a709da1cfd5114eeabee102";a:7:{s:5:"rowid";s:32:"8043ee9a8a709da1cfd5114eeabee102";s:2:"id";s:2:"24";s:3:"qty";s:1:"1";s:5:"price";s:7:"115.000";s:4:"name";s:9:"HAVE FUN ";s:7:"options";a:1:{s:10:"image_link";s:6:"12.jpg";}s:8:"subtotal";d:115;}s:32:"b86b0abae994e682f5d6c869796e6f65";a:7:{s:5:"rowid";s:32:"b86b0abae994e682f5d6c869796e6f65";s:2:"id";s:2:"22";s:3:"qty";s:1:"2";s:5:"price";s:6:"80.000";s:4:"name";s:16:"OLD STYLE DESIGN";s:7:"options";a:1:{s:10:"image_link";s:6:"10.jpg";}s:8:"subtotal";d:160;}s:32:"72bf200181fd9bbd5bc8ad5fe5599dee";a:7:{s:5:"rowid";s:32:"72bf200181fd9bbd5bc8ad5fe5599dee";s:2:"id";s:2:"19";s:3:"qty";s:1:"1";s:5:"price";s:7:"100.000";s:4:"name";s:12:"LOREM IS SUM";s:7:"options";a:1:{s:10:"image_link";s:5:"8.jpg";}s:8:"subtotal";d:100;}}', 2, '1419562748', 0),
(6, 'a:2:{s:32:"707dc599c7e15256c17c2c0c360e64c6";a:7:{s:5:"rowid";s:32:"707dc599c7e15256c17c2c0c360e64c6";s:2:"id";s:2:"26";s:3:"qty";s:1:"1";s:5:"price";s:6:"85.000";s:4:"name";s:19:"Revenge Wears Prada";s:7:"options";a:1:{s:10:"image_link";s:6:"15.jpg";}s:8:"subtotal";d:85;}s:32:"a302a2765451a429510014755c9c0968";a:7:{s:5:"rowid";s:32:"a302a2765451a429510014755c9c0968";s:2:"id";s:2:"27";s:3:"qty";s:1:"1";s:5:"price";s:6:"78.000";s:4:"name";s:17:"Lifestyle design ";s:7:"options";a:1:{s:10:"image_link";s:6:"14.jpg";}s:8:"subtotal";d:78;}}', 3, '1419566091', 0),
(7, 'a:2:{s:32:"be8e841d488de7a2e8ff958c4d1a2383";a:7:{s:5:"rowid";s:32:"be8e841d488de7a2e8ff958c4d1a2383";s:2:"id";s:2:"23";s:3:"qty";s:1:"3";s:5:"price";s:6:"50.000";s:4:"name";s:12:"RETRO DESIGN";s:7:"options";a:1:{s:10:"image_link";s:6:"11.jpg";}s:8:"subtotal";d:150;}s:32:"b86b0abae994e682f5d6c869796e6f65";a:7:{s:5:"rowid";s:32:"b86b0abae994e682f5d6c869796e6f65";s:2:"id";s:2:"22";s:3:"qty";s:1:"1";s:5:"price";s:6:"80.000";s:4:"name";s:16:"OLD STYLE DESIGN";s:7:"options";a:1:{s:10:"image_link";s:6:"10.jpg";}s:8:"subtotal";d:80;}}', 46, '1419576457', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
`id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=26 ;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `parent_id`, `sort_order`) VALUES
(1, 'Business', 0, 0),
(2, 'Comic Strips', 0, 0),
(3, 'Kids\r\n', 0, 0),
(4, 'Medicals', 0, 0),
(5, 'Romances', 0, 0),
(6, 'Teen', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`id` int(5) NOT NULL,
  `user_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `time` varchar(500) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `product_id`, `content`, `time`) VALUES
(1, 2, 26, 'great book..!', '1419428299'),
(2, 3, 26, 'test comments', '1419428384'),
(5, 44, 26, 'adaf', '1419790538'),
(6, 44, 26, 'test comment 1', '1419790655'),
(7, 44, 26, 'test comment 2\r\n', '1419790786'),
(8, 44, 24, 'how are you?\r\nmy comment', '1419790853'),
(9, 1, 27, 'first comment..^^', '1419791601');

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE IF NOT EXISTS `like` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`id`, `user_id`, `product_id`) VALUES
(4, 1, 24),
(5, 3, 20),
(7, 3, 23),
(8, 3, 24),
(11, 1, 25),
(12, 1, 23),
(13, 42, 17),
(14, 42, 18),
(15, 42, 24),
(16, 42, 25),
(17, 42, 19),
(18, 42, 22),
(19, 42, 20),
(20, 42, 1),
(21, 42, 2),
(22, 43, 1),
(23, 43, 17),
(24, 43, 23),
(25, 43, 2),
(26, 43, 18),
(27, 43, 24),
(28, 43, 20),
(29, 43, 22),
(30, 44, 1),
(31, 44, 17),
(32, 44, 18),
(33, 44, 2),
(34, 44, 23),
(35, 44, 22),
(36, 2, 1),
(37, 2, 18),
(38, 2, 19),
(39, 2, 24),
(40, 2, 25),
(41, 2, 2),
(42, 2, 23),
(43, 3, 1),
(44, 3, 18),
(45, 3, 19),
(46, 3, 2),
(47, 3, 17),
(48, 5, 18),
(49, 5, 23),
(50, 5, 24),
(51, 5, 1),
(52, 41, 24),
(53, 41, 23),
(54, 41, 18),
(55, 41, 20),
(57, 1, 18),
(58, 1, 19),
(59, 1, 1),
(60, 45, 18),
(61, 45, 23),
(62, 1, 22),
(63, 44, 26),
(64, 44, 27),
(65, 43, 26),
(66, 43, 27),
(67, 42, 26),
(68, 42, 27),
(69, 3, 26),
(70, 3, 27),
(71, 0, 0),
(72, 43, 25),
(73, 46, 23),
(74, 44, 25);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `transaction_id` int(255) NOT NULL,
`id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `data` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id` int(255) NOT NULL,
  `catalog_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(15,3) NOT NULL DEFAULT '0.000',
  `author` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `image_link` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `image_list` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL DEFAULT '0',
  `like_num` int(10) unsigned NOT NULL DEFAULT '0',
  `view` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '50'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `catalog_id`, `name`, `price`, `author`, `content`, `discount`, `image_link`, `image_list`, `created`, `like_num`, `view`, `quantity`) VALUES
(2, 4, 'MYTHS', '90.000', 'Some One', 'MYTHS', 0, '6.jpg', '', 0, 5, 0, 47),
(17, 2, 'COOK BOOK', '60.000', 'Some One', 'noi dung cook book', 0, '4.jpg', '', 0, 5, 0, 50),
(1, 1, 'YOUR TEXT', '100.000', 'Some One', 'Vivamus id nibh vel lectus hendrerit volutpat. Nunc pulvinar ipsum eu tincidunt dapibus. Integer et massa et augue facilisis bibendum. Quisque sapien massa, porttitor quis consequat a, laoreet vel nisl! Proin sodales ullamcorper justo, ac vehicula magna mollis at! Sed augue nulla, accumsan ac erat id, consectetur commodo mi. Suspendisse adipiscing erat quis pretium auctor. Suspendisse lacinia eget metus eget posuere. Etiam iaculis pellentesque mauris, non lacinia sapien iaculis ac. \r\nPraesent libero augue, convallis eu laoreet vitae, viverra non enim. Nulla dictum tincidunt iaculis. In fermentum elit volutpat, convallis ipsum a, ullamcorper purus.  Nulla egestas quam ut nunc luctus, porta scelerisque massa dapibus. Curabitur eleifend augue rutrum augue vestibulum interdum. Proin scelerisque, erat ut commodo bibendum, est odio mattis libero, eget elementum diam ipsum quis est. Aliquam nec venenatis justo? Curabitur imperdiet dolor justo, vel posuere diam iaculis quis.\r\n Vestibulum mollis turpis ligula, sollicitudin faucibus massa vulputate vel. Sed ultricies, metus vitae feugiat pretium, sem orci gravida justo, non tincidunt dolor ipsum ac lectus. Proin elementum congue justo id aliquet. Donec eu leo iaculis, elementum nunc at, laoreet magna. Suspendisse sed sapien vel nisl tempor volutpat non consequat leo. Donec consectetur ultrices elit, ac eleifend purus lacinia at.  Etiam luctus aliquam urna eget bibendum. Quisque condimentum ut odio mollis adipiscing. In convallis nisl at mauris varius fermentum. \r\nQuisque lorem lacus, faucibus pulvinar nibh eget, euismod feugiat nulla. Suspendisse vulputate erat at massa vulputate, id aliquam nunc eleifend? Ut vulputate, enim eu mollis lacinia, lectus nisl blandit enim, nec posuere libero nisi eu dui. Praesent hendrerit felis orci, in aliquam ipsum iaculis eu?', 0, '5.jpg', '', 0, 7, 0, 50),
(18, 3, 'RECIPES', '100.000', 'Some One', 'YOUR TEXT', 0, '7.jpg', '', 0, 9, 0, 50),
(19, 1, 'LOREM IS SUM', '100.000', 'Some One', 'Cras eget pharetra lorem. Nunc at rutrum sapien. Fusce id orci justo. Fusce pharetra diam felis, nec feugiat metus vehicula vitae. Sed mattis placerat urna, eget tincidunt leo placerat sed. Aenean laoreet urna ut risus rhoncus scelerisque. Integer aliquam ac ipsum nec tristique! Fusce placerat nunc elementum nibh ultrices luctus. Donec eget dui non nulla tristique pretium. Donec id molestie urna, in cursus nisi. Integer varius, diam non elementum pellentesque; magna dolor gravida nulla, eget dignissim mi purus ac lacus.  Sed nisl urna, ultrices in massa quis, ultricies porttitor est. Maecenas faucibus tellus eget porttitor imperdiet. Nunc tempus eget nunc sit amet aliquam. Phasellus non ligula vel risus molestie porta ac vel libero. Aliquam vehicula arcu at dictum mollis. Nulla sodales posuere eros. Donec at molestie augue, in dignissim ipsum? Curabitur euismod eleifend tristique. Maecenas at libero feugiat leo cursus pharetra.  Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque et mi pulvinar, lacinia tellus nec, porttitor nulla. Donec non viverra sapien. Praesent dolor sapien, vulputate sit amet nibh ut, adipiscing semper magna. Cras non felis ligula. Fusce lobortis, est in aliquam tincidunt, lectus eros fringilla odio, nec vestibulum mi diam dignissim tortor. Etiam tempor, urna sit amet sollicitudin congue, dolor ante posuere nisl, nec semper lorem metus sed nisl? Sed consequat dui quis metus ultrices mattis. Sed non pulvinar nibh. Pellentesque rhoncus porta tristique! Sed auctor, libero et venenatis elementum, nisl arcu egestas ligula, sit amet mollis diam ipsum id felis! Mauris sit amet commodo est.', 0, '8.jpg', '', 0, 4, 0, 50),
(20, 4, 'TOP DESTINATION', '115.000', 'TOP DESTINATION AUTHOR', 'YOUR TEXT CHANGE', 0, '9.jpg', '', 0, 4, 0, 46),
(22, 2, 'OLD STYLE DESIGN', '80.000', 'Some One', 'Duis iaculis sit amet dolor eu pharetra. Sed ullamcorper consectetur iaculis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean urna justo, auctor ut blandit venenatis, sodales eu justo. Phasellus eu orci sed arcu bibendum accumsan! Phasellus porta massa vel massa vestibulum elementum. Aenean vulputate risus vitae felis dapibus, nec blandit est ornare. Quisque eget aliquam sapien. Nam laoreet risus sit amet justo aliquet posuere. Donec mollis ipsum nec sem euismod, eu tempus sapien auctor. Maecenas ut consequat massa, vitae luctus quam. Donec vulputate vitae odio nec sollicitudin. Fusce sem mauris, mattis et tortor a, dapibus accumsan tortor.  Donec non pharetra sapien. Pellentesque eget augue rhoncus, bibendum eros dignissim; viverra elit. Etiam hendrerit at enim eu mattis. Phasellus tristique ullamcorper lorem non convallis? Aliquam et tempus arcu. Etiam vehicula dolor id auctor vulputate. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam erat volutpat. Ut vel massa fermentum, vestibulum nibh eu, lacinia mauris! Maecenas et dapibus ligula. Nam tempor augue et lectus aliquam aliquam. Aliquam erat volutpat. Aliquam viverra consectetur quam vitae ornare? Vestibulum quis magna et neque rutrum porta. Quisque feugiat massa vitae erat faucibus laoreet in id quam.  Integer mollis ornare porttitor! Morbi eleifend, tellus condimentum blandit tempor, nunc justo hendrerit orci, at consectetur dui velit pellentesque ipsum. Proin laoreet sollicitudin magna, nec congue lorem rutrum vitae! Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris enim dui, dignissim vitae elementum vitae, suscipit et nisl. Donec eget lectus eros. Nam tristique fermentum justo, in feugiat dui porta id. Fusce interdum imperdiet molestie. Sed tempor orci nibh, gravida consequat nunc euismod malesuada. Cras ac congue justo. Cras aliquet vulputate libero ullamcorper fermentum. Aliquam lorem tellus, consequat non faucibus a, viverra vel felis. Vivamus euismod lobortis blandit. Proin lacinia ullamcorper est, consequat porta sapien luctus eget?', 0, '10.jpg', '', 0, 4, 0, 50),
(23, 2, 'RETRO DESIGN', '50.000', 'Some One', 'noi dung RETRO DESIGN ', 0, '11.jpg', '', 0, 9, 0, 50),
(24, 5, 'HAVE FUN ', '115.000', 'Some One', 'noi dung sach', 0, '12.jpg', '', 0, 7, 0, 50),
(25, 6, 'PLACE YOUR MESSAGE', '58.000', 'Some One 3', 'PLACE YOUR MESSAGE', 0, '13.jpg', '', 0, 5, 0, 37),
(26, 4, 'Revenge Wears Prada', '85.000', 'Lauren Weisberger', 'Quisque in tristique quam. Nulla fermentum sollicitudin sagittis! Etiam porta mi et felis pulvinar, id ullamcorper dui viverra. Sed nulla lectus, posuere vel magna ut, consectetur tincidunt dui. Vivamus quam tellus, elementum sed sem eget, condimentum placerat tortor. Integer varius; ligula ut viverra imperdiet, leo felis suscipit enim, malesuada mattis justo nisi sit amet sem! Sed imperdiet enim turpis, quis rutrum purus mattis vitae.Donec a lobortis nulla, et ultrices erat. Aenean fermentum sollicitudin enim non rhoncus? Curabitur aliquet, purus quis eleifend congue, sapien massa eleifend libero, et elementum risus nibh sed elit. Cras molestie quis metus sed facilisis. Vivamus eu tortor justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed et sagittis erat, eu imperdiet erat. Nam luctus tincidunt tempor.Donec sit amet neque vel velit interdum ultricies. Sed pellentesque feugiat est, at mattis lectus porttitor vel. Donec magna nisi, adipiscing a lectus sit amet, varius aliquam metus. Quisque diam nibh, vehicula sed lacinia sed, venenatis nec risus. Suspendisse sit amet turpis quis tortor lacinia tristique sed vitae ', 0, '15.jpg', '', 0, 4, 0, 50),
(27, 6, 'Lifestyle design ', '78.000', 'Jesse Krieger', 'Cras eget pharetra lorem. Nunc at rutrum sapien. Fusce id orci justo. Fusce pharetra diam felis, nec feugiat metus vehicula vitae. Sed mattis placerat urna, eget tincidunt leo placerat sed. Aenean laoreet urna ut risus rhoncus scelerisque. Integer aliquam ac ipsum nec tristique! Fusce placerat nunc elementum nibh ultrices luctus. Donec eget dui non nulla tristique pretium. Donec id molestie urna, in cursus nisi. Integer varius, diam non elementum pellentesque; magna dolor gravida nulla, eget dignissim mi purus ac lacus.\r\n\r\nSed nisl urna, ultrices in massa quis, ultricies porttitor est. Maecenas faucibus tellus eget porttitor imperdiet. Nunc tempus eget nunc sit amet aliquam. Phasellus non ligula vel risus molestie porta ac vel libero. Aliquam vehicula arcu at dictum mollis. Nulla sodales posuere eros. Donec at molestie augue, in dignissim ipsum? Curabitur euismod eleifend tristique. Maecenas at libero feugiat leo cursus pharetra.\r\n\r\nPellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Pellentesque et mi pulvinar, lacinia tellus nec, porttitor nulla. Donec non viverra sapien. Praesent dolor sapien, vulputate sit amet nibh ut, adipiscing semper magna. Cras non felis ligula. Fusce lobortis, est in aliquam tincidunt, lectus eros fringilla odio, nec vestibulum mi diam dignissim tortor. Etiam tempor, urna sit amet sollicitudin congue, dolor ante posuere nisl, nec semper lorem metus sed nisl? Sed consequat dui quis metus ultrices mattis. Sed non pulvinar nibh. Pellentesque rhoncus porta tristique! Sed auctor, libero et venenatis elementum, nisl arcu egestas ligula, sit amet mollis diam ipsum id felis! Mauris sit amet commodo est.', 0, '14.jpg', '', 0, 4, 0, 50);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(255) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`, `created`, `level`) VALUES
(1, 'Tran Cong', 'chic7en@gmail.com', '01647980503', 'ha noi', 'e10adc3949ba59abbe56e057f20f883e', 0, 1),
(4, 'template', 'template@gmail.com', '01647580125', 'ha noi', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(42, 'template3', 'template3@gmail.com', '01647980128', 'lai chau', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(43, 'template4', 'template4@gmail.com', '01647980129', 'son la', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(2, 'Tran Huy Luyen', 'luyen@gmail.com', '01647980123', 'ha noi', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(3, 'Do Duy Anh', 'duyanh@gmail.com', '01647980124', 'ha noi', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(5, 'template1', 'template1@gmail.com', '01647980126', 'ha nam', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(41, 'template2', 'template2@gmail.com', '01645320127', 'quang ninh', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(44, 'template5', 'template5@gmail.com', '01647678092', 'ho chi minh', 'e10adc3949ba59abbe56e057f20f883e', 0, 0),
(45, 'admin', 'admin@gmail.com', '0123456789', 'Ha Noi', 'd1a7e476df08ba8e57b9bc6ac7556a90', 0, 0),
(46, 'Khong Minh Tri', 'trikm.bk56@gmail.com', '01689275930', 'Ha Noi', 'e10adc3949ba59abbe56e057f20f883e', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id`), ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
