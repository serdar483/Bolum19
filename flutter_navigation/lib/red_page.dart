import 'dart:math';

import 'package:flutter/material.dart';

class RedPage extends StatefulWidget {
  RedPage({Key? key}) : super(key: key);
  @override
  _RedPageState createState() => _RedPageState();
}

class _RedPageState extends State<RedPage> {
  int rastgeleSayi = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        //kullanıcıyı sorgulamak için kullanılır
        rastgeleSayi = Random().nextInt(100);
        Navigator.pop(context, rastgeleSayi);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Red Page"),
          backgroundColor: Colors.red,
          automaticallyImplyLeading: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Red Page",
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {
                  rastgeleSayi = Random().nextInt(100);
                  print("Üretilen Sayı :$rastgeleSayi");
                  Navigator.of(context).pop(rastgeleSayi);
                },
                child: Text("Geri Dön"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/orangePage");
                },
                child: Text("Orange Page"),
                style:
                    ElevatedButton.styleFrom(primary: Colors.orange.shade400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
