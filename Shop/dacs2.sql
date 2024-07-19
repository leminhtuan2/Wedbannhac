-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2024 at 10:11 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dacs2`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int NOT NULL,
  `noidung` varchar(1000) NOT NULL,
  `username` varchar(100) NOT NULL,
  `idsp` int NOT NULL,
  `time` datetime(5) NOT NULL DEFAULT CURRENT_TIMESTAMP(5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `username`, `idsp`, `time`) VALUES
(27, 'Nhạc rất hay', 'admin', 1, '2024-07-14 15:03:43.92803'),
(28, 'Nhạc BTS rất hay', 'admin', 5, '2024-07-14 15:04:48.94902'),
(29, 'Album Đan Trường rất hay', 'admin', 4, '2024-07-14 15:16:01.05520'),
(30, 'BTS hay', 'admin', 6, '2024-07-14 15:16:31.52087');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int NOT NULL,
  `iddonhang` int NOT NULL,
  `idsp` int NOT NULL,
  `soluong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `iddonhang`, `idsp`, `soluong`) VALUES
(4, 8, 4, 1),
(5, 9, 4, 1),
(6, 10, 4, 1),
(7, 11, 4, 1),
(8, 12, 4, 1),
(21, 22, 4, 1),
(22, 22, 3, 1),
(23, 23, 2, 1),
(24, 24, 16, 5),
(25, 25, 4, 3),
(26, 26, 4, 2),
(27, 27, 1, 14),
(28, 28, 6, 1),
(29, 28, 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`) VALUES
(1, 'Album nhạc Việt'),
(2, 'Album nhạc Hàn'),
(3, 'Album nhạc Mỹ');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `tongtien` int NOT NULL,
  `trangthai` varchar(100) NOT NULL,
  `ngaymua` date NOT NULL,
  `diachi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `tongtien`, `trangthai`, `ngaymua`, `diachi`) VALUES
(5, 1, 580, 'Đã thanh toán', '2021-10-28', 'Quảng Trị'),
(6, 1, 580, 'Đã thanh toán', '2021-10-28', 'Quảng Trị'),
(7, 1, 2040, 'Đã thanh toán', '2021-10-28', 'Quảng Trị'),
(8, 1, 680, 'Đã thanh toán', '2021-11-01', 'Quảng Trị'),
(9, 1, 680, 'Đã thanh toán', '2021-11-01', 'Quảng Trị'),
(10, 1, 680, 'Đã thanh toán', '2021-11-01', 'Quảng Trị'),
(11, 1, 680, 'Đã thanh toán', '2021-11-01', 'Quảng Trị'),
(19, 2, 580, 'Đã thanh toán', '2021-11-02', 'Quảng Trị'),
(20, 1, 1020, 'Chưa thanh toán', '2021-12-02', ''),
(21, 1, 680, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(22, 1, 1260, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(23, 1, 600, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(24, 1, 5750, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(25, 1, 2040, 'Đã thanh toán', '2021-12-02', 'Việt Nam'),
(26, 1, 1360, 'Đã thanh toán', '2024-07-13', 'Việt Nam'),
(27, 1, 14280, 'Đã thanh toán', '2024-07-14', 'Việt Nam'),
(28, 1, 14000, 'Đã thanh toán', '2024-07-14', 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `giasp` int NOT NULL,
  `mota` varchar(1000) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `soluong` int NOT NULL,
  `size` int NOT NULL,
  `mau` varchar(100) NOT NULL,
  `iddanhmuc` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensp`, `giasp`, `mota`, `hinhanh`, `soluong`, `size`, `mau`, `iddanhmuc`) VALUES
(1, 'Baby one more time - Britney Spears', 1020, '', 'img/abm1.jpg', -1, 15, 'Mộng mơ', 3),
(2, 'My heart will go on - Celine Dion', 600, '', 'img/abm2.jpg', -15, 15, 'Du dương', 3),
(3, 'Take me to your heart - Michael Learns To Rock', 580, '', 'img/abm3.jpg', 4, 42, 'Rock mạnh mẽ', 3),
(4, 'Album Đan Trường', 680, '', 'img/abv1.jpg', 8, 8, 'U buồn', 1),
(5, 'Love Yourself: Answer - BTS', 1100, '', 'img/abh2.jpg', 7, 11, 'Sôi động', 2),
(6, 'Map of the Soul: 7 - BTS', 800, '', 'img/ABH1.jpg', 10, 11, 'Sôi động', 2),
(7, 'Born Pink - BlackPink', 900, '', 'img/abh3.jpg', 9, 11, 'Sôi động', 2),
(8, 'Album Đình Văn', 1000, '', 'img/abv2.jpg', 12, 8, 'U buồn', 1),
(18, 'Wrongful Encounter', 750, '', 'img/abh4.jpg', 10, 11, 'Sâu lắng', 2),
(19, 'Album Lam Trường', 700, '', 'img/abv3.jpeg', 11, 8, 'Xót Xa', 1),
(24, 'Album Mạnh Khương', 800, '', 'img/abv4.jpg', 20, 8, 'U buồn', 1),
(25, 'Album Long Nhật', 1000, '', 'img/abv5.jpg', 20, 8, 'U buồn', 1),
(26, 'Album Ngọc Sơn\r\n', 900, '', 'img/abv6.jpg', 20, 8, 'Tình cảm', 1),
(27, 'Album Quang Lê', 1000, '', 'img/abv7.jpg', 20, 8, 'Thơ mộng', 1),
(28, 'Boom boom boom boom - Vengaboys', 1100, '', 'img/abm5.jpg', 20, 15, 'Nhí nhảnh', 3),
(30, 'Nothing gonna change my love for you - Westlife', 1000, '', 'img/abm4.jpg', 20, 15, 'Ngọt ngào', 3);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `diachi` varchar(100) NOT NULL,
  `sdt` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `hoten`, `username`, `password`, `diachi`, `sdt`) VALUES
(1, 'Admin', 'admin', 'admin', 'Việt Nam', 123);

-- --------------------------------------------------------

--
-- Table structure for table `thongke`
--

CREATE TABLE `thongke` (
  `id` int NOT NULL,
  `tongtien` varchar(1000) NOT NULL,
  `thang` int NOT NULL,
  `soluongsp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `thongke`
--

INSERT INTO `thongke` (`id`, `tongtien`, `thang`, `soluongsp`) VALUES
(1, '46280', 12, 42);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongke`
--
ALTER TABLE `thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `thongke`
--
ALTER TABLE `thongke`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
