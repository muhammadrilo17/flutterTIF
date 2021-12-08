import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String text;

  const HomePage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold digunakan sebagai lapisan awal pada layout dasar kalian. Ini berisikan fitur dasar layout seperti Appbar,
    // Floating Action Button, Bottom NavBar, dll.
    return Scaffold(
      // Widget Center Digunakan untuk mengubah posisi ke tengah
      body: Center(
        // Widget Text untuk mengeluarkan text pada halaman/ layout
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
