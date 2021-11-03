import 'package:flutter/material.dart';

class BluePage extends StatefulWidget {
  BluePage({Key? key}) : super(key: key);

  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<BluePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blue Page"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text(
          "Blue Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
