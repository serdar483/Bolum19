import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/blue_page.dart';
import 'package:flutter_navigation/main.dart';
import 'package:flutter_navigation/ogrenci_detay.dart';
import 'package:flutter_navigation/ogrenci_listesi.dart';
import 'package:flutter_navigation/orange_page.dart';
import 'package:flutter_navigation/purple_page.dart';
import 'package:flutter_navigation/red_page.dart';

class RouteGenerator {
  RouteGenerator(String s);
  static Route<dynamic>? _routeOlustur(
      Widget gidilecekWidget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      return CupertinoPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
    } else {
      return CupertinoPageRoute(
          builder: (context) => gidilecekWidget, settings: settings);
    }
  }

  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return _routeOlustur(AnaSayfa(), settings);
/*
      case "/orangePage":
        if (defaultTargetPlatform == TargetPlatform.iOS) {
          return CupertinoPageRoute(builder: (context) => OrangePage());
        } else if (defaultTargetPlatform == TargetPlatform.android) {
          return MaterialPageRoute(builder: (context) => OrangePage());
        } else {
          return CupertinoPageRoute(builder: (context) => OrangePage());
        }
*/
      case "/orangePage":
        return _routeOlustur(OrangePage(), settings);

      case "/redPage":
        return _routeOlustur(RedPage(), settings);

      case "/bluePage":
        return _routeOlustur(BluePage(), settings);

      case "/purplePage":
        return _routeOlustur(PurplePage(), settings);

      case "/ogrenciListesi":
        return _routeOlustur(OgrenciListesi(), settings);

      case "/ogrenciDetay":
        var secilenOgrenci = settings.arguments as Ogrenci;
        return _routeOlustur(OgrenciDetay(secilenOgrenci: secilenOgrenci,), settings);
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                  appBar: AppBar(
                    title: Text("Error"),
                  ),
                  body: Center(
                    child: Text("404 Not Found"),
                  ),
                ));
    }
  }
}
