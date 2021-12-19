import 'package:flutter/material.dart';
import 'package:latihan_app_1/latihan_3/detail_page_latihan.dart';

class CaseLayoutLatihan extends StatelessWidget {
  const CaseLayoutLatihan({Key? key}) : super(key: key);

  List<Widget> card(BuildContext context) {
    return List.generate(
      10,
      (index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return DetailPageLatihaan(
                    halaman: index,
                  );
                },
              ),
            );
          },
          child: Container(
            height: 200.0,
            color: Colors.blueGrey,
            margin: const EdgeInsets.all(6.0),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MediaQuery.of(context).size.width.toString(),
        ),
      ),
      body: MediaQuery.of(context).size.width < 700
          ? ListView(
              children: card(context),
            )
          : MediaQuery.of(context).size.width < 900
              ? GridView.count(
                  crossAxisCount: 3,
                  children: card(context),
                )
              : GridView.count(
                  crossAxisCount: 6,
                  children: card(context),
                ),
    );
  }
}


//  LayoutBuilder(
//         builder: (context, constraint) {
//           if (constraint.maxWidth > 900) {
//             return GridView.count(
//               crossAxisCount: 6,
//               children: card(context),
//             );
//           } else {
//             return GridView.count(
//               crossAxisCount: 3,
//               children: card(context),
//             );
//           }
//         },
//       ),