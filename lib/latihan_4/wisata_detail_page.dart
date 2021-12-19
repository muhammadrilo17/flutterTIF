import 'package:flutter/material.dart';
import 'package:latihan_app_1/latihan_4/wisata_detail_widget.dart';

class WisataDetailPage extends StatelessWidget {
  const WisataDetailPage({
    Key? key,
    required this.image,
    required this.title,
    required this.time,
    required this.desc,
  }) : super(key: key);

  final String image;
  final String title;
  final String time;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Wisata"),
      ),
      body: ListView(
        children: [
          headerDetail(
            context,
            image,
          ),
          headingTextDetail(title, time),
          const SizedBox(
            height: 12.0,
          ),
          statistic(
            time,
            "Rp 25000",
            "4.5",
          ),
          const SizedBox(
            height: 12.0,
          ),
          descDetail(desc),
        ],
      ),
    );
  }
}
