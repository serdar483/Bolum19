import 'package:flutter/material.dart';

class GreenPage extends StatefulWidget {
  GreenPage({Key? key}) : super(key: key);

  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<GreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Green Page"),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text(
          "Green Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
