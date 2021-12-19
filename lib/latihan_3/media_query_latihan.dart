import 'package:flutter/material.dart';

class MediaQueryLatihan extends StatelessWidget {
  const MediaQueryLatihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("ini ukuran lebar layar = ${MediaQuery.of(context).size.width}"),
          Text(
              "ini ukuran tinggi layar = ${MediaQuery.of(context).size.height}"),
          Text(
              "ini ukuran ORIENTASI layar = ${MediaQuery.of(context).orientation}"),
        ],
      ),
    );
  }
}
