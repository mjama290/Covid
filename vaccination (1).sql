

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `vaccination`
--

-- --------------------------------------------------------

--
-- Table structure for table `allergic_history`
--

CREATE TABLE `allergic_history` (
  `patient_id` int(25) DEFAULT NULL,
  `allergy_name` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allergic_history`
--

INSERT INTO `allergic_history` (`patient_id`, `allergy_name`, `Type`) VALUES
(1, 'Allergic rhinitis\r\n', 'c'),
(2, 'Allergic rhinitis\r\n', 'B'),
(3, 'Allergic rhinitis\r\n', 'c'),
(4, 'Allergic rhinitis\r\n', 'A'),
(5, 'Allergic rhinitis\r\n', 'c'),
(6, 'Allergic rhinitis\r\n', 'c'),
(7, 'Allergic rhinitis\r\n', 'B'),
(8, 'Allergic rhinitis\r\n', 'c'),
(9, 'Allergic rhinitis\r\n', 'A'),
(10, 'Allergic rhinitis\r\n', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(25) NOT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  `salary` int(50) DEFAULT NULL,
  `Hospital_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `qualification`, `salary`, `Hospital_name`) VALUES
(1, 'ahmad', 'MBBS', 1000, 'city Hospital'),
(2, 'ahmadali', 'MBBS', 1000, 'city Hospital'),
(3, 'ahmadfarooq', 'MBBS', 1000, 'city Hospital'),
(4, 'ahmad jamal', 'MBBS', 1000, 'general Hospital'),
(5, 'ahmad usman', 'MBBS', 1000, 'city Hospital'),
(6, 'ahmad furqan', 'MBBS', 1000, 'city Hospital'),
(7, 'ahmad misbah', 'MBBS', 1000, 'arif Hospital'),
(8, 'ahmad umer', 'MBBS', 1000, 'city Hospital'),
(9, 'ahmad ali', 'MBBS', 1000, 'city Hospital'),
(10, 'usman ahmad', 'MBBS', 1000, 'city Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `Hospital_name` varchar(50) NOT NULL,
  `infection_id` int(25) DEFAULT NULL,
  `available_bed` int(50) DEFAULT NULL,
  `Total_bed` int(50) DEFAULT NULL,
  `occup_bed` int(50) DEFAULT NULL,
  `covid_test` varchar(25) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`Hospital_name`, `infection_id`, `available_bed`, `Total_bed`, `occup_bed`, `covid_test`, `country`) VALUES
('arif Hospital', 1, 1000, 1500, 500, '+ve', 'USA'),
('SeattleHospital', 1, 1000, 1500, 500, '-ve', 'USA'),
('city Hospital', 1, 1000, 1500, 500, '+ve', 'USA'),
('Harboview Hospital', 1, 1000, 1500, 500, '+ve', 'USA'),
('General Hospital', 1, 1000, 1500, 500, '+ve', 'USA'),
('Swedish Hospital', 1, 1000, 1500, 500, '+ve', 'USA'),
('head Hospital', 1, 1000, 1500, 500, '-ve', 'USA'),
('jambo Hospital', 1, 1000, 1500, 500, '+ve', 'USA'),
('jingo Hospital', 1, 1000, 1500, 500, '-ve', 'USA'),
('khalid Hospital', 1, 1000, 1500, 500, '+ve', 'USA'),
('national Hospital', 1, 1000, 1500, 500, '+ve', 'iUSA');

-- --------------------------------------------------------

--
-- Table structure for table `infection`
--

CREATE TABLE `infection` (
  `infection_id` int(25) NOT NULL,
  `infection_name` varchar(50) NOT NULL,
  `infection_rate` varchar(50) DEFAULT NULL,
  `Number_of_infection` int(50) DEFAULT NULL,
  `medication` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `infection`
--

INSERT INTO `infection` (`infection_id`, `infection_name`, `infection_rate`, `Number_of_infection`, `medication`) VALUES
(1, 'Corona', '10', 23, '4'),
(2, 'Corona', '100', 230, '04'),
(3, 'Corona', '100', 23, '40'),
(4, 'Corona', '100', 23, '4'),
(5, 'Corona', '140', 23, '5'),
(6, 'Corona', '150', 23, '4'),
(7, 'Corona', '10', 23, '4'),
(8, 'Corona', '180', 23, '6'),
(9, 'Corona', '120', 23, '9'),
(10, 'Corona', '110', 23, '7');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `country` varchar(50) NOT NULL,
  `num_cases` int(25) DEFAULT NULL,
  `case_start_date` date DEFAULT NULL,
  `Population` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`country`, `num_cases`, `case_start_date`, `Population`) VALUES
('USA', 110000000, '2019-02-10', 100000),
('USA', 110000000, '2019-02-10', 100000000),
('USA', 1100, '2021-02-10', 100000),
('USA', 110000000, '2019-02-10', 100000000),
('USA', 110000000, '2019-02-10', 100000000),
('USA', 100, '2021-02-10', 100000),
('USA', 100, '2021-02-10', 100000),
('USA', 110000000, '2019-02-10', 100000000),
('USA', 1100, '2021-02-10', 100000),
('USA', 10, '2021-02-10', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(25) NOT NULL,
  `patient_email` varchar(50) DEFAULT NULL,
  `sickness_type` varchar(50) DEFAULT NULL,
  `severity` varchar(50) DEFAULT NULL,
  `Hospital_name` varchar(50) DEFAULT NULL,
  `age_range` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_email`, `sickness_type`, `severity`, `Hospital_name`, `age_range`) VALUES
(1, 'jhon@gmail.com', 'fever', 'full', 'city Hospital', 20),
(2, 'jhon1@gmail.com', 'fever', 'full', 'city Hospital', 20),
(3, 'jhon2@gmail.com', 'fever', 'full', 'city Hospital', 30),
(4, 'jhon@gmail.com', 'pain in head', 'full', 'city Hospital', 20),
(5, 'jhon@gmail.com', 'fever', 'full', 'city Hospital', 400),
(6, 'jhon@gmail.com', 'fever', 'full', 'city Hospital', 20),
(7, 'jhon@gmail.com', 'fever', 'full', 'general Hospital', 20),
(8, 'jhon@gmail.com', 'fever', 'full', 'city Hospital', 20),
(9, 'jhon@gmail.com', 'fever', 'full', 'city Hospital', 20),
(10, 'jhon@gmail.com', 'fever', 'full', 'arif Hospital', 20);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(25) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `patient_id` int(25) DEFAULT NULL,
  `vaccine_id` int(25) DEFAULT NULL,
  `doctor_id` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`report_id`, `description`, `patient_id`, `vaccine_id`, `doctor_id`) VALUES
(1, 'Health report ', 1, 1, 1),
(2, 'Health report ', 2, 2, 1),
(3, 'Health report ', 2, 1, 1),
(4, 'Health report ', 3, 5, 1),
(5, 'Health report ', 4, 1, 7),
(6, 'Health report ', 5, 4, 5),
(7, 'Health report ', 1, 1, 1),
(8, 'Health report ', 7, 3, 2),
(9, 'Health report ', 9, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `user_id` int(25) DEFAULT NULL,
  `patient_id` int(25) DEFAULT NULL,
  `symptoms_id` int(25) NOT NULL,
  `infection_id` int(25) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`user_id`, `patient_id`, `symptoms_id`, `infection_id`, `description`) VALUES
(1, 1, 1, 1, ' Fever'),
(1, 1, 2, 1, ' Fever'),
(3, 1, 3, 8, ' Fever'),
(1, 5, 4, 1, ' Fever'),
(2, 1, 5, 1, ' Fever'),
(1, 1, 6, 9, ' Fever'),
(1, 6, 7, 1, ' Fever'),
(1, 1, 8, 1, ' Fever'),
(2, 1, 9, 1, ' Fever'),
(1, 4, 10, 7, ' Fever');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(25) NOT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `age` int(25) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `case_start_date` date DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `Fname`, `Lname`, `age`, `gender`, `email`, `case_start_date`, `country`) VALUES
(1, 'jhon', 'wick', 12, 'Male', 'jhon@gmail.com', '2019-12-12', 'USA'),
(2, 'jhon2', 'wick2', 12, 'Male', 'jhon@gmail.com', '2019-12-12', 'USA'),
(3, 'jhon3', 'wick2', 12, 'Male', 'jhon3@gmail.com', '2019-12-12', 'USA'),
(4, 'jhon4', 'wick2', 12, 'Male', 'jhon3@gmail.com', '2019-12-12', 'USA'),
(5, 'jhon42', 'wick22', 12, 'Male', 'jhon32@gmail.com', '2019-12-12', 'USA'),
(6, 'jhony', 'wick22', 25, 'Male', 'jhon332@gmail.com', '2019-12-12', 'USA'),
(7, 'jhony', 'wick22', 25, 'Male', 'jhon332@gmail.com', '2019-12-12', 'USA'),
(8, 'jhony', 'wick22', 25, 'Male', 'jhon332@gmail.com', '2019-12-12', 'USA'),
(9, 'abraham', 'wick22', 25, 'Male', 'abraham2@gmail.com', '2019-12-12', 'USA'),
(10, 'abraham', 'wick22', 25, 'Male', 'abraham2@gmail.com', '2019-12-12', 'USA');

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `vaccine_id` int(25) NOT NULL,
  `vaccine_day` date DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `quantity` int(50) DEFAULT NULL,
  `vaccine_time` time(6) DEFAULT NULL,
  `patient_id` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccination`
--

INSERT INTO `vaccination` (`vaccine_id`, `vaccine_day`, `Type`, `quantity`, `vaccine_time`, `patient_id`) VALUES
(1, '0000-00-00', 'C', 2, '00:00:11.000000', 1),
(2, '0000-00-00', 'C', 2, '00:00:11.000000', 4),
(3, '0000-00-00', 'C', 3, '00:00:11.000000', 3),
(4, '0000-00-00', 'C', 2, '00:00:11.000000', 1),
(5, '0000-00-00', 'C', 5, '00:00:11.000000', 8),
(6, '0000-00-00', 'C', 2, '00:00:11.000000', 1),
(7, '0000-00-00', 'C', 2, '00:00:11.000000', 5),
(8, '0000-00-00', 'C', 4, '00:00:11.000000', 1),
(9, '0000-00-00', 'C', 2, '00:00:11.000000', 4),
(10, '0000-00-00', 'C', 4, '00:00:11.000000', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allergic_history`
--
ALTER TABLE `allergic_history`
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `Hospital_name` (`Hospital_name`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`Hospital_name`),
  ADD KEY `country` (`country`),
  ADD KEY `infection_id` (`infection_id`);

--
-- Indexes for table `infection`
--
ALTER TABLE `infection`
  ADD PRIMARY KEY (`infection_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`country`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `Hospital_name` (`Hospital_name`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `vaccine_id` (`vaccine_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD PRIMARY KEY (`symptoms_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `infection_id` (`infection_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD PRIMARY KEY (`vaccine_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `allergic_history`
--
ALTER TABLE `allergic_history`
  ADD CONSTRAINT `allergic_history_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`Hospital_name`) REFERENCES `hospital` (`Hospital_name`);

--
-- Constraints for table `hospital`
--
ALTER TABLE `hospital`
  ADD CONSTRAINT `hospital_ibfk_1` FOREIGN KEY (`country`) REFERENCES `location` (`country`),
  ADD CONSTRAINT `hospital_ibfk_2` FOREIGN KEY (`infection_id`) REFERENCES `infection` (`infection_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`Hospital_name`) REFERENCES `hospital` (`Hospital_name`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccination` (`vaccine_id`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `reports_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`);

--
-- Constraints for table `symptoms`
--
ALTER TABLE `symptoms`
  ADD CONSTRAINT `symptoms_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `symptoms_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`),
  ADD CONSTRAINT `symptoms_ibfk_3` FOREIGN KEY (`infection_id`) REFERENCES `infection` (`infection_id`);

--
-- Constraints for table `user_info`
--
ALTER TABLE `user_info`
  ADD CONSTRAINT `user_info_ibfk_1` FOREIGN KEY (`country`) REFERENCES `location` (`country`);

--
-- Constraints for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD CONSTRAINT `vaccination_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`);
COMMIT;
