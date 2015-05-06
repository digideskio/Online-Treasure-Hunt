-- phpMyAdmin SQL Dump
-- version 3.4.3.1
-- http://www.phpmyadmin.net
--
-- Host: localhost:3309
-- Generation Time: May 06, 2015 at 08:50 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `oth2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(100) NOT NULL auto_increment,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `date` varchar(200) NOT NULL,
  `current_q` int(11) NOT NULL default '1',
  `bonus_q` int(11) NOT NULL default '0',
  `timestamp` int(11) NOT NULL,
  `path` int(11) default NULL,
  `bonusplaying` int(11) NOT NULL default '0',
  `bonuscount` int(11) NOT NULL default '0',
  `skipcount` int(11) NOT NULL default '0',
  `username` text NOT NULL,
  `scale` int(11) NOT NULL default '0',
  `mobile` varchar(10) NOT NULL,
  `year` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=127 ;

--
-- Dumping data for table `login`
--


-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE IF NOT EXISTS `quest` (
  `id` int(11) NOT NULL auto_increment,
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `scale` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`id`, `question_id`, `question`, `answer`, `x`, `y`, `scale`) VALUES
(1, 1, 'loginbutton.png', 'abc', 95, 95, 1),
(2, 2, 'loadings.gif', 'abc', 0, 0, 2),
(3, 3, 'loadings.gif', 'abc', 0, 0, 3),
(4, 4, 'loadings.gif', 'abc', 0, 0, 4),
(5, 5, 'loadings.gif', 'abc', 0, 0, 5),
(6, 6, 'loadings.gif', 'abc', 0, 0, 6),
(7, 7, 'loadings.gif', 'abc', 0, 0, 7),
(8, 8, 'loadings.gif', 'abc', 0, 0, 8),
(9, 9, 'loadings.gif', 'abc', 0, 0, 9),
(10, 10, 'loadings.gif', 'abc', 0, 0, 10),
(11, 11, 'loadings.gif', 'abc', 0, 0, 16),
(12, 12, 'loadings.gif', 'abc', 0, 0, 17),
(13, 13, 'loadings.gif', 'abc', 0, 0, 18),
(14, 14, 'loadings.gif', 'abc', 0, 0, 19),
(15, 15, 'loadings.gif', 'abc', 0, 0, 20),
(16, 16, 'loadings.gif', 'abc', 0, 0, 21),
(17, 17, 'loadings.gif', 'abc', 0, 0, 22),
(18, 18, 'loadings.gif', 'abc', 0, 0, 23),
(19, 19, 'loadings.gif', 'abc', 0, 0, 24),
(20, 20, 'loadings.gif', 'abc', 0, 0, 25),
(21, 21, 'loadings.gif', 'abc', 0, 0, 26),
(22, 22, 'loadings.gif', 'abc', 0, 0, 27),
(23, 23, 'loadings.gif', 'abc', 0, 0, 28),
(24, 24, 'loadings.gif', 'abc', 0, 0, 29),
(25, 25, 'loadings.gif', 'abc', 0, 0, 30),
(26, 61, 'logobg.png', 'abc', 0, 0, 11),
(27, 62, 'banner.jpg', 'abc', 0, 0, 12),
(28, 63, 'loadings.gif', 'abc', 0, 0, 13),
(29, 64, 'loadings.gif', 'abc', 0, 0, 14),
(30, 65, 'loadings.gif', 'abc', 0, 0, 15),
(31, 66, 'loadings.gif', 'abc', 0, 0, 11),
(32, 67, 'loadings.gif', 'abc', 0, 0, 12),
(33, 68, 'loadings.gif', 'abc', 0, 0, 13),
(34, 69, 'loadings.gif', 'abc', 0, 0, 14),
(35, 70, 'loadings.gif', 'abc', 0, 0, 15),
(36, 71, 'loadings.gif', 'abc', 0, 0, 13),
(37, 72, 'loadings.gif', 'abc', 0, 0, 14),
(38, 73, 'loadings.gif', 'abc', 0, 0, 13),
(39, 74, 'loadings.gif', 'abc', 0, 0, 14),
(42, 1000, 'part3.png', 'abc', 0, 0, 0),
(44, 26, 'loadings.gif', 'abc', 20, 20, 26),
(45, 27, 'loadings.gif', 'abc', 1, 1, 27),
(46, 28, 'loadings.gif', 'abc', 1, 1, 28),
(47, 29, 'loadings.gif', 'abc', 1, 1, 29),
(48, 30, 'loadings.gif', 'abc', 1, 1, 30),
(49, 31, 'loadings.gif', 'abc', 1, 1, 31),
(50, 32, 'loadings.gif', 'abc', 1, 1, 32),
(51, 33, 'loadings.gif', 'abc', 1, 1, 33),
(52, 34, 'loadings.gif', 'abc', 1, 1, 34),
(53, 35, 'loadings.gif', 'abc', 1, 1, 35),
(54, 201, 'loadings.gif', 'abc', 1, 1, 1),
(55, 202, 'loadings.gif', 'abc', 1, 1, 1),
(56, 203, 'loadings.gif', 'abc', 1, 1, 1),
(57, 204, 'loadings.gif', 'abc', 1, 1, 1),
(58, 205, 'loadings.gif', 'abc', 1, 1, 1),
(59, 206, 'loadings.gif', 'abc', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `id` int(11) NOT NULL auto_increment,
  `question_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `scale` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_id`, `question`, `answer`, `x`, `y`, `scale`) VALUES
(1, 1, 'fsfoksdfdg.jpg', 'tvnorge', 94, 94, 1),
(2, 2, 'wdfhgjhhjhj.png', 'dilipshanghvi', 96, 89, 2),
(3, 3, 'dsdfgdfgf.jpg', 'weirdalyankovic', 95, 80, 3),
(4, 4, 'paskosdjdkdlf.png', '572889129396661', 91, 73, 4),
(5, 5, 'oeiruttithht.png', 'victorinox', 90, 63, 5),
(6, 6, 'psdkdfjfkffj.png', '99bottlesofbeer', 91, 56, 9),
(7, 7, 'wpojfdkjkkjk.png', 'sherlock', 95, 47, 10),
(8, 8, 'dssdkdfkfddfdgj.jpg', 'c3po', 91, 43, 11),
(9, 9, 'psdkfljkfjjgjkkjg.png', 'vitruvianman', 86, 48, 12),
(26, 61, 'pkslflkdn.png', 'everest', 77, 57, 6),
(27, 62, 'osfkjsdoigjdljgdjlgldf.png', 'tarastrong', 72, 52, 7),
(28, 63, 'pkddkjdfkdfjdkjdfkjgkfdjgkjdfg.png', 'journeytothecenteroftheearth', 68, 53, 8),
(29, 64, 'fkkfdfddfjdjfdjjdkjgkdgdjkgjkdjgkdkjg.png', 'tajmahal', 63, 53, 6),
(30, 65, 'sdfkfldjjdkgjjg.png', 'hcverma', 57, 57, 7),
(31, 66, 'skdlkfldgjdjgdfjk.png', 'mayimbialik', 78, 63, 8),
(32, 67, 'aaaaaaaaa.png', 'catalunya', 76, 68, 7),
(33, 68, 'bbbbbbbbbb.png', 'ianbotham', 70, 70, 7),
(40, 1000, 'completed.gif', 'abc', 16, 3, 13),
(51, 201, 'flowadasd.png', 'charliehebdoattack', 1, 1, 1),
(57, 10, 'asakslaklvvnnnvn.png', 'annatar', 5, 6, 12),
(58, 11, 'qweaaatyyuuu.png', 'elonmusk', 6, 8, 12);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
