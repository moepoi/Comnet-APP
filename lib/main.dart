import 'package:comnet_app/src/login_screen.dart';
import 'package:comnet_app/src/main_screen.dart';
import 'package:comnet_app/src/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/main-screen': (BuildContext context) => MainScreen(),
        '/login-screen': (BuildContext context) => LoginScreen()
      },
    );
  }
}