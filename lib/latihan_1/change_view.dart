import 'package:flutter/material.dart';

class ChangeView extends StatefulWidget {
  const ChangeView({Key? key}) : super(key: key);

  @override
  _ChangeViewState createState() => _ChangeViewState();
}

class _ChangeViewState extends State<ChangeView> {
  // Mendefinisikan nilai awal pada private variable setData
  String _setData = "Old Text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // margin pada container(Pelapis) digunakan untuk memberi jarak dengan layout dasar/ utama.
        margin: const EdgeInsets.all(24.0),
        child: Center(
          child: Column(
            children: [
              // Container sebagai widget lapisan. Bisa dilakukan decoration dengan BoxDecoration mulai dari warna,
              //radius, image, shadow dsb.
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xff000000),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                  ),
                ),
                child: Text(
                  _setData,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              // Menampilkan Button yang mana terdapat triger di parameter onPressednya.
              ElevatedButton(
                onPressed: () {
                  // setState digunakan untuk me refresh/ reload halaman ketika terjadi suatu perubahan.
                  setState(() {
                    _setData = "New Data";
                  });
                },
                child: const Icon(Icons.save_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
