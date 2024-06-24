--Admin table
CREATE TABLE `Admin` (
  `Id` int(10) NOT NULL,
  `Prenom` varchar(50) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--PK
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`Id`);

--AUTO INCREMENT

ALTER TABLE `Admin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
  
  
  
--Class Tabele
  
  CREATE TABLE `Class` (
  `Id` int(10) NOT NULL,
  `Designation` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--PK
ALTER TABLE `Class`
  ADD PRIMARY KEY (`Id`);
  
 --AUTO INCREMENT
 ALTER TABLE `Class`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
  
 --Enseignat Table
 
 CREATE TABLE `Enseignant` (
  `Id` int(10) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `moduleId` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--PK

ALTER TABLE `Enseignant`
  ADD PRIMARY KEY (`Id`);
  
--AUTO INCREMENT
ALTER TABLE `Enseignant`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
  
--Etudiant Table

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

--PK
ALTER TABLE `Etudiant`
  ADD PRIMARY KEY (`Id`);
  
--AUTO INCREMENT

ALTER TABLE `Etudiant`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
  
--Absence table
CREATE TABLE `Absence` (
  `Id` int(10) NOT NULL,
  `admissionNo` varchar(255) NOT NULL,
  `classId` varchar(10) NOT NULL,
  `moduleId` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--PK
ALTER TABLE `Absence`
  ADD PRIMARY KEY (`Id`);
  
--AAUTO INCRIMENT
ALTER TABLE `Absence`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;
  
  
