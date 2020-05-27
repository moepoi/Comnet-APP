import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:comnet_app/src/pages/data.dart';
import 'package:comnet_app/src/pages/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'pages/about.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  PageController _pageController;
  String getToken;
  String token;
  List<String> _titleBar = ['List Data', 'Registration', 'About'];
  List _colorBar = [Colors.redAccent, Colors.purpleAccent, Colors.amberAccent];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future scanQRCode() async {
    getToken = await FlutterBarcodeScanner.scanBarcode('#592FE4', 'Cancel', true, null);
    setState(() {
      token = getToken;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_titleBar[currentIndex]),
          actions: <Widget>[
            GestureDetector(
              onTap: () {currentIndex == 0 ? scanQRCode() : SizedBox(width: 0);}, 
              child: currentIndex == 0 ? Icon(Icons.crop_free) : SizedBox(width: 0)
            ), 
            SizedBox(width: 15)
          ],
          backgroundColor: _colorBar[currentIndex]
        ),
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => currentIndex = index);
            },
            children: <Widget>[
              Data(),
              Registration(),
              About(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            currentIndex = index;
          }),
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.book),
              title: Text('Data'),
              activeColor: Colors.redAccent,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.assignment),
                title: Text('Registration'),
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
                icon: Icon(Icons.info),
                title: Text('About'),
                activeColor: Colors.amberAccent),
          ],
        ));
  }
}
