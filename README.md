# LSTARS Portal

Sistem informasi manajemen laboratorium untuk **Laboratorium Sistem Teknik & Analisis Riset Simulasi (LSTARS)**, Program Studi Teknik Industri, Fakultas Teknik, Universitas Sebelas Maret (UNS).

Portal ini digunakan untuk mengelola presensi praktikum & piket asisten, peminjaman inventaris lab, izin penelitian, logbook kegiatan, jadwal praktikum, data dosen/asisten, hingga dokumentasi kegiatan lab — dengan akses berbeda untuk masing-masing peran pengguna (admin, dosen, asisten, mahasiswa, dan tamu).

## Teknologi

- **Backend**: PHP native (tanpa framework), PHP 8.x
- **Database**: MySQL / MariaDB
- **Frontend**: HTML, CSS, JavaScript (vanilla)
- Koneksi database menggunakan `mysqli` (sebagian besar endpoint di `api/`, plus `database-dosen.php` & `database-asisten.php` yang punya koneksi sendiri) dan `PDO` (`config/database.php`)

## Struktur Folder

```
lstars/
├── admin/              # Utility internal admin (cek & sinkronisasi struktur DB)
├── api/                 # Endpoint backend (CRUD, auth, presensi, peminjaman, dll)
├── assets/               # Aset statis (gambar)
├── config/               # Konfigurasi koneksi database (PDO)
├── database/             # Dump SQL untuk setup database
├── exports/               # Export jadwal praktikum ke CSV/Excel
├── includes/              # Helper PHP bersama (session, format tanggal, dll)
├── uploads/               # File upload (foto dosen, dokumentasi kegiatan, dll)
├── *.php / *.html         # Halaman utama (dashboard per role, landing page, dll)
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

## Prasyarat (Windows)

- **XAMPP untuk Windows** — unduh di https://www.apachefriends.org (sudah termasuk Apache, MySQL/MariaDB, PHP 8.x, dan phpMyAdmin)
- Browser (Chrome/Edge/Firefox)
- (Opsional) [Git for Windows](https://git-scm.com/download/win) — kalau tidak ada, bisa download project sebagai ZIP langsung dari GitHub

## Langkah Instalasi

### 1. Download project

**Opsi A — pakai Git:**
```bat
cd C:\xampp\htdocs
git clone https://github.com/Bob-star-dev/lstars.git
```

**Opsi B — tanpa Git:**
Buka https://github.com/Bob-star-dev/lstars → klik tombol hijau **Code** → **Download ZIP** → extract isinya ke:
```
C:\xampp\htdocs\lstars
```
Pastikan hasil akhirnya adalah `C:\xampp\htdocs\lstars\index.html`, bukan `C:\xampp\htdocs\lstars\lstars-main\index.html` (kalau ke-nested, pindahkan isinya naik satu folder).

### 2. Nyalakan Apache & MySQL

1. Buka **XAMPP Control Panel** (disarankan klik kanan → **Run as administrator**, supaya Apache/MySQL tidak gagal bind port).
2. Klik **Start** pada baris **Apache** dan **MySQL**. Keduanya harus berubah jadi hijau/status "Running".
   - Kalau Apache gagal start (port 80 dipakai aplikasi lain seperti Skype/IIS), ubah port Apache lewat **Config → httpd.conf**, atau matikan aplikasi yang bentrok.

### 3. Setup Database

1. Buka browser, akses **http://localhost/phpmyadmin**.
2. Klik **New** di sidebar kiri, buat database baru dengan nama persis **`lstars`**, lalu klik **Create**.
3. Pilih database `lstars` yang baru dibuat → tab **Import** → **Choose File** → pilih file `database\lstars.sql` dari folder project → klik **Go**.
4. Semua tabel & data referensi (dosen, asisten, inventaris, dll) akan otomatis terisi. **Tabel `users` sengaja kosong** — akun login akan diberikan terpisah oleh pemilik project. Setelah menerima akun tersebut, tambahkan lewat tab **Insert** pada tabel `users` di phpMyAdmin, atau jalankan query di tab **SQL**:
   ```sql
   INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `nomor_induk`, `email`, `role`)
   VALUES ('admin', '<password_yang_diberikan>', 'Nama Admin', '', 'admin@example.com', 'admin');
   ```
5. Konfigurasi koneksi database di project **sudah diset ke default XAMPP Windows** (`host: localhost`, `user: root`, `password: kosong`), jadi biasanya **tidak perlu diubah apa-apa**. Kalau instalasi MySQL kamu memakai username/password custom, konfigurasi koneksi database ada di **4 file terpisah** dan harus disamakan semua:
   - `config/database.php`
   - `api/koneksi.php`
   - `database-dosen.php`
   - `database-asisten.php`

### 4. Akses Project

Buka browser, akses:
```
http://localhost/lstars/
```
Klik **Masuk ke Halaman Login**, login pakai akun yang diberikan terpisah, atau klik **Masuk sebagai Tamu** untuk akses terbatas tanpa akun.

## Troubleshooting

**"This site can't be reached" / `ERR_CONNECTION_REFUSED`**
→ Apache dan/atau MySQL belum jalan. Buka XAMPP Control Panel, pastikan keduanya berstatus **Running** (hijau).

**Error 404 "Object not found" saat buka `http://localhost/lstars/`**
→ Folder project belum ada/salah tempat di `htdocs`, atau namanya bukan `lstars`. Pastikan file `index.html` project ada tepat di `C:\xampp\htdocs\lstars\index.html`.

**Muncul pesan "Koneksi database gagal" saat login/pakai fitur apapun**
→ Pastikan database bernama tepat `lstars` sudah dibuat dan file `database\lstars.sql` sudah di-import (lihat langkah Setup Database di atas). Cek juga MySQL di XAMPP Control Panel sudah **Running**.

**Login tidak bisa/tombol tidak merespons**
→ Pastikan kamu pakai kode terbaru dari repo ini. Versi lama project memiliki reCAPTCHA yang kadang gagal dimuat dan memblokir form login — reCAPTCHA tersebut **sudah dihapus** di repo ini, jadi seharusnya tidak lagi jadi masalah.

**Belum punya akun untuk login**
→ Kredensial akun admin & asisten dibagikan terpisah oleh pemilik project (di luar repository ini).

## Catatan

- Kredensial akun login **tidak disertakan** dalam repository ini dan akan dibagikan secara terpisah.
- Password pada tabel `users` saat ini disimpan sebagai plain text untuk kemudahan development. Sebelum digunakan di lingkungan produksi/publik, sebaiknya password di-hash menggunakan `password_hash()` PHP.
- Zona waktu server sudah diatur ke `Asia/Jakarta` secara default di kode, tidak perlu diubah.
