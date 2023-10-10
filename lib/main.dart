import 'package:flutter/material.dart';
import 'package:cameraapps/home_page.dart';

void main() {
  runApp(const MyApp());
}

// Kelas utama aplikasi
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// Kelas utama aplikasi
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Judul aplikasi
      title: 'Camera Apps',
      // Menonaktifkan banner "Debug" di sudut kanan atas
      debugShowCheckedModeBanner: false,
      // Menetapkan halaman utama aplikasi ke HomePage()
      home: HomePage(),
    );
  }
}