-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2024 at 10:22 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduling`
--

-- --------------------------------------------------------

--
-- Table structure for table `cys`
--

CREATE TABLE `cys` (
  `cys_id` int(11) NOT NULL,
  `cys` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cys`
--

INSERT INTO `cys` (`cys_id`, `cys`) VALUES
(1, 'CSE-15'),
(2, 'CSE-14'),
(3, 'CSE-11'),
(4, 'CSE-12'),
(5, 'CSE-13'),
(6, 'CSE-16A'),
(7, 'CSE-16B'),
(8, 'CSE-17'),
(9, 'CSE-18'),
(10, 'CSE-19');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `dept_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_code`, `dept_name`) VALUES
(8, 'EEE', 'Electronic & Electronic Engineering'),
(7, 'CSE', 'Computer Science & Engineering'),
(9, 'CE', 'Civil Engineering'),
(10, 'ME', 'Mechanical Engineering'),
(11, 'ICE', 'Information & Communication Engineering'),
(12, 'DBA', 'Business Administration'),
(13, 'LLB', 'Low & Justice'),
(14, 'SCG', 'Sociology'),
(15, 'ELL', 'English Language & Literature');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`designation_id`, `designation_name`) VALUES
(67, 'Faculty'),
(66, 'Dean'),
(68, 'Routine Committee');

-- --------------------------------------------------------

--
-- Table structure for table `exam_sched`
--

CREATE TABLE `exam_sched` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `cys1` varchar(10) NOT NULL,
  `term` varchar(10) NOT NULL,
  `encoded_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_last` varchar(30) NOT NULL,
  `member_first` varchar(30) NOT NULL,
  `member_rank` varchar(50) NOT NULL,
  `member_salut` varchar(30) NOT NULL,
  `dept_code` varchar(10) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `program_code` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_last`, `member_first`, `member_rank`, `member_salut`, `dept_code`, `designation_id`, `program_code`, `username`, `password`, `status`) VALUES
(1, 'Marzia', 'Momo(Admin)', 'Student', '', 'CSE', 1, '', 'momocse', '12345', 'admin'),
(2, 'Mohammad', 'Muhtasim', 'Lecturer', 'Mr', 'CSE', 2, '', 'mohammadcse', '12345', 'admin'),
(3, 'Irin', 'Sultana', 'Lecturer', 'Ms', 'CSE', 3, '', 'irincse', '12345', 'admin'),
(4, 'Rofikul', 'Islam', 'Lecturer', 'Mr', 'CSE', 4, '', 'islamcse', '12345', 'admin'),
(5, 'Nasmus', 'Salehin', 'Lecturer', 'Md', 'CSE', 5, '', 'salehincse', '12345', 'admin'),
(7, 'Dr. Boshir', 'Ahmed', 'Professor & Adjunt', 'Prof', 'CSE', 7, '', 'boshircse', '', 'user'),
(8, 'Atikur', 'Rahman', 'Lecturer', 'Md', 'CSE', 8, '', 'atikurcse', '', 'user'),
(9, 'Bristy Rani', 'Roy', 'Lecturer', 'Mrs', 'CSE', 9, '', 'bristycse', '', 'user'),
(10, 'Subrata Kumar', 'Paul', 'Assistant Proffesor', '', 'CSE', 1, '', 'subratacse', '', 'user'),
(11, 'Rakhi Rani', 'Paul', 'Lecturer', '', 'CSE', 11, '', 'rakhicse', '', 'user'),
(12, 'Al', 'Amin', 'Lecturer', 'Md', 'CSE', 12, '', 'alamincse', '', 'user'),
(14, 'Must Asma', 'Yasmin', 'Associate Professore', '', 'CSE', 14, '', 'asmacse', '', 'user'),
(181, 'Ananya', 'Sarkar', 'Assistant Professor', 'Ms', 'CSE', 67, '1', 'ananyacse', '', 'user'),
(183, 'Rony', 'Redoanul Haque', 'Lecturer', 'Md', 'CSE', 67, '1', 'redoanulhaquecse', 'rony', 'user'),
(184, 'Aroni Saha', 'Prapty', 'Lecturer', '', 'CSE', 2, '', 'aronycse', '', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

CREATE TABLE `program` (
  `prog_id` int(11) NOT NULL,
  `prog_code` varchar(10) NOT NULL,
  `prog_title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`prog_id`, `prog_code`, `prog_title`) VALUES
(6, 'BSC_CSE', 'BSC in Computer Science Engineering'),
(13, 'BSC-ME', 'BSC in Mechanical Engineering'),
(14, 'BSC_EEE', 'BSC in Electric & Electronic Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(11) NOT NULL,
  `rank` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank`) VALUES
(1, 'Lecturer'),
(6, 'Assistant Professor'),
(7, 'Professor'),
(11, 'Associate Professor'),
(23, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room`) VALUES
(1, 'P-101'),
(2, 'P-102'),
(3, 'P-103'),
(4, 'P-104'),
(5, 'P-105'),
(6, 'P-106'),
(7, 'N-101'),
(8, 'N-102'),
(9, 'N-103'),
(10, 'N-104'),
(11, 'N-105'),
(12, 'N-106'),
(13, 'P-201'),
(14, 'P-202'),
(15, 'P-203'),
(16, 'P-204'),
(17, 'P-205'),
(18, 'P-206'),
(19, 'P-301'),
(20, 'N-301'),
(21, 'P-303'),
(22, 'N-302'),
(23, 'P-306'),
(24, 'N-305'),
(25, 'N-506'),
(26, 'P-506');

-- --------------------------------------------------------

--
-- Table structure for table `salut`
--

CREATE TABLE `salut` (
  `salut_id` int(11) NOT NULL,
  `salut` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salut`
--

INSERT INTO `salut` (`salut_id`, `salut`) VALUES
(1, 'Ms'),
(2, 'Mrs'),
(3, 'Mr'),
(5, 'Dr'),
(6, 'Prof'),
(7, 'Engr'),
(11, 'Md');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `sched_id` int(11) NOT NULL,
  `time_id` int(1) NOT NULL,
  `day` varchar(50) NOT NULL,
  `member_id` int(11) NOT NULL,
  `subject_code` varchar(50) NOT NULL,
  `cys` varchar(15) NOT NULL,
  `room` varchar(15) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `settings_id` int(11) NOT NULL,
  `encoded_by` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`sched_id`, `time_id`, `day`, `member_id`, `subject_code`, `cys`, `room`, `remarks`, `settings_id`, `encoded_by`) VALUES
(255, 8, 'm', 11, 'CSE-3108', 'CSE-14', 'P-506', '', 11, '1'),
(254, 5, 'm', 3, 'CSE-3103', 'CSE-14', 'P-506', '', 11, '1'),
(253, 10, 'f', 11, 'CSE-3105', 'CSE-14', 'P-506', '', 11, '1'),
(252, 9, 'f', 14, 'HUM-3157', 'CSE-14', 'P-506', '', 11, '1'),
(251, 8, 'f', 9, 'CSE-3107', 'CSE-14', 'P-506', '', 11, '1'),
(250, 6, 'f', 3, 'CSE-3110', 'CSE-14', 'P-506', '', 11, '1'),
(249, 5, 'f', 3, 'CSE-3110', 'CSE-14', 'P-506', '', 11, '1'),
(248, 4, 'f', 3, 'CSE-3110', 'CSE-14', 'P-506', '', 11, '1'),
(256, 9, 'm', 11, 'CSE-3108', 'CSE-14', 'P-506', '', 11, '1'),
(257, 10, 'm', 11, 'CSE-3108', 'CSE-14', 'P-506', '', 11, '1'),
(258, 4, 't', 2, 'CSE-3103', 'CSE-14', 'P-506', '', 11, '1'),
(259, 5, 't', 12, 'HUM-3157', 'CSE-14', 'P-506', '', 11, '1'),
(260, 6, 't', 2, 'CSE-3103', 'CSE-14', 'P-506', '', 11, '1'),
(266, 10, 't', 8, 'CSE-3102', 'CSE-14', 'P-506', '', 11, '1'),
(265, 9, 't', 8, 'CSE-3102', 'CSE-14', 'P-506', '', 11, '1'),
(264, 8, 't', 8, 'CSE-3102', 'CSE-14', 'P-506', '', 11, '1'),
(267, 18, 'w', 11, 'CSE-3107', 'CSE-14', 'P-506', '', 11, '1'),
(268, 19, 'w', 8, 'CSE-3107', 'CSE-14', 'P-506', '', 11, '1'),
(269, 20, 'w', 12, 'HUM-3157', 'CSE-14', 'P-506', '', 11, '1'),
(270, 21, 'w', 3, 'CSE-3104', 'CSE-14', 'P-506', '', 11, '1'),
(271, 22, 'w', 3, 'CSE-3104', 'CSE-14', 'P-506', '', 11, '1'),
(272, 23, 'w', 3, 'CSE-3104', 'CSE-14', 'P-506', '', 11, '1'),
(273, 18, 'th', 7, 'CSE-3101', 'CSE-14', 'P-506', '', 11, '1'),
(274, 19, 'th', 7, 'CSE-3101', 'CSE-14', 'P-506', '', 11, '1'),
(275, 20, 'th', 7, 'CSE-3101', 'CSE-14', 'P-506', '', 11, '1'),
(276, 21, 'th', 10, 'CSE-3105', 'CSE-14', 'P-506', '', 11, '1'),
(277, 22, 'th', 8, 'CSE-3107', 'CSE-14', 'P-506', '', 11, '1'),
(278, 6, 'm', 3, 'HUM-1151', 'CSE-18', 'N-305', '', 11, '3');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `term` varchar(10) NOT NULL,
  `sem` varchar(15) NOT NULL,
  `sy` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `term`, `sem`, `sy`, `status`) VALUES
(11, 'Final', 'Fall-2023', '2023-2024', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `signatories`
--

CREATE TABLE `signatories` (
  `sign_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `seq` int(2) NOT NULL,
  `set_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(15) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `member_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `member_id`) VALUES
(8, 'CSE-3104', 'Software Engineering and Information System Design\r\nSessional', 1),
(7, 'CSE-3103', 'Software Engineering and Information System Design', 1),
(5, 'CSE-3101', 'Numerical Analysis', 1),
(6, 'CSE-3102', 'Numerical Analysis Sessional', 1),
(9, 'CSE-3105', 'Data and Telecommunication', 1),
(10, 'CSE-3106', 'Data and Telecommunication Sessional', 1),
(11, 'CSE-3107', 'Operating System', 1),
(12, 'CSE-3108', 'Operating System Sessional', 1),
(13, 'CSE-3110', 'Web Programming Sessional', 1),
(16, 'CSE-1100', 'Introduction to Computer Systems Laboratory', 1),
(15, 'HUM-3157', 'Professional Ethics & Environment', 1),
(17, 'HUM-1151', 'Bangladesh Studies: History and Culture', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sy`
--

CREATE TABLE `sy` (
  `sy_id` int(11) NOT NULL,
  `sy` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sy`
--

INSERT INTO `sy` (`sy_id`, `sy`) VALUES
(1, '2017-2018'),
(7, '2018-2019');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `time_id` int(11) NOT NULL,
  `time_start` time NOT NULL,
  `time_end` time NOT NULL,
  `days` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`time_id`, `time_start`, `time_end`, `days`) VALUES
(4, '08:15:00', '09:10:00', 'mwf'),
(5, '09:15:00', '10:10:00', 'mwf'),
(6, '10:15:00', '11:10:00', 'mwf'),
(8, '11:40:00', '12:35:00', 'mwf'),
(9, '12:40:00', '13:35:00', 'mwf'),
(10, '13:40:00', '14:35:00', 'mwf'),
(18, '08:15:00', '09:10:00', 'tth'),
(19, '09:15:00', '10:10:00', 'tth'),
(20, '10:15:00', '11:10:00', 'tth'),
(21, '11:40:00', '12:35:00', 'tth'),
(22, '12:40:00', '13:35:00', 'tth'),
(23, '13:40:00', '14:35:00', 'tth');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `program` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `name`, `status`, `program`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'active', 'all');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cys`
--
ALTER TABLE `cys`
  ADD PRIMARY KEY (`cys_id`),
  ADD UNIQUE KEY `cys` (`cys`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `exam_sched`
--
ALTER TABLE `exam_sched`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `program`
--
ALTER TABLE `program`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `salut`
--
ALTER TABLE `salut`
  ADD PRIMARY KEY (`salut_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `signatories`
--
ALTER TABLE `signatories`
  ADD PRIMARY KEY (`sign_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `sy`
--
ALTER TABLE `sy`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cys`
--
ALTER TABLE `cys`
  MODIFY `cys_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `exam_sched`
--
ALTER TABLE `exam_sched`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `program`
--
ALTER TABLE `program`
  MODIFY `prog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `salut`
--
ALTER TABLE `salut`
  MODIFY `salut_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `sched_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `signatories`
--
ALTER TABLE `signatories`
  MODIFY `sign_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sy`
--
ALTER TABLE `sy`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
