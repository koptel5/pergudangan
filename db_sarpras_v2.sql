-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table sarpras.barangs
CREATE TABLE IF NOT EXISTS `barangs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_rusak` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.barangs: ~0 rows (approximately)

-- Dumping structure for table sarpras.barang_news
CREATE TABLE IF NOT EXISTS `barang_news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_lokasi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_anggaran` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_aset` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subkelompok_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merk_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_perolehan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rupiah_satuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `ruang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kondisi_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `pegawai_id` int DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `barang_news_kode_index` (`kode`),
  KEY `barang_news_kode_lokasi_index` (`kode_lokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.barang_news: ~9 rows (approximately)
INSERT INTO `barang_news` (`id`, `kode`, `kode_lokasi`, `tahun_anggaran`, `kode_barang`, `nomor_aset`, `subkelompok_barang`, `merk_type`, `tanggal_perolehan`, `rupiah_satuan`, `ruang`, `kondisi_barang`, `gambar`, `keterangan`, `pegawai_id`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(10, '11.29.00.16.01.01.01202302.01.03.04.002000001', '11.29.00.16.01.01.01', '2023', '02.01.03.04.002', '000001', 'Portable Generating Set', 'Pro Quip EQ4700SS', '2014-07-12', '4900', 'Pilih Ruangan', 'Baik', 'public/gambar/281212-3-11.29.00.16.01.01.01-2023-02.01.03.04.002-000001.jpg', NULL, 1, 1, 1, 4, '2022-12-28 12:52:43', '2023-01-26 07:40:42', '2023-01-26 07:40:42'),
	(11, '11.29.00.16.01.01.01-2015-02.01.03.04.002-000002', '11.29.00.16.01.01.01', '2015', '02.01.03.04.002', '000002', 'Portable Generating Set', 'Honda EG 6500CXS-5k Va / Honda EG 6500CXS-5k Va', '2015-12-08', '29576250', 'Ruang Sekretariat Dinas', 'Baik', 'public/gambar/281201-5-11.29.00.16.01.01.01-2015-02.01.03.04.002-000002.jpg', NULL, NULL, 1, 1, NULL, '2022-12-28 13:03:05', '2022-12-28 13:03:15', NULL),
	(12, '11.29.00.16.01.01.01-2015-02.01.03.04.002-000002', '11.29.00.16.01.01.01', '2015', '02.01.03.04.002', '000002', 'Portable Generating Set', 'Caterpillar CAT DE 0E0/100KVa/ Open', '2016-03-22', '287683000', 'Laboratorium', 'Baik', 'public/gambar/281201-1-11.29.00.16.01.01.01-2015-02.01.03.04.002-000002.jpg', NULL, NULL, 1, 1, NULL, '2022-12-28 13:07:45', '2022-12-28 13:08:36', NULL),
	(13, '11.29.00.16.01.01.01-2010-02.01.03.04.002-000003', '11.29.00.16.01.01.01', '2010', '02.01.03.04.002', '000003', 'Portable Generating Set', 'FIRMAN/UNIA DED GASOLIN', '2010-12-12', '9110000', '1', 'Baik', 'public/gambar/281201-9-11.29.00.16.01.01.01-2010-02.01.03.04.002-000003.jpg', NULL, NULL, 1, 1, NULL, '2022-12-28 13:47:07', '2022-12-28 13:47:07', NULL),
	(14, 'Dolore id qui dolore954Perspiciatis deseruDolore assumenda min', 'Dolore id qui dolore', '954', 'Perspiciatis deseru', 'Dolore assumenda min', 'Maiores est voluptat', 'Impedit atque quis', '2023-01-01', '50', 'Pilih Ruangan', 'Pilih Kondisi Barang', 'public/gambar/010101-5-Dolore id qui dolore954Perspiciatis deseruDolore assumenda min.png', 'Dolores id nesciunt', NULL, 1, 1, NULL, '2023-01-01 06:27:26', '2023-01-01 06:27:26', NULL),
	(15, 'Elit in sit qui und1591Accusantium magnam eOmnis mollit neque a', 'Elit in sit qui und', '1591', 'Accusantium magnam e', 'Omnis mollit neque a', 'Sit ut odio eveniet', 'Quis harum excepteur', '2023-01-01', '86', '6', 'Rusak Berat', 'public/gambar/010101-8-Elit in sit qui und1591Accusantium magnam eOmnis mollit neque a.png', 'Irure ea sed quasi t', NULL, 1, 1, NULL, '2023-01-01 06:33:34', '2023-01-01 06:33:34', NULL),
	(16, 'Quis ut ut consequun830Obcaecati quos obcaeEt obcaecati autem d', 'Quis ut ut consequun', '830', 'Obcaecati quos obcae', 'Et obcaecati autem d', 'Sit dolorem volupta', 'Aut porro ea iusto c', '2023-01-21', '51', 'Pilih Ruangan', 'Rusak Ringan', NULL, 'Eum sed sed tempor a', NULL, 1, 1, NULL, '2023-01-21 08:56:17', '2023-01-21 08:56:17', NULL),
	(17, 'Placeat nostrud des555Voluptatibus aut quaCupidatat omnis at a', 'Placeat nostrud des', '555', 'Voluptatibus aut qua', 'Cupidatat omnis at a', 'Nisi sapiente nihil', 'Esse minima ad ut ma', '2023-01-25', '15', '5', 'Baik', 'public/gambar/250104-7-Placeat nostrud des555Voluptatibus aut quaCupidatat omnis at a.png', 'Quia dolore natus se', 0, 6, 6, NULL, '2023-01-25 09:07:13', '2023-01-25 09:07:13', NULL),
	(18, 'Autem placeat quia878Cumque id anim nullaExcepteur quia facer', 'Autem placeat quia', '878', 'Cumque id anim nulla', 'Excepteur quia facer', 'Enim et facere nostr', 'Et rem tempor velit', '2023-01-25', '8', '6', 'Rusak Ringan', 'public/gambar/250104-2-Autem placeat quia878Cumque id anim nullaExcepteur quia facer.png', 'Velit magna ut tempo', 1, 5, 5, NULL, '2023-01-25 09:15:43', '2023-01-25 09:15:43', NULL);

-- Dumping structure for table sarpras.cabangs
CREATE TABLE IF NOT EXISTS `cabangs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cabang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.cabangs: ~4 rows (approximately)
INSERT INTO `cabangs` (`id`, `cabang`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'palembang1', 1, 1, 1, '2023-01-25 05:39:39', '2023-01-25 05:44:05', '2023-01-25 05:44:05'),
	(2, 'cabang', 1, 1, NULL, '2023-01-25 05:51:59', '2023-01-25 05:51:59', NULL),
	(3, 'cabang 2', 1, 1, NULL, '2023-01-25 08:54:18', '2023-01-25 08:54:18', NULL),
	(4, 'cabang 3', 1, 1, NULL, '2023-01-25 08:54:25', '2023-01-25 08:54:25', NULL);

-- Dumping structure for table sarpras.input_ruangan
CREATE TABLE IF NOT EXISTS `input_ruangan` (
  `id_input_ruangan` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_ruangan_barang` int NOT NULL,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `jumlah_rusak_ruangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_input_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.input_ruangan: ~0 rows (approximately)

-- Dumping structure for table sarpras.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_kategori` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kategori` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.kategori: ~0 rows (approximately)

-- Dumping structure for table sarpras.keluar
CREATE TABLE IF NOT EXISTS `keluar` (
  `id_keluar` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_keluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `untuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_keluar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.keluar: ~0 rows (approximately)

-- Dumping structure for table sarpras.keranjang_keluar
CREATE TABLE IF NOT EXISTS `keranjang_keluar` (
  `id_keluar` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_keluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `untuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_keluar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.keranjang_keluar: ~0 rows (approximately)

-- Dumping structure for table sarpras.keranjang_masuk
CREATE TABLE IF NOT EXISTS `keranjang_masuk` (
  `id_masuk` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_asup` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_satuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_total` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_toko` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merek` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_masuk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.keranjang_masuk: ~0 rows (approximately)

-- Dumping structure for table sarpras.keranjang_peminjaman
CREATE TABLE IF NOT EXISTS `keranjang_peminjaman` (
  `id_peminjaman` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_peminjam` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_pinjam` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.keranjang_peminjaman: ~0 rows (approximately)

-- Dumping structure for table sarpras.keranjang_ruangan
CREATE TABLE IF NOT EXISTS `keranjang_ruangan` (
  `id_input_ruangan` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_ruangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_input_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.keranjang_ruangan: ~0 rows (approximately)

-- Dumping structure for table sarpras.keranjang_rusak_luar
CREATE TABLE IF NOT EXISTS `keranjang_rusak_luar` (
  `id_rusak_luar` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang_rusak_luar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_rusak_luar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_rusak_luar` date NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_luar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rusak_luar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.keranjang_rusak_luar: ~0 rows (approximately)

-- Dumping structure for table sarpras.keranjang_rusak_ruangan
CREATE TABLE IF NOT EXISTS `keranjang_rusak_ruangan` (
  `id_rusak_ruangan` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang_rusak` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_rusak_ruangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ruangan_rusak` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_rusak` date NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_ruangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rusak_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.keranjang_rusak_ruangan: ~0 rows (approximately)

-- Dumping structure for table sarpras.masuk
CREATE TABLE IF NOT EXISTS `masuk` (
  `id_masuk` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_asup` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `harga_satuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_total` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_toko` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `merek` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sumber_dana` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_masuk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.masuk: ~0 rows (approximately)

-- Dumping structure for table sarpras.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.migrations: ~22 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(23, '2014_10_12_000000_create_users_table', 1),
	(24, '2014_10_12_100000_create_password_resets_table', 1),
	(25, '2020_05_13_034444_create_rusak_ruangan', 1),
	(26, '2020_05_13_034701_create_rusak_luar', 1),
	(27, '2020_05_13_034908_create_ruangan', 1),
	(28, '2020_05_13_035014_create_peminjaman', 1),
	(29, '2020_05_13_035436_create_masuk', 1),
	(30, '2020_05_13_035635_create_keranjang_rusak_ruangan', 1),
	(31, '2020_05_13_035943_create_keranjang_rusak_luar', 1),
	(32, '2020_05_13_064635_create_keranjang_ruangan', 1),
	(33, '2020_05_13_064823_create_keranjang_peminjaman', 1),
	(34, '2020_05_13_065038_create_keranjang_masuk', 1),
	(35, '2020_05_13_065429_create_keranjang_keluar', 1),
	(36, '2020_05_13_065558_create_keluar', 1),
	(37, '2020_05_13_065732_create_kategori', 1),
	(38, '2020_05_13_065838_create_input_ruangan', 1),
	(39, '2020_05_13_070559_create_barangs', 1),
	(40, '2020_05_13_071648_add_trigger', 1),
	(41, '2022_04_18_145831_create_barang_news_table', 1),
	(42, '2022_04_20_131421_create_ruangans_table', 1),
	(43, '2022_04_20_150246_create_kategoris_table', 1),
	(44, '2022_04_26_142613_alter_table_barang_news_change_tanggal_perolehan', 1),
	(45, '2022_12_30_142454_add_keterangan_to_barang_news_table', 2),
	(46, '2023_01_09_080332_create_settings_table', 3),
	(47, '2023_01_10_065641_create_pegawais_table', 4),
	(48, '2023_01_21_145708_add_pegawai_id_to_barang_news_table', 5),
	(49, '2023_01_24_081530_create_cabangs_table', 6),
	(50, '2023_01_25_153841_create_permission_tables', 7),
	(51, '2023_01_25_155031_add_cabang_id_to_users_table', 8),
	(52, '2023_01_26_085250_add_created_by_on_pegawais_table', 9);

-- Dumping structure for table sarpras.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.model_has_permissions: ~0 rows (approximately)

-- Dumping structure for table sarpras.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.model_has_roles: ~2 rows (approximately)
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\User', 4),
	(2, 'App\\User', 5),
	(1, 'App\\User', 6);

-- Dumping structure for table sarpras.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.password_resets: ~0 rows (approximately)

-- Dumping structure for table sarpras.pegawais
CREATE TABLE IF NOT EXISTS `pegawais` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_seksi` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_bidang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_dinas` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.pegawais: ~1 rows (approximately)
INSERT INTO `pegawais` (`id`, `nip`, `nama`, `hp`, `jabatan`, `foto`, `nama_seksi`, `nama_bidang`, `nama_dinas`, `deleted_by`, `updated_by`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '12313123', 'Obcaecati laborum ul', 'Est laborum irure s', 'Sunt maiores ipsa', 'public/foto/180101-9-Obcaecati laborum ul.jpg', 'Incidunt voluptatem', 'Molestiae possimus', 'xbd', NULL, NULL, NULL, '2023-01-17 18:03:11', '2023-01-21 07:41:29', NULL),
	(2, 'Architecto sapiente', 'Praesentium duis dol', 'Cupidatat repellendu', 'Ad laboriosam est n', 'public/foto/260109-10-Praesentium duis dol.jpg', 'Non quo error aut iu', 'Itaque architecto qu', 'Culpa ipsam qui fug', NULL, 6, 6, '2023-01-26 02:00:03', '2023-01-26 02:00:03', NULL);

-- Dumping structure for table sarpras.peminjaman
CREATE TABLE IF NOT EXISTS `peminjaman` (
  `id_peminjaman` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama_peminjam` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_pinjam` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.peminjaman: ~0 rows (approximately)

-- Dumping structure for table sarpras.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.permissions: ~0 rows (approximately)

-- Dumping structure for table sarpras.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.roles: ~2 rows (approximately)
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin-pusat', 'web', '2023-01-25 08:44:57', '2023-01-25 08:44:57'),
	(2, 'admin-cabang', 'web', '2023-01-25 08:44:57', '2023-01-25 08:44:57');

-- Dumping structure for table sarpras.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.role_has_permissions: ~0 rows (approximately)

-- Dumping structure for table sarpras.ruangans
CREATE TABLE IF NOT EXISTS `ruangans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_pembimbing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_ruangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint DEFAULT NULL,
  `updated_by` bigint DEFAULT NULL,
  `deleted_by` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.ruangans: ~4 rows (approximately)
INSERT INTO `ruangans` (`id`, `id_pembimbing`, `id_pj`, `kode_ruangan`, `nama_ruangan`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, '1', '0', 'D-001', 'Ruang Sekretariat Dinas', 1, 1, NULL, '2022-06-01 06:24:01', '2022-11-19 14:25:27', NULL),
	(2, '2', '0', 'D-002', 'Ruang Perencanaan Dinas', 1, 1, NULL, '2022-07-09 04:36:20', '2022-11-19 14:25:52', NULL),
	(5, '', '', 'D-003', 'Ruang Keuangan Dinas', 1, 1, NULL, '2022-12-28 12:27:06', '2022-12-28 12:27:06', NULL),
	(6, '', '', 'D-004', 'Laboratorium', 1, 1, NULL, '2022-12-28 13:08:27', '2022-12-28 13:08:27', NULL),
	(7, '', '', 'asdf', 'asdf', 5, 5, NULL, '2023-01-26 01:42:31', '2023-01-26 01:42:31', NULL);

-- Dumping structure for table sarpras.rusak_luar
CREATE TABLE IF NOT EXISTS `rusak_luar` (
  `id_rusak_luar` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang_rusak_luar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_rusak_luar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_rusak_luar` date NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_luar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rusak_luar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.rusak_luar: ~0 rows (approximately)

-- Dumping structure for table sarpras.rusak_ruangan
CREATE TABLE IF NOT EXISTS `rusak_ruangan` (
  `id_rusak_ruangan` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_barang_rusak` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_rusak_ruangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ruangan_rusak` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_rusak` date NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id_ruangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_rusak_ruangan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.rusak_ruangan: ~0 rows (approximately)

-- Dumping structure for table sarpras.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.settings: ~0 rows (approximately)
INSERT INTO `settings` (`id`, `nama`, `logo`, `created_at`, `updated_at`) VALUES
	(1, 'sarpras', '1673333593_cap.png', '2023-01-09 07:25:05', '2023-01-09 23:53:13');

-- Dumping structure for table sarpras.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` enum('rayon','pj','admin','bukan_pj') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cabang_id` int DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table sarpras.users: ~5 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `username`, `password`, `level`, `cabang_id`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'admin@gmail.com', NULL, 'admin', '$2y$10$2eDCn67Q3FPt6fzggUx3aeGCDI1b.ZuYkxgfuXhRXKzh/FNdEb.Ra', 'admin', NULL, NULL, NULL, NULL),
	(2, 'admin2', 'admin2@gmail.com', NULL, 'admin21', '$2y$10$uL1WJ1pDHGKAuB4JG6qLrutsCZwrRAL4P7SW5lrO8Ybgphtozf7TO', 'admin', NULL, NULL, '2022-12-15 12:27:24', '2022-12-15 12:27:24'),
	(3, 'pembimbing1', 'pembimbing1@gmail.com', NULL, 'pembimbing1', '$2y$10$83.BfEj6NS6OwBex16MMK.F49UacafivKGgxu9DTLqWhH6gc4AU1e', 'rayon', NULL, NULL, '2022-12-15 14:22:05', '2022-12-15 14:22:05'),
	(4, 'dyluc', 'jevyro@mailinator.com', NULL, 'fafyt', '$2y$10$2eDCn67Q3FPt6fzggUx3aeGCDI1b.ZuYkxgfuXhRXKzh/FNdEb.Ra', 'admin', 2, NULL, '2023-01-25 08:53:08', '2023-01-25 08:53:08'),
	(5, 'byzikafyja', 'vycy@mailinator.com', '2023-01-26 14:36:20', 'tuwuw', '$2y$10$2eDCn67Q3FPt6fzggUx3aeGCDI1b.ZuYkxgfuXhRXKzh/FNdEb.Ra', 'admin', 3, NULL, '2023-01-25 08:53:53', '2023-01-25 08:53:53'),
	(6, 'rypuhe', 'felef@mailinator.com', NULL, 'zaxezoh', '$2y$10$2eDCn67Q3FPt6fzggUx3aeGCDI1b.ZuYkxgfuXhRXKzh/FNdEb.Ra', 'admin', 4, NULL, '2023-01-25 08:58:16', '2023-01-25 08:58:16');

-- Dumping structure for trigger sarpras.tg_barang_keluar
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `tg_barang_keluar` AFTER INSERT ON `keluar` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah - NEW.jumlah_keluar
                WHERE
                id_barang = NEW.id_barang;
                END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger sarpras.tg_barang_masuk
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `tg_barang_masuk` AFTER INSERT ON `input_ruangan` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah - NEW.jumlah_masuk
                WHERE
                id_barang = NEW.id_barang;
                END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger sarpras.tg_masuk_barang
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `tg_masuk_barang` AFTER INSERT ON `masuk` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah + NEW.jumlah_asup
                WHERE
                id_barang = NEW.id_barang;
                END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger sarpras.tg_pinjam
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `tg_pinjam` AFTER INSERT ON `peminjaman` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah - NEW.jumlah_pinjam
                WHERE
                id_barang = NEW.id_barang;
                END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger sarpras.tg_rusak_luar
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `tg_rusak_luar` AFTER INSERT ON `rusak_luar` FOR EACH ROW BEGIN
                UPDATE barangs
                SET jumlah = jumlah - NEW.jumlah_rusak_luar
                WHERE
                id_barang = NEW.id_barang_rusak_luar;
                END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger sarpras.tg_rusak_ruangan
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';
DELIMITER //
CREATE TRIGGER `tg_rusak_ruangan` AFTER INSERT ON `rusak_ruangan` FOR EACH ROW BEGIN
                UPDATE input_ruangan
                SET jumlah_masuk = jumlah_masuk - NEW.jumlah_rusak_ruangan
                WHERE
                id_barang = NEW.id_barang_rusak
                AND
                id_ruangan_barang=NEW.id_ruangan_rusak;
                END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
