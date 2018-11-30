-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3325
-- Generation Time: Nov 30, 2018 at 04:08 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `managerpro`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_student`
--

CREATE TABLE `accounts_student` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `usn` varchar(10) NOT NULL,
  `section` varchar(2) NOT NULL,
  `department` varchar(10) NOT NULL,
  `college` varchar(255) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `bio` longtext NOT NULL,
  `image_url` varchar(1000) NOT NULL,
  `user_id` int(11) NOT NULL,
  `semester` varchar(5) NOT NULL,
  `is_complete` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_student`
--

INSERT INTO `accounts_student` (`id`, `fname`, `lname`, `usn`, `section`, `department`, `college`, `gender`, `bio`, `image_url`, `user_id`, `semester`, `is_complete`) VALUES
(3, 'Bikash', 'Thapa', '1st16cs710', 'A', 'ISE', 'Sambhram Institute Of Technology', 'M', 'dsdsdsd', 'https://www.dike.lib.ia.us/images/sample-2.jpg', 5, '3', 1),
(9, 'Hari', 'Kumar', '1st16cs716', 'A', 'CSE', 'Sambhram Institute Of Technology', 'M', 'I am Hari Socker.', 'https://www.dike.lib.ia.us/images/sample-2.jpg', 10, '3', 1),
(10, 'Prerna', 'Shukla', '1st16cs731', 'C', 'CSE', 'Sambhram Institute Of Technology', 'F', 'A Normal Girl with Abnormal Brain.', 'https://images.pexels.com/photos/872756/pexels-photo-872756.jpeg?auto=compress&cs=tinysrgb&h=350', 11, '5', 1),
(11, 'Bikash', 'Thapa', '1st16cs710', 'C', 'CSE', 'Sambhram Institute Of Technology', 'M', 'Man with Plan.', 'https://bikashthapa.me/img/profile.jpg', 2, '5', 1),
(12, 'Cute', 'Girl', '1st16cs745', 'A', 'CSE', 'Sambhram Institute Of Technology', 'F', 'Cuteness Overloaded,  Gives me Goosebumps everytime i see her.', 'https://i.imgur.com/5LZgpUg.jpg', 12, '5', 1),
(13, 'Chandana', 'N', '1st6cs711', 'C', 'ISE', 'Sambhram Institute Of Technology', 'F', 'Lorem Epsum Dolar Shit in the van.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4mZAThQR_t1C__9yA31vZ1DlztiF3mpnvdOTU9NuKUTu9ANW_Hw', 19, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_teacher`
--

CREATE TABLE `accounts_teacher` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `department` varchar(10) NOT NULL,
  `college` varchar(255) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `experiences` longtext NOT NULL,
  `bio` longtext NOT NULL,
  `image_url` varchar(1000) NOT NULL,
  `is_complete` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `educations` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_teacher`
--

INSERT INTO `accounts_teacher` (`id`, `fullName`, `department`, `college`, `gender`, `designation`, `experiences`, `bio`, `image_url`, `is_complete`, `user_id`, `educations`) VALUES
(1, 'Soumya Talwar', 'CSE', 'Sambhram Institute Of Technology', 'F', 'Assistant Professer', '-   Teaching DBMS For 4 Years.\r\n-   Teaching DBMS For 4 Years.\r\n-   Teaching DBMS For 4 Years.', 'Beauty with Brain.', 'https://images.pexels.com/photos/872756/pexels-photo-872756.jpeg?auto=compress&cs=tinysrgb&h=350', 1, 1, '- M-Tech From IISc\r\n- B-Tech From IITB'),
(3, 'Raghava R.', 'CSE', 'Sambhram Institute Of Technology', 'M', 'Assistant Professer', '-  ZERO\r\n- ONE', 'This is Ragava.', 'https://www.dike.lib.ia.us/images/sample-2.jpg', 1, 13, '- BTECH');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user`
--

CREATE TABLE `accounts_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_student` tinyint(1) NOT NULL,
  `is_mentor` tinyint(1) NOT NULL,
  `is_completed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_user`
--

INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_student`, `is_mentor`, `is_completed`) VALUES
(1, 'pbkdf2_sha256$120000$feaZgucKAZ5b$+gWQmkX+QhjfoyviUeNhqCYN8xxW3L13ZblHZecGgmI=', '2018-11-22 04:25:21.831103', 1, 'bikash', '', '', 'b@gmai.com', 1, 1, '2018-11-14 18:39:26.814644', 0, 0, 0),
(2, 'pbkdf2_sha256$120000$GItwbfLtQLcD$lp8KH7zc2Qhtw2vQn6kpyVpLITUpAqeMwFvPkBnVYzI=', '2018-11-29 11:24:41.472925', 0, '1st16cs710', '', '', 'bikash@gmail.com', 0, 1, '2018-11-15 11:24:58.045462', 1, 0, 1),
(5, 'pbkdf2_sha256$120000$8yvQap4Omyr8$6piTsv8urNQTzWBqVK2gwpkqYyhqEs9hiUuT0hSf6i8=', '2018-11-17 18:06:36.400864', 0, '1st16cs706', '', '', 'annapa@gmail.com', 0, 1, '2018-11-17 17:19:18.437528', 1, 0, 0),
(6, 'pbkdf2_sha256$120000$StLJxcSjnL5f$tXlTibiEiSNWQPo2znxugwU3M48zxI58sKZBU8vA0D4=', '2018-11-21 03:16:39.632407', 0, '1st16cs700', '', '', 'abhi@gmail.com', 0, 1, '2018-11-21 03:10:47.179363', 1, 0, 0),
(7, 'pbkdf2_sha256$120000$93Z0qtOW7Xxs$UyMWY/VaisnyRSyqhdPy6ln5JA9k7Uvn+pkyXGhYP4g=', '2018-11-21 03:44:50.526362', 0, 'bikash12', '', '', 'b@gmail.com', 0, 1, '2018-11-21 03:40:29.138705', 0, 1, 0),
(8, 'pbkdf2_sha256$120000$xP1i2p1c3Ljd$uYu3e7mmgyc46jShnEJ4kfXQ8j+3lLC8KKc+ceGnAso=', '2018-11-21 06:04:54.279663', 0, 'bikash15', '', '', 'b@gmail.com', 0, 1, '2018-11-21 06:04:44.428619', 0, 1, 0),
(10, 'pbkdf2_sha256$120000$LgyFuSotxMRX$exFXttLLCofW1QcUf9WMFBRDgPp/pjXFg5SYJbTMagA=', '2018-11-27 06:22:47.107448', 0, '1st16cs716', '', '', 'Hari@gmail.com', 0, 1, '2018-11-21 09:53:46.058921', 1, 0, 1),
(11, 'pbkdf2_sha256$120000$2Fije3QWlj0G$Vgz/DuRxiyAxylgk8x6i2QhceIp95KiQEkiHzDDmXbg=', '2018-11-25 17:34:57.100335', 0, '1st16cs731', '', '', 'prerna@gmail.com', 0, 1, '2018-11-21 16:13:38.826158', 1, 0, 1),
(12, 'pbkdf2_sha256$120000$NeQEMcBd8PO0$8DIbd3Ar47FwUHCq/6ClE81QqZH1tvue/D4jOXIYGjs=', '2018-11-26 08:28:07.610649', 0, '1st16cs744', '', '', 'smriti@gmail.com', 0, 1, '2018-11-22 04:44:36.519114', 1, 0, 1),
(13, 'pbkdf2_sha256$120000$yedegucz1Tte$FVvfiP2FzgenjtZ/BUW981zI8BOaUmnFkedlqhMAzvM=', '2018-11-28 14:19:34.354582', 0, 'techer11', '', '', 'teacher@gmail.com', 0, 1, '2018-11-26 04:29:32.901847', 0, 1, 1),
(19, 'pbkdf2_sha256$120000$DAl5b7ZpdLCf$MJ0G8MHA5UH+Y7DxwNAa78dnm/LFK0+BbMmlyoKgHG8=', '2018-11-26 15:53:43.703839', 0, '1st16cs711', '', '', 'chandana@gmai.com', 0, 1, '2018-11-26 15:53:28.849991', 1, 0, 1),
(20, 'pbkdf2_sha256$120000$h0xOrqw8xXDU$PObgRFnDutrNcNQIc0bSkDANx0ydopx6H0R8LqL9ePM=', '2018-11-29 11:18:35.126090', 0, '1st16cs718', '', '', 'k@gmail.com', 0, 1, '2018-11-29 11:18:23.583429', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_groups`
--

CREATE TABLE `accounts_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_user_permissions`
--

CREATE TABLE `accounts_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add student', 8, 'add_student'),
(30, 'Can change student', 8, 'change_student'),
(31, 'Can delete student', 8, 'delete_student'),
(32, 'Can view student', 8, 'view_student'),
(33, 'Can add teacher', 9, 'add_teacher'),
(34, 'Can change teacher', 9, 'change_teacher'),
(35, 'Can delete teacher', 9, 'delete_teacher'),
(36, 'Can view teacher', 9, 'view_teacher'),
(37, 'Can add project', 10, 'add_project'),
(38, 'Can change project', 10, 'change_project'),
(39, 'Can delete project', 10, 'delete_project'),
(40, 'Can view project', 10, 'view_project');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'accounts', 'student'),
(9, 'accounts', 'teacher'),
(7, 'accounts', 'user'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'project', 'project'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-14 18:30:42.066652'),
(2, 'auth', '0001_initial', '2018-11-14 18:30:47.760973'),
(3, 'admin', '0001_initial', '2018-11-14 18:30:49.451068'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-14 18:30:49.483071'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-11-14 18:30:49.518075'),
(6, 'contenttypes', '0002_remove_content_type_name', '2018-11-14 18:30:50.277116'),
(7, 'auth', '0002_alter_permission_name_max_length', '2018-11-14 18:30:50.810146'),
(8, 'auth', '0003_alter_user_email_max_length', '2018-11-14 18:30:51.386179'),
(9, 'auth', '0004_alter_user_username_opts', '2018-11-14 18:30:51.432180'),
(10, 'auth', '0005_alter_user_last_login_null', '2018-11-14 18:30:51.840205'),
(11, 'auth', '0006_require_contenttypes_0002', '2018-11-14 18:30:51.876206'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2018-11-14 18:30:51.908208'),
(13, 'auth', '0008_alter_user_username_max_length', '2018-11-14 18:30:52.494240'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2018-11-14 18:30:52.988270'),
(15, 'sessions', '0001_initial', '2018-11-14 18:30:53.687310'),
(16, 'accounts', '0001_initial', '2018-11-14 18:37:28.589973'),
(17, 'accounts', '0002_user_is_completed', '2018-11-15 12:55:24.649113'),
(18, 'accounts', '0003_auto_20181115_2013', '2018-11-15 14:43:51.509977'),
(19, 'accounts', '0004_auto_20181117_2340', '2018-11-17 18:10:14.918002'),
(20, 'accounts', '0005_auto_20181120_2125', '2018-11-20 15:55:29.150651'),
(21, 'accounts', '0006_auto_20181120_2143', '2018-11-20 16:13:19.962018'),
(22, 'accounts', '0007_student_is_complete', '2018-11-20 16:16:12.847175'),
(23, 'accounts', '0008_auto_20181120_2208', '2018-11-20 16:38:58.909602'),
(24, 'accounts', '0009_teacher', '2018-11-21 06:16:56.908506'),
(25, 'accounts', '0010_auto_20181121_1209', '2018-11-21 06:39:41.038679'),
(26, 'accounts', '0011_auto_20181121_1226', '2018-11-21 06:56:23.952392'),
(27, 'accounts', '0012_auto_20181122_1000', '2018-11-22 04:30:58.400537'),
(28, 'project', '0001_initial', '2018-11-22 04:30:59.585605'),
(29, 'project', '0002_auto_20181122_1249', '2018-11-22 07:19:13.383662');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('s5sozz2da2tahxyhxc8gzsnujywnur9s', 'MDYyNzNlYzcxZjkxYTdhOTQyZWVhMDRiZmY5NWYwOTY0NmU2YjlhZjp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTgyMjc1YzlkOWRjZDA2ZWQ0MThmZTE1MDYwOWZiZDcyOWJiYWI1In0=', '2018-11-29 14:03:07.600856'),
('vzwzl2j3xlqlsizskkr1otkpa5po18l3', 'ZmU1ZWU1MzNmMDNiMzI1MTllNjQyZTY0YjU1NTY2MDdiODExODBmNzp7fQ==', '2018-12-05 10:03:25.448488'),
('w16m2mwjo9iy59xmgcteywm2aa2zthma', 'ODYwY2NmZTgwNjdkNTRjNDVjMDg4Yzc5MzQyNjlmNDVkNjI5Mzk5YTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YzI2MmY4YmUwYzQ2MWIwZDVkNDVhNGFiZDczZDE5OGMzZjM2ZTg2In0=', '2018-12-13 11:24:41.495922');

-- --------------------------------------------------------

--
-- Table structure for table `project_project`
--

CREATE TABLE `project_project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `introduction` longtext NOT NULL,
  `objectives` longtext NOT NULL,
  `db_schema` longtext NOT NULL,
  `frontEnd` longtext NOT NULL,
  `backEnd` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `image_url` varchar(1000) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_project`
--

INSERT INTO `project_project` (`id`, `name`, `introduction`, `objectives`, `db_schema`, `frontEnd`, `backEnd`, `requirements`, `image_url`, `teacher_id`, `user_id`) VALUES
(11, 'ESCAPE INC', 'Some Intro', 'SOme Objectives', 'Database Schema', 'Front End', 'Back End', 'Project Requirement', 'https://www.dike.lib.ia.us/images/sample-2.jpg', 3, 12),
(12, 'Project Management System', 'Received overcame oh sensible so at an. Formed do change merely to county it. Am separate contempt domestic to to oh. On relation my so addition branched. Put hearing cottage she norland letters equally prepare too. Replied exposed savings he no viewing as up. Soon body add him hill. No father living really people estate if. Mistake do produce beloved demesne if am pursuit.', 'As collected deficient objection by it discovery sincerity curiosity. Quiet decay who round three world whole has mrs man. Built the china there tried jokes which gay why. Assure in adieus wicket it is. But spoke round point and one joy. Offending her moonlight men sweetness see unwilling. Often of it tears whole oh balls share an.\r\n\r\nAs collected deficient objection by it discovery sincerity curiosity. Quiet decay who round three world whole has mrs man. Built the china there tried jokes which gay why. Assure in adieus wicket it is. But spoke round point and one joy. Offending her moonlight men sweetness see unwilling. Often of it tears whole oh balls share an.', 'FIRST ( Char, INT Float )\r\n\r\nSECOND ( CHAR , VARCHAR ) \r\n\r\nTHIRD (FLOAT , DOUBLE )', 'HTML\r\nCSS\r\nSASS\r\nNODE', 'MySQL\r\nPYTHON\r\nDJANGO', 'MYSQL 14+ \r\n\r\nPYTHON 3.7 + \r\n\r\nDJANGO 2.1 +', 'https://googlechrome.github.io/samples/picture-element/images/butterfly.jpg', 3, 11),
(13, 'Shop management', 'By an outlived insisted procured improved am. Paid hill fine ten now love even leaf. Supplied feelings mr of dissuade recurred no it offering honoured. Am of of in collecting devonshire favourable excellence. Her sixteen end ashamed cottage yet reached get hearing invited. Resources ourselves sweetness ye do no perfectly. Warmly warmth six one any wisdom. Family giving is pulled beauty chatty highly no. Blessing appetite domestic did mrs judgment rendered entirely. Highly indeed had garden not.', 'By an outlived insisted procured improved am. Paid hill fine ten now love even leaf. Supplied feelings mr of dissuade recurred no it offering honoured. Am of of in collecting devonshire favourable excellence. Her sixteen end ashamed cottage yet reached get hearing invited. Resources ourselves sweetness ye do no perfectly. Warmly warmth six one any wisdom. Family giving is pulled beauty chatty highly no. Blessing appetite domestic did mrs judgment rendered entirely. Highly indeed had garden not.', 'SCEMA ( test, id, name , user)\r\n\r\nTEST ( id, name =, user, pno)', 'HTML \r\nCSS\r\nSASS', 'MYSQL \r\nPHP \r\nMVC', 'MYSQL \r\nPHP', 'https://www.visioncritical.com/wp-content/uploads/2014/12/BLG_Andrew-G.-River-Sample_09.13.12.png', 3, 13),
(14, 'Web Development Project', 'This project will provide a synopsis generation service for the student of VTU. This application contain the sample of Synopsis report that needs to be submitted for mini project.', 'This project will provide a synopsis generation service for the student of VTU. This application contain the sample of Synopsis report that needs to be submitted for mini project.', 'This project will provide a synopsis generation service for the student of VTU. This application contain the sample of Synopsis report that needs to be submitted for mini project.', 'This project will provide a synopsis generation service for the student of VTU. This application contain the sample of Synopsis report that needs to be submitted for mini project.', 'This project will provide a synopsis generation service for the student of VTU. This application contain the sample of Synopsis report that needs to be submitted for mini project.', 'This project will provide a synopsis generation service for the student of VTU. This application contain the sample of Synopsis report that needs to be submitted for mini project.', 'https://images.pexels.com/photos/872756/pexels-photo-872756.jpeg?auto=compress&cs=tinysrgb&h=350', 1, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_student`
--
ALTER TABLE `accounts_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_student_user_id_683c461a` (`user_id`);

--
-- Indexes for table `accounts_teacher`
--
ALTER TABLE `accounts_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_teacher_user_id_056a6444_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  ADD KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  ADD KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `project_project`
--
ALTER TABLE `project_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_project_teacher_id_8038a8bd_fk_accounts_teacher_id` (`teacher_id`),
  ADD KEY `project_project_user_id_8710107a_fk_accounts_student_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_student`
--
ALTER TABLE `accounts_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `accounts_teacher`
--
ALTER TABLE `accounts_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_user`
--
ALTER TABLE `accounts_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `project_project`
--
ALTER TABLE `project_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_student`
--
ALTER TABLE `accounts_student`
  ADD CONSTRAINT `accounts_student_user_id_683c461a_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_teacher`
--
ALTER TABLE `accounts_teacher`
  ADD CONSTRAINT `accounts_teacher_user_id_056a6444_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `project_project`
--
ALTER TABLE `project_project`
  ADD CONSTRAINT `project_project_teacher_id_8038a8bd_fk_accounts_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `accounts_teacher` (`id`),
  ADD CONSTRAINT `project_project_user_id_8710107a_fk_accounts_student_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
