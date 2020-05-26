import 'package:comnet_app/src/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(accentColor: Colors.amberAccent, primaryColor: Colors.amber),
      debugShowCheckedModeBanner: false,
    );
  }
}