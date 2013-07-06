-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 21, 2013 at 11:53 AM
-- Server version: 5.5.31
-- PHP Version: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=199 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add registration profile', 8, 'add_registrationprofile'),
(23, 'Can change registration profile', 8, 'change_registrationprofile'),
(24, 'Can delete registration profile', 8, 'delete_registrationprofile'),
(25, 'Can add report', 9, 'add_report'),
(26, 'Can change report', 9, 'change_report'),
(27, 'Can delete report', 9, 'delete_report'),
(28, 'Can add user profile', 10, 'add_userprofile'),
(29, 'Can change user profile', 10, 'change_userprofile'),
(30, 'Can delete user profile', 10, 'delete_userprofile'),
(31, 'Can add organisation', 11, 'add_organisation'),
(32, 'Can change organisation', 11, 'change_organisation'),
(33, 'Can delete organisation', 11, 'delete_organisation'),
(34, 'Can add department', 12, 'add_department'),
(35, 'Can change department', 12, 'change_department'),
(36, 'Can delete department', 12, 'delete_department'),
(37, 'Can add distribution', 13, 'add_distribution'),
(38, 'Can change distribution', 13, 'change_distribution'),
(39, 'Can delete distribution', 13, 'delete_distribution'),
(40, 'Can add lab', 14, 'add_lab'),
(41, 'Can change lab', 14, 'change_lab'),
(42, 'Can delete lab', 14, 'delete_lab'),
(43, 'Can add material', 15, 'add_material'),
(44, 'Can change material', 15, 'change_material'),
(45, 'Can delete material', 15, 'delete_material'),
(46, 'Can add test', 16, 'add_test'),
(47, 'Can change test', 16, 'change_test'),
(48, 'Can delete test', 16, 'delete_test'),
(49, 'Can add clientadd', 17, 'add_clientadd'),
(50, 'Can change clientadd', 17, 'change_clientadd'),
(51, 'Can delete clientadd', 17, 'delete_clientadd'),
(52, 'Can add edit clientadd', 18, 'add_editclientadd'),
(53, 'Can change edit clientadd', 18, 'change_editclientadd'),
(54, 'Can delete edit clientadd', 18, 'delete_editclientadd'),
(55, 'Can add govt', 19, 'add_govt'),
(56, 'Can change govt', 19, 'change_govt'),
(57, 'Can delete govt', 19, 'delete_govt'),
(58, 'Can add payment', 20, 'add_payment'),
(59, 'Can change payment', 20, 'change_payment'),
(60, 'Can delete payment', 20, 'delete_payment'),
(61, 'Can add job', 21, 'add_job'),
(62, 'Can change job', 21, 'change_job'),
(63, 'Can delete job', 21, 'delete_job'),
(64, 'Can add edit job', 22, 'add_editjob'),
(65, 'Can change edit job', 22, 'change_editjob'),
(66, 'Can delete edit job', 22, 'delete_editjob'),
(67, 'Can add client job', 23, 'add_clientjob'),
(68, 'Can change client job', 23, 'change_clientjob'),
(69, 'Can delete client job', 23, 'delete_clientjob'),
(70, 'Can add client edit job', 24, 'add_clienteditjob'),
(71, 'Can change client edit job', 24, 'change_clienteditjob'),
(72, 'Can delete client edit job', 24, 'delete_clienteditjob'),
(73, 'Can add suspence job', 25, 'add_suspencejob'),
(74, 'Can change suspence job', 25, 'change_suspencejob'),
(75, 'Can delete suspence job', 25, 'delete_suspencejob'),
(76, 'Can add suspence edit job', 26, 'add_suspenceeditjob'),
(77, 'Can change suspence edit job', 26, 'change_suspenceeditjob'),
(78, 'Can delete suspence edit job', 26, 'delete_suspenceeditjob'),
(79, 'Can add test total', 27, 'add_testtotal'),
(80, 'Can change test total', 27, 'change_testtotal'),
(81, 'Can delete test total', 27, 'delete_testtotal'),
(82, 'Can add test total perf', 28, 'add_testtotalperf'),
(83, 'Can change test total perf', 28, 'change_testtotalperf'),
(84, 'Can delete test total perf', 28, 'delete_testtotalperf'),
(85, 'Can add bill', 29, 'add_bill'),
(86, 'Can change bill', 29, 'change_bill'),
(87, 'Can delete bill', 29, 'delete_bill'),
(88, 'Can add bill perf', 30, 'add_billperf'),
(89, 'Can change bill perf', 30, 'change_billperf'),
(90, 'Can delete bill perf', 30, 'delete_billperf'),
(91, 'Can add amount', 31, 'add_amount'),
(92, 'Can change amount', 31, 'change_amount'),
(93, 'Can delete amount', 31, 'delete_amount'),
(94, 'Can add cdf amount', 32, 'add_cdfamount'),
(95, 'Can change cdf amount', 32, 'change_cdfamount'),
(96, 'Can delete cdf amount', 32, 'delete_cdfamount'),
(97, 'Can add distance', 33, 'add_distance'),
(98, 'Can change distance', 33, 'change_distance'),
(99, 'Can delete distance', 33, 'delete_distance'),
(100, 'Can add suspence', 34, 'add_suspence'),
(101, 'Can change suspence', 34, 'change_suspence'),
(102, 'Can delete suspence', 34, 'delete_suspence'),
(103, 'Can add staff', 35, 'add_staff'),
(104, 'Can change staff', 35, 'change_staff'),
(105, 'Can delete staff', 35, 'delete_staff'),
(106, 'Can add profroma tax', 36, 'add_profromatax'),
(107, 'Can change profroma tax', 36, 'change_profromatax'),
(108, 'Can delete profroma tax', 36, 'delete_profromatax'),
(109, 'Can add ta da', 37, 'add_tada'),
(110, 'Can change ta da', 37, 'change_tada'),
(111, 'Can delete ta da', 37, 'delete_tada'),
(112, 'Can add transportation', 38, 'add_transportation'),
(113, 'Can change transportation', 38, 'change_transportation'),
(114, 'Can delete transportation', 38, 'delete_transportation'),
(115, 'Can add transport', 39, 'add_transport'),
(116, 'Can change transport', 39, 'change_transport'),
(117, 'Can delete transport', 39, 'delete_transport'),
(118, 'Can add bankdetails', 40, 'add_bankdetails'),
(119, 'Can change bankdetails', 40, 'change_bankdetails'),
(120, 'Can delete bankdetails', 40, 'delete_bankdetails'),
(121, 'Can add tag', 41, 'add_tag'),
(122, 'Can change tag', 41, 'change_tag'),
(123, 'Can delete tag', 41, 'delete_tag'),
(124, 'Can add tagged item', 42, 'add_taggeditem'),
(125, 'Can change tagged item', 42, 'change_taggeditem'),
(126, 'Can delete tagged item', 42, 'delete_taggeditem'),
(127, 'Can add search', 43, 'add_search'),
(128, 'Can change search', 43, 'change_search'),
(129, 'Can delete search', 43, 'delete_search'),
(130, 'Can add report', 44, 'add_report'),
(131, 'Can change report', 44, 'change_report'),
(132, 'Can delete report', 44, 'delete_report'),
(133, 'Can add cube', 45, 'add_cube'),
(134, 'Can change cube', 45, 'change_cube'),
(135, 'Can delete cube', 45, 'delete_cube'),
(136, 'Can add chem_analysis', 46, 'add_chem_analysis'),
(137, 'Can change chem_analysis', 46, 'change_chem_analysis'),
(138, 'Can delete chem_analysis', 46, 'delete_chem_analysis'),
(139, 'Can add steel', 47, 'add_steel'),
(140, 'Can change steel', 47, 'change_steel'),
(141, 'Can delete steel', 47, 'delete_steel'),
(142, 'Can add ground_ water', 48, 'add_ground_water'),
(143, 'Can change ground_ water', 48, 'change_ground_water'),
(144, 'Can delete ground_ water', 48, 'delete_ground_water'),
(145, 'Can add concrete_ paver', 49, 'add_concrete_paver'),
(146, 'Can change concrete_ paver', 49, 'change_concrete_paver'),
(147, 'Can delete concrete_ paver', 49, 'delete_concrete_paver'),
(148, 'Can add interlock_ tiles', 50, 'add_interlock_tiles'),
(149, 'Can change interlock_ tiles', 50, 'change_interlock_tiles'),
(150, 'Can delete interlock_ tiles', 50, 'delete_interlock_tiles'),
(151, 'Can add pc', 51, 'add_pc'),
(152, 'Can change pc', 51, 'change_pc'),
(153, 'Can delete pc', 51, 'delete_pc'),
(154, 'Can add rebound_ hammer_ testing', 52, 'add_rebound_hammer_testing'),
(155, 'Can change rebound_ hammer_ testing', 52, 'change_rebound_hammer_testing'),
(156, 'Can delete rebound_ hammer_ testing', 52, 'delete_rebound_hammer_testing'),
(157, 'Can add brick', 53, 'add_brick'),
(158, 'Can change brick', 53, 'change_brick'),
(159, 'Can delete brick', 53, 'delete_brick'),
(160, 'Can add water', 54, 'add_water'),
(161, 'Can change water', 54, 'change_water'),
(162, 'Can delete water', 54, 'delete_water'),
(163, 'Can add soil_ ohsr', 55, 'add_soil_ohsr'),
(164, 'Can change soil_ ohsr', 55, 'change_soil_ohsr'),
(165, 'Can delete soil_ ohsr', 55, 'delete_soil_ohsr'),
(166, 'Can add soil_ building', 56, 'add_soil_building'),
(167, 'Can change soil_ building', 56, 'change_soil_building'),
(168, 'Can delete soil_ building', 56, 'delete_soil_building'),
(169, 'Can add admixture', 57, 'add_admixture'),
(170, 'Can change admixture', 57, 'change_admixture'),
(171, 'Can delete admixture', 57, 'delete_admixture'),
(172, 'Can add cement_ppc', 58, 'add_cement_ppc'),
(173, 'Can change cement_ppc', 58, 'change_cement_ppc'),
(174, 'Can delete cement_ppc', 58, 'delete_cement_ppc'),
(175, 'Can add cement_op c_33', 59, 'add_cement_opc_33'),
(176, 'Can change cement_op c_33', 59, 'change_cement_opc_33'),
(177, 'Can delete cement_op c_33', 59, 'delete_cement_opc_33'),
(178, 'Can add cement_op c_43', 60, 'add_cement_opc_43'),
(179, 'Can change cement_op c_43', 60, 'change_cement_opc_43'),
(180, 'Can delete cement_op c_43', 60, 'delete_cement_opc_43'),
(181, 'Can add cement_op c_53', 61, 'add_cement_opc_53'),
(182, 'Can change cement_op c_53', 61, 'change_cement_opc_53'),
(183, 'Can delete cement_op c_53', 61, 'delete_cement_opc_53'),
(184, 'Can add m s_steel_plate', 62, 'add_ms_steel_plate'),
(185, 'Can change m s_steel_plate', 62, 'change_ms_steel_plate'),
(186, 'Can delete m s_steel_plate', 62, 'delete_ms_steel_plate'),
(187, 'Can add m s_1786_fe_415', 63, 'add_ms_1786_fe_415'),
(188, 'Can change m s_1786_fe_415', 63, 'change_ms_1786_fe_415'),
(189, 'Can delete m s_1786_fe_415', 63, 'delete_ms_1786_fe_415'),
(190, 'Can add m s_1786_fe_500', 64, 'add_ms_1786_fe_500'),
(191, 'Can change m s_1786_fe_500', 64, 'change_ms_1786_fe_500'),
(192, 'Can delete m s_1786_fe_500', 64, 'delete_ms_1786_fe_500'),
(193, 'Can add i s_432_m s_grade_1_a_20mm_dia', 65, 'add_is_432_ms_grade_1_a_20mm_dia'),
(194, 'Can change i s_432_m s_grade_1_a_20mm_dia', 65, 'change_is_432_ms_grade_1_a_20mm_dia'),
(195, 'Can delete i s_432_m s_grade_1_a_20mm_dia', 65, 'delete_is_432_ms_grade_1_a_20mm_dia'),
(196, 'Can add i s_2062_2006', 66, 'add_is_2062_2006'),
(197, 'Can change i s_2062_2006', 66, 'change_is_2062_2006'),
(198, 'Can delete i s_2062_2006', 66, 'delete_is_2062_2006');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'admin', '', '', 'mkaurkhalsa@gmail.com', 'pbkdf2_sha256$10000$ZkyWp2fWN5Db$GfV093GDNkpVpa6bqVcM0CsQaXe1Ka4qsszOqQ6veL8=', 1, 1, 1, '2013-06-20 15:10:24', '2013-03-30 17:27:38'),
(2, 'Bhagwant', '', '', 'mkaurkhalsa@gmail.com', 'pbkdf2_sha256$10000$YJZpkw8GYrgA$2kbyZGVSslrCZ3O+XV9JnZ1MEVinKrldlM4crjFgJGc=', 0, 1, 0, '2013-03-31 21:57:48', '2013-03-30 23:29:05'),
(3, 'dotorgdotcom', '', '', 'dotorgdotcom@gmail.com', 'pbkdf2_sha256$10000$CZvAG50idQ1I$4nMpUcxypToLqViLnU1wVK22lUx75VreHVye/vT4tvQ=', 0, 0, 0, '2013-03-31 11:26:05', '2013-03-31 11:26:05'),
(4, 'vigas', '', '', 'vigasdeep@gmail.com', 'pbkdf2_sha256$10000$ZTJ2ucfySKD6$d0UbcF0cRL9Dm/VhQvQuGcsjYV8/Pg0mNzK3x8Zqb7c=', 0, 1, 0, '2013-03-31 21:06:24', '2013-03-31 19:56:10'),
(5, 'jagdeep', '', '', 'singh.malhi22@gmail.com', 'pbkdf2_sha256$10000$TpavpHNXnkbP$JVa6St+QhWWXxfJG3FbtQZLXuMG0QuhVkdwvHhUT1oI=', 0, 1, 0, '2013-04-01 20:42:17', '2013-03-31 23:50:21'),
(6, 'Taran', '', '', 'taranjeetssidhu@gmail.com', 'pbkdf2_sha256$10000$X4zV6fOcbulx$c7NBHY5YJ9qFIHEO+Bxx+z778c5B1rgJZMLq/FG3gaE=', 0, 0, 0, '2013-04-01 10:42:12', '2013-04-01 10:42:12'),
(7, 'mandy', '', '', 'meghasimak@gmail.com', 'pbkdf2_sha256$10000$ZQZiC6b5ZaSK$F0SPb2tza3DNfsbBvurKn5vNZp8dXi9SCC7WuxCf9Gs=', 0, 0, 0, '2013-04-01 15:59:54', '2013-04-01 15:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-06-18 15:52:42', 1, 15, '21', 'MS Steel Plate', 1, ''),
(2, '2013-06-18 15:53:34', 1, 15, '22', 'IS 1786, Fe 415', 1, ''),
(3, '2013-06-18 15:54:13', 1, 15, '23', 'IS 1786, Fe 500', 1, ''),
(4, '2013-06-20 12:40:08', 1, 15, '24', '2062:2006', 1, ''),
(5, '2013-06-20 12:40:45', 1, 15, '25', 'IS 432 MS Grade 1 a 20mm', 1, ''),
(6, '2013-06-20 13:03:12', 1, 15, '26', 'Soil Building', 1, ''),
(7, '2013-06-20 13:04:40', 1, 15, '27', 'Water/Waste', 1, ''),
(8, '2013-06-20 13:05:52', 1, 15, '28', 'Admixture', 1, ''),
(9, '2013-06-20 13:06:51', 1, 15, '29', 'Cement PPC', 1, ''),
(10, '2013-06-20 13:07:56', 1, 15, '30', 'OPC 33 Grade', 1, ''),
(11, '2013-06-20 13:08:25', 1, 15, '31', 'OPC 43 Garde', 1, ''),
(12, '2013-06-20 13:08:57', 1, 15, '32', 'OPC 53 Grade', 1, ''),
(13, '2013-06-20 13:09:48', 1, 15, '33', 'Coarse Aggregate ( Soil)', 1, ''),
(14, '2013-06-20 13:10:20', 1, 15, '34', 'Fine Aggregate (Soil)', 1, ''),
(15, '2013-06-20 13:12:07', 1, 15, '35', 'PC', 1, ''),
(16, '2013-06-20 13:12:50', 1, 15, '36', 'Rebound Hammering', 1, ''),
(17, '2013-06-20 13:13:27', 1, 15, '37', 'Ground Water', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'registration profile', 'registration', 'registrationprofile'),
(9, 'report', 'tcc', 'report'),
(10, 'user profile', 'tcc', 'userprofile'),
(11, 'organisation', 'tcc', 'organisation'),
(12, 'department', 'tcc', 'department'),
(13, 'distribution', 'tcc', 'distribution'),
(14, 'lab', 'tcc', 'lab'),
(15, 'material', 'tcc', 'material'),
(16, 'test', 'tcc', 'test'),
(17, 'clientadd', 'tcc', 'clientadd'),
(18, 'edit clientadd', 'tcc', 'editclientadd'),
(19, 'govt', 'tcc', 'govt'),
(20, 'payment', 'tcc', 'payment'),
(21, 'job', 'tcc', 'job'),
(22, 'edit job', 'tcc', 'editjob'),
(23, 'client job', 'tcc', 'clientjob'),
(24, 'client edit job', 'tcc', 'clienteditjob'),
(25, 'suspence job', 'tcc', 'suspencejob'),
(26, 'suspence edit job', 'tcc', 'suspenceeditjob'),
(27, 'test total', 'tcc', 'testtotal'),
(28, 'test total perf', 'tcc', 'testtotalperf'),
(29, 'bill', 'tcc', 'bill'),
(30, 'bill perf', 'tcc', 'billperf'),
(31, 'amount', 'tcc', 'amount'),
(32, 'cdf amount', 'tcc', 'cdfamount'),
(33, 'distance', 'tcc', 'distance'),
(34, 'suspence', 'tcc', 'suspence'),
(35, 'staff', 'tcc', 'staff'),
(36, 'profroma tax', 'tcc', 'profromatax'),
(37, 'ta da', 'tcc', 'tada'),
(38, 'transportation', 'tcc', 'transportation'),
(39, 'transport', 'tcc', 'transport'),
(40, 'bankdetails', 'tcc', 'bankdetails'),
(41, 'tag', 'tagging', 'tag'),
(42, 'tagged item', 'tagging', 'taggeditem'),
(43, 'search', 'report', 'search'),
(44, 'report', 'report', 'report'),
(45, 'cube', 'report', 'cube'),
(46, 'chem_analysis', 'report', 'chem_analysis'),
(47, 'steel', 'report', 'steel'),
(48, 'ground_ water', 'report', 'ground_water'),
(49, 'concrete_ paver', 'report', 'concrete_paver'),
(50, 'interlock_ tiles', 'report', 'interlock_tiles'),
(51, 'pc', 'report', 'pc'),
(52, 'rebound_ hammer_ testing', 'report', 'rebound_hammer_testing'),
(53, 'brick', 'report', 'brick'),
(54, 'water', 'report', 'water'),
(55, 'soil_ ohsr', 'report', 'soil_ohsr'),
(56, 'soil_ building', 'report', 'soil_building'),
(57, 'admixture', 'report', 'admixture'),
(58, 'cement_ppc', 'report', 'cement_ppc'),
(59, 'cement_op c_33', 'report', 'cement_opc_33'),
(60, 'cement_op c_43', 'report', 'cement_opc_43'),
(61, 'cement_op c_53', 'report', 'cement_opc_53'),
(62, 'm s_steel_plate', 'report', 'ms_steel_plate'),
(63, 'm s_1786_fe_415', 'report', 'ms_1786_fe_415'),
(64, 'm s_1786_fe_500', 'report', 'ms_1786_fe_500'),
(65, 'i s_432_m s_grade_1_a_20mm_dia', 'report', 'is_432_ms_grade_1_a_20mm_dia'),
(66, 'i s_2062_2006', 'report', 'is_2062_2006');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0be7d56055f192138137f6989e780e5e', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-05-06 18:12:03'),
('1a4cb7404fffb1ea04f67b0a92d8dd9c', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-14 22:50:51'),
('1be961c3c11fe9d6c33b693fd2089fb7', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-06-25 13:58:10'),
('2be29bd4dea86c44ae81a72531590703', 'ZmViYjI1ZjdhMDFiMWEwY2IzMmRiMmI4MDA0OGMxYzJiZWRjYWU5MTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQV1Lg==\n', '2013-04-15 20:42:17'),
('2f352653d7c1ad87c7fe62bce609b00c', 'ZWJlYjkwNWUzYWEzNmQ0Y2VjMWQ0NWJiMDdiMzI3OTU0YTI2OGM1NjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQR1Lg==\n', '2013-04-14 21:06:24'),
('4042f54df717b5e929a873e137191622', 'ODY1ODAyYjFlZjc3YTdiZTIyZmJhZDFhZTE5YjIxMTNjNDQ2NmYyYjqAAn1xAS4=\n', '2013-07-02 16:59:03'),
('4872f25507e6876a4c0f54b5ccf0b783', 'ODY1ODAyYjFlZjc3YTdiZTIyZmJhZDFhZTE5YjIxMTNjNDQ2NmYyYjqAAn1xAS4=\n', '2013-04-13 17:28:01'),
('54738ae59dd8182f09a139759310f972', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-07-02 15:56:30'),
('550820220926e434628cdda7148c0a8b', 'Yjg5ODQxMDRhOTlkNzFmY2E1M2NiNmM3OTk4ZWE3ODA5NjhjNzQ0OTqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2013-04-14 18:59:57'),
('555efb971d291500741731f560cefbfc', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-15 17:23:55'),
('587ea3f18d7c41ce60f47374557e94aa', 'ODY1ODAyYjFlZjc3YTdiZTIyZmJhZDFhZTE5YjIxMTNjNDQ2NmYyYjqAAn1xAS4=\n', '2013-04-15 00:11:14'),
('5bee9dc6a6fa89851d21b6bb2ee1e40f', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-15 02:04:18'),
('5c602652ade134f3f5a520e771e16dec', 'ODY1ODAyYjFlZjc3YTdiZTIyZmJhZDFhZTE5YjIxMTNjNDQ2NmYyYjqAAn1xAS4=\n', '2013-04-14 18:24:28'),
('5ecb15108c3248e7c064a4f86a0c20dc', 'Yjg5ODQxMDRhOTlkNzFmY2E1M2NiNmM3OTk4ZWE3ODA5NjhjNzQ0OTqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2013-04-14 11:38:30'),
('5fb02bd5c5ce0e1800fdcf90b39ad362', 'ODY1ODAyYjFlZjc3YTdiZTIyZmJhZDFhZTE5YjIxMTNjNDQ2NmYyYjqAAn1xAS4=\n', '2013-04-18 17:54:30'),
('62f5957808ce64869402352cc806978d', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-18 17:15:35'),
('759db1c47b4ba127b9340620e1cc78df', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-07-02 15:56:28'),
('798ccc901d0ecd211b6219d70695be9a', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-25 14:19:28'),
('80112837b3dc093552a016b139554782', 'ODY1ODAyYjFlZjc3YTdiZTIyZmJhZDFhZTE5YjIxMTNjNDQ2NmYyYjqAAn1xAS4=\n', '2013-04-14 18:17:25'),
('81c4077ef9984ac5b6a77d10a8d4b71e', 'YTA1ODZlMTE4NGMzZTVmYjAxNmNmY2M1ZWYzODI3ZWE3NzViZmM3MTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==\n', '2013-04-14 11:31:31'),
('8839e361f17d1a54948f6de0abea461f', 'Yjg5ODQxMDRhOTlkNzFmY2E1M2NiNmM3OTk4ZWE3ODA5NjhjNzQ0OTqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2013-04-14 18:48:50'),
('8d3eb3943ae230e3794abb2643e43fb6', 'OGEwM2FlMTdmZWEwZDdhODBlN2JlYjVmNDgyNzMzNzliNzIwMTk1ODqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2013-04-16 01:49:49'),
('914f0302cb79d9a7e9e66a76c722f087', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-07-02 16:31:48'),
('a1bc96967f2c0319f09bed45d98ddbcd', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-14 18:16:17'),
('ab608e8f14acc7692064723d5343f52a', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-13 17:51:34'),
('ab99dfb98d0f6c947f4d74eb23685704', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-04-13 23:32:23'),
('b28144d4b2c74326919546e582f909ef', 'Yjg5ODQxMDRhOTlkNzFmY2E1M2NiNmM3OTk4ZWE3ODA5NjhjNzQ0OTqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2013-04-15 15:59:17'),
('b2e04db2f2560081241b65e36a917676', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-07-04 15:10:25'),
('b9621324ae274438cb7437dd219da7c4', 'OGEwM2FlMTdmZWEwZDdhODBlN2JlYjVmNDgyNzMzNzliNzIwMTk1ODqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n', '2013-04-14 19:15:30'),
('c44a28af1b86653865015eb41c500c5e', 'ODY1ODAyYjFlZjc3YTdiZTIyZmJhZDFhZTE5YjIxMTNjNDQ2NmYyYjqAAn1xAS4=\n', '2013-04-14 20:31:54'),
('d6f506ddea3cb98243d8b0f0142d5c70', 'Yjg5ODQxMDRhOTlkNzFmY2E1M2NiNmM3OTk4ZWE3ODA5NjhjNzQ0OTqAAn1xAVUKdGVzdGNvb2tp\nZVUGd29ya2VkcQJzLg==\n', '2013-04-23 15:04:13'),
('e594ce6155605a7f768f64002b498724', 'MmJmYTI2ZDFhZWYyNTRlN2VjZGM5MTVkZTQ1ZmE5MjNlYWRmMGU4MDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAlUN\nX2F1dGhfdXNlcl9pZIoBAXUu\n', '2013-07-02 16:08:47'),
('f49a313a86e134652d9bc4283a6b3f1d', 'ZmViYjI1ZjdhMDFiMWEwY2IzMmRiMmI4MDA0OGMxYzJiZWRjYWU5MTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQV1Lg==\n', '2013-04-15 00:00:20'),
('f6d28a1d7fef3822dc8ee265d8655199', 'MjM5OTY0MDJiOTc2NjRhMjBlZDM0NzZlNmRkOTlhZWQyOGQ2YTA5MzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-07-02 15:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, '192.168.15.178', '192.168.15.178');

-- --------------------------------------------------------

--
-- Table structure for table `registration_registrationprofile`
--

CREATE TABLE IF NOT EXISTS `registration_registrationprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `registration_registrationprofile`
--

INSERT INTO `registration_registrationprofile` (`id`, `user_id`, `activation_key`) VALUES
(1, 2, 'ALREADY_ACTIVATED'),
(2, 3, 'e51d28e8bb4f22c44b9baca66fdf76c89e2846ae'),
(3, 4, 'ALREADY_ACTIVATED'),
(4, 5, 'ALREADY_ACTIVATED'),
(5, 6, '59723c2eab2127333adf994b87ae5280bde72753'),
(6, 7, 'eab382637463a47de6c69b0b137d7347fae28272');

-- --------------------------------------------------------

--
-- Table structure for table `report_admixture`
--

CREATE TABLE IF NOT EXISTS `report_admixture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(100) NOT NULL,
  `Physical_state` varchar(100) NOT NULL,
  `Specific_Gravity` varchar(100) NOT NULL,
  `PH_Value` varchar(100) NOT NULL,
  `Dry_Material_Content` varchar(100) NOT NULL,
  `Ash_Content` varchar(100) NOT NULL,
  `Chloride_Content` varchar(100) NOT NULL,
  `Control_Mix` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_admixture_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `report_admixture`
--

INSERT INTO `report_admixture` (`id`, `ip_address`, `Report_id_id`, `S_No`, `Physical_state`, `Specific_Gravity`, `PH_Value`, `Dry_Material_Content`, `Ash_Content`, `Chloride_Content`, `Control_Mix`) VALUES
(1, '202.164.53.117', 194, '1', 'good ', '78', '1', '20%', '', '16%', 'nil'),
(2, '202.164.53.117', 194, '2', 'fragile', '39', '7.9', '', '19%', '', 'nil');

-- --------------------------------------------------------

--
-- Table structure for table `report_brick`
--

CREATE TABLE IF NOT EXISTS `report_brick` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(255) NOT NULL,
  `Comp_Strength` varchar(255) NOT NULL,
  `Water_Absorption` varchar(255) NOT NULL,
  `Efflorescence` varchar(255) NOT NULL,
  `Dimension_Test` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_brick_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `report_brick`
--

INSERT INTO `report_brick` (`id`, `ip_address`, `Report_id_id`, `S_No`, `Comp_Strength`, `Water_Absorption`, `Efflorescence`, `Dimension_Test`) VALUES
(1, '202.164.53.117', 108, '1', '789', '789', '787', '897'),
(2, '202.164.53.117', 109, '1', '14.10', '12.10', '', '220 x110 x76 cm'),
(3, '202.164.53.117', 145, '21', '20', '21', '23', 'ok'),
(4, '202.164.53.117', 146, '21', '20', '21', '23', 'ok'),
(5, '202.164.53.117', 149, '21', '20', '21', '23', 'ok'),
(6, '202.164.53.117', 149, '54', '65', '5', '5', '5'),
(7, '202.164.53.117', 149, 'jgnu', 'njg', 'jhg', 'nn', 'hgn'),
(8, '202.164.53.117', 149, 'lkmuh', 'mu', 'mhu', 'luh', 'um'),
(9, '202.164.53.117', 180, '1', 'jkn', '897', '097', 'kjn'),
(10, '202.164.53.117', 180, '2', '67', '0970', '656', '46'),
(11, '202.164.53.117', 211, '1', '12', '10', 'Moderate ', '220 x110 x76 cm'),
(12, '202.164.53.117', 211, '2', '14', '11', '-do-', ''),
(13, '202.164.53.117', 211, '3', '16', '12', '-do-', ''),
(14, '202.164.53.117', 224, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `report_cement_opc_33`
--

CREATE TABLE IF NOT EXISTS `report_cement_opc_33` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Initial_Time` varchar(100) NOT NULL,
  `Final_Time` varchar(100) NOT NULL,
  `Fineness` varchar(100) NOT NULL,
  `Unaerated_Cement_Le` varchar(100) NOT NULL,
  `After_7_Days_Areation_Le` varchar(100) NOT NULL,
  `Unaerated_Cement_Automation` varchar(100) NOT NULL,
  `After_7_Days_Areation_Automation` varchar(100) NOT NULL,
  `Consistency` varchar(100) NOT NULL,
  `Hours_72` varchar(100) NOT NULL,
  `Hours_168` varchar(100) NOT NULL,
  `Hours_672` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cement_opc_33_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `report_cement_opc_33`
--

INSERT INTO `report_cement_opc_33` (`id`, `ip_address`, `Report_id_id`, `Initial_Time`, `Final_Time`, `Fineness`, `Unaerated_Cement_Le`, `After_7_Days_Areation_Le`, `Unaerated_Cement_Automation`, `After_7_Days_Areation_Automation`, `Consistency`, `Hours_72`, `Hours_168`, `Hours_672`) VALUES
(1, '202.164.53.117', 196, '76', '76', '786', '786', '786', '75', '675', '564', '56456', '345', '45'),
(2, '202.164.53.117', 196, '56', '65', '65', '65', '65', '765', '64', '564', '54', '3453', '54'),
(3, '202.164.53.117', 197, '87', '8768', '8', '789', '798', '789', '787', '87', '876', '876', '876'),
(4, '202.164.53.117', 197, '656', '56', '56', '565', '765', '65', '65', '76', '767', '6', '87678');

-- --------------------------------------------------------

--
-- Table structure for table `report_cement_opc_43`
--

CREATE TABLE IF NOT EXISTS `report_cement_opc_43` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Initial_Time` varchar(100) NOT NULL,
  `Final_Time` varchar(100) NOT NULL,
  `Fineness` varchar(100) NOT NULL,
  `Unaerated_Cement_Le` varchar(100) NOT NULL,
  `After_7_Days_Areation_Le` varchar(100) NOT NULL,
  `Unaerated_Cement_Automation` varchar(100) NOT NULL,
  `After_7_Days_Areation_Automation` varchar(100) NOT NULL,
  `Consistency` varchar(100) NOT NULL,
  `Hours_72` varchar(100) NOT NULL,
  `Hours_168` varchar(100) NOT NULL,
  `Hours_672` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cement_opc_43_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `report_cement_opc_43`
--

INSERT INTO `report_cement_opc_43` (`id`, `ip_address`, `Report_id_id`, `Initial_Time`, `Final_Time`, `Fineness`, `Unaerated_Cement_Le`, `After_7_Days_Areation_Le`, `Unaerated_Cement_Automation`, `After_7_Days_Areation_Automation`, `Consistency`, `Hours_72`, `Hours_168`, `Hours_672`) VALUES
(1, '202.164.53.117', 198, '56', '76', '65', '65', '', '65', '', '564', '', '345', ''),
(2, '202.164.53.117', 199, '56', '76', '65', '65', '', '65', '', '564', '', '345', ''),
(3, '202.164.53.117', 200, '56', '76', '65', '65', '', '65', '', '564', '', '345', ''),
(4, '202.164.53.117', 201, '56', '65', '', '65', '65', '', '656', '', '', '', '45'),
(5, '202.164.53.117', 205, '', '', '', '67676', '76', '7867', '687', '6876', '876', '7', '6876'),
(6, '202.164.53.117', 207, 'yt', 'ty', 'tyt', 'yt', 'yty', '', '', '', '', '', ''),
(7, '202.164.53.117', 208, 'yt', 'ty', 'tyt', 'yt', 'yty', '', '', '', '', '', ''),
(8, '202.164.53.117', 209, 'yt', 'ty', 'tyt', 'yt', 'yty', '', '', '', '', '', ''),
(9, '202.164.53.117', 210, 'yt', 'ty', 'tyt', 'yt', 'yty', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `report_cement_opc_53`
--

CREATE TABLE IF NOT EXISTS `report_cement_opc_53` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Initial_Time` varchar(100) NOT NULL,
  `Final_Time` varchar(100) NOT NULL,
  `Fineness` varchar(100) NOT NULL,
  `Unaerated_Cement_Le` varchar(100) NOT NULL,
  `After_7_Days_Areation_Le` varchar(100) NOT NULL,
  `Unaerated_Cement_Automation` varchar(100) NOT NULL,
  `After_7_Days_Areation_Automation` varchar(100) NOT NULL,
  `Consistency` varchar(100) NOT NULL,
  `Hours_72` varchar(100) NOT NULL,
  `Hours_168` varchar(100) NOT NULL,
  `Hours_672` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cement_opc_53_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `report_cement_opc_53`
--

INSERT INTO `report_cement_opc_53` (`id`, `ip_address`, `Report_id_id`, `Initial_Time`, `Final_Time`, `Fineness`, `Unaerated_Cement_Le`, `After_7_Days_Areation_Le`, `Unaerated_Cement_Automation`, `After_7_Days_Areation_Automation`, `Consistency`, `Hours_72`, `Hours_168`, `Hours_672`) VALUES
(1, '202.164.53.117', 202, '73', '34', '345', '35', '454', '656', '7567', '5675', '65', '675', '675');

-- --------------------------------------------------------

--
-- Table structure for table `report_cement_ppc`
--

CREATE TABLE IF NOT EXISTS `report_cement_ppc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Initial_Time` varchar(100) NOT NULL,
  `Final_Time` varchar(100) NOT NULL,
  `Fineness` varchar(100) NOT NULL,
  `Unaerated_Cement_Le` varchar(100) NOT NULL,
  `After_7_Days_Areation_Le` varchar(100) NOT NULL,
  `Unaerated_Cement_Automation` varchar(100) NOT NULL,
  `After_7_Days_Areation_Automation` varchar(100) NOT NULL,
  `Consistency` varchar(100) NOT NULL,
  `Hours_72` varchar(100) NOT NULL,
  `Hours_168` varchar(100) NOT NULL,
  `Hours_672` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cement_ppc_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `report_cement_ppc`
--

INSERT INTO `report_cement_ppc` (`id`, `ip_address`, `Report_id_id`, `Initial_Time`, `Final_Time`, `Fineness`, `Unaerated_Cement_Le`, `After_7_Days_Areation_Le`, `Unaerated_Cement_Automation`, `After_7_Days_Areation_Automation`, `Consistency`, `Hours_72`, `Hours_168`, `Hours_672`) VALUES
(1, '202.164.53.117', 195, '56', '65', '65', '65', '65', '65', '656', '', '467', '5675', '675'),
(2, '202.164.53.117', 195, 'ty', 'yty', 'tty', 'r', '4564', '564', '543', '54', '564', '56', '65'),
(3, '202.164.53.117', 212, '76', '210', '310', '1.9', '30', '1', '30', '35', '18', '30', '43');

-- --------------------------------------------------------

--
-- Table structure for table `report_chem_analysis`
--

CREATE TABLE IF NOT EXISTS `report_chem_analysis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `s_no` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_chem_analysis_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `report_chem_analysis`
--

INSERT INTO `report_chem_analysis` (`id`, `ip_address`, `Report_id_id`, `s_no`, `description`, `result`) VALUES
(1, '202.164.53.117', 147, '1', 'chemical testing', 'fine'),
(2, '202.164.53.117', 148, '1', 'chemical testing', 'fine'),
(3, '202.164.53.117', 148, '2', 'test2', 'bad'),
(4, '202.164.53.117', 151, '1', 'chemical testing', 'fine'),
(5, '202.164.53.117', 151, '2', 'test2', 'bad'),
(6, '202.164.53.117', 152, '1', 'chemical testing', 'fine'),
(7, '202.164.53.117', 152, '2', 'test2', 'bad'),
(8, '202.164.53.117', 185, '1', '878', '87'),
(9, '202.164.53.117', 185, '2', 'jnj', '78'),
(10, '202.164.53.117', 213, '1', '40 CA', '1.23');

-- --------------------------------------------------------

--
-- Table structure for table `report_concrete_paver`
--

CREATE TABLE IF NOT EXISTS `report_concrete_paver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Thickness` varchar(255) NOT NULL,
  `Comp_Strength_MPa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_concrete_paver_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `report_concrete_paver`
--

INSERT INTO `report_concrete_paver` (`id`, `ip_address`, `Report_id_id`, `S_No`, `Description`, `Thickness`, `Comp_Strength_MPa`) VALUES
(1, '202.164.53.117', 182, '1', '67', '767', '76'),
(2, '202.164.53.117', 182, '2', '545', '564', '5456');

-- --------------------------------------------------------

--
-- Table structure for table `report_cube`
--

CREATE TABLE IF NOT EXISTS `report_cube` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(255) NOT NULL,
  `Description` varchar(150) NOT NULL,
  `Breaking_load` varchar(150) NOT NULL,
  `Mix` varchar(255) NOT NULL,
  `Comp_strength` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_cube_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `report_cube`
--

INSERT INTO `report_cube` (`id`, `ip_address`, `Report_id_id`, `S_No`, `Description`, `Breaking_load`, `Mix`, `Comp_strength`) VALUES
(1, '202.164.53.117', 111, '1', '87', '897', '7897', '7'),
(2, '202.164.53.117', 111, '2', '897897', '12', '43', '09809'),
(3, '202.164.53.117', 113, '1', '87', '12', 'kjnkj', '7'),
(4, '202.164.53.117', 113, '2', '768', '89u89u', '890u890u', '09809'),
(5, '202.164.53.117', 115, 'hui', 'huih', 'uih', 'uihu', 'ih'),
(6, '202.164.53.117', 116, 'uhiu', 'hu', 'ihiu', 'hoih', 'oiuhoi'),
(7, '202.164.53.117', 116, 'uy89', '8', '8u', '8u89', 'u98u'),
(8, '202.164.53.117', 117, 'hui', 'huih', 'uih', 'uih', 'uih'),
(9, '202.164.53.117', 117, 'iuhui', 'hui', 'huih', 'ui', 'hiu'),
(10, '202.164.53.117', 118, '1', '87', '7897', 'kjnkj', '7'),
(11, '202.164.53.117', 118, '2', '897897', '8978', '6453', '09809'),
(12, '202.164.53.117', 118, '3', '898u908', '10000000', '89', '8989'),
(13, '202.164.53.117', 120, '1', '87', '897', '7897', '7'),
(14, '202.164.53.117', 121, '1', 'jhbj', '897', '', '7'),
(15, '202.164.53.117', 126, 'hjg', 'fhj', 'gfhj', 'gh', 'jg'),
(16, '202.164.53.117', 128, 'iou', 'iou', 'ioui', 'ouio', 'uio'),
(17, '202.164.53.117', 130, '1', '87', '2', '897', '7'),
(18, '202.164.53.117', 130, '2', '897897', '987', '890u890u', '09809'),
(19, '202.164.53.117', 130, '2', 'atinder ', '10000000', '89', '8989'),
(20, '202.164.53.117', 131, '1', 'uih', 'hui', 'huih', 'uihu'),
(21, '202.164.53.117', 131, 'uighiu', 'hui', 'huih', 'uih', 'uihu'),
(22, '202.164.53.117', 131, 'iuhiu', 'hui', 'huih', 'uih', 'uih'),
(23, '202.164.53.117', 133, '1', '87', '897', '897', '89789'),
(24, '202.164.53.117', 133, '8767', '678', '678', '678', '678'),
(25, '202.164.53.117', 134, 'yu', 'yu', 'yuio', 'y', 'uoyh'),
(26, '202.164.53.117', 134, 'uyui', 'yuy', 'uy', 'uoyu', 'oy'),
(27, '202.164.53.117', 135, '1', '87', '897', '897', '89789'),
(28, '202.164.53.117', 135, '8767', '678', '678', '', '678'),
(29, '202.164.53.117', 135, '876', '768', '6786', '567', '564'),
(30, '199.229.232.42', 143, '1', '897', '7y', '7y78y', '78y78'),
(31, '202.164.53.117', 144, '1', '87', '897', '98', '8'),
(32, '202.164.53.117', 144, '2', '768', '12', '43', '09809'),
(33, '115.240.175.103', 150, '1', 'abc', '5', '4', '45'),
(34, '115.240.175.103', 154, '1', 'abc', '5', '4', '45'),
(35, '115.240.175.103', 154, '2', 'cde', '6', '5', '22'),
(36, '202.164.53.117', 183, '1', '87', '897', '7897', '7'),
(37, '202.164.53.117', 183, '2', 'hioh', '78675', '43', '09809'),
(38, '202.164.53.117', 183, '3', 'hui', '908i098', '89', '8989'),
(39, '202.164.53.117', 221, '1', 'PC', '60', '20', '30'),
(40, '202.164.53.117', 221, '2', 'BM', '65', '-do-', '33');

-- --------------------------------------------------------

--
-- Table structure for table `report_ground_water`
--

CREATE TABLE IF NOT EXISTS `report_ground_water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(255) NOT NULL,
  `Result_1` varchar(255) NOT NULL,
  `Result_2` varchar(255) NOT NULL,
  `Result_3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_ground_water_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_interlock_tiles`
--

CREATE TABLE IF NOT EXISTS `report_interlock_tiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Thickness` varchar(255) NOT NULL,
  `Comp_Strength_MPa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_interlock_tiles_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `report_interlock_tiles`
--

INSERT INTO `report_interlock_tiles` (`id`, `ip_address`, `Report_id_id`, `S_No`, `Description`, `Thickness`, `Comp_Strength_MPa`) VALUES
(1, '202.164.53.117', 181, '1', '87', '87', '8789'),
(2, '202.164.53.117', 181, '878', '7897', '87', '878'),
(3, '202.164.53.117', 181, '656', '5675', '675', '4656'),
(4, '202.164.53.117', 216, '1', 'C P', '60 ', '38'),
(5, '202.164.53.117', 222, '1', '', '', ''),
(6, '202.164.53.117', 223, '1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `report_is_432_ms_grade_1_a_20mm_dia`
--

CREATE TABLE IF NOT EXISTS `report_is_432_ms_grade_1_a_20mm_dia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Mech_Prop` varchar(255) NOT NULL,
  `Proof_stress` varchar(255) NOT NULL,
  `Ultimate_tensile_stress` varchar(255) NOT NULL,
  `Elongation` varchar(255) NOT NULL,
  `Bend_Rebend_test` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_is_432_ms_grade_1_a_20mm_dia_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `report_is_432_ms_grade_1_a_20mm_dia`
--

INSERT INTO `report_is_432_ms_grade_1_a_20mm_dia` (`id`, `ip_address`, `Report_id_id`, `Mech_Prop`, `Proof_stress`, `Ultimate_tensile_stress`, `Elongation`, `Bend_Rebend_test`) VALUES
(1, '202.164.53.117', 192, '1', '65', '786', '7567', '789789'),
(2, '202.164.53.117', 192, '45', '54', '54', '', '786');

-- --------------------------------------------------------

--
-- Table structure for table `report_is_2062_2006`
--

CREATE TABLE IF NOT EXISTS `report_is_2062_2006` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Chemical_test` varchar(255) NOT NULL,
  `Carbon` varchar(255) NOT NULL,
  `Sulphur` varchar(255) NOT NULL,
  `Phosphorous` varchar(255) NOT NULL,
  `Silicon` varchar(255) NOT NULL,
  `Manganese` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_is_2062_2006_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `report_is_2062_2006`
--

INSERT INTO `report_is_2062_2006` (`id`, `ip_address`, `Report_id_id`, `Chemical_test`, `Carbon`, `Sulphur`, `Phosphorous`, `Silicon`, `Manganese`) VALUES
(1, '202.164.53.117', 176, '1', '876', '886786', '889', '7987', '8978'),
(2, '202.164.53.117', 177, '1', '876', '886786', '889', '7987', '8978'),
(3, '202.164.53.117', 178, '1', '876', '89789', '889', '89789', '7897'),
(4, '202.164.53.117', 191, '1', '876', '89789', '7897', '89789', ''),
(5, '202.164.53.117', 191, '76786', '897', '', '78678', '6786', '786');

-- --------------------------------------------------------

--
-- Table structure for table `report_ms_1786_fe_415`
--

CREATE TABLE IF NOT EXISTS `report_ms_1786_fe_415` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Mech_Prop` varchar(255) NOT NULL,
  `Proof_stress` varchar(255) NOT NULL,
  `Ultimate_tensile_stress` varchar(255) NOT NULL,
  `Elongation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_ms_1786_fe_415_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `report_ms_1786_fe_415`
--

INSERT INTO `report_ms_1786_fe_415` (`id`, `ip_address`, `Report_id_id`, `Mech_Prop`, `Proof_stress`, `Ultimate_tensile_stress`, `Elongation`) VALUES
(1, '202.164.53.117', 163, '17', '7', '8', '8'),
(2, '115.240.175.103', 164, '1', '0', '12', '1'),
(3, '202.164.53.117', 174, '1', '87', '89789', '7897'),
(4, '202.164.53.117', 174, '87897', '897987', '897897', '89789'),
(5, '202.164.53.117', 189, '1', '76', '786', '876786'),
(6, '202.164.53.117', 189, '2', '6546', '54', '54'),
(7, '202.164.53.117', 189, '3', '4534', '35', '453'),
(8, '202.164.53.117', 214, '1', '500', '600', '23'),
(9, '202.164.53.117', 215, '1', '500', '600', '23');

-- --------------------------------------------------------

--
-- Table structure for table `report_ms_1786_fe_500`
--

CREATE TABLE IF NOT EXISTS `report_ms_1786_fe_500` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Mech_Prop` varchar(255) NOT NULL,
  `Proof_stress` varchar(255) NOT NULL,
  `Ultimate_tensile_stress` varchar(255) NOT NULL,
  `Elongation` varchar(255) NOT NULL,
  `Bend_Rebend_test` varchar(255) NOT NULL,
  `Unit_wt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_ms_1786_fe_500_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `report_ms_1786_fe_500`
--

INSERT INTO `report_ms_1786_fe_500` (`id`, `ip_address`, `Report_id_id`, `Mech_Prop`, `Proof_stress`, `Ultimate_tensile_stress`, `Elongation`, `Bend_Rebend_test`, `Unit_wt`) VALUES
(1, '202.164.53.117', 165, '9', '8', '7', '7', '9', '8'),
(2, '202.164.53.117', 166, '1', '', '', '', '', ''),
(3, '202.164.53.117', 167, '1', '', '', '', '', ''),
(4, '202.164.53.117', 190, '1', '876', '786', '76', '7678', '6786');

-- --------------------------------------------------------

--
-- Table structure for table `report_ms_steel_plate`
--

CREATE TABLE IF NOT EXISTS `report_ms_steel_plate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Mech_Prop` varchar(255) NOT NULL,
  `Proof_stress` varchar(255) NOT NULL,
  `Ultimate_tensile_stress` varchar(255) NOT NULL,
  `Elongation` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_ms_steel_plate_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `report_ms_steel_plate`
--

INSERT INTO `report_ms_steel_plate` (`id`, `ip_address`, `Report_id_id`, `Mech_Prop`, `Proof_stress`, `Ultimate_tensile_stress`, `Elongation`) VALUES
(1, '202.164.53.117', 162, '1', 'good', 'normal', 'long'),
(2, '202.164.53.117', 162, '', '', '', ''),
(3, '202.164.53.117', 170, '1', '', '', ''),
(4, '202.164.53.117', 188, '1', '87', '8787', '98789'),
(5, '202.164.53.117', 188, '6565', '6546', '5465', '465'),
(6, '202.164.53.117', 188, '43453', '4534', '35', '5'),
(7, '202.164.53.117', 206, '1', '678', '667', '67'),
(8, '202.164.53.117', 206, '565', '675', '6756', '756');

-- --------------------------------------------------------

--
-- Table structure for table `report_pc`
--

CREATE TABLE IF NOT EXISTS `report_pc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Bitumen_Content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_pc_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `report_pc`
--

INSERT INTO `report_pc` (`id`, `ip_address`, `Report_id_id`, `S_No`, `Description`, `Bitumen_Content`) VALUES
(1, '202.164.53.117', 203, '1', '6', '767'),
(2, '202.164.53.117', 203, '2', '768', '656'),
(3, '202.164.53.117', 220, '1', 'PC', '4.50'),
(4, '202.164.53.117', 220, '', 'BM', '3.50');

-- --------------------------------------------------------

--
-- Table structure for table `report_rebound_hammer_testing`
--

CREATE TABLE IF NOT EXISTS `report_rebound_hammer_testing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(255) NOT NULL,
  `Location` varchar(255) NOT NULL,
  `Striking_Angle` varchar(255) NOT NULL,
  `Average_Rebound_No` varchar(255) NOT NULL,
  `Comp_Strength_MPa` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_rebound_hammer_testing_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_report`
--

CREATE TABLE IF NOT EXISTS `report_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `Sample_no` varchar(100) NOT NULL,
  `Header_column_1` varchar(255) NOT NULL,
  `Header_column_2` varchar(255) NOT NULL,
  `Footer_column_3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_report_751f44ae` (`job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=225 ;

--
-- Dumping data for table `report_report`
--

INSERT INTO `report_report` (`id`, `job_id`, `Sample_no`, `Header_column_1`, `Header_column_2`, `Footer_column_3`) VALUES
(1, 7, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', 'This is not to be used for any type of evidence'),
(2, 7, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', 'This is not to be used for any type of evidence'),
(3, 7, '1', '789', '897', '89789'),
(4, 7, '1', '789', '897', '89789'),
(5, 7, '1', '897', '8789', '7897'),
(6, 7, '1', '', '', ''),
(7, 7, '1', '7', '786y', '6y8'),
(8, 7, '1', '7', '786y', '6y8'),
(9, 7, '1', '7', '786y', '6y8'),
(10, 7, '1', 'good', '', ''),
(11, 7, '1', 'good', 'iouio', 'iouo'),
(12, 7, '1', 'uiy', 'uyui', 'yuiy'),
(13, 7, '1', 'uiy', 'uyui', 'yuiy'),
(14, 7, '1', 'uiy', 'uyui', 'yuiy'),
(15, 7, '1', 'The material is fragile and need water', 'wd', 'jhji'),
(16, 7, '1', 'The material is fragile and need water', 'theek ', ' a sara'),
(17, 7, '1', 'una', 'di sobha', 'yug yug joi'),
(18, 7, '1', 'hun ', 'sab ', 'theek a'),
(19, 7, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', '89789'),
(20, 7, '1', 'ioj', 'ioj', 'ioj'),
(21, 7, '1', 'the ', 'report', 'is'),
(22, 9, '1', 'the', 'report', 'is'),
(23, 9, '1', 'the', 'report', 'is'),
(24, 7, '1', '', '', ''),
(25, 9, '1', '', '', ''),
(26, 9, '1', '', '', ''),
(27, 9, '1', '', '', ''),
(28, 9, '1', '', '', ''),
(29, 9, '1', '', '', ''),
(30, 9, '1', '', '', ''),
(31, 9, '1', '', '', ''),
(32, 9, '1', '', '', ''),
(33, 7, '1', '', '', ''),
(34, 7, '1', '', '', ''),
(35, 7, '1', '', '', ''),
(36, 7, '1', '', '', ''),
(37, 7, '1', '', '', ''),
(38, 7, '1', '', '', ''),
(39, 7, '1', '', '', ''),
(40, 7, '1', '', '', ''),
(41, 7, '1', '', '', ''),
(42, 7, '1', '', '', ''),
(43, 7, '1', '', '', ''),
(44, 7, '1', '', '', ''),
(45, 7, '1', '', '', ''),
(46, 7, '1', '', '', ''),
(47, 7, '1', '', '', ''),
(48, 7, '1', '', '', ''),
(49, 7, '1', '', '', ''),
(50, 7, '1', 'aaaaaaaaaaafdkljn l;bfn l;knbgfklgngkl bmkl''nm''lm ''lnbmkl''bkl''', 'bklnm kllbm gbnk'' hm sbm ', 'rfsm fgmh ''hg'' lmrtg''h mhHm h'''),
(51, 7, '1', 'aaaaaaaaaaafdkljn l;bfn l;knbgfklgngkl bmkl''nm''lm ''lnbmkl''bkl''', 'bklnm kllbm gbnk'' hm sbm', 'rfsm fgmh ''hg'' lmrtg''h mhHm h'''),
(52, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(53, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(54, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(55, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(56, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(57, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(58, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(59, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(60, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(61, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(62, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(63, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(64, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(65, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(66, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(67, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(68, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(69, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(70, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(71, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(72, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(73, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(74, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(75, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(76, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(77, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(78, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(79, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(80, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(81, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(82, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(83, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(84, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(85, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(86, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(87, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(88, 7, '1', 'hreader col1', 'header col2', 'footr col3'),
(89, 7, '1', '', '', ''),
(90, 7, '1', '', '', ''),
(91, 7, '1', '', '', ''),
(92, 7, '1', '', '', ''),
(93, 7, '1', '', '', ''),
(94, 7, '1', '', '', ''),
(95, 7, '1', '', '', ''),
(96, 7, '1', '', '', ''),
(97, 7, '1', '', '', ''),
(98, 9, '1', '', '', ''),
(99, 11, '1', '', '', ''),
(100, 11, '1', '', '', ''),
(101, 11, '1', '', '', ''),
(102, 11, '1', '', '', ''),
(103, 11, '1', '', '', ''),
(104, 11, '1', '', '', ''),
(105, 11, '1', '', '', ''),
(106, 11, '1', '', '', ''),
(107, 11, '1', '', '', ''),
(108, 12, '1', '', '', ''),
(109, 12, '1', '', '', ''),
(110, 7, '1', '', '', ''),
(111, 7, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', 'This is not to be used for any type of evidence'),
(112, 7, '1', '', '', ''),
(113, 7, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', 'This is not to be used for any type of evidence'),
(114, 9, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', ' a sara'),
(115, 7, '1', 'iuh', 'uihu', 'ihui'),
(116, 7, '1', 'uih', 'iuh', 'iuhi'),
(117, 7, '1', 'iu', 'huihui', 'hui'),
(118, 7, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', 'This is not to be used for any type of evidence'),
(119, 7, '1', '', '', ''),
(120, 7, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', 'This is not to be used for any type of evidence'),
(121, 7, '1', 'The material is fragile and need water', 'theek ', 'This is not to be used for any type of evidence'),
(122, 9, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', '89789'),
(123, 9, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', '89789'),
(124, 9, '1', '', '', ''),
(125, 9, '1', 'iuh', 'iuhui', 'hiu'),
(126, 7, '1', 'hg', 'jhg', 'hjg'),
(127, 7, '1', '', '', ''),
(128, 7, '1', '8yuoi', 'yoiu', 'iou'),
(129, 7, '1', '', '', ''),
(130, 7, '1', '', 'All the tests are conducted under the natural conditions.', ' a sara'),
(131, 7, '1', '', '', ''),
(132, 7, '1', '', '', ''),
(133, 7, '1', 'the material ', 'is fragile ', 'then other '),
(134, 7, '1', 'uy', 'uiy', 'uiyu'),
(135, 7, '1', 'the material ', 'is fragile ', 'then other '),
(136, 7, '1', '', '', ''),
(137, 7, '1', '', '', ''),
(138, 7, '1', '', '', ''),
(139, 7, '1', '', '', ''),
(140, 9, '1', '', '', ''),
(141, 7, '1', '', '', ''),
(142, 7, '1', '', '', ''),
(143, 7, '1', '', '', ''),
(144, 7, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', 'This is not to be used for any type of evidence'),
(145, 21, '1', 'header1', 'header2', 'header3'),
(146, 21, '1', 'header1', 'header2', 'header3'),
(147, 22, '1', '', '', ''),
(148, 22, '1', '', '', ''),
(149, 21, '1', 'header1', 'header2', 'header3'),
(150, 23, '1', 'h1', 'h2', 'f3'),
(151, 22, '1', '', '', ''),
(152, 22, '1', '', '', ''),
(153, 24, '1', 'Header1', 'Header2', 'Footer'),
(154, 23, '1', 'h1', 'h2', 'f3'),
(155, 24, '1', 'Header1', 'Header2', 'Footer'),
(156, 29, '1', 'hdr1', 'hdr2', 'ft1'),
(157, 29, '1', 'hdr1', 'hdr2', 'ft1'),
(158, 35, '1', '', '', ''),
(159, 35, '1', '', '', ''),
(160, 36, '6', '6', '6', '6'),
(161, 36, '6', 'Header1', 'Header2', 'Footer'),
(162, 35, '1', '', '', ''),
(163, 36, '1', 'Header1', 'Header2', 'Footer'),
(164, 36, '1', 'h2', 'h3', 'f1'),
(165, 38, '7', 'Header1', 'Header2', 'Footer'),
(166, 38, '1', '', '', ''),
(167, 38, '1', '', '', ''),
(168, 6, '1', '', '', ''),
(169, 6, '1', '', '', ''),
(170, 35, '1', '', '', ''),
(171, 6, '1', '', '', ''),
(172, 6, '1', '', '', ''),
(173, 6, '1', '', '', ''),
(174, 36, '1', '', '', ''),
(175, 6, '1', '', '', ''),
(176, 39, '1', '', '', ''),
(177, 39, '1', '', '', ''),
(178, 39, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', '89789'),
(179, 6, '1', '', '', ''),
(180, 40, '1', '', '', ''),
(181, 41, '1', 'The material is fragile and need water', 'All the tests are conducted under the natural conditions.', ' a sara'),
(182, 42, '1', '', '', ''),
(183, 45, '1', '', '', ''),
(184, 46, '1', '', '', ''),
(185, 49, '1', '', '', ''),
(186, 50, '1', '', '', ''),
(187, 50, '1', '', '', ''),
(188, 52, '1', '', '', ''),
(189, 53, '1', '', '', ''),
(190, 54, '1', '', '', ''),
(191, 55, '1', '', '', ''),
(192, 56, '1', '', '', ''),
(193, 57, '1', '', '', ''),
(194, 58, '1', '', '', ''),
(195, 59, '1', '', '', ''),
(196, 60, '1', '', '', ''),
(197, 61, '1', '', '', ''),
(198, 61, '1', '', '', ''),
(199, 61, '1', '', '', ''),
(200, 61, '1', '', '', ''),
(201, 61, '1', '', '', ''),
(202, 62, '1', '', '', ''),
(203, 65, '1', '', '', ''),
(204, 66, '1', '', '', ''),
(205, 61, '1', '', '', ''),
(206, 52, '1', '', '', ''),
(207, 61, '1', '', '', ''),
(208, 61, '1', '', '', ''),
(209, 61, '1', '', '', ''),
(210, 61, '1', '', '', ''),
(211, 40, '1', '', '', ''),
(212, 59, '1', '', '', ''),
(213, 49, '1', '', '', ''),
(214, 53, '1', '', '', ''),
(215, 53, '1', '', '', ''),
(216, 41, '1', '', '', ''),
(217, 50, '1', '', '', ''),
(218, 57, '1', '', '', ''),
(219, 6, '1', '', '', ''),
(220, 65, '1', '', '', ''),
(221, 45, '1', '', '', ''),
(222, 41, '1', '', '', ''),
(223, 41, '1', '', '', ''),
(224, 40, '1', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `report_search`
--

CREATE TABLE IF NOT EXISTS `report_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(10) NOT NULL,
  `report` varchar(10) NOT NULL,
  `material` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_soil_building`
--

CREATE TABLE IF NOT EXISTS `report_soil_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Latitude_N` varchar(100) NOT NULL,
  `Longitude_E` varchar(100) NOT NULL,
  `Site_Name` varchar(100) NOT NULL,
  `Submitted_1` varchar(100) NOT NULL,
  `Submitted_2` varchar(100) NOT NULL,
  `Submitted_3` varchar(100) NOT NULL,
  `Date_of_Testing` varchar(100) NOT NULL,
  `Presence_1` varchar(100) NOT NULL,
  `Presence_2` varchar(100) NOT NULL,
  `Type_of_Str` varchar(100) NOT NULL,
  `Wall_Dt` varchar(100) NOT NULL,
  `Wall_B` varchar(100) NOT NULL,
  `Wall_C` varchar(100) NOT NULL,
  `Wall_Phay` varchar(100) NOT NULL,
  `Wall_Phay_Fe` varchar(100) NOT NULL,
  `Wall_Nc` varchar(100) NOT NULL,
  `Wall_Nq` varchar(100) NOT NULL,
  `Wall_Ny` varchar(100) NOT NULL,
  `Wall_Sc` varchar(100) NOT NULL,
  `Wall_Sq` varchar(100) NOT NULL,
  `Wall_Sy` varchar(100) NOT NULL,
  `Wall_dc` varchar(100) NOT NULL,
  `Wall_dq_dy` varchar(100) NOT NULL,
  `Wall_w` varchar(100) NOT NULL,
  `Gama_wall` varchar(100) NOT NULL,
  `Wall_peq` varchar(100) NOT NULL,
  `Wall_Total` varchar(100) NOT NULL,
  `Wall_T_2` varchar(100) NOT NULL,
  `Col_Df` varchar(100) NOT NULL,
  `Col_L` varchar(100) NOT NULL,
  `Col_B` varchar(100) NOT NULL,
  `Col_Sc` varchar(100) NOT NULL,
  `Col_Sq` varchar(100) NOT NULL,
  `Col_Sy` varchar(100) NOT NULL,
  `Col_dc` varchar(100) NOT NULL,
  `Col_dq_dy` varchar(100) NOT NULL,
  `Col_peq` varchar(100) NOT NULL,
  `Col_Total` varchar(100) NOT NULL,
  `Col_T_2` varchar(100) NOT NULL,
  `Dt_1` varchar(100) NOT NULL,
  `Dt_2` varchar(100) NOT NULL,
  `Dt_3` varchar(100) NOT NULL,
  `Dt_4` varchar(100) NOT NULL,
  `Dt_5` varchar(100) NOT NULL,
  `Dt_6` varchar(100) NOT NULL,
  `Dt_7` varchar(100) NOT NULL,
  `Dt_8` varchar(100) NOT NULL,
  `Ob_Pr_1` varchar(100) NOT NULL,
  `Ob_Pr_2` varchar(100) NOT NULL,
  `Ob_Pr_3` varchar(100) NOT NULL,
  `Ob_Pr_4` varchar(100) NOT NULL,
  `Ob_Pr_5` varchar(100) NOT NULL,
  `Ob_Pr_6` varchar(100) NOT NULL,
  `Ob_Pr_7` varchar(100) NOT NULL,
  `Ob_Pr_8` varchar(100) NOT NULL,
  `Corr_F_1` varchar(100) NOT NULL,
  `Corr_F_2` varchar(100) NOT NULL,
  `Corr_F_3` varchar(100) NOT NULL,
  `Corr_F_4` varchar(100) NOT NULL,
  `Corr_F_5` varchar(100) NOT NULL,
  `Corr_F_6` varchar(100) NOT NULL,
  `Corr_F_7` varchar(100) NOT NULL,
  `Corr_F_8` varchar(100) NOT NULL,
  `Ob_N_V1` varchar(100) NOT NULL,
  `Ob_N_V2` varchar(100) NOT NULL,
  `Ob_N_V3` varchar(100) NOT NULL,
  `Ob_N_V4` varchar(100) NOT NULL,
  `Ob_N_V5` varchar(100) NOT NULL,
  `Ob_N_V6` varchar(100) NOT NULL,
  `Ob_N_V7` varchar(100) NOT NULL,
  `Ob_N_V8` varchar(100) NOT NULL,
  `Corr_N_V1` varchar(100) NOT NULL,
  `Corr_N_V2` varchar(100) NOT NULL,
  `Corr_N_V3` varchar(100) NOT NULL,
  `Corr_N_V4` varchar(100) NOT NULL,
  `Corr_N_V5` varchar(100) NOT NULL,
  `Corr_N_V6` varchar(100) NOT NULL,
  `Corr_N_V7` varchar(100) NOT NULL,
  `Corr_N_V8` varchar(100) NOT NULL,
  `Wall_Net_V` varchar(100) NOT NULL,
  `Wall_Value` varchar(100) NOT NULL,
  `Wall_G_V` varchar(100) NOT NULL,
  `Col_Value` varchar(100) NOT NULL,
  `Col_Net_V` varchar(100) NOT NULL,
  `Col_G_V` varchar(100) NOT NULL,
  `Col_N_V` varchar(100) NOT NULL,
  `Wall_N_V` varchar(100) NOT NULL,
  `Water_Table` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_soil_building_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `report_soil_building`
--

INSERT INTO `report_soil_building` (`id`, `ip_address`, `Report_id_id`, `Latitude_N`, `Longitude_E`, `Site_Name`, `Submitted_1`, `Submitted_2`, `Submitted_3`, `Date_of_Testing`, `Presence_1`, `Presence_2`, `Type_of_Str`, `Wall_Dt`, `Wall_B`, `Wall_C`, `Wall_Phay`, `Wall_Phay_Fe`, `Wall_Nc`, `Wall_Nq`, `Wall_Ny`, `Wall_Sc`, `Wall_Sq`, `Wall_Sy`, `Wall_dc`, `Wall_dq_dy`, `Wall_w`, `Gama_wall`, `Wall_peq`, `Wall_Total`, `Wall_T_2`, `Col_Df`, `Col_L`, `Col_B`, `Col_Sc`, `Col_Sq`, `Col_Sy`, `Col_dc`, `Col_dq_dy`, `Col_peq`, `Col_Total`, `Col_T_2`, `Dt_1`, `Dt_2`, `Dt_3`, `Dt_4`, `Dt_5`, `Dt_6`, `Dt_7`, `Dt_8`, `Ob_Pr_1`, `Ob_Pr_2`, `Ob_Pr_3`, `Ob_Pr_4`, `Ob_Pr_5`, `Ob_Pr_6`, `Ob_Pr_7`, `Ob_Pr_8`, `Corr_F_1`, `Corr_F_2`, `Corr_F_3`, `Corr_F_4`, `Corr_F_5`, `Corr_F_6`, `Corr_F_7`, `Corr_F_8`, `Ob_N_V1`, `Ob_N_V2`, `Ob_N_V3`, `Ob_N_V4`, `Ob_N_V5`, `Ob_N_V6`, `Ob_N_V7`, `Ob_N_V8`, `Corr_N_V1`, `Corr_N_V2`, `Corr_N_V3`, `Corr_N_V4`, `Corr_N_V5`, `Corr_N_V6`, `Corr_N_V7`, `Corr_N_V8`, `Wall_Net_V`, `Wall_Value`, `Wall_G_V`, `Col_Value`, `Col_Net_V`, `Col_G_V`, `Col_N_V`, `Wall_N_V`, `Water_Table`) VALUES
(1, '202.164.53.117', 193, 'ioj', 'ioj', '', '0980', '98098', '09809', '', '9809', '8098', '76', '77', '786', '876', '786', '786', '876', '78687', '678', '6876', '786', '786', '76', '87678', '567', '6556', '456', '454', '345', '354', '345', '35', '456', '5476', '576', '5678', '5765', '564', '56', '46', '567', '5765', '654', '65', '564', '564', '564', '5434', '453', '543', '5443', '564', '56434', '5432', '432', '342', '4534', '56', '67', '87', '6876', '765', '564', '543', '453', '54', '4', '543', '32', '31', '32', '44356', '578', '68', '78', '687', '76', '53', '45', '3234', '243', '2454', '65', '6', '6876', '765', '54', '5634', '453'),
(2, '202.164.53.117', 218, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `report_soil_ohsr`
--

CREATE TABLE IF NOT EXISTS `report_soil_ohsr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `Date_of_testing` date NOT NULL,
  `Type_of_str` varchar(255) NOT NULL,
  `Latitude_N` varchar(255) NOT NULL,
  `Longitude_E` varchar(255) NOT NULL,
  `Presence_1` varchar(255) NOT NULL,
  `Presence_2` varchar(255) NOT NULL,
  `Submitted_1` varchar(255) NOT NULL,
  `Submitted_2` varchar(255) NOT NULL,
  `Submitted_3` varchar(255) NOT NULL,
  `Site_name` varchar(255) NOT NULL,
  `Water_table` varchar(255) NOT NULL,
  `Depth_D` varchar(255) NOT NULL,
  `Diameter_B` varchar(255) NOT NULL,
  `Gama_G` varchar(255) NOT NULL,
  `C` varchar(255) NOT NULL,
  `Phay` varchar(255) NOT NULL,
  `Phay_fe` varchar(255) NOT NULL,
  `Nc` varchar(255) NOT NULL,
  `Nq` varchar(255) NOT NULL,
  `Ny` varchar(255) NOT NULL,
  `dc` varchar(255) NOT NULL,
  `dqdy` varchar(255) NOT NULL,
  `Water` varchar(255) NOT NULL,
  `Pulse_Pulse` varchar(255) NOT NULL,
  `Eq_Total` varchar(255) NOT NULL,
  `Total_Dby_2` varchar(255) NOT NULL,
  `Dt_1` varchar(255) NOT NULL,
  `Dt_2` varchar(255) NOT NULL,
  `Dt_3` varchar(255) NOT NULL,
  `Dt_4` varchar(255) NOT NULL,
  `Dt_5` varchar(255) NOT NULL,
  `Dt_6` varchar(255) NOT NULL,
  `Dt_7` varchar(255) NOT NULL,
  `Dt_8` varchar(255) NOT NULL,
  `Ob_Pr_1` varchar(255) NOT NULL,
  `Ob_Pr_2` varchar(255) NOT NULL,
  `Ob_Pr_3` varchar(255) NOT NULL,
  `Ob_Pr_4` varchar(255) NOT NULL,
  `Ob_Pr_5` varchar(255) NOT NULL,
  `Ob_Pr_6` varchar(255) NOT NULL,
  `Ob_Pr_7` varchar(255) NOT NULL,
  `Ob_Pr_8` varchar(255) NOT NULL,
  `Corr_F_1` varchar(255) NOT NULL,
  `Corr_F_2` varchar(255) NOT NULL,
  `Corr_F_3` varchar(255) NOT NULL,
  `Corr_F_4` varchar(255) NOT NULL,
  `Corr_F_5` varchar(255) NOT NULL,
  `Corr_F_6` varchar(255) NOT NULL,
  `Corr_F_7` varchar(255) NOT NULL,
  `Corr_F_8` varchar(255) NOT NULL,
  `Ob_N_V1` varchar(255) NOT NULL,
  `Ob_N_V2` varchar(255) NOT NULL,
  `Ob_N_V3` varchar(255) NOT NULL,
  `Ob_N_V4` varchar(255) NOT NULL,
  `Ob_N_V5` varchar(255) NOT NULL,
  `Ob_N_V6` varchar(255) NOT NULL,
  `Ob_N_V7` varchar(255) NOT NULL,
  `Ob_N_V8` varchar(255) NOT NULL,
  `Corr_N_V1` varchar(255) NOT NULL,
  `Corr_N_V2` varchar(255) NOT NULL,
  `Corr_N_V3` varchar(255) NOT NULL,
  `Corr_N_V4` varchar(255) NOT NULL,
  `Corr_N_V5` varchar(255) NOT NULL,
  `Corr_N_V6` varchar(255) NOT NULL,
  `Corr_N_V7` varchar(255) NOT NULL,
  `Corr_N_V8` varchar(255) NOT NULL,
  `N_Value` varchar(255) NOT NULL,
  `S` varchar(255) NOT NULL,
  `Value` varchar(255) NOT NULL,
  `Net_Value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_soil_ohsr_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `report_steel`
--

CREATE TABLE IF NOT EXISTS `report_steel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `S_No` varchar(255) NOT NULL,
  `Description_of_Test` varchar(255) NOT NULL,
  `Acceptable_limit_as_per` varchar(255) NOT NULL,
  `Result_1` varchar(255) NOT NULL,
  `Result_2` varchar(255) NOT NULL,
  `Result_3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_steel_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `report_steel`
--

INSERT INTO `report_steel` (`id`, `ip_address`, `Report_id_id`, `S_No`, `Description_of_Test`, `Acceptable_limit_as_per`, `Result_1`, `Result_2`, `Result_3`) VALUES
(1, '202.164.53.117', 22, '1', '34', '43', '64', '654', '343'),
(2, '202.164.53.117', 22, '4567', '6756', '67567', '6756', '756', '5'),
(3, '202.164.53.117', 23, '1', '34', '43', '64', '654', '343'),
(4, '202.164.53.117', 23, '', '', '', '', '', ''),
(5, '202.164.53.117', 25, '1', '', '', '', '', ''),
(6, '202.164.53.117', 26, '1', '', '', '', '', ''),
(7, '202.164.53.117', 27, '1', 'rty', 'trty', '675', '765', '765'),
(8, '202.164.53.117', 27, '2', '87', '7897', '897', '89789', '789'),
(9, '202.164.53.117', 27, '3', 'ui89789', '789', '7897', '897', '89789'),
(10, '202.164.53.117', 28, '1', 'rty', 'trty', '675', '765', '765'),
(11, '202.164.53.117', 28, '2', '87', '7897', '897', '89789', '789'),
(12, '202.164.53.117', 28, '3', 'ui89789', '789', '7897', '897', '89789'),
(13, '202.164.53.117', 29, '1', 'rty', 'trty', '675', '765', '765'),
(14, '202.164.53.117', 29, '2', '87', '7897', '897', '89789', '789'),
(15, '202.164.53.117', 29, '3', 'ui89789', '789', '7897', '897', '89789'),
(16, '202.164.53.117', 30, '1', 'rty', 'trty', '675', '765', '765'),
(17, '202.164.53.117', 30, '', '', '', '', '', ''),
(18, '202.164.53.117', 30, '', '', '', '', '', ''),
(19, '202.164.53.117', 31, '1', 'rty', 'trty', '675', '765', '765'),
(20, '202.164.53.117', 31, '', '', '', '', '', ''),
(21, '202.164.53.117', 31, '', '', '', '', '', ''),
(22, '202.164.53.117', 32, '1', 'rty', 'trty', '675', '765', '765'),
(23, '202.164.53.117', 32, '', '', '', '', '', ''),
(24, '202.164.53.117', 32, '', '', '', '', '', ''),
(25, '202.164.53.117', 98, '1', 'Mechanical Properties', '500', '8', '16', '20'),
(26, '202.164.53.117', 114, '1', '', '39', '', '8789', '899789'),
(27, '202.164.53.117', 122, '1', '', '39', '', '8789', '899789'),
(28, '202.164.53.117', 122, '3', 'nice', '89', '98', '78', '767'),
(29, '202.164.53.117', 123, '1', '', '39', '', '8789', '899789'),
(30, '202.164.53.117', 123, '', '', '', '', '', ''),
(31, '202.164.53.117', 124, '1', '', '', '', '', ''),
(32, '202.164.53.117', 125, 'hiu', 'hiuh', 'uih', 'iuhui', 'hui', 'hui'),
(33, '202.164.53.117', 140, '1', '87', '89789', '7897', '987', '897'),
(34, '202.164.53.117', 140, '876', '87897', '897', '897', '8978', '9789'),
(35, '115.240.175.103', 156, '1', 'asd', '4', '12', '13', '14'),
(36, '115.240.175.103', 157, '1', 'asd', '4', '12', '13', '14'),
(37, '115.240.175.103', 157, '2', 'zxc', '45', '7', '8', '9'),
(38, '202.164.53.117', 184, '1', 'good', '39', '8978', '8789', '899789'),
(39, '202.164.53.117', 184, '2', 'nice', '89', '98', '78', '767');

-- --------------------------------------------------------

--
-- Table structure for table `report_water`
--

CREATE TABLE IF NOT EXISTS `report_water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_address` char(15) NOT NULL,
  `Report_id_id` int(11) NOT NULL,
  `PH_Value` varchar(255) NOT NULL,
  `Color` varchar(255) NOT NULL,
  `COD_Total` varchar(255) NOT NULL,
  `COD_Filtered` varchar(255) NOT NULL,
  `BOD5_Total` varchar(255) NOT NULL,
  `BOD5_Filtered` varchar(255) NOT NULL,
  `Sulphide` varchar(255) NOT NULL,
  `Sulphate` varchar(255) NOT NULL,
  `Alkalinity` varchar(255) NOT NULL,
  `Total_Suspended_Solids` varchar(255) NOT NULL,
  `Volatile_Suspended_Solids` varchar(255) NOT NULL,
  `Chloride_as_Cl` varchar(255) NOT NULL,
  `Nickel` varchar(255) NOT NULL,
  `Iron` varchar(255) NOT NULL,
  `Maganese` varchar(255) NOT NULL,
  `Copper` varchar(255) NOT NULL,
  `Hardness` varchar(255) NOT NULL,
  `Nitrates` varchar(255) NOT NULL,
  `Nitrites` varchar(255) NOT NULL,
  `Turbidity` varchar(255) NOT NULL,
  `Faecal_coliform` varchar(255) NOT NULL,
  `TDS` varchar(255) NOT NULL,
  `Taste_and_Odour` varchar(255) NOT NULL,
  `Calcium_and_Ca_Mg_per_l` varchar(255) NOT NULL,
  `Residual_Free_Chloride` varchar(255) NOT NULL,
  `Florides` varchar(255) NOT NULL,
  `Ammonia_Nitrogen` varchar(255) NOT NULL,
  `Total_Phosphorus` varchar(255) NOT NULL,
  `TKN` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `report_water_a6e5aad9` (`Report_id_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `report_water`
--

INSERT INTO `report_water` (`id`, `ip_address`, `Report_id_id`, `PH_Value`, `Color`, `COD_Total`, `COD_Filtered`, `BOD5_Total`, `BOD5_Filtered`, `Sulphide`, `Sulphate`, `Alkalinity`, `Total_Suspended_Solids`, `Volatile_Suspended_Solids`, `Chloride_as_Cl`, `Nickel`, `Iron`, `Maganese`, `Copper`, `Hardness`, `Nitrates`, `Nitrites`, `Turbidity`, `Faecal_coliform`, `TDS`, `Taste_and_Odour`, `Calcium_and_Ca_Mg_per_l`, `Residual_Free_Chloride`, `Florides`, `Ammonia_Nitrogen`, `Total_Phosphorus`, `TKN`) VALUES
(1, '202.164.53.117', 153, '7', '3', '5', '3', '7', '3', '2', '7', '4', '7', '9', '2', '2', '9', '2', '2', '4', '7', '23', '4', '8', '9', '6', '7', '4', '7', '6', '5', '4'),
(2, '202.164.53.117', 155, '7', '3', '5', '3', '7', '3', '2', '7', '4', '7', '9', '2', '2', '9', '2', '2', '4', '7', '23', '4', '8', '9', '6', '7', '4', '7', '6', '5', '4'),
(3, '202.164.53.117', 155, 'h', 'kj', 'kjh', 'kj', 'h', 'hk', 'jh', 'jh', 'kj', 'h', 'kjh', 'kj', 'hjh', 'hh', 'h', 'jh', 'kjh', 'kjh', 'j', 'hmj', 'jhj', 'jh', 'j', 'jh', 'jh', 'jh', 'jh', 'jh', 'k'),
(4, '202.164.53.117', 186, '1', 'white', '1', '1', '1', '87678', '6876', '876', '786', '768', '767', '687', '687', '67', '67', '67', '687', '687', '678', '67', '8678', '6', '6', '767', '66', '565', '454', '543', '54'),
(5, '202.164.53.117', 187, '1', 'white', '1', '1', '1', '87678', '6876', '876', '786', '768', '767', '687', '687', '67', '67', '67', '687', '687', '678', '67', '8678', '6', '6', '767', '66', '565', '454', '543', '54'),
(6, '202.164.53.117', 217, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tagging_tag`
--

CREATE TABLE IF NOT EXISTS `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `tagging_tag`
--

INSERT INTO `tagging_tag` (`id`, `name`) VALUES
(88, '&'),
(107, '(OHSR)'),
(109, '(Treatment'),
(20, '0'),
(28, '1.5laclitre'),
(21, '10'),
(27, '1laclitre'),
(92, '2'),
(106, '2 week training (IT'),
(30, '2.5laclitre'),
(32, '20'),
(68, '2500'),
(24, '25000litre'),
(29, '2laclitre'),
(33, '30'),
(31, '5laclitre'),
(95, '6'),
(103, '6 months training (IT'),
(105, '6 week training (IT'),
(25, '75000'),
(26, '75000litre'),
(71, 'above'),
(52, 'abrasion'),
(38, 'absorption'),
(42, 'aggregate'),
(8, 'aggregates'),
(50, 'analysis'),
(77, 'angle'),
(99, 'area'),
(85, 'ash'),
(72, 'barbed'),
(13, 'bc'),
(10, 'beams'),
(69, 'below'),
(2, 'bricks'),
(60, 'CBR'),
(12, 'cement'),
(79, 'channel'),
(7, 'chemical'),
(58, 'coarse'),
(36, 'comp.'),
(66, 'compaction'),
(89, 'Computer'),
(16, 'content'),
(43, 'course'),
(53, 'crushing'),
(104, 'CSE)'),
(44, 'cube'),
(67, 'cubes'),
(46, 'deign'),
(22, 'depth'),
(82, 'design'),
(108, 'Design(Building)'),
(70, 'dia'),
(39, 'effloroscence'),
(1, 'environment'),
(9, 'fine'),
(18, 'fineness'),
(62, 'fines'),
(54, 'flakiness'),
(78, 'flat'),
(40, 'flexural'),
(86, 'fly'),
(14, 'for'),
(56, 'gravity'),
(102, 'hilly'),
(74, 'hing'),
(55, 'impact'),
(90, 'IT'),
(64, 'limit'),
(65, 'liquid'),
(81, 'M-30'),
(83, 'M-40'),
(98, 'material'),
(91, 'mba'),
(47, 'mix'),
(84, 'mix design M-35'),
(19, 'modulus'),
(63, 'moisture'),
(96, 'months'),
(34, 'more'),
(15, 'ohsr'),
(11, 'pavers'),
(100, 'plain'),
(110, 'Plant)'),
(101, 'semi-hilly'),
(51, 'sieve'),
(17, 'silt'),
(4, 'soil'),
(3, 'som'),
(59, 'soundness'),
(57, 'specific'),
(45, 'steel'),
(37, 'strength'),
(76, 'structural'),
(97, 'survey'),
(80, 'tees'),
(75, 'tension'),
(49, 'test'),
(41, 'tests'),
(35, 'than'),
(23, 'to'),
(93, 'training'),
(61, 'unsoaked'),
(5, 'waste water'),
(6, 'water'),
(94, 'week'),
(73, 'wire'),
(87, 'with'),
(48, 'wood');

-- --------------------------------------------------------

--
-- Table structure for table `tagging_taggeditem`
--

CREATE TABLE IF NOT EXISTS `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag_id` (`tag_id`,`content_type_id`,`object_id`),
  KEY `tagging_taggeditem_3747b463` (`tag_id`),
  KEY `tagging_taggeditem_1bb8f392` (`content_type_id`),
  KEY `tagging_taggeditem_7d61c803` (`object_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=209 ;

--
-- Dumping data for table `tagging_taggeditem`
--

INSERT INTO `tagging_taggeditem` (`id`, `tag_id`, `content_type_id`, `object_id`) VALUES
(1, 1, 12, 1),
(8, 2, 13, 1),
(3, 3, 12, 2),
(4, 4, 12, 3),
(16, 4, 13, 5),
(5, 5, 12, 4),
(6, 6, 12, 4),
(80, 6, 13, 13),
(55, 6, 14, 17),
(68, 6, 14, 21),
(7, 7, 12, 5),
(78, 7, 13, 12),
(9, 8, 13, 2),
(18, 8, 14, 1),
(10, 9, 13, 2),
(19, 9, 14, 1),
(116, 9, 14, 33),
(121, 9, 14, 34),
(123, 9, 14, 35),
(11, 10, 13, 3),
(12, 11, 13, 3),
(59, 11, 14, 19),
(63, 11, 14, 20),
(67, 11, 14, 21),
(13, 12, 13, 4),
(69, 12, 14, 22),
(14, 13, 13, 5),
(15, 14, 13, 5),
(58, 14, 14, 19),
(62, 14, 14, 20),
(66, 14, 14, 21),
(179, 14, 14, 48),
(17, 15, 13, 6),
(27, 15, 14, 4),
(40, 15, 14, 13),
(45, 15, 14, 14),
(50, 15, 14, 15),
(20, 16, 14, 2),
(112, 16, 14, 32),
(21, 17, 14, 2),
(22, 18, 14, 3),
(23, 19, 14, 3),
(24, 20, 14, 4),
(25, 21, 14, 4),
(37, 21, 14, 13),
(26, 22, 14, 4),
(39, 22, 14, 13),
(44, 22, 14, 14),
(48, 22, 14, 15),
(28, 23, 14, 4),
(41, 23, 14, 13),
(46, 23, 14, 14),
(29, 24, 14, 5),
(30, 25, 14, 6),
(31, 26, 14, 7),
(32, 27, 14, 8),
(33, 28, 14, 9),
(34, 29, 14, 10),
(35, 30, 14, 11),
(36, 31, 14, 12),
(38, 32, 14, 13),
(42, 32, 14, 14),
(43, 33, 14, 14),
(47, 33, 14, 15),
(49, 34, 14, 15),
(51, 35, 14, 15),
(52, 36, 14, 16),
(57, 36, 14, 19),
(126, 36, 14, 36),
(53, 37, 14, 16),
(60, 37, 14, 19),
(64, 37, 14, 20),
(128, 37, 14, 36),
(54, 38, 14, 17),
(65, 38, 14, 21),
(56, 39, 14, 18),
(61, 40, 14, 20),
(70, 41, 14, 22),
(71, 42, 13, 7),
(85, 42, 14, 24),
(87, 42, 14, 25),
(90, 42, 14, 26),
(93, 42, 14, 27),
(96, 42, 14, 28),
(100, 42, 14, 29),
(105, 42, 14, 30),
(107, 42, 14, 31),
(111, 42, 14, 32),
(115, 42, 14, 33),
(119, 42, 14, 34),
(122, 42, 14, 35),
(72, 43, 13, 7),
(82, 43, 14, 23),
(86, 43, 14, 24),
(88, 43, 14, 25),
(91, 43, 14, 26),
(94, 43, 14, 27),
(97, 43, 14, 28),
(73, 44, 13, 8),
(74, 45, 13, 9),
(132, 45, 14, 37),
(136, 45, 14, 38),
(138, 45, 14, 39),
(141, 45, 14, 40),
(143, 45, 14, 41),
(146, 45, 14, 42),
(148, 45, 14, 43),
(150, 45, 14, 44),
(75, 46, 13, 10),
(76, 47, 13, 10),
(154, 47, 14, 45),
(160, 47, 14, 47),
(77, 48, 13, 11),
(79, 49, 13, 12),
(103, 49, 14, 29),
(81, 50, 14, 23),
(110, 51, 14, 1),
(83, 51, 14, 23),
(84, 52, 14, 24),
(89, 53, 14, 25),
(92, 54, 14, 26),
(95, 55, 14, 27),
(98, 56, 14, 28),
(124, 56, 14, 35),
(99, 57, 14, 28),
(125, 57, 14, 35),
(101, 58, 14, 29),
(106, 58, 14, 30),
(108, 58, 14, 31),
(102, 59, 14, 29),
(104, 60, 14, 30),
(109, 61, 14, 31),
(113, 62, 14, 32),
(114, 63, 14, 32),
(117, 64, 14, 33),
(118, 65, 14, 33),
(120, 66, 14, 34),
(127, 67, 14, 36),
(129, 68, 14, 37),
(133, 68, 14, 38),
(130, 69, 14, 37),
(131, 70, 14, 37),
(135, 70, 14, 38),
(134, 71, 14, 38),
(137, 72, 14, 39),
(139, 73, 14, 39),
(140, 74, 14, 40),
(142, 75, 14, 40),
(199, 76, 12, 9),
(202, 76, 13, 18),
(204, 76, 13, 19),
(208, 76, 13, 20),
(144, 76, 14, 41),
(145, 77, 14, 42),
(147, 78, 14, 43),
(149, 79, 14, 44),
(151, 80, 14, 44),
(152, 81, 14, 45),
(198, 82, 12, 9),
(201, 82, 13, 18),
(206, 82, 13, 20),
(153, 82, 14, 45),
(158, 82, 14, 47),
(155, 83, 14, 46),
(156, 84, 14, 46),
(157, 85, 14, 47),
(159, 86, 14, 47),
(161, 87, 14, 47),
(162, 88, 12, 6),
(163, 89, 12, 6),
(164, 90, 12, 6),
(165, 91, 12, 7),
(175, 97, 12, 8),
(177, 97, 13, 17),
(181, 97, 14, 48),
(184, 97, 14, 49),
(187, 97, 14, 50),
(176, 98, 13, 17),
(178, 99, 14, 48),
(182, 99, 14, 49),
(185, 99, 14, 50),
(180, 100, 14, 48),
(183, 101, 14, 49),
(186, 102, 14, 50),
(188, 103, 13, 16),
(194, 103, 14, 51),
(193, 104, 13, 14),
(191, 104, 13, 15),
(189, 104, 13, 16),
(195, 104, 14, 51),
(197, 104, 14, 52),
(190, 105, 13, 15),
(196, 105, 14, 52),
(192, 106, 13, 14),
(200, 107, 13, 18),
(203, 108, 13, 19),
(205, 109, 13, 20),
(207, 110, 13, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_amount`
--

CREATE TABLE IF NOT EXISTS `tcc_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `college_income` int(11) DEFAULT NULL,
  `admin_charge` int(11) DEFAULT NULL,
  `consultancy_asst` int(11) DEFAULT NULL,
  `development_fund` int(11) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `report_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_amount_751f44ae` (`job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `tcc_amount`
--

INSERT INTO `tcc_amount` (`id`, `job_id`, `college_income`, `admin_charge`, `consultancy_asst`, `development_fund`, `unit_price`, `report_type`) VALUES
(1, 2, NULL, NULL, NULL, NULL, 8000, 'Suspence'),
(2, 6, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(3, 6, NULL, NULL, NULL, NULL, 800, 'Suspence'),
(4, 8, NULL, NULL, NULL, NULL, 23000, 'Suspence'),
(5, 10, NULL, NULL, NULL, NULL, 6000, 'Suspence'),
(6, 11, NULL, NULL, NULL, NULL, 6000, 'Suspence'),
(7, 10, 360, 120, 576, 1344, 2400, 'General_report'),
(8, 10, 300, 100, 640, 960, 2000, 'General_report'),
(9, 9, 0, 0, 0, 0, 0, 'General_report'),
(10, 14, 0, 0, 0, 0, 0, 'General_report'),
(11, 11, 75, 25, 120, 280, 500, 'General_report'),
(12, 17, NULL, NULL, NULL, NULL, 3000, 'Suspence'),
(13, 17, 1020, 340, 1632, 3808, 6800, 'General_report'),
(14, 17, 0, 0, 0, 0, 0, 'General_report'),
(15, 17, 0, 0, 0, 0, 0, 'General_report'),
(16, 17, 720, 240, 1152, 2688, 4800, 'General_report'),
(17, 17, 0, 0, 0, 0, 0, 'General_report'),
(18, 17, 150, 50, 240, 560, 1000, 'General_report'),
(19, 17, 0, 0, 0, 0, 0, 'General_report'),
(20, 17, 0, 0, 0, 0, 0, 'General_report'),
(21, 17, 480, 160, 768, 1792, 3200, 'General_report'),
(22, 17, 0, 0, 0, 0, 0, 'General_report'),
(23, 17, 0, 0, 0, 0, 0, 'General_report'),
(24, 17, 2250, 750, 3600, 8400, 15000, 'General_report'),
(25, 29, NULL, NULL, NULL, NULL, 3600, 'Suspence'),
(26, 17, 5400, 1800, 8640, 20160, 36000, 'General_report'),
(27, 17, 750, 250, 1200, 2800, 5000, 'General_report'),
(28, 17, 0, 0, 0, 0, 0, 'General_report'),
(29, 17, 0, 0, 0, 0, 0, 'General_report'),
(30, 38, NULL, NULL, NULL, NULL, 1234, 'Suspence'),
(31, 39, NULL, NULL, NULL, NULL, -1, 'Suspence'),
(32, 39, NULL, NULL, NULL, NULL, 2400, 'Suspence'),
(33, 40, NULL, NULL, NULL, NULL, 1600, 'Suspence'),
(34, 39, NULL, NULL, NULL, NULL, 300, 'Suspence'),
(35, 39, NULL, NULL, NULL, NULL, 2500, 'Suspence'),
(36, 39, NULL, NULL, NULL, NULL, 1600, 'Suspence'),
(37, 40, NULL, NULL, NULL, NULL, 500, 'Suspence'),
(38, 39, NULL, NULL, NULL, NULL, 7500, 'Suspence'),
(39, 39, NULL, NULL, NULL, NULL, 10000, 'Suspence'),
(40, 48, NULL, NULL, NULL, NULL, -2, 'Suspence'),
(41, 40, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(42, 49, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(43, 39, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(44, 50, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(45, 52, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(46, 50, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(47, 50, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(48, 47, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(49, 47, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(50, 47, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(51, 58, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(52, 57, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(53, 57, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(54, 61, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(55, 61, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(56, 61, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(57, 58, NULL, NULL, NULL, NULL, 0, 'Suspence'),
(58, 61, NULL, NULL, NULL, NULL, 0, 'Suspence');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_bankdetails`
--

CREATE TABLE IF NOT EXISTS `tcc_bankdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accname` varchar(50) NOT NULL,
  `accountno` int(11) NOT NULL,
  `accountcode` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_bill`
--

CREATE TABLE IF NOT EXISTS `tcc_bill` (
  `job_no` int(11) NOT NULL,
  `education_tax` int(11) DEFAULT NULL,
  `higher_education_tax` int(11) DEFAULT NULL,
  `service_tax` int(11) DEFAULT NULL,
  `net_total` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `trans_total` int(11) DEFAULT NULL,
  `trans_net_total` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tcc_bill`
--

INSERT INTO `tcc_bill` (`job_no`, `education_tax`, `higher_education_tax`, `service_tax`, `net_total`, `price`, `trans_total`, `trans_net_total`, `balance`) VALUES
(1, 19, 10, 960, 8989, 8000, 0, 8000, 8989);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_billperf`
--

CREATE TABLE IF NOT EXISTS `tcc_billperf` (
  `job_no` int(11) NOT NULL,
  `education_tax` int(11) DEFAULT NULL,
  `higher_education_tax` int(11) DEFAULT NULL,
  `service_tax` int(11) DEFAULT NULL,
  `net_total` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`job_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_cdfamount`
--

CREATE TABLE IF NOT EXISTS `tcc_cdfamount` (
  `job_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `lab` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `field` varchar(10) NOT NULL,
  `other_field` varchar(100) DEFAULT NULL,
  `report_type` varchar(20) NOT NULL,
  PRIMARY KEY (`job_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clientadd`
--

CREATE TABLE IF NOT EXISTS `tcc_clientadd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_clientadd_fbfc09f1` (`user_id`),
  KEY `tcc_clientadd_4a4e8ffb` (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tcc_clientadd`
--

INSERT INTO `tcc_clientadd` (`id`, `user_id`, `client_id`) VALUES
(3, 2, 3),
(4, 2, 3),
(5, 4, 4),
(6, 4, 4),
(7, 1, 4),
(8, 4, 4),
(9, 1, 3),
(10, 1, 3),
(11, 1, 4),
(12, 1, 6),
(13, 5, 5),
(14, 5, 8),
(15, 1, 3),
(16, 1, 3),
(17, 1, 4),
(18, 1, 3),
(19, 1, 4),
(20, 1, 4),
(21, 1, 3),
(22, 1, 4),
(23, 1, 3),
(24, 1, 7),
(25, 1, 8),
(26, 1, 3),
(27, 1, 3),
(28, 1, 3),
(29, 1, 3),
(30, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clienteditjob`
--

CREATE TABLE IF NOT EXISTS `tcc_clienteditjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_clienteditjob_751f44ae` (`job_id`),
  KEY `tcc_clienteditjob_fab9ba43` (`material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clienteditjob_test`
--

CREATE TABLE IF NOT EXISTS `tcc_clienteditjob_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clienteditjob_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clienteditjob_id` (`clienteditjob_id`,`test_id`),
  KEY `tcc_clienteditjob_test_cbd9e9bb` (`clienteditjob_id`),
  KEY `tcc_clienteditjob_test_a88de8dc` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clientjob`
--

CREATE TABLE IF NOT EXISTS `tcc_clientjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  `other_test` varchar(400) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_clientjob_751f44ae` (`job_id`),
  KEY `tcc_clientjob_fab9ba43` (`material_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

--
-- Dumping data for table `tcc_clientjob`
--

INSERT INTO `tcc_clientjob` (`id`, `job_id`, `material_id`, `other_test`) VALUES
(2, 2, 10, ''),
(4, 7, 8, ''),
(5, 8, 2, ''),
(6, 9, 9, ''),
(7, 12, 1, ''),
(8, 13, 15, ''),
(9, 14, 15, ''),
(10, 15, 15, ''),
(11, 16, 8, ''),
(12, 17, 4, 'erqwer'),
(13, 18, 7, ''),
(14, 19, 19, ''),
(15, 20, 11, ''),
(16, 21, 1, ''),
(17, 22, 12, ''),
(18, 23, 8, ''),
(19, 24, 13, ''),
(20, 25, 13, ''),
(21, 26, 2, ''),
(22, 27, 20, ''),
(23, 28, 18, ''),
(24, 29, 9, ''),
(25, 30, 3, ''),
(26, 32, 10, ''),
(27, 33, 4, ''),
(28, 35, 21, ''),
(29, 36, 22, ''),
(30, 38, 23, 'mytest'),
(31, 39, 24, '87988'),
(32, 40, 1, ''),
(33, 41, 2, ''),
(34, 42, 3, ''),
(35, 43, 4, ''),
(36, 44, 7, ''),
(37, 45, 8, ''),
(38, 46, 9, ''),
(39, 47, 10, ''),
(40, 48, 11, 'uiy'),
(41, 49, 12, ''),
(42, 50, 13, ''),
(43, 51, 18, ''),
(44, 52, 21, ''),
(45, 53, 22, ''),
(46, 54, 23, ''),
(47, 55, 24, ''),
(48, 56, 25, ''),
(49, 57, 26, ''),
(50, 58, 28, ''),
(51, 59, 29, ''),
(52, 60, 30, ''),
(53, 61, 31, ''),
(54, 62, 32, ''),
(55, 63, 33, ''),
(56, 64, 34, ''),
(57, 65, 35, ''),
(58, 66, 37, '');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_clientjob_test`
--

CREATE TABLE IF NOT EXISTS `tcc_clientjob_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientjob_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clientjob_id` (`clientjob_id`,`test_id`),
  KEY `tcc_clientjob_test_244d514d` (`clientjob_id`),
  KEY `tcc_clientjob_test_a88de8dc` (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `tcc_clientjob_test`
--

INSERT INTO `tcc_clientjob_test` (`id`, `clientjob_id`, `test_id`) VALUES
(2, 2, 45),
(4, 5, 32),
(7, 6, 37),
(8, 6, 38),
(9, 6, 39),
(5, 6, 41),
(6, 6, 43),
(10, 7, 17),
(11, 7, 18),
(12, 8, 52),
(13, 11, 36),
(14, 13, 27),
(15, 13, 28),
(16, 13, 30),
(17, 16, 16),
(18, 16, 17),
(19, 18, 36),
(20, 21, 1),
(21, 21, 2),
(22, 24, 40),
(23, 24, 41),
(24, 24, 42),
(25, 25, 19),
(26, 25, 20),
(27, 25, 21),
(28, 26, 45),
(29, 26, 46),
(30, 27, 22),
(31, 32, 16),
(32, 32, 17),
(34, 33, 3),
(33, 33, 32),
(35, 34, 20),
(36, 35, 22),
(37, 36, 26),
(38, 36, 27),
(39, 37, 36),
(40, 38, 40),
(41, 38, 41),
(42, 38, 42),
(43, 39, 46);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_department`
--

CREATE TABLE IF NOT EXISTS `tcc_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `dean` varchar(50) DEFAULT NULL,
  `faxno` varchar(100) DEFAULT NULL,
  `email_1` varchar(75) NOT NULL,
  `email_2` varchar(75) NOT NULL,
  `url` varchar(50) NOT NULL,
  `about` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_department_28b1ef86` (`organisation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tcc_department`
--

INSERT INTO `tcc_department` (`id`, `organisation_id`, `name`, `address`, `phone`, `dean`, `faxno`, `email_1`, `email_2`, `url`, `about`) VALUES
(1, 1, 'Testing & Consultancy Cell', 'Gill Road, Gill Park, Ludhiana - 141006', '0161-2491193,5064509', 'Dr. Hardeep Singh Rai', '0161-5064742', 'tcc@gndec.ac.in', '', 'http//tcc.gndec.ac.in', 'Consultancy Services are being rendered by various Departments of the College to the industry, Sate Government Departments and Entrepreneurs and are extended in the form of expert advice in design, testing of materials & equipment, technical surveys, technical audit, caliberation of instruments, prepartion of technical feasibility reports etc.\\<br /\\>\\<br\\>\r\n\r\nThis consultancy cell of the college has given a new dimension to the development programmes of the College. Consultancy projects of over Rs. one crore are completed by the Consultancy cell during financial year 2009-10.<br><br>\r\n<a href="http://gndec.ac.in/~tcc/files/brochure.pdf">Brochure of TCC</a><br><br>\r\n<b>Courses</b><br><br>\r\nCurrent Session\r\n<ul>\r\n    \r\n</hr>\r\n    <li>AIEEE Crash Course View brochure March 26, 2012\r\n    <li>CAD course by Mechanical and Prod. Engineering Department April 30 - June 08, 2012\r\n    <li>Course on VHDL by Electronics and Comm. Engineering Department April 26 - June 06, 2012\r\n    <li>OOPs using C++ View brochure Register online Sept 12 - Nov 11, 2011\r\n</ul>\r\n\r\n   Previous Session<br>\r\n<ul>\r\n\r\n    <li>CAD course by Mechanical and Prod. Engineering Department June 13 - July 22, 2011\r\n    <li>Course on VHDL by Electronics and Comm. Engineering Department May 23 - July 01, 2011\r\n    <li>AIEEE Crash Course April 2011\r\n\r\n    <li>Course on Computer Aided Analysis and Design by Civil Engineering Department June 07 - June 18, 2010\r\n    <li>CAD course by Mechanical and Prod. Engineering Department June 07 - July 16, 2010\r\n    <li>Course by Electrical Engineering Department June 15 - July 25, 2010\r\n    <li>Course on Matlab by Electronics and Comm. Engineering Department June 07 - July 19, 2010\r\n    <li>Course on VHDL by Electronics and Comm. Engineering Department June 07 - July 19, 2010\r\n    <li>Course on PHP and MySQL by CSE and IT Department June 07 - July 19, 2010\r\n    <li>CET Crash Course April 2010\r\n</ul>'),
(2, 1, 'Civil Engineering', 'Gill Park, Gill Road, Ludhiana', '82347582', 'Dr. J.N. Jha', NULL, '', '', '', ''),
(5, 1, 'Mechanical Engineering', 'GNDEC,  Ludhiana', '', '', NULL, '', '', '', ''),
(6, 1, 'Computer Science Engineering & Information Technol', 'GNDEC,  Ludhiana', '', '', NULL, '', '', '', ''),
(7, 1, 'Electrical Engineering', 'GNDEC,  Ludhiana', '', '', NULL, '', '', '', ''),
(8, 1, 'Applied Sciences', 'GNDEC,  Ludhiana', '', '', NULL, '', '', '', ''),
(9, 1, 'MBA', 'GNDEC,  Ludhiana', '', '', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_distance`
--

CREATE TABLE IF NOT EXISTS `tcc_distance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` int(11) NOT NULL,
  `sandy` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tcc_distance`
--

INSERT INTO `tcc_distance` (`id`, `job`, `sandy`) VALUES
(1, 10, 92.506),
(2, 11, 143.917),
(3, 68, 29.762);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_distribution`
--

CREATE TABLE IF NOT EXISTS `tcc_distribution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tcc_distribution`
--

INSERT INTO `tcc_distribution` (`id`, `name`) VALUES
(1, 'ROUTINE'),
(2, 'INSTITUTIONAL'),
(3, 'INDIVIDUAL');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_editclientadd`
--

CREATE TABLE IF NOT EXISTS `tcc_editclientadd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_editclientadd_fbfc09f1` (`user_id`),
  KEY `tcc_editclientadd_4a4e8ffb` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_editjob`
--

CREATE TABLE IF NOT EXISTS `tcc_editjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `job_no` int(11) NOT NULL,
  `sample` varchar(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `site` varchar(600) NOT NULL,
  `type_of_work_id` int(11) NOT NULL,
  `report_type_id` int(11) NOT NULL,
  `pay` varchar(600) NOT NULL,
  `date` date NOT NULL,
  `check_number` varchar(15) NOT NULL,
  `check_dd_date` varchar(15) NOT NULL,
  `letter_no` int(11) DEFAULT NULL,
  `letter_date` date DEFAULT NULL,
  `tds` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_editjob_4a4e8ffb` (`client_id`),
  KEY `tcc_editjob_ca5d2cd8` (`type_of_work_id`),
  KEY `tcc_editjob_3d4f9c7e` (`report_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_govt`
--

CREATE TABLE IF NOT EXISTS `tcc_govt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(600) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tcc_govt`
--

INSERT INTO `tcc_govt` (`id`, `name`) VALUES
(1, 'GOVERNMENT'),
(2, 'SEMI-GOVERNMENT'),
(3, 'PRIVATE');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_job`
--

CREATE TABLE IF NOT EXISTS `tcc_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `job_no` int(11) NOT NULL,
  `sample` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `site` varchar(50) NOT NULL,
  `type_of_work_id` int(11) NOT NULL,
  `report_type_id` int(11) NOT NULL,
  `pay` varchar(600) NOT NULL,
  `check_number` varchar(15) NOT NULL,
  `check_dd_date` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `letter_no` varchar(15) NOT NULL,
  `letter_date` date DEFAULT NULL,
  `tds` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_job_4a4e8ffb` (`client_id`),
  KEY `tcc_job_ca5d2cd8` (`type_of_work_id`),
  KEY `tcc_job_3d4f9c7e` (`report_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `tcc_job`
--

INSERT INTO `tcc_job` (`id`, `client_id`, `job_no`, `sample`, `ip`, `site`, `type_of_work_id`, `report_type_id`, `pay`, `check_number`, `check_dd_date`, `date`, `letter_no`, `letter_date`, `tds`) VALUES
(2, 3, 1, 1, '192.168.15.1', 'Jalandhar', 1, 1, 'cash', '', '', '2013-03-31', '', '2013-03-05', 0),
(4, 5, 2, 1, '117.199.101.92', '127 Central TOwn', 2, 2, 'cash', '', '', '2013-03-31', '12', '2013-03-11', 0),
(5, 5, 2, 1, '117.199.101.92', '127 Central TOwn', 2, 2, 'cash', '', '', '2013-03-31', '12', '2013-03-11', 0),
(6, 5, 2, 1, '117.199.101.92', '127 Central TOwn', 2, 2, 'cash', '', '', '2013-03-31', '12', '2013-03-11', 3),
(7, 7, 2, 87, '202.164.53.117', '89789', 1, 1, 'cash', '', '', '2013-03-31', '89789', '2013-03-19', 1),
(8, 8, 2, 2, '117.199.101.92', '127 Central TOwn', 3, 1, 'cash', '', '', '2013-03-31', '12', '2013-03-11', 100),
(9, 9, 2, 1, '202.164.53.117', 'lucknow', 1, 1, 'cash', '', '', '2013-04-01', '1767', '2013-04-01', 0),
(10, 10, 2, 1, '202.164.53.117', 'Zira', 3, 2, 'cash', '', '', '2013-04-01', '12', '2012-02-11', 0),
(11, 11, 2, 1, '202.164.53.117', 'batala', 1, 2, 'cash', '', '', '2013-04-01', '12', '2012-12-28', 0),
(12, 12, 2, 1, '202.164.53.117', 'batala', 1, 1, 'cash', '', '', '2013-04-01', '12', '2013-01-28', 0),
(13, 13, 2, 1, '117.220.173.202', 'ludhiana', 1, 1, 'cash', '', '', '2013-04-01', '', '2013-04-03', 0),
(14, 13, 2, 1, '117.220.173.202', 'sasfas', 1, 1, 'cash', '', '', '2013-04-01', '', NULL, 0),
(15, 14, 2, 1, '117.220.173.202', 'ludhiana', 1, 1, 'cash', '', '', '2013-04-01', '', NULL, 0),
(16, 14, 2, 1, '117.220.173.202', 'ludhiana', 1, 1, 'cash', '', '', '2013-04-01', '', NULL, 0),
(17, 14, 2, 2, '117.220.173.202', '5-42', 1, 1, 'cash', '', '', '2013-04-01', '', NULL, 0),
(18, 18, 2, 1, '202.164.53.117', 'ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '12', '2013-06-18', 10),
(19, 18, 2, 1, '202.164.53.117', 'ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '', NULL, 0),
(20, 18, 2, 1, '202.164.53.117', 'weebly.com', 1, 1, 'cash', '', '', '2013-06-18', '21', '2013-06-18', 5),
(21, 19, 2, 1, '115.184.198.96', 'Ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '123', '2013-06-18', 0),
(22, 19, 2, 2, '202.164.53.117', 'weebly.com', 3, 1, 'cash', '', '', '2013-06-18', '22', '2013-06-14', 1),
(23, 20, 2, 2, '202.164.53.117', 'ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '3', '2013-06-19', 12),
(24, 20, 2, 1, '202.164.53.117', 'weebly.com', 1, 1, 'cash', '', '', '2013-06-18', '23', '2013-06-15', 1),
(25, 20, 2, 1, '202.164.53.117', 'weebly.com', 1, 1, 'cash', '', '', '2013-06-18', '23', '2013-06-15', 1),
(26, 20, 2, 1, '115.184.198.96', 'khanna', 1, 1, 'cash', '', '', '2013-06-18', '124', '2013-06-18', 1),
(27, 20, 2, 1, '202.164.53.117', 'ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '', NULL, 0),
(28, 20, 2, 1, '202.164.53.117', 'weebly.com', 1, 1, 'cash', '', '', '2013-06-18', '24', '2013-06-16', 1),
(29, 20, 2, 4, '202.164.53.117', 'Pthankot', 1, 1, 'cash', '', '', '2013-06-18', '23', '2013-06-12', 12),
(30, 20, 2, 1, '115.184.198.96', 'ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '125', '2013-06-18', 0),
(31, 20, 2, 1, '202.164.53.117', 'weebly.com', 1, 2, 'cash', '', '', '2013-06-18', '25', '2013-06-17', 0),
(32, 20, 2, 3, '202.164.53.117', 'Khanna', 2, 1, 'cash', '', '', '2013-06-18', '23', '2013-06-17', 12),
(33, 20, 2, 1, '115.184.198.96', 'Jalandhar', 1, 1, 'cash', '', '', '2013-06-18', '127', '2013-06-18', 0),
(34, 20, 2, 1, '202.164.53.117', 'weebly.com', 1, 2, 'cash', '', '', '2013-06-18', '25', '2013-06-17', 5),
(35, 21, 2, 1, '202.164.53.117', 'ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '', NULL, 0),
(36, 21, 2, 1, '202.164.53.117', 'ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '', NULL, 0),
(37, 21, 2, 1, '202.164.53.117', 'ludhiana', 1, 2, 'cash', '', '', '2013-06-18', '', NULL, 0),
(38, 23, 2, 3, '202.164.53.117', 'ludhiana', 1, 1, 'cash', '', '', '2013-06-18', '34', '2013-06-18', 3),
(39, 24, 2, 1, '202.164.53.117', 'jalhandhar', 1, 1, 'cash', '', '', '2013-06-20', '12', '2013-03-19', -1),
(40, 25, 2, 1, '202.164.53.117', 'batala', 1, 1, 'cash', '', '', '2013-06-20', '1223', '2013-03-20', -2),
(41, 26, 2, 1, '202.164.53.117', 'batala', 2, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -2),
(42, 26, 2, 1, '202.164.53.117', 'hydrabad', 1, 1, 'cash', '', '', '2013-06-20', '89789', '2013-12-12', -1),
(43, 26, 2, 1, '202.164.53.117', 'srinagar', 1, 1, 'cash', '', '', '2013-06-20', '2', '2013-01-10', -1),
(44, 26, 2, 1, '202.164.53.117', 'pakhowal', 1, 1, 'cash', '', '', '2013-06-20', '1223', '2013-03-19', 0),
(45, 26, 2, 1, '202.164.53.117', 'batala', 1, 1, 'cash', '', '', '2013-06-20', '89789', '2013-12-12', -1),
(46, 26, 2, 1, '202.164.53.117', 'batala', 1, 1, 'cash', '', '', '2013-06-20', '11', '2013-01-10', -1),
(47, 27, 2, 1, '202.164.53.117', 'hydrabad', 1, 1, 'cash', '', '', '2013-06-20', '2', '2013-01-10', -1),
(48, 27, 2, 1, '202.164.53.117', 'gndec', 1, 1, 'cash', '', '', '2013-06-20', '11', '2013-12-12', -3),
(49, 27, 2, 1, '202.164.53.117', 'batala', 3, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -2),
(50, 27, 2, 1, '202.164.53.117', 'batala', 1, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -2),
(51, 27, 2, 1, '202.164.53.117', 'batala', 2, 1, 'cash', '', '', '2013-06-20', '12', '2013-03-19', -2),
(52, 27, 2, 1, '202.164.53.117', 'batala', 1, 1, 'cash', '', '', '2013-06-20', '12', '2013-03-19', -2),
(53, 28, 2, 1, '202.164.53.117', 'srinagar', 1, 1, 'cash', '', '', '2013-06-20', '1223', '2013-01-10', -2),
(54, 28, 2, 1, '202.164.53.117', 'batala', 3, 1, 'cash', '', '', '2013-06-20', '11', '2013-01-10', -1),
(55, 28, 2, 1, '202.164.53.117', 'batala', 2, 1, 'online', '', '', '2013-06-20', '12', '2013-01-10', -2),
(56, 28, 2, 1, '202.164.53.117', 'batala', 1, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -1),
(57, 28, 2, 1, '202.164.53.117', 'gndec', 1, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -1),
(58, 28, 2, 1, '202.164.53.117', 'batala', 3, 1, 'cash', '', '', '2013-06-20', '12', '2013-12-12', -1),
(59, 29, 2, 1, '202.164.53.117', 'batala', 2, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -2),
(60, 29, 2, 1, '202.164.53.117', 'pakhowal', 1, 1, 'cash', '', '', '2013-06-20', 'wqw', '2013-03-20', -3),
(61, 29, 2, 1, '202.164.53.117', 'hydrabad', 2, 1, 'online', '', '', '2013-06-20', '89789', '2013-12-12', -2),
(62, 29, 2, 1, '202.164.53.117', 'batala', 2, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -2),
(63, 30, 2, 1, '202.164.53.117', 'gndec', 3, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -1),
(64, 30, 2, 1, '202.164.53.117', 'batala', 3, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -3),
(65, 30, 2, 1, '202.164.53.117', 'jalhandhar', 3, 1, 'online', '', '', '2013-06-20', '2', '2013-12-12', -1),
(66, 30, 2, 1, '202.164.53.117', 'batala', 3, 1, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -1),
(67, 30, 2, 676, '202.164.53.117', '76786', 1, 2, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -2),
(68, 30, 2, 1, '202.164.53.117', 'pakhowal', 1, 2, 'cash', '', '', '2013-06-20', '11', '2013-03-19', -2);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_lab`
--

CREATE TABLE IF NOT EXISTS `tcc_lab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tcc_lab`
--

INSERT INTO `tcc_lab` (`id`, `name`, `tags`, `department_id`) VALUES
(1, 'ENVIRONMENT', 'environment', 2),
(2, 'SOM', 'som', 2),
(3, 'SOIL', 'soil', 2),
(4, 'WATER/WASTE WATER', 'water, waste water', 0),
(5, 'CHEMICAL', 'chemical', 0),
(6, 'IT & Computer', 'IT & Computer', 6),
(7, 'MBA ', 'mba', 9),
(8, 'Survey', 'survey', 2),
(9, 'Structural Design', 'Structural Design', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_material`
--

CREATE TABLE IF NOT EXISTS `tcc_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) NOT NULL,
  `distribution_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `report_id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_material_4a1410c6` (`lab_id`),
  KEY `tcc_material_29fa1030` (`report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `tcc_material`
--

INSERT INTO `tcc_material` (`id`, `lab_id`, `distribution_id`, `name`, `tags`, `report_id`, `image`) VALUES
(1, 2, 1, 'Bricks', 'Bricks', 1, ''),
(2, 3, 1, 'Interlock Tiles', 'Interlock Tiles', 1, 'logo/fine.jpeg'),
(3, 2, 1, 'Concrete Paver', 'Concrete Paver', 1, ''),
(4, 2, 1, 'Cement', 'cement', 1, ''),
(5, 3, 2, 'Soil for BC', 'soil for bc', 2, ''),
(6, 3, 2, 'OHSR', 'ohsr', 2, ''),
(7, 3, 1, 'Coarse Aggregate', 'course aggregate', 1, 'logo/CAggregate.JPG'),
(8, 2, 1, 'Cubes', 'cube', 1, ''),
(9, 2, 1, 'Steel', 'steel', 1, ''),
(10, 2, 1, 'Mix Design', 'mix deign', 1, ''),
(11, 2, 2, 'Wood', 'wood', 1, ''),
(12, 5, 2, 'Chemical testing', 'chemical test', 1, ''),
(13, 1, 2, 'Water/Waste Water', 'water', 1, ''),
(14, 6, 2, '2 week training (IT, CSE)', '2 week training (IT, CSE)', 1, ''),
(15, 6, 2, '6 week training (IT, CSE)', '6 week training (IT, CSE)', 1, ''),
(16, 6, 2, '6 months training (IT, CSE)', '6 months training (IT, CSE)', 1, ''),
(17, 8, 2, 'Survey', 'survey material', 2, ''),
(18, 9, 3, 'Structural Design (OHSR)', 'Structural Design (OHSR)', 1, 'logo/Sunset-Ship1.jpg'),
(19, 9, 3, 'Structural Design(Building)', 'Structural Design(Building)', 1, 'logo/ATT33506.jpg'),
(20, 9, 3, 'Structural Design (Treatment Plant)', 'Structural Design (Treatment Plant)', 1, 'logo/failure.jpg'),
(21, 2, 1, 'MS Steel Plate', '', 1, 'logo/index.jpeg'),
(22, 2, 1, 'IS 1786, Fe 415', '', 1, 'logo/index_1.jpeg'),
(23, 2, 1, 'IS 1786, Fe 500', '', 1, 'logo/index_2.jpeg'),
(24, 2, 1, 'IS 2062:2006', '', 1, 'logo/images_6.jpg'),
(25, 2, 1, 'IS 432 MS Grade 1 a 20mm', '', 1, 'logo/logo_1.png'),
(26, 3, 1, 'Soil Building', '', 1, 'logo/logo_2.png'),
(27, 4, 1, 'Water/Waste', '', 1, 'logo/logo_3.png'),
(28, 5, 1, 'Admixture', '', 1, 'logo/logo_4.png'),
(29, 5, 1, 'Cement PPC', '', 1, 'logo/logo_5.png'),
(30, 5, 1, 'OPC 33 Grade', '', 1, 'logo/1.png'),
(31, 5, 1, 'OPC 43 Garde', '', 1, 'logo/1_1.png'),
(32, 5, 1, 'OPC 53 Grade', '', 1, 'logo/1_2.png'),
(33, 8, 2, 'Coarse Aggregate ( Soil)', '', 1, 'logo/1_3.png'),
(34, 8, 1, 'Fine Aggregate (Soil)', '', 1, 'logo/1_4.png'),
(35, 1, 1, 'PC', '', 1, 'logo/1_5.png'),
(36, 2, 1, 'Rebound Hammering', '', 2, 'logo/1_6.png'),
(37, 4, 1, 'Ground Water', '', 1, 'logo/1_7.png');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_organisation`
--

CREATE TABLE IF NOT EXISTS `tcc_organisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `director` varchar(50) NOT NULL,
  `status` varchar(5000) NOT NULL,
  `logo_upload` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tcc_organisation`
--

INSERT INTO `tcc_organisation` (`id`, `name`, `address`, `phone`, `director`, `status`, `logo_upload`) VALUES
(1, 'Guru Nanak Dev Engineering College', 'Gill Park, Gill Road, Ludhiana - 141006 ', '0161-2491193, 506450', 'Dr. M.S. Saini', 'Punjab Govt Aided Status, NBA Accredited ISO-9001-2008 Certified', 'logo/gndeclogo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_payment`
--

CREATE TABLE IF NOT EXISTS `tcc_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tcc_payment`
--

INSERT INTO `tcc_payment` (`id`, `name`) VALUES
(1, 'CASH'),
(2, 'CHEQUE'),
(3, 'ONLINE'),
(4, 'DD');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_profromatax`
--

CREATE TABLE IF NOT EXISTS `tcc_profromatax` (
  `pro_no` int(11) NOT NULL,
  `service_tax` int(11) NOT NULL,
  `higher_education_tax` int(11) NOT NULL,
  `education_tax` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`pro_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_report`
--

CREATE TABLE IF NOT EXISTS `tcc_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tcc_report`
--

INSERT INTO `tcc_report` (`id`, `name`) VALUES
(1, 'LAB'),
(2, 'FIELD');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_staff`
--

CREATE TABLE IF NOT EXISTS `tcc_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `code` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `daily_income` int(11) NOT NULL,
  `position` varchar(15) NOT NULL,
  `lab_id` int(11) NOT NULL,
  `email` varchar(75) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_staff_2ae7390` (`department_id`),
  KEY `tcc_staff_4a1410c6` (`lab_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tcc_staff`
--

INSERT INTO `tcc_staff` (`id`, `department_id`, `code`, `name`, `daily_income`, `position`, `lab_id`, `email`) VALUES
(1, 1, 'A', 'DR. J.N. Jha', 160, 'Prof.', 3, ''),
(2, 1, 'B', 'Prof. Kulbir Singh Gill', 120, 'A.P', 3, ''),
(3, 1, 'C', 'Dr. Jagbir Singh', 120, 'A.P', 2, ''),
(4, 1, 'D', 'Prof. Kanwaljit Singh Bedi', 120, 'A.P', 2, ''),
(5, 1, 'E', 'Dr. R.P.Singh', 100, 'A.P', 5, ''),
(6, 1, 'F', 'Prof.Puneet Pal  Singh', 100, 'AP', 1, ''),
(7, 2, 'G', 'Dr. Hardeep Singh Rai', 180, 'Prof.', 9, 'hsrai@gmail.com'),
(8, 2, '1', 'Sh. Amarjit Singh', 100, 'Mech.', 2, ''),
(9, 2, '2', 'Sh. Avtar Singh', 60, 'L.A', 2, ''),
(10, 2, '3', 'Nandan Singh', 60, 'L.A', 3, ''),
(11, 2, 'E', 'Dr. Harpal Singh', 120, 'Prof.', 9, ''),
(12, 2, 'G', 'Dr. HarvinderSingh', 120, 'Ass. Prof.', 9, ''),
(13, 2, 'H', 'Prof Prashant Garg', 120, 'Ass. Prof.', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_suspence`
--

CREATE TABLE IF NOT EXISTS `tcc_suspence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `sus_id` int(11) DEFAULT NULL,
  `work_charge` int(11) DEFAULT NULL,
  `labour_charge` int(11) DEFAULT NULL,
  `boring_charge_external` int(11) DEFAULT NULL,
  `boring_charge_internal` int(11) DEFAULT NULL,
  `car_taxi_charge` int(11) DEFAULT NULL,
  `lab_testing_staff` varchar(90) NOT NULL,
  `field_testing_staff` varchar(90) NOT NULL,
  `test_date` date DEFAULT NULL,
  `suspence_bill_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_suspence_751f44ae` (`job_id`),
  KEY `tcc_suspence_c13e1de8` (`sus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `tcc_suspence`
--

INSERT INTO `tcc_suspence` (`id`, `job_id`, `rate`, `sus_id`, `work_charge`, `labour_charge`, `boring_charge_external`, `boring_charge_internal`, `car_taxi_charge`, `lab_testing_staff`, `field_testing_staff`, `test_date`, `suspence_bill_no`) VALUES
(1, 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(2, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(3, 6, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(4, 8, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(5, 10, 1850, 4, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(6, 11, 2878, 5, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(7, 17, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(8, 29, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(9, 38, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(10, 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(11, 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(12, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(13, 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(14, 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(15, 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(16, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(17, 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(18, 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(19, 48, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(20, 40, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(21, 49, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(22, 39, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(23, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(24, 52, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(25, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(26, 50, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(27, 47, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(28, 47, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(29, 47, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(30, 58, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(31, 57, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(32, 57, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(33, 61, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(34, 61, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(35, 61, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(36, 58, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL),
(37, 61, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_suspenceeditjob`
--

CREATE TABLE IF NOT EXISTS `tcc_suspenceeditjob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `other` varchar(600) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_suspenceeditjob_751f44ae` (`job_id`),
  KEY `tcc_suspenceeditjob_b49f3317` (`field_id`),
  KEY `tcc_suspenceeditjob_a88de8dc` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_suspencejob`
--

CREATE TABLE IF NOT EXISTS `tcc_suspencejob` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `other` varchar(600) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_suspencejob_751f44ae` (`job_id`),
  KEY `tcc_suspencejob_b49f3317` (`field_id`),
  KEY `tcc_suspencejob_a88de8dc` (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tcc_suspencejob`
--

INSERT INTO `tcc_suspencejob` (`id`, `job_id`, `field_id`, `test_id`, `other`) VALUES
(1, 4, 6, 6, ''),
(2, 5, 6, 6, '2'),
(3, 6, 6, 6, '2'),
(4, 10, 6, 6, ''),
(5, 11, 6, 5, ''),
(6, 31, 5, 13, ''),
(7, 34, 5, 13, ''),
(8, 67, 5, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_tada`
--

CREATE TABLE IF NOT EXISTS `tcc_tada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `departure_time_up` time NOT NULL,
  `arrival_time_up` time NOT NULL,
  `departure_time_down` time NOT NULL,
  `arrival_time_down` time NOT NULL,
  `tada_amount` int(11) DEFAULT NULL,
  `reach_site` varchar(60) NOT NULL,
  `test_date` varchar(15) NOT NULL,
  `end_date` varchar(15) NOT NULL,
  `testing_staff_code` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_tada_751f44ae` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_test`
--

CREATE TABLE IF NOT EXISTS `tcc_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit` varchar(15) NOT NULL,
  `cost` int(11) DEFAULT NULL,
  `tags` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_test_54645bd` (`material_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `tcc_test`
--

INSERT INTO `tcc_test` (`id`, `material_id`, `name`, `quantity`, `unit`, `cost`, `tags`) VALUES
(1, 2, 'Sieve Analysis  ', 3, 'kg', 800, 'fine aggregates sieve'),
(2, 2, 'SILT CONTENT', 3, 'kg', 800, 'silt content'),
(3, 2, 'FINENESS MODULUS', 3, 'kg', 800, 'fineness modulus'),
(4, 5, 'depth 0 to10', 6000, 'meter', 0, 'ohsr depth 0 to 10'),
(5, 6, ' 25000 Litre Capacity', 1, 'litre', 6000, '25000litre'),
(6, 6, '50000 Litres Capacity', 1, 'litre', 6000, '75000'),
(7, 6, '75000 Litre Capacity', 1, 'litre', 6000, '75000litre'),
(8, 6, '1.0 Lac Litres Capacity ', 1, 'litre', 8200, '1laclitre'),
(9, 6, '1.5 Lac Litres Capacity ', 1, 'litre', 8200, '1.5laclitre'),
(10, 6, '2.0 Lac Litres Capacity ', 1, 'litre', 8200, '2laclitre'),
(11, 6, '2.5 Lac Litres Capacity ', 1, 'litre', 8200, '2.5laclitre'),
(12, 6, '5.0 Lac Litres Capacity ', 1, 'litre', 10600, '5laclitre'),
(13, 5, 'depth 10 to 20 m', 6000, 'meter', 900, 'ohsr depth 10 to 20'),
(14, 5, 'depth 20 to 30 m', 6000, 'meter', 1200, 'ohsr depth 20 to 30'),
(15, 5, 'depth more than 30 m', 6000, 'meter', 1500, 'ohsr depth more than 30'),
(16, 1, 'Comp. Strength  ', 10, 'Bricks', 1200, 'comp. strength'),
(17, 1, 'Water Absorption  ', 10, 'Bricks', 1200, 'water absorption'),
(18, 1, 'Effloroscence  ', 10, 'Bricks', 1200, 'effloroscence'),
(19, 3, 'Comp. Strength  ', 1, 'C.paver', 300, 'comp. strength for pavers'),
(20, 3, 'Flexural Strength  ', 1, 'C.paver', 300, 'flexural strength for pavers'),
(21, 3, 'Water Absorption  ', 1, 'C.paver', 300, 'water absorption for pavers'),
(22, 4, 'Initial & Final Setting time Comp. Strength (at 7 day’s  curing) , at 28 day’s curing, Soundness, Fineness, Consistency  ', 15, 'kg', 2500, 'cement tests'),
(23, 7, 'Sieve Analysis  ', 10, 'kg', 800, 'course sieve analysis'),
(24, 7, 'Abrasion Value  ', 10, 'kg', 800, 'course aggregate abrasion'),
(25, 7, 'Crushing Value/Strength', 10, 'kg', 800, 'course aggregate crushing'),
(26, 7, 'Flakiness Index  ', 10, 'kg', 800, 'course aggregate flakiness'),
(27, 7, 'Impact Value  ', 5, 'kg', 800, 'course aggregate impact'),
(28, 7, 'Specific Gravity  ', 5, 'kg', 800, 'course aggregate specific gravity'),
(29, 7, 'Soundness Tests  ', 5, 'kg', 800, 'coarse aggregate soundness test'),
(30, 7, 'C.B.R. Test  (Soaked)  ', 10, 'kg', 1800, 'coarse aggregate CBR '),
(31, 7, 'C.B.R. Test  (Unsoaked)  ', 10, 'kg', 1800, 'coarse aggregate unsoaked'),
(32, 2, 'Moisture  Content  ', 3, 'kg', 800, 'fines aggregate moisture content'),
(33, 2, 'Liquid Limit &  Plastic Limit  ', 3, 'kg', 800, 'fine aggregate liquid limit'),
(34, 2, 'Compaction Test  (Dry Bulk Density)  ', 5, 'kg', 1500, 'fine aggregate compaction'),
(35, 2, 'Specific Gravity  ', 5, 'kg', 800, 'fine aggregate specific gravity'),
(36, 8, 'Comp. Strength  ', 3, 'Cubes', 500, 'cubes comp. strength'),
(37, 9, 'a) Ultimate Tensile Strength, b) Percentage Elongation, c) Bend test,  d) 0.2 Proof Stress  below 25 mm dia  ', 2, 'feet', 1500, 'steel below 2500 dia'),
(38, 9, 'a) Ultimate Tensile Strength, b) Percentage Elongation, c) Bend test,  d) 0.2 Proof Stress 25 mm & above   ', 2, 'feet', 2500, 'steel above 2500 dia'),
(39, 9, 'Barbed Wire ', 2, 'feet', 2500, 'steel barbed wire'),
(40, 9, 'Hing Tension', 2, 'feet', 2500, 'steel hing tension'),
(41, 9, 'Structural', 2, 'feet', 2500, 'steel structural'),
(42, 9, 'Angle', 2, 'feet', 2500, 'steel angle'),
(43, 9, 'Flats ', 2, 'feet', 2500, 'steel flat'),
(44, 9, 'Tees Channel ', 2, 'feet', 2500, 'steel tees channel'),
(45, 10, 'Mix Design upto M-30', 1, 'Bag', 8000, 'mix design M-30'),
(46, 10, 'Mix Design M-35 & M-40', 2, 'Bag', 10000, 'mix design M-35, M-40'),
(47, 10, 'Mix Design with fly ash', 2, 'Bag', 15000, 'mix design with fly ash'),
(48, 17, 'Plain area ', 1, 'acre', 1000, 'survey for plain area'),
(49, 17, 'Semi-Hilly area ', 1, 'acre', 1500, 'survey semi-hilly area'),
(50, 17, 'Hilly area ', 1, 'acre', 2000, 'survey hilly area'),
(51, 16, '6 months training ', 6, 'months', 6000, '6 months training (IT, CSE)'),
(52, 15, '6 week training ', 6, 'week', 2000, '6 week training (IT, CSE)');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_testtotal`
--

CREATE TABLE IF NOT EXISTS `tcc_testtotal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `unit_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_testtotal_751f44ae` (`job_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `tcc_testtotal`
--

INSERT INTO `tcc_testtotal` (`id`, `job_id`, `unit_price`) VALUES
(1, 2, 8000),
(2, 4, 6000),
(3, 5, 6000),
(4, 6, 6000),
(5, 6, 0),
(6, 6, 800),
(7, 8, 23000),
(8, 10, 6000),
(9, 11, 6000),
(10, 10, 2400),
(11, 10, 2000),
(12, 9, 0),
(13, 14, 0),
(14, 11, 500),
(15, 17, 3000),
(16, 17, 6800),
(17, 17, 0),
(18, 17, 0),
(19, 17, 4800),
(20, 17, 0),
(21, 17, 1000),
(22, 17, 0),
(23, 17, 0),
(24, 17, 3200),
(25, 17, 0),
(26, 17, 0),
(27, 17, 15000),
(28, 29, 3600),
(29, 17, 36000),
(30, 17, 5000),
(31, 17, 0),
(32, 17, 0),
(33, 38, 1234),
(34, 39, -1),
(35, 39, 2400),
(36, 40, 1600),
(37, 39, 300),
(38, 39, 2500),
(39, 39, 1600),
(40, 40, 500),
(41, 39, 7500),
(42, 39, 10000),
(43, 48, -2),
(44, 40, 0),
(45, 49, 0),
(46, 39, 0),
(47, 50, 0),
(48, 52, 0),
(49, 50, 0),
(50, 50, 0),
(51, 47, 0),
(52, 47, 0),
(53, 47, 0),
(54, 58, 0),
(55, 57, 0),
(56, 57, 0),
(57, 61, 0),
(58, 61, 0),
(59, 61, 0),
(60, 58, 0),
(61, 61, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_testtotalperf`
--

CREATE TABLE IF NOT EXISTS `tcc_testtotalperf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_no` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `mat` int(11) DEFAULT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_testtotalperf_751f44ae` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_transport`
--

CREATE TABLE IF NOT EXISTS `tcc_transport` (
  `vehicle_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_no` int(11) NOT NULL,
  `bill_no` int(11) DEFAULT NULL,
  `kilometer` varchar(150) NOT NULL,
  `amounts` varchar(180) NOT NULL,
  `total` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `test_date` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_transport_4bffff7` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_transportation`
--

CREATE TABLE IF NOT EXISTS `tcc_transportation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleno` varchar(150) NOT NULL,
  `rate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tcc_userprofile`
--

CREATE TABLE IF NOT EXISTS `tcc_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `state` varchar(30) NOT NULL,
  `website` varchar(200) DEFAULT NULL,
  `email_address` varchar(75) DEFAULT NULL,
  `contact_no` varchar(25) NOT NULL,
  `type_of_organisation` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_userprofile_fbfc09f1` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tcc_userprofile`
--

INSERT INTO `tcc_userprofile` (`id`, `user_id`, `first_name`, `middle_name`, `last_name`, `address`, `company`, `city`, `pin_code`, `state`, `website`, `email_address`, `contact_no`, `type_of_organisation`) VALUES
(3, 2, 'Bhagwant', 'Singh', '', 'Gndec', 'TCC.Gndec', 'Ludhiana', 161007, 'Punjab', '', '', '90837249287', 'GOVERNMENT'),
(4, 4, 'Vigas', '', 'Deep', '127 Central Town, Village Daad.', 'CSIOM', 'Ludhiana', 142022, 'Punjab', 'http://vigasdeep.com/', 'vigasdeep@gmail.com', '9815400807', 'PRIVATE'),
(5, 4, 'Vigas', '', 'Deep', '127 Central Town, Village Daad.', 'CSIOM', 'Ludhiana', 142022, 'Punjab', 'http://vigasdeep.com/', NULL, '9815400807', 'PRIVATE'),
(6, 4, 'Vigas', '', 'Deep', '127 Central Town, Village Daad.', 'CSIOM', 'Ludhiana', 142022, 'Punjab', 'http://vigasdeep.com/', 'vigasdeep@gmail.com', '9815400807', 'PRIVATE'),
(7, 4, 'Vigas', '', 'Deep', '127 Central Town, Village Daad.', 'CSIOM', 'Ludhiana', 142022, 'Punjab', 'http://vigasdeep.com/', 'vigasdeep@gmail.com', '9815400807', 'PRIVATE'),
(8, 5, 'Jagdeep', '', '', 'Address', '', 'Test', 314234, 'Punjab', 'http://gndec.ac.in/', '', '232523', 'GOVERNMENT');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `registration_registrationprofile`
--
ALTER TABLE `registration_registrationprofile`
  ADD CONSTRAINT `user_id_refs_id_cecd7f3c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `report_admixture`
--
ALTER TABLE `report_admixture`
  ADD CONSTRAINT `Report_id_id_refs_id_178d7e6d` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_brick`
--
ALTER TABLE `report_brick`
  ADD CONSTRAINT `Report_id_id_refs_id_81070aeb` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cement_opc_33`
--
ALTER TABLE `report_cement_opc_33`
  ADD CONSTRAINT `Report_id_id_refs_id_6e703514` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cement_opc_43`
--
ALTER TABLE `report_cement_opc_43`
  ADD CONSTRAINT `Report_id_id_refs_id_3bb63219` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cement_opc_53`
--
ALTER TABLE `report_cement_opc_53`
  ADD CONSTRAINT `Report_id_id_refs_id_f58fbfe2` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cement_ppc`
--
ALTER TABLE `report_cement_ppc`
  ADD CONSTRAINT `Report_id_id_refs_id_991514a5` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_chem_analysis`
--
ALTER TABLE `report_chem_analysis`
  ADD CONSTRAINT `Report_id_id_refs_id_e61a4e92` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_concrete_paver`
--
ALTER TABLE `report_concrete_paver`
  ADD CONSTRAINT `Report_id_id_refs_id_7f8b59f7` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_cube`
--
ALTER TABLE `report_cube`
  ADD CONSTRAINT `Report_id_id_refs_id_484f3450` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_ground_water`
--
ALTER TABLE `report_ground_water`
  ADD CONSTRAINT `Report_id_id_refs_id_9e97ac72` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_interlock_tiles`
--
ALTER TABLE `report_interlock_tiles`
  ADD CONSTRAINT `Report_id_id_refs_id_50c3ff35` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_is_432_ms_grade_1_a_20mm_dia`
--
ALTER TABLE `report_is_432_ms_grade_1_a_20mm_dia`
  ADD CONSTRAINT `Report_id_id_refs_id_7f0ea38` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_is_2062_2006`
--
ALTER TABLE `report_is_2062_2006`
  ADD CONSTRAINT `Report_id_id_refs_id_c2d48c49` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_ms_1786_fe_415`
--
ALTER TABLE `report_ms_1786_fe_415`
  ADD CONSTRAINT `Report_id_id_refs_id_129c2d8d` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_ms_1786_fe_500`
--
ALTER TABLE `report_ms_1786_fe_500`
  ADD CONSTRAINT `Report_id_id_refs_id_55eca296` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_ms_steel_plate`
--
ALTER TABLE `report_ms_steel_plate`
  ADD CONSTRAINT `Report_id_id_refs_id_14e2fc64` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_pc`
--
ALTER TABLE `report_pc`
  ADD CONSTRAINT `Report_id_id_refs_id_9e201356` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_rebound_hammer_testing`
--
ALTER TABLE `report_rebound_hammer_testing`
  ADD CONSTRAINT `Report_id_id_refs_id_4b8f0d56` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_report`
--
ALTER TABLE `report_report`
  ADD CONSTRAINT `job_id_refs_id_68468e2e` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`);

--
-- Constraints for table `report_soil_building`
--
ALTER TABLE `report_soil_building`
  ADD CONSTRAINT `Report_id_id_refs_id_667e7c72` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_soil_ohsr`
--
ALTER TABLE `report_soil_ohsr`
  ADD CONSTRAINT `Report_id_id_refs_id_5e62fe18` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_steel`
--
ALTER TABLE `report_steel`
  ADD CONSTRAINT `Report_id_id_refs_id_7963eccf` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `report_water`
--
ALTER TABLE `report_water`
  ADD CONSTRAINT `Report_id_id_refs_id_36b26aa9` FOREIGN KEY (`Report_id_id`) REFERENCES `report_report` (`id`);

--
-- Constraints for table `tcc_amount`
--
ALTER TABLE `tcc_amount`
  ADD CONSTRAINT `job_id_refs_id_6018e7df` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`);

--
-- Constraints for table `tcc_clientadd`
--
ALTER TABLE `tcc_clientadd`
  ADD CONSTRAINT `client_id_refs_id_7f3a75eb` FOREIGN KEY (`client_id`) REFERENCES `tcc_userprofile` (`id`),
  ADD CONSTRAINT `user_id_refs_id_8335da6c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tcc_clienteditjob`
--
ALTER TABLE `tcc_clienteditjob`
  ADD CONSTRAINT `job_id_refs_id_eea896a0` FOREIGN KEY (`job_id`) REFERENCES `tcc_editjob` (`id`),
  ADD CONSTRAINT `material_id_refs_id_cac842a5` FOREIGN KEY (`material_id`) REFERENCES `tcc_material` (`id`);

--
-- Constraints for table `tcc_clienteditjob_test`
--
ALTER TABLE `tcc_clienteditjob_test`
  ADD CONSTRAINT `clienteditjob_id_refs_id_8826c265` FOREIGN KEY (`clienteditjob_id`) REFERENCES `tcc_clienteditjob` (`id`),
  ADD CONSTRAINT `test_id_refs_id_92a6bad2` FOREIGN KEY (`test_id`) REFERENCES `tcc_test` (`id`);

--
-- Constraints for table `tcc_clientjob`
--
ALTER TABLE `tcc_clientjob`
  ADD CONSTRAINT `job_id_refs_id_cf851ff0` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`),
  ADD CONSTRAINT `material_id_refs_id_d47d0f5b` FOREIGN KEY (`material_id`) REFERENCES `tcc_material` (`id`);

--
-- Constraints for table `tcc_clientjob_test`
--
ALTER TABLE `tcc_clientjob_test`
  ADD CONSTRAINT `clientjob_id_refs_id_8691d49b` FOREIGN KEY (`clientjob_id`) REFERENCES `tcc_clientjob` (`id`),
  ADD CONSTRAINT `test_id_refs_id_fbfdbbd2` FOREIGN KEY (`test_id`) REFERENCES `tcc_test` (`id`);

--
-- Constraints for table `tcc_editclientadd`
--
ALTER TABLE `tcc_editclientadd`
  ADD CONSTRAINT `client_id_refs_id_fd489edd` FOREIGN KEY (`client_id`) REFERENCES `tcc_userprofile` (`id`),
  ADD CONSTRAINT `user_id_refs_id_277f0ac4` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tcc_editjob`
--
ALTER TABLE `tcc_editjob`
  ADD CONSTRAINT `client_id_refs_id_475d7782` FOREIGN KEY (`client_id`) REFERENCES `tcc_editclientadd` (`id`),
  ADD CONSTRAINT `report_type_id_refs_id_715128a7` FOREIGN KEY (`report_type_id`) REFERENCES `tcc_report` (`id`),
  ADD CONSTRAINT `type_of_work_id_refs_id_3ff866ab` FOREIGN KEY (`type_of_work_id`) REFERENCES `tcc_govt` (`id`);

--
-- Constraints for table `tcc_job`
--
ALTER TABLE `tcc_job`
  ADD CONSTRAINT `client_id_refs_id_fd23af76` FOREIGN KEY (`client_id`) REFERENCES `tcc_clientadd` (`id`),
  ADD CONSTRAINT `report_type_id_refs_id_bd662a09` FOREIGN KEY (`report_type_id`) REFERENCES `tcc_report` (`id`),
  ADD CONSTRAINT `type_of_work_id_refs_id_4da5e95b` FOREIGN KEY (`type_of_work_id`) REFERENCES `tcc_govt` (`id`);

--
-- Constraints for table `tcc_suspence`
--
ALTER TABLE `tcc_suspence`
  ADD CONSTRAINT `job_id_refs_id_25fd0307` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`),
  ADD CONSTRAINT `sus_id_refs_id_4acb203f` FOREIGN KEY (`sus_id`) REFERENCES `tcc_suspencejob` (`id`);

--
-- Constraints for table `tcc_suspenceeditjob`
--
ALTER TABLE `tcc_suspenceeditjob`
  ADD CONSTRAINT `field_id_refs_id_8efd9e88` FOREIGN KEY (`field_id`) REFERENCES `tcc_material` (`id`),
  ADD CONSTRAINT `job_id_refs_id_7e90c6bd` FOREIGN KEY (`job_id`) REFERENCES `tcc_editjob` (`id`),
  ADD CONSTRAINT `test_id_refs_id_84316b4f` FOREIGN KEY (`test_id`) REFERENCES `tcc_test` (`id`);

--
-- Constraints for table `tcc_suspencejob`
--
ALTER TABLE `tcc_suspencejob`
  ADD CONSTRAINT `field_id_refs_id_f9dd1268` FOREIGN KEY (`field_id`) REFERENCES `tcc_material` (`id`),
  ADD CONSTRAINT `job_id_refs_id_cafb41b3` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`),
  ADD CONSTRAINT `test_id_refs_id_faa2f6f` FOREIGN KEY (`test_id`) REFERENCES `tcc_test` (`id`);

--
-- Constraints for table `tcc_tada`
--
ALTER TABLE `tcc_tada`
  ADD CONSTRAINT `job_id_refs_id_67cf5ad5` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`);

--
-- Constraints for table `tcc_testtotal`
--
ALTER TABLE `tcc_testtotal`
  ADD CONSTRAINT `job_id_refs_id_4aaa37b8` FOREIGN KEY (`job_id`) REFERENCES `tcc_job` (`id`);

--
-- Constraints for table `tcc_testtotalperf`
--
ALTER TABLE `tcc_testtotalperf`
  ADD CONSTRAINT `job_id_refs_id_56adbb8d` FOREIGN KEY (`job_id`) REFERENCES `tcc_editjob` (`id`);

--
-- Constraints for table `tcc_transport`
--
ALTER TABLE `tcc_transport`
  ADD CONSTRAINT `vehicle_id_refs_id_b0f5c5` FOREIGN KEY (`vehicle_id`) REFERENCES `tcc_transportation` (`id`);

--
-- Constraints for table `tcc_userprofile`
--
ALTER TABLE `tcc_userprofile`
  ADD CONSTRAINT `user_id_refs_id_3f595074` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
