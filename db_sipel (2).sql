-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2024 pada 05.22
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_fitur`
--

CREATE TABLE `tb_fitur` (
  `id` int(12) NOT NULL,
  `img` varchar(121) NOT NULL,
  `title` varchar(121) NOT NULL,
  `deskripsi` varchar(121) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_fitur`
--

INSERT INTO `tb_fitur` (`id`, `img`, `title`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'img/icon-apartment.png', 'apartment', '123 properties', '2024-02-24 18:18:38', NULL),
(2, 'img/icon-villa.png', 'Villa', '123 Properties', '2024-02-24 18:18:38', NULL),
(3, 'img/icon-house.png', 'house', '123 properties', '2024-02-24 18:21:34', NULL),
(4, 'img/icon-housing.png', 'Office', '123 Properties', '2024-02-24 18:21:34', NULL),
(5, 'img/icon-building.png', 'Building', '123 Properties', '2024-02-24 18:24:09', NULL),
(6, 'img/icon-neighborhood.png', 'Townhouse', '123 Properties', '2024-02-24 18:24:09', NULL),
(7, 'img/icon-condominium.png', 'Shop', '123 Properties', '2024-02-24 18:25:47', NULL),
(8, 'img/icon-luxury.png', 'Garage', '123 Properties', '2024-02-24 18:25:47', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menubar`
--

CREATE TABLE `tb_menubar` (
  `id` int(13) NOT NULL,
  `menu` varchar(121) NOT NULL,
  `parent` int(11) NOT NULL,
  `sort` int(121) NOT NULL,
  `deskripsi` varchar(121) NOT NULL,
  `is_dropdown` int(11) NOT NULL,
  `link` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_menubar`
--

INSERT INTO `tb_menubar` (`id`, `menu`, `parent`, `sort`, `deskripsi`, `is_dropdown`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Home', 0, 0, 'Home', 0, '', '2024-02-17 17:48:02', '2024-02-17 20:00:17'),
(2, 'Program', 0, 0, 'Program', 1, '', '2024-02-17 17:50:53', '2024-02-17 19:59:15'),
(3, 'Bidang Pekerjaan', 0, 0, 'Bidan Pekerjaan', 1, '', '2024-02-17 17:51:24', '2024-02-17 19:59:19'),
(4, 'Tentang Kami', 0, 0, 'Tentang Kami', 1, '', '2024-02-17 17:52:21', '2024-02-17 19:59:22'),
(5, 'Gallery', 0, 0, 'Gallery', 0, '', '2024-02-17 17:52:21', '2024-02-17 20:00:30'),
(6, 'Magang', 2, 2, 'Magang', 0, '', '2024-02-17 17:57:58', '2024-02-17 19:59:06'),
(7, 'Pertukaran Pelajar', 2, 3, 'Pertukaran Pelajar', 0, '', '2024-02-17 17:59:20', NULL),
(8, 'Kelas Online', 2, 4, 'Kelas Online', 0, '', '2024-02-17 18:00:52', NULL),
(9, 'Sertifikasi', 2, 5, 'Sertifikasi', 0, '', '2024-02-17 18:00:52', NULL),
(10, 'Job Marketing', 2, 6, 'Job Marketing', 0, '', '2024-02-17 18:02:52', NULL),
(11, 'Pertanian', 3, 1, 'Pertanian', 0, '', '2024-02-17 18:02:52', NULL),
(12, 'Kursus Bahasa', 2, 1, 'Kursus Bahasa', 0, '', '2024-02-17 18:06:39', NULL),
(13, 'Perhotelan', 3, 2, 'Perhotelan', 0, '', '2024-02-17 18:08:28', NULL),
(14, 'Industri', 3, 3, 'Industri', 0, '', '2024-02-17 18:08:28', NULL),
(15, 'Tambang', 3, 4, 'Tambang', 0, '', '2024-02-17 18:11:12', NULL),
(16, 'Property', 3, 5, 'Property', 0, '', '2024-02-17 18:11:12', NULL),
(17, 'Konstrukasi', 3, 6, 'Konstruksi', 0, '', '2024-02-17 18:11:12', NULL),
(18, 'Company Profile', 4, 1, 'Company Profile', 0, '', '2024-02-17 18:12:43', NULL),
(19, 'Legalitas', 4, 2, 'Struktur Organisasi', 0, '', '2024-02-17 18:12:43', NULL),
(20, 'Struktur Organisasi', 4, 3, 'Struktur Organisasi', 0, '', '2024-02-17 18:16:00', NULL),
(21, 'Lokasi Pendidikan & Pelatihan', 4, 4, 'Lokasi Pendidikan & Pelatihan', 0, '', '2024-02-17 18:16:00', NULL),
(22, 'Alamat Kantor Pusat', 4, 5, 'Alamat Kantor Pusat', 0, '', '2024-02-17 18:16:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int(11) NOT NULL,
  `img` text NOT NULL,
  `deskripsi` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `img`, `deskripsi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'img/carousel-1.jpg', 'gambar 1', 1, '2024-02-03 19:15:57', NULL),
(2, 'img/carousel-2.jpg', 'gambar 2', 1, '2024-02-03 19:15:57', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `akses` int(3) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `akses`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin1@gmail.com', NULL, 'admin', NULL, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_fitur`
--
ALTER TABLE `tb_fitur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_menubar`
--
ALTER TABLE `tb_menubar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_fitur`
--
ALTER TABLE `tb_fitur`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_menubar`
--
ALTER TABLE `tb_menubar`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
