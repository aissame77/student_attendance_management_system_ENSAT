

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+01:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ginf1_attendancemsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `Admin` (
  `Id` int(10) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `Admin` (`Id`, `Prenom`, `Nom`, `Email`, `password`) VALUES
(1, 'Admin', 'Admin', 'admin@mail.uae', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendance`
--

CREATE TABLE `Attendance` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `moduleId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendance`
--

INSERT INTO `Attendance` (`Id`, `admissionNo`, `classId`, `classArmId`, `sessionTermId`, `status`, `dateTimeTaken`) VALUES
(162, 'ASDFLKJ', '1', '2', '1', '1', '2020-11-01'),
(163, 'HSKSDD', '1', '2', '1', '1', '2020-11-01'),
(164, 'JSLDKJ', '1', '2', '1', '1', '2020-11-01'),
(172, 'HSKDS9EE', '1', '4', '1', '1', '2020-11-01'),
(171, 'JKADA', '1', '4', '1', '0', '2020-11-01'),
(170, 'JSFSKDJ', '1', '4', '1', '1', '2020-11-01'),
(173, 'ASDFLKJ', '1', '2', '1', '1', '2020-11-19'),
(174, 'HSKSDD', '1', '2', '1', '1', '2020-11-19'),
(175, 'JSLDKJ', '1', '2', '1', '1', '2020-11-19'),
(176, 'JSFSKDJ', '1', '4', '1', '0', '2021-07-15'),
(177, 'JKADA', '1', '4', '1', '0', '2021-07-15'),
(178, 'HSKDS9EE', '1', '4', '1', '0', '2021-07-15'),
(179, 'ASDFLKJ', '1', '2', '1', '0', '2021-09-27'),
(180, 'HSKSDD', '1', '2', '1', '1', '2021-09-27'),
(181, 'JSLDKJ', '1', '2', '1', '1', '2021-09-27'),
(182, 'ASDFLKJ', '1', '2', '1', '0', '2021-10-06'),
(183, 'HSKSDD', '1', '2', '1', '0', '2021-10-06'),
(184, 'JSLDKJ', '1', '2', '1', '1', '2021-10-06'),
(185, 'ASDFLKJ', '1', '2', '1', '0', '2021-10-07'),
(186, 'HSKSDD', '1', '2', '1', '0', '2021-10-07'),
(187, 'JSLDKJ', '1', '2', '1', '0', '2021-10-07'),
(188, 'AMS110', '4', '6', '1', '0', '2021-10-07'),
(189, 'AMS133', '4', '6', '1', '0', '2021-10-07'),
(190, 'AMS135', '4', '6', '1', '0', '2021-10-07'),
(191, 'AMS144', '4', '6', '1', '0', '2021-10-07'),
(192, 'AMS148', '4', '6', '1', '0', '2021-10-07'),
(193, 'AMS151', '4', '6', '1', '0', '2021-10-07'),
(194, 'AMS159', '4', '6', '1', '0', '2021-10-07'),
(195, 'AMS161', '4', '6', '1', '0', '2021-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `Class`
--

CREATE TABLE `Class` (
  `Id` int(10) NOT NULL,
  `Designation` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `Class` (`Id`, `className`) VALUES
(1, 'GINF1'),
(3, 'GINF1'),
(4, 'GINF2');

-- --------------------------------------------------------

--
-- Table structure for table `tblclassarms`
--

CREATE TABLE `Module` (
  `Id` int(10) NOT NULL,
  `designation` varchar(10) NOT NULL,
  `IdEnseignant` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `tblclassteacher`
--

CREATE TABLE `Enseignant` (
  `Id` int(10) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `moduleId` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclassteacher`
--

INSERT INTO `Enseignant` (`Id`, `firstName`, `lastName`, `emailAddress`, `password`, `phoneNo`, `classId`, `classArmId`, `dateCreated`) VALUES
(1, 'Will', 'Williams', 'teacher@mail.com', '32250170a0dca92d53ec9624f336ca24', '09089898999', '1', '2', '2020-10-31'),
(4, 'Demola', 'Ade', 'Kumolu@gmail.com', '32250170a0dca92d53ec9624f336ca24', '09672002882', '1', '4', '2020-11-01'),
(5, 'Ryan', 'McQuie', 'ryan@mail.com', '32250170a0dca92d53ec9624f336ca24', '7014560000', '3', '5', '2021-10-07'),
(6, 'John', 'Greenwood', 'jwood@mail.com', '32250170a0dca92d53ec9624f336ca24', '0100000030', '4', '6', '2021-10-07');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `Etudiant` (
  `Id` int(10) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `otherName` varchar(255) NOT NULL,
  `admissionNumber` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `classArmId` varchar(10) NOT NULL,
  `dateCreated` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `Etudiant` (`Id`, `firstName`, `lastName`, `otherName`, `admissionNumber`, `password`, `classId`, `classArmId`, `dateCreated`) VALUES
(1, 'Thomas', 'Griswold', 'none', 'AMS005', '12345', '1', '2', '2020-10-31'),
(3, 'Samuel', 'Rosella', 'none', 'AMS007', '12345', '1', '2', '2020-10-31'),
(4, 'Milagros', 'Lawson', 'none', 'AMS011', '12345', '1', '2', '2020-10-31'),
(5, 'Luis', 'Ayo', 'none', 'AMS012', '12345', '1', '4', '2020-10-31'),
(6, 'Sandra', 'Salgado', 'none', 'AMS015', '12345', '1', '4', '2020-10-31'),
(7, 'Smith', 'Mack', 'Mack', 'AMS017', '12345', '1', '4', '2020-10-31'),
(8, 'Juliana', 'Debiie', 'none', 'AMS019', '12345', '3', '5', '2020-10-31'),
(9, 'Richard', 'Grimmer', 'none', 'AMS021', '12345', '3', '5', '2020-10-31'),
(10, 'Jon', 'Boller', 'none', 'AMS110', '12345', '4', '6', '2021-10-07'),
(11, 'Aida', 'Hawley', 'none', 'AMS133', '12345', '4', '6', '2021-10-07'),
(12, 'Miguel', 'Bush', 'none', 'AMS135', '12345', '4', '6', '2021-10-07'),
(13, 'Sergio', 'Hammons', 'none', 'AMS144', '12345', '4', '6', '2021-10-07'),
(14, 'Lyn', 'Rogers', 'none', 'AMS148', '12345', '4', '6', '2021-10-07'),
(15, 'James', 'Dominick', 'none', 'AMS151', '12345', '4', '6', '2021-10-07'),
(16, 'Ethel', 'Quin', 'none', 'AMS159', '12345', '4', '6', '2021-10-07'),
(17, 'Roland', 'Estrada', 'none', 'AMS161', '12345', '4', '6', '2021-10-07');

-- --------------------------------------------------------

-
--
-- Indexes for table `tbladmin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblattendance`
--
ALTER TABLE `Attendance`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `Class`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblclassarms`
--

--
-- Indexes for table `tblclassteacher`
--
ALTER TABLE `Enseignant`
  ADD PRIMARY KEY (`Id`);

--
--
ALTER TABLE `Etudiant`
  ADD PRIMARY KEY (`Id`);

--


--
ALTER TABLE `Admin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblattendance`
--
ALTER TABLE `Attendance`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `Class`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
--
ALTER TABLE `Enseignant`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-
--
ALTER TABLE `Etudiant`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
