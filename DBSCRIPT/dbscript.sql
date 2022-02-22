-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.18-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table dtr_ci.attendance
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(6) NOT NULL,
  `employee_id` int(3) unsigned zerofill NOT NULL,
  `department_id` char(3) NOT NULL,
  `shift_id` int(1) NOT NULL,
  `location_id` int(1) NOT NULL,
  `in_time` int(11) NOT NULL,
  `notes` varchar(120) NOT NULL,
  `image` varchar(50) NOT NULL,
  `lack_of` varchar(11) NOT NULL,
  `in_status` varchar(15) NOT NULL,
  `out_time` int(11) NOT NULL,
  `out_status` varchar(15) NOT NULL,
  `date_added` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `employee_id` (`employee_id`),
  KEY `department_id` (`department_id`),
  KEY `shift_id` (`shift_id`),
  KEY `location_id` (`location_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON UPDATE CASCADE,
  CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `attendance_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `attendance_ibfk_4` FOREIGN KEY (`shift_id`) REFERENCES `shift` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `attendance_ibfk_5` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.attendance: ~19 rows (approximately)
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` (`id`, `username`, `employee_id`, `department_id`, `shift_id`, `location_id`, `in_time`, `notes`, `image`, `lack_of`, `in_status`, `out_time`, `out_status`, `date_added`) VALUES
	(45, 'ADM011', 011, 'ADM', 1, 1, 1589178316, 'sdf', 'item-200511-8f5d7be1a1.jpg', 'None', 'Late', 1589178477, 'Early', '2022-02-22 13:52:34'),
	(48, 'ADM011', 011, 'ADM', 1, 1, 1589381121, '', 'item-200513-ad6953a07e.jpg', 'Notes', 'Late', 1589381127, 'Over Time', '2022-02-22 13:52:34'),
	(49, 'PCD010', 010, 'PCD', 2, 1, 1589384432, 'asdasd', '', 'None,image', 'Late', 1589384514, 'Over Time', '2022-02-22 13:52:34'),
	(50, 'ADM011', 011, 'ADM', 1, 1, 1589391038, '', '', 'Notes,image', 'On Time', 1589391056, 'Early', '2022-02-22 13:52:34'),
	(51, 'PCD010', 010, 'PCD', 3, 1, 1622553388, 'testing', 'item-210601-3946bb00df.png', 'None', 'Late', 1622553470, 'Over Time', '2022-02-22 13:52:34'),
	(52, 'PCD010', 010, 'PCD', 3, 2, 1631893356, 'none', '', 'None,image', 'Late', 1631893413, 'Over Time', '2022-02-22 13:52:34'),
	(53, 'STD026', 026, 'STD', 1, 1, 1631894335, 'none', '', 'None,image', 'Late', 1631894403, 'Over Time', '2022-02-22 13:52:34'),
	(54, 'ADM011', 011, 'ADM', 1, 2, 1631894692, 'demo', '', 'None,image', 'Late', 1631894696, 'Over Time', '2022-02-22 13:52:34'),
	(55, 'QCD027', 027, 'QCD', 6, 2, 1631499386, 'none..', '', 'None,image', 'Late', 1631529057, 'Early', '2022-02-22 13:52:34'),
	(56, 'QCD027', 027, 'QCD', 6, 2, 1631583036, 'none', '', 'None,image', 'Late', 1631611849, 'Early', '2022-02-22 13:52:34'),
	(58, 'QCD027', 027, 'QCD', 6, 1, 1631733350, 'none', '', 'None,image', 'Late', 1631797356, 'Early', '2022-02-22 13:52:34'),
	(59, 'QCD027', 027, 'QCD', 6, 4, 1631863331, 'none', '', 'None,image', 'Late', 1631896539, 'Early', '2022-02-22 13:52:34'),
	(60, 'QCD027', 027, 'QCD', 6, 1, 1631214919, 'none', '', 'None,image', 'Late', 1631250936, 'Over Time', '2022-02-22 13:52:34'),
	(61, 'STD026', 026, 'STD', 1, 2, 1631493955, 'none', '', 'None,image', 'On Time', 1631523613, 'Over Time', '2022-02-22 13:52:34'),
	(62, 'ADM011', 011, 'ADM', 1, 1, 1631584873, 'none', '', 'None,image', 'Late', 1631621603, 'Over Time', '2022-02-22 13:52:34'),
	(63, 'QCD027', 027, 'QCD', 6, 2, 1632109417, 'this is a demo note!', '', 'None,image', 'Late', 1632109437, 'Early', '2022-02-22 13:52:34'),
	(64, 'ACD002', 002, 'ACD', 2, 3, 1632109840, 'demo demo', '', 'None,image', 'On Time', 1632109845, 'Early', '2022-02-22 13:52:34'),
	(65, 'STD026', 026, 'STD', 1, 2, 1632109903, 'test', '', 'None,image', 'Late', 1632109905, 'Early', '2022-02-22 13:52:34'),
	(66, 'STD026', 026, 'STD', 1, 6, 1645488228, 'In the field...', 'item-220222-054c22c14a.jpg', 'None', 'On Time', 1645509913, 'Early', '2022-02-22 13:52:34'),
	(67, 'SCD029', 029, 'SCD', 1, 4, 1645510512, 'on site (in the office)...', 'item-220222-7ef70181e3.jpg', 'None', 'Late', 1645510600, 'Early', '2022-02-22 13:15:12');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.department
CREATE TABLE IF NOT EXISTS `department` (
  `id` char(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.department: ~8 rows (approximately)
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`, `name`) VALUES
	('ACD', 'Accounting Department'),
	('ADM', 'Admin Department'),
	('HRD', 'Human Resource Department'),
	('PCD', 'Production Controller Department'),
	('PLD', 'Planner Department'),
	('QCD', 'Quality Control Department'),
	('SCD', 'Security Department'),
	('STD', 'Store Department');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gender` char(1) NOT NULL,
  `image` varchar(128) NOT NULL,
  `birth_date` date NOT NULL,
  `hire_date` date NOT NULL,
  `shift_id` int(1) NOT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `datetime_added` timestamp NULL DEFAULT current_timestamp(),
  `datetime_updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `created_by` (`created_by`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.employee: ~16 rows (approximately)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`id`, `name`, `email`, `gender`, `image`, `birth_date`, `hire_date`, `shift_id`, `created_by`, `datetime_added`, `datetime_updated`) VALUES
	(001, 'Sad True', 'devi@gmail.com', 'F', 'default.png', '1996-06-06', '2020-03-01', 2, 'ADM011', '2022-02-22 13:13:14', '2022-02-22 13:46:38'),
	(002, 'Elsa Frozen', 'intan@gmail.com', 'F', 'item-220222-81a584d001.jpg', '1998-02-01', '2020-03-03', 2, 'admin', '2022-02-02 11:12:52', '2022-02-22 13:48:47'),
	(003, 'Robert Okinawa', 'herman@gmail.com', 'M', 'default.png', '1997-11-06', '2020-03-12', 2, 'admin', '2022-01-12 05:40:24', '2022-02-22 13:49:00'),
	(004, 'Jesse Jay', 'andi@gmail.com', 'M', 'default.png', '1998-01-01', '2020-03-01', 3, 'admin', '2022-01-02 09:45:01', '2022-02-22 13:49:13'),
	(005, 'Dirk Mitchell', 'clarita@gmail.com', 'F', 'default.png', '1996-04-06', '2020-04-08', 1, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:24'),
	(006, 'Emmy Awards', 'oktapan@gmail.com', 'F', 'default.png', '1999-11-04', '2020-04-01', 1, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:25'),
	(007, 'Miguel Cotto', 'mgb@gmail.com', 'M', 'default.png', '2000-10-29', '2020-03-01', 2, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:25'),
	(008, 'Stephen Yee', 'weve@gmail.com', 'M', 'default.png', '2000-11-07', '2020-03-01', 1, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:26'),
	(009, 'Yvonne Lee', 'desi@gmail.com', 'F', 'default.png', '1994-07-05', '2020-04-01', 2, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:26'),
	(010, 'Blake Griffin', 'ddry@gmail.com', 'M', 'default.png', '2000-12-01', '2020-04-06', 3, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:27'),
	(011, 'Marcus Cousin', 'udin@gmail.com', 'M', 'default.png', '1993-10-12', '2020-05-03', 1, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:27'),
	(024, 'Vernon Bell', '123@fmail.com', 'M', 'default.png', '2001-12-31', '2020-04-28', 1, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:28'),
	(025, 'Admin ', 'admin@admin.com', 'M', 'default.png', '0000-00-00', '0000-00-00', 0, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:29'),
	(026, 'Christine Go', 'christine@gmail.com', 'F', 'item-210516-ab8e9ef52f.jpg', '1995-04-01', '2021-05-16', 1, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:29'),
	(027, 'Johnny Cash', 'johnny@mail.com', 'M', 'default.png', '1993-04-01', '2021-08-13', 6, 'admin', '2022-02-22 13:13:14', '2022-02-22 13:46:37'),
	(029, 'TEST TEST', 'jamesofter@gmail.com', 'M', 'item-220222-49ec2c0464.jpg', '1998-01-07', '2022-02-01', 1, 'admin', '2022-02-22 07:13:31', NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.employee_department
CREATE TABLE IF NOT EXISTS `employee_department` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `employee_id` int(3) unsigned zerofill NOT NULL,
  `department_id` char(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_department_ibfk_1` (`employee_id`),
  KEY `employee_department_ibfk_2` (`department_id`),
  CONSTRAINT `employee_department_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employee_department_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.employee_department: ~15 rows (approximately)
/*!40000 ALTER TABLE `employee_department` DISABLE KEYS */;
INSERT INTO `employee_department` (`id`, `employee_id`, `department_id`) VALUES
	(1, 001, 'HRD'),
	(2, 002, 'ACD'),
	(3, 003, 'QCD'),
	(4, 004, 'SCD'),
	(5, 005, 'STD'),
	(6, 006, 'ACD'),
	(7, 007, 'PLD'),
	(8, 008, 'STD'),
	(9, 009, 'STD'),
	(10, 010, 'PCD'),
	(21, 011, 'ADM'),
	(25, 024, 'HRD'),
	(26, 026, 'STD'),
	(27, 027, 'QCD'),
	(29, 029, 'SCD');
/*!40000 ALTER TABLE `employee_department` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.location
CREATE TABLE IF NOT EXISTS `location` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.location: ~5 rows (approximately)
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`id`, `name`) VALUES
	(1, 'Home'),
	(2, 'Office'),
	(3, 'Store'),
	(4, 'Site'),
	(6, 'Field');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.shift
CREATE TABLE IF NOT EXISTS `shift` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `start` time NOT NULL,
  `end` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.shift: ~6 rows (approximately)
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` (`id`, `start`, `end`) VALUES
	(1, '08:00:00', '16:00:00'),
	(2, '13:00:00', '21:00:00'),
	(3, '18:00:00', '02:00:00'),
	(4, '03:15:02', '02:05:05'),
	(5, '07:00:00', '18:25:00'),
	(6, '01:00:00', '12:00:00');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(6) NOT NULL,
  `password` varchar(128) NOT NULL,
  `employee_id` int(3) unsigned zerofill NOT NULL,
  `role_id` int(1) NOT NULL,
  `qrcode` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `employee_id` (`employee_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.users: ~9 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `username`, `password`, `employee_id`, `role_id`, `qrcode`) VALUES
	(1, 'ACD002', '$2y$10$sMK6ZpCQ9jNtj/k9E304Pu298U7p.I7zgV7zOf4XcK6BS3NNIL7Wa', 002, 2, 'qr_none.jpg'),
	(2, 'ADM011', '$2y$10$BKpQcs4XKavCcYdFWujzx.Xqb7r9eNkDrOYss2VNXrMJUUpm1agUC', 011, 2, 'ADM011.png'),
	(3, 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 025, 1, 'qr_none.jpg'),
	(4, 'HRD001', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 001, 2, 'qr_none.jpg'),
	(5, 'PCD010', '$2y$10$BKpQcs4XKavCcYdFWujzx.Xqb7r9eNkDrOYss2VNXrMJUUpm1agUC', 010, 2, 'PCD010.png'),
	(6, 'QCD027', '$2y$10$peALJo.JKZyD6uMBd41UfuHGQSJe7ExOfDhPITvDbSRRXeWUGY9xy', 027, 2, 'QCD027.png'),
	(10, 'SCD029', '$2y$10$uubyRcGfVs5E09.L1GbdQ.z9DbSHk4oz.Lm0a1O6oVUmcbx5eYohe', 029, 2, 'SCD029.png'),
	(7, 'STD005', '$2y$10$hr35h1fIySFYCSRVL2jRD.RuYa9WtJCEJkkqvQfPboYK7VwURpLim', 005, 2, 'qr_none.jpg'),
	(8, 'STD008', '$2y$10$8PGnFaiZPYtcIGrwzMmVZuNKbUb/A88f0NZOA9QVgHaUIJ6ddg.Si', 008, 2, 'qr_none.jpg'),
	(9, 'STD026', '$2y$10$UVfsdtU7.RkAaMjf3H8VN.V8Eg6QZc3PPU6sWuPwo6fZcc6w9Zl2O', 026, 2, 'qr_none.jpg');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.user_access
CREATE TABLE IF NOT EXISTS `user_access` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `role_id` int(1) NOT NULL,
  `menu_id` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_access_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `user_access_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.user_access: ~5 rows (approximately)
/*!40000 ALTER TABLE `user_access` DISABLE KEYS */;
INSERT INTO `user_access` (`id`, `role_id`, `menu_id`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(3, 2, 3),
	(4, 2, 4),
	(5, 1, 5);
/*!40000 ALTER TABLE `user_access` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.user_menu
CREATE TABLE IF NOT EXISTS `user_menu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.user_menu: ~5 rows (approximately)
/*!40000 ALTER TABLE `user_menu` DISABLE KEYS */;
INSERT INTO `user_menu` (`id`, `menu`) VALUES
	(1, 'Admin'),
	(2, 'Master'),
	(3, 'Attendance'),
	(4, 'Profile'),
	(5, 'Report');
/*!40000 ALTER TABLE `user_menu` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.user_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` (`id`, `name`) VALUES
	(1, 'Admin'),
	(2, 'Employee');
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;

-- Dumping structure for table dtr_ci.user_submenu
CREATE TABLE IF NOT EXISTS `user_submenu` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `menu_id` int(2) NOT NULL,
  `title` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `is_active` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `user_submenu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `user_menu` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table dtr_ci.user_submenu: ~10 rows (approximately)
/*!40000 ALTER TABLE `user_submenu` DISABLE KEYS */;
INSERT INTO `user_submenu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
	(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
	(2, 2, 'Department', 'master', 'fas fa-fw fa-building', 1),
	(3, 2, 'Shift', 'master/shift', 'fas fa-fw fa-exchange-alt', 0),
	(4, 2, 'Employee', 'master/employee', 'fas fa-fw fa-id-badge', 1),
	(5, 2, 'Location', 'master/location', 'fas fa-fw fa-map-marker-alt', 0),
	(6, 3, 'Attendance Form', 'attendance', 'fas fa-fw fa-clipboard-list', 1),
	(7, 3, 'Statistics', 'attendance/stats', 'fas fa-fw fa-chart-pie', 1),
	(8, 4, 'My Profile', 'profile', 'fas fa-fw fa-id-card', 1),
	(9, 2, 'Users', 'master/users', 'fas fa-fw fa-users', 1),
	(11, 5, 'Print Report', 'report', 'fas fa-fw fa-paste', 1);
/*!40000 ALTER TABLE `user_submenu` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
