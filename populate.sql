-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2016 at 08:50 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event-handlers`
--

-- --------------------------------------------------------

--
-- Table structure for table `approved_members_list`
--

CREATE TABLE `approved_members_list` (
  `EVENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `EVENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `endTime` date DEFAULT NULL,
  `membersSizeLimit` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `resourcesDescription` text,
  `startTime` date NOT NULL,
  `APPROVED_BY_USER_ID` int(11) DEFAULT NULL,
  `CREATED_BY_USER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `category`, `description`, `endTime`, `membersSizeLimit`, `name`, `resourcesDescription`, `startTime`, `APPROVED_BY_USER_ID`, `CREATED_BY_USER_ID`) VALUES
(1, 'Trip', 'For those of you who have reason to go to walmart we have got a schedule for you to go to walmart. ', NULL, 20, 'Trip to walmart', '', '2016-11-03', 6, 6),
(2, 'Celebration', 'Ethiopians celebrate there new year in different time ', NULL, NULL, 'ethiopian new year celebration', '', '2016-12-12', 6, 6),
(3, 'Celebration', 'we will be having new year selebration of ', NULL, 123, 'The new year', '', '2016-12-12', 6, 6),
(4, 'Trip', 'For those of you who have reason to go to walmart we have got a schedule for you to go to walmart. ', NULL, 20, 'Trip to walmart', '', '2016-11-03', 6, 6),
(5, 'Celebration', 'Ethiopians celebrate there new year in different time ', NULL, NULL, 'ethiopian new year celebration', '', '2016-12-12', 6, 6),
(6, 'Celebration', 'we will be having new year selebration of ', NULL, 123, 'The new year', '', '2016-12-12', 6, 6),
(7, 'Trip', 'For those of you who have reason to go to walmart we have got a schedule for you to go to walmart. ', NULL, 20, 'Trip to walmart', '', '2016-11-03', 6, 6),
(8, 'Celebration', 'Ethiopians celebrate there new year in different time ', NULL, NULL, 'ethiopian new year celebration', '', '2016-12-12', 6, 6),
(9, 'Celebration', 'we will be having new year selebration of ', NULL, 123, 'The new year', '', '2016-12-12', 6, 6),
(10, 'Trip', 'For those of you who have reason to go to walmart we have got a schedule for you to go to walmart. ', NULL, 20, 'Trip to walmart', '', '2016-11-03', 6, 6),
(11, 'Celebration', 'Ethiopians celebrate there new year in different time ', NULL, NULL, 'ethiopian new year celebration', '', '2016-12-12', 6, 6),
(12, 'Celebration', 'we will be having new year selebration of ', NULL, 123, 'The new year', '', '2016-12-12', 6, 6),
(13, 'Trip', 'For those of you who have reason to go to walmart we have got a schedule for you to go to walmart. ', NULL, 20, 'Trip to walmart', '', '2016-11-03', 6, 6),
(14, 'Celebration', 'Ethiopians celebrate there new year in different time ', NULL, NULL, 'ethiopian new year celebration', '', '2016-12-12', 6, 6),
(15, 'Celebration', 'we will be having new year selebration of ', NULL, 123, 'The new year', '', '2016-12-12', 6, 6),
(16, 'Trip', 'For those of you who have reason to go to walmart we have got a schedule for you to go to walmart. ', NULL, 20, 'Trip to walmart', '', '2016-11-03', 6, 6),
(17, 'Celebration', 'Ethiopians celebrate there new year in different time ', NULL, NULL, 'ethiopian new year celebration', '', '2016-12-12', 6, 6),
(18, 'Celebration', 'we will be having new year selebration of ', NULL, 123, 'The new year', '', '2016-12-12', 6, 6),
(19, 'Trip', 'For those of you who have reason to go to walmart we have got a schedule for you to go to walmart. ', NULL, 20, 'Trip to walmart', '', '2016-11-03', 6, 6),
(20, 'Celebration', 'Ethiopians celebrate there new year in different time ', NULL, NULL, 'ethiopian new year celebration', '', '2016-12-12', 6, 6),
(21, 'Celebration', 'we will be having new year selebration of ', NULL, 123, 'The new year', '', '2016-12-12', 6, 6),
(22, 'Trip', 'For those of you who have reason to go to walmart we have got a schedule for you to go to walmart. ', NULL, 20, 'Trip to walmart', '', '2016-11-03', 6, 6),
(23, 'Celebration', 'Ethiopians celebrate there new year in different time ', NULL, NULL, 'ethiopian new year celebration', '', '2016-12-12', 6, 6),
(24, 'Celebration', 'we will be having new year selebration of ', NULL, 123, 'The new year', '', '2016-12-12', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `eventcategory`
--

CREATE TABLE `eventcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventcategory`
--

INSERT INTO `eventcategory` (`id`, `name`) VALUES
(1, 'Trip'),
(2, 'Meeting'),
(3, 'Celebration'),
(4, 'Seminar'),
(5, 'Group Meditation');

-- --------------------------------------------------------

--
-- Table structure for table `event_resources`
--

CREATE TABLE `event_resources` (
  `RESOURCE_ID` int(11) NOT NULL,
  `EVENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `role`, `USER_ID`) VALUES
(1, 'kokeb@gmail.com', '$2a$10$XNuJAHQy2rVlUiVd/22smesn5ff3E9Ew6jd523z6tPafHYLQDSsgG', 'ROLE_USER', 1),
(2, 'paulos@gmail.com', '$2a$10$3xM4iV5R8ZykTl5bPdCHw.6sd3Fv0IH9yg/wNzgap6NaaZw56KWEO', 'ROLE_USER', 2),
(3, 'rafael@gmail.com', '$2a$10$Uo3hTxDPGul8H64nkX6RieIsp5g0dajTP31MPdKz3JVrWLuNOL33W', 'ROLE_USER', 3),
(4, 'esehak@gmail.com', '$2a$10$DuZK0sso/LXIwx/5pf8hd.l/dsxadifobBGWvpEdB8jjzB0NNP7Jy', 'ROLE_USER', 4),
(5, 'user@gmail.com', '$2a$10$Vto92LSej7YNBuJ9OFzBwO0G.Alq.iuJukVp4r3m4XAKhZb5EvTmG', 'ROLE_USER', 5),
(6, 'admin@gmail.com', '$2a$10$aQebSxjvNoL7xXD5yC1.s.MBxSZBWyym67Egqyridv11q5jbLfzqm', 'ROLE_ADMIN', 6),
(7, 'santosh@gmail.com', '$2a$10$vThr.4nIhKfEQoyOqkXK6./I6oblQ1SttIpfyYaB2H8Ni.tVQYmu2', 'ROLE_USER', 7);

-- --------------------------------------------------------

--
-- Table structure for table `members_like_list`
--

CREATE TABLE `members_like_list` (
  `EVENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_like_list`
--

INSERT INTO `members_like_list` (`EVENT_ID`, `USER_ID`) VALUES
(3, 2),
(3, 1),
(3, 5),
(6, 2),
(6, 1),
(6, 5),
(8, 2),
(8, 1),
(8, 5),
(9, 2),
(9, 1),
(9, 5),
(14, 5),
(2, 1),
(2, 7),
(5, 2),
(5, 1),
(5, 5),
(5, 7),
(11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `country`, `state`, `street`, `gender`, `name`) VALUES
(1, NULL, NULL, NULL, 'Male', 'kokeb beyene'),
(2, NULL, NULL, NULL, 'Male', 'Paulos Haylu'),
(3, NULL, NULL, NULL, 'Male', 'rafael yohannes '),
(4, NULL, NULL, NULL, 'Male', 'esehak ahmedin'),
(5, NULL, NULL, NULL, 'Male', 'user'),
(6, NULL, NULL, NULL, 'Male', 'admin'),
(7, NULL, NULL, NULL, 'Male', 'santosh');

-- --------------------------------------------------------

--
-- Table structure for table `waiting_members_list`
--

CREATE TABLE `waiting_members_list` (
  `EVENT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `waiting_members_list`
--

INSERT INTO `waiting_members_list` (`EVENT_ID`, `USER_ID`) VALUES
(13, 6),
(16, 6),
(19, 6),
(22, 6),
(3, 2),
(3, 1),
(3, 5),
(5, 2),
(5, 1),
(5, 5),
(6, 2),
(6, 1),
(6, 5),
(8, 2),
(8, 1),
(8, 5),
(9, 2),
(9, 1),
(9, 5),
(14, 5),
(11, 5),
(11, 7),
(2, 2),
(2, 1),
(2, 7),
(2, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approved_members_list`
--
ALTER TABLE `approved_members_list`
  ADD KEY `FK_t0ckwk23l0a4w8nlnd0kknrxn` (`USER_ID`),
  ADD KEY `FK_e097qgbmwcldpxe0h3b0jwoa8` (`EVENT_ID`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_gg1two1n98lnxgv13jt5ybtce` (`EVENT_ID`),
  ADD KEY `FK_6vo7ql7d90t42g411neag5vvm` (`USER_ID`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_j8bjs6gldxsyyvdh3j088d94f` (`APPROVED_BY_USER_ID`),
  ADD KEY `FK_fu7h1lwablcmw051pjlj3s24g` (`CREATED_BY_USER_ID`);

--
-- Indexes for table `eventcategory`
--
ALTER TABLE `eventcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_resources`
--
ALTER TABLE `event_resources`
  ADD KEY `FK_6oc6ovy7ga5h2hccq9kcubds7` (`EVENT_ID`),
  ADD KEY `FK_9q8kp6g36cnnmj9khcxbo2f7i` (`RESOURCE_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_soliv5j8flkn8jvmkt5lv936v` (`USER_ID`),
  ADD UNIQUE KEY `UK_2d6k91bwp84hil8onktqv1xrv` (`email`);

--
-- Indexes for table `members_like_list`
--
ALTER TABLE `members_like_list`
  ADD KEY `FK_9p3pbdso1sf0je9a73d85i3o7` (`USER_ID`),
  ADD KEY `FK_a3afm5rr8y3e5yuiquim5sdik` (`EVENT_ID`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waiting_members_list`
--
ALTER TABLE `waiting_members_list`
  ADD KEY `FK_8d0c3jbn02lw10d512koexqdj` (`USER_ID`),
  ADD KEY `FK_e1saaxtt6sisb6jun206x2d24` (`EVENT_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `eventcategory`
--
ALTER TABLE `eventcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `approved_members_list`
--
ALTER TABLE `approved_members_list`
  ADD CONSTRAINT `FK_e097qgbmwcldpxe0h3b0jwoa8` FOREIGN KEY (`EVENT_ID`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `FK_t0ckwk23l0a4w8nlnd0kknrxn` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_6vo7ql7d90t42g411neag5vvm` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_gg1two1n98lnxgv13jt5ybtce` FOREIGN KEY (`EVENT_ID`) REFERENCES `event` (`id`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `FK_fu7h1lwablcmw051pjlj3s24g` FOREIGN KEY (`CREATED_BY_USER_ID`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_j8bjs6gldxsyyvdh3j088d94f` FOREIGN KEY (`APPROVED_BY_USER_ID`) REFERENCES `user` (`id`);

--
-- Constraints for table `event_resources`
--
ALTER TABLE `event_resources`
  ADD CONSTRAINT `FK_6oc6ovy7ga5h2hccq9kcubds7` FOREIGN KEY (`EVENT_ID`) REFERENCES `event` (`id`),
  ADD CONSTRAINT `FK_9q8kp6g36cnnmj9khcxbo2f7i` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `resource` (`id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `FK_soliv5j8flkn8jvmkt5lv936v` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`id`);

--
-- Constraints for table `members_like_list`
--
ALTER TABLE `members_like_list`
  ADD CONSTRAINT `FK_9p3pbdso1sf0je9a73d85i3o7` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_a3afm5rr8y3e5yuiquim5sdik` FOREIGN KEY (`EVENT_ID`) REFERENCES `event` (`id`);

--
-- Constraints for table `waiting_members_list`
--
ALTER TABLE `waiting_members_list`
  ADD CONSTRAINT `FK_8d0c3jbn02lw10d512koexqdj` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_e1saaxtt6sisb6jun206x2d24` FOREIGN KEY (`EVENT_ID`) REFERENCES `event` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
