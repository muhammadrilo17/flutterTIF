import 'package:flutter/material.dart';

import 'latihan_1/change_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Widget build => materialApp ini merupakan root dari aplikasi kalian.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.system,
      // Definisikan Home sebagai tampilan awal yg dimunculkan pada aplikasi kalian
      home: const ChangeView(),
    );
  }
}
