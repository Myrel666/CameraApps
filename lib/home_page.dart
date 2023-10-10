import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:cameraapps/camera_page.dart';

// Kelas HomePage adalah StatefulWidget yang akan digunakan sebagai halaman utama aplikasi
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

// Kelas _HomePageState adalah State dari HomePage
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: SafeArea(
        child: Center(
            child: ElevatedButton(
          onPressed: () async {
            // Memeriksa kamera yang tersedia dan menuju ke halaman kamera jika ada
            await availableCameras().then((value) => Navigator.push(context,
                MaterialPageRoute(builder: (_) => CameraPage(cameras: value))));
          },
          child: const Text("Take a Picture"),
        )),
      ),
    );
  }
}