import 'package:flutter/material.dart';

// Melakukan Pelatihan tentang layout widget

class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Membuat layout dasar dengan listview
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: const Text("ListView & Stack"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: const [
          Icon(Icons.edit),
          SizedBox(
            width: 6.0,
          ),
          Icon(
            Icons.menu_rounded,
          ),
          SizedBox(
            width: 6.0,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 300.0,
            child: Stack(
              children: [
                Image.network(
                  "https://i0.wp.com/harga.web.id/wp-content/uploads/universitas-ahmad-dahlan-1.jpg",
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
                // Center(
                //   child: Stack(
                //     alignment: const Alignment(0.6, 0.6),
                //     children: [
                //       const CircleAvatar(
                //         backgroundImage: NetworkImage(
                //             'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg'),
                //         radius: 100,
                //       ),
                //       Container(
                //         decoration: const BoxDecoration(
                //           color: Colors.black45,
                //         ),
                //         child: const Text(
                //           'Justine',
                //           style: TextStyle(
                //             fontSize: 20,
                //             fontWeight: FontWeight.bold,
                //             color: Colors.white,
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "Ini UAD lo",
                      style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, i) => _tile(
              "Ini merupakan title - $i",
              "Ini merupakan Subtitle dari title ke $i",
              Icons.restaurant,
            ),
          )
        ],
      ),
    );
  }
}

ListTile _tile(String title, String subtitle, IconData icon) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        )),
    subtitle: Text(subtitle),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );
}
