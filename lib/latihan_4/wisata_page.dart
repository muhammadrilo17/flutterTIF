import 'package:flutter/material.dart';
import 'package:latihan_app_1/latihan_4/wisata_detail_page.dart';
import 'package:latihan_app_1/latihan_4/wisata_model.dart';
import 'package:latihan_app_1/latihan_4/wisata_page_widget.dart';

class WisataPage extends StatelessWidget {
  const WisataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Jogja"),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: listWisata.length,
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return WisataDetailPage(
                          image: listWisata[i].imageWisata,
                          title: listWisata[i].titleWisata,
                          time: listWisata[i].time,
                          desc: listWisata[i].descWisata,
                        );
                      },
                    ),
                  );
                },
                child: itemWisata(
                  listWisata[i].imageWisata,
                  listWisata[i].titleWisata,
                  listWisata[i].descWisata,
                  listWisata[i].time,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
