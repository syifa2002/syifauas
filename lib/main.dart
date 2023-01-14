import 'package:flutter/material.dart';
import 'package:uas_syifa/pages/homepage.dart';
import 'package:uas_syifa/pages/halamanolahrag.dart';
import 'package:uas_syifa/pages/halamanotomotif.dart';
import 'package:uas_syifa/pages/halamanprofil.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/OlahragaPage': (context) => HalamanOlahraga(),
        '/OtomotifPage': (context) => HalamanOtomotif(),
        '/ProfilPage': (context) => HalamanProfil(),
      },
    );
  }
}
