# LSTARS Portal

Sistem informasi manajemen laboratorium untuk **Laboratorium Sistem Teknik & Analisis Riset Simulasi (LSTARS)**, Program Studi Teknik Industri, Fakultas Teknik, Universitas Sebelas Maret (UNS).

Portal ini digunakan untuk mengelola presensi praktikum & piket asisten, peminjaman inventaris lab, izin penelitian, logbook kegiatan, jadwal praktikum, data dosen/asisten, hingga dokumentasi kegiatan lab — dengan akses berbeda untuk masing-masing peran pengguna (admin, dosen, asisten, mahasiswa, dan tamu).

## Teknologi

- **Backend**: PHP native (tanpa framework), PHP 8.x
- **Database**: MySQL / MariaDB
- **Frontend**: HTML, CSS, JavaScript (vanilla)
- Koneksi database menggunakan `mysqli` (untuk sebagian besar endpoint di `api/`) dan `PDO` (`config/database.php`)

## Struktur Folder

```
lstars/
├── admin/              # Utility internal admin (cek & sinkronisasi struktur DB)
├── api/                # Endpoint backend (CRUD, auth, presensi, peminjaman, dll)
├── assets/              # Aset statis (gambar)
├── config/              # Konfigurasi koneksi database (PDO)
├── database/            # Dump SQL untuk setup database
├── exports/              # Export jadwal praktikum ke CSV/Excel
├── includes/             # Helper PHP bersama (session, format tanggal, dll)
├── uploads/              # File upload (foto dosen, dokumentasi kegiatan, dll)
├── *.php / *.html        # Halaman utama (dashboard per role, landing page, dll)
├── script.js / scriptadmin.js / scriptlogin.js / navbar.js  # Logic frontend
└── style.css / loginstyle.css
```

## Fitur Utama

- **Autentikasi**: login berbasis email & password dengan session PHP, serta mode akses tamu (guest) tanpa perlu akun
- **Manajemen data**: dosen, asisten, dan inventaris lab (CRUD)
- **Presensi**: presensi praktikum dan presensi piket asisten
- **Peminjaman**: pengajuan, persetujuan, dan pengembalian peminjaman inventaris lab
- **Izin penelitian**: pengajuan izin penggunaan lab untuk penelitian, dengan alur persetujuan dosen
- **Logbook**: pencatatan kegiatan mahasiswa/asisten di lab
- **Jadwal praktikum**: pengelolaan jadwal, dengan fitur export ke CSV/Excel
- **Dokumentasi kegiatan**: unggah dan tampilkan dokumentasi kegiatan lab
- **Dashboard** berbeda untuk setiap role: admin, dosen, asisten/mahasiswa, dan tamu

## Prasyarat

- Web server dengan PHP >= 8.0 (disarankan menggunakan **XAMPP**)
- MySQL / MariaDB
- Ekstensi PHP: `mysqli`, `pdo_mysql`

## Setup Database

1. Buka phpMyAdmin (atau client MySQL lain), buat database baru bernama **`lstars`**.
2. Import struktur & data awal dari file `database/lstars.sql` ke database `lstars` tersebut.
3. File dump ini **tidak menyertakan data akun login** (tabel `users` sengaja dikosongkan). Akun untuk login akan dibagikan secara terpisah oleh pemilik project. Setelah import, tambahkan akun admin awal secara manual lewat phpMyAdmin atau query berikut (sesuaikan nilainya):

   ```sql
   INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `nomor_induk`, `email`, `role`)
   VALUES ('admin', '<password_anda>', 'Nama Admin', '', 'admin@example.com', 'admin');
   ```

4. Sesuaikan kredensial koneksi database jika berbeda dari default XAMPP (`host: localhost`, `user: root`, `password: kosong`) di dua file berikut:
   - `config/database.php`
   - `api/koneksi.php`

## Cara Menjalankan Project

1. Pastikan Apache dan MySQL sudah berjalan (misalnya lewat XAMPP Control Panel, atau `sudo /opt/lampp/lampp start` di Linux).
2. Tempatkan/salin folder project ini ke dalam direktori root web server (`htdocs` pada XAMPP). Di Linux, bisa juga menggunakan symlink:
   ```bash
   sudo ln -s /path/ke/folder/lstars /opt/lampp/htdocs/lstars
   ```
3. Pastikan setup database di atas sudah selesai.
4. Buka browser dan akses:
   ```
   http://localhost/lstars/
   ```
5. Klik **Masuk ke Halaman Login**, lalu login menggunakan akun yang telah dibuat/diberikan (lihat bagian Setup Database), atau klik **Masuk sebagai Tamu** untuk akses terbatas tanpa akun.

## Catatan

- Kredensial akun login **tidak disertakan** dalam repository ini dan akan dibagikan secara terpisah.
- Password pada tabel `users` saat ini disimpan sebagai plain text untuk kemudahan development. Sebelum digunakan di lingkungan produksi/publik, sebaiknya password di-hash menggunakan `password_hash()` PHP.
- Pastikan zona waktu server diatur ke `Asia/Jakarta` (sudah diatur secara default di kode).
