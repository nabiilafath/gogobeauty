-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2022 pada 11.51
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jualbeli`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `username` char(7) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email_admin` varchar(40) NOT NULL,
  `telp_admin` int(30) NOT NULL,
  `alamat_admin` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `Nama`, `username`, `password`, `email_admin`, `telp_admin`, `alamat_admin`) VALUES
(0, 'Admin', 'admin', 'admin', 'admin@gmail.com', 891234566, 'Jl. Kenangan Kemana saja'),
(1, 'asalbae', 'asall', '111', 'asal@gmail.com', 1, 'bondoll');

-- --------------------------------------------------------

--
-- Struktur dari tabel `checkout`
--

CREATE TABLE `checkout` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `sub_harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `checkout`
--

INSERT INTO `checkout` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `nama`, `harga_produk`, `jumlah`, `sub_harga`, `deskripsi`, `foto_produk`) VALUES
(1, 1, 20, 'Nabati', 2000, 1, 2000, 'Snack Nabati Keju', 'nabati.jpg.jpg'),
(2, 2, 16, 'chitato', 4000, 3, 12000, 'Chitato Potato Chips adalah makanan ringan berbahan dasar kentang yang diproduksi oleh PT. Indofood Fritolay Makmur yang merupakan anak perusahaan dari PT. Indofood, sebuah produsen makanan yang cukup besar di Indonesia.', 'chitato.jpg.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `username` char(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `Nama`, `username`, `password`, `no_hp`, `email`, `alamat`) VALUES
(1, 'Munir huda', 'admin', '111', 123123, '', ''),
(2, 'satu', 'munir20', '123', 895331126, 'munirhuda@gmail.com', ''),
(3, 'Bambanc', 'Rahul112', 'rahul123', 891234556, 'Bambanc@gmail.com', 'Jl. Kenangan bersama nya'),
(5, 'siti nur', 'syiti', 'syiti', 2147483647, 'nabiilafath@gmail.com', 'labanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` varchar(17) NOT NULL,
  `Nama` varchar(40) NOT NULL,
  `Bank` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `Bukti` varchar(255) NOT NULL,
  `Jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `Nama`, `Bank`, `tanggal`, `Bukti`, `Jumlah`) VALUES
(9, '14', 'asdjio', 'jaijdioa', '2021-06-03', '2021-06-03 08:11:38FFO Gold.jpg', 12312),
(10, '15', 'asndand', 'kaldsjd', '2021-06-03', '2021-06-03 08,12,46kopi.jpg', 1241241),
(11, '15', 'asdlkj', 'kjaiojd', '2021-06-03', '2021-06-03 08;13;10KUIZ 2_3.jpg', 98120398),
(12, '16', 'asdjj', 'jajdsdjio', '2021-06-03', '2021-06-03 08;13;44index.jpg', 912038),
(13, '17', 'ljilsjdiojaio', 'oijwdioawj', '2021-06-03', '2021-06-03 13;15;29kopi.jpg', 12398190),
(14, '21', 'Dudu', 'BRI', '2021-06-03', '2021-06-03 20;16;54nabati.jpg', 2123),
(15, '1', 'Rahul', 'BCA', '2021-06-04', '2021-06-04 05;07;52nabati.jpg', 2000),
(16, '2', 'nabiila', 'BRI', '2022-03-12', '2022-03-12 14;31;15K-app.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_barang`
--

CREATE TABLE `pembelian_barang` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(20) NOT NULL,
  `nama` text NOT NULL,
  `tanggal_pembelian` datetime NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `total_harga` int(15) NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembelian_barang`
--

INSERT INTO `pembelian_barang` (`id_pembelian`, `id_pelanggan`, `nama`, `tanggal_pembelian`, `alamat`, `no_telp`, `total_harga`, `status_pembelian`) VALUES
(1, 3, 'Bambanc', '2021-06-04 05:07:31', 'Jl. Kenangan bersama nya', '891234556', 2000, 'Lunas'),
(2, 5, 'siti nur', '2022-03-12 14:28:58', 'labanan', '2147483647', 12000, 'Sudah dikirim pembayaran');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `deskripsi`, `foto_produk`) VALUES
(15, 'Spirulina Tines', 450000, 'Spirulina Capsules Tiens adalah suplemen dengan bahan dasar Antrospira sp. berkualitas tinggi.  Kadar nutrisi yang dikandung dalam spirulina sangat tinggi sehingga spirulina secara resmi digunakan oleh NASA sebagai makanan astronot. Spirulina mengoptimalkan metabolisme dan meningkatkan imunitas tubuh.  Orang yang mengkonsumsi spirulina dalam jangka panjang akan merasakan tubuhnya senantiasa penuh energi.  Spirulina Capsules Tiens menggunakan bahan dasar berkualitas tinggi yang diproduksi dengan teknologi canggih sehingga dengan konsumsi secara teratur akan memberikan gizi yang seimbang bagi tubuh manusia.\r\n\r\nSpesifikasi: 1 botol -> 500 mg x 100 kapsul\r\n\r\nManfaat :\r\nMembantu Meningkatkan daya tahan tubuh. \r\nMembantu Meningkatkan kekuatan melawan berbagai radiasi.\r\nMembantu mencegah komplikasi penyakit penyakit diabetes mellitus.\r\nMembantu Mencegah penuaan dini.\r\nMembantu Meningkatkan metabolisme tubuh.\r\nMembantu Menjaga kecantikan dari dalam dan luar tubuh.\r\nMembantu Menambah gizi secara alami pada anak-anak yang susah makan.\r\n\r\nDianjurkan bagi :\r\nAnak-anak & remaja dalam masa pertumbuhan\r\nMenjalani diet ketat, stress & merasa lelah\r\nSering tidak sarapan & makan tidak teratur\r\nLama bekerja dengan computer, telepon genggam & berbagai peralatan yang menggunakan gelombang mikro\r\n\r\nPenggunaan:\r\nCukup dikonsumsi 3x4 kapsul/hari( 3 kali sehari, setiap kali minum 4 kapsul ) & diminum sesudah makan dengan air hangat', 'spir2.png'),
(21, 'Spirulina Tines (ecer 10 kapsul)', 50000, 'Manfaat :\r\nMembantu Meningkatkan daya tahan tubuh. \r\nMembantu Meningkatkan kekuatan melawan berbagai radiasi.\r\nMembantu mencegah komplikasi penyakit penyakit diabetes mellitus.\r\nMembantu Mencegah penuaan dini.\r\nMembantu Meningkatkan metabolisme tubuh.\r\nMembantu Menjaga kecantikan dari dalam dan luar tubuh.\r\nMembantu Menambah gizi secara alami pada anak-anak yang susah makan.', 'spir3.jpg'),
(22, 'Spirulina Tines (ecer 50 kapsul)', 230000, 'Manfaat :\r\nMembantu Meningkatkan daya tahan tubuh. \r\nMembantu Meningkatkan kekuatan melawan berbagai radiasi.\r\nMembantu mencegah komplikasi penyakit penyakit diabetes mellitus.\r\nMembantu Mencegah penuaan dini.\r\nMembantu Meningkatkan metabolisme tubuh.\r\nMembantu Menjaga kecantikan dari dalam dan luar tubuh.\r\nMembantu Menambah gizi secara alami pada anak-anak yang susah makan.', 'spir1.png'),
(23, 'Vitaline', 450000, 'Fungsi :\r\n1.) Menghilangkan jerawat,flek hitam dan seluruh masalah kulit.\r\n2.) Melawan keletihan,menambah tenaga.\r\n3.) Mengurangi kelebihan lemak dalam darah,memperbaiki penyakit pembuluh darah jantung.\r\n4.) Sebagai anti oksidan dan anti-aging.\r\n5.) Meningkatkan penyampaian pesan saraf,meningkatkan kekuatan otak besar.\r\n6.) Memperbaiki fungsi hati dan menjaga kesehatan kulit. \r\n7.) Meningkatkan kulit terasa lebih kenyal,kencang dan bercahaya.', 'viyt.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pembelian_barang`
--
ALTER TABLE `pembelian_barang`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pembelian_barang`
--
ALTER TABLE `pembelian_barang`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
