-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 04:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'Dian', 'dianazmiamalia@gmail.com', '1', 'Sangat ramah');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'Dian Azmi Amalia', '2', 'dianazmiamalia@gmail.com', 'paytm', 'flat no. Bantarkawung, Bantarkawung rt 04 rw02, Brebes, Brebes, Jawa Tengah, Jawa Tengah - 52274', 'lambung mylanta (30000 x 1) - ', 30000, '2023-05-26', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(20, 'diare diapet', 'Diapet merupakan obat herbal yang mengandung ekstrak daun jambu biji, kunyit, buah mojokeling dan kulit buah delima yang dikemas dalam bentuk sediaan kapsul. Diapet digunakan untuk membantu mengurangi frekuensi buang air besar.', 5000, 'diare.png', 'diare1.png', 'diare2.png'),
(21, 'vitamin c', 'VITAMIN C IPI merupakan vitamin C berbentuk tablet dengan rasa jeruk yang bermanfaat untuk membantu memenuhi kebutuhan vitamin C. Vitamin C bekerja dengan cara menjaga keutuhan fungsi jaringan mesodermal yaitu kolagen, tulang, gigi dan pembuluh darah. Setiap tablet mengandung Vitamin C 50 mg. 1 tablet hisap sehari.', 7000, 'vitamin.png', 'vitamin2.png', 'vitamin1.png'),
(22, 'lambung mylanta', 'Mylanta adalah obat untuk meredakan gejala akibat kelebihan asam lambung, termasuk pada gastritis, refluks asam lambung, tukak lambung, dan ulkus duodenum. Obat ini dapat bekerja cepat, tetapi tidak boleh digunakan untuk jangka panjang.', 20000, 'lambung.png', 'lambung1.png', 'lambung2.png'),
(23, 'demam sanmol', 'SANMOL merupakan obat dengan kandungan Paracetamol 500 mg. Obat ini digunakan untuk meringankan rasa sakit pada keadaan sakit kepala, sakit gigi dan menurunkan demam. Sanmol bekerja pada pusat pengatur suhu di hipotalamus untuk menurunkan suhu tubuh (antipiretik) serta menghambat sintesis prostaglandin sehingga dapat mengurangi nyeri ringan sampai sedang (analgesik).', 3000, 'demam1.png', 'demam.png', 'demam2.png'),
(24, 'jantung farsobid', 'Farsorbid merupakan obat dengan zat aktif Isosorbid dinitrat yang digunakan sebagai terapi anti angina (nyeri dada) yang disebabkan oleh penyakit jantung. Isosorbid dinitrat termasuk obat golongan nitrat yang merupakan vasodilator atau dapat melebarkan pembuluh darah.', 7000, 'jantung2.png', 'jantung1.png', 'jantung.png'),
(25, 'diabetes metformin', 'METFORMIN 500 MG merupakan obat antidiabetes generik yang dapat mengontrol dan menurunkan kadar gula darah pada penderita diabetes tipe 2. Metformin termasuk ke dalam obat antidiabetes golongan Biguanide, yang bekerja dengan cara menghambat produksi glukosa (glukoneogenesis) di hati.', 45000, 'diabetes1.png', 'diabetes2.png', 'diabetes.png'),
(26, 'herbal lianhua qingwen', 'Indikasi produk LIANHUA QINGWEN CAPSULES (LQC) yang disetujui oleh Badan POM adalah membantu meredakan panas dalam yang disertai tenggorokan kering dan membantu meredakan batuk, dengan aturan pakai yang disetujui adalah sehari 3 kali 4 kapsul sesudah makan dan dapat digunakan oleh masyarakat tanpa resep dokter.', 45000, 'herbal.png', 'herbal1.png', 'herbal2.png'),
(27, 'hipertensi candesartan cilexetil', 'Candesartan adalah obat untuk menurunkan tekanan darah pada hipertensi. Obat ini juga digunakan dalam pengobatan gagal jantung.', 10000, 'hipertensi.png', 'hipertensi1.png', 'hipertensi2.png'),
(28, 'suplement curcuma plus', 'CURCUMA PLUS GROW EMULSION merupakan suplemen yang mengandung temulawak, minyak ikan, kalsium, vitamin D, vitamin A, serta vitamin B kompleks.', 35000, 'suplement.png', 'suplement1.png', 'suplement2.png'),
(29, 'kolestrol simvastatin', 'SIMVASTATIN merupakan obat penurun kolesterol golongan statin. Obat ini bekerja sebagai inhibitor kompetitif pada HMG-CoA reduktase (enzim yang mempercepat proses sistesis kolesterol). Hal ini dapat menurunkan kadar kolesterol total, LDL, trigliserida, dan meningkatkan kadar HDL dalam darah.', 10000, 'kolestrol1.png', 'kolestrol2.png', 'kolestrol.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Dian Azmi Amalia', 'dianazmiamalia@gmail.com', '06852a7d84855aca6360632a63057db2eeab0046');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `pid`, `name`, `price`, `image`) VALUES
(2, 1, 20, 'diare diapet', 5000, 'diare.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
