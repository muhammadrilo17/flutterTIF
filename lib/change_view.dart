import 'package:flutter/material.dart';

class ChangeView extends StatefulWidget {
  const ChangeView({Key? key}) : super(key: key);

  @override
  _ChangeViewState createState() => _ChangeViewState();
}

class _ChangeViewState extends State<ChangeView> {
  String _setData = "Old Text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            children: [
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
              ElevatedButton(
                onPressed: () {
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
