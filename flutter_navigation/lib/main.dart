import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigation/blue_page.dart';
import 'package:flutter_navigation/green_page.dart';
import 'package:flutter_navigation/orange_page.dart';
import 'package:flutter_navigation/purple_page.dart';
import 'package:flutter_navigation/red_page.dart';
import 'package:flutter_navigation/route_generator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //home: AnaSayfa(),
      /*
      routes: {
        "/redPage": (context) => RedPage(),
        "/": (context) => AnaSayfa(),
        "/orangePage": (context) => OrangePage(),
        "/bluePage": (context) => BluePage(),
        "/greenPage": (context) => GreenPage(),
        "/purplePage": (context) => PurplePage(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => Scaffold(
                appBar: AppBar(
                  title: Text("Error"),
                ),
                body: Center(
                  child: Text("404 Not Found"),
                ),
              )),*/
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}

//Navigator işlemleri
/*
Navigator.popUntil(context,(route)=>route.isFirst); ilk sayfaya geri döndürür

Navigator.of(context).popUntil((route)=>route.settings.name == "/orangePage"); // turuncu sayfaya kadar geri dön

Navigator.of(context).pushNamedAndRemoveUntil("/yellowPage",(route) => route.isFirst); sonraki sayfaya geç ve onu ana sayfadan sonraki sayfa olarak ekle

*/

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              /*
              ElevatedButton(
                  onPressed: () async {
                    int? _gelenSayi = await Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (redContext) => RedPage(),
                      ),
                    );
                    print("Anasayfadaki Sayi $_gelenSayi");
                  },
                  child: Text(
                    "Kırmızı Sayfaya Git IOS",
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red.shade300,
                  )),
              ElevatedButton(
                onPressed: () {
                  /*Navigator.push(context,
                          MaterialPageRoute(builder: (context) => RedPage()));*/
                  Navigator.of(context)
                      .push<int>(
                          MaterialPageRoute(builder: (redContext) => RedPage()))
                      .then(
                        (int? value) => debugPrint("Gelen Sayi $value"),
                      );
                },
                child: const Text(
                  "Kırmızı Sayfaya Git Android",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade600,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).maybePop();
                },
                child: const Text(
                  "Maybe Pop Kullanımı",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade600,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    print("Evet olabilir");
                  } else {
                    print("Nayır");
                  }
                },
                child: const Text(
                  "Can Pop Kullanımı",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade600,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //push Replacement geri dönme durumunu kaldırır
                  /*Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => GreenPage()),
                  );*/
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => GreenPage()),
                  );
                },
                child: const Text(
                  "Push Replacement Kullanımı",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade600,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //push Replacement geri dönme durumunu kaldırır
                  Navigator.of(context).pushNamed("/redPage");
                },
                child: const Text(
                  "Push Named Kullanımı",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green.shade300,
                ),
              ),*/
              ElevatedButton(
                onPressed: () {
                  //push Replacement geri dönme durumunu kaldırır
                  Navigator.pushNamed(context, "/redPage");
                },
                child: const Text(
                  "Route Generator Kullanımı",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //push Replacement geri dönme durumunu kaldırır
                  Navigator.pushNamed(context, "/purplePage");
                },
                child: const Text(
                  "Route Generator Kullanımı",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple.shade300,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("/ogrenciListesi", arguments: 60);
                },
                child: const Text(
                  "Liste Oluştur",
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange.shade300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
