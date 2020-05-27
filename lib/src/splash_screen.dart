import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    super.initState();
    splashScreen();
  }

  splashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, (){
      Navigator.of(context).pushReplacementNamed('/login-screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.computer, size: 100, color: Colors.white,),
            Text('Comnet APP', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold))
          ],
        )
      ),
    );
  }
}