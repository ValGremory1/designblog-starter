-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2024 at 04:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `kategori` enum('Technology','Lifestyle') NOT NULL,
  `author` varchar(100) NOT NULL,
  `tanggal_publikasi` date NOT NULL,
  `images` varchar(255) NOT NULL,
  `view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `isi`, `kategori`, `author`, `tanggal_publikasi`, `images`, `view`) VALUES
(1, 'Curated Collection Post: 8 Examples of Evolution in Action', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Technology', 'Johnson Smith', '2020-04-13', '', 0),
(2, 'The Key Benefits of Studying Online [Infographic]', 'Studi online memberikan banyak manfaat bagi pelajar modern.', 'Lifestyle', 'Johnson Smith', '2020-04-13', '', 0),
(3, '10 Fresh Ways to Get Better Results From Your Blog Posts', 'Berikut ini beberapa tips untuk meningkatkan performa blog Anda.', 'Technology', 'Johnson Smith', '2020-04-14', '', 0),
(4, 'How to Optimize for On-Page SEO', 'SEO adalah bagian penting dari pemasaran digital modern.', 'Technology', 'Alice Johnson', '2020-04-15', '', 0),
(5, 'What to Post on Instagram', 'Konten yang tepat dapat meningkatkan engagement Instagram.', 'Lifestyle', 'Alice Johnson', '2020-04-16', '', 0),
(6, '18 Photo & Video Ideas to Spark Inspiration', 'Jadikan momen sederhana menjadi konten menarik.', 'Lifestyle', 'Bob Williams', '2020-04-17', '', 0),
(7, 'A Deep Dive into Artificial Intelligence', 'AI semakin mempengaruhi berbagai aspek kehidupan.', 'Technology', 'Emily Clark', '2020-04-18', '', 0),
(8, 'The Future of Remote Work', 'Kerja jarak jauh menjadi tren di era digital.', 'Lifestyle', 'David Lee', '2020-04-19', '', 0),
(9, 'The Evolution of Web Development Tools', 'Web development tools berkembang pesat selama dekade terakhir.', 'Technology', 'Chris Evans', '2020-04-20', '', 0),
(10, 'How Minimalism Can Improve Your Life', 'Gaya hidup minimalis membantu fokus pada hal-hal penting.', 'Lifestyle', 'Emily Clark', '2020-04-21', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `kategori` enum('Technology','Lifestyle') NOT NULL,
  `author` varchar(100) NOT NULL,
  `tanggal_publikasi` date NOT NULL,
  `images` varchar(255) NOT NULL,
  `view` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `isi`, `kategori`, `author`, `tanggal_publikasi`, `images`, `view`) VALUES
(1, 'Tren Fashion Tahun 2024', 'Gaya minimalis masih mendominasi.', 'Lifestyle', 'Sari Handayani', '2024-10-01', 'cover-style-wanita.webp', 0),
(4, 'Tips Dekorasi Rumah Minimalis', 'Dekorasi minimalis membuat rumah nyaman.', 'Lifestyle', 'Bobby Ardiansyah', '2024-10-04', '/img/dekorasi.jpg', 0),
(5, 'Yoga: Olahraga dan Relaksasi', 'Yoga populer untuk kesehatan mental.', 'Lifestyle', 'Arini Rahma', '2024-10-05', '/img/yoga.jpg', 0),
(6, 'Kiat Menjaga Pola Hidup Sehat', 'Pola hidup sehat memperpanjang umur.', 'Lifestyle', 'Dewi Ratna', '2024-10-06', '/img/hidup-sehat.jpg', 0),
(7, 'Tips Menabung Efektif', 'Atur keuangan dengan bijak.', 'Lifestyle', 'Rendi Saputra', '2024-10-07', '/img/menabung.jpg', 0),
(8, 'Kuliner Vegan yang Wajib Dicoba', 'Kuliner vegan semakin beragam.', 'Lifestyle', 'Yuli Astuti', '2024-10-08', '/img/vegan.jpg', 0),
(9, 'Tren Traveling Tahun Ini', 'Destinasi lokal semakin digemari.', 'Lifestyle', 'Indra Mahardika', '2024-10-09', '/img/traveling.jpg', 0),
(10, 'Kiat Menjaga Keseimbangan Kerja dan Hidup', 'Work-life balance penting.', 'Lifestyle', 'Taufik Hidayat', '2024-10-10', '/img/worklife.jpg', 0),
(11, 'Hobi Berkebun di Rumah', 'Berkebun jadi hobi populer.', 'Lifestyle', 'Sinta Dewi', '2024-10-11', 'Banner-Artikel_Berkebun-Hobi-Baru-Para-Milenial-Saat-di-Rumah-Saja.png', 0),
(12, 'Cara Membuat Kopi Kekinian', 'Coba latte art di rumah.', 'Lifestyle', 'Bagus Nugroho', '2024-10-12', 'hq720.jpg', 0),
(13, 'Manfaat Journaling Setiap Hari', 'Journaling membantu kesehatan mental.', 'Lifestyle', 'Laras Putri', '2024-10-13', 'Fakta_Seru_-_Journaling-03.jpg', 0),
(14, 'Olahraga di Rumah Tanpa Alat', 'Tetap bugar dengan olahraga simpel.', 'Lifestyle', 'Rio Firmansyah', '2024-10-14', '45071296.jfif', 0),
(15, 'Pilihan Interior Rumah Modern', 'Interior modern dengan sentuhan klasik.', 'Lifestyle', 'Wulan Pratiwi', '2024-10-15', 'images_2.jfif', 0),
(16, 'Gaya Hidup Zero Waste', 'Kurangi sampah demi bumi.', 'Lifestyle', 'Rina Andayani', '2024-10-16', 'Zerowaste.jpeg', 0),
(17, 'Tips Merawat Kulit Sehat', 'Perawatan kulit alami lebih baik.', 'Lifestyle', 'Nadia Iswara', '2024-10-17', 'images.jfif', 1),
(18, 'Kiat Memilih Parfum yang Tepat', 'Sesuaikan parfum dengan kepribadian.', 'Lifestyle', 'Aldi Wibisono', '2024-10-18', 'mcRD3qvpSB.jpg', 1),
(19, 'Cara Mengatasi Burnout', 'Atasi burnout dengan self-care.', 'Lifestyle', 'Ratna Sari', '2024-10-19', 'Website-Inkes_Burnout.jpg', 3),
(20, 'Inspirasi Outfit Kasual', 'Outfit kasual yang stylish.', 'Lifestyle', 'Fajar Pratama', '2024-10-20', 'cover-style-wanita.webp', 11),
(21, 'Perkembangan AI di Tahun 2024', 'AI semakin cerdas dengan teknologi terbaru.', 'Technology', 'Budi Santoso', '2024-10-01', '/img/ai.jpg', 0),
(22, 'Komputasi Kuantum: Masa Depan Komputasi', 'Teknologi kuantum mulai diterapkan di berbagai sektor.', 'Technology', 'Rina Andayani', '2024-10-02', '/img/quantum.jpg', 0),
(23, '5 Tips Mengamankan Data di Cloud', 'Cloud kini lebih aman dengan langkah ini.', 'Technology', 'Eko Prasetyo', '2024-10-03', '/img/cloud.jpg', 0),
(24, 'Blockchain di Industri Keuangan', 'Blockchain menjadi solusi transparansi.', 'Technology', 'Sinta Dewi', '2024-10-04', '/img/blockchain.jpg', 0),
(25, 'Peran IoT di Smart Home', 'Internet of Things membuat rumah semakin pintar.', 'Technology', 'Ahmad Ridwan', '2024-10-05', '/img/iot.jpg', 0),
(26, 'Kecerdasan Buatan di Dunia Medis', 'AI membantu diagnosis lebih cepat.', 'Technology', 'Cahyo Nugroho', '2024-10-06', '/img/ai-medis.jpg', 0),
(27, 'Kendaraan Otonom: Harapan dan Tantangan', 'Mobil tanpa pengemudi segera hadir.', 'Technology', 'Lisa Apriani', '2024-10-07', '/img/autonomous.jpg', 0),
(28, 'Augmented Reality untuk Pendidikan', 'AR membuat belajar lebih interaktif.', 'Technology', 'Benny Setiawan', '2024-10-08', '/img/ar.jpg', 0),
(29, 'Teknologi 5G dan Dampaknya', '5G membawa koneksi super cepat.', 'Technology', 'Andi Wirawan', '2024-10-09', '/img/5g.jpg', 0),
(30, 'Cloud Gaming: Masa Depan Game', 'Bermain tanpa konsol dengan cloud gaming.', 'Technology', 'Gilang Saputra', '2024-10-10', '/img/cloud-gaming.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
