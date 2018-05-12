-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2018 lúc 09:42 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlycongdan`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answer`
--

CREATE TABLE `answer` (
  `AnsId` int(10) NOT NULL,
  `QuestionId` int(10) NOT NULL,
  `EmployeeId` int(10) NOT NULL,
  `Content` text NOT NULL,
  `ResponseDay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorycriminal`
--

CREATE TABLE `categorycriminal` (
  `CacId` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `categorycriminal`
--

INSERT INTO `categorycriminal` (`CacId`, `Name`, `Content`) VALUES
(1, 'Giao thông', 'vi ph?m lu?t giao thông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorypaper`
--

CREATE TABLE `categorypaper` (
  `CapId` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `citizen`
--

CREATE TABLE `citizen` (
  `CitId` int(10) NOT NULL,
  `FullName` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Birthday` date NOT NULL,
  `HomeAddress` varchar(250) CHARACTER SET latin1 NOT NULL,
  `HomeTown` varchar(500) CHARACTER SET latin1 NOT NULL,
  `PlaceofBirth` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Nation` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Gender` bit(1) NOT NULL,
  `Nationality` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Religion` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Date` date NOT NULL,
  `IssuedBy` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Description` text CHARACTER SET latin1 NOT NULL,
  `Image` varchar(100) CHARACTER SET latin1 NOT NULL,
  `StatusMarriage` bit(1) NOT NULL,
  `Academiclevel` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `CMND` int(11) NOT NULL,
  `Email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `citizen`
--

INSERT INTO `citizen` (`CitId`, `FullName`, `Birthday`, `HomeAddress`, `HomeTown`, `PlaceofBirth`, `Nation`, `Gender`, `Nationality`, `Religion`, `Date`, `IssuedBy`, `Description`, `Image`, `StatusMarriage`, `Academiclevel`, `Phone`, `CMND`, `Email`, `Status`) VALUES
(10, 'Tạ Văn Thức2', '3312-02-01', 'k42/04 Nguy?n Thành Hãn', 'quang nam', 'quang nam', 'Vi?t Nam', b'1', 'Campuchia', 'phat giao', '1992-04-23', 'công an ?à n?ng', 'kg', '', b'0', '12/12', 1264885279, 2014565434, 'vanthuc96dn@gmail.com', b'1'),
(14, 'Tạ Văn Thức', '1996-11-26', 'k42/04 Nguy?n Thành Hãn', 'Qu?ng Nam', '?à N?ng', 'Vi?t Nam', b'1', 'Vi?t Nam', 'Không', '2014-07-14', 'công an ?à n?ng', 'không', '', b'0', '12/12', 1264885279, 2014565434, 'vanthuc96dn@gmail.com', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `criminalrecord`
--

CREATE TABLE `criminalrecord` (
  `CrrId` int(10) NOT NULL,
  `CategoryCriminalId` int(10) NOT NULL,
  `Number` varchar(50) NOT NULL,
  `ExecutionDate` date NOT NULL,
  `NumMonth` date NOT NULL,
  `CitizenId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `criminalrecord`
--

INSERT INTO `criminalrecord` (`CrrId`, `CategoryCriminalId`, `Number`, `ExecutionDate`, `NumMonth`, `CitizenId`) VALUES
(2, 1, '1', '2018-05-12', '2018-05-13', 14),
(3, 1, 'minh trung phai kg', '0012-03-12', '3123-01-31', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employees`
--

CREATE TABLE `employees` (
  `EmpId` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `LastLogin` datetime NOT NULL,
  `Active` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `levels`
--

CREATE TABLE `levels` (
  `LevId` int(10) NOT NULL,
  `LevelName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `levels`
--

INSERT INTO `levels` (`LevId`, `LevelName`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `otherinformation`
--

CREATE TABLE `otherinformation` (
  `OthId` int(10) NOT NULL,
  `CitizenID` int(10) NOT NULL,
  `Passport` int(20) NOT NULL,
  `IssuedBy` varchar(100) NOT NULL,
  `Date` date NOT NULL,
  `FaName` varchar(100) NOT NULL,
  `MoName` varchar(100) NOT NULL,
  `MateName` varchar(100) NOT NULL,
  `NuInsurance` int(20) NOT NULL,
  `Job` varchar(100) NOT NULL,
  `Company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `papers`
--

CREATE TABLE `papers` (
  `PapId` int(10) NOT NULL,
  `CategoryPaperId` int(10) NOT NULL,
  `Content` text NOT NULL,
  `DateFill` date NOT NULL,
  `DeliveryDate` date NOT NULL,
  `ReceivingAgency` varchar(50) NOT NULL,
  `CitizenId` int(10) NOT NULL,
  `StatusPay` bit(1) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `QueId` int(10) NOT NULL,
  `UserId` int(10) NOT NULL,
  `Content` text NOT NULL,
  `RequestDay` date NOT NULL,
  `Address` varchar(200) NOT NULL,
  `UrlImage` varchar(100) NOT NULL,
  `UrlVideo` varchar(100) NOT NULL,
  `UrlFile` varchar(100) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `temporary`
--

CREATE TABLE `temporary` (
  `TemId` int(10) NOT NULL,
  `CitizenID` int(10) NOT NULL,
  `RegistrationDate` date NOT NULL,
  `DateEnd` date NOT NULL,
  `AddressCurrent` varchar(100) NOT NULL,
  `AddressNew` varchar(100) NOT NULL,
  `Discription` varchar(150) NOT NULL,
  `Status` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `temporary`
--

INSERT INTO `temporary` (`TemId`, `CitizenID`, `RegistrationDate`, `DateEnd`, `AddressCurrent`, `AddressNew`, `Discription`, `Status`) VALUES
(2, 14, '2018-05-12', '2018-09-02', 'K42/04 nguyen luong bang', 'K42/04 Nguyen thanh han', 'KHONG', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UseId` int(10) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `LevelId` int(10) NOT NULL,
  `Citizenid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UseId`, `UserName`, `Password`, `LevelId`, `Citizenid`) VALUES
(2, 'tavanthuc', '123', 1, 14);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`AnsId`),
  ADD KEY `QuestionId` (`QuestionId`),
  ADD KEY `EmployeeId` (`EmployeeId`);

--
-- Chỉ mục cho bảng `categorycriminal`
--
ALTER TABLE `categorycriminal`
  ADD PRIMARY KEY (`CacId`);

--
-- Chỉ mục cho bảng `categorypaper`
--
ALTER TABLE `categorypaper`
  ADD PRIMARY KEY (`CapId`);

--
-- Chỉ mục cho bảng `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`CitId`);

--
-- Chỉ mục cho bảng `criminalrecord`
--
ALTER TABLE `criminalrecord`
  ADD PRIMARY KEY (`CrrId`),
  ADD KEY `CategoryCriminalId` (`CategoryCriminalId`),
  ADD KEY `CitizenId` (`CitizenId`);

--
-- Chỉ mục cho bảng `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmpId`),
  ADD KEY `UserId` (`UserId`);

--
-- Chỉ mục cho bảng `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`LevId`);

--
-- Chỉ mục cho bảng `otherinformation`
--
ALTER TABLE `otherinformation`
  ADD PRIMARY KEY (`OthId`),
  ADD KEY `CitizenID` (`CitizenID`);

--
-- Chỉ mục cho bảng `papers`
--
ALTER TABLE `papers`
  ADD PRIMARY KEY (`PapId`),
  ADD KEY `CategoryPaperId` (`CategoryPaperId`),
  ADD KEY `CitizenId` (`CitizenId`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`QueId`),
  ADD KEY `UserId` (`UserId`);

--
-- Chỉ mục cho bảng `temporary`
--
ALTER TABLE `temporary`
  ADD PRIMARY KEY (`TemId`),
  ADD KEY `CitizenID` (`CitizenID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UseId`),
  ADD KEY `LevelId` (`LevelId`),
  ADD KEY `Citizenid` (`Citizenid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `answer`
--
ALTER TABLE `answer`
  MODIFY `AnsId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categorycriminal`
--
ALTER TABLE `categorycriminal`
  MODIFY `CacId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categorypaper`
--
ALTER TABLE `categorypaper`
  MODIFY `CapId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `citizen`
--
ALTER TABLE `citizen`
  MODIFY `CitId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `criminalrecord`
--
ALTER TABLE `criminalrecord`
  MODIFY `CrrId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `employees`
--
ALTER TABLE `employees`
  MODIFY `EmpId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `levels`
--
ALTER TABLE `levels`
  MODIFY `LevId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `otherinformation`
--
ALTER TABLE `otherinformation`
  MODIFY `OthId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `papers`
--
ALTER TABLE `papers`
  MODIFY `PapId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `QueId` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `temporary`
--
ALTER TABLE `temporary`
  MODIFY `TemId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `UseId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`QuestionId`) REFERENCES `questions` (`QueId`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`EmployeeId`) REFERENCES `employees` (`EmpId`);

--
-- Các ràng buộc cho bảng `criminalrecord`
--
ALTER TABLE `criminalrecord`
  ADD CONSTRAINT `criminalrecord_ibfk_1` FOREIGN KEY (`CategoryCriminalId`) REFERENCES `categorycriminal` (`CacId`),
  ADD CONSTRAINT `criminalrecord_ibfk_2` FOREIGN KEY (`CitizenId`) REFERENCES `citizen` (`CitId`);

--
-- Các ràng buộc cho bảng `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UseId`);

--
-- Các ràng buộc cho bảng `otherinformation`
--
ALTER TABLE `otherinformation`
  ADD CONSTRAINT `otherinformation_ibfk_1` FOREIGN KEY (`CitizenID`) REFERENCES `citizen` (`CitId`);

--
-- Các ràng buộc cho bảng `papers`
--
ALTER TABLE `papers`
  ADD CONSTRAINT `papers_ibfk_1` FOREIGN KEY (`CategoryPaperId`) REFERENCES `categorypaper` (`CapId`),
  ADD CONSTRAINT `papers_ibfk_2` FOREIGN KEY (`CitizenId`) REFERENCES `citizen` (`CitId`);

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `users` (`UseId`);

--
-- Các ràng buộc cho bảng `temporary`
--
ALTER TABLE `temporary`
  ADD CONSTRAINT `temporary_ibfk_1` FOREIGN KEY (`CitizenID`) REFERENCES `citizen` (`CitId`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`LevelId`) REFERENCES `levels` (`LevId`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`Citizenid`) REFERENCES `citizen` (`CitId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
