# 🌿 DIGARUT

> **Digital Garut** — Aplikasi mobile untuk menemukan keindahan alam, budaya, dan kuliner tersembunyi di kota Garut.

Proyek ini dibuat sebagai tugas **Praktikum Pemrograman Mobile — Semester 6 (Pertemuan 1)**.

---

## 📋 Daftar Isi

- [Tentang Proyek](#-tentang-proyek)
- [Screenshot](#-screenshot)
- [Tech Stack](#-tech-stack)
- [Prasyarat](#-prasyarat)
- [Instalasi & Menjalankan Proyek](#-instalasi--menjalankan-proyek)
- [Struktur Proyek](#-struktur-proyek)
- [Fitur](#-fitur)
- [Troubleshooting](#-troubleshooting)

---

## 📖 Tentang Proyek

**DIGARUT** adalah aplikasi berbasis Flutter yang menampilkan informasi wisata, budaya, dan kuliner khas Garut. Aplikasi ini dibangun sebagai latihan dasar pengembangan aplikasi mobile menggunakan framework Flutter.

Saat ini aplikasi menampilkan **Welcome Screen** dengan desain modern bertema hijau teal.

---

## 📸 Screenshot

| Welcome Screen |
|:--------------:|
| Tampilan awal aplikasi dengan tombol "Mulai Petualangan" |

---

## 🛠 Tech Stack

| Teknologi | Versi / Detail |
|-----------|---------------|
| **Flutter** | SDK ^3.11.0 |
| **Dart** | Sesuai Flutter SDK |
| **Device Preview** | ^1.3.1 (untuk preview di berbagai device) |
| **Cupertino Icons** | ^1.0.8 |
| **Target Platform** | Android, iOS, Web, Windows, Linux, macOS |

---

## ✅ Prasyarat

Pastikan tools berikut sudah terinstal di komputer Anda:

### 1. Flutter SDK
- Download dan instal dari [flutter.dev/get-started](https://docs.flutter.dev/get-started/install)
- Minimal versi **Flutter 3.11.0**

### 2. Android Studio / VS Code
- **Android Studio**: [Download di sini](https://developer.android.com/studio)
  - Instal plugin **Flutter** dan **Dart**
- **VS Code**: [Download di sini](https://code.visualstudio.com/)
  - Instal extension **Flutter** dan **Dart**

### 3. Android SDK
- Bisa diinstal melalui Android Studio → SDK Manager
- Pastikan **Android SDK Command-line Tools** sudah terinstal

### 4. Emulator / Physical Device
- **Emulator**: Buat AVD (Android Virtual Device) melalui Android Studio
- **Physical Device**: Aktifkan **Developer Options** dan **USB Debugging** di HP Android Anda

### 5. Git
- Download dari [git-scm.com](https://git-scm.com/)

### Verifikasi Instalasi

Jalankan perintah berikut untuk memastikan semua sudah siap:

```bash
flutter doctor
```

Pastikan semua item menunjukkan ✅ (centang hijau). Jika ada yang ❌, ikuti petunjuk yang diberikan.

---

## 🚀 Instalasi & Menjalankan Proyek

### Langkah 1 — Clone Repository

```bash
git clone <URL_REPOSITORY_ANDA>
cd digarut
```

### Langkah 2 — Instal Dependencies

```bash
flutter pub get
```

### Langkah 3 — Jalankan Aplikasi

**Opsi A: Menjalankan di Emulator / Physical Device (Android)**

```bash
# Cek device yang tersedia
flutter devices

# Jalankan aplikasi
flutter run
```

**Opsi B: Menjalankan di Chrome (Web)**

```bash
flutter run -d chrome
```

**Opsi C: Menjalankan di Windows**

```bash
flutter run -d windows
```

**Opsi D: Menjalankan melalui VS Code**

1. Buka folder proyek di VS Code
2. Buka file `lib/main.dart`
3. Klik tombol **Run** ▶️ di toolbar atas, atau tekan `F5`
4. Pilih device target (emulator/chrome/windows)

**Opsi E: Menjalankan melalui Android Studio**

1. Buka folder proyek di Android Studio
2. Pilih device/emulator di toolbar
3. Klik tombol **Run** ▶️ (hijau)

### Langkah 4 — Build APK (Opsional)

Untuk membuat file APK yang bisa diinstal di HP:

```bash
# Build APK debug
flutter build apk --debug

# Build APK release
flutter build apk --release
```

File APK akan tersedia di:
```
build/app/outputs/flutter-apk/app-release.apk
```

---

## 📁 Struktur Proyek

```
digarut/
├── android/          # Konfigurasi native Android
├── ios/              # Konfigurasi native iOS
├── lib/              # 📌 Source code utama Dart/Flutter
│   └── main.dart     # Entry point aplikasi
├── linux/            # Konfigurasi native Linux
├── macos/            # Konfigurasi native macOS
├── web/              # Konfigurasi Web
├── windows/          # Konfigurasi native Windows
├── test/             # Unit test
├── pubspec.yaml      # Konfigurasi dependencies & project
├── pubspec.lock      # Lock file dependencies
├── analysis_options.yaml  # Aturan linting Dart
└── README.md         # Dokumentasi proyek (file ini)
```

### File Utama

| File | Deskripsi |
|------|-----------|
| `lib/main.dart` | Entry point aplikasi, berisi `MyApp` dan `WelcomeScreen` |
| `pubspec.yaml` | Daftar dependencies dan konfigurasi proyek |

---

## ✨ Fitur

- [x] **Welcome Screen** — Halaman pembuka dengan desain hijau teal yang modern
- [x] **Device Preview** — Preview tampilan di berbagai ukuran device
- [x] **Responsive Layout** — Menggunakan `SafeArea` dan padding yang responsif
- [ ] Navigasi ke halaman Beranda *(coming soon)*
- [ ] Daftar tempat wisata Garut *(coming soon)*
- [ ] Detail wisata, budaya, dan kuliner *(coming soon)*

---

## ❓ Troubleshooting

### 1. `flutter pub get` gagal
```bash
# Bersihkan cache dan coba lagi
flutter clean
flutter pub get
```

### 2. Emulator tidak terdeteksi
```bash
# Pastikan emulator sudah berjalan, lalu cek ulang
flutter devices
```

### 3. Build error pada Android
```bash
# Bersihkan build dan jalankan ulang
flutter clean
cd android
./gradlew clean    # atau: gradlew.bat clean (Windows)
cd ..
flutter run
```

### 4. `flutter doctor` menunjukkan error
Ikuti saran yang ditampilkan oleh `flutter doctor`. Umumnya perlu:
- Menerima Android licenses: `flutter doctor --android-licenses`
- Menginstal Android SDK Command-line Tools via Android Studio

---

## 📚 Referensi

- [Flutter Documentation](https://docs.flutter.dev/)
- [Dart Language Tour](https://dart.dev/language)
- [Flutter Widget Catalog](https://docs.flutter.dev/ui/widgets)
- [Device Preview Package](https://pub.dev/packages/device_preview)

---

## 👤 Author

**Zaki Muhamad (2306094) — Praktikum Pemrograman Mobile Semester 6**

---

<p align="center">Made with Flutter</p>
