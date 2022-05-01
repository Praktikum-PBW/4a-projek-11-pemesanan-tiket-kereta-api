-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Bulan Mei 2022 pada 16.42
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kel1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `class`
--

INSERT INTO `class` (`id`, `name`, `price`) VALUES
(1, 'Ekonomi', 20000),
(2, 'Bisnis', 30000),
(3, 'Eksekutif', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `no_pesanan` varchar(10) NOT NULL,
  `nama_lengkap` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `problem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stations`
--

CREATE TABLE `stations` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `name_short` varchar(6) NOT NULL,
  `route` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stations`
--

INSERT INTO `stations` (`id`, `name`, `name_short`, `route`) VALUES
(1, 'Cakung', 'CUK', 6),
(2, 'Bekasi', 'BKS', 7),
(3, 'Karawang', 'KW', 9),
(4, 'Bandung', 'BD', 14),
(5, 'Pasar Senen', 'PSE', 4),
(7, 'Jatinegara', 'JNG', 5),
(8, 'Cikampek', 'CKP', 10),
(10, 'Jakarta-Kota', 'JAKK', 1),
(14, 'Kemayoran', 'KMY', 2),
(15, 'Kramat Sentiong', 'KMT', 3),
(16, 'Purwakarta', 'PWK', 11),
(17, 'Cikarang', 'CKR', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `trains`
--

CREATE TABLE `trains` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `trains`
--

INSERT INTO `trains` (`id`, `name`, `price`) VALUES
(1, 'Argo Parahyangan', 50000),
(2, 'Cirebon Express', 40000),
(3, 'Serayu', 30000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `booking_by` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `passengers_name` text NOT NULL,
  `amount_ticket` int(11) NOT NULL,
  `train_name` varchar(64) NOT NULL,
  `train_class` varchar(64) NOT NULL,
  `dept_time` date NOT NULL,
  `time` varchar(24) NOT NULL,
  `station_dept` varchar(64) NOT NULL,
  `station_arr` varchar(64) NOT NULL,
  `unique_price` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `order_time` int(11) NOT NULL,
  `is_success` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `booking_by`, `email`, `passengers_name`, `amount_ticket`, `train_name`, `train_class`, `dept_time`, `time`, `station_dept`, `station_arr`, `unique_price`, `price`, `order_time`, `is_success`) VALUES
(107122, 0, 'Alifamahar', 'alifamahar@gmail.com', 'ooo', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-30', '06:45', 'PWK', 'BD', 61, 91061, 1651337018, 1),
(111340, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', ',', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'BD', 'PWK', 51, 49051, 1649519828, 1),
(139213, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'n', 1, 'Argo Parahyangan B09', 'Bisnis', '2022-04-12', '09:15', 'CKP', 'PWK', 24, 87024, 1649519725, 1),
(232324, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'ooo', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-11', '06:45', 'CKR', 'BD', 59, 112059, 1649513042, 1),
(240261, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'l', 1, 'Argo Parahyangan E11', 'Eksekutif', '2022-04-12', '11:45', 'KW', 'BD', 62, 135062, 1649517063, 1),
(264604, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'l', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'CKP', 'PWK', 26, 77026, 1649519420, 1),
(317275, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'ooo', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'CKP', 'BD', 69, 98069, 1649517432, 1),
(329198, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 's', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'CKP', 'PWK', 46, 77046, 1649517736, 1),
(336551, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'ooo', 1, 'Argo Parahyangan E11', 'Eksekutif', '2022-04-12', '11:45', 'PWK', 'BD', 79, 121079, 1649519915, 1),
(385542, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', ',', 1, 'Argo Parahyangan E11', 'Eksekutif', '2022-04-12', '11:45', 'PWK', 'BD', 40, 121040, 1649519594, 1),
(450368, 3, 'Alifamahar', 'alifamahar@gmail.com', 'l,o', 2, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'CKP', 'PWK', 54, 154054, 1649512797, 1),
(485976, 5, 'Fikri Haikal', 'haikalf263@gmail.com', 'aki', 1, 'Argo Parahyangan E11', 'Eksekutif', '2022-04-21', '11:45', 'BKS', 'PSE', 11, 79011, 1650227570, 1),
(519555, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'ooo', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'CKR', 'PWK', 14, 91014, 1649516572, 1),
(559626, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'l', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'CKR', 'BD', 80, 112080, 1649517255, 1),
(583009, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'n', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-10', '06:45', 'CKP', 'BD', 62, 98062, 1649520114, 1),
(619594, 1, 'Aryo Bhodro Irawan', 'ibhodro123@gmail.com', 'Aryo Bhodro Irawan,Btari <3', 2, 'Serayu E11', 'Eksekutif', '2021-05-25', '11:45', 'JAKK', 'PSE', 12, 202012, 1621877601, 1),
(684875, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'ooo', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'PWK', 'JNG', 62, 28062, 1649516697, 1),
(698022, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'aki', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'CKP', 'BD', 69, 98069, 1649519637, 1),
(707371, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', ',', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-10', '06:45', 'JNG', 'PWK', 92, 112092, 1649519957, 1),
(733790, 4, 'Alifa Maha Rizka', 'alifarizka7@gmail.com', 'Alifa Maha Rizka', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-28', '06:45', 'PWK', 'CKR', 17, 49017, 1649521638, 1),
(777296, 7, 'Alifa Maha Rizka', 'alifamahar@gmail.com', 'lipa', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-29', '06:45', 'CKP', 'PWK', 97, 77097, 1650892034, 1),
(806434, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'l', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'KW', 'BD', 42, 105042, 1649519029, 1),
(899235, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'aki', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-04-12', '06:45', 'BD', 'PWK', 90, 49090, 1649518398, 1),
(959208, 0, 'Alifamahar', 'alifamahar@gmail.comz', 'n', 1, 'Argo Parahyangan E06', 'Ekonomi', '2022-05-08', '06:45', 'PWK', 'BD', 96, 91096, 1651400431, 1),
(978634, 3, 'Alifamahar@gmail.com', 'alifamahar@gmail.com', 'aki', 1, 'Argo Parahyangan E11', 'Eksekutif', '2022-04-27', '11:45', 'PWK', 'BD', 23, 121023, 1649516271, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`no_pesanan`);

--
-- Indeks untuk tabel `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `stations`
--
ALTER TABLE `stations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `trains`
--
ALTER TABLE `trains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
