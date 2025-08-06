# Absensi App

Aplikasi Flutter sederhana untuk absensi kehadiran berbasis lokasi & selfie.

---

## Daftar Isi

1. [Fitur](#fitur)  
2. [Teknologi & Plugin](#teknologi--plugin)  
3. [Persiapan](#persiapan)  

---

## Fitur

1. **Login Dummy**  
   - Hanya menerima akun:
     - **Email**: `admin@company.com`  
     - **Password**: `password123`
2. **Halaman Absensi**  
   - Tampilkan:
     - Nama pengguna
     - Tanggal & waktu sekarang
     - Koordinat lokasi user
     - Status absensi hari ini (Sudah/Belum)
   - Tombol **Ambil Selfie**  
   - Tombol **Absen Sekarang** aktif jika:
     1. Selfie sudah diambil
     2. Lokasi dalam radius 100 m dari kantor (`lat=-6.200000, lng=106.816666`)
     3. Belum Absen Hari ini 
3. **Riwayat Absensi**  
   - Daftar semua absensi:
     - Tanggal & jam  
     - Status lokasi (Valid/Tidak valid)  
     - Thumbnail selfie  
   - Klik item untuk buka **Detail Absensi**:
     - Foto selfie full  
     - Waktu & status  
     - Koordinat  
     - **Peta Google Maps** dengan marker  

---

## Teknologi & Plugin

- **Flutter SDK** (3.24.4)  
- **geolocator**: akses GPS & hitung jarak (Haversine)  
- **image_picker**: ambil foto selfie  
- **permission_handler**: izin lokasi & kamera  
- **hive & hive_flutter**: penyimpanan lokal  
- **path_provider**: helper lokasi database Hive  
- **google_maps_flutter**: tampilan peta di detail  

Dev-dependencies:  
- **build_runner** & **hive_generator**: generate Hive TypeAdapter  

---

## Persiapan

1.  **Clone repository**
    ```bash
    git clone https://github.com/NaufalRozan/tpm_absensi_app.git
    cd absensi_app
2.  **Instalasi dependencies**
    ```bash
    flutter pub get

