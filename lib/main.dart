import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. Mengatur warna latar belakang menjadi hijau solid (menggunakan warna teal yang merupakan variasi hijau)
      backgroundColor:
          Colors.teal[800], // Hijau teal yang dalam untuk kontras yang baik

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 2. Konten Teks (Semua dibuat putih agar terlihat jelas)
              const Text(
                "Selamat Datang di",
                style: TextStyle(
                  color: Colors.white, // Semua teks dibuat putih solid
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "DIGARUT",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Temukan keindahan alam, budaya, dan kuliner tersembunyi di kota Garut. Mulai petualanganmu sekarang!",
                style: TextStyle(
                  color: Colors.white, // Semua teks dibuat putih solid
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),

              // 3. Tombol "Mulai"
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // Menggunakan warna hijau yang lebih cerah untuk tombol agar menonjol
                    backgroundColor: Colors.teal[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    // TODO: Tambahkan navigasi ke Halaman Beranda di sini nantinya
                    print("Tombol ditekan!");
                  },
                  child: Text(
                    "Mulai Petualangan",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      // Warna teks tombol disesuaikan agar kontras
                      color: Colors.teal[900],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
