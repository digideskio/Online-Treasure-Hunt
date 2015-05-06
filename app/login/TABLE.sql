CREATE TABLE IF NOT EXISTS `login` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login` Password = 123456
--

INSERT INTO `login` (`id`, `firstname`, `lastname`, `email`, `password`, `date`) VALUES
(1, 'Vasplus', 'Blog', 'riteshppanjwani@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '08-10-2012');