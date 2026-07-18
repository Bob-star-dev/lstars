-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 18 Jul 2026 pada 18.00
-- Versi server: 5.7.44-log
-- Versi PHP: 8.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lstars`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `asisten`
--

CREATE TABLE `asisten` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL DEFAULT 'Aktif',
  `angkatan` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `asisten`
--

INSERT INTO `asisten` (`id`, `nim`, `nama`, `jabatan`, `status`, `angkatan`) VALUES
(1, 10322034, 'Deanieta Adilest', 'Asisten Laboratorium', 'Aktif', '2022'),
(2, 10322035, 'Dennisa Lathifa Hardiani', 'Asisten Laboratorium', 'Aktif', '2022'),
(3, 10322043, 'Fatihah Asy Syifa', 'Asisten Laboratorium', 'Aktif', '2022'),
(4, 10322047, 'Flavia Fayyazza Aqeela Aurora', 'Asisten Laboratorium', 'Aktif', '2022'),
(5, 10322052, 'Helmi Rafif Fauzan', 'Asisten Laboratorium', 'Aktif', '2022'),
(6, 10322054, 'Irviana Amanatul Mufaida', 'Asisten Laboratorium', 'Aktif', '2022'),
(7, 10322055, 'Ivan Pramudya Artura', 'Asisten Laboratorium', 'Aktif', '2022'),
(8, 10322065, 'Khalifatur Alfi', 'Asisten Laboratorium', 'Aktif', '2022'),
(9, 10322084, 'Muhammad Ilham Wadini', 'Asisten Laboratorium', 'Aktif', '2022'),
(10, 10322087, 'Muhammad Yusuf Habibie', 'Asisten Laboratorium', 'Aktif', '2022'),
(11, 10322089, 'Mutiara Anjeli Aldrin', 'Asisten Laboratorium', 'Aktif', '2022'),
(12, 10322090, 'Nadila Zalfa Nursantika', 'Asisten Laboratorium', 'Aktif', '2022'),
(13, 10322094, 'Neerzalla Atha Nafisah', 'Asisten Laboratorium', 'Aktif', '2022'),
(14, 10322095, 'Rafli Andreansyah', 'Asisten Laboratorium', 'Aktif', '2022'),
(15, 10322096, 'Raisa Azzahra', 'Asisten Laboratorium', 'Aktif', '2022'),
(16, 10322103, 'Tara Nur Lita', 'Asisten Laboratorium', 'Aktif', '2022'),
(17, 10322110, 'Tiara Vionadita Pattikawa', 'Asisten Laboratorium', 'Aktif', '2022'),
(18, 10322114, 'Tristan Edrea Adwitya', 'Asisten Laboratorium', 'Aktif', '2022'),
(19, 10322116, 'Tsamara Najwa Dzakiyya', 'Asisten Laboratorium', 'Aktif', '2022'),
(20, 10322117, 'Vincent Arif Kurniawan', 'Asisten Laboratorium', 'Aktif', '2022'),
(21, 10322119, 'Wildan Faris Ashari', 'Asisten Laboratorium', 'Aktif', '2022'),
(22, 10322120, 'Yulia Puspa Nur Ranti', 'Asisten Laboratorium', 'Aktif', '2022'),
(23, 10323001, 'Adelia Saqina', 'Asisten Laboratorium', 'Aktif', '2023'),
(24, 10323005, 'Adhisti Najla Hannifah', 'Asisten Laboratorium', 'Aktif', '2023'),
(25, 10323023, 'Bima Aryasakti Persada', 'Asisten Laboratorium', 'Aktif', '2023'),
(26, 10323027, 'Dimas Adira Sugiyanto', 'Asisten Laboratorium', 'Aktif', '2023'),
(27, 10323032, 'Dimas Faiqwira Anwar', 'Asisten Laboratorium', 'Aktif', '2023'),
(28, 10323042, 'Ferizki Ferdinata', 'Asisten Laboratorium', 'Aktif', '2023'),
(29, 10323043, 'Ferrel Rafi Elian', 'Asisten Laboratorium', 'Aktif', '2023'),
(30, 10323061, 'Lalu Dea Kusuma Adji', 'Asisten Laboratorium', 'Aktif', '2023'),
(31, 10323062, 'Levina Meisya Putri', 'Asisten Laboratorium', 'Aktif', '2023'),
(32, 10323066, 'Margareth Valerie Sitepu', 'Asisten Laboratorium', 'Aktif', '2023'),
(33, 10323072, 'Michael Alexander Wijaya', 'Asisten Laboratorium', 'Aktif', '2023'),
(34, 10323074, 'Mir\'atus Sholihah Ahlam', 'Asisten Laboratorium', 'Aktif', '2023'),
(35, 10323091, 'Nadia Salsabila Safa\'ani', 'Asisten Laboratorium', 'Aktif', '2023'),
(36, 10323104, 'Ratih Sulistya', 'Asisten Laboratorium', 'Aktif', '2023'),
(37, 10323113, 'Silvia Ramadhanti', 'Asisten Laboratorium', 'Aktif', '2023'),
(38, 10323119, 'Zakiya Al Hayaah', 'Asisten Laboratorium', 'Aktif', '2023'),
(39, 10323122, 'Zavira Surya Adi Putri', 'Asisten Laboratorium', 'Aktif', '2023'),
(40, 10323124, 'Amelia Patricia Hutapea', 'Asisten Laboratorium', 'Aktif', '2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokumentasi_kegiatan`
--

CREATE TABLE `dokumentasi_kegiatan` (
  `id` int(11) NOT NULL,
  `judul_kegiatan` varchar(255) NOT NULL,
  `deskripsi` text,
  `tanggal_kegiatan` date NOT NULL,
  `url_gambar` varchar(255) NOT NULL,
  `uploader_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dokumentasi_kegiatan`
--

INSERT INTO `dokumentasi_kegiatan` (`id`, `judul_kegiatan`, `deskripsi`, `tanggal_kegiatan`, `url_gambar`, `uploader_user_id`) VALUES
(1, 'Foto Praktikum FISDAS', 'Dokumentasi praktikum Fisika Dasar.', '2025-08-22', 'uploads/dokumentasi/FISDAS_2.jpg', 1),
(2, 'Foto Praktikum FISDAS', 'Dokumentasi praktikum Fisika Dasar.', '2025-08-22', 'uploads/dokumentasi/FISDAS_3.jpg', 1),
(3, 'Foto Praktikum FISDAS', 'Dokumentasi praktikum Fisika Dasar.', '2025-08-22', 'uploads/dokumentasi/FISDAS_4.jpg', 1),
(4, 'Foto Praktikum FISDAS', 'Dokumentasi praktikum Fisika Dasar.', '2025-08-22', 'uploads/dokumentasi/FISDAS_1.jpg', 1),
(5, 'Foto Praktikum PPC', 'Dokumentasi praktikum mata kuliah PPC.', '2025-08-22', 'uploads/dokumentasi/PPC_2.png', 1),
(6, 'Foto Praktikum PPC', 'Dokumentasi praktikum mata kuliah PPC.', '2025-08-22', 'uploads/dokumentasi/PPC_1.png', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nidn` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gelar_depan` varchar(50) DEFAULT NULL,
  `nama_dosen` varchar(100) DEFAULT NULL,
  `gelar_belakang` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `homebase_prodi` varchar(100) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id`, `nidn`, `user_id`, `gelar_depan`, `nama_dosen`, `gelar_belakang`, `nip`, `homebase_prodi`, `foto`) VALUES
(1, '0004117101', NULL, 'Prof. Dr.', 'Cucuk Nur Rosyidi', 'S.T., M.T.', '1971104199031000', 'S-1 Teknik Industri', 'cucuk.jpg'),
(2, '0005107902', NULL, 'Prof. Dr.', 'Wakhid Ahmad Jauhari', 'S.T., M.T.', '197910052003121003', 'S-1 Teknik Industri', 'wakhid.png'),
(3, '0003117902', NULL, 'Dr. Eng.', 'Pringgo Widyo Laksono', 'S.T., M.Eng. IPM', '197911032005011003', 'S-1 Teknik Industri', 'pringgo.png'),
(4, '0012067003', NULL, 'Prof. Dr. Ir.', 'Eko Pujiyanto', 'S.Si., M.T.', '197006121997021001', 'S-1 Teknik Industri', 'eko.png'),
(5, '0006038003', NULL, 'Prof. Dr. Ir.', 'Retno Wulan Damayanti', 'S.T., M.T.', '198003062005012002', 'S-1 Teknik Industri', 'retno.png'),
(6, '0008107401', NULL, 'Dr. Ir.', 'Fakhrina Fahma', 'S.T.P., M.T.', '197410082000032001', 'S-1 Teknik Industri', 'fakhrina.jpg'),
(7, '-', NULL, '', 'Era Febriana Agidawati\r\n', 'S.T., M.T.', '199702242024062001', 'S-1 Teknik Industri', 'era.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `nama_alat` varchar(255) NOT NULL,
  `kode_alat` varchar(100) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL,
  `deskripsi` text,
  `lokasi` varchar(100) DEFAULT 'LSP',
  `gambar_url` varchar(255) DEFAULT NULL,
  `status` enum('Tersedia','Dipinjam','Rusak','Dalam Perbaikan') NOT NULL DEFAULT 'Tersedia',
  `jumlah_total` int(11) DEFAULT '1',
  `jumlah_tersedia` int(11) DEFAULT '1',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`id`, `nama_alat`, `kode_alat`, `kategori`, `deskripsi`, `lokasi`, `gambar_url`, `status`, `jumlah_total`, `jumlah_tersedia`, `updated_at`) VALUES
(1, 'Jangka Sorong', 'AA01', 'Alat Ukur', '', 'LSP', NULL, 'Tersedia', 16, 16, '2025-08-22 13:18:57'),
(2, 'Micrometer sekrup', 'AA02', NULL, NULL, 'LSP', NULL, 'Tersedia', 16, 16, '2025-08-22 01:55:15'),
(3, 'Timbangan', 'AA03', NULL, NULL, 'LSP', NULL, 'Tersedia', 7, 7, '2025-08-22 13:18:46'),
(4, 'Thermometer', 'AA04', NULL, '2 Baik, 1 rusak', 'LSP', NULL, 'Tersedia', 3, 3, '2025-08-17 14:10:24'),
(5, 'Neraca 4 Lengan', 'AA05', NULL, NULL, 'LSP', NULL, 'Tersedia', 2, 1, '2025-08-25 04:37:35'),
(6, 'Neraca 3 Lengan (Ohauss)', 'AA06', NULL, NULL, 'LSP', NULL, 'Tersedia', 1, 1, '2025-08-17 14:10:24'),
(7, 'Beban Gantung (Biru)', 'AA07', NULL, NULL, 'LSP', NULL, 'Tersedia', 1, 1, '2025-08-17 14:10:24'),
(8, 'Power Supply', 'AA08', NULL, NULL, 'LSP', NULL, 'Tersedia', 4, 4, '2025-08-17 14:10:24'),
(9, 'Gelar Ukur 500ml', 'AA09', NULL, NULL, 'LSP', NULL, 'Tersedia', 8, 8, '2025-08-17 14:10:24'),
(10, 'Gelas Ukur 500ml dengan tutup', 'AA10', NULL, NULL, 'LSP', NULL, 'Tersedia', 9, 9, '2025-08-17 14:10:24'),
(11, 'Gelas ukur 100ml', 'AA11', NULL, NULL, 'LSP', NULL, 'Tersedia', 5, 5, '2025-08-17 14:10:24'),
(12, 'Ticket Timer (Aman)', 'AA12', NULL, NULL, 'LSP', NULL, 'Tersedia', 5, 5, '2025-08-17 14:10:24'),
(13, 'Ticket Timer (Rusak)', 'AA13', NULL, NULL, 'LSP', NULL, 'Rusak', 2, 0, '2025-08-17 14:10:24'),
(14, 'Katrol Tali', 'AA14', NULL, NULL, 'LSP', NULL, 'Tersedia', 3, 3, '2025-08-17 14:10:24'),
(15, 'Katrol Tali', 'AA15', NULL, NULL, 'LSP', NULL, 'Rusak', 1, 0, '2025-08-17 14:10:24'),
(16, 'Water Heater', 'AA16', NULL, NULL, 'LSP', NULL, 'Tersedia', 5, 5, '2025-08-17 14:10:24'),
(17, 'Water Heater', 'AA17', NULL, NULL, 'LSP', NULL, 'Tersedia', 4, 4, '2025-09-26 04:34:46'),
(18, 'Mistar (Penggaris) 30 cm', 'AA18', NULL, NULL, 'LSP', NULL, 'Tersedia', 6, 4, '2026-01-16 03:14:06'),
(19, 'Gelas Ukur 250 ml', 'AA19', NULL, NULL, 'LSP', NULL, 'Tersedia', 4, 4, '2025-08-17 14:10:24'),
(20, 'Penggaris Busur', 'AA20', NULL, NULL, 'LSP', NULL, 'Tersedia', 8, 8, '2025-08-24 15:41:19'),
(21, 'Penggaris 20 cm', 'AA21', NULL, NULL, 'LSP', NULL, 'Tersedia', 1, 1, '2025-08-17 14:10:24'),
(22, 'Project Board', 'AA22', NULL, NULL, 'LSP', NULL, 'Tersedia', 17, 17, '2025-08-17 14:10:24'),
(23, 'Jangka', 'AA23', NULL, NULL, 'LSP', NULL, 'Tersedia', 2, 2, '2025-08-17 14:10:24'),
(24, 'Penggaris segitiga 28 cm', 'AA24', NULL, NULL, 'LSP', NULL, 'Tersedia', 1, 1, '2025-08-17 14:10:24'),
(25, 'Tali Katrol', 'AA25', NULL, NULL, 'LSP', NULL, 'Tersedia', 8, 8, '2025-08-17 14:10:24'),
(26, 'Silinder berongga', 'AA26', NULL, NULL, 'LSP', NULL, 'Tersedia', 7, 7, '2025-08-17 14:10:24'),
(27, 'Silinder pejal', 'AA27', NULL, NULL, 'LSP', NULL, 'Tersedia', 7, 7, '2025-08-17 14:10:24'),
(28, 'Silinder kompleks', 'AA28', NULL, NULL, 'LSP', NULL, 'Tersedia', 8, 8, '2025-08-17 14:10:24'),
(29, 'Gelas Minum', 'AA29', NULL, '4 Kaca 2 Plastik', 'LSP', NULL, 'Tersedia', 6, 6, '2025-08-17 14:10:24'),
(30, 'Galon Kosongan', 'AA30', NULL, NULL, 'LSP', NULL, 'Tersedia', 8, 8, '2025-08-17 14:10:24'),
(31, 'Piring Plastik', 'AA31', NULL, NULL, 'LSP', NULL, 'Tersedia', 1, 1, '2025-08-17 14:10:24'),
(32, 'Nampan kayu', 'AA32', NULL, NULL, 'LSP', NULL, 'Tersedia', 1, 1, '2025-08-17 14:10:24'),
(33, 'Water Heater CTL-200 (Cosmos)', 'AA33', NULL, NULL, 'LSP', NULL, 'Tersedia', 1, 1, '2025-08-17 14:10:24'),
(34, 'Multimeter', 'AA34', NULL, NULL, 'LSP', NULL, 'Tersedia', 4, 4, '2025-08-17 14:10:24'),
(35, 'Pinset', 'AA35', NULL, NULL, 'LSP', NULL, 'Tersedia', 5, 5, '2025-08-17 14:10:24'),
(36, 'Mobil Mainan', 'AA36', NULL, NULL, 'LSP', NULL, 'Tersedia', 14, 14, '2025-08-17 14:10:24'),
(37, 'Stopwatch', 'AA37', NULL, NULL, 'LSP', NULL, 'Tersedia', 16, 16, '2025-08-17 14:10:24'),
(38, 'Wearpack', 'AA38', NULL, NULL, 'LSP', NULL, 'Tersedia', 9, 9, '2025-08-17 14:10:24'),
(39, 'Topi Toyota', 'AA39', NULL, NULL, 'LSP', NULL, 'Tersedia', 12, 12, '2025-08-17 14:10:24'),
(40, 'Dispenser', 'AA40', NULL, NULL, 'LSP', NULL, 'Rusak', 1, 0, '2025-08-17 14:10:24'),
(41, 'Helm Proyek', 'AA41', NULL, NULL, 'LSP', NULL, 'Tersedia', 4, 3, '2025-08-25 04:37:39'),
(42, 'Pompa galon elektrik', 'AA42', NULL, NULL, 'LSP', NULL, 'Tersedia', 1, 1, '2025-08-17 14:10:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin_penelitian`
--

CREATE TABLE `izin_penelitian` (
  `id` int(11) NOT NULL,
  `mahasiswa_user_id` int(11) NOT NULL,
  `dosen_user_id` int(11) NOT NULL,
  `nama_mahasiswa` varchar(255) DEFAULT NULL,
  `nim` varchar(50) DEFAULT NULL,
  `judul_penelitian` varchar(255) NOT NULL,
  `deskripsi` text,
  `tgl_pengajuan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('Diajukan','Disetujui','Ditolak','Selesai') DEFAULT 'Diajukan',
  `tgl_diproses` datetime DEFAULT NULL,
  `diproses_oleh` int(11) DEFAULT NULL,
  `catatan_dosen` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `izin_penelitian`
--

INSERT INTO `izin_penelitian` (`id`, `mahasiswa_user_id`, `dosen_user_id`, `nama_mahasiswa`, `nim`, `judul_penelitian`, `deskripsi`, `tgl_pengajuan`, `status`, `tgl_diproses`, `diproses_oleh`, `catatan_dosen`) VALUES
(14, 6, 4, 'nayla', '21.2211', 'menghitung berat badan ', 'menghitung berat badan menggunakan timbangan badan ', '2025-10-08 11:59:14', 'Diajukan', NULL, NULL, NULL),
(15, 6, 4, 'akbar', '0909090', 'menghitung uang ', 'mnghitung uang ', '2025-10-13 03:07:26', 'Diajukan', NULL, NULL, NULL),
(16, 6, 7, 'aku', '1232132', 'adalah pokoknya', 'adalah pokoknya', '2026-01-16 03:01:47', 'Ditolak', '2026-01-16 14:32:04', 1, NULL),
(17, 1, 3, 'test', '123', 'test', 'test', '2026-01-16 04:08:01', 'Disetujui', '2026-01-16 11:10:54', 1, NULL),
(18, 6, 5, 'saya', '309801809', 'saya', 'sayaa', '2026-01-16 14:55:05', 'Diajukan', NULL, NULL, NULL),
(19, 6, 7, 'BAYU', '23901809', 'BAYY', 'BAYYYUU', '2026-01-17 03:09:20', 'Diajukan', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_praktikum`
--

CREATE TABLE `jadwal_praktikum` (
  `id` int(11) NOT NULL,
  `mata_kuliah` varchar(100) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `hari` varchar(20) DEFAULT NULL,
  `jam` varchar(50) DEFAULT NULL,
  `ruangan` varchar(50) DEFAULT NULL,
  `dosen` varchar(100) DEFAULT NULL,
  `jumlah_mahasiswa` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `waktu_mulai` time DEFAULT NULL,
  `waktu_selesai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `logbook`
--

CREATE TABLE `logbook` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nama_pengisi` varchar(255) NOT NULL,
  `nim_pengisi` varchar(50) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `logbook`
--

INSERT INTO `logbook` (`id`, `user_id`, `nama_pengisi`, `nim_pengisi`, `judul`, `tanggal_kegiatan`, `deskripsi`, `created_at`) VALUES
(9, 6, 'nayla', '22.0912193890', 'menghitung berat badan ', '2025-10-08', 'menghitung berat badan menggunakan timbangan badan ', '2025-10-08 11:44:41'),
(10, 6, 'aku', '329879', 'adalah pokoknya', '2026-01-16', 'adalah pokoknya', '2026-01-16 03:03:28'),
(11, 1, 'test', '123', 'test', '2026-01-16', 'test', '2026-01-16 04:09:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `log_aktivitas`
--

CREATE TABLE `log_aktivitas` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `aktivitas` varchar(100) NOT NULL,
  `detail` text,
  `tgl_aktivitas` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log_aktivitas`
--

INSERT INTO `log_aktivitas` (`id`, `user_id`, `aktivitas`, `detail`, `tgl_aktivitas`) VALUES
(1, 1, 'Aksi Izin Penelitian', 'Izin penelitian \'test\' telah disetujui', '2026-01-16 11:10:54'),
(2, 1, 'Aksi Izin Penelitian', 'Izin penelitian \'adalah pokoknya\' telah ditolak', '2026-01-16 14:32:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `peminjam_user_id` int(11) NOT NULL,
  `asisten_user_id` int(11) DEFAULT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_rencana_kembali` date NOT NULL,
  `tgl_aktual_kembali` date DEFAULT NULL,
  `status` enum('Diajukan','Disetujui','Ditolak','Dipinjam','Dikembalikan') NOT NULL DEFAULT 'Diajukan',
  `catatan` text,
  `nama_peminjam` varchar(255) NOT NULL,
  `nim_peminjam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `inventory_id`, `peminjam_user_id`, `asisten_user_id`, `tgl_pinjam`, `tgl_rencana_kembali`, `tgl_aktual_kembali`, `status`, `catatan`, `nama_peminjam`, `nim_peminjam`) VALUES
(12, 19, 6, NULL, '2025-10-08', '2025-10-09', NULL, 'Diajukan', '', 'nayla', '9320982301932810'),
(13, 18, 6, NULL, '2026-01-16', '2026-01-17', NULL, 'Dipinjam', '', 'aku', '219847849'),
(14, 1, 1, NULL, '2026-01-16', '2026-01-17', NULL, 'Diajukan', '', 'test', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi_piket`
--

CREATE TABLE `presensi_piket` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama_asisten` varchar(255) NOT NULL,
  `nim_asisten` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_masuk` time NOT NULL,
  `waktu_keluar` time DEFAULT NULL,
  `durasi` varchar(50) DEFAULT NULL,
  `status` enum('sedang piket','selesai') NOT NULL DEFAULT 'sedang piket'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `presensi_piket`
--

INSERT INTO `presensi_piket` (`id`, `user_id`, `nama_asisten`, `nim_asisten`, `tanggal`, `waktu_masuk`, `waktu_keluar`, `durasi`, `status`) VALUES
(7, NULL, 'nayla', '22.09109012', '2025-10-08', '18:43:16', NULL, NULL, 'sedang piket'),
(8, NULL, 'aku', '209818209', '2026-01-16', '10:02:02', NULL, NULL, 'sedang piket'),
(9, NULL, 'test', '123', '2026-01-16', '11:08:41', NULL, NULL, 'sedang piket');

-- --------------------------------------------------------

--
-- Struktur dari tabel `presensi_praktikum`
--

CREATE TABLE `presensi_praktikum` (
  `id` int(11) NOT NULL,
  `nama_mahasiswa` varchar(255) NOT NULL,
  `nim_mahasiswa` varchar(50) NOT NULL,
  `mata_praktikum` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_masuk` time NOT NULL,
  `waktu_keluar` time DEFAULT NULL,
  `durasi` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `presensi_praktikum`
--

INSERT INTO `presensi_praktikum` (`id`, `nama_mahasiswa`, `nim_mahasiswa`, `mata_praktikum`, `tanggal`, `waktu_masuk`, `waktu_keluar`, `durasi`, `status`) VALUES
(9, 'nayla', '22.02910902', 'fisdar', '2025-10-08', '18:43:40', NULL, NULL, 'sedang praktikum'),
(10, 'aku', '289739731', 'adalah pokoknya', '2026-01-16', '10:02:23', NULL, NULL, 'sedang praktikum'),
(11, 'test', '123', 'test', '2026-01-16', '11:06:58', NULL, NULL, 'sedang praktikum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `nomor_induk` varchar(255) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `role` enum('admin','dosen','asisten','mahasiswa') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- CATATAN: data akun pada tabel `users` sengaja TIDAK disertakan di sini.
-- Akun login akan dibagikan secara terpisah oleh pemilik project.
-- Setelah import, tambahkan akun admin awal secara manual, misalnya:
--
-- INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `nomor_induk`, `email`, `role`) VALUES
-- ('admin', '<password_anda>', 'Nama Admin', '', 'admin@example.com', 'admin');
--

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `asisten`
--
ALTER TABLE `asisten`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indeks untuk tabel `dokumentasi_kegiatan`
--
ALTER TABLE `dokumentasi_kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_alat` (`kode_alat`);

--
-- Indeks untuk tabel `izin_penelitian`
--
ALTER TABLE `izin_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `izin_penelitian_ibfk_1` (`mahasiswa_user_id`),
  ADD KEY `izin_penelitian_ibfk_2` (`dosen_user_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indeks untuk tabel `jadwal_praktikum`
--
ALTER TABLE `jadwal_praktikum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `logbook`
--
ALTER TABLE `logbook`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log_aktivitas`
--
ALTER TABLE `log_aktivitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_tgl_aktivitas` (`tgl_aktivitas`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_id` (`inventory_id`),
  ADD KEY `peminjam_user_id` (`peminjam_user_id`),
  ADD KEY `asisten_user_id` (`asisten_user_id`);

--
-- Indeks untuk tabel `presensi_piket`
--
ALTER TABLE `presensi_piket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `presensi_praktikum`
--
ALTER TABLE `presensi_praktikum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

ALTER TABLE `asisten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

ALTER TABLE `dokumentasi_kegiatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

ALTER TABLE `izin_penelitian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

ALTER TABLE `jadwal_praktikum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `logbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `log_aktivitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

ALTER TABLE `presensi_piket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `presensi_praktikum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
