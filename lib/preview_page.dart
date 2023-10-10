import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

// Kelas PreviewPage adalah StatelessWidget yang digunakan untuk menampilkan gambar yang diambil dari kamera
class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key, required this.picture}) : super(key: key);

  final XFile picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview Page')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          // Menampilkan gambar yang diambil dari kamera
          Image.file(File(picture.path), fit: BoxFit.cover, width: 250),
          const SizedBox(height: 24),
          // Menampilkan nama file gambar
          Text(picture.name)
        ]),
      ),
    );
  }
}