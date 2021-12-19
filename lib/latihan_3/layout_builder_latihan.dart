import 'package:flutter/material.dart';

class LayoutBuilderLatihan extends StatelessWidget {
  const LayoutBuilderLatihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Expanded(
            child: LayoutBuilder(builder: (context, constraint) {
              return Container(
                color: Colors.blueGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        "ini memakai media query= ${MediaQuery.of(context).size.width}"),
                    Text(
                        "ini menggunakan layout builder= ${constraint.maxWidth}")
                  ],
                ),
              );
            }),
          ),
          Expanded(
            flex: 5,
            child: LayoutBuilder(builder: (context, constraint) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "ini memakai media query= ${MediaQuery.of(context).size.width}"),
                  Text("ini menggunakan layout builder= ${constraint.maxWidth}")
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
