import 'package:flutter/material.dart';
import 'package:latihan_app_1/latihan_3/detail_page.dart';

class CaseLayoutBuilderPage extends StatelessWidget {
  const CaseLayoutBuilderPage({Key? key}) : super(key: key);

  List<Widget> _generateContainers(BuildContext context) {
    return List<Widget>.generate(20, (index) {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return DetailPage(index: index);
              },
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(8),
          color: Colors.blueGrey,
          height: 200,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              children: _generateContainers(context),
            );
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(context),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(context),
            );
          }
        },
      ),
    );
  }
}
