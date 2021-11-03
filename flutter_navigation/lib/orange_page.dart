import 'package:flutter/material.dart';

class OrangePage extends StatefulWidget {
  OrangePage({Key? key}) : super(key: key);

  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<OrangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orange Page"),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text(
          "Orange Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
