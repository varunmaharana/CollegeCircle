-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2022 at 08:12 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collegecircle`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `eid` int(5) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `resource_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`eid`, `date`, `title`, `description`, `resource_link`) VALUES
(1, '2022-06-21', 'Yoga Day Celebration', 'This is inform to all students that there will be yoga day celebration in our college on 21st  June.', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(2, '2022-09-05', 'Sports Event', 'This is inform to all students the the Sports Events start from 18th December to 21 december. Interested Students can give theri names to Your class teachers.', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(3, '2022-09-24', 'Rites of Spring', 'The Rites of Spring annual festival at BITR is two weekends of pure music bliss , “Music City Raipur”.', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(4, '2022-10-03', 'Painting Competition ', 'Color Painting\r\nRegistration Fee:FREE\r\nPrize money: 1st - Rs.2000/- ,2nd - Rs.1000/-\r\nFor More details contact: Muhammed Safwan : 8590672929\r\n', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(5, '2022-11-26', 'Singing Competition', 'This is inform to all students that Singing competitaion will be held on 26th November . Those who are interest in can fill the form as soon as possible.', ''),
(6, '2022-11-17', 'National Level Technical Symposium 2022', 'Paper presentation\r\nTech Quiz\r\nPhotography\r\nMultimedia presentation\r\nBrushless painting', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(7, '2022-08-29', 'LAKSHYA', 'LAKSHYA Is An Inter University Sports, Cultural Fest Which Is Hosted By The University Annually. It Provides An Opportunity To All The Students Of Various Colleges/University To Compete And Showcase Their Talent In Various Fields Of Club, Sports And Cultural Events.', ''),
(8, '2022-10-31', 'Workshop', 'One Day National Level Practical Workshop on Arduino.', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(9, '2022-11-15', 'International One Day Workshop on Ethical Hacking 2K22', 'Workshop Title : International one day workshop on Ethical Hacking 2k22\r\nDate: 13th November 2022\r\nDay: Sunday\r\nTimings : 11.00 AM to 04.00 PM\r\nTotal Cost : Rs.900/-\r\nMode of payment : online\r\nVenue: BIT Raipur', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(10, '2022-11-16', 'Python Workshop', 'TOP ENGINEERS is an organization which is run by MIT-ANNA UNIVERSITY ALUMNI, Chennai. TOP ENGINEERS specializes in providing hands on experience on industrial practices to its participants through various workshops, seminars and other means by renowned subject matter experts and researchers to bring out the real world experience.', '');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int(5) NOT NULL,
  `date_of_joining` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `nature_of_association` varchar(30) NOT NULL,
  `department` varchar(50) NOT NULL,
  `designation` varchar(300) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob_no` bigint(20) NOT NULL,
  `area_of_interest` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `date_of_joining`, `title`, `fname`, `nature_of_association`, `department`, `designation`, `qualification`, `email`, `mob_no`, `area_of_interest`) VALUES
(1, '2011-10-13', 'Sr. Assistant Professor,HOD', 'Prof. Seira Shinde', 'REGULAR', 'Computer Science Engineering', 'H.O.D.(CSE) , ASSISTANT PROFESSOR ', 'PH.D.(PURSUING), IIM EXECUTIVE CERTIFICATION ON (DATA SCIENCE USING PYTHON ) , M.TECH. (SOFTWARE ENGINEERING ) , B.E. (COMPUTER SCIENCE & ENGINEERING)', 'seira.tak@bitraipur.ac.in', 8349143891, 'intelligent systems, machine learning, data (text) mining, educational data mining, soft computing, matlab. '),
(2, '2020-01-31', 'Associate Professor ', 'Dr. Padmavati Shrivastava ', 'REGULAR', 'Computer Science Engineering', 'ASSOCIATE PROFESSOR', 'PH.D(CSE)', 'padmavati.shrivastava@bitraipur.ac.in', 9826968916, 'data mining, machine learning , pattern recognition, digital image processing, ai, blockchain, soft computing '),
(3, '2010-07-01', 'Associate Professor,Exam Superintendent', 'Prof. Omprakash Barapatre', 'REGULAR', 'Computer Science Engineering', 'ASSISTANT PROFESSOR', 'M.TECH. (COMPUTER SCIENCE AND ENGINEERING), B.E. (COMPUTER SCIENCE AND ENGINEERING)', 'omprakashbarapatre@bitraipur.ac.in', 9893484852, 'design of algorithms, data structures, computer network, data mining, image processing'),
(4, '2011-08-06', 'Sr. Assistant Professor,Alumni Prof. Incharge', 'Prof. Aditya Tiwari', 'REGULAR', 'Computer Science Engineering', 'ASSISTANT PROFESSOR', 'M.TECH. (CSE)', 'adityarise0609@bitraipur.ac.in', 8770196540, 'data structures and algorithms, data mining, soft computing, big data, computer graphics.'),
(5, '2017-09-12', 'Assistant Professor', '\r\nProf. Shashi Kant Mishra', 'REGULAR', 'Computer Science Engineering', 'ASSISTANT PROFESSOR', 'M.TECH.(CSE), M.TECH(MULTIMEDIA TECHNOLOGY)', 'shashi.mishra@bitraipur.ac.in', 7224079987, 'programming langauages(c, c++, java), artificial intelligence, machine learning, deep learning, and related fields.'),
(6, '2012-10-20', 'Sr. Assistant Professor', 'Prof. Narendra Kumar Dewangan', 'REGULAR', 'Computer Science Engineering', 'SR. ASSISTANT PROFESSOR', 'M.TECH(CSE),MSC.(CSE),DCHT', 'narendra.bit@bitraipur.ac.in', 9827111068, '\r\nweb application, big data, image encryption, iot, sql database.'),
(7, '2016-07-07', 'Pro. Tem. Lecturer ', 'Prof. Vinod Gendre', 'REGULAR', 'Computer Science Engineering', 'PRO TEM LECTURER', 'BE, MTECH(PURSUE)', 'vinod.gendre@bitraipur.ac.in', 8959477388, 'data science using python, cryptography and network security, data analytics, artificial intelligent. '),
(8, '2019-07-04', 'Assistant Professor', 'Prof. Sana Tak', 'REGULAR', 'Computer Science Engineering', 'ASSISTANT PROFESSOR', 'PH.D. PURSUING (CSE)', 'sana.tak@bitraipur.ac.in', 9993788659, '\r\nmachine learning, data mining, iot, network simulators, blockchain'),
(9, '2021-02-15', 'Assistant Professor', 'Prof. Kajal Tiwari', 'ADHOC', 'Computer Science Engineering', 'ASSISTANT PROFESSOR', 'B.E(IT), M.TECH(CSE)', 'sharma.kajal.19@gmail.com', 9977911720, 'android app development cloud computing web development'),
(10, '2022-05-30', 'Assistant Professor', 'Prof. Aparna Pandey', 'REGULAR', 'Computer Science Engineering', 'ASSISTANT PROFESSOR', 'PH.D PURSUING(CSE), M.TECH(CSE), B.E.(COMPUTER SCIENCE & ENGINEERING)', 'aparna.pandey@bitraipur.ac.in', 0, ''),
(11, '2012-02-18', 'Sr. Assistant Professor, HOD', 'Prof. Ankit Shinde', 'REGULAR', 'Civil Engineering', 'ASSISTANT PROFESSOR', 'B.E (CIVIL),M.TECH (ENVIRONMENT ENGG.)', 'ankitshinde07@bitraipur.ac.in', 9406172442, 'water supply engg., waste water engg., solid waste management, surveying. '),
(12, '2010-03-16', 'Sr. Assistant Professor ', 'Prof. Vaibhav P Deshpande', 'REGULAR', 'Civil Engineering', 'HEAD OF DEPARTMENT', 'M.TECH', 'Dvaibhav86@bitraipur.ac.in', 8349450054, 'water resources developments , irrigation , ground water.'),
(13, '2009-05-01', 'Associate Professor, Dean Infrastructure', 'Dr. Sri Ram Krishna Mishra', 'REGULAR', 'Civil Engineering', 'PROFESSOR AND DEAN', 'PHD(CIVIL), ME(STRUCTURE), BTECH(CONSTRUCTION MANAGEMENT)', 'rkmishra4776@gmail.com', 9826741049, 'structure, sustainable materials and technology, soil structure interaction, crack identification in concrete, geopolymer concrete '),
(14, '2021-06-28', 'Sr. Assistant Professor ', '\r\nProf. Manoj Kumar Pandey ', 'REGULAR', 'Civil Engineering', 'ASSISTANT PROFESSOR', 'M.TECH ', 'manojpandeynit@bitraipur.ac.in.com', 7067882625, 'engineering hydrology engineering geology environmental engineering '),
(15, '2021-01-18', 'Assistant Professor', 'Prof. Nikhil Bajpayee', 'REGULAR', 'Civil Engineering', 'ASST.PROFESSOR', 'M.TECH', 'nikhil.bajpayee@bitraipur.ac.in', 8871436480, 'transportation engineering, traffic engineering, geotech engineering, estimation, civil engineering drawing '),
(16, '2017-07-14', 'Assistant Professor', 'Prof. Deepmala Pandey', 'REGULAR', 'Civil Engineering', 'ASSISTANT PROFESSOR', 'MTECH STRUCTURAL ENGINEERING', 'deepmala.pandey@bitraipur.ac.in', 0, 'rcc design, concrete technology, building material, structural analysis '),
(17, '2021-07-01', 'Assistant Professor', 'Prof. K. Anand Babu', 'REGULAR', 'Civil Engineering', 'ASSISTANT PROFESSOR', 'MTECH STRUCTURES', 'kanandbabu@bitraipur.ac.in', 8878225353, '\r\nquantity estimation , structure analysis , rcc and steel study '),
(18, '2009-07-15', 'Director', 'Prof. Dr. T. Ramarao', 'REGULAR', 'Mechanical Engineering', 'DIRECTOR BIT RAIPUR, PROFESSOR (DEPARTMENT OF MECHANICAL ENGINEERING)', 'PH. D. (ENVIRO-MECH ENGINEERING) ', 'tramarao@bitraipur.ac.in', 7898351444, 'enviro-mech engineering, energy system and pollution, mechanical design'),
(19, '2009-07-15', 'Associate Professor, HOD', '\r\nProf. Manish Kumar Mishra ', 'REGULAR', 'Mechanical Engineering', 'ASSOCIATE PROFESSOR & HEAD, TEQIP COORDINATOR', 'PHD(P), EMBA, M TECH (ENERGY SYSTEM & POLLUTION, NITRR), MCAD/CAM/CAE (CIPET, HYDERABAD), BE (MECHANICAL ENGINEERING),ADCA', 'mishramanish68@bitraipur.ac.in', 9926001133, 'mems, luminescence, cad/cam, strength of materials, industrial safety'),
(20, '2010-09-25', 'Associate Professor(adhoc) ', 'Prof. Jaykant Gupta', 'REGULAR', 'Mechanical Engineering', 'ASSOCIATE PROFESSOR(ADHOC)', 'PH.D.(P) NIT RAIPUR, M. TECH. (PRODUCTION ENGINEERING, NIT ROURKELA), B.E. (MECHANICAL ENGINEERING)', 'jaykantgupta@bitraipur.ac.in', 0, 'production engineering, welding technology '),
(21, '2012-02-12', 'Assistant Professor ', '\r\nProf. Dileshwar Kumar Sahu ', 'REGULAR', 'Mechanical Engineering', 'SR ASSISTANT PROFESSOR', 'PH D(P-NITRR) M TECH (PRODUCTION ENGG) BE(MECH ENGG)', 'diluonthegate@bitraipur.ac.in', 9893587811, 'production technology, industrial engg & management, erp, robotics, machine drawing '),
(22, '2020-10-07', 'Associate Professor ', 'Dr. S. S. K. Deepak', 'REGULAR', 'Mechanical Engineering', 'ASSISTANT PROFESSOR', 'PH.D. - MECH. ENGG., M.E. - PRODUCTION ENGG. (HONS.), B.E. - MECHANICAL ENGG.', 'ssk.deepak@bitraipur.ac.in', 8109124813, 'production engineering, air pollution and control, nano-technology.'),
(23, '2016-11-26', 'Assistant Professor', 'Prof. Sanjay Sahu', 'REGULAR', 'Mechanical Engineering', 'ASSISTANT PROFESSOR', 'M.TECH', 'sanjayksahu06@gmail.com', 7770916888, 'operation research, optimization, industrial management '),
(24, '2017-07-04', 'Assistant Professor', 'Prof. Abhilash Trivedi', 'REGULAR', 'Mechanical Engineering', 'ASSISTANT PROFESSOR', 'M.TECH (INDUSTRIAL ENGINEERING & MANAGEMENT) ', 'abhilashtrivedi@bitraipur.ac.in', 8966000058, 'supply chain management, automobile engineering '),
(25, '2019-03-13', 'Assistant Professor ', 'Prof. Dulendra Kumar Patle', 'REGULAR', 'Mechanical Engineering', 'ASSISTANT PROFESSOR', 'M.TECH(HONS.)(INDUSTRIAL SAFETY ENGINEERING), B.E.(HONS.) (MECHANICAL ENGINEERING)', 'dulendra.patle@bitraipur.ac.in', 9340274640, 'industrial safety, manufacturing engineering, engineering mechanics'),
(44, '2021-07-01', 'Principal & Professor', 'Dr. Anup Mishra', 'REGULAR', 'Electrical and Electronics Engineering', 'PRINCIPAL', 'PH.D', 'principal@bitraipur.ac.in', 9425242425, 'electrical resistivity of oxide materials. '),
(45, '2021-07-01', 'Professor, Dean Academic ', 'Dr. Abhishek Verma', 'REGULAR', 'Electrical and Electronics Engineering', 'PROFESSOR', 'PH.D', 'abhishekverma@bitraipur.ac.in', 9713248830, 'electronic device, mos characterization '),
(46, '0000-00-00', 'Associate Professor,HOD ', '\r\nProf. Abhishek Kumar Sahu ', 'REGULAR', 'Electrical and Electronics Engineering', 'ASSISTANT PROFESSOR', 'M.TECH. (POWER SYSTEM ENGG.), B.E. (ELECTRICAL ENGG.)', 'hod-eee@bitraipur.ac.in', 9827410517, 'power system, flexible ac transmission line, power quality, renewable energy sources'),
(47, '2010-07-09', 'Sr. Assistant Professor, Prof. Incharge First Year', 'Prof. Abhinab Shukla', 'REGULAR', 'Electrical and Electronics Engineering', 'SR.ASST.PROF.', 'PH.D(PURSUING),M.TECH (POWER ELEX)', 'abhinab.shukla@bitraipur.ac.in', 8847828268, '\r\niot,ai and machine learning ,power system , machine fault '),
(48, '2013-07-10', 'Assistant Professor', 'Prof. Jaideep Dewangan', 'REGULAR', 'Electrical and Electronics Engineering', 'ASSISTANT PROFESSOR', 'M.TECH', 'jaideepdewangan11@gamil.com', 7974180981, 'microprocessor, advanced microprocessor, microcontroller & embedded system '),
(49, '2014-02-04', 'Assistant Professor', 'Prof. Sunil Kumar', 'REGULAR', 'Electrical and Electronics Engineering', '[VALUE-7]', '[VALUE-8]', '[value-9]', 0, 'solar pv system design, digital system design, microelectronics, vlsi front end design, fpga implementation'),
(50, '2017-07-10', 'Assistant Professor, Prof. Incharge SPIC MACAY', 'Prof. Rashmi Mishra', 'REGULAR', 'Electrical and Electronics Engineering', 'ASSISTANT PROFESSOR', 'PHD PERSUING', 'rashmiimishra@bitraipur.ac.in', 8225011187, 'power system, switch gear protection, electrical machines, electrical measurement & instrumentation & vlsi design '),
(51, '2021-02-01', 'ASSISTANT PROFESSOR ', 'Prof. hemant verma', 'REGULAR', 'Electrical and Electronics Engineering', 'ASSISTANT PROFESSOR', 'M.TECH', 'hemantverma@bitraipur.ac.in', 7879024280, 'power system, renewable energy sources, microgrids'),
(52, '2021-03-01', 'Pro-Tem-Lecturer', 'Prof. Ritu Bhoi', 'REGULAR', 'Electrical and Electronics Engineering', 'PRO TERM LECT. ', 'B.E (EEE)', 'RITU.BHOI@bit.raipur.ac.in', 9399739318, 'teaching field '),
(53, '2012-06-05', 'Sr. Assistant Professor ', 'Prof. Shravan Kumar Singh', 'REGULAR', 'Electronics & Telecommunication Engineering', 'ASSISTANT PROFESSOR', 'PH.D. (P)', 'srvnksingh@bitraipur.ac.in', 8889231365, 'electronics device & circuits, analog circuit design, solar photovoltics & applications'),
(54, '2012-07-16', '\r\nSr. Assistant Professor ', 'Prof. Praveen Tiwari', 'REGULAR', 'Electronics & Telecommunication Engineering', 'SR. ASSISTANT PROFESSOR', 'M.TECH', 'praveen@bitraipur.ac.in', 9109103065, 'satellite communication and television broadcasting '),
(55, '2011-11-21', 'Adhoc Asso. Professor,HOD', 'Prof. K. Ganpati S. Sharma', 'REGULAR', 'Electronics & Telecommunication Engineering', 'ASSOCIATE PROFESSOR(A)', 'M.TECH, PH.D(P)', 'ganpatishrinivas01@bitraipur.ac.in', 9424196370, 'industrial process automation & biomedical instrumentation'),
(56, '2012-07-02', 'Sr. Asst. Professor, Prof. Incharge T&P', 'Dr. Prof. Md. Khwaja Mohiddin', 'REGULAR', 'Electronics & Telecommunication Engineering', 'SENIOR ASSISTANT PROFESSOR', 'PH.D', 'mkm7388@bitraipur.ac.in', 7869896376, 'wireless communications, wireless sensor networks, image processing, internet of things (iot), speech/video processing, embedded systems, latex programming '),
(57, '2019-04-01', 'Assistant Professor', 'Prof. Pooja Agnihotri', 'REGULAR', 'Electronics & Telecommunication Engineering', 'ASSISTANT PROFESSOR', 'M.TECH. , B.E.', 'pooja.agnihotri@bitraipur.ac.in', 0, 'optoelectronics, thin films fabrication & characterization, nano science, optical communication '),
(58, '2019-07-22', 'Assistant Professor', '\r\nProf. Neha Sharma ', 'REGULAR', 'Electronics & Telecommunication Engineering', 'ASSISTANT PROFESSOR', 'M. TECH.', 'neha.sharma@bitraipur.ac.in', 0, 'digital image processing ');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `nid` int(5) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(500) NOT NULL,
  `resource_link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`nid`, `date`, `title`, `description`, `resource_link`) VALUES
(1, '2029-09-22', 'Notice for 5th Semester\'s Student', 'It is notify that B.tech 5th Semester regular OFFLINE classes will commence as per the following schedule.B.tech course start from 30th September .\r\n', ''),
(2, '2022-09-29', 'Notice for FEE PAYMENT', 'It is notify that last date for Fee payment is 19th October.\r\nMoreover, Students may be asked to deposit the semester fees latest by prescribed schedule.\r\nLate submission of fees invites  fine @ Rs. 5/-  per day.\r\nStudents who have previous semester dues should also clear the same immediately\r\n', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(3, '2022-09-22', 'BIT Raipur Training and Placement Cell', 'This form needs to be filled by all the current students of B.Tech./B.Com./B.A. of BIT Raipur for Registration in Training and Placement Cell.Those who have not filled this form are informed to fill it by today. Pls treat this as urgent. Ignore this message, if you have already filled.\r\n', '\r\nhttps://docs.google.com/forms/d/1trU20_X4ZK_0hxuQI5R67vgxZ5zP9pdSL8aYEanlraM/edit\r\n'),
(4, '2022-09-30', 'Durga Puja Holiday', 'It is inform to all students that 1st October is non-working day, there will be no classes.', ''),
(5, '2022-09-02', 'Dussehra Holiday', 'This is to inform all students that the college would remain closed for Dussehra holidays from 3rd October to 5th October 2022. The college will reopen on 6th October 2022. ', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(6, '2022-10-21', 'Diwali Holiday', 'All the students kindly make a note that tomorrow is nonworking day for all of you and all of you need to report to college from 27th october 2022. \r\nWishing you all in advance happy and safe Diwali\r\n', ''),
(7, '2022-10-28', 'Chhath Puja', 'It is notify that holiday for Chhath Puja will be on 30th October. There will be no classes.', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(8, '2022-10-29', 'Notice for CLASS TEST-1', 'It is notify that B.Tech 5th Semester Class Test-1 will start from 5th November and End on 10th November.', ''),
(9, '2022-11-07', 'Guru Nanak Jayanti', 'This is to inform all students that the college would remain closed for Guru Nanak Jayanti holidays on 8th November. The college will reopen on 9th November 2022. ', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf'),
(10, '2022-12-21', 'Christmas Holiday', 'This is to inform all students that the college would remain closed for Christmas holidays from 24th to 26th December . The college will reopen on 27th December 2022', 'https://drive.google.com/drive/folders/1YadL3DgBtd1MKKslRqpePPVVVr_yWcrf');

-- --------------------------------------------------------

--
-- Table structure for table `roadmap`
--

CREATE TABLE `roadmap` (
  `rid` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roadmap`
--

INSERT INTO `roadmap` (`rid`, `title`, `link`, `type`) VALUES
(1, 'Full Stack Web Development', 'https://www.geeksforgeeks.org/roadmap-to-become-a-web-developer-in-2022/', 'field'),
(2, 'Android Development', 'https://www.geeksforgeeks.org/best-way-to-become-android-developer-a-complete-roadmap/', 'field'),
(3, 'Data Structure And Algorithms', 'https://www.geeksforgeeks.org/complete-roadmap-to-learn-dsa-from-scratch/', 'field'),
(4, 'Computer Network', 'https://www.geeksforgeeks.org/last-minute-notes-computer-network/', 'field'),
(5, 'Operating System', 'https://www.geeksforgeeks.org/operating-systems/', 'field'),
(6, 'Data Base Management System', 'https://www.geeksforgeeks.org/dbms/', 'field'),
(7, 'Data Science', 'https://www.geeksforgeeks.org/how-to-become-data-scientist-a-complete-roadmap/', 'field');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `roadmap`
--
ALTER TABLE `roadmap`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `eid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `nid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `roadmap`
--
ALTER TABLE `roadmap`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
