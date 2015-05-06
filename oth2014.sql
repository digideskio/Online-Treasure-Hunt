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

INSERT INTO `login` (`id`, `firstname`, `lastname`, `email`, `password`, `date`, `current_q`, `bonus_q`, `timestamp`, `path`, `bonusplaying`, `bonuscount`, `skipcount`, `username`, `scale`, `mobile`, `year`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', 'f754bafcff910d043e6261289bc2ae08', '06-03-2015', 2, 0, 1426224321, 3, 0, 0, -17, 'admin', 2, '9423694693', 'BE'),
(36, 'ankita', 'tanawde', 'ankitanawde@rediffmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', '07-03-2015', 1, 0, 1425739809, 0, 0, 0, 0, 'ankitanawde', 0, '9920350257', 'SE'),
(63, 'Ruchi', 'Vazirani', 'ruchi23vazirani@gmail.com', '8f1f30f4fd2fe5000fb2560a10f70b16', '07-03-2015', 1, 0, 1425741698, 0, 0, 0, 0, 'ruchi2312', 0, '9920884221', 'SE'),
(4, 'Shivam', 'Upadhyay', 'shivamu23@yahoo.co.in', 'c7e25ffd36905022c02f76fe1a0c8b54', '07-03-2015', 1000, 0, 1425791983, 3, 0, 0, -9, 'DECODER', 13, '8879161705', 'SE'),
(5, 'shubham', 'barhate', 'cunningstunt94@gmail.com', '864ee0f9dc75c14b98fa627c7ae226db', '07-03-2015', 62, 0, 1425754375, 2, 0, 0, -6, '#0000ff', 5, '8976434293', 'TE'),
(6, 'Chetan', 'Nihalani', 'chetan1995@gmail.com', '1817d026971746e74ce1af669396f28f', '07-03-2015', 1000, 0, 1425796864, 6, 0, 0, -12, 'Jack', 13, '8237720460', 'SE'),
(7, 'usha', 'santuramani', 'usha.santuramani@gmail.com', 'a41fb09de6e716472e3c035452702664', '07-03-2015', 1, 0, 1425739216, 0, 0, 0, 0, 'u_s', 0, '9665002044', 'BE'),
(8, 'Neha', 'Puthran', 'neha.puthran@ves.ac.in', 'd541e89a52b2e3303d50c0cbf8904dd4', '07-03-2015', 1, 0, 1425739218, 0, 0, 0, 0, 'neha', 0, '9769339198', 'BE'),
(9, 'etish', 'talreja', 'etish140@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '07-03-2015', 1000, 0, 1425796815, 3, 0, 0, -22, 'etish550', 13, '9764800803', 'SE'),
(10, 'Harshada', 'Patankar', 'patharshu@gmail.com', '5e526178fbe6a57c5e4fd76f7d27a030', '07-03-2015', 1, 0, 1425739221, 0, 0, 0, 0, 'asp2010', 0, '9833146645', 'TE'),
(11, 'vishal', 'jumnani', 'vishaljumnani64@gmail.com', '44135dafbba88580196e9613a6aea7b0', '07-03-2015', 1, 0, 1425739243, 0, 0, 0, 0, 'vishal64', 0, '7709837360', 'TE'),
(12, 'Benita', 'J', 'jeyakumar.benita@ves.ac.in', '110d46fcd978c24f306cd7fa23464d73', '07-03-2015', 3, 0, 1425747600, 0, 0, 0, -2, 'Ben10', 3, '9819086787', 'SE'),
(13, 'Harsh', 'Tomar', 'tomar_harsh@yahoo.com', '12c6c11d76ea01d75abbb88d981b927d', '07-03-2015', 65, 0, 1425752655, 5, 0, 0, -3, 'InkiePinkiePonkie', 5, '9819304204', 'TE'),
(14, 'yash', 'vaswani', 'yash.vaswani@ves.ac.in', 'a7de32da1cae58f36f85204b9b0b14bd', '07-03-2015', 1000, 0, 1425791389, 6, 0, 0, -10, 'admin', 13, '9820454454', 'SE'),
(15, 'Diptarshi', 'Chakraborty', 'ddiptarulestheuniverse@gmail.com', 'e44f8cf63970db5c2df0a18153bcdf49', '07-03-2015', 1, 0, 1425739366, 0, 0, 0, 0, 'diptarshi', 0, '9930906210', 'SE'),
(16, 'Vineet', 'Hariharan', 'vineet.sk.07@gmail.com', '3fc0a7acf087f549ac2b266baf94b8b1', '07-03-2015', 2, 0, 1425745035, 0, 0, 0, 1, 'Pakura', 2, '8655010185', 'SE'),
(17, 'Kevin', 'Maru', 'kevin.maru.28@gmail.com', 'e13dd027be0f2152ce387ac0ea83d863', '07-03-2015', 1, 0, 1425739380, 0, 0, 0, 0, 'kev', 0, '9920801092', 'SE'),
(18, 'Saakshi', 'Khatri', 'dancingdoll.sakshi@gmail.com', '8e711ef659d4a897e918fef42b13181b', '07-03-2015', 1, 0, 1425739400, 0, 0, 0, 0, 'saksh_k', 0, '9967909410', 'TE'),
(19, 'preksha', 'goyal', 'prekii99@gmail.com', 'b81ffdeb286594227d6cbdc368052c63', '07-03-2015', 1, 0, 1425739410, 0, 0, 0, 0, 'prex', 0, '8097147518', 'TE'),
(20, 'sunil', 'khatri', 'sunil.khatri@ves.ac.in', 'e998199ff5270aa5757edca8f8fa98eb', '07-03-2015', 1, 0, 1425739416, 0, 0, 0, 0, 'sunil', 0, '8080669663', 'TE'),
(21, 'adwait', 'ranadive', 'ady1712@yahoo.com', '5d554bc5f3d2cd182cdd0952b1fb87ca', '07-03-2015', 1, 0, 1425739420, 0, 0, 0, 0, 'adwait1712', 0, '9769137668', 'SE'),
(22, 'Kartik', 'Jadhav', 'kartik.cr7@gmail.com', '72795ed5b57ddc155edc2a52beb6cc0d', '07-03-2015', 1, 0, 1425739427, 0, 0, 0, 0, 'KartikJadhav7', 0, '7208057946', 'SE'),
(23, 'Sayan', 'Das Karmakar', 'sayanngp@gmail.com', '4e928019acc1646a7dc1d11209a683a2', '07-03-2015', 62, 0, 1425754527, 2, 0, 0, -6, 'Nightmare', 5, '9594031522', 'BE'),
(24, 'Surabhi', 'Kanth', 'sk.infinity.1094@gmail.com', 'b5c0b187fe309af0f4d35982fd961d7e', '07-03-2015', 5, 0, 1425786748, 0, 0, 0, -1, 'xoxo', 5, '9403731162', 'TE'),
(25, 'Sarvesh', 'Patkar', 'sarveshspatkar@gmail.com', 'e5c1a457b9cdaf1e8dd1ef275948f9b6', '07-03-2015', 7, 0, 1426003247, 3, 0, 0, -9, 'covacs', 10, '9004268880', 'BE'),
(26, 'Shaunak', 'M', 'shaunak.manurkar@gmail.com', 'cab6d4789687cecfab6ed15b116071d6', '07-03-2015', 1, 0, 1425739558, 0, 0, 0, 0, 'shaunakm', 0, '9029692526', 'TE'),
(27, 'Namrata', 'Pai', 'roni.makhijani123@gmail.com', '9a887d75fed2ffb7b641dbf85b3bffd9', '07-03-2015', 2, 0, 1425754327, 0, 0, 0, 1, 'Namrata123', 2, '9028410766', 'BE'),
(28, 'Harikrishnan', 'R', 'rhari991@gmail.com', '9895c8765507dd6d9ae7a54b745162a5', '07-03-2015', 1, 0, 1425739591, 0, 0, 0, 0, 'rhari', 0, '9869089598', 'SE'),
(29, 'Sagar', 'Vasnani', 'sagarvasnani@yahoo.in', 'e4eb8aa6bd4d7b4f877d9f7e6268c0e3', '07-03-2015', 1, 0, 1425739614, 0, 0, 0, 0, 'muffins', 0, '7385561478', 'SE'),
(30, 'Dishant', 'Mehta', 'dishantmehta01@gmail.com', '1df1a5ff2565d6c054f60bc8a27e4f8b', '07-03-2015', 10, 0, 1425795696, 3, 0, 0, -8, 'hehehehe', 12, '9594794625', 'TE'),
(31, 'amey', 'barapatre', 'amey.barapatre@ves.ac.in', 'e807f1fcf82d132f9bb018ca6738a19f', '07-03-2015', 1, 0, 1425739644, 0, 0, 0, 0, 'csisucks', 0, '9699524315', 'SE'),
(32, 'Rutvij', 'Shah', 'rutvij.shah@ves.ac.in', '76b548d34a79decc7f90ccd63dd97bf9', '07-03-2015', 1, 0, 1425739648, 0, 0, 0, 0, 'Rutvij2894', 0, '9967045186', 'TE'),
(33, 'sunny', 'ramrakhiani', 'ramrakhianisunny@ymail.com', 'e10adc3949ba59abbe56e057f20f883e', '07-03-2015', 1, 0, 1425739662, 0, 0, 0, 0, 'sunny_007', 0, '7507827899', 'SE'),
(34, 'ronit', 'makhijani', 'ronit.makhijani@gmail.com', '9a887d75fed2ffb7b641dbf85b3bffd9', '07-03-2015', 2, 0, 1425754263, 0, 0, 0, 1, 'ronit', 2, '7276514123', 'BE'),
(35, 'Naren', 'Ambwani', 'narenambwani@gmail.com', '5599305c4c55b3f0f117576643432a95', '07-03-2015', 10, 0, 1425795581, 3, 0, 0, -11, 'Hokage Sama', 12, '9757290053', 'TE'),
(37, 'shubham', 'joshi', 'joshishubham286@gmail.com', '530981334e4b742578dde62a8677b2f9', '07-03-2015', 1, 0, 1425739867, 0, 0, 0, 0, 'jshubham', 0, '8097915125', 'SE'),
(38, 'shyam', 'singh', 'shyam81295@gmail.com', '9c746ccaf932a231bcc4726f441d30f8', '07-03-2015', 1, 201, 1425739894, 0, 1, 0, 2, 'heartofdevil', 0, '8898492603', 'SE'),
(39, 'Kunal', 'Kulkarni', 'kunal.kulkarni@ves.ac.in', '8d04a0180ad227f9a9509cb9fc6eb104', '07-03-2015', 1, 0, 1425739952, 0, 0, 0, 0, 'hellboy', 0, '8879094174', 'BE'),
(40, 'Aditya', 'Joshi', 'adityajoshi95@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '07-03-2015', 1, 0, 1425739985, 0, 0, 0, 0, 'Aditya95', 0, '9769492616', 'SE'),
(41, 'Tarun', 'Dash', 'tarun.dash@ves.ac.in', '4ec6b242322a0139def69c6380c7aa27', '07-03-2015', 1000, 0, 1425790914, 3, 0, 0, -12, 'Stiffler', 13, '9833118225', 'TE'),
(42, 'SANKET', 'AGARWAL', 'sanketsir10@gmail.com', '78d100e2287e6aabc7e3ca7afd40edbf', '07-03-2015', 1, 0, 1425740054, 0, 0, 0, 0, 'invincibles', 0, '9702189981', 'SE'),
(62, 'Anant', 'Gupta', 'anantgupta04@gmail.com', '2deeb6f05c2e391943e49042b4337a5f', '07-03-2015', 2, 201, 1425743535, 0, 1, 0, 2, 'quizards', 2, '8888424434', 'SE'),
(43, 'salil', 'shahane', 'salilshahane23@gmail.com', '47224073b47682dd2b527185131c9963', '07-03-2015', 1, 0, 1425740078, 0, 0, 0, 0, 'salil', 0, '9967775292', 'SE'),
(44, 'Saylee', 'Parab', 'saylee.parab96@gmail.com', '2e900fba98fdc4ed1fb5740a35f31f3e', '07-03-2015', 1, 0, 1425740117, 0, 0, 0, 0, 'say24lee', 0, '8879221551', 'SE'),
(45, 'Jitesh', 'Budhwani', 'jiteshkbudhwani@gmail.com', '757b16a8422ef70e71f4900f21707458', '07-03-2015', 2, 0, 1425741343, 0, 0, 0, -1, 'Jiteshb', 2, '8879470010', 'TE'),
(46, 'Mandar', 'Patil', 'mandart94@gmail.com', '3dada272d30b90bc38b6be9fc27aa26d', '07-03-2015', 1, 0, 1425740181, 0, 0, 0, 0, '#gotya', 0, '9619575599', 'TE'),
(47, 'Ajay', 'Vishwanathan', 'ajoovish@gmail.com', '2b7a01e4d616edd4f9b3ee4ba44856c9', '07-03-2015', 1, 0, 1425740244, 0, 0, 0, 0, 'AjayVishy', 0, '8097921218', 'TE'),
(48, 'shivali', 'shinde', 'shivali.shinde19@gmail.com', 'df95d37b004b4efd4abbb951565fe61f', '07-03-2015', 1, 0, 1425740262, 0, 0, 0, 0, 'shivu19', 0, '9969819449', 'SE'),
(49, 'shikhadevi', 'katharia', 'shikhakatharia12@gmail.com', '49075525a23384c637386d4bfb6e47c2', '07-03-2015', 1, 0, 1425740276, 0, 0, 0, 2, 'shikha', 0, '9004890315', 'SE'),
(50, 'nikita', 'ahuja', 'niketaahuja@gmail.com', 'b00a50c448238a71ed479f81fa4d9066', '07-03-2015', 4, 0, 1425753389, 0, 0, 0, -3, 'nikitaahuja', 4, '7709364467', 'TE'),
(51, 'jaiprakash', 'SAWLANI', 'jaipraakash.sawlani@ves.ac.in', '092b5bd7a4366c4315438e0f117836c4', '07-03-2015', 1, 0, 1425740402, 0, 0, 0, 0, 'mike1', 0, '9594863051', 'TE'),
(52, 'Amey', 'Patil', 'theknight374121@gmail.com', '8610defd19c5ee66a62eaa45416e3087', '07-03-2015', 1, 0, 1425740406, 0, 0, 0, 0, 'theknight374121', 0, '9769131905', 'BE'),
(53, 'sanket', 'nerella', 'sanket_nerella140@hotmail.com', '528961a913abd35b2c3e6cc2bf743b42', '07-03-2015', 1, 0, 1425740421, 0, 0, 0, 0, 'neo03', 0, '9167014828', 'BE'),
(54, 'kiran', 'daryanani', 'kiran44471@gmail.com', 'c557807afe6db6ae28c894a3c391e5c7', '07-03-2015', 1, 0, 1425740527, 0, 0, 0, 0, 'starlight', 0, '9326938443', 'SE'),
(55, 'Ashita', 'Jagasia', 'ashitajagasia@gmail.com', 'bf112e3335198b79f022a3de89a96240', '07-03-2015', 4, 0, 1425747936, 0, 0, 0, -3, 'Aashi', 4, '9769320809', 'SE'),
(56, 'Kandarp', 'Khandwala', 'kandarpck@gmail.com', '4c24937f855ecae2b7c4c249a371c168', '07-03-2015', 1, 0, 1425740556, 0, 0, 0, 0, 'Kandarp', 0, '9969961993', 'BE'),
(57, 'Rudra', 'Sharma', 'rudsharma@gmail.com', 'eb0a191797624dd3a48fa681d3061212', '07-03-2015', 1, 0, 1425740599, 0, 0, 0, 0, 'Rhd', 0, '9892778380', 'BE'),
(106, 'sanjay', 'badlani', 'sbadlani3@gmail.com', 'd524813536b71639999ba12bdb3621a8', '07-03-2015', 2, 0, 1425750587, 0, 0, 0, -1, 'Mr.badlani', 2, '9860808069', 'BE'),
(58, 'Shariwa', 'Malankar', 'shariwa.malankar@ves.ac.in', 'd0c9489ea6d5688f1fbe82b7d2fd3cd9', '07-03-2015', 1, 0, 1425740886, 0, 0, 0, 0, 'Shariwa', 0, '9820954637', 'TE'),
(59, 'Saurabh', 'Unercat', 'sunercat@gmail.com', 'b38ad5727e4b6a2880ed70f5fbfbecef', '07-03-2015', 1, 0, 1425740984, 0, 0, 0, 0, 'sunercat', 0, '9869402032', 'BE'),
(60, 'shivali', 'shinde', 'shivali.shinde19@gmail.in', '763ea7a7e06731654892163ee5dcec1c', '07-03-2015', 1, 0, 1425741110, 0, 0, 0, 0, 'shivu19', 0, '9969819449', 'SE'),
(61, 'HITESH', 'DUSEJA', 'pawanduseja20@gmail.com', 'e52d22ebc76fc7188a32080b545496ff', '07-03-2015', 1, 0, 1425741387, 0, 0, 0, 0, 'hduseja', 0, '8806947085', 'SE'),
(64, 'Rajat', 'Maurya', 'rajat.maurya@ves.ac.in', '25f1a8e5ea18f774a1fb3539f5e48040', '07-03-2015', 1000, 0, 1425791560, 3, 0, 0, -9, 'CaptJack', 13, '9892319905', 'SE'),
(65, 'Sarvesh', 'Bhargav', 'sarveshb707@gmail.com', '3436505757f875836ce7629bafbe8d9a', '07-03-2015', 3, 0, 1425745320, 0, 0, 0, -2, 'smb707', 3, '9175982707', 'BE'),
(66, 'shobhit', 'mittal', 'mittalshobhit7@gmail.com', '2475e8adeeb8ac68195f9d056a836af3', '07-03-2015', 3, 0, 1425920360, 0, 0, 0, -2, 'shobhit', 3, '8898902806', 'BE'),
(67, 'mike12', 'oven', 'harshit.vora@ves.ac.in', '5f4dcc3b5aa765d61d8327deb882cf99', '07-03-2015', 1, 0, 1425742092, 0, 0, 0, 0, ''' union select database(), null--', 0, '9960292855', 'SE'),
(68, 'Omkar', 'Patil', 'omkar.patil@ves.ac.in', '77ecc3967175210d94ec940ca9dd9fdb', '07-03-2015', 1, 0, 1425742102, 0, 0, 0, 0, 'bluethrust3', 0, '8451951345', 'TE'),
(69, 'viren', 'rohira', 'virenrohira@gmail.com', '9df59d4c785363a0f8148f5d5e428354', '07-03-2015', 1, 0, 1425742146, 0, 0, 0, 0, 'kratos', 0, '9930393551', 'TE'),
(70, 'arushi', 'goyal', 'dimpi1995@gmail.com', '91f2e5afc690f56aa38f3b73fc93ec30', '07-03-2015', 1, 201, 1425742194, 0, 1, 0, 2, 'arushi', 0, '8108657712', 'SE'),
(71, 'Hrishikesh', 'Pujari', 'hrishikesh.pujari@ves.ac.in', '778444d5bb5bb43a5b8dff60b1733392', '07-03-2015', 1, 0, 1425742212, 0, 0, 0, 0, 'hrishikesh', 0, '9323224503', 'SE'),
(72, 'Santosh', 'Dhirwani', 'santoshdhirwani@yahoo.com', 'ba8701f1fbaf3162a9a1a3dfc9a2c22c', '07-03-2015', 3, 0, 1425745972, 0, 0, 0, 1, 'kunster#OneLastTime', 3, '8976594677', 'BE'),
(73, 'pawan', 'gidwanj', 'gidwanipawananil@gmail.com', 'ec03cd886546ba6ad053e265ee0c3538', '07-03-2015', 1, 0, 1425742353, 0, 0, 0, 0, 'pg', 0, '8806600444', 'SE'),
(74, 'SANJAY', 'THADANI', 'sanjay.thadani@ves.ac.in', '8672a91f2c1bd519cf5d4ed3d10e4a86', '07-03-2015', 1, 201, 1425742358, 0, 1, 0, 2, 'sanjay thadani', 0, '8149088672', 'SE'),
(75, 'Vyjayanthi', 'kamath', 'kamath.vyjayanthi@gmail.com', 'ddc60e0c89e6491905ccd370d2a302d7', '07-03-2015', 1, 0, 1425742424, 0, 0, 0, 0, 'Vyjayanthi', 0, '9819891744', 'SE'),
(76, 'karan', 'lal', 'karan.lal@ves.ac.in', '3c051e862ce4fb4930ba53ce2376a946', '07-03-2015', 2, 201, 1425743712, 0, 1, 0, 2, 'firefist_karan', 2, '9011019285', 'SE'),
(77, 'vivek', 'sadhwani', 'vbsadhwani@gmail.com', '7b2ed8fb38151b50ff312409246e81fa', '07-03-2015', 3, 0, 1425745431, 0, 0, 0, -2, 'Knight', 3, '7588496607', 'BE'),
(78, 'latish', 'gurbani', 'latishgurbani@gmail.com', 'cf2f62bcb519508b9e053a3a01a4ee99', '07-03-2015', 2, 0, 1425743001, 0, 0, 0, -1, 'latish21', 2, '7588041343', 'BE'),
(79, 'Mrunmayee', 'Mujumdar', 'mrunmayeem28@yahoo.in', '50fffd295bd67ddf5684ee6c4990a627', '07-03-2015', 3, 0, 1425748313, 0, 0, 0, -3, 'Mrunmayee', 3, '7506113102', 'SE'),
(80, 'suresh', 'ramesh', 'sssureshrrramesh@gmail.com', '6718cd00be647889b99636129acedc36', '07-03-2015', 1, 0, 1425742696, 0, 0, 0, 0, 'suresh', 0, '9969577755', 'BE'),
(81, 'Anoosha', 'Sagar', 'anooshasagar@gmail.com', '3f89637fec32d86daa29fdb98959bad9', '07-03-2015', 5, 0, 1425749567, 0, 0, 0, -4, 'mgfx', 5, '9867725031', 'TE'),
(82, 'kiran', 'malvi', 'kiranmalvi7@gmail.com', '0cb4682a9caad8bce424f101b9c94fcd', '07-03-2015', 4, 0, 1425749463, 0, 0, 0, 0, 'jaguar', 4, '9769007268', 'SE'),
(83, 'mugdha', 'dalvi', 'mugdhadalvi15@gmail.com', '5bf22af267ba7b5ab99c970bd1eca895', '07-03-2015', 1, 0, 1425743228, 0, 0, 0, 0, 'mux', 0, '9967923987', 'SE'),
(84, 'Monish', 'Nene', 'monish.nene@ves.ac.in', 'b4557ba3bb8fb8290b85fb1d27b50a5e', '07-03-2015', 3, 0, 1425747455, 0, 0, 0, 1, 'Trafalger Law', 3, '7208120927', 'SE'),
(85, 'Govinda', 'Hinduja', 'govinda.af@gmail.com', 'cf8fddf1ed571a459056069c069581f6', '07-03-2015', 1, 0, 1425743407, 0, 0, 0, 2, 'curious_govou', 0, '9960726605', 'BE'),
(86, 'karishma', 'khithani', 'karishmakhithani@gmail.com', 'b3af3417c0a445baa5a4816045f44c9f', '07-03-2015', 4, 0, 1425752867, 0, 0, 0, 0, 'karishma', 4, '9619608642', 'SE'),
(87, 'Aarti', 'Jaladi', 'aarti.jaladi@yahoo.com', '4542e4c233f26b4faf6b5f3fed24280c', '07-03-2015', 4, 0, 1425749388, 0, 0, 0, 0, 'aarti.jaladi', 4, '9819412038', 'SE'),
(95, 'Ramanathan', 'Iyer', 'rams25496@yahoo.co.in', 'a845887c1d68631a3c71da1838670b65', '07-03-2015', 1, 0, 1425745904, 0, 0, 0, 0, 'ramu', 0, '9819581816', 'SE'),
(89, 'sofiya', 'mulla', 'sofiya.mulla0608@gmail.com', '4a961ed1881c1fb7977b2e1a92ace6d8', '07-03-2015', 1, 0, 1425745029, 0, 0, 0, 0, 'sofiya0608', 0, '9833838824', 'SE'),
(90, 'Harsh', 'Bhatia', 'harshbhatia2007@gmail.com', 'a17d62d2a3acfaab033f90ebf2ba0c8e', '07-03-2015', 1, 0, 1425745335, 0, 0, 0, 0, 'harshbhatia2007', 0, '9969595125', 'SE'),
(88, 'DHIRAJ', 'KUDVA', 'kudvadhiraj@gmail.com', 'f03b919de2cb8a36e9e404e0ad494627', '07-03-2015', 0, 0, 1425747481, 0, 0, 0, -1, 'DK1996', 4, '8879230894', 'SE'),
(91, 'athul', 'krishnan', 'adhu10.palli@gmail.com', 'c782779b77215248bb2372c545132ae1', '07-03-2015', 1, 0, 1425745536, 0, 0, 0, 0, 'Athul_k', 0, '8898725492', 'SE'),
(92, 'Moumita', 'Dey', 'moumita.md.dey@gmail.com', '15b29ffdce66e10527a65bc6d71ad94d', '07-03-2015', 63, 0, 1425757898, 3, 0, 0, -7, 'chaddi', 5, '9969799732', 'BE'),
(93, 'harsh', 'gupta', 'harsh.gupta@ves.ac.in', 'e10adc3949ba59abbe56e057f20f883e', '07-03-2015', 1, 0, 1425745823, 0, 0, 0, 0, 'harshgrandeur', 0, '9920178153', 'TE'),
(94, 'sachin', 'katariya', 'sachingkatariya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '07-03-2015', 3, 0, 1425793604, 0, 0, 0, -2, 'SK', 3, '9561951952', 'BE'),
(96, 'Niraj', 'Porecha', 'nirajporecha96@gmail.com', '3b6df12ea01d29bc5d186e571ce9dcb7', '07-03-2015', 1, 0, 1425745915, 0, 0, 0, 0, 'Heady', 0, '9930280433', 'SE'),
(99, 'Rugved', 'Sawant', 'sawantrugved1994@gmail.com', 'd0661ba248f452684c5b38a2a5540d21', '07-03-2015', 1, 0, 1425746510, 0, 0, 0, 0, 'Vedic', 0, '9833526838', 'TE'),
(97, 'Sarang', 'Akarte', 'sarang.akarte@gmail.com', '6012b5293d0c7397efd784be681cd35c', '07-03-2015', 7, 0, 1425801683, 3, 0, 0, -9, 'Saras', 10, '9820452396', 'SE'),
(98, 'Alok', 'Dadlani', 'hacktrack007@gmail.com', '036c3027f3ab4982ad8f40004b273a3c', '07-03-2015', 1, 0, 1425746177, 0, 0, 0, 0, 'va007', 0, '9930696783', 'BE'),
(100, 'anant', 'deoulgaonkar', 'anantd07@gmail.com', '9cd19bd79cd3dfad32e4eb9c4f81e994', '07-03-2015', 1, 0, 1425746516, 0, 0, 0, 0, 'anant', 0, '8237351279', 'SE'),
(101, 'Suraj', 'Malpani', 'surajmalpani23@gmail.com', '36bba8ba6492c68c4e70bf5b5e8bf951', '07-03-2015', 2, 0, 1425750053, 0, 0, 0, -1, 'JackSparrow', 2, '9404593892', 'BE'),
(102, 'KARAN', 'PATEL', 'k.patel1121993@gmail.com', 'db068ce9f744fbb35eedc9a883f91085', '07-03-2015', 3, 0, 1425749097, 0, 0, 0, -2, 'KARANP', 3, '9769077765', 'TE'),
(103, 'akshay', 'nayak', 'akshay.nayak@ves.ac.in', '67ae6cee054391ccb8530e82802dc87d', '07-03-2015', 1, 0, 1425747331, 0, 0, 0, 0, 'bilbobaggins', 0, '8087193137', 'BE'),
(104, 'Harsh', 'Shambwani', 'harshdking29@gmail.com', '25d55ad283aa400af464c76d713c07ad', '07-03-2015', 2, 0, 1425748353, 0, 0, 0, -1, 'HarshDKing', 2, '9028117677', 'SE'),
(105, 'Saiprasad', 'Bahulekar', 'sai.bahulekar@yahoo.com', '18745bfab1a74931f3edd7f32a069428', '07-03-2015', 1, 0, 1425747896, 0, 0, 0, 0, 'Sai.GladzZz', 0, '8080027874', 'SE'),
(107, 'Aniruddha', 'Mavlankar', 'anmavlankar100495@gmail.com', '1bc337382ccd263baa1df7795224ab89', '07-03-2015', 1, 0, 1425749219, 0, 0, 0, 0, 'ani100495', 0, '9987799817', 'SE'),
(108, 'manish', 'manghwani', 'manghwani.manish1996@gmail.com', 'cf15fa2b3907f27cd5d2bcbbc6a5dd39', '07-03-2015', 1, 0, 1425749368, 0, 0, 0, 0, 'manish', 0, '8793357090', 'SE'),
(109, 'Abhishek', 'Bharambe', 'abhi.bcool@gmail.com', '34b24f85ad22eea5a58cfded0299cd08', '07-03-2015', 4, 0, 1425822687, 0, 0, 0, -3, 'abhi9595', 4, '9930883164', 'SE'),
(110, 'Rajat', 'Gupta', 'rajatgupta21@hotmail.com', 'f2b86004c84011c7f77c86d8a5be66c6', '07-03-2015', 1, 0, 1425751369, NULL, 0, 0, 0, 'rajatgupta13', 0, '9820230792', 'SE'),
(111, 'a', 'a', 'a@a.com', '4124bc0a9335c27f086f24ba207a4912', '07-03-2015', 2, 0, 1425753691, NULL, 0, 0, -1, 'a', 2, '9666666666', 'TE'),
(112, 'swapnil', 'malve', 'swapnilmalve287@gmail.com', 'b1405ef0f0341582ba83160e6d4f34ec', '08-03-2015', 1, 0, 1425753338, NULL, 0, 0, 0, 'trans28', 0, '9969459025', 'SE'),
(113, 'satish', 'talreja', 'stsatish42@gmail.com', '2bf2a09daf39e04bfc97b217db1d3588', '08-03-2015', 5, 0, 1425764638, NULL, 0, 0, -4, 'sattu', 5, '8087824563', 'SE'),
(114, 'Akash', 'Yadav', 'yad.akash@gmail.com', '2408907cf486ad1c414fc3487af2746e', '08-03-2015', 1, 0, 1425756343, NULL, 0, 0, 0, 'sky', 0, '8108404424', 'BE'),
(115, 'akshaya', 'bangar', 'akshayabangar@gmail.com', '25f9e794323b453885f5181f1b624d0b', '08-03-2015', 1, 0, 1425758356, NULL, 0, 0, 0, 'ab', 0, '8082722954', 'TE'),
(116, 'Akash', 'Wadhwa', 'akashwadhwa77@gmail.com', 'f984721b43b261c771b61f9ed730de4c', '08-03-2015', 1, 0, 1425795883, NULL, 0, 0, 0, 'akashwadhwa', 0, '9876543210', 'TE'),
(117, 'Rohan', 'Tondulkar', 'ron1tondulkar@gmail.com', 'b8347f0637d5c79bc767f52c1952ba58', '08-03-2015', 1, 0, 1425796419, NULL, 0, 0, 0, 'Rohan191', 0, '9869693555', 'BE'),
(118, 'Rucha', 'Desai', 'ruchadesai1920@gmail.com', '1fdc0f893412ce55f0d2811821b84d3b', '08-03-2015', 1, 0, 1425800146, NULL, 0, 0, 0, 'rucha', 0, '9320663738', 'SE'),
(119, 'a', 'aa', 'a@amail.com', '4124bc0a9335c27f086f24ba207a4912', '08-03-2015', 1, 0, 1425800574, NULL, 0, 0, 0, 'a', 0, '9999999999', 'SE'),
(120, 'priyanka', 'sabhagani', 'piasabhagani@gmail.com', 'ec926fcd57ab568d6f158699fc861d63', '08-03-2015', 1, 0, 1425807494, NULL, 0, 0, 0, 'zedpi', 0, '8600636849', 'BE'),
(121, 'Akshay', 'Iyer', 'ak.iyer1992@gmail.com', '3e760901315a3610d922730549f22769', '08-03-2015', 62, 0, 1425809576, 2, 0, 0, -6, 'D20 D16', 5, '9930020696', 'BE'),
(122, 'Shubham', 'Pounikar', 'shubhampnkr@gmail.com', '4060b2ec3302dc1a88e9a76b5b458449', '08-03-2015', 1, 0, 1425817244, NULL, 0, 0, 0, 'shubham', 0, '7208673784', 'TE'),
(123, 'vivek', 'lad', 'viveklad27@gmail.com', '855cce0cd65fa37eea4cbd1fe0499639', '08-03-2015', 1, 0, 1425819558, NULL, 0, 0, 0, 'prism', 0, '9967045070', 'SE'),
(124, 'Mihir', 'Patankar', 'mihirpat17@gmail.com', 'ceba5843e70d470a18b55e502b83a96c', '08-03-2015', 1, 0, 1425823023, NULL, 0, 0, 0, 'mrp', 0, '9594288649', 'BE'),
(125, 'pratik', 'shukla', 'pratik7@gmail.com', 'ff78f2295bd20c226df379bf2361b766', '08-03-2015', 1, 0, 1425828590, NULL, 0, 0, 0, 'pratik', 0, '8689830067', 'SE'),
(126, 'a', 'b', 'xyz2f4kb98jb98j689696nj39bn@gmail.com', '4aef0913c4e0f9e75323da6f295949c3', '24-03-2015', 63, 0, 1427140443, 3, 0, 0, -7, 's', 5, '9123456789', 'SE');

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
