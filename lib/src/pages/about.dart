
import 'package:flutter/material.dart';

class About extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                image: NetworkImage('https://s4.anilist.co/file/anilistcdn/user/avatar/large/b161753-4vtt46gEgE4l.png')
              )
            ),
          ),
          SizedBox(height: 40),
          Container(
            child: Text('VER 1.0-rev 2', style: TextStyle(fontSize: 30),)
          )
        ],
      )
    );
  }
}