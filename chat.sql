-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2021 at 08:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 1, 3, 'hi my admin\n', '2021-02-12 16:23:53', 0),
(2, 2, 3, 'hi hani', '2021-02-12 16:24:08', 0),
(3, 0, 1, 'hello all', '2021-02-12 16:27:16', 1),
(4, 0, 3, 'how are you doing admin?<div><br></div><div><br></div>', '2021-02-13 21:14:05', 1),
(5, 0, 3, '<br>\n<b>Warning</b>:  move_uploaded_file(upload/bazra.jpg): failed to open stream: No such file or directory in <b>C:\\xampp\\htdocs\\chatt\\upload.php</b> on line <b>15</b><br>\n<br>\n<b>Warning</b>:  move_uploaded_file(): Unable to move \'C:\\xampp\\tmp\\php2F09.tmp\' to \'upload/bazra.jpg\' in <b>C:\\xampp\\htdocs\\chatt\\upload.php</b> on line <b>15</b><br>\n', '2021-02-13 21:14:21', 1),
(6, 0, 1, 'what is this?', '2021-02-13 21:22:42', 1),
(7, 0, 3, 'sorry', '2021-02-13 21:23:49', 1),
(8, 0, 3, 'It is okay', '2021-02-13 21:25:35', 1),
(9, 4, 1, '?', '2021-02-14 10:14:01', 1),
(10, 0, 1, 'hi<div><br></div>', '2021-02-15 06:37:50', 1),
(11, 2, 1, 'hello\n\n', '2021-02-15 06:38:38', 0),
(12, 2, 1, 'hi', '2021-02-15 07:05:04', 0),
(13, 0, 1, 'hello all', '2021-02-15 07:08:52', 1),
(14, 2, 1, 'hu hana', '2021-02-15 07:09:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `username`, `password`) VALUES
(1, 'Admin', 'Admin@123'),
(2, 'hana', 'hana@123'),
(3, 'dave', '123'),
(4, 'alex', 'alex@123');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(1, 0, '2021-02-12 08:55:31', 'no'),
(2, 0, '2021-02-12 08:55:32', 'no'),
(3, 0, '2021-02-12 08:55:34', 'no'),
(4, 0, '2021-02-12 08:55:35', 'no'),
(5, 0, '2021-02-12 08:56:31', 'no'),
(6, 0, '2021-02-12 08:56:53', 'no'),
(7, 0, '2021-02-12 08:57:43', 'no'),
(8, 1, '2021-02-12 16:21:29', 'no'),
(9, 1, '2021-02-12 16:23:16', 'no'),
(10, 3, '2021-02-12 16:26:20', 'no'),
(11, 1, '2021-02-12 16:25:19', 'no'),
(12, 1, '2021-02-12 16:29:09', 'no'),
(13, 1, '2021-02-12 16:47:26', 'no'),
(14, 3, '2021-02-13 20:51:00', 'no'),
(15, 3, '2021-02-13 21:03:28', 'no'),
(16, 3, '2021-02-13 22:23:56', 'no'),
(17, 1, '2021-02-14 10:18:10', 'no'),
(18, 1, '2021-02-13 22:59:14', 'no'),
(19, 3, '2021-02-13 23:30:53', 'no'),
(20, 3, '2021-02-13 23:43:23', 'no'),
(21, 1, '2021-02-13 23:43:51', 'no'),
(22, 2, '2021-02-13 23:44:24', 'no'),
(23, 4, '2021-02-13 23:44:38', 'no'),
(24, 0, '2021-02-13 23:44:46', 'no'),
(25, 1, '2021-02-14 15:55:08', 'no'),
(26, 4, '2021-02-14 17:01:07', 'no'),
(27, 1, '2021-02-15 07:03:12', 'no'),
(28, 2, '2021-02-15 07:20:17', 'no'),
(29, 0, '2021-02-15 07:03:21', 'no'),
(30, 1, '2021-02-15 07:07:53', 'no'),
(31, 1, '2021-02-15 07:20:15', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
