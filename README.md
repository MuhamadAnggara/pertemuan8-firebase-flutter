# Aplikasi Mobile - Pertemuan 8: Firebase Authentication Flutter

Proyek aplikasi Flutter yang mengintegrasikan layanan **Google Firebase Authentication** untuk sistem autentikasi pengguna (Email & Password). Aplikasi ini dibangun secara modular, clean code, dan menerapkan *state management stream* realtime.

---

## 👤 Identitas Mahasiswa

* **Nama Lengkap:** Muhamad Anggara Nurzati Arief Wijak Hidayah
* **NIM:** 1124160219
* **Kelas:** TI24PSE1
* **Mata Kuliah:** Aplikasi Mobile
* **Email:** anggaratzy001@gmail.com
* **Repository GitHub:** [pertemuan8-firebase-flutter](https://github.com/MuhamadAnggara/pertemuan8-firebase-flutter.git)

---

## 🚀 Fitur Utama Aplikasi

1. **Firebase Initialization:** Inisialisasi Firebase secara asynchronous pada entrypoint aplikasi menggunakan konfigurasi multi-platform `DefaultFirebaseOptions`.
2. **Real-time Auth State Monitoring:** Menggunakan `StreamBuilder` dengan stream `FirebaseAuth.instance.authStateChanges()` untuk mendeteksi status login/logout user secara otomatis tanpa reload.
3. **Form Login & Error Handling:** Validasi form input email dan password dengan penanganan pesan error spesifik (`FirebaseAuthException`).
4. **Dashboard Informasi Pengguna:** Menampilkan detail kredensial user langsung dari server Firebase:
   * Unique User ID (UID)
   * Alamat Email
   * Status Verifikasi Email
   * Waktu Terakhir Masuk (*Last Sign-In Timestamp*)
5. **Secure Sign-Out:** Fitur logout instan via `FirebaseAuth.instance.signOut()` yang secara realtime mengembalikan tampilan ke halaman login.

---

## 📁 Struktur Proyek Modular (`lib/`)

```text
lib/
├── firebase_options.dart   # Konfigurasi otomatis Firebase CLI (Web, Android, iOS)
├── login_screen.dart       # Tampilan form login dan logika autentikasi
├── user_info_screen.dart   # Tampilan dashboard profil user dan tombol logout
└── main.dart               # Entrypoint aplikasi, konfigurasi tema, dan AuthWrapper
```

---

## 🧪 Akun Uji Coba (Testing Accounts)

Akun yang telah didaftarkan dan terverifikasi pada Firebase Authentication Console:

| Email | Password | Keterangan |
| :--- | :--- | :--- |
| `anggaratest1@gmail.com` | `password12345` | Akun Uji Coba 1 |
| `anggaratest2@gmail.com` | `password12345` | Akun Uji Coba 2 |

---

## 💻 Panduan Menjalankan Aplikasi

1. **Clone repository ini:**
   ```bash
   git clone https://github.com/MuhamadAnggara/pertemuan8-firebase-flutter.git
   cd pertemuan8-firebase-flutter
   ```

2. **Unduh dependensi Flutter:**
   ```bash
   flutter pub get
   ```

3. **Jalankan aplikasi (pilih salah satu device):**
   * Di browser Chrome:
     ```bash
     flutter run -d chrome
     ```
   * Di Android Emulator / HP Fisik:
     ```bash
     flutter run
     ```

---
*Dibuat untuk tugas Mata Kuliah Aplikasi Mobile pada Pertemuan 8.*