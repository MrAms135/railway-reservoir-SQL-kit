-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2025 at 07:21 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway_reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustId` int(11) NOT NULL,
  `PassengerName` varchar(20) DEFAULT NULL,
  `Contact` varchar(15) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL CHECK (`Age` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustId`, `PassengerName`, `Contact`, `Age`) VALUES
(10000001, 'Adarsh M S', '9633068519,9633', 21),
(10000002, 'Adhil Nazim Nazeer', '8129404771,8129', 21),
(10000003, 'Ajal Krishna A', '9544049005,9856', 22),
(10000004, 'Alan Johnson', '9067892356', 23),
(10000005, 'Amrithasmera V', '8765346700', 20),
(10000006, 'Anjana K Arjunan', '6795927545', 24),
(10000007, 'Arya C S', '8967556608,9987', 30),
(10000008, 'Aswin Edakkode', '9988007711', 18),
(10000009, 'Deepeshkumar K', '7790775678', 23),
(10000010, 'Fariha Abdul Wahab', '9078653210', 22),
(10000011, 'Gouthami.M.S', '9087440021', 23),
(10000012, 'Harisankar K', '8077654412', 26),
(10000013, 'Hima Prabhakar K', '8876009321', 29),
(10000014, 'Jishnu CR', '7790543321', 32),
(10000015, 'Kiran Raj P', '7754986532', 22),
(10000016, 'Lakshmi Nandana M S', '8976564322', 22),
(10000017, 'Nandana.C.J', '8799006544', 23),
(10000018, 'Roshin R Jacob', '7767980966', 23),
(10000019, 'Shalu Ajayan', '7767899098', 24),
(10000020, 'Shameema Nasrin', '9898786643', 22),
(10000021, 'Sona Vimal', '8744678789', 21),
(10000022, 'Varna Rojin KK', '9544048004', 20),
(10000023, 'Vishnu B', '8799876540', 22);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentId` int(11) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `TicketID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentId`, `Type`, `Amount`, `TicketID`) VALUES
(8967212, 'Cash', 600.00, 2001),
(8967213, 'Card', 800.00, 2002),
(8967214, 'Cash', 1000.00, 2003),
(8967215, 'Card', 1200.00, 2004),
(8967216, 'Cash', 1500.00, 2005),
(8967217, 'Card', 3000.00, 2006),
(8967218, 'UPI', 600.00, 2007),
(8967219, 'Cash', 800.00, 2008),
(8967220, 'Cash', 1000.00, 2009),
(8967221, 'UPI', 1200.00, 2010),
(8967222, 'Cash', 1500.00, 2011),
(8967223, 'UPI', 3000.00, 2012),
(8967224, 'Cash', 600.00, 2013),
(8967225, 'UPI', 800.00, 2014),
(8967226, 'Card', 1000.00, 2015),
(8967227, 'Cash', 1200.00, 2016),
(8967228, 'Cash', 1500.00, 2017),
(8967229, 'Cash', 3000.00, 2018),
(8967230, 'Cash', 1250.00, 2019),
(8967231, 'UPI', 1300.00, 2020),
(8967232, 'UPI', 1400.00, 2021),
(8967233, 'Cash', 1800.00, 2022),
(8967234, 'UPI', 350.00, 2023);

-- --------------------------------------------------------

--
-- Table structure for table `seating`
--

CREATE TABLE `seating` (
  `ClassType` varchar(10) NOT NULL,
  `ClassName` varchar(20) DEFAULT NULL,
  `BasicFareinRS` decimal(7,2) DEFAULT NULL CHECK (`BasicFareinRS` > 0),
  `NoOfSeats` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seating`
--

INSERT INTO `seating` (`ClassType`, `ClassName`, `BasicFareinRS`, `NoOfSeats`) VALUES
('1AC', 'FIRST AC', 1059.00, 16),
('2AC', 'SECOND AC', 625.00, 48),
('2S', 'SECOND SITTING', 75.00, 105),
('3AC', 'THIRD AC', 440.00, 72),
('CC', 'AC CHAIR CAR', 211.00, 90),
('GN', 'GENERAL', 10.00, 80),
('SL', 'SLEEPER', 220.00, 72);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TicketID` int(11) NOT NULL,
  `PassengerName` varchar(20) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Train_Id` int(11) DEFAULT NULL,
  `Source` varchar(20) DEFAULT NULL,
  `Destination` varchar(20) DEFAULT NULL,
  `ClassType` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TicketID`, `PassengerName`, `Date`, `Train_Id`, `Source`, `Destination`, `ClassType`) VALUES
(2001, 'Adarsh M S', '2024-11-15', 16347, 'PARAVUR(PVU)', 'BEKAL FORT(BFR)', 'SL'),
(2002, 'Adhil Nazim Nazeer', '2024-11-18', 16606, 'ALAPPUZHA(ALLP)', 'TIRUR(TIR)', 'GN'),
(2003, 'Ajal Krishna A', '2024-11-24', 12310, 'NEW DELHI(NDLS)', 'PATNA JN(PNBE)', '2S'),
(2004, 'Alan Johnson', '2024-11-21', 12218, 'SURAT(ST)', 'ERNAKULAM JN(ERS)', '2AC'),
(2005, 'Amrithasmera V', '2024-11-20', 16606, 'KOLLAM(QLN)', 'KOZHIKODE(CLT)', 'GN'),
(2006, 'Anjana K Arjunan', '2024-11-17', 16347, 'MAVELIKKARA(MVLK)', 'KUMBALA(KMQ)', 'SL'),
(2007, 'Arya C S', '2024-12-01', 13351, 'PALAKKAD JN(PGT)', 'CHERTHALA(SRTL)', 'GN'),
(2008, 'Aswin Edakkode', '2024-12-04', 16128, 'GURUVAYUR(GUV)', 'CHENNAI EGMORE(MS)', '3AC'),
(2009, 'Deepeshkumar K', '2024-11-15', 26798, 'KATTAPPANA CTRL(KCT)', 'MADGAON JN(MAO)', '3AC'),
(2010, 'Fariha Abdul Wahab', '2024-11-05', 12617, 'ERNAKULAM JN(ERS)', 'KASARAGOD(KGQ)', 'CC'),
(2011, 'Gouthami.M.S', '2024-11-16', 12617, 'ERNAKULAM JN(ERS)', 'KASARAGOD(KGQ)', 'GN'),
(2012, 'Harisankar K', '2024-11-11', 22149, 'KUNDAPURA(KUDA)', 'RATNAGIRI(RN)', '3AC'),
(2013, 'Hima Prabhakar K', '2024-11-20', 16128, 'GURUVAYUR(GUV)', 'CHENNAI EGMORE(MS)', '3AC'),
(2014, 'Jishnu CR', '2024-11-26', 16347, 'PARAVUR(PVU)', 'KANNUR(CAN)', '2S'),
(2015, 'Kiran Raj P', '2024-11-30', 22149, 'ALUVA(AWY)', 'PUNE JN(PUNE)', '3AC'),
(2016, 'Lakshmi Nandana M S', '2024-11-27', 16606, 'KOLLAM(QLN)', 'SHORANUR JUNCTION(SR', 'GN'),
(2017, 'Nandana.C.J', '2024-11-17', 12310, 'KANPUR CTRL(CNB)', 'PRAYAGRAJ JN(PRYJ)', '2AC'),
(2018, 'Roshin R Jacob', '2024-11-18', 16347, 'KOTTAYAM(KTYM)', 'TRIKARIPUR(TKQ)', 'SL'),
(2019, 'Shalu Ajayan', '2024-11-30', 22149, 'THRISSUR(TCR)', 'CHIPLUN(CHI)', '1AC'),
(2020, 'Shameema Nasrin', '2024-11-11', 22149, 'THRISSUR(TCR)', 'UDUPI(UD)', '3AC'),
(2021, 'Sona Vimal', '2024-11-10', 16128, 'CHALAKUDI(CKL)', 'ERANIEL(ERL)', 'SL'),
(2022, 'Varna Rojin KK', '2024-11-20', 12310, 'KANPUR CTRL(CNB)', 'DD UPADHYAYA JN(DDU)', '1AC'),
(2023, 'Vishnu B', '2024-11-12', 12617, 'PATTAMBI(PTB)', 'KANHANGAD(KZE)', 'GN');

-- --------------------------------------------------------

--
-- Table structure for table `trainoperator`
--

CREATE TABLE `trainoperator` (
  `OperatorID` varchar(15) NOT NULL,
  `OperatorName` varchar(50) DEFAULT NULL,
  `Category` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainoperator`
--

INSERT INTO `trainoperator` (`OperatorID`, `OperatorName`, `Category`) VALUES
('EXP8852', 'Mail/Express Trains', 'Express Trains'),
('FRS3298', 'Parcel Trains, Freight Corridor Trains', 'Freight Services'),
('LXT9923', 'Palace on Wheels, Maharajas\' Express', 'Luxury Trains'),
('PRS6721', 'Rajdhani Express, Shatabdi Express, Vande Bharat E', 'Premium Services'),
('PSN6389', 'MEMU, DEMU, Ordinary Passenger Trains', 'Passenger Trains'),
('RGS7266', 'Jan Shatabdi, Intercity Express', 'Regional Services'),
('SCT2872', 'Festival Specials, Holiday Specials', 'Special Trains'),
('SFT0092', 'Duronto Express, Garib Rath Express', 'Superfast Trains'),
('SUS2920', 'Mumbai Suburban Railway, Chennai Suburban Railway', 'Suburban Services'),
('TOT1433', 'Bharat Gaurav Trains, Buddhist Circuit Trains', 'Tourist Trains');

-- --------------------------------------------------------

--
-- Table structure for table `trainservice`
--

CREATE TABLE `trainservice` (
  `Train_Id` int(11) NOT NULL,
  `Train_Name` varchar(50) DEFAULT NULL,
  `Source` varchar(50) DEFAULT NULL,
  `Destination` varchar(50) DEFAULT NULL,
  `Distance` decimal(5,2) DEFAULT NULL CHECK (`Distance` > 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainservice`
--

INSERT INTO `trainservice` (`Train_Id`, `Train_Name`, `Source`, `Destination`, `Distance`) VALUES
(12218, 'KERALA S KRANTHI', 'CHANDIGARH(CDG)', 'KOCHUVELI(KCVL)', 999.99),
(12310, 'TEJAS RAJADHANI EXPRESS', 'NEW DELHI(NDLS)', 'RAJENDRA NAGAR TERMINAL(RJPG)', 999.99),
(12617, 'MANGALA LAKSHADWEEP EXP', 'ERNAKULAM JN(ERS)', 'HAZRAT NIZZAMUDDIN(NZM)', 999.99),
(13351, 'DHN ALLP EXPRESS', 'DHANBAD JN(DHN)', 'ALAPPUZHA(ALLP)', 999.99),
(16128, 'CHENNAI EXPRESS', 'GURUVAYUR(GUV)', 'CHENNAI EGMORE(MS)', 999.99),
(16345, 'NETHRAVATI EXPRESS', 'LOKHAMANYA TILAK TERMINUS(LTT)', 'THIRUVANANTHAPURAM CNTRL(TVC)', 999.99),
(16347, 'KUMBALA EXPRESS', 'PARAVUR(PVU)', 'KUMBALA(KMQ)', 632.00),
(16606, 'BOMB EXPRESS', 'KOLLAM(QLN)', 'KANNUR(CAN)', 600.00),
(22149, 'PUNE EXPRESS', 'ERNAKULAM JN(ERS)', 'PUNE JN(PUNE)', 999.99),
(26798, 'KATTAPANA SF EXPRESS', 'KATTAPANA CTRL(KCT)', 'MADGAON JUNCTION(MAO)', 870.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustId`),
  ADD UNIQUE KEY `Contact` (`Contact`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentId`),
  ADD KEY `TicketID` (`TicketID`);

--
-- Indexes for table `seating`
--
ALTER TABLE `seating`
  ADD PRIMARY KEY (`ClassType`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TicketID`),
  ADD KEY `Train_Id` (`Train_Id`);

--
-- Indexes for table `trainoperator`
--
ALTER TABLE `trainoperator`
  ADD PRIMARY KEY (`OperatorID`);

--
-- Indexes for table `trainservice`
--
ALTER TABLE `trainservice`
  ADD PRIMARY KEY (`Train_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`TicketID`) REFERENCES `ticket` (`TicketID`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`Train_Id`) REFERENCES `trainservice` (`Train_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
