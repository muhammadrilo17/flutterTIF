import 'package:flutter/material.dart';

class DetailPageLatihaan extends StatelessWidget {
  const DetailPageLatihaan({Key? key, required this.halaman}) : super(key: key);

  final int halaman;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ini halaman ke - $halaman"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Back"),
        ),
      ),
    );
  }
}
