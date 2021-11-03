import 'package:flutter/material.dart';

class PurplePage extends StatefulWidget {
  PurplePage({Key? key}) : super(key: key);

  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<PurplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Purple Page"),
        backgroundColor: Colors.purple,
      ),
      body: const Center(
        child: Text(
          "Purple Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
